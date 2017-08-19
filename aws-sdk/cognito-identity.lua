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

local keys = {}
local asserts = {}

keys.GetOpenIdTokenInput = { ["Logins"] = true, ["IdentityId"] = true, nil }

function asserts.AssertGetOpenIdTokenInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIdTokenInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	if struct["Logins"] then asserts.AssertLoginsMap(struct["Logins"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOpenIdTokenInput[k], "GetOpenIdTokenInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIdTokenInput
-- <p>Input to the GetOpenIdToken action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Logins [LoginsMap] <p>A set of optional name-value pairs that map provider names to provider tokens. When using graph.facebook.com and www.amazon.com, supply the access_token returned from the provider's authflow. For accounts.google.com, an Amazon Cognito Identity Provider, or any other OpenId Connect provider, always include the <code>id_token</code>.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- Required key: IdentityId
-- @return GetOpenIdTokenInput structure as a key-value pair table
function M.GetOpenIdTokenInput(args)
	assert(args, "You must provdide an argument table when creating GetOpenIdTokenInput")
	local t = { 
		["Logins"] = args["Logins"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertGetOpenIdTokenInput(t)
	return t
end

keys.RulesConfigurationType = { ["Rules"] = true, nil }

function asserts.AssertRulesConfigurationType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RulesConfigurationType to be of type 'table'")
	assert(struct["Rules"], "Expected key Rules to exist in table")
	if struct["Rules"] then asserts.AssertMappingRulesList(struct["Rules"]) end
	for k,_ in pairs(struct) do
		assert(keys.RulesConfigurationType[k], "RulesConfigurationType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RulesConfigurationType
-- <p>A container for rules.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [MappingRulesList] <p>An array of rules. You can specify up to 25 rules per identity provider.</p> <p>Rules are evaluated in order. The first one to match specifies the role.</p>
-- Required key: Rules
-- @return RulesConfigurationType structure as a key-value pair table
function M.RulesConfigurationType(args)
	assert(args, "You must provdide an argument table when creating RulesConfigurationType")
	local t = { 
		["Rules"] = args["Rules"],
	}
	asserts.AssertRulesConfigurationType(t)
	return t
end

keys.GetIdentityPoolRolesResponse = { ["IdentityPoolId"] = true, ["Roles"] = true, ["RoleMappings"] = true, nil }

function asserts.AssertGetIdentityPoolRolesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoolRolesResponse to be of type 'table'")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["Roles"] then asserts.AssertRolesMap(struct["Roles"]) end
	if struct["RoleMappings"] then asserts.AssertRoleMappingMap(struct["RoleMappings"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityPoolRolesResponse[k], "GetIdentityPoolRolesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoolRolesResponse
-- <p>Returned in response to a successful <code>GetIdentityPoolRoles</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * Roles [RolesMap] <p>The map of roles associated with this pool. Currently only authenticated and unauthenticated roles are supported.</p>
-- * RoleMappings [RoleMappingMap] <p>How users for a specific identity provider are to mapped to roles. This is a String-to-<a>RoleMapping</a> object map. The string identifies the identity provider, for example, "graph.facebook.com" or "cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".</p>
-- @return GetIdentityPoolRolesResponse structure as a key-value pair table
function M.GetIdentityPoolRolesResponse(args)
	assert(args, "You must provdide an argument table when creating GetIdentityPoolRolesResponse")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["Roles"] = args["Roles"],
		["RoleMappings"] = args["RoleMappings"],
	}
	asserts.AssertGetIdentityPoolRolesResponse(t)
	return t
end

keys.ListIdentityPoolsInput = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListIdentityPoolsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoolsInput to be of type 'table'")
	assert(struct["MaxResults"], "Expected key MaxResults to exist in table")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertQueryLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentityPoolsInput[k], "ListIdentityPoolsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoolsInput
-- <p>Input to the ListIdentityPools action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>A pagination token.</p>
-- * MaxResults [QueryLimit] <p>The maximum number of identities to return.</p>
-- Required key: MaxResults
-- @return ListIdentityPoolsInput structure as a key-value pair table
function M.ListIdentityPoolsInput(args)
	assert(args, "You must provdide an argument table when creating ListIdentityPoolsInput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListIdentityPoolsInput(t)
	return t
end

keys.NotAuthorizedException = { ["message"] = true, nil }

function asserts.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotAuthorizedException[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- <p>Thrown when a user is not authorized to access the requested resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by a NotAuthorizedException</p>
-- @return NotAuthorizedException structure as a key-value pair table
function M.NotAuthorizedException(args)
	assert(args, "You must provdide an argument table when creating NotAuthorizedException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNotAuthorizedException(t)
	return t
end

keys.CreateIdentityPoolInput = { ["DeveloperProviderName"] = true, ["SamlProviderARNs"] = true, ["SupportedLoginProviders"] = true, ["AllowUnauthenticatedIdentities"] = true, ["CognitoIdentityProviders"] = true, ["IdentityPoolName"] = true, ["OpenIdConnectProviderARNs"] = true, nil }

function asserts.AssertCreateIdentityPoolInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIdentityPoolInput to be of type 'table'")
	assert(struct["IdentityPoolName"], "Expected key IdentityPoolName to exist in table")
	assert(struct["AllowUnauthenticatedIdentities"], "Expected key AllowUnauthenticatedIdentities to exist in table")
	if struct["DeveloperProviderName"] then asserts.AssertDeveloperProviderName(struct["DeveloperProviderName"]) end
	if struct["SamlProviderARNs"] then asserts.AssertSAMLProviderList(struct["SamlProviderARNs"]) end
	if struct["SupportedLoginProviders"] then asserts.AssertIdentityProviders(struct["SupportedLoginProviders"]) end
	if struct["AllowUnauthenticatedIdentities"] then asserts.AssertIdentityPoolUnauthenticated(struct["AllowUnauthenticatedIdentities"]) end
	if struct["CognitoIdentityProviders"] then asserts.AssertCognitoIdentityProviderList(struct["CognitoIdentityProviders"]) end
	if struct["IdentityPoolName"] then asserts.AssertIdentityPoolName(struct["IdentityPoolName"]) end
	if struct["OpenIdConnectProviderARNs"] then asserts.AssertOIDCProviderList(struct["OpenIdConnectProviderARNs"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIdentityPoolInput[k], "CreateIdentityPoolInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIdentityPoolInput
-- <p>Input to the CreateIdentityPool action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeveloperProviderName [DeveloperProviderName] <p>The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the <code>DeveloperProviderName</code>, you can use letters as well as period (<code>.</code>), underscore (<code>_</code>), and dash (<code>-</code>).</p> <p>Once you have set a developer provider name, you cannot change it. Please take care in setting this parameter.</p>
-- * SamlProviderARNs [SAMLProviderList] <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.</p>
-- * SupportedLoginProviders [IdentityProviders] <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
-- * AllowUnauthenticatedIdentities [IdentityPoolUnauthenticated] <p>TRUE if the identity pool supports unauthenticated logins.</p>
-- * CognitoIdentityProviders [CognitoIdentityProviderList] <p>An array of Amazon Cognito Identity user pools and their client IDs.</p>
-- * IdentityPoolName [IdentityPoolName] <p>A string that you provide.</p>
-- * OpenIdConnectProviderARNs [OIDCProviderList] <p>A list of OpendID Connect provider ARNs.</p>
-- Required key: IdentityPoolName
-- Required key: AllowUnauthenticatedIdentities
-- @return CreateIdentityPoolInput structure as a key-value pair table
function M.CreateIdentityPoolInput(args)
	assert(args, "You must provdide an argument table when creating CreateIdentityPoolInput")
	local t = { 
		["DeveloperProviderName"] = args["DeveloperProviderName"],
		["SamlProviderARNs"] = args["SamlProviderARNs"],
		["SupportedLoginProviders"] = args["SupportedLoginProviders"],
		["AllowUnauthenticatedIdentities"] = args["AllowUnauthenticatedIdentities"],
		["CognitoIdentityProviders"] = args["CognitoIdentityProviders"],
		["IdentityPoolName"] = args["IdentityPoolName"],
		["OpenIdConnectProviderARNs"] = args["OpenIdConnectProviderARNs"],
	}
	asserts.AssertCreateIdentityPoolInput(t)
	return t
end

keys.GetOpenIdTokenForDeveloperIdentityResponse = { ["Token"] = true, ["IdentityId"] = true, nil }

function asserts.AssertGetOpenIdTokenForDeveloperIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIdTokenForDeveloperIdentityResponse to be of type 'table'")
	if struct["Token"] then asserts.AssertOIDCToken(struct["Token"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOpenIdTokenForDeveloperIdentityResponse[k], "GetOpenIdTokenForDeveloperIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIdTokenForDeveloperIdentityResponse
-- <p>Returned in response to a successful <code>GetOpenIdTokenForDeveloperIdentity</code> request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [OIDCToken] <p>An OpenID token.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- @return GetOpenIdTokenForDeveloperIdentityResponse structure as a key-value pair table
function M.GetOpenIdTokenForDeveloperIdentityResponse(args)
	assert(args, "You must provdide an argument table when creating GetOpenIdTokenForDeveloperIdentityResponse")
	local t = { 
		["Token"] = args["Token"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertGetOpenIdTokenForDeveloperIdentityResponse(t)
	return t
end

keys.GetIdResponse = { ["IdentityId"] = true, nil }

function asserts.AssertGetIdResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdResponse to be of type 'table'")
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdResponse[k], "GetIdResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdResponse
-- <p>Returned in response to a GetId request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- @return GetIdResponse structure as a key-value pair table
function M.GetIdResponse(args)
	assert(args, "You must provdide an argument table when creating GetIdResponse")
	local t = { 
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertGetIdResponse(t)
	return t
end

keys.GetOpenIdTokenResponse = { ["Token"] = true, ["IdentityId"] = true, nil }

function asserts.AssertGetOpenIdTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIdTokenResponse to be of type 'table'")
	if struct["Token"] then asserts.AssertOIDCToken(struct["Token"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOpenIdTokenResponse[k], "GetOpenIdTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIdTokenResponse
-- <p>Returned in response to a successful GetOpenIdToken request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [OIDCToken] <p>An OpenID token, valid for 15 minutes.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID. Note that the IdentityId returned may not match the one passed on input.</p>
-- @return GetOpenIdTokenResponse structure as a key-value pair table
function M.GetOpenIdTokenResponse(args)
	assert(args, "You must provdide an argument table when creating GetOpenIdTokenResponse")
	local t = { 
		["Token"] = args["Token"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertGetOpenIdTokenResponse(t)
	return t
end

keys.RoleMapping = { ["AmbiguousRoleResolution"] = true, ["Type"] = true, ["RulesConfiguration"] = true, nil }

function asserts.AssertRoleMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoleMapping to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["AmbiguousRoleResolution"] then asserts.AssertAmbiguousRoleResolutionType(struct["AmbiguousRoleResolution"]) end
	if struct["Type"] then asserts.AssertRoleMappingType(struct["Type"]) end
	if struct["RulesConfiguration"] then asserts.AssertRulesConfigurationType(struct["RulesConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.RoleMapping[k], "RoleMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoleMapping
-- <p>A role mapping.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmbiguousRoleResolution [AmbiguousRoleResolutionType] <p>If you specify Token or Rules as the <code>Type</code>, <code>AmbiguousRoleResolution</code> is required.</p> <p>Specifies the action to be taken if either no rules match the claim value for the <code>Rules</code> type, or there is no <code>cognito:preferred_role</code> claim and there are multiple <code>cognito:roles</code> matches for the <code>Token</code> type.</p>
-- * Type [RoleMappingType] <p>The role mapping type. Token will use <code>cognito:roles</code> and <code>cognito:preferred_role</code> claims from the Cognito identity provider token to map groups to roles. Rules will attempt to match claims from the token to map to a role.</p>
-- * RulesConfiguration [RulesConfigurationType] <p>The rules to be used for mapping users to roles.</p> <p>If you specify Rules as the role mapping type, <code>RulesConfiguration</code> is required.</p>
-- Required key: Type
-- @return RoleMapping structure as a key-value pair table
function M.RoleMapping(args)
	assert(args, "You must provdide an argument table when creating RoleMapping")
	local t = { 
		["AmbiguousRoleResolution"] = args["AmbiguousRoleResolution"],
		["Type"] = args["Type"],
		["RulesConfiguration"] = args["RulesConfiguration"],
	}
	asserts.AssertRoleMapping(t)
	return t
end

keys.MappingRule = { ["Claim"] = true, ["MatchType"] = true, ["RoleARN"] = true, ["Value"] = true, nil }

function asserts.AssertMappingRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MappingRule to be of type 'table'")
	assert(struct["Claim"], "Expected key Claim to exist in table")
	assert(struct["MatchType"], "Expected key MatchType to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	assert(struct["RoleARN"], "Expected key RoleARN to exist in table")
	if struct["Claim"] then asserts.AssertClaimName(struct["Claim"]) end
	if struct["MatchType"] then asserts.AssertMappingRuleMatchType(struct["MatchType"]) end
	if struct["RoleARN"] then asserts.AssertARNString(struct["RoleARN"]) end
	if struct["Value"] then asserts.AssertClaimValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MappingRule[k], "MappingRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MappingRule
-- <p>A rule that maps a claim name, a claim value, and a match type to a role ARN.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Claim [ClaimName] <p>The claim name that must be present in the token, for example, "isAdmin" or "paid".</p>
-- * MatchType [MappingRuleMatchType] <p>The match condition that specifies how closely the claim value in the IdP token must match <code>Value</code>.</p>
-- * RoleARN [ARNString] <p>The role ARN.</p>
-- * Value [ClaimValue] <p>A brief string that the claim must match, for example, "paid" or "yes".</p>
-- Required key: Claim
-- Required key: MatchType
-- Required key: Value
-- Required key: RoleARN
-- @return MappingRule structure as a key-value pair table
function M.MappingRule(args)
	assert(args, "You must provdide an argument table when creating MappingRule")
	local t = { 
		["Claim"] = args["Claim"],
		["MatchType"] = args["MatchType"],
		["RoleARN"] = args["RoleARN"],
		["Value"] = args["Value"],
	}
	asserts.AssertMappingRule(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>Thrown for missing or bad input parameter(s).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by an InvalidParameterException.</p>
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provdide an argument table when creating InvalidParameterException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.UnprocessedIdentityId = { ["ErrorCode"] = true, ["IdentityId"] = true, nil }

function asserts.AssertUnprocessedIdentityId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedIdentityId to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnprocessedIdentityId[k], "UnprocessedIdentityId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedIdentityId
-- <p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] <p>The error code indicating the type of error that occurred.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- @return UnprocessedIdentityId structure as a key-value pair table
function M.UnprocessedIdentityId(args)
	assert(args, "You must provdide an argument table when creating UnprocessedIdentityId")
	local t = { 
		["ErrorCode"] = args["ErrorCode"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertUnprocessedIdentityId(t)
	return t
end

keys.GetIdentityPoolRolesInput = { ["IdentityPoolId"] = true, nil }

function asserts.AssertGetIdentityPoolRolesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdentityPoolRolesInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdentityPoolRolesInput[k], "GetIdentityPoolRolesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdentityPoolRolesInput
-- <p>Input to the <code>GetIdentityPoolRoles</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- Required key: IdentityPoolId
-- @return GetIdentityPoolRolesInput structure as a key-value pair table
function M.GetIdentityPoolRolesInput(args)
	assert(args, "You must provdide an argument table when creating GetIdentityPoolRolesInput")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertGetIdentityPoolRolesInput(t)
	return t
end

keys.ListIdentitiesInput = { ["IdentityPoolId"] = true, ["NextToken"] = true, ["HideDisabled"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListIdentitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentitiesInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["MaxResults"], "Expected key MaxResults to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["HideDisabled"] then asserts.AssertHideDisabled(struct["HideDisabled"]) end
	if struct["MaxResults"] then asserts.AssertQueryLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentitiesInput[k], "ListIdentitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentitiesInput
-- <p>Input to the ListIdentities action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * NextToken [PaginationKey] <p>A pagination token.</p>
-- * HideDisabled [HideDisabled] <p>An optional boolean parameter that allows you to hide disabled identities. If omitted, the ListIdentities API will include disabled identities in the response.</p>
-- * MaxResults [QueryLimit] <p>The maximum number of identities to return.</p>
-- Required key: IdentityPoolId
-- Required key: MaxResults
-- @return ListIdentitiesInput structure as a key-value pair table
function M.ListIdentitiesInput(args)
	assert(args, "You must provdide an argument table when creating ListIdentitiesInput")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["NextToken"] = args["NextToken"],
		["HideDisabled"] = args["HideDisabled"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListIdentitiesInput(t)
	return t
end

keys.DeleteIdentityPoolInput = { ["IdentityPoolId"] = true, nil }

function asserts.AssertDeleteIdentityPoolInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentityPoolInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIdentityPoolInput[k], "DeleteIdentityPoolInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentityPoolInput
-- <p>Input to the DeleteIdentityPool action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- Required key: IdentityPoolId
-- @return DeleteIdentityPoolInput structure as a key-value pair table
function M.DeleteIdentityPoolInput(args)
	assert(args, "You must provdide an argument table when creating DeleteIdentityPoolInput")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertDeleteIdentityPoolInput(t)
	return t
end

keys.DeleteIdentitiesInput = { ["IdentityIdsToDelete"] = true, nil }

function asserts.AssertDeleteIdentitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentitiesInput to be of type 'table'")
	assert(struct["IdentityIdsToDelete"], "Expected key IdentityIdsToDelete to exist in table")
	if struct["IdentityIdsToDelete"] then asserts.AssertIdentityIdList(struct["IdentityIdsToDelete"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIdentitiesInput[k], "DeleteIdentitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentitiesInput
-- <p>Input to the <code>DeleteIdentities</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityIdsToDelete [IdentityIdList] <p>A list of 1-60 identities that you want to delete.</p>
-- Required key: IdentityIdsToDelete
-- @return DeleteIdentitiesInput structure as a key-value pair table
function M.DeleteIdentitiesInput(args)
	assert(args, "You must provdide an argument table when creating DeleteIdentitiesInput")
	local t = { 
		["IdentityIdsToDelete"] = args["IdentityIdsToDelete"],
	}
	asserts.AssertDeleteIdentitiesInput(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Thrown when the total number of user pools has exceeded a preset limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by a LimitExceededException.</p>
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.ListIdentityPoolsResponse = { ["NextToken"] = true, ["IdentityPools"] = true, nil }

function asserts.AssertListIdentityPoolsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentityPoolsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["IdentityPools"] then asserts.AssertIdentityPoolsList(struct["IdentityPools"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentityPoolsResponse[k], "ListIdentityPoolsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentityPoolsResponse
-- <p>The result of a successful ListIdentityPools action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>A pagination token.</p>
-- * IdentityPools [IdentityPoolsList] <p>The identity pools returned by the ListIdentityPools action.</p>
-- @return ListIdentityPoolsResponse structure as a key-value pair table
function M.ListIdentityPoolsResponse(args)
	assert(args, "You must provdide an argument table when creating ListIdentityPoolsResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["IdentityPools"] = args["IdentityPools"],
	}
	asserts.AssertListIdentityPoolsResponse(t)
	return t
end

keys.ConcurrentModificationException = { ["message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>Thrown if there are parallel requests to modify a resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by a ConcurrentModificationException.</p>
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provdide an argument table when creating ConcurrentModificationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConcurrentModificationException(t)
	return t
end

keys.GetOpenIdTokenForDeveloperIdentityInput = { ["Logins"] = true, ["IdentityPoolId"] = true, ["TokenDuration"] = true, ["IdentityId"] = true, nil }

function asserts.AssertGetOpenIdTokenForDeveloperIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIdTokenForDeveloperIdentityInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["Logins"], "Expected key Logins to exist in table")
	if struct["Logins"] then asserts.AssertLoginsMap(struct["Logins"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["TokenDuration"] then asserts.AssertTokenDuration(struct["TokenDuration"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOpenIdTokenForDeveloperIdentityInput[k], "GetOpenIdTokenForDeveloperIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIdTokenForDeveloperIdentityInput
-- <p>Input to the <code>GetOpenIdTokenForDeveloperIdentity</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Logins [LoginsMap] <p>A set of optional name-value pairs that map provider names to provider tokens. Each name-value pair represents a user from a public provider or developer provider. If the user is from a developer provider, the name-value pair will follow the syntax <code>"developer_provider_name": "developer_user_identifier"</code>. The developer provider is the "domain" by which Cognito will refer to your users; you provided this domain while creating/updating the identity pool. The developer user identifier is an identifier from your backend that uniquely identifies a user. When you create an identity pool, you can specify the supported logins.</p>
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * TokenDuration [TokenDuration] <p>The expiration time of the token, in seconds. You can specify a custom expiration time for the token so that you can cache it. If you don't provide an expiration time, the token is valid for 15 minutes. You can exchange the token with Amazon STS for temporary AWS credentials, which are valid for a maximum of one hour. The maximum token duration you can set is 24 hours. You should take care in setting the expiration time for a token, as there are significant security implications: an attacker could use a leaked token to access your AWS resources for the token's duration.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- Required key: IdentityPoolId
-- Required key: Logins
-- @return GetOpenIdTokenForDeveloperIdentityInput structure as a key-value pair table
function M.GetOpenIdTokenForDeveloperIdentityInput(args)
	assert(args, "You must provdide an argument table when creating GetOpenIdTokenForDeveloperIdentityInput")
	local t = { 
		["Logins"] = args["Logins"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["TokenDuration"] = args["TokenDuration"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertGetOpenIdTokenForDeveloperIdentityInput(t)
	return t
end

keys.CognitoIdentityProvider = { ["ServerSideTokenCheck"] = true, ["ClientId"] = true, ["ProviderName"] = true, nil }

function asserts.AssertCognitoIdentityProvider(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CognitoIdentityProvider to be of type 'table'")
	if struct["ServerSideTokenCheck"] then asserts.AssertCognitoIdentityProviderTokenCheck(struct["ServerSideTokenCheck"]) end
	if struct["ClientId"] then asserts.AssertCognitoIdentityProviderClientId(struct["ClientId"]) end
	if struct["ProviderName"] then asserts.AssertCognitoIdentityProviderName(struct["ProviderName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CognitoIdentityProvider[k], "CognitoIdentityProvider contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CognitoIdentityProvider
-- <p>A provider representing an Amazon Cognito Identity User Pool and its client ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerSideTokenCheck [CognitoIdentityProviderTokenCheck] <p>TRUE if server-side token validation is enabled for the identity provider’s token.</p>
-- * ClientId [CognitoIdentityProviderClientId] <p>The client ID for the Amazon Cognito Identity User Pool.</p>
-- * ProviderName [CognitoIdentityProviderName] <p>The provider name for an Amazon Cognito Identity User Pool. For example, <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789</code>.</p>
-- @return CognitoIdentityProvider structure as a key-value pair table
function M.CognitoIdentityProvider(args)
	assert(args, "You must provdide an argument table when creating CognitoIdentityProvider")
	local t = { 
		["ServerSideTokenCheck"] = args["ServerSideTokenCheck"],
		["ClientId"] = args["ClientId"],
		["ProviderName"] = args["ProviderName"],
	}
	asserts.AssertCognitoIdentityProvider(t)
	return t
end

keys.TooManyRequestsException = { ["message"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>Thrown when a request is throttled.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>Message returned by a TooManyRequestsException</p>
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provdide an argument table when creating TooManyRequestsException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertTooManyRequestsException(t)
	return t
end

keys.IdentityDescription = { ["Logins"] = true, ["LastModifiedDate"] = true, ["CreationDate"] = true, ["IdentityId"] = true, nil }

function asserts.AssertIdentityDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityDescription to be of type 'table'")
	if struct["Logins"] then asserts.AssertLoginsList(struct["Logins"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateType(struct["LastModifiedDate"]) end
	if struct["CreationDate"] then asserts.AssertDateType(struct["CreationDate"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityDescription[k], "IdentityDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityDescription
-- <p>A description of the identity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Logins [LoginsList] <p>A set of optional name-value pairs that map provider names to provider tokens.</p>
-- * LastModifiedDate [DateType] <p>Date on which the identity was last modified.</p>
-- * CreationDate [DateType] <p>Date on which the identity was created.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- @return IdentityDescription structure as a key-value pair table
function M.IdentityDescription(args)
	assert(args, "You must provdide an argument table when creating IdentityDescription")
	local t = { 
		["Logins"] = args["Logins"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["CreationDate"] = args["CreationDate"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertIdentityDescription(t)
	return t
end

keys.ListIdentitiesResponse = { ["IdentityPoolId"] = true, ["NextToken"] = true, ["Identities"] = true, nil }

function asserts.AssertListIdentitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListIdentitiesResponse to be of type 'table'")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["Identities"] then asserts.AssertIdentitiesList(struct["Identities"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListIdentitiesResponse[k], "ListIdentitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListIdentitiesResponse
-- <p>The response to a ListIdentities request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * NextToken [PaginationKey] <p>A pagination token.</p>
-- * Identities [IdentitiesList] <p>An object containing a set of identities and associated mappings.</p>
-- @return ListIdentitiesResponse structure as a key-value pair table
function M.ListIdentitiesResponse(args)
	assert(args, "You must provdide an argument table when creating ListIdentitiesResponse")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["NextToken"] = args["NextToken"],
		["Identities"] = args["Identities"],
	}
	asserts.AssertListIdentitiesResponse(t)
	return t
end

keys.IdentityPoolShortDescription = { ["IdentityPoolId"] = true, ["IdentityPoolName"] = true, nil }

function asserts.AssertIdentityPoolShortDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityPoolShortDescription to be of type 'table'")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["IdentityPoolName"] then asserts.AssertIdentityPoolName(struct["IdentityPoolName"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityPoolShortDescription[k], "IdentityPoolShortDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityPoolShortDescription
-- <p>A description of the identity pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * IdentityPoolName [IdentityPoolName] <p>A string that you provide.</p>
-- @return IdentityPoolShortDescription structure as a key-value pair table
function M.IdentityPoolShortDescription(args)
	assert(args, "You must provdide an argument table when creating IdentityPoolShortDescription")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["IdentityPoolName"] = args["IdentityPoolName"],
	}
	asserts.AssertIdentityPoolShortDescription(t)
	return t
end

keys.InternalErrorException = { ["message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- <p>Thrown when the service encounters an error during processing the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by an InternalErrorException.</p>
-- @return InternalErrorException structure as a key-value pair table
function M.InternalErrorException(args)
	assert(args, "You must provdide an argument table when creating InternalErrorException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalErrorException(t)
	return t
end

keys.InvalidIdentityPoolConfigurationException = { ["message"] = true, nil }

function asserts.AssertInvalidIdentityPoolConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidIdentityPoolConfigurationException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidIdentityPoolConfigurationException[k], "InvalidIdentityPoolConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidIdentityPoolConfigurationException
-- <p>Thrown if the identity pool has no role associated for the given auth type (auth/unauth) or if the AssumeRole fails.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned for an <code>InvalidIdentityPoolConfigurationException</code> </p>
-- @return InvalidIdentityPoolConfigurationException structure as a key-value pair table
function M.InvalidIdentityPoolConfigurationException(args)
	assert(args, "You must provdide an argument table when creating InvalidIdentityPoolConfigurationException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidIdentityPoolConfigurationException(t)
	return t
end

keys.Credentials = { ["SecretKey"] = true, ["SessionToken"] = true, ["Expiration"] = true, ["AccessKeyId"] = true, nil }

function asserts.AssertCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Credentials to be of type 'table'")
	if struct["SecretKey"] then asserts.AssertSecretKeyString(struct["SecretKey"]) end
	if struct["SessionToken"] then asserts.AssertSessionTokenString(struct["SessionToken"]) end
	if struct["Expiration"] then asserts.AssertDateType(struct["Expiration"]) end
	if struct["AccessKeyId"] then asserts.AssertAccessKeyString(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Credentials[k], "Credentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Credentials
-- <p>Credentials for the provided identity ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretKey [SecretKeyString] <p>The Secret Access Key portion of the credentials</p>
-- * SessionToken [SessionTokenString] <p>The Session Token portion of the credentials</p>
-- * Expiration [DateType] <p>The date at which these credentials will expire.</p>
-- * AccessKeyId [AccessKeyString] <p>The Access Key portion of the credentials.</p>
-- @return Credentials structure as a key-value pair table
function M.Credentials(args)
	assert(args, "You must provdide an argument table when creating Credentials")
	local t = { 
		["SecretKey"] = args["SecretKey"],
		["SessionToken"] = args["SessionToken"],
		["Expiration"] = args["Expiration"],
		["AccessKeyId"] = args["AccessKeyId"],
	}
	asserts.AssertCredentials(t)
	return t
end

keys.SetIdentityPoolRolesInput = { ["IdentityPoolId"] = true, ["Roles"] = true, ["RoleMappings"] = true, nil }

function asserts.AssertSetIdentityPoolRolesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetIdentityPoolRolesInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["Roles"], "Expected key Roles to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["Roles"] then asserts.AssertRolesMap(struct["Roles"]) end
	if struct["RoleMappings"] then asserts.AssertRoleMappingMap(struct["RoleMappings"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetIdentityPoolRolesInput[k], "SetIdentityPoolRolesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetIdentityPoolRolesInput
-- <p>Input to the <code>SetIdentityPoolRoles</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * Roles [RolesMap] <p>The map of roles associated with this pool. For a given role, the key will be either "authenticated" or "unauthenticated" and the value will be the Role ARN.</p>
-- * RoleMappings [RoleMappingMap] <p>How users for a specific identity provider are to mapped to roles. This is a string to <a>RoleMapping</a> object map. The string identifies the identity provider, for example, "graph.facebook.com" or "cognito-idp-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id".</p> <p>Up to 25 rules can be specified per identity provider.</p>
-- Required key: IdentityPoolId
-- Required key: Roles
-- @return SetIdentityPoolRolesInput structure as a key-value pair table
function M.SetIdentityPoolRolesInput(args)
	assert(args, "You must provdide an argument table when creating SetIdentityPoolRolesInput")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["Roles"] = args["Roles"],
		["RoleMappings"] = args["RoleMappings"],
	}
	asserts.AssertSetIdentityPoolRolesInput(t)
	return t
end

keys.GetIdInput = { ["Logins"] = true, ["IdentityPoolId"] = true, ["AccountId"] = true, nil }

function asserts.AssertGetIdInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIdInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["Logins"] then asserts.AssertLoginsMap(struct["Logins"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIdInput[k], "GetIdInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIdInput
-- <p>Input to the GetId action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Logins [LoginsMap] <p>A set of optional name-value pairs that map provider names to provider tokens. The available provider names for <code>Logins</code> are as follows:</p> <ul> <li> <p>Facebook: <code>graph.facebook.com</code> </p> </li> <li> <p>Amazon Cognito Identity Provider: <code>cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789</code> </p> </li> <li> <p>Google: <code>accounts.google.com</code> </p> </li> <li> <p>Amazon: <code>www.amazon.com</code> </p> </li> <li> <p>Twitter: <code>api.twitter.com</code> </p> </li> <li> <p>Digits: <code>www.digits.com</code> </p> </li> </ul>
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * AccountId [AccountId] <p>A standard AWS account ID (9+ digits).</p>
-- Required key: IdentityPoolId
-- @return GetIdInput structure as a key-value pair table
function M.GetIdInput(args)
	assert(args, "You must provdide an argument table when creating GetIdInput")
	local t = { 
		["Logins"] = args["Logins"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertGetIdInput(t)
	return t
end

keys.DescribeIdentityPoolInput = { ["IdentityPoolId"] = true, nil }

function asserts.AssertDescribeIdentityPoolInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityPoolInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIdentityPoolInput[k], "DescribeIdentityPoolInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityPoolInput
-- <p>Input to the DescribeIdentityPool action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- Required key: IdentityPoolId
-- @return DescribeIdentityPoolInput structure as a key-value pair table
function M.DescribeIdentityPoolInput(args)
	assert(args, "You must provdide an argument table when creating DescribeIdentityPoolInput")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
	}
	asserts.AssertDescribeIdentityPoolInput(t)
	return t
end

keys.UnlinkDeveloperIdentityInput = { ["IdentityPoolId"] = true, ["DeveloperUserIdentifier"] = true, ["DeveloperProviderName"] = true, ["IdentityId"] = true, nil }

function asserts.AssertUnlinkDeveloperIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnlinkDeveloperIdentityInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["DeveloperProviderName"], "Expected key DeveloperProviderName to exist in table")
	assert(struct["DeveloperUserIdentifier"], "Expected key DeveloperUserIdentifier to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DeveloperUserIdentifier"] then asserts.AssertDeveloperUserIdentifier(struct["DeveloperUserIdentifier"]) end
	if struct["DeveloperProviderName"] then asserts.AssertDeveloperProviderName(struct["DeveloperProviderName"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnlinkDeveloperIdentityInput[k], "UnlinkDeveloperIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnlinkDeveloperIdentityInput
-- <p>Input to the <code>UnlinkDeveloperIdentity</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * DeveloperUserIdentifier [DeveloperUserIdentifier] <p>A unique ID used by your backend authentication process to identify a user.</p>
-- * DeveloperProviderName [DeveloperProviderName] <p>The "domain" by which Cognito will refer to your users.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- Required key: IdentityId
-- Required key: IdentityPoolId
-- Required key: DeveloperProviderName
-- Required key: DeveloperUserIdentifier
-- @return UnlinkDeveloperIdentityInput structure as a key-value pair table
function M.UnlinkDeveloperIdentityInput(args)
	assert(args, "You must provdide an argument table when creating UnlinkDeveloperIdentityInput")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["DeveloperUserIdentifier"] = args["DeveloperUserIdentifier"],
		["DeveloperProviderName"] = args["DeveloperProviderName"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertUnlinkDeveloperIdentityInput(t)
	return t
end

keys.IdentityPool = { ["DeveloperProviderName"] = true, ["SamlProviderARNs"] = true, ["SupportedLoginProviders"] = true, ["AllowUnauthenticatedIdentities"] = true, ["IdentityPoolName"] = true, ["IdentityPoolId"] = true, ["CognitoIdentityProviders"] = true, ["OpenIdConnectProviderARNs"] = true, nil }

function asserts.AssertIdentityPool(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdentityPool to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	assert(struct["IdentityPoolName"], "Expected key IdentityPoolName to exist in table")
	assert(struct["AllowUnauthenticatedIdentities"], "Expected key AllowUnauthenticatedIdentities to exist in table")
	if struct["DeveloperProviderName"] then asserts.AssertDeveloperProviderName(struct["DeveloperProviderName"]) end
	if struct["SamlProviderARNs"] then asserts.AssertSAMLProviderList(struct["SamlProviderARNs"]) end
	if struct["SupportedLoginProviders"] then asserts.AssertIdentityProviders(struct["SupportedLoginProviders"]) end
	if struct["AllowUnauthenticatedIdentities"] then asserts.AssertIdentityPoolUnauthenticated(struct["AllowUnauthenticatedIdentities"]) end
	if struct["IdentityPoolName"] then asserts.AssertIdentityPoolName(struct["IdentityPoolName"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["CognitoIdentityProviders"] then asserts.AssertCognitoIdentityProviderList(struct["CognitoIdentityProviders"]) end
	if struct["OpenIdConnectProviderARNs"] then asserts.AssertOIDCProviderList(struct["OpenIdConnectProviderARNs"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdentityPool[k], "IdentityPool contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdentityPool
-- <p>An object representing an Amazon Cognito identity pool.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeveloperProviderName [DeveloperProviderName] <p>The "domain" by which Cognito will refer to your users.</p>
-- * SamlProviderARNs [SAMLProviderList] <p>An array of Amazon Resource Names (ARNs) of the SAML provider for your identity pool.</p>
-- * SupportedLoginProviders [IdentityProviders] <p>Optional key:value pairs mapping provider names to provider app IDs.</p>
-- * AllowUnauthenticatedIdentities [IdentityPoolUnauthenticated] <p>TRUE if the identity pool supports unauthenticated logins.</p>
-- * IdentityPoolName [IdentityPoolName] <p>A string that you provide.</p>
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * CognitoIdentityProviders [CognitoIdentityProviderList] <p>A list representing an Amazon Cognito Identity User Pool and its client ID.</p>
-- * OpenIdConnectProviderARNs [OIDCProviderList] <p>A list of OpendID Connect provider ARNs.</p>
-- Required key: IdentityPoolId
-- Required key: IdentityPoolName
-- Required key: AllowUnauthenticatedIdentities
-- @return IdentityPool structure as a key-value pair table
function M.IdentityPool(args)
	assert(args, "You must provdide an argument table when creating IdentityPool")
	local t = { 
		["DeveloperProviderName"] = args["DeveloperProviderName"],
		["SamlProviderARNs"] = args["SamlProviderARNs"],
		["SupportedLoginProviders"] = args["SupportedLoginProviders"],
		["AllowUnauthenticatedIdentities"] = args["AllowUnauthenticatedIdentities"],
		["IdentityPoolName"] = args["IdentityPoolName"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["CognitoIdentityProviders"] = args["CognitoIdentityProviders"],
		["OpenIdConnectProviderARNs"] = args["OpenIdConnectProviderARNs"],
	}
	asserts.AssertIdentityPool(t)
	return t
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>Thrown when the requested resource (for example, a dataset or record) does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by a ResourceNotFoundException.</p>
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ResourceNotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(t)
	return t
end

keys.LookupDeveloperIdentityInput = { ["IdentityPoolId"] = true, ["NextToken"] = true, ["DeveloperUserIdentifier"] = true, ["MaxResults"] = true, ["IdentityId"] = true, nil }

function asserts.AssertLookupDeveloperIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupDeveloperIdentityInput to be of type 'table'")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["DeveloperUserIdentifier"] then asserts.AssertDeveloperUserIdentifier(struct["DeveloperUserIdentifier"]) end
	if struct["MaxResults"] then asserts.AssertQueryLimit(struct["MaxResults"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.LookupDeveloperIdentityInput[k], "LookupDeveloperIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupDeveloperIdentityInput
-- <p>Input to the <code>LookupDeveloperIdentityInput</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * NextToken [PaginationKey] <p>A pagination token. The first call you make will have <code>NextToken</code> set to null. After that the service will return <code>NextToken</code> values as needed. For example, let's say you make a request with <code>MaxResults</code> set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.</p>
-- * DeveloperUserIdentifier [DeveloperUserIdentifier] <p>A unique ID used by your backend authentication process to identify a user. Typically, a developer identity provider would issue many developer user identifiers, in keeping with the number of users.</p>
-- * MaxResults [QueryLimit] <p>The maximum number of identities to return.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- Required key: IdentityPoolId
-- @return LookupDeveloperIdentityInput structure as a key-value pair table
function M.LookupDeveloperIdentityInput(args)
	assert(args, "You must provdide an argument table when creating LookupDeveloperIdentityInput")
	local t = { 
		["IdentityPoolId"] = args["IdentityPoolId"],
		["NextToken"] = args["NextToken"],
		["DeveloperUserIdentifier"] = args["DeveloperUserIdentifier"],
		["MaxResults"] = args["MaxResults"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertLookupDeveloperIdentityInput(t)
	return t
end

keys.MergeDeveloperIdentitiesInput = { ["DestinationUserIdentifier"] = true, ["IdentityPoolId"] = true, ["DeveloperProviderName"] = true, ["SourceUserIdentifier"] = true, nil }

function asserts.AssertMergeDeveloperIdentitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergeDeveloperIdentitiesInput to be of type 'table'")
	assert(struct["SourceUserIdentifier"], "Expected key SourceUserIdentifier to exist in table")
	assert(struct["DestinationUserIdentifier"], "Expected key DestinationUserIdentifier to exist in table")
	assert(struct["DeveloperProviderName"], "Expected key DeveloperProviderName to exist in table")
	assert(struct["IdentityPoolId"], "Expected key IdentityPoolId to exist in table")
	if struct["DestinationUserIdentifier"] then asserts.AssertDeveloperUserIdentifier(struct["DestinationUserIdentifier"]) end
	if struct["IdentityPoolId"] then asserts.AssertIdentityPoolId(struct["IdentityPoolId"]) end
	if struct["DeveloperProviderName"] then asserts.AssertDeveloperProviderName(struct["DeveloperProviderName"]) end
	if struct["SourceUserIdentifier"] then asserts.AssertDeveloperUserIdentifier(struct["SourceUserIdentifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.MergeDeveloperIdentitiesInput[k], "MergeDeveloperIdentitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergeDeveloperIdentitiesInput
-- <p>Input to the <code>MergeDeveloperIdentities</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationUserIdentifier [DeveloperUserIdentifier] <p>User identifier for the destination user. The value should be a <code>DeveloperUserIdentifier</code>.</p>
-- * IdentityPoolId [IdentityPoolId] <p>An identity pool ID in the format REGION:GUID.</p>
-- * DeveloperProviderName [DeveloperProviderName] <p>The "domain" by which Cognito will refer to your users. This is a (pseudo) domain name that you provide while creating an identity pool. This name acts as a placeholder that allows your backend and the Cognito service to communicate about the developer provider. For the <code>DeveloperProviderName</code>, you can use letters as well as period (.), underscore (_), and dash (-).</p>
-- * SourceUserIdentifier [DeveloperUserIdentifier] <p>User identifier for the source user. The value should be a <code>DeveloperUserIdentifier</code>.</p>
-- Required key: SourceUserIdentifier
-- Required key: DestinationUserIdentifier
-- Required key: DeveloperProviderName
-- Required key: IdentityPoolId
-- @return MergeDeveloperIdentitiesInput structure as a key-value pair table
function M.MergeDeveloperIdentitiesInput(args)
	assert(args, "You must provdide an argument table when creating MergeDeveloperIdentitiesInput")
	local t = { 
		["DestinationUserIdentifier"] = args["DestinationUserIdentifier"],
		["IdentityPoolId"] = args["IdentityPoolId"],
		["DeveloperProviderName"] = args["DeveloperProviderName"],
		["SourceUserIdentifier"] = args["SourceUserIdentifier"],
	}
	asserts.AssertMergeDeveloperIdentitiesInput(t)
	return t
end

keys.DeveloperUserAlreadyRegisteredException = { ["message"] = true, nil }

function asserts.AssertDeveloperUserAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeveloperUserAlreadyRegisteredException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeveloperUserAlreadyRegisteredException[k], "DeveloperUserAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeveloperUserAlreadyRegisteredException
-- <p>The provided developer user identifier is already registered with Cognito under a different identity ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>This developer user identifier is already registered with Cognito.</p>
-- @return DeveloperUserAlreadyRegisteredException structure as a key-value pair table
function M.DeveloperUserAlreadyRegisteredException(args)
	assert(args, "You must provdide an argument table when creating DeveloperUserAlreadyRegisteredException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertDeveloperUserAlreadyRegisteredException(t)
	return t
end

keys.UnlinkIdentityInput = { ["Logins"] = true, ["LoginsToRemove"] = true, ["IdentityId"] = true, nil }

function asserts.AssertUnlinkIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnlinkIdentityInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	assert(struct["Logins"], "Expected key Logins to exist in table")
	assert(struct["LoginsToRemove"], "Expected key LoginsToRemove to exist in table")
	if struct["Logins"] then asserts.AssertLoginsMap(struct["Logins"]) end
	if struct["LoginsToRemove"] then asserts.AssertLoginsList(struct["LoginsToRemove"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnlinkIdentityInput[k], "UnlinkIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnlinkIdentityInput
-- <p>Input to the UnlinkIdentity action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Logins [LoginsMap] <p>A set of optional name-value pairs that map provider names to provider tokens.</p>
-- * LoginsToRemove [LoginsList] <p>Provider names to unlink from this identity.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- Required key: IdentityId
-- Required key: Logins
-- Required key: LoginsToRemove
-- @return UnlinkIdentityInput structure as a key-value pair table
function M.UnlinkIdentityInput(args)
	assert(args, "You must provdide an argument table when creating UnlinkIdentityInput")
	local t = { 
		["Logins"] = args["Logins"],
		["LoginsToRemove"] = args["LoginsToRemove"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertUnlinkIdentityInput(t)
	return t
end

keys.ExternalServiceException = { ["message"] = true, nil }

function asserts.AssertExternalServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExternalServiceException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExternalServiceException[k], "ExternalServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExternalServiceException
-- <p>An exception thrown when a dependent service such as Facebook or Twitter is not responding</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by an ExternalServiceException</p>
-- @return ExternalServiceException structure as a key-value pair table
function M.ExternalServiceException(args)
	assert(args, "You must provdide an argument table when creating ExternalServiceException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertExternalServiceException(t)
	return t
end

keys.GetCredentialsForIdentityResponse = { ["Credentials"] = true, ["IdentityId"] = true, nil }

function asserts.AssertGetCredentialsForIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCredentialsForIdentityResponse to be of type 'table'")
	if struct["Credentials"] then asserts.AssertCredentials(struct["Credentials"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCredentialsForIdentityResponse[k], "GetCredentialsForIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCredentialsForIdentityResponse
-- <p>Returned in response to a successful <code>GetCredentialsForIdentity</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Credentials [Credentials] <p>Credentials for the provided identity ID.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- @return GetCredentialsForIdentityResponse structure as a key-value pair table
function M.GetCredentialsForIdentityResponse(args)
	assert(args, "You must provdide an argument table when creating GetCredentialsForIdentityResponse")
	local t = { 
		["Credentials"] = args["Credentials"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertGetCredentialsForIdentityResponse(t)
	return t
end

keys.GetCredentialsForIdentityInput = { ["Logins"] = true, ["CustomRoleArn"] = true, ["IdentityId"] = true, nil }

function asserts.AssertGetCredentialsForIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCredentialsForIdentityInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	if struct["Logins"] then asserts.AssertLoginsMap(struct["Logins"]) end
	if struct["CustomRoleArn"] then asserts.AssertARNString(struct["CustomRoleArn"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCredentialsForIdentityInput[k], "GetCredentialsForIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCredentialsForIdentityInput
-- <p>Input to the <code>GetCredentialsForIdentity</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Logins [LoginsMap] <p>A set of optional name-value pairs that map provider names to provider tokens.</p>
-- * CustomRoleArn [ARNString] <p>The Amazon Resource Name (ARN) of the role to be assumed when multiple roles were received in the token from the identity provider. For example, a SAML-based identity provider. This parameter is optional for identity providers that do not support role customization.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- Required key: IdentityId
-- @return GetCredentialsForIdentityInput structure as a key-value pair table
function M.GetCredentialsForIdentityInput(args)
	assert(args, "You must provdide an argument table when creating GetCredentialsForIdentityInput")
	local t = { 
		["Logins"] = args["Logins"],
		["CustomRoleArn"] = args["CustomRoleArn"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertGetCredentialsForIdentityInput(t)
	return t
end

keys.DescribeIdentityInput = { ["IdentityId"] = true, nil }

function asserts.AssertDescribeIdentityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIdentityInput to be of type 'table'")
	assert(struct["IdentityId"], "Expected key IdentityId to exist in table")
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIdentityInput[k], "DescribeIdentityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIdentityInput
-- <p>Input to the <code>DescribeIdentity</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- Required key: IdentityId
-- @return DescribeIdentityInput structure as a key-value pair table
function M.DescribeIdentityInput(args)
	assert(args, "You must provdide an argument table when creating DescribeIdentityInput")
	local t = { 
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertDescribeIdentityInput(t)
	return t
end

keys.DeleteIdentitiesResponse = { ["UnprocessedIdentityIds"] = true, nil }

function asserts.AssertDeleteIdentitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIdentitiesResponse to be of type 'table'")
	if struct["UnprocessedIdentityIds"] then asserts.AssertUnprocessedIdentityIdList(struct["UnprocessedIdentityIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIdentitiesResponse[k], "DeleteIdentitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIdentitiesResponse
-- <p>Returned in response to a successful <code>DeleteIdentities</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedIdentityIds [UnprocessedIdentityIdList] <p>An array of UnprocessedIdentityId objects, each of which contains an ErrorCode and IdentityId.</p>
-- @return DeleteIdentitiesResponse structure as a key-value pair table
function M.DeleteIdentitiesResponse(args)
	assert(args, "You must provdide an argument table when creating DeleteIdentitiesResponse")
	local t = { 
		["UnprocessedIdentityIds"] = args["UnprocessedIdentityIds"],
	}
	asserts.AssertDeleteIdentitiesResponse(t)
	return t
end

keys.ResourceConflictException = { ["message"] = true, nil }

function asserts.AssertResourceConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConflictException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceConflictException[k], "ResourceConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConflictException
-- <p>Thrown when a user tries to use a login which is already linked to another account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The message returned by a ResourceConflictException.</p>
-- @return ResourceConflictException structure as a key-value pair table
function M.ResourceConflictException(args)
	assert(args, "You must provdide an argument table when creating ResourceConflictException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertResourceConflictException(t)
	return t
end

keys.MergeDeveloperIdentitiesResponse = { ["IdentityId"] = true, nil }

function asserts.AssertMergeDeveloperIdentitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MergeDeveloperIdentitiesResponse to be of type 'table'")
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MergeDeveloperIdentitiesResponse[k], "MergeDeveloperIdentitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MergeDeveloperIdentitiesResponse
-- <p>Returned in response to a successful <code>MergeDeveloperIdentities</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- @return MergeDeveloperIdentitiesResponse structure as a key-value pair table
function M.MergeDeveloperIdentitiesResponse(args)
	assert(args, "You must provdide an argument table when creating MergeDeveloperIdentitiesResponse")
	local t = { 
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertMergeDeveloperIdentitiesResponse(t)
	return t
end

keys.LookupDeveloperIdentityResponse = { ["NextToken"] = true, ["DeveloperUserIdentifierList"] = true, ["IdentityId"] = true, nil }

function asserts.AssertLookupDeveloperIdentityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupDeveloperIdentityResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationKey(struct["NextToken"]) end
	if struct["DeveloperUserIdentifierList"] then asserts.AssertDeveloperUserIdentifierList(struct["DeveloperUserIdentifierList"]) end
	if struct["IdentityId"] then asserts.AssertIdentityId(struct["IdentityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.LookupDeveloperIdentityResponse[k], "LookupDeveloperIdentityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupDeveloperIdentityResponse
-- <p>Returned in response to a successful <code>LookupDeveloperIdentity</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationKey] <p>A pagination token. The first call you make will have <code>NextToken</code> set to null. After that the service will return <code>NextToken</code> values as needed. For example, let's say you make a request with <code>MaxResults</code> set to 10, and there are 20 matches in the database. The service will return a pagination token as a part of the response. This token can be used to call the API again and get results starting from the 11th match.</p>
-- * DeveloperUserIdentifierList [DeveloperUserIdentifierList] <p>This is the list of developer user identifiers associated with an identity ID. Cognito supports the association of multiple developer user identifiers with an identity ID.</p>
-- * IdentityId [IdentityId] <p>A unique identifier in the format REGION:GUID.</p>
-- @return LookupDeveloperIdentityResponse structure as a key-value pair table
function M.LookupDeveloperIdentityResponse(args)
	assert(args, "You must provdide an argument table when creating LookupDeveloperIdentityResponse")
	local t = { 
		["NextToken"] = args["NextToken"],
		["DeveloperUserIdentifierList"] = args["DeveloperUserIdentifierList"],
		["IdentityId"] = args["IdentityId"],
	}
	asserts.AssertLookupDeveloperIdentityResponse(t)
	return t
end

function asserts.AssertCognitoIdentityProviderClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected CognitoIdentityProviderClientId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CognitoIdentityProviderClientId(str)
	asserts.AssertCognitoIdentityProviderClientId(str)
	return str
end

function asserts.AssertIdentityProviderToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderToken to be of type 'string'")
	assert(#str <= 50000, "Expected string to be max 50000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityProviderToken(str)
	asserts.AssertIdentityProviderToken(str)
	return str
end

function asserts.AssertSecretKeyString(str)
	assert(str)
	assert(type(str) == "string", "Expected SecretKeyString to be of type 'string'")
end

--  
function M.SecretKeyString(str)
	asserts.AssertSecretKeyString(str)
	return str
end

function asserts.AssertDeveloperProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeveloperProviderName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeveloperProviderName(str)
	asserts.AssertDeveloperProviderName(str)
	return str
end

function asserts.AssertCognitoIdentityProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected CognitoIdentityProviderName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CognitoIdentityProviderName(str)
	asserts.AssertCognitoIdentityProviderName(str)
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

function asserts.AssertIdentityPoolName(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityPoolName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityPoolName(str)
	asserts.AssertIdentityPoolName(str)
	return str
end

function asserts.AssertMappingRuleMatchType(str)
	assert(str)
	assert(type(str) == "string", "Expected MappingRuleMatchType to be of type 'string'")
end

--  
function M.MappingRuleMatchType(str)
	asserts.AssertMappingRuleMatchType(str)
	return str
end

function asserts.AssertRoleType(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleType to be of type 'string'")
end

--  
function M.RoleType(str)
	asserts.AssertRoleType(str)
	return str
end

function asserts.AssertIdentityProviderId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityProviderId(str)
	asserts.AssertIdentityProviderId(str)
	return str
end

function asserts.AssertClaimName(str)
	assert(str)
	assert(type(str) == "string", "Expected ClaimName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClaimName(str)
	asserts.AssertClaimName(str)
	return str
end

function asserts.AssertIdentityPoolId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityPoolId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityPoolId(str)
	asserts.AssertIdentityPoolId(str)
	return str
end

function asserts.AssertARNString(str)
	assert(str)
	assert(type(str) == "string", "Expected ARNString to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ARNString(str)
	asserts.AssertARNString(str)
	return str
end

function asserts.AssertAccessKeyString(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessKeyString to be of type 'string'")
end

--  
function M.AccessKeyString(str)
	asserts.AssertAccessKeyString(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertOIDCToken(str)
	assert(str)
	assert(type(str) == "string", "Expected OIDCToken to be of type 'string'")
end

--  
function M.OIDCToken(str)
	asserts.AssertOIDCToken(str)
	return str
end

function asserts.AssertClaimValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ClaimValue to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClaimValue(str)
	asserts.AssertClaimValue(str)
	return str
end

function asserts.AssertRoleMappingType(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleMappingType to be of type 'string'")
end

--  
function M.RoleMappingType(str)
	asserts.AssertRoleMappingType(str)
	return str
end

function asserts.AssertIdentityProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityProviderName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityProviderName(str)
	asserts.AssertIdentityProviderName(str)
	return str
end

function asserts.AssertAmbiguousRoleResolutionType(str)
	assert(str)
	assert(type(str) == "string", "Expected AmbiguousRoleResolutionType to be of type 'string'")
end

--  
function M.AmbiguousRoleResolutionType(str)
	asserts.AssertAmbiguousRoleResolutionType(str)
	return str
end

function asserts.AssertIdentityId(str)
	assert(str)
	assert(type(str) == "string", "Expected IdentityId to be of type 'string'")
	assert(#str <= 55, "Expected string to be max 55 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdentityId(str)
	asserts.AssertIdentityId(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertDeveloperUserIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected DeveloperUserIdentifier to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeveloperUserIdentifier(str)
	asserts.AssertDeveloperUserIdentifier(str)
	return str
end

function asserts.AssertSessionTokenString(str)
	assert(str)
	assert(type(str) == "string", "Expected SessionTokenString to be of type 'string'")
end

--  
function M.SessionTokenString(str)
	asserts.AssertSessionTokenString(str)
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

function asserts.AssertTokenDuration(long)
	assert(long)
	assert(type(long) == "number", "Expected TokenDuration to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TokenDuration(long)
	asserts.AssertTokenDuration(long)
	return long
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

function asserts.AssertHideDisabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected HideDisabled to be of type 'boolean'")
end

function M.HideDisabled(boolean)
	asserts.AssertHideDisabled(boolean)
	return boolean
end

function asserts.AssertIdentityPoolUnauthenticated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IdentityPoolUnauthenticated to be of type 'boolean'")
end

function M.IdentityPoolUnauthenticated(boolean)
	asserts.AssertIdentityPoolUnauthenticated(boolean)
	return boolean
end

function asserts.AssertCognitoIdentityProviderTokenCheck(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected CognitoIdentityProviderTokenCheck to be of type 'boolean'")
end

function M.CognitoIdentityProviderTokenCheck(boolean)
	asserts.AssertCognitoIdentityProviderTokenCheck(boolean)
	return boolean
end

function asserts.AssertIdentityProviders(map)
	assert(map)
	assert(type(map) == "table", "Expected IdentityProviders to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertIdentityProviderName(k)
		asserts.AssertIdentityProviderId(v)
	end
end

function M.IdentityProviders(map)
	asserts.AssertIdentityProviders(map)
	return map
end

function asserts.AssertLoginsMap(map)
	assert(map)
	assert(type(map) == "table", "Expected LoginsMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertIdentityProviderName(k)
		asserts.AssertIdentityProviderToken(v)
	end
end

function M.LoginsMap(map)
	asserts.AssertLoginsMap(map)
	return map
end

function asserts.AssertRoleMappingMap(map)
	assert(map)
	assert(type(map) == "table", "Expected RoleMappingMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertIdentityProviderName(k)
		asserts.AssertRoleMapping(v)
	end
end

function M.RoleMappingMap(map)
	asserts.AssertRoleMappingMap(map)
	return map
end

function asserts.AssertRolesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected RolesMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertRoleType(k)
		asserts.AssertARNString(v)
	end
end

function M.RolesMap(map)
	asserts.AssertRolesMap(map)
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

function asserts.AssertOIDCProviderList(list)
	assert(list)
	assert(type(list) == "table", "Expected OIDCProviderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertARNString(v)
	end
end

--  
-- List of ARNString objects
function M.OIDCProviderList(list)
	asserts.AssertOIDCProviderList(list)
	return list
end

function asserts.AssertMappingRulesList(list)
	assert(list)
	assert(type(list) == "table", "Expected MappingRulesList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertMappingRule(v)
	end
end

--  
-- List of MappingRule objects
function M.MappingRulesList(list)
	asserts.AssertMappingRulesList(list)
	return list
end

function asserts.AssertIdentitiesList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentitiesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIdentityDescription(v)
	end
end

--  
-- List of IdentityDescription objects
function M.IdentitiesList(list)
	asserts.AssertIdentitiesList(list)
	return list
end

function asserts.AssertDeveloperUserIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeveloperUserIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeveloperUserIdentifier(v)
	end
end

--  
-- List of DeveloperUserIdentifier objects
function M.DeveloperUserIdentifierList(list)
	asserts.AssertDeveloperUserIdentifierList(list)
	return list
end

function asserts.AssertIdentityPoolsList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentityPoolsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIdentityPoolShortDescription(v)
	end
end

--  
-- List of IdentityPoolShortDescription objects
function M.IdentityPoolsList(list)
	asserts.AssertIdentityPoolsList(list)
	return list
end

function asserts.AssertIdentityIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected IdentityIdList to be of type ''table")
	assert(#list <= 60, "Expected list to be contain 60 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertIdentityId(v)
	end
end

--  
-- List of IdentityId objects
function M.IdentityIdList(list)
	asserts.AssertIdentityIdList(list)
	return list
end

function asserts.AssertLoginsList(list)
	assert(list)
	assert(type(list) == "table", "Expected LoginsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIdentityProviderName(v)
	end
end

--  
-- List of IdentityProviderName objects
function M.LoginsList(list)
	asserts.AssertLoginsList(list)
	return list
end

function asserts.AssertCognitoIdentityProviderList(list)
	assert(list)
	assert(type(list) == "table", "Expected CognitoIdentityProviderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCognitoIdentityProvider(v)
	end
end

--  
-- List of CognitoIdentityProvider objects
function M.CognitoIdentityProviderList(list)
	asserts.AssertCognitoIdentityProviderList(list)
	return list
end

function asserts.AssertUnprocessedIdentityIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedIdentityIdList to be of type ''table")
	assert(#list <= 60, "Expected list to be contain 60 elements")
	for _,v in ipairs(list) do
		asserts.AssertUnprocessedIdentityId(v)
	end
end

--  
-- List of UnprocessedIdentityId objects
function M.UnprocessedIdentityIdList(list)
	asserts.AssertUnprocessedIdentityIdList(list)
	return list
end

function asserts.AssertSAMLProviderList(list)
	assert(list)
	assert(type(list) == "table", "Expected SAMLProviderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertARNString(v)
	end
end

--  
-- List of ARNString objects
function M.SAMLProviderList(list)
	asserts.AssertSAMLProviderList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call MergeDeveloperIdentities asynchronously, invoking a callback when done
-- @param MergeDeveloperIdentitiesInput
-- @param cb Callback function accepting two args: response, error_message
function M.MergeDeveloperIdentitiesAsync(MergeDeveloperIdentitiesInput, cb)
	assert(MergeDeveloperIdentitiesInput, "You must provide a MergeDeveloperIdentitiesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.MergeDeveloperIdentities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", MergeDeveloperIdentitiesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call MergeDeveloperIdentities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param MergeDeveloperIdentitiesInput
-- @return response
-- @return error_message
function M.MergeDeveloperIdentitiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.MergeDeveloperIdentitiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIdentityPoolRoles asynchronously, invoking a callback when done
-- @param GetIdentityPoolRolesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdentityPoolRolesAsync(GetIdentityPoolRolesInput, cb)
	assert(GetIdentityPoolRolesInput, "You must provide a GetIdentityPoolRolesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetIdentityPoolRoles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIdentityPoolRolesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIdentityPoolRoles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdentityPoolRolesInput
-- @return response
-- @return error_message
function M.GetIdentityPoolRolesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdentityPoolRolesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIdentities asynchronously, invoking a callback when done
-- @param DeleteIdentitiesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIdentitiesAsync(DeleteIdentitiesInput, cb)
	assert(DeleteIdentitiesInput, "You must provide a DeleteIdentitiesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.DeleteIdentities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteIdentitiesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIdentities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIdentitiesInput
-- @return response
-- @return error_message
function M.DeleteIdentitiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIdentitiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOpenIdTokenForDeveloperIdentity asynchronously, invoking a callback when done
-- @param GetOpenIdTokenForDeveloperIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetOpenIdTokenForDeveloperIdentityAsync(GetOpenIdTokenForDeveloperIdentityInput, cb)
	assert(GetOpenIdTokenForDeveloperIdentityInput, "You must provide a GetOpenIdTokenForDeveloperIdentityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetOpenIdTokenForDeveloperIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOpenIdTokenForDeveloperIdentityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOpenIdTokenForDeveloperIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOpenIdTokenForDeveloperIdentityInput
-- @return response
-- @return error_message
function M.GetOpenIdTokenForDeveloperIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOpenIdTokenForDeveloperIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call LookupDeveloperIdentity asynchronously, invoking a callback when done
-- @param LookupDeveloperIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.LookupDeveloperIdentityAsync(LookupDeveloperIdentityInput, cb)
	assert(LookupDeveloperIdentityInput, "You must provide a LookupDeveloperIdentityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.LookupDeveloperIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", LookupDeveloperIdentityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call LookupDeveloperIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param LookupDeveloperIdentityInput
-- @return response
-- @return error_message
function M.LookupDeveloperIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.LookupDeveloperIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentityPools asynchronously, invoking a callback when done
-- @param ListIdentityPoolsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentityPoolsAsync(ListIdentityPoolsInput, cb)
	assert(ListIdentityPoolsInput, "You must provide a ListIdentityPoolsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.ListIdentityPools",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListIdentityPoolsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIdentityPools synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIdentityPoolsInput
-- @return response
-- @return error_message
function M.ListIdentityPoolsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentityPoolsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeIdentity asynchronously, invoking a callback when done
-- @param DescribeIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIdentityAsync(DescribeIdentityInput, cb)
	assert(DescribeIdentityInput, "You must provide a DescribeIdentityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.DescribeIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeIdentityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeIdentityInput
-- @return response
-- @return error_message
function M.DescribeIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetId asynchronously, invoking a callback when done
-- @param GetIdInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetIdAsync(GetIdInput, cb)
	assert(GetIdInput, "You must provide a GetIdInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetId",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetIdInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetId synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIdInput
-- @return response
-- @return error_message
function M.GetIdSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIdAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UnlinkIdentity asynchronously, invoking a callback when done
-- @param UnlinkIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.UnlinkIdentityAsync(UnlinkIdentityInput, cb)
	assert(UnlinkIdentityInput, "You must provide a UnlinkIdentityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.UnlinkIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UnlinkIdentityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnlinkIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnlinkIdentityInput
-- @return response
-- @return error_message
function M.UnlinkIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnlinkIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListIdentities asynchronously, invoking a callback when done
-- @param ListIdentitiesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListIdentitiesAsync(ListIdentitiesInput, cb)
	assert(ListIdentitiesInput, "You must provide a ListIdentitiesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.ListIdentities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListIdentitiesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListIdentities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListIdentitiesInput
-- @return response
-- @return error_message
function M.ListIdentitiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListIdentitiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIdentityPool asynchronously, invoking a callback when done
-- @param DeleteIdentityPoolInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIdentityPoolAsync(DeleteIdentityPoolInput, cb)
	assert(DeleteIdentityPoolInput, "You must provide a DeleteIdentityPoolInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.DeleteIdentityPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteIdentityPoolInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIdentityPool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIdentityPoolInput
-- @return response
-- @return error_message
function M.DeleteIdentityPoolSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIdentityPoolAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCredentialsForIdentity asynchronously, invoking a callback when done
-- @param GetCredentialsForIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetCredentialsForIdentityAsync(GetCredentialsForIdentityInput, cb)
	assert(GetCredentialsForIdentityInput, "You must provide a GetCredentialsForIdentityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetCredentialsForIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCredentialsForIdentityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCredentialsForIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCredentialsForIdentityInput
-- @return response
-- @return error_message
function M.GetCredentialsForIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCredentialsForIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateIdentityPool asynchronously, invoking a callback when done
-- @param IdentityPool
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateIdentityPoolAsync(IdentityPool, cb)
	assert(IdentityPool, "You must provide a IdentityPool")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.UpdateIdentityPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", IdentityPool, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateIdentityPool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param IdentityPool
-- @return response
-- @return error_message
function M.UpdateIdentityPoolSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateIdentityPoolAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetIdentityPoolRoles asynchronously, invoking a callback when done
-- @param SetIdentityPoolRolesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetIdentityPoolRolesAsync(SetIdentityPoolRolesInput, cb)
	assert(SetIdentityPoolRolesInput, "You must provide a SetIdentityPoolRolesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.SetIdentityPoolRoles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetIdentityPoolRolesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetIdentityPoolRoles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetIdentityPoolRolesInput
-- @return response
-- @return error_message
function M.SetIdentityPoolRolesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetIdentityPoolRolesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UnlinkDeveloperIdentity asynchronously, invoking a callback when done
-- @param UnlinkDeveloperIdentityInput
-- @param cb Callback function accepting two args: response, error_message
function M.UnlinkDeveloperIdentityAsync(UnlinkDeveloperIdentityInput, cb)
	assert(UnlinkDeveloperIdentityInput, "You must provide a UnlinkDeveloperIdentityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.UnlinkDeveloperIdentity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UnlinkDeveloperIdentityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnlinkDeveloperIdentity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnlinkDeveloperIdentityInput
-- @return response
-- @return error_message
function M.UnlinkDeveloperIdentitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnlinkDeveloperIdentityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeIdentityPool asynchronously, invoking a callback when done
-- @param DescribeIdentityPoolInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeIdentityPoolAsync(DescribeIdentityPoolInput, cb)
	assert(DescribeIdentityPoolInput, "You must provide a DescribeIdentityPoolInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.DescribeIdentityPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeIdentityPoolInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeIdentityPool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeIdentityPoolInput
-- @return response
-- @return error_message
function M.DescribeIdentityPoolSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeIdentityPoolAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetOpenIdToken asynchronously, invoking a callback when done
-- @param GetOpenIdTokenInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetOpenIdTokenAsync(GetOpenIdTokenInput, cb)
	assert(GetOpenIdTokenInput, "You must provide a GetOpenIdTokenInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.GetOpenIdToken",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOpenIdTokenInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOpenIdToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOpenIdTokenInput
-- @return response
-- @return error_message
function M.GetOpenIdTokenSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOpenIdTokenAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateIdentityPool asynchronously, invoking a callback when done
-- @param CreateIdentityPoolInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIdentityPoolAsync(CreateIdentityPoolInput, cb)
	assert(CreateIdentityPoolInput, "You must provide a CreateIdentityPoolInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSCognitoIdentityService.CreateIdentityPool",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateIdentityPoolInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateIdentityPool synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateIdentityPoolInput
-- @return response
-- @return error_message
function M.CreateIdentityPoolSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateIdentityPoolAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
