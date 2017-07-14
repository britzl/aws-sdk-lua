--- GENERATED CODE - DO NOT MODIFY
-- AWS Identity and Access Management (iam-2010-05-08)

local M = {}

M.metadata = {
	api_version = "2010-05-08",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "iam",
	service_abbreviation = "IAM",
	service_full_name = "AWS Identity and Access Management",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "iam.amazonaws.com",
	uid = "iam-2010-05-08",
}

local OrganizationsDecisionDetail_keys = { "AllowedByOrganizations" = true, nil }

function M.AssertOrganizationsDecisionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationsDecisionDetail to be of type 'table'")
	if struct["AllowedByOrganizations"] then M.AssertbooleanType(struct["AllowedByOrganizations"]) end
	for k,_ in pairs(struct) do
		assert(OrganizationsDecisionDetail_keys[k], "OrganizationsDecisionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationsDecisionDetail
-- &lt;p&gt;Contains information about AWS Organizations's affect on a policy simulation.&lt;/p&gt;
-- @param AllowedByOrganizations [booleanType] &lt;p&gt;Specifies whether the simulated action is allowed by the AWS Organizations service control policies that impact the simulated user's account.&lt;/p&gt;
function M.OrganizationsDecisionDetail(AllowedByOrganizations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationsDecisionDetail")
	local t = { 
		["AllowedByOrganizations"] = AllowedByOrganizations,
	}
	M.AssertOrganizationsDecisionDetail(t)
	return t
end

local UploadSigningCertificateResponse_keys = { "Certificate" = true, nil }

function M.AssertUploadSigningCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadSigningCertificateResponse to be of type 'table'")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	if struct["Certificate"] then M.AssertSigningCertificate(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(UploadSigningCertificateResponse_keys[k], "UploadSigningCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadSigningCertificateResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;UploadSigningCertificate&lt;/a&gt; request. &lt;/p&gt;
-- @param Certificate [SigningCertificate] &lt;p&gt;Information about the certificate.&lt;/p&gt;
-- Required parameter: Certificate
function M.UploadSigningCertificateResponse(Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadSigningCertificateResponse")
	local t = { 
		["Certificate"] = Certificate,
	}
	M.AssertUploadSigningCertificateResponse(t)
	return t
end

local ServiceSpecificCredentialMetadata_keys = { "UserName" = true, "Status" = true, "CreateDate" = true, "ServiceName" = true, "ServiceSpecificCredentialId" = true, "ServiceUserName" = true, nil }

function M.AssertServiceSpecificCredentialMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceSpecificCredentialMetadata to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["ServiceUserName"], "Expected key ServiceUserName to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	assert(struct["ServiceName"], "Expected key ServiceName to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["ServiceName"] then M.AssertserviceName(struct["ServiceName"]) end
	if struct["ServiceSpecificCredentialId"] then M.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	if struct["ServiceUserName"] then M.AssertserviceUserName(struct["ServiceUserName"]) end
	for k,_ in pairs(struct) do
		assert(ServiceSpecificCredentialMetadata_keys[k], "ServiceSpecificCredentialMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceSpecificCredentialMetadata
-- &lt;p&gt;Contains additional details about a service-specific credential.&lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the service-specific credential.&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status of the service-specific credential. &lt;code&gt;Active&lt;/code&gt; means the key is valid for API calls, while &lt;code&gt;Inactive&lt;/code&gt; means it is not.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the service-specific credential were created.&lt;/p&gt;
-- @param ServiceName [serviceName] &lt;p&gt;The name of the service associated with the service-specific credential.&lt;/p&gt;
-- @param ServiceSpecificCredentialId [serviceSpecificCredentialId] &lt;p&gt;The unique identifier for the service-specific credential.&lt;/p&gt;
-- @param ServiceUserName [serviceUserName] &lt;p&gt;The generated user name for the service-specific credential.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: Status
-- Required parameter: ServiceUserName
-- Required parameter: CreateDate
-- Required parameter: ServiceSpecificCredentialId
-- Required parameter: ServiceName
function M.ServiceSpecificCredentialMetadata(UserName, Status, CreateDate, ServiceName, ServiceSpecificCredentialId, ServiceUserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceSpecificCredentialMetadata")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["CreateDate"] = CreateDate,
		["ServiceName"] = ServiceName,
		["ServiceSpecificCredentialId"] = ServiceSpecificCredentialId,
		["ServiceUserName"] = ServiceUserName,
	}
	M.AssertServiceSpecificCredentialMetadata(t)
	return t
end

local PutRolePolicyRequest_keys = { "RoleName" = true, "PolicyDocument" = true, "PolicyName" = true, nil }

function M.AssertPutRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(PutRolePolicyRequest_keys[k], "PutRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRolePolicyRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role to associate the policy with.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The policy document.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy document.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.PutRolePolicyRequest(RoleName, PolicyDocument, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRolePolicyRequest")
	local t = { 
		["RoleName"] = RoleName,
		["PolicyDocument"] = PolicyDocument,
		["PolicyName"] = PolicyName,
	}
	M.AssertPutRolePolicyRequest(t)
	return t
end

local GetLoginProfileResponse_keys = { "LoginProfile" = true, nil }

function M.AssertGetLoginProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoginProfileResponse to be of type 'table'")
	assert(struct["LoginProfile"], "Expected key LoginProfile to exist in table")
	if struct["LoginProfile"] then M.AssertLoginProfile(struct["LoginProfile"]) end
	for k,_ in pairs(struct) do
		assert(GetLoginProfileResponse_keys[k], "GetLoginProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoginProfileResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetLoginProfile&lt;/a&gt; request. &lt;/p&gt;
-- @param LoginProfile [LoginProfile] &lt;p&gt;A structure containing the user name and password create date for the user.&lt;/p&gt;
-- Required parameter: LoginProfile
function M.GetLoginProfileResponse(LoginProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoginProfileResponse")
	local t = { 
		["LoginProfile"] = LoginProfile,
	}
	M.AssertGetLoginProfileResponse(t)
	return t
end

local ListGroupsForUserRequest_keys = { "UserName" = true, "Marker" = true, "MaxItems" = true, nil }

function M.AssertListGroupsForUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsForUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupsForUserRequest_keys[k], "ListGroupsForUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsForUserRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user to list groups for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: UserName
function M.ListGroupsForUserRequest(UserName, Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsForUserRequest")
	local t = { 
		["UserName"] = UserName,
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListGroupsForUserRequest(t)
	return t
end

local RemoveClientIDFromOpenIDConnectProviderRequest_keys = { "OpenIDConnectProviderArn" = true, "ClientID" = true, nil }

function M.AssertRemoveClientIDFromOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveClientIDFromOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	assert(struct["ClientID"], "Expected key ClientID to exist in table")
	if struct["OpenIDConnectProviderArn"] then M.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	if struct["ClientID"] then M.AssertclientIDType(struct["ClientID"]) end
	for k,_ in pairs(struct) do
		assert(RemoveClientIDFromOpenIDConnectProviderRequest_keys[k], "RemoveClientIDFromOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveClientIDFromOpenIDConnectProviderRequest
--  
-- @param OpenIDConnectProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the client ID from. You can get a list of OIDC provider ARNs by using the &lt;a&gt;ListOpenIDConnectProviders&lt;/a&gt; action.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param ClientID [clientIDType] &lt;p&gt;The client ID (also known as audience) to remove from the IAM OIDC provider resource. For more information about client IDs, see &lt;a&gt;CreateOpenIDConnectProvider&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: OpenIDConnectProviderArn
-- Required parameter: ClientID
function M.RemoveClientIDFromOpenIDConnectProviderRequest(OpenIDConnectProviderArn, ClientID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveClientIDFromOpenIDConnectProviderRequest")
	local t = { 
		["OpenIDConnectProviderArn"] = OpenIDConnectProviderArn,
		["ClientID"] = ClientID,
	}
	M.AssertRemoveClientIDFromOpenIDConnectProviderRequest(t)
	return t
end

local GetAccountAuthorizationDetailsRequest_keys = { "Filter" = true, "Marker" = true, "MaxItems" = true, nil }

function M.AssertGetAccountAuthorizationDetailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountAuthorizationDetailsRequest to be of type 'table'")
	if struct["Filter"] then M.AssertentityListType(struct["Filter"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(GetAccountAuthorizationDetailsRequest_keys[k], "GetAccountAuthorizationDetailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountAuthorizationDetailsRequest
--  
-- @param Filter [entityListType] &lt;p&gt;A list of entity types used to filter the results. Only the entities that match the types you specify are included in the output. Use the value &lt;code&gt;LocalManagedPolicy&lt;/code&gt; to include customer managed policies.&lt;/p&gt; &lt;p&gt;The format for this parameter is a comma-separated (if more than one) list of strings. Each string value in the list must be one of the valid values listed below.&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.GetAccountAuthorizationDetailsRequest(Filter, Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountAuthorizationDetailsRequest")
	local t = { 
		["Filter"] = Filter,
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertGetAccountAuthorizationDetailsRequest(t)
	return t
end

local DeleteRolePolicyRequest_keys = { "RoleName" = true, "PolicyName" = true, nil }

function M.AssertDeleteRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRolePolicyRequest_keys[k], "DeleteRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRolePolicyRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name (friendly name, not ARN) identifying the role that the policy is embedded in.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the inline policy to delete from the specified IAM role.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: PolicyName
function M.DeleteRolePolicyRequest(RoleName, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRolePolicyRequest")
	local t = { 
		["RoleName"] = RoleName,
		["PolicyName"] = PolicyName,
	}
	M.AssertDeleteRolePolicyRequest(t)
	return t
end

local ListVirtualMFADevicesRequest_keys = { "Marker" = true, "AssignmentStatus" = true, "MaxItems" = true, nil }

function M.AssertListVirtualMFADevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVirtualMFADevicesRequest to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["AssignmentStatus"] then M.AssertassignmentStatusType(struct["AssignmentStatus"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListVirtualMFADevicesRequest_keys[k], "ListVirtualMFADevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVirtualMFADevicesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param AssignmentStatus [assignmentStatusType] &lt;p&gt; The status (&lt;code&gt;Unassigned&lt;/code&gt; or &lt;code&gt;Assigned&lt;/code&gt;) of the devices to list. If you do not specify an &lt;code&gt;AssignmentStatus&lt;/code&gt;, the action defaults to &lt;code&gt;Any&lt;/code&gt; which lists both assigned and unassigned virtual MFA devices.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListVirtualMFADevicesRequest(Marker, AssignmentStatus, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVirtualMFADevicesRequest")
	local t = { 
		["Marker"] = Marker,
		["AssignmentStatus"] = AssignmentStatus,
		["MaxItems"] = MaxItems,
	}
	M.AssertListVirtualMFADevicesRequest(t)
	return t
end

local CreateAccessKeyResponse_keys = { "AccessKey" = true, nil }

function M.AssertCreateAccessKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccessKeyResponse to be of type 'table'")
	assert(struct["AccessKey"], "Expected key AccessKey to exist in table")
	if struct["AccessKey"] then M.AssertAccessKey(struct["AccessKey"]) end
	for k,_ in pairs(struct) do
		assert(CreateAccessKeyResponse_keys[k], "CreateAccessKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccessKeyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateAccessKey&lt;/a&gt; request. &lt;/p&gt;
-- @param AccessKey [AccessKey] &lt;p&gt;A structure with details about the access key.&lt;/p&gt;
-- Required parameter: AccessKey
function M.CreateAccessKeyResponse(AccessKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccessKeyResponse")
	local t = { 
		["AccessKey"] = AccessKey,
	}
	M.AssertCreateAccessKeyResponse(t)
	return t
end

local InstanceProfile_keys = { "InstanceProfileId" = true, "Roles" = true, "CreateDate" = true, "InstanceProfileName" = true, "Path" = true, "Arn" = true, nil }

function M.AssertInstanceProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceProfile to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	assert(struct["InstanceProfileId"], "Expected key InstanceProfileId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	assert(struct["Roles"], "Expected key Roles to exist in table")
	if struct["InstanceProfileId"] then M.AssertidType(struct["InstanceProfileId"]) end
	if struct["Roles"] then M.AssertroleListType(struct["Roles"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["InstanceProfileName"] then M.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(InstanceProfile_keys[k], "InstanceProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceProfile
-- &lt;p&gt;Contains information about an instance profile.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the following actions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreateInstanceProfile&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;GetInstanceProfile&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ListInstanceProfiles&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ListInstanceProfilesForRole&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param InstanceProfileId [idType] &lt;p&gt; The stable and unique string identifying the instance profile. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param Roles [roleListType] &lt;p&gt;The role associated with the instance profile.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date when the instance profile was created.&lt;/p&gt;
-- @param InstanceProfileName [instanceProfileNameType] &lt;p&gt;The name identifying the instance profile.&lt;/p&gt;
-- @param Path [pathType] &lt;p&gt; The path to the instance profile. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt; The Amazon Resource Name (ARN) specifying the instance profile. For more information about ARNs and how to use them in policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- Required parameter: Path
-- Required parameter: InstanceProfileName
-- Required parameter: InstanceProfileId
-- Required parameter: Arn
-- Required parameter: CreateDate
-- Required parameter: Roles
function M.InstanceProfile(InstanceProfileId, Roles, CreateDate, InstanceProfileName, Path, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceProfile")
	local t = { 
		["InstanceProfileId"] = InstanceProfileId,
		["Roles"] = Roles,
		["CreateDate"] = CreateDate,
		["InstanceProfileName"] = InstanceProfileName,
		["Path"] = Path,
		["Arn"] = Arn,
	}
	M.AssertInstanceProfile(t)
	return t
end

local ListGroupsForUserResponse_keys = { "Marker" = true, "IsTruncated" = true, "Groups" = true, nil }

function M.AssertListGroupsForUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsForUserResponse to be of type 'table'")
	assert(struct["Groups"], "Expected key Groups to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Groups"] then M.AssertgroupListType(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupsForUserResponse_keys[k], "ListGroupsForUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsForUserResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListGroupsForUser&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- @param Groups [groupListType] &lt;p&gt;A list of groups.&lt;/p&gt;
-- Required parameter: Groups
function M.ListGroupsForUserResponse(Marker, IsTruncated, Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsForUserResponse")
	local t = { 
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Groups"] = Groups,
	}
	M.AssertListGroupsForUserResponse(t)
	return t
end

local InvalidInputException_keys = { "message" = true, nil }

function M.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["message"] then M.AssertinvalidInputMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInputException_keys[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- &lt;p&gt;The request was rejected because an invalid or out-of-range value was supplied for an input parameter.&lt;/p&gt;
-- @param message [invalidInputMessage] &lt;p&gt;The request was rejected because an invalid or out-of-range value was supplied for an input parameter.&lt;/p&gt;
function M.InvalidInputException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidInputException(t)
	return t
end

local GenerateCredentialReportResponse_keys = { "State" = true, "Description" = true, nil }

function M.AssertGenerateCredentialReportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateCredentialReportResponse to be of type 'table'")
	if struct["State"] then M.AssertReportStateType(struct["State"]) end
	if struct["Description"] then M.AssertReportStateDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(GenerateCredentialReportResponse_keys[k], "GenerateCredentialReportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateCredentialReportResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GenerateCredentialReport&lt;/a&gt; request. &lt;/p&gt;
-- @param State [ReportStateType] &lt;p&gt;Information about the state of the credential report.&lt;/p&gt;
-- @param Description [ReportStateDescriptionType] &lt;p&gt;Information about the credential report.&lt;/p&gt;
function M.GenerateCredentialReportResponse(State, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateCredentialReportResponse")
	local t = { 
		["State"] = State,
		["Description"] = Description,
	}
	M.AssertGenerateCredentialReportResponse(t)
	return t
end

local DeleteAccessKeyRequest_keys = { "UserName" = true, "AccessKeyId" = true, nil }

function M.AssertDeleteAccessKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAccessKeyRequest to be of type 'table'")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["AccessKeyId"] then M.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAccessKeyRequest_keys[k], "DeleteAccessKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAccessKeyRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user whose access key pair you want to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param AccessKeyId [accessKeyIdType] &lt;p&gt;The access key ID for the access key ID and secret access key you want to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: AccessKeyId
function M.DeleteAccessKeyRequest(UserName, AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAccessKeyRequest")
	local t = { 
		["UserName"] = UserName,
		["AccessKeyId"] = AccessKeyId,
	}
	M.AssertDeleteAccessKeyRequest(t)
	return t
end

local GetContextKeysForCustomPolicyRequest_keys = { "PolicyInputList" = true, nil }

function M.AssertGetContextKeysForCustomPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContextKeysForCustomPolicyRequest to be of type 'table'")
	assert(struct["PolicyInputList"], "Expected key PolicyInputList to exist in table")
	if struct["PolicyInputList"] then M.AssertSimulationPolicyListType(struct["PolicyInputList"]) end
	for k,_ in pairs(struct) do
		assert(GetContextKeysForCustomPolicyRequest_keys[k], "GetContextKeysForCustomPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContextKeysForCustomPolicyRequest
--  
-- @param PolicyInputList [SimulationPolicyListType] &lt;p&gt;A list of policies for which you want the list of context keys referenced in those policies. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- Required parameter: PolicyInputList
function M.GetContextKeysForCustomPolicyRequest(PolicyInputList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContextKeysForCustomPolicyRequest")
	local t = { 
		["PolicyInputList"] = PolicyInputList,
	}
	M.AssertGetContextKeysForCustomPolicyRequest(t)
	return t
end

local ListServerCertificatesResponse_keys = { "ServerCertificateMetadataList" = true, "Marker" = true, "IsTruncated" = true, nil }

function M.AssertListServerCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServerCertificatesResponse to be of type 'table'")
	assert(struct["ServerCertificateMetadataList"], "Expected key ServerCertificateMetadataList to exist in table")
	if struct["ServerCertificateMetadataList"] then M.AssertserverCertificateMetadataListType(struct["ServerCertificateMetadataList"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListServerCertificatesResponse_keys[k], "ListServerCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServerCertificatesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListServerCertificates&lt;/a&gt; request. &lt;/p&gt;
-- @param ServerCertificateMetadataList [serverCertificateMetadataListType] &lt;p&gt;A list of server certificates.&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: ServerCertificateMetadataList
function M.ListServerCertificatesResponse(ServerCertificateMetadataList, Marker, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServerCertificatesResponse")
	local t = { 
		["ServerCertificateMetadataList"] = ServerCertificateMetadataList,
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListServerCertificatesResponse(t)
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

local DeactivateMFADeviceRequest_keys = { "UserName" = true, "SerialNumber" = true, nil }

function M.AssertDeactivateMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivateMFADeviceRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["SerialNumber"] then M.AssertserialNumberType(struct["SerialNumber"]) end
	for k,_ in pairs(struct) do
		assert(DeactivateMFADeviceRequest_keys[k], "DeactivateMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivateMFADeviceRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user whose MFA device you want to deactivate.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param SerialNumber [serialNumberType] &lt;p&gt;The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SerialNumber
function M.DeactivateMFADeviceRequest(UserName, SerialNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivateMFADeviceRequest")
	local t = { 
		["UserName"] = UserName,
		["SerialNumber"] = SerialNumber,
	}
	M.AssertDeactivateMFADeviceRequest(t)
	return t
end

local ChangePasswordRequest_keys = { "NewPassword" = true, "OldPassword" = true, nil }

function M.AssertChangePasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangePasswordRequest to be of type 'table'")
	assert(struct["OldPassword"], "Expected key OldPassword to exist in table")
	assert(struct["NewPassword"], "Expected key NewPassword to exist in table")
	if struct["NewPassword"] then M.AssertpasswordType(struct["NewPassword"]) end
	if struct["OldPassword"] then M.AssertpasswordType(struct["OldPassword"]) end
	for k,_ in pairs(struct) do
		assert(ChangePasswordRequest_keys[k], "ChangePasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangePasswordRequest
--  
-- @param NewPassword [passwordType] &lt;p&gt;The new password. The new password must conform to the AWS account's password policy, if one exists.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of almost any printable ASCII character from the space (\u0020) through the end of the ASCII character range (\u00FF). You can also include the tab (\u0009), line feed (\u000A), and carriage return (\u000D) characters. Although any of these characters are valid in a password, note that many tools, such as the AWS Management Console, might restrict the ability to enter certain characters because they have special meaning within that tool.&lt;/p&gt;
-- @param OldPassword [passwordType] &lt;p&gt;The IAM user's current password.&lt;/p&gt;
-- Required parameter: OldPassword
-- Required parameter: NewPassword
function M.ChangePasswordRequest(NewPassword, OldPassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangePasswordRequest")
	local t = { 
		["NewPassword"] = NewPassword,
		["OldPassword"] = OldPassword,
	}
	M.AssertChangePasswordRequest(t)
	return t
end

local ListAccountAliasesResponse_keys = { "Marker" = true, "AccountAliases" = true, "IsTruncated" = true, nil }

function M.AssertListAccountAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountAliasesResponse to be of type 'table'")
	assert(struct["AccountAliases"], "Expected key AccountAliases to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["AccountAliases"] then M.AssertaccountAliasListType(struct["AccountAliases"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListAccountAliasesResponse_keys[k], "ListAccountAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountAliasesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListAccountAliases&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param AccountAliases [accountAliasListType] &lt;p&gt;A list of aliases associated with the account. AWS supports only one alias per account.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: AccountAliases
function M.ListAccountAliasesResponse(Marker, AccountAliases, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountAliasesResponse")
	local t = { 
		["Marker"] = Marker,
		["AccountAliases"] = AccountAliases,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListAccountAliasesResponse(t)
	return t
end

local ListGroupsResponse_keys = { "Marker" = true, "IsTruncated" = true, "Groups" = true, nil }

function M.AssertListGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsResponse to be of type 'table'")
	assert(struct["Groups"], "Expected key Groups to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Groups"] then M.AssertgroupListType(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupsResponse_keys[k], "ListGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListGroups&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- @param Groups [groupListType] &lt;p&gt;A list of groups.&lt;/p&gt;
-- Required parameter: Groups
function M.ListGroupsResponse(Marker, IsTruncated, Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsResponse")
	local t = { 
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Groups"] = Groups,
	}
	M.AssertListGroupsResponse(t)
	return t
end

local UnrecognizedPublicKeyEncodingException_keys = { "message" = true, nil }

function M.AssertUnrecognizedPublicKeyEncodingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnrecognizedPublicKeyEncodingException to be of type 'table'")
	if struct["message"] then M.AssertunrecognizedPublicKeyEncodingMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnrecognizedPublicKeyEncodingException_keys[k], "UnrecognizedPublicKeyEncodingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnrecognizedPublicKeyEncodingException
-- &lt;p&gt;The request was rejected because the public key encoding format is unsupported or unrecognized.&lt;/p&gt;
-- @param message [unrecognizedPublicKeyEncodingMessage] &lt;p&gt;The request was rejected because the public key encoding format is unsupported or unrecognized.&lt;/p&gt;
function M.UnrecognizedPublicKeyEncodingException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnrecognizedPublicKeyEncodingException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnrecognizedPublicKeyEncodingException(t)
	return t
end

local DeletePolicyRequest_keys = { "PolicyArn" = true, nil }

function M.AssertDeletePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(DeletePolicyRequest_keys[k], "DeletePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyRequest
--  
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy you want to delete.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PolicyArn
function M.DeletePolicyRequest(PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyRequest")
	local t = { 
		["PolicyArn"] = PolicyArn,
	}
	M.AssertDeletePolicyRequest(t)
	return t
end

local DeleteRoleRequest_keys = { "RoleName" = true, nil }

function M.AssertDeleteRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRoleRequest_keys[k], "DeleteRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRoleRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- Required parameter: RoleName
function M.DeleteRoleRequest(RoleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRoleRequest")
	local t = { 
		["RoleName"] = RoleName,
	}
	M.AssertDeleteRoleRequest(t)
	return t
end

local EntityTemporarilyUnmodifiableException_keys = { "message" = true, nil }

function M.AssertEntityTemporarilyUnmodifiableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityTemporarilyUnmodifiableException to be of type 'table'")
	if struct["message"] then M.AssertentityTemporarilyUnmodifiableMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(EntityTemporarilyUnmodifiableException_keys[k], "EntityTemporarilyUnmodifiableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityTemporarilyUnmodifiableException
-- &lt;p&gt;The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.&lt;/p&gt;
-- @param message [entityTemporarilyUnmodifiableMessage] &lt;p&gt;The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.&lt;/p&gt;
function M.EntityTemporarilyUnmodifiableException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityTemporarilyUnmodifiableException")
	local t = { 
		["message"] = message,
	}
	M.AssertEntityTemporarilyUnmodifiableException(t)
	return t
end

local UpdateSigningCertificateRequest_keys = { "UserName" = true, "Status" = true, "CertificateId" = true, nil }

function M.AssertUpdateSigningCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSigningCertificateRequest to be of type 'table'")
	assert(struct["CertificateId"], "Expected key CertificateId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["CertificateId"] then M.AssertcertificateIdType(struct["CertificateId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSigningCertificateRequest_keys[k], "UpdateSigningCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSigningCertificateRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the IAM user the signing certificate belongs to.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt; The status you want to assign to the certificate. &lt;code&gt;Active&lt;/code&gt; means the certificate can be used for API calls to AWS, while &lt;code&gt;Inactive&lt;/code&gt; means the certificate cannot be used.&lt;/p&gt;
-- @param CertificateId [certificateIdType] &lt;p&gt;The ID of the signing certificate you want to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: CertificateId
-- Required parameter: Status
function M.UpdateSigningCertificateRequest(UserName, Status, CertificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSigningCertificateRequest")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["CertificateId"] = CertificateId,
	}
	M.AssertUpdateSigningCertificateRequest(t)
	return t
end

local DeleteServiceSpecificCredentialRequest_keys = { "UserName" = true, "ServiceSpecificCredentialId" = true, nil }

function M.AssertDeleteServiceSpecificCredentialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceSpecificCredentialRequest to be of type 'table'")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["ServiceSpecificCredentialId"] then M.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteServiceSpecificCredentialRequest_keys[k], "DeleteServiceSpecificCredentialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceSpecificCredentialRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param ServiceSpecificCredentialId [serviceSpecificCredentialId] &lt;p&gt;The unique identifier of the service-specific credential. You can get this value by calling &lt;a&gt;ListServiceSpecificCredentials&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: ServiceSpecificCredentialId
function M.DeleteServiceSpecificCredentialRequest(UserName, ServiceSpecificCredentialId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServiceSpecificCredentialRequest")
	local t = { 
		["UserName"] = UserName,
		["ServiceSpecificCredentialId"] = ServiceSpecificCredentialId,
	}
	M.AssertDeleteServiceSpecificCredentialRequest(t)
	return t
end

local Group_keys = { "Path" = true, "CreateDate" = true, "GroupId" = true, "Arn" = true, "GroupName" = true, nil }

function M.AssertGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Group to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["GroupId"] then M.AssertidType(struct["GroupId"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(Group_keys[k], "Group contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Group
-- &lt;p&gt;Contains information about an IAM group entity.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the following actions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreateGroup&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;GetGroup&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ListGroups&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Path [pathType] &lt;p&gt;The path to the group. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the group was created.&lt;/p&gt;
-- @param GroupId [idType] &lt;p&gt; The stable and unique string identifying the group. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt; The Amazon Resource Name (ARN) specifying the group. For more information about ARNs and how to use them in policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The friendly name that identifies the group.&lt;/p&gt;
-- Required parameter: Path
-- Required parameter: GroupName
-- Required parameter: GroupId
-- Required parameter: Arn
-- Required parameter: CreateDate
function M.Group(Path, CreateDate, GroupId, Arn, GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Group")
	local t = { 
		["Path"] = Path,
		["CreateDate"] = CreateDate,
		["GroupId"] = GroupId,
		["Arn"] = Arn,
		["GroupName"] = GroupName,
	}
	M.AssertGroup(t)
	return t
end

local EnableMFADeviceRequest_keys = { "UserName" = true, "AuthenticationCode1" = true, "SerialNumber" = true, "AuthenticationCode2" = true, nil }

function M.AssertEnableMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableMFADeviceRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	assert(struct["AuthenticationCode1"], "Expected key AuthenticationCode1 to exist in table")
	assert(struct["AuthenticationCode2"], "Expected key AuthenticationCode2 to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["AuthenticationCode1"] then M.AssertauthenticationCodeType(struct["AuthenticationCode1"]) end
	if struct["SerialNumber"] then M.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["AuthenticationCode2"] then M.AssertauthenticationCodeType(struct["AuthenticationCode2"]) end
	for k,_ in pairs(struct) do
		assert(EnableMFADeviceRequest_keys[k], "EnableMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableMFADeviceRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the IAM user for whom you want to enable the MFA device.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param AuthenticationCode1 [authenticationCodeType] &lt;p&gt;An authentication code emitted by the device. &lt;/p&gt; &lt;p&gt;The format for this parameter is a string of 6 digits.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html&quot;&gt;resync the device&lt;/a&gt;.&lt;/p&gt; &lt;/important&gt;
-- @param SerialNumber [serialNumberType] &lt;p&gt;The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-&lt;/p&gt;
-- @param AuthenticationCode2 [authenticationCodeType] &lt;p&gt;A subsequent authentication code emitted by the device.&lt;/p&gt; &lt;p&gt;The format for this parameter is a string of 6 digits.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html&quot;&gt;resync the device&lt;/a&gt;.&lt;/p&gt; &lt;/important&gt;
-- Required parameter: UserName
-- Required parameter: SerialNumber
-- Required parameter: AuthenticationCode1
-- Required parameter: AuthenticationCode2
function M.EnableMFADeviceRequest(UserName, AuthenticationCode1, SerialNumber, AuthenticationCode2, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableMFADeviceRequest")
	local t = { 
		["UserName"] = UserName,
		["AuthenticationCode1"] = AuthenticationCode1,
		["SerialNumber"] = SerialNumber,
		["AuthenticationCode2"] = AuthenticationCode2,
	}
	M.AssertEnableMFADeviceRequest(t)
	return t
end

local ListAttachedGroupPoliciesResponse_keys = { "Marker" = true, "AttachedPolicies" = true, "IsTruncated" = true, nil }

function M.AssertListAttachedGroupPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedGroupPoliciesResponse to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["AttachedPolicies"] then M.AssertattachedPoliciesListType(struct["AttachedPolicies"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListAttachedGroupPoliciesResponse_keys[k], "ListAttachedGroupPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedGroupPoliciesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListAttachedGroupPolicies&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param AttachedPolicies [attachedPoliciesListType] &lt;p&gt;A list of the attached policies.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
function M.ListAttachedGroupPoliciesResponse(Marker, AttachedPolicies, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedGroupPoliciesResponse")
	local t = { 
		["Marker"] = Marker,
		["AttachedPolicies"] = AttachedPolicies,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListAttachedGroupPoliciesResponse(t)
	return t
end

local UpdateAccountPasswordPolicyRequest_keys = { "AllowUsersToChangePassword" = true, "RequireLowercaseCharacters" = true, "RequireUppercaseCharacters" = true, "MinimumPasswordLength" = true, "RequireNumbers" = true, "PasswordReusePrevention" = true, "HardExpiry" = true, "RequireSymbols" = true, "MaxPasswordAge" = true, nil }

function M.AssertUpdateAccountPasswordPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountPasswordPolicyRequest to be of type 'table'")
	if struct["AllowUsersToChangePassword"] then M.AssertbooleanType(struct["AllowUsersToChangePassword"]) end
	if struct["RequireLowercaseCharacters"] then M.AssertbooleanType(struct["RequireLowercaseCharacters"]) end
	if struct["RequireUppercaseCharacters"] then M.AssertbooleanType(struct["RequireUppercaseCharacters"]) end
	if struct["MinimumPasswordLength"] then M.AssertminimumPasswordLengthType(struct["MinimumPasswordLength"]) end
	if struct["RequireNumbers"] then M.AssertbooleanType(struct["RequireNumbers"]) end
	if struct["PasswordReusePrevention"] then M.AssertpasswordReusePreventionType(struct["PasswordReusePrevention"]) end
	if struct["HardExpiry"] then M.AssertbooleanObjectType(struct["HardExpiry"]) end
	if struct["RequireSymbols"] then M.AssertbooleanType(struct["RequireSymbols"]) end
	if struct["MaxPasswordAge"] then M.AssertmaxPasswordAgeType(struct["MaxPasswordAge"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAccountPasswordPolicyRequest_keys[k], "UpdateAccountPasswordPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountPasswordPolicyRequest
--  
-- @param AllowUsersToChangePassword [booleanType] &lt;p&gt; Allows all IAM users in your account to use the AWS Management Console to change their own passwords. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html&quot;&gt;Letting IAM Users Change Their Own Passwords&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;Default value: false&lt;/p&gt;
-- @param RequireLowercaseCharacters [booleanType] &lt;p&gt;Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z).&lt;/p&gt; &lt;p&gt;Default value: false&lt;/p&gt;
-- @param RequireUppercaseCharacters [booleanType] &lt;p&gt;Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z).&lt;/p&gt; &lt;p&gt;Default value: false&lt;/p&gt;
-- @param MinimumPasswordLength [minimumPasswordLengthType] &lt;p&gt;The minimum number of characters allowed in an IAM user password.&lt;/p&gt; &lt;p&gt;Default value: 6&lt;/p&gt;
-- @param RequireNumbers [booleanType] &lt;p&gt;Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).&lt;/p&gt; &lt;p&gt;Default value: false&lt;/p&gt;
-- @param PasswordReusePrevention [passwordReusePreventionType] &lt;p&gt;Specifies the number of previous passwords that IAM users are prevented from reusing. The default value of 0 means IAM users are not prevented from reusing previous passwords.&lt;/p&gt; &lt;p&gt;Default value: 0&lt;/p&gt;
-- @param HardExpiry [booleanObjectType] &lt;p&gt;Prevents IAM users from setting a new password after their password has expired.&lt;/p&gt; &lt;p&gt;Default value: false&lt;/p&gt;
-- @param RequireSymbols [booleanType] &lt;p&gt;Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters:&lt;/p&gt; &lt;p&gt;! @ # $ % ^ &amp;amp;amp; * ( ) _ + - = [ ] { } | '&lt;/p&gt; &lt;p&gt;Default value: false&lt;/p&gt;
-- @param MaxPasswordAge [maxPasswordAgeType] &lt;p&gt;The number of days that an IAM user password is valid. The default value of 0 means IAM user passwords never expire.&lt;/p&gt; &lt;p&gt;Default value: 0&lt;/p&gt;
function M.UpdateAccountPasswordPolicyRequest(AllowUsersToChangePassword, RequireLowercaseCharacters, RequireUppercaseCharacters, MinimumPasswordLength, RequireNumbers, PasswordReusePrevention, HardExpiry, RequireSymbols, MaxPasswordAge, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAccountPasswordPolicyRequest")
	local t = { 
		["AllowUsersToChangePassword"] = AllowUsersToChangePassword,
		["RequireLowercaseCharacters"] = RequireLowercaseCharacters,
		["RequireUppercaseCharacters"] = RequireUppercaseCharacters,
		["MinimumPasswordLength"] = MinimumPasswordLength,
		["RequireNumbers"] = RequireNumbers,
		["PasswordReusePrevention"] = PasswordReusePrevention,
		["HardExpiry"] = HardExpiry,
		["RequireSymbols"] = RequireSymbols,
		["MaxPasswordAge"] = MaxPasswordAge,
	}
	M.AssertUpdateAccountPasswordPolicyRequest(t)
	return t
end

local GetGroupResponse_keys = { "Marker" = true, "Group" = true, "Users" = true, "IsTruncated" = true, nil }

function M.AssertGetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupResponse to be of type 'table'")
	assert(struct["Group"], "Expected key Group to exist in table")
	assert(struct["Users"], "Expected key Users to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["Group"] then M.AssertGroup(struct["Group"]) end
	if struct["Users"] then M.AssertuserListType(struct["Users"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupResponse_keys[k], "GetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetGroup&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param Group [Group] &lt;p&gt;A structure that contains details about the group.&lt;/p&gt;
-- @param Users [userListType] &lt;p&gt;A list of users in the group.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: Group
-- Required parameter: Users
function M.GetGroupResponse(Marker, Group, Users, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupResponse")
	local t = { 
		["Marker"] = Marker,
		["Group"] = Group,
		["Users"] = Users,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertGetGroupResponse(t)
	return t
end

local GetRolePolicyResponse_keys = { "RoleName" = true, "PolicyDocument" = true, "PolicyName" = true, nil }

function M.AssertGetRolePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRolePolicyResponse to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(GetRolePolicyResponse_keys[k], "GetRolePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRolePolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetRolePolicy&lt;/a&gt; request. &lt;/p&gt;
-- @param RoleName [roleNameType] &lt;p&gt;The role the policy is associated with.&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The policy document.&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy.&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.GetRolePolicyResponse(RoleName, PolicyDocument, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRolePolicyResponse")
	local t = { 
		["RoleName"] = RoleName,
		["PolicyDocument"] = PolicyDocument,
		["PolicyName"] = PolicyName,
	}
	M.AssertGetRolePolicyResponse(t)
	return t
end

local DeleteSAMLProviderRequest_keys = { "SAMLProviderArn" = true, nil }

function M.AssertDeleteSAMLProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSAMLProviderRequest to be of type 'table'")
	assert(struct["SAMLProviderArn"], "Expected key SAMLProviderArn to exist in table")
	if struct["SAMLProviderArn"] then M.AssertarnType(struct["SAMLProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSAMLProviderRequest_keys[k], "DeleteSAMLProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSAMLProviderRequest
--  
-- @param SAMLProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the SAML provider to delete.&lt;/p&gt;
-- Required parameter: SAMLProviderArn
function M.DeleteSAMLProviderRequest(SAMLProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSAMLProviderRequest")
	local t = { 
		["SAMLProviderArn"] = SAMLProviderArn,
	}
	M.AssertDeleteSAMLProviderRequest(t)
	return t
end

local CreateInstanceProfileResponse_keys = { "InstanceProfile" = true, nil }

function M.AssertCreateInstanceProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceProfileResponse to be of type 'table'")
	assert(struct["InstanceProfile"], "Expected key InstanceProfile to exist in table")
	if struct["InstanceProfile"] then M.AssertInstanceProfile(struct["InstanceProfile"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstanceProfileResponse_keys[k], "CreateInstanceProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceProfileResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateInstanceProfile&lt;/a&gt; request. &lt;/p&gt;
-- @param InstanceProfile [InstanceProfile] &lt;p&gt;A structure containing details about the new instance profile.&lt;/p&gt;
-- Required parameter: InstanceProfile
function M.CreateInstanceProfileResponse(InstanceProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceProfileResponse")
	local t = { 
		["InstanceProfile"] = InstanceProfile,
	}
	M.AssertCreateInstanceProfileResponse(t)
	return t
end

local UploadSigningCertificateRequest_keys = { "UserName" = true, "CertificateBody" = true, nil }

function M.AssertUploadSigningCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadSigningCertificateRequest to be of type 'table'")
	assert(struct["CertificateBody"], "Expected key CertificateBody to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["CertificateBody"] then M.AssertcertificateBodyType(struct["CertificateBody"]) end
	for k,_ in pairs(struct) do
		assert(UploadSigningCertificateRequest_keys[k], "UploadSigningCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadSigningCertificateRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user the signing certificate is for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param CertificateBody [certificateBodyType] &lt;p&gt;The contents of the signing certificate.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- Required parameter: CertificateBody
function M.UploadSigningCertificateRequest(UserName, CertificateBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadSigningCertificateRequest")
	local t = { 
		["UserName"] = UserName,
		["CertificateBody"] = CertificateBody,
	}
	M.AssertUploadSigningCertificateRequest(t)
	return t
end

local ListRolePoliciesRequest_keys = { "Marker" = true, "RoleName" = true, "MaxItems" = true, nil }

function M.AssertListRolePoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRolePoliciesRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListRolePoliciesRequest_keys[k], "ListRolePoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRolePoliciesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role to list policies for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: RoleName
function M.ListRolePoliciesRequest(Marker, RoleName, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRolePoliciesRequest")
	local t = { 
		["Marker"] = Marker,
		["RoleName"] = RoleName,
		["MaxItems"] = MaxItems,
	}
	M.AssertListRolePoliciesRequest(t)
	return t
end

local UnmodifiableEntityException_keys = { "message" = true, nil }

function M.AssertUnmodifiableEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnmodifiableEntityException to be of type 'table'")
	if struct["message"] then M.AssertunmodifiableEntityMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnmodifiableEntityException_keys[k], "UnmodifiableEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnmodifiableEntityException
-- &lt;p&gt;The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.&lt;/p&gt;
-- @param message [unmodifiableEntityMessage] &lt;p&gt;The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.&lt;/p&gt;
function M.UnmodifiableEntityException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnmodifiableEntityException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnmodifiableEntityException(t)
	return t
end

local PolicyEvaluationException_keys = { "message" = true, nil }

function M.AssertPolicyEvaluationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyEvaluationException to be of type 'table'")
	if struct["message"] then M.AssertpolicyEvaluationErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PolicyEvaluationException_keys[k], "PolicyEvaluationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyEvaluationException
-- &lt;p&gt;The request failed because a provided policy could not be successfully evaluated. An additional detail message indicates the source of the failure.&lt;/p&gt;
-- @param message [policyEvaluationErrorMessage] &lt;p&gt;The request failed because a provided policy could not be successfully evaluated. An additional detail message indicates the source of the failure.&lt;/p&gt;
function M.PolicyEvaluationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyEvaluationException")
	local t = { 
		["message"] = message,
	}
	M.AssertPolicyEvaluationException(t)
	return t
end

local CredentialReportNotReadyException_keys = { "message" = true, nil }

function M.AssertCredentialReportNotReadyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CredentialReportNotReadyException to be of type 'table'")
	if struct["message"] then M.AssertcredentialReportNotReadyExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CredentialReportNotReadyException_keys[k], "CredentialReportNotReadyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CredentialReportNotReadyException
-- &lt;p&gt;The request was rejected because the credential report is still being generated.&lt;/p&gt;
-- @param message [credentialReportNotReadyExceptionMessage] &lt;p&gt;The request was rejected because the credential report is still being generated.&lt;/p&gt;
function M.CredentialReportNotReadyException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CredentialReportNotReadyException")
	local t = { 
		["message"] = message,
	}
	M.AssertCredentialReportNotReadyException(t)
	return t
end

local EvaluationResult_keys = { "OrganizationsDecisionDetail" = true, "MatchedStatements" = true, "EvalDecisionDetails" = true, "EvalResourceName" = true, "ResourceSpecificResults" = true, "EvalActionName" = true, "MissingContextValues" = true, "EvalDecision" = true, nil }

function M.AssertEvaluationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResult to be of type 'table'")
	assert(struct["EvalActionName"], "Expected key EvalActionName to exist in table")
	assert(struct["EvalDecision"], "Expected key EvalDecision to exist in table")
	if struct["OrganizationsDecisionDetail"] then M.AssertOrganizationsDecisionDetail(struct["OrganizationsDecisionDetail"]) end
	if struct["MatchedStatements"] then M.AssertStatementListType(struct["MatchedStatements"]) end
	if struct["EvalDecisionDetails"] then M.AssertEvalDecisionDetailsType(struct["EvalDecisionDetails"]) end
	if struct["EvalResourceName"] then M.AssertResourceNameType(struct["EvalResourceName"]) end
	if struct["ResourceSpecificResults"] then M.AssertResourceSpecificResultListType(struct["ResourceSpecificResults"]) end
	if struct["EvalActionName"] then M.AssertActionNameType(struct["EvalActionName"]) end
	if struct["MissingContextValues"] then M.AssertContextKeyNamesResultListType(struct["MissingContextValues"]) end
	if struct["EvalDecision"] then M.AssertPolicyEvaluationDecisionType(struct["EvalDecision"]) end
	for k,_ in pairs(struct) do
		assert(EvaluationResult_keys[k], "EvaluationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResult
-- &lt;p&gt;Contains the results of a simulation.&lt;/p&gt; &lt;p&gt;This data type is used by the return parameter of &lt;code&gt; &lt;a&gt;SimulateCustomPolicy&lt;/a&gt; &lt;/code&gt; and &lt;code&gt; &lt;a&gt;SimulatePrincipalPolicy&lt;/a&gt; &lt;/code&gt;.&lt;/p&gt;
-- @param OrganizationsDecisionDetail [OrganizationsDecisionDetail] &lt;p&gt;A structure that details how AWS Organizations and its service control policies affect the results of the simulation. Only applies if the simulated user's account is part of an organization.&lt;/p&gt;
-- @param MatchedStatements [StatementListType] &lt;p&gt;A list of the statements in the input policies that determine the result for this scenario. Remember that even if multiple statements allow the action on the resource, if only one statement denies that action, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.&lt;/p&gt;
-- @param EvalDecisionDetails [EvalDecisionDetailsType] &lt;p&gt;Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access. See &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_compare-resource-policies.html&quot;&gt;How IAM Roles Differ from Resource-based Policies&lt;/a&gt; &lt;/p&gt;
-- @param EvalResourceName [ResourceNameType] &lt;p&gt;The ARN of the resource that the indicated API action was tested on.&lt;/p&gt;
-- @param ResourceSpecificResults [ResourceSpecificResultListType] &lt;p&gt;The individual results of the simulation of the API action specified in EvalActionName on each resource.&lt;/p&gt;
-- @param EvalActionName [ActionNameType] &lt;p&gt;The name of the API action tested on the indicated resource.&lt;/p&gt;
-- @param MissingContextValues [ContextKeyNamesResultListType] &lt;p&gt;A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when the resource in a simulation is &quot;*&quot;, either explicitly, or when the &lt;code&gt;ResourceArns&lt;/code&gt; parameter blank. If you include a list of resources, then any missing context values are instead included under the &lt;code&gt;ResourceSpecificResults&lt;/code&gt; section. To discover the context keys used by a set of policies, you can call &lt;a&gt;GetContextKeysForCustomPolicy&lt;/a&gt; or &lt;a&gt;GetContextKeysForPrincipalPolicy&lt;/a&gt;.&lt;/p&gt;
-- @param EvalDecision [PolicyEvaluationDecisionType] &lt;p&gt;The result of the simulation.&lt;/p&gt;
-- Required parameter: EvalActionName
-- Required parameter: EvalDecision
function M.EvaluationResult(OrganizationsDecisionDetail, MatchedStatements, EvalDecisionDetails, EvalResourceName, ResourceSpecificResults, EvalActionName, MissingContextValues, EvalDecision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluationResult")
	local t = { 
		["OrganizationsDecisionDetail"] = OrganizationsDecisionDetail,
		["MatchedStatements"] = MatchedStatements,
		["EvalDecisionDetails"] = EvalDecisionDetails,
		["EvalResourceName"] = EvalResourceName,
		["ResourceSpecificResults"] = ResourceSpecificResults,
		["EvalActionName"] = EvalActionName,
		["MissingContextValues"] = MissingContextValues,
		["EvalDecision"] = EvalDecision,
	}
	M.AssertEvaluationResult(t)
	return t
end

local UpdateGroupRequest_keys = { "NewPath" = true, "GroupName" = true, "NewGroupName" = true, nil }

function M.AssertUpdateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["NewPath"] then M.AssertpathType(struct["NewPath"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["NewGroupName"] then M.AssertgroupNameType(struct["NewGroupName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGroupRequest_keys[k], "UpdateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupRequest
--  
-- @param NewPath [pathType] &lt;p&gt;New path for the IAM group. Only include this if changing the group's path.&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;Name of the IAM group to update. If you're changing the name of the group, this is the original name.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param NewGroupName [groupNameType] &lt;p&gt;New name for the IAM group. Only include this if changing the group's name.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: GroupName
function M.UpdateGroupRequest(NewPath, GroupName, NewGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupRequest")
	local t = { 
		["NewPath"] = NewPath,
		["GroupName"] = GroupName,
		["NewGroupName"] = NewGroupName,
	}
	M.AssertUpdateGroupRequest(t)
	return t
end

local DeleteAccountAliasRequest_keys = { "AccountAlias" = true, nil }

function M.AssertDeleteAccountAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAccountAliasRequest to be of type 'table'")
	assert(struct["AccountAlias"], "Expected key AccountAlias to exist in table")
	if struct["AccountAlias"] then M.AssertaccountAliasType(struct["AccountAlias"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAccountAliasRequest_keys[k], "DeleteAccountAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAccountAliasRequest
--  
-- @param AccountAlias [accountAliasType] &lt;p&gt;The name of the account alias to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.&lt;/p&gt;
-- Required parameter: AccountAlias
function M.DeleteAccountAliasRequest(AccountAlias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAccountAliasRequest")
	local t = { 
		["AccountAlias"] = AccountAlias,
	}
	M.AssertDeleteAccountAliasRequest(t)
	return t
end

local ListPolicyVersionsResponse_keys = { "Marker" = true, "IsTruncated" = true, "Versions" = true, nil }

function M.AssertListPolicyVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsResponse to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Versions"] then M.AssertpolicyDocumentVersionListType(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListPolicyVersionsResponse_keys[k], "ListPolicyVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListPolicyVersions&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- @param Versions [policyDocumentVersionListType] &lt;p&gt;A list of policy versions.&lt;/p&gt; &lt;p&gt;For more information about managed policy versions, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html&quot;&gt;Versioning for Managed Policies&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
function M.ListPolicyVersionsResponse(Marker, IsTruncated, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyVersionsResponse")
	local t = { 
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Versions"] = Versions,
	}
	M.AssertListPolicyVersionsResponse(t)
	return t
end

local Policy_keys = { "PolicyName" = true, "Description" = true, "CreateDate" = true, "AttachmentCount" = true, "IsAttachable" = true, "PolicyId" = true, "DefaultVersionId" = true, "Path" = true, "Arn" = true, "UpdateDate" = true, nil }

function M.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["Description"] then M.AssertpolicyDescriptionType(struct["Description"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["AttachmentCount"] then M.AssertattachmentCountType(struct["AttachmentCount"]) end
	if struct["IsAttachable"] then M.AssertbooleanType(struct["IsAttachable"]) end
	if struct["PolicyId"] then M.AssertidType(struct["PolicyId"]) end
	if struct["DefaultVersionId"] then M.AssertpolicyVersionIdType(struct["DefaultVersionId"]) end
	if struct["Path"] then M.AssertpolicyPathType(struct["Path"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	if struct["UpdateDate"] then M.AssertdateType(struct["UpdateDate"]) end
	for k,_ in pairs(struct) do
		assert(Policy_keys[k], "Policy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policy
-- &lt;p&gt;Contains information about a managed policy.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;CreatePolicy&lt;/a&gt;, &lt;a&gt;GetPolicy&lt;/a&gt;, and &lt;a&gt;ListPolicies&lt;/a&gt; actions. &lt;/p&gt; &lt;p&gt;For more information about managed policies, refer to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The friendly name (not ARN) identifying the policy.&lt;/p&gt;
-- @param Description [policyDescriptionType] &lt;p&gt;A friendly description of the policy.&lt;/p&gt; &lt;p&gt;This element is included in the response to the &lt;a&gt;GetPolicy&lt;/a&gt; operation. It is not included in the response to the &lt;a&gt;ListPolicies&lt;/a&gt; operation. &lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the policy was created.&lt;/p&gt;
-- @param AttachmentCount [attachmentCountType] &lt;p&gt;The number of entities (users, groups, and roles) that the policy is attached to.&lt;/p&gt;
-- @param IsAttachable [booleanType] &lt;p&gt;Specifies whether the policy can be attached to an IAM user, group, or role.&lt;/p&gt;
-- @param PolicyId [idType] &lt;p&gt;The stable and unique string identifying the policy.&lt;/p&gt; &lt;p&gt;For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param DefaultVersionId [policyVersionIdType] &lt;p&gt;The identifier for the version of the policy that is set as the default version.&lt;/p&gt;
-- @param Path [policyPathType] &lt;p&gt;The path to the policy.&lt;/p&gt; &lt;p&gt;For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;Contains information about a managed policy.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;CreatePolicy&lt;/a&gt;, &lt;a&gt;GetPolicy&lt;/a&gt;, and &lt;a&gt;ListPolicies&lt;/a&gt; actions. &lt;/p&gt; &lt;p&gt;For more information about managed policies, refer to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param UpdateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the policy was last updated.&lt;/p&gt; &lt;p&gt;When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.&lt;/p&gt;
function M.Policy(PolicyName, Description, CreateDate, AttachmentCount, IsAttachable, PolicyId, DefaultVersionId, Path, Arn, UpdateDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Policy")
	local t = { 
		["PolicyName"] = PolicyName,
		["Description"] = Description,
		["CreateDate"] = CreateDate,
		["AttachmentCount"] = AttachmentCount,
		["IsAttachable"] = IsAttachable,
		["PolicyId"] = PolicyId,
		["DefaultVersionId"] = DefaultVersionId,
		["Path"] = Path,
		["Arn"] = Arn,
		["UpdateDate"] = UpdateDate,
	}
	M.AssertPolicy(t)
	return t
end

local GetCredentialReportResponse_keys = { "Content" = true, "GeneratedTime" = true, "ReportFormat" = true, nil }

function M.AssertGetCredentialReportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCredentialReportResponse to be of type 'table'")
	if struct["Content"] then M.AssertReportContentType(struct["Content"]) end
	if struct["GeneratedTime"] then M.AssertdateType(struct["GeneratedTime"]) end
	if struct["ReportFormat"] then M.AssertReportFormatType(struct["ReportFormat"]) end
	for k,_ in pairs(struct) do
		assert(GetCredentialReportResponse_keys[k], "GetCredentialReportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCredentialReportResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetCredentialReport&lt;/a&gt; request. &lt;/p&gt;
-- @param Content [ReportContentType] &lt;p&gt;Contains the credential report. The report is Base64-encoded.&lt;/p&gt;
-- @param GeneratedTime [dateType] &lt;p&gt; The date and time when the credential report was created, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;.&lt;/p&gt;
-- @param ReportFormat [ReportFormatType] &lt;p&gt;The format (MIME type) of the credential report.&lt;/p&gt;
function M.GetCredentialReportResponse(Content, GeneratedTime, ReportFormat, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCredentialReportResponse")
	local t = { 
		["Content"] = Content,
		["GeneratedTime"] = GeneratedTime,
		["ReportFormat"] = ReportFormat,
	}
	M.AssertGetCredentialReportResponse(t)
	return t
end

local GetUserPolicyResponse_keys = { "UserName" = true, "PolicyName" = true, "PolicyDocument" = true, nil }

function M.AssertGetUserPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserPolicyResponse to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	for k,_ in pairs(struct) do
		assert(GetUserPolicyResponse_keys[k], "GetUserPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserPolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetUserPolicy&lt;/a&gt; request. &lt;/p&gt;
-- @param UserName [existingUserNameType] &lt;p&gt;The user the policy is associated with.&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy.&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The policy document.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.GetUserPolicyResponse(UserName, PolicyName, PolicyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserPolicyResponse")
	local t = { 
		["UserName"] = UserName,
		["PolicyName"] = PolicyName,
		["PolicyDocument"] = PolicyDocument,
	}
	M.AssertGetUserPolicyResponse(t)
	return t
end

local GetSAMLProviderRequest_keys = { "SAMLProviderArn" = true, nil }

function M.AssertGetSAMLProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSAMLProviderRequest to be of type 'table'")
	assert(struct["SAMLProviderArn"], "Expected key SAMLProviderArn to exist in table")
	if struct["SAMLProviderArn"] then M.AssertarnType(struct["SAMLProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(GetSAMLProviderRequest_keys[k], "GetSAMLProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSAMLProviderRequest
--  
-- @param SAMLProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get information about.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: SAMLProviderArn
function M.GetSAMLProviderRequest(SAMLProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSAMLProviderRequest")
	local t = { 
		["SAMLProviderArn"] = SAMLProviderArn,
	}
	M.AssertGetSAMLProviderRequest(t)
	return t
end

local DeleteInstanceProfileRequest_keys = { "InstanceProfileName" = true, nil }

function M.AssertDeleteInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	if struct["InstanceProfileName"] then M.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteInstanceProfileRequest_keys[k], "DeleteInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceProfileRequest
--  
-- @param InstanceProfileName [instanceProfileNameType] &lt;p&gt;The name of the instance profile to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: InstanceProfileName
function M.DeleteInstanceProfileRequest(InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceProfileRequest")
	local t = { 
		["InstanceProfileName"] = InstanceProfileName,
	}
	M.AssertDeleteInstanceProfileRequest(t)
	return t
end

local ListInstanceProfilesForRoleResponse_keys = { "Marker" = true, "IsTruncated" = true, "InstanceProfiles" = true, nil }

function M.AssertListInstanceProfilesForRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesForRoleResponse to be of type 'table'")
	assert(struct["InstanceProfiles"], "Expected key InstanceProfiles to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	if struct["InstanceProfiles"] then M.AssertinstanceProfileListType(struct["InstanceProfiles"]) end
	for k,_ in pairs(struct) do
		assert(ListInstanceProfilesForRoleResponse_keys[k], "ListInstanceProfilesForRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesForRoleResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListInstanceProfilesForRole&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- @param InstanceProfiles [instanceProfileListType] &lt;p&gt;A list of instance profiles.&lt;/p&gt;
-- Required parameter: InstanceProfiles
function M.ListInstanceProfilesForRoleResponse(Marker, IsTruncated, InstanceProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceProfilesForRoleResponse")
	local t = { 
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["InstanceProfiles"] = InstanceProfiles,
	}
	M.AssertListInstanceProfilesForRoleResponse(t)
	return t
end

local ListEntitiesForPolicyResponse_keys = { "Marker" = true, "PolicyGroups" = true, "PolicyUsers" = true, "PolicyRoles" = true, "IsTruncated" = true, nil }

function M.AssertListEntitiesForPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEntitiesForPolicyResponse to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PolicyGroups"] then M.AssertPolicyGroupListType(struct["PolicyGroups"]) end
	if struct["PolicyUsers"] then M.AssertPolicyUserListType(struct["PolicyUsers"]) end
	if struct["PolicyRoles"] then M.AssertPolicyRoleListType(struct["PolicyRoles"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListEntitiesForPolicyResponse_keys[k], "ListEntitiesForPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEntitiesForPolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListEntitiesForPolicy&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param PolicyGroups [PolicyGroupListType] &lt;p&gt;A list of IAM groups that the policy is attached to.&lt;/p&gt;
-- @param PolicyUsers [PolicyUserListType] &lt;p&gt;A list of IAM users that the policy is attached to.&lt;/p&gt;
-- @param PolicyRoles [PolicyRoleListType] &lt;p&gt;A list of IAM roles that the policy is attached to.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
function M.ListEntitiesForPolicyResponse(Marker, PolicyGroups, PolicyUsers, PolicyRoles, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEntitiesForPolicyResponse")
	local t = { 
		["Marker"] = Marker,
		["PolicyGroups"] = PolicyGroups,
		["PolicyUsers"] = PolicyUsers,
		["PolicyRoles"] = PolicyRoles,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListEntitiesForPolicyResponse(t)
	return t
end

local GetAccountAuthorizationDetailsResponse_keys = { "RoleDetailList" = true, "GroupDetailList" = true, "UserDetailList" = true, "Policies" = true, "Marker" = true, "IsTruncated" = true, nil }

function M.AssertGetAccountAuthorizationDetailsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountAuthorizationDetailsResponse to be of type 'table'")
	if struct["RoleDetailList"] then M.AssertroleDetailListType(struct["RoleDetailList"]) end
	if struct["GroupDetailList"] then M.AssertgroupDetailListType(struct["GroupDetailList"]) end
	if struct["UserDetailList"] then M.AssertuserDetailListType(struct["UserDetailList"]) end
	if struct["Policies"] then M.AssertManagedPolicyDetailListType(struct["Policies"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(GetAccountAuthorizationDetailsResponse_keys[k], "GetAccountAuthorizationDetailsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountAuthorizationDetailsResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; request. &lt;/p&gt;
-- @param RoleDetailList [roleDetailListType] &lt;p&gt;A list containing information about IAM roles.&lt;/p&gt;
-- @param GroupDetailList [groupDetailListType] &lt;p&gt;A list containing information about IAM groups.&lt;/p&gt;
-- @param UserDetailList [userDetailListType] &lt;p&gt;A list containing information about IAM users.&lt;/p&gt;
-- @param Policies [ManagedPolicyDetailListType] &lt;p&gt;A list containing information about managed policies.&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
function M.GetAccountAuthorizationDetailsResponse(RoleDetailList, GroupDetailList, UserDetailList, Policies, Marker, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountAuthorizationDetailsResponse")
	local t = { 
		["RoleDetailList"] = RoleDetailList,
		["GroupDetailList"] = GroupDetailList,
		["UserDetailList"] = UserDetailList,
		["Policies"] = Policies,
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertGetAccountAuthorizationDetailsResponse(t)
	return t
end

local ResourceSpecificResult_keys = { "EvalResourceDecision" = true, "MissingContextValues" = true, "MatchedStatements" = true, "EvalDecisionDetails" = true, "EvalResourceName" = true, nil }

function M.AssertResourceSpecificResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceSpecificResult to be of type 'table'")
	assert(struct["EvalResourceName"], "Expected key EvalResourceName to exist in table")
	assert(struct["EvalResourceDecision"], "Expected key EvalResourceDecision to exist in table")
	if struct["EvalResourceDecision"] then M.AssertPolicyEvaluationDecisionType(struct["EvalResourceDecision"]) end
	if struct["MissingContextValues"] then M.AssertContextKeyNamesResultListType(struct["MissingContextValues"]) end
	if struct["MatchedStatements"] then M.AssertStatementListType(struct["MatchedStatements"]) end
	if struct["EvalDecisionDetails"] then M.AssertEvalDecisionDetailsType(struct["EvalDecisionDetails"]) end
	if struct["EvalResourceName"] then M.AssertResourceNameType(struct["EvalResourceName"]) end
	for k,_ in pairs(struct) do
		assert(ResourceSpecificResult_keys[k], "ResourceSpecificResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceSpecificResult
-- &lt;p&gt;Contains the result of the simulation of a single API action call on a single resource.&lt;/p&gt; &lt;p&gt;This data type is used by a member of the &lt;a&gt;EvaluationResult&lt;/a&gt; data type.&lt;/p&gt;
-- @param EvalResourceDecision [PolicyEvaluationDecisionType] &lt;p&gt;The result of the simulation of the simulated API action on the resource specified in &lt;code&gt;EvalResourceName&lt;/code&gt;.&lt;/p&gt;
-- @param MissingContextValues [ContextKeyNamesResultListType] &lt;p&gt;A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when a list of ARNs is included in the &lt;code&gt;ResourceArns&lt;/code&gt; parameter instead of &quot;*&quot;. If you do not specify individual resources, by setting &lt;code&gt;ResourceArns&lt;/code&gt; to &quot;*&quot; or by not including the &lt;code&gt;ResourceArns&lt;/code&gt; parameter, then any missing context values are instead included under the &lt;code&gt;EvaluationResults&lt;/code&gt; section. To discover the context keys used by a set of policies, you can call &lt;a&gt;GetContextKeysForCustomPolicy&lt;/a&gt; or &lt;a&gt;GetContextKeysForPrincipalPolicy&lt;/a&gt;.&lt;/p&gt;
-- @param MatchedStatements [StatementListType] &lt;p&gt;A list of the statements in the input policies that determine the result for this part of the simulation. Remember that even if multiple statements allow the action on the resource, if &lt;i&gt;any&lt;/i&gt; statement denies that action, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.&lt;/p&gt;
-- @param EvalDecisionDetails [EvalDecisionDetailsType] &lt;p&gt;Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access.&lt;/p&gt;
-- @param EvalResourceName [ResourceNameType] &lt;p&gt;The name of the simulated resource, in Amazon Resource Name (ARN) format.&lt;/p&gt;
-- Required parameter: EvalResourceName
-- Required parameter: EvalResourceDecision
function M.ResourceSpecificResult(EvalResourceDecision, MissingContextValues, MatchedStatements, EvalDecisionDetails, EvalResourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceSpecificResult")
	local t = { 
		["EvalResourceDecision"] = EvalResourceDecision,
		["MissingContextValues"] = MissingContextValues,
		["MatchedStatements"] = MatchedStatements,
		["EvalDecisionDetails"] = EvalDecisionDetails,
		["EvalResourceName"] = EvalResourceName,
	}
	M.AssertResourceSpecificResult(t)
	return t
end

local DeleteSigningCertificateRequest_keys = { "UserName" = true, "CertificateId" = true, nil }

function M.AssertDeleteSigningCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSigningCertificateRequest to be of type 'table'")
	assert(struct["CertificateId"], "Expected key CertificateId to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["CertificateId"] then M.AssertcertificateIdType(struct["CertificateId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSigningCertificateRequest_keys[k], "DeleteSigningCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSigningCertificateRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user the signing certificate belongs to.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param CertificateId [certificateIdType] &lt;p&gt;The ID of the signing certificate to delete.&lt;/p&gt; &lt;p&gt;The format of this parameter, as described by its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex&lt;/a&gt; pattern, is a string of characters that can be upper- or lower-cased letters or digits.&lt;/p&gt;
-- Required parameter: CertificateId
function M.DeleteSigningCertificateRequest(UserName, CertificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSigningCertificateRequest")
	local t = { 
		["UserName"] = UserName,
		["CertificateId"] = CertificateId,
	}
	M.AssertDeleteSigningCertificateRequest(t)
	return t
end

local ListInstanceProfilesRequest_keys = { "Marker" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListInstanceProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesRequest to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then M.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListInstanceProfilesRequest_keys[k], "ListInstanceProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param PathPrefix [pathPrefixType] &lt;p&gt; The path prefix for filtering the results. For example, the prefix &lt;code&gt;/application_abc/component_xyz/&lt;/code&gt; gets all instance profiles whose path starts with &lt;code&gt;/application_abc/component_xyz/&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/), listing all instance profiles. This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListInstanceProfilesRequest(Marker, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceProfilesRequest")
	local t = { 
		["Marker"] = Marker,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListInstanceProfilesRequest(t)
	return t
end

local OpenIDConnectProviderListEntry_keys = { "Arn" = true, nil }

function M.AssertOpenIDConnectProviderListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OpenIDConnectProviderListEntry to be of type 'table'")
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(OpenIDConnectProviderListEntry_keys[k], "OpenIDConnectProviderListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OpenIDConnectProviderListEntry
-- &lt;p&gt;Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.&lt;/p&gt;
function M.OpenIDConnectProviderListEntry(Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OpenIDConnectProviderListEntry")
	local t = { 
		["Arn"] = Arn,
	}
	M.AssertOpenIDConnectProviderListEntry(t)
	return t
end

local ListAccessKeysRequest_keys = { "UserName" = true, "Marker" = true, "MaxItems" = true, nil }

function M.AssertListAccessKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccessKeysRequest to be of type 'table'")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListAccessKeysRequest_keys[k], "ListAccessKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccessKeysRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListAccessKeysRequest(UserName, Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccessKeysRequest")
	local t = { 
		["UserName"] = UserName,
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListAccessKeysRequest(t)
	return t
end

local GetSSHPublicKeyRequest_keys = { "UserName" = true, "SSHPublicKeyId" = true, "Encoding" = true, nil }

function M.AssertGetSSHPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSSHPublicKeyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	assert(struct["Encoding"], "Expected key Encoding to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["SSHPublicKeyId"] then M.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	if struct["Encoding"] then M.AssertencodingType(struct["Encoding"]) end
	for k,_ in pairs(struct) do
		assert(GetSSHPublicKeyRequest_keys[k], "GetSSHPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSSHPublicKeyRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the SSH public key.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param SSHPublicKeyId [publicKeyIdType] &lt;p&gt;The unique identifier for the SSH public key.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- @param Encoding [encodingType] &lt;p&gt;Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use &lt;code&gt;SSH&lt;/code&gt;. To retrieve the public key in PEM format, use &lt;code&gt;PEM&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
-- Required parameter: Encoding
function M.GetSSHPublicKeyRequest(UserName, SSHPublicKeyId, Encoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSSHPublicKeyRequest")
	local t = { 
		["UserName"] = UserName,
		["SSHPublicKeyId"] = SSHPublicKeyId,
		["Encoding"] = Encoding,
	}
	M.AssertGetSSHPublicKeyRequest(t)
	return t
end

local UpdateSAMLProviderRequest_keys = { "SAMLProviderArn" = true, "SAMLMetadataDocument" = true, nil }

function M.AssertUpdateSAMLProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSAMLProviderRequest to be of type 'table'")
	assert(struct["SAMLMetadataDocument"], "Expected key SAMLMetadataDocument to exist in table")
	assert(struct["SAMLProviderArn"], "Expected key SAMLProviderArn to exist in table")
	if struct["SAMLProviderArn"] then M.AssertarnType(struct["SAMLProviderArn"]) end
	if struct["SAMLMetadataDocument"] then M.AssertSAMLMetadataDocumentType(struct["SAMLMetadataDocument"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSAMLProviderRequest_keys[k], "UpdateSAMLProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSAMLProviderRequest
--  
-- @param SAMLProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the SAML provider to update.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param SAMLMetadataDocument [SAMLMetadataDocumentType] &lt;p&gt;An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.&lt;/p&gt;
-- Required parameter: SAMLMetadataDocument
-- Required parameter: SAMLProviderArn
function M.UpdateSAMLProviderRequest(SAMLProviderArn, SAMLMetadataDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSAMLProviderRequest")
	local t = { 
		["SAMLProviderArn"] = SAMLProviderArn,
		["SAMLMetadataDocument"] = SAMLMetadataDocument,
	}
	M.AssertUpdateSAMLProviderRequest(t)
	return t
end

local GetGroupPolicyResponse_keys = { "GroupName" = true, "PolicyDocument" = true, "PolicyName" = true, nil }

function M.AssertGetGroupPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupPolicyResponse to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupPolicyResponse_keys[k], "GetGroupPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupPolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetGroupPolicy&lt;/a&gt; request. &lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The group the policy is associated with.&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The policy document.&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy.&lt;/p&gt;
-- Required parameter: GroupName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.GetGroupPolicyResponse(GroupName, PolicyDocument, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupPolicyResponse")
	local t = { 
		["GroupName"] = GroupName,
		["PolicyDocument"] = PolicyDocument,
		["PolicyName"] = PolicyName,
	}
	M.AssertGetGroupPolicyResponse(t)
	return t
end

local ServerCertificateMetadata_keys = { "ServerCertificateId" = true, "ServerCertificateName" = true, "Expiration" = true, "Path" = true, "Arn" = true, "UploadDate" = true, nil }

function M.AssertServerCertificateMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerCertificateMetadata to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	assert(struct["ServerCertificateId"], "Expected key ServerCertificateId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["ServerCertificateId"] then M.AssertidType(struct["ServerCertificateId"]) end
	if struct["ServerCertificateName"] then M.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	if struct["Expiration"] then M.AssertdateType(struct["Expiration"]) end
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	if struct["UploadDate"] then M.AssertdateType(struct["UploadDate"]) end
	for k,_ in pairs(struct) do
		assert(ServerCertificateMetadata_keys[k], "ServerCertificateMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerCertificateMetadata
-- &lt;p&gt;Contains information about a server certificate without its certificate body, certificate chain, and private key.&lt;/p&gt; &lt;p&gt; This data type is used as a response element in the &lt;a&gt;UploadServerCertificate&lt;/a&gt; and &lt;a&gt;ListServerCertificates&lt;/a&gt; actions. &lt;/p&gt;
-- @param ServerCertificateId [idType] &lt;p&gt; The stable and unique string identifying the server certificate. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param ServerCertificateName [serverCertificateNameType] &lt;p&gt;The name that identifies the server certificate.&lt;/p&gt;
-- @param Expiration [dateType] &lt;p&gt;The date on which the certificate is set to expire.&lt;/p&gt;
-- @param Path [pathType] &lt;p&gt; The path to the server certificate. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt; The Amazon Resource Name (ARN) specifying the server certificate. For more information about ARNs and how to use them in policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param UploadDate [dateType] &lt;p&gt;The date when the server certificate was uploaded.&lt;/p&gt;
-- Required parameter: Path
-- Required parameter: ServerCertificateName
-- Required parameter: ServerCertificateId
-- Required parameter: Arn
function M.ServerCertificateMetadata(ServerCertificateId, ServerCertificateName, Expiration, Path, Arn, UploadDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerCertificateMetadata")
	local t = { 
		["ServerCertificateId"] = ServerCertificateId,
		["ServerCertificateName"] = ServerCertificateName,
		["Expiration"] = Expiration,
		["Path"] = Path,
		["Arn"] = Arn,
		["UploadDate"] = UploadDate,
	}
	M.AssertServerCertificateMetadata(t)
	return t
end

local DeleteServerCertificateRequest_keys = { "ServerCertificateName" = true, nil }

function M.AssertDeleteServerCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerCertificateRequest to be of type 'table'")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	if struct["ServerCertificateName"] then M.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteServerCertificateRequest_keys[k], "DeleteServerCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerCertificateRequest
--  
-- @param ServerCertificateName [serverCertificateNameType] &lt;p&gt;The name of the server certificate you want to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: ServerCertificateName
function M.DeleteServerCertificateRequest(ServerCertificateName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerCertificateRequest")
	local t = { 
		["ServerCertificateName"] = ServerCertificateName,
	}
	M.AssertDeleteServerCertificateRequest(t)
	return t
end

local CreateGroupRequest_keys = { "Path" = true, "GroupName" = true, nil }

function M.AssertCreateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupRequest_keys[k], "CreateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupRequest
--  
-- @param Path [pathType] &lt;p&gt; The path to the group. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/).&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The name of the group to create. Do not include the path in this value.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-. The group name must be unique within the account. Group names are not distinguished by case. For example, you cannot create groups named both &quot;ADMINS&quot; and &quot;admins&quot;.&lt;/p&gt;
-- Required parameter: GroupName
function M.CreateGroupRequest(Path, GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupRequest")
	local t = { 
		["Path"] = Path,
		["GroupName"] = GroupName,
	}
	M.AssertCreateGroupRequest(t)
	return t
end

local PolicyVersion_keys = { "CreateDate" = true, "VersionId" = true, "Document" = true, "IsDefaultVersion" = true, nil }

function M.AssertPolicyVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyVersion to be of type 'table'")
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["VersionId"] then M.AssertpolicyVersionIdType(struct["VersionId"]) end
	if struct["Document"] then M.AssertpolicyDocumentType(struct["Document"]) end
	if struct["IsDefaultVersion"] then M.AssertbooleanType(struct["IsDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(PolicyVersion_keys[k], "PolicyVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyVersion
-- &lt;p&gt;Contains information about a version of a managed policy.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;CreatePolicyVersion&lt;/a&gt;, &lt;a&gt;GetPolicyVersion&lt;/a&gt;, &lt;a&gt;ListPolicyVersions&lt;/a&gt;, and &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; actions. &lt;/p&gt; &lt;p&gt;For more information about managed policies, refer to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the policy version was created.&lt;/p&gt;
-- @param VersionId [policyVersionIdType] &lt;p&gt;The identifier for the policy version.&lt;/p&gt; &lt;p&gt;Policy version identifiers always begin with &lt;code&gt;v&lt;/code&gt; (always lowercase). When a policy is created, the first policy version is &lt;code&gt;v1&lt;/code&gt;. &lt;/p&gt;
-- @param Document [policyDocumentType] &lt;p&gt;The policy document.&lt;/p&gt; &lt;p&gt;The policy document is returned in the response to the &lt;a&gt;GetPolicyVersion&lt;/a&gt; and &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; operations. It is not returned in the response to the &lt;a&gt;CreatePolicyVersion&lt;/a&gt; or &lt;a&gt;ListPolicyVersions&lt;/a&gt; operations. &lt;/p&gt;
-- @param IsDefaultVersion [booleanType] &lt;p&gt;Specifies whether the policy version is set as the policy's default version.&lt;/p&gt;
function M.PolicyVersion(CreateDate, VersionId, Document, IsDefaultVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyVersion")
	local t = { 
		["CreateDate"] = CreateDate,
		["VersionId"] = VersionId,
		["Document"] = Document,
		["IsDefaultVersion"] = IsDefaultVersion,
	}
	M.AssertPolicyVersion(t)
	return t
end

local GetContextKeysForPrincipalPolicyRequest_keys = { "PolicySourceArn" = true, "PolicyInputList" = true, nil }

function M.AssertGetContextKeysForPrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContextKeysForPrincipalPolicyRequest to be of type 'table'")
	assert(struct["PolicySourceArn"], "Expected key PolicySourceArn to exist in table")
	if struct["PolicySourceArn"] then M.AssertarnType(struct["PolicySourceArn"]) end
	if struct["PolicyInputList"] then M.AssertSimulationPolicyListType(struct["PolicyInputList"]) end
	for k,_ in pairs(struct) do
		assert(GetContextKeysForPrincipalPolicyRequest_keys[k], "GetContextKeysForPrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContextKeysForPrincipalPolicyRequest
--  
-- @param PolicySourceArn [arnType] &lt;p&gt;The ARN of a user, group, or role whose policies contain the context keys that you want listed. If you specify a user, the list includes context keys that are found in all policies attached to the user as well as to all groups that the user is a member of. If you pick a group or a role, then it includes only those context keys that are found in policies attached to that entity. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param PolicyInputList [SimulationPolicyListType] &lt;p&gt;An optional list of additional policies for which you want the list of context keys that are referenced.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- Required parameter: PolicySourceArn
function M.GetContextKeysForPrincipalPolicyRequest(PolicySourceArn, PolicyInputList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContextKeysForPrincipalPolicyRequest")
	local t = { 
		["PolicySourceArn"] = PolicySourceArn,
		["PolicyInputList"] = PolicyInputList,
	}
	M.AssertGetContextKeysForPrincipalPolicyRequest(t)
	return t
end

local ListUserPoliciesRequest_keys = { "UserName" = true, "Marker" = true, "MaxItems" = true, nil }

function M.AssertListUserPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoliciesRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListUserPoliciesRequest_keys[k], "ListUserPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoliciesRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user to list policies for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: UserName
function M.ListUserPoliciesRequest(UserName, Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserPoliciesRequest")
	local t = { 
		["UserName"] = UserName,
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListUserPoliciesRequest(t)
	return t
end

local ListServiceSpecificCredentialsRequest_keys = { "UserName" = true, "ServiceName" = true, nil }

function M.AssertListServiceSpecificCredentialsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServiceSpecificCredentialsRequest to be of type 'table'")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["ServiceName"] then M.AssertserviceName(struct["ServiceName"]) end
	for k,_ in pairs(struct) do
		assert(ListServiceSpecificCredentialsRequest_keys[k], "ListServiceSpecificCredentialsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServiceSpecificCredentialsRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the user whose service-specific credentials you want information about. If this value is not specified then the operation assumes the user whose credentials are used to call the operation.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param ServiceName [serviceName] &lt;p&gt;Filters the returned results to only those for the specified AWS service. If not specified, then AWS returns service-specific credentials for all services.&lt;/p&gt;
function M.ListServiceSpecificCredentialsRequest(UserName, ServiceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServiceSpecificCredentialsRequest")
	local t = { 
		["UserName"] = UserName,
		["ServiceName"] = ServiceName,
	}
	M.AssertListServiceSpecificCredentialsRequest(t)
	return t
end

local ListSSHPublicKeysRequest_keys = { "UserName" = true, "Marker" = true, "MaxItems" = true, nil }

function M.AssertListSSHPublicKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSSHPublicKeysRequest to be of type 'table'")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListSSHPublicKeysRequest_keys[k], "ListSSHPublicKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSSHPublicKeysRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user to list SSH public keys for. If none is specified, the UserName field is determined implicitly based on the AWS access key used to sign the request.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListSSHPublicKeysRequest(UserName, Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSSHPublicKeysRequest")
	local t = { 
		["UserName"] = UserName,
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListSSHPublicKeysRequest(t)
	return t
end

local ListSAMLProvidersRequest_keys = { nil }

function M.AssertListSAMLProvidersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSAMLProvidersRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ListSAMLProvidersRequest_keys[k], "ListSAMLProvidersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSAMLProvidersRequest
--  
function M.ListSAMLProvidersRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSAMLProvidersRequest")
	local t = { 
	}
	M.AssertListSAMLProvidersRequest(t)
	return t
end

local UpdateAssumeRolePolicyRequest_keys = { "RoleName" = true, "PolicyDocument" = true, nil }

function M.AssertUpdateAssumeRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssumeRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAssumeRolePolicyRequest_keys[k], "UpdateAssumeRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssumeRolePolicyRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role to update with the new policy.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The policy that grants an entity permission to assume the role.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: PolicyDocument
function M.UpdateAssumeRolePolicyRequest(RoleName, PolicyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAssumeRolePolicyRequest")
	local t = { 
		["RoleName"] = RoleName,
		["PolicyDocument"] = PolicyDocument,
	}
	M.AssertUpdateAssumeRolePolicyRequest(t)
	return t
end

local RemoveUserFromGroupRequest_keys = { "UserName" = true, "GroupName" = true, nil }

function M.AssertRemoveUserFromGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveUserFromGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(RemoveUserFromGroupRequest_keys[k], "RemoveUserFromGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveUserFromGroupRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user to remove.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The name of the group to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: GroupName
-- Required parameter: UserName
function M.RemoveUserFromGroupRequest(UserName, GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveUserFromGroupRequest")
	local t = { 
		["UserName"] = UserName,
		["GroupName"] = GroupName,
	}
	M.AssertRemoveUserFromGroupRequest(t)
	return t
end

local SigningCertificate_keys = { "UserName" = true, "Status" = true, "CertificateBody" = true, "CertificateId" = true, "UploadDate" = true, nil }

function M.AssertSigningCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningCertificate to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["CertificateId"], "Expected key CertificateId to exist in table")
	assert(struct["CertificateBody"], "Expected key CertificateBody to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["CertificateBody"] then M.AssertcertificateBodyType(struct["CertificateBody"]) end
	if struct["CertificateId"] then M.AssertcertificateIdType(struct["CertificateId"]) end
	if struct["UploadDate"] then M.AssertdateType(struct["UploadDate"]) end
	for k,_ in pairs(struct) do
		assert(SigningCertificate_keys[k], "SigningCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningCertificate
-- &lt;p&gt;Contains information about an X.509 signing certificate.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;UploadSigningCertificate&lt;/a&gt; and &lt;a&gt;ListSigningCertificates&lt;/a&gt; actions. &lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The name of the user the signing certificate is associated with.&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status of the signing certificate. &lt;code&gt;Active&lt;/code&gt; means the key is valid for API calls, while &lt;code&gt;Inactive&lt;/code&gt; means it is not.&lt;/p&gt;
-- @param CertificateBody [certificateBodyType] &lt;p&gt;The contents of the signing certificate.&lt;/p&gt;
-- @param CertificateId [certificateIdType] &lt;p&gt;The ID for the signing certificate.&lt;/p&gt;
-- @param UploadDate [dateType] &lt;p&gt;The date when the signing certificate was uploaded.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: CertificateId
-- Required parameter: CertificateBody
-- Required parameter: Status
function M.SigningCertificate(UserName, Status, CertificateBody, CertificateId, UploadDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SigningCertificate")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["CertificateBody"] = CertificateBody,
		["CertificateId"] = CertificateId,
		["UploadDate"] = UploadDate,
	}
	M.AssertSigningCertificate(t)
	return t
end

local ManagedPolicyDetail_keys = { "PolicyName" = true, "Description" = true, "CreateDate" = true, "AttachmentCount" = true, "IsAttachable" = true, "PolicyId" = true, "DefaultVersionId" = true, "PolicyVersionList" = true, "Path" = true, "Arn" = true, "UpdateDate" = true, nil }

function M.AssertManagedPolicyDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ManagedPolicyDetail to be of type 'table'")
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["Description"] then M.AssertpolicyDescriptionType(struct["Description"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["AttachmentCount"] then M.AssertattachmentCountType(struct["AttachmentCount"]) end
	if struct["IsAttachable"] then M.AssertbooleanType(struct["IsAttachable"]) end
	if struct["PolicyId"] then M.AssertidType(struct["PolicyId"]) end
	if struct["DefaultVersionId"] then M.AssertpolicyVersionIdType(struct["DefaultVersionId"]) end
	if struct["PolicyVersionList"] then M.AssertpolicyDocumentVersionListType(struct["PolicyVersionList"]) end
	if struct["Path"] then M.AssertpolicyPathType(struct["Path"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	if struct["UpdateDate"] then M.AssertdateType(struct["UpdateDate"]) end
	for k,_ in pairs(struct) do
		assert(ManagedPolicyDetail_keys[k], "ManagedPolicyDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ManagedPolicyDetail
-- &lt;p&gt;Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt; &lt;p&gt;For more information about managed policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The friendly name (not ARN) identifying the policy.&lt;/p&gt;
-- @param Description [policyDescriptionType] &lt;p&gt;A friendly description of the policy.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the policy was created.&lt;/p&gt;
-- @param AttachmentCount [attachmentCountType] &lt;p&gt;The number of principal entities (users, groups, and roles) that the policy is attached to.&lt;/p&gt;
-- @param IsAttachable [booleanType] &lt;p&gt;Specifies whether the policy can be attached to an IAM user, group, or role.&lt;/p&gt;
-- @param PolicyId [idType] &lt;p&gt;The stable and unique string identifying the policy.&lt;/p&gt; &lt;p&gt;For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param DefaultVersionId [policyVersionIdType] &lt;p&gt;The identifier for the version of the policy that is set as the default (operative) version.&lt;/p&gt; &lt;p&gt;For more information about policy versions, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html&quot;&gt;Versioning for Managed Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param PolicyVersionList [policyDocumentVersionListType] &lt;p&gt;A list containing information about the versions of the policy.&lt;/p&gt;
-- @param Path [policyPathType] &lt;p&gt;The path to the policy.&lt;/p&gt; &lt;p&gt;For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt; &lt;p&gt;For more information about managed policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param UpdateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the policy was last updated.&lt;/p&gt; &lt;p&gt;When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.&lt;/p&gt;
function M.ManagedPolicyDetail(PolicyName, Description, CreateDate, AttachmentCount, IsAttachable, PolicyId, DefaultVersionId, PolicyVersionList, Path, Arn, UpdateDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ManagedPolicyDetail")
	local t = { 
		["PolicyName"] = PolicyName,
		["Description"] = Description,
		["CreateDate"] = CreateDate,
		["AttachmentCount"] = AttachmentCount,
		["IsAttachable"] = IsAttachable,
		["PolicyId"] = PolicyId,
		["DefaultVersionId"] = DefaultVersionId,
		["PolicyVersionList"] = PolicyVersionList,
		["Path"] = Path,
		["Arn"] = Arn,
		["UpdateDate"] = UpdateDate,
	}
	M.AssertManagedPolicyDetail(t)
	return t
end

local ListAttachedRolePoliciesResponse_keys = { "Marker" = true, "AttachedPolicies" = true, "IsTruncated" = true, nil }

function M.AssertListAttachedRolePoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedRolePoliciesResponse to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["AttachedPolicies"] then M.AssertattachedPoliciesListType(struct["AttachedPolicies"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListAttachedRolePoliciesResponse_keys[k], "ListAttachedRolePoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedRolePoliciesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListAttachedRolePolicies&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param AttachedPolicies [attachedPoliciesListType] &lt;p&gt;A list of the attached policies.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
function M.ListAttachedRolePoliciesResponse(Marker, AttachedPolicies, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedRolePoliciesResponse")
	local t = { 
		["Marker"] = Marker,
		["AttachedPolicies"] = AttachedPolicies,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListAttachedRolePoliciesResponse(t)
	return t
end

local GetAccessKeyLastUsedRequest_keys = { "AccessKeyId" = true, nil }

function M.AssertGetAccessKeyLastUsedRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccessKeyLastUsedRequest to be of type 'table'")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	if struct["AccessKeyId"] then M.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(GetAccessKeyLastUsedRequest_keys[k], "GetAccessKeyLastUsedRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccessKeyLastUsedRequest
--  
-- @param AccessKeyId [accessKeyIdType] &lt;p&gt;The identifier of an access key.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: AccessKeyId
function M.GetAccessKeyLastUsedRequest(AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccessKeyLastUsedRequest")
	local t = { 
		["AccessKeyId"] = AccessKeyId,
	}
	M.AssertGetAccessKeyLastUsedRequest(t)
	return t
end

local DeleteUserPolicyRequest_keys = { "UserName" = true, "PolicyName" = true, nil }

function M.AssertDeleteUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserPolicyRequest_keys[k], "DeleteUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPolicyRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name (friendly name, not ARN) identifying the user that the policy is embedded in.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name identifying the policy document to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: PolicyName
function M.DeleteUserPolicyRequest(UserName, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserPolicyRequest")
	local t = { 
		["UserName"] = UserName,
		["PolicyName"] = PolicyName,
	}
	M.AssertDeleteUserPolicyRequest(t)
	return t
end

local GetServerCertificateResponse_keys = { "ServerCertificate" = true, nil }

function M.AssertGetServerCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServerCertificateResponse to be of type 'table'")
	assert(struct["ServerCertificate"], "Expected key ServerCertificate to exist in table")
	if struct["ServerCertificate"] then M.AssertServerCertificate(struct["ServerCertificate"]) end
	for k,_ in pairs(struct) do
		assert(GetServerCertificateResponse_keys[k], "GetServerCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServerCertificateResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetServerCertificate&lt;/a&gt; request. &lt;/p&gt;
-- @param ServerCertificate [ServerCertificate] &lt;p&gt;A structure containing details about the server certificate.&lt;/p&gt;
-- Required parameter: ServerCertificate
function M.GetServerCertificateResponse(ServerCertificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServerCertificateResponse")
	local t = { 
		["ServerCertificate"] = ServerCertificate,
	}
	M.AssertGetServerCertificateResponse(t)
	return t
end

local GetOpenIDConnectProviderRequest_keys = { "OpenIDConnectProviderArn" = true, nil }

function M.AssertGetOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	if struct["OpenIDConnectProviderArn"] then M.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(GetOpenIDConnectProviderRequest_keys[k], "GetOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIDConnectProviderRequest
--  
-- @param OpenIDConnectProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get information for. You can get a list of OIDC provider resource ARNs by using the &lt;a&gt;ListOpenIDConnectProviders&lt;/a&gt; action.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: OpenIDConnectProviderArn
function M.GetOpenIDConnectProviderRequest(OpenIDConnectProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOpenIDConnectProviderRequest")
	local t = { 
		["OpenIDConnectProviderArn"] = OpenIDConnectProviderArn,
	}
	M.AssertGetOpenIDConnectProviderRequest(t)
	return t
end

local ListOpenIDConnectProvidersResponse_keys = { "OpenIDConnectProviderList" = true, nil }

function M.AssertListOpenIDConnectProvidersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOpenIDConnectProvidersResponse to be of type 'table'")
	if struct["OpenIDConnectProviderList"] then M.AssertOpenIDConnectProviderListType(struct["OpenIDConnectProviderList"]) end
	for k,_ in pairs(struct) do
		assert(ListOpenIDConnectProvidersResponse_keys[k], "ListOpenIDConnectProvidersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOpenIDConnectProvidersResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListOpenIDConnectProviders&lt;/a&gt; request. &lt;/p&gt;
-- @param OpenIDConnectProviderList [OpenIDConnectProviderListType] &lt;p&gt;The list of IAM OIDC provider resource objects defined in the AWS account.&lt;/p&gt;
function M.ListOpenIDConnectProvidersResponse(OpenIDConnectProviderList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOpenIDConnectProvidersResponse")
	local t = { 
		["OpenIDConnectProviderList"] = OpenIDConnectProviderList,
	}
	M.AssertListOpenIDConnectProvidersResponse(t)
	return t
end

local GetUserRequest_keys = { "UserName" = true, nil }

function M.AssertGetUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserRequest to be of type 'table'")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(GetUserRequest_keys[k], "GetUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user to get information about.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to the user making the request. This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
function M.GetUserRequest(UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserRequest")
	local t = { 
		["UserName"] = UserName,
	}
	M.AssertGetUserRequest(t)
	return t
end

local CreateServiceSpecificCredentialResponse_keys = { "ServiceSpecificCredential" = true, nil }

function M.AssertCreateServiceSpecificCredentialResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceSpecificCredentialResponse to be of type 'table'")
	if struct["ServiceSpecificCredential"] then M.AssertServiceSpecificCredential(struct["ServiceSpecificCredential"]) end
	for k,_ in pairs(struct) do
		assert(CreateServiceSpecificCredentialResponse_keys[k], "CreateServiceSpecificCredentialResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceSpecificCredentialResponse
--  
-- @param ServiceSpecificCredential [ServiceSpecificCredential] &lt;p&gt;A structure that contains information about the newly created service-specific credential.&lt;/p&gt; &lt;important&gt; &lt;p&gt;This is the only time that the password for this credential set is available. It cannot be recovered later. Instead, you will have to reset the password with &lt;a&gt;ResetServiceSpecificCredential&lt;/a&gt;.&lt;/p&gt; &lt;/important&gt;
function M.CreateServiceSpecificCredentialResponse(ServiceSpecificCredential, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceSpecificCredentialResponse")
	local t = { 
		["ServiceSpecificCredential"] = ServiceSpecificCredential,
	}
	M.AssertCreateServiceSpecificCredentialResponse(t)
	return t
end

local AttachedPolicy_keys = { "PolicyName" = true, "PolicyArn" = true, nil }

function M.AssertAttachedPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachedPolicy to be of type 'table'")
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(AttachedPolicy_keys[k], "AttachedPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachedPolicy
-- &lt;p&gt;Contains information about an attached policy.&lt;/p&gt; &lt;p&gt;An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the &lt;a&gt;ListAttachedGroupPolicies&lt;/a&gt;, &lt;a&gt;ListAttachedRolePolicies&lt;/a&gt;, &lt;a&gt;ListAttachedUserPolicies&lt;/a&gt;, and &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; actions. &lt;/p&gt; &lt;p&gt;For more information about managed policies, refer to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The friendly name of the attached policy.&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;Contains information about an attached policy.&lt;/p&gt; &lt;p&gt;An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the &lt;a&gt;ListAttachedGroupPolicies&lt;/a&gt;, &lt;a&gt;ListAttachedRolePolicies&lt;/a&gt;, &lt;a&gt;ListAttachedUserPolicies&lt;/a&gt;, and &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; actions. &lt;/p&gt; &lt;p&gt;For more information about managed policies, refer to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
function M.AttachedPolicy(PolicyName, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachedPolicy")
	local t = { 
		["PolicyName"] = PolicyName,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertAttachedPolicy(t)
	return t
end

local UpdateAccessKeyRequest_keys = { "UserName" = true, "Status" = true, "AccessKeyId" = true, nil }

function M.AssertUpdateAccessKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccessKeyRequest to be of type 'table'")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["AccessKeyId"] then M.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAccessKeyRequest_keys[k], "UpdateAccessKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccessKeyRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user whose key you want to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt; The status you want to assign to the secret access key. &lt;code&gt;Active&lt;/code&gt; means the key can be used for API calls to AWS, while &lt;code&gt;Inactive&lt;/code&gt; means the key cannot be used.&lt;/p&gt;
-- @param AccessKeyId [accessKeyIdType] &lt;p&gt;The access key ID of the secret access key you want to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: AccessKeyId
-- Required parameter: Status
function M.UpdateAccessKeyRequest(UserName, Status, AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAccessKeyRequest")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["AccessKeyId"] = AccessKeyId,
	}
	M.AssertUpdateAccessKeyRequest(t)
	return t
end

local UpdateUserRequest_keys = { "UserName" = true, "NewPath" = true, "NewUserName" = true, nil }

function M.AssertUpdateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["NewPath"] then M.AssertpathType(struct["NewPath"]) end
	if struct["NewUserName"] then M.AssertuserNameType(struct["NewUserName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateUserRequest_keys[k], "UpdateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;Name of the user to update. If you're changing the name of the user, this is the original user name.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param NewPath [pathType] &lt;p&gt;New path for the IAM user. Include this parameter only if you're changing the user's path.&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param NewUserName [userNameType] &lt;p&gt;New name for the user. Include this parameter only if you're changing the user's name.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: UserName
function M.UpdateUserRequest(UserName, NewPath, NewUserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserRequest")
	local t = { 
		["UserName"] = UserName,
		["NewPath"] = NewPath,
		["NewUserName"] = NewUserName,
	}
	M.AssertUpdateUserRequest(t)
	return t
end

local ListAttachedGroupPoliciesRequest_keys = { "Marker" = true, "GroupName" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListAttachedGroupPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedGroupPoliciesRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["PathPrefix"] then M.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListAttachedGroupPoliciesRequest_keys[k], "ListAttachedGroupPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedGroupPoliciesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The name (friendly name, not ARN) of the group to list attached policies for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PathPrefix [policyPathType] &lt;p&gt;The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: GroupName
function M.ListAttachedGroupPoliciesRequest(Marker, GroupName, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedGroupPoliciesRequest")
	local t = { 
		["Marker"] = Marker,
		["GroupName"] = GroupName,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListAttachedGroupPoliciesRequest(t)
	return t
end

local SSHPublicKey_keys = { "UserName" = true, "Status" = true, "SSHPublicKeyBody" = true, "UploadDate" = true, "Fingerprint" = true, "SSHPublicKeyId" = true, nil }

function M.AssertSSHPublicKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSHPublicKey to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	assert(struct["Fingerprint"], "Expected key Fingerprint to exist in table")
	assert(struct["SSHPublicKeyBody"], "Expected key SSHPublicKeyBody to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["SSHPublicKeyBody"] then M.AssertpublicKeyMaterialType(struct["SSHPublicKeyBody"]) end
	if struct["UploadDate"] then M.AssertdateType(struct["UploadDate"]) end
	if struct["Fingerprint"] then M.AssertpublicKeyFingerprintType(struct["Fingerprint"]) end
	if struct["SSHPublicKeyId"] then M.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	for k,_ in pairs(struct) do
		assert(SSHPublicKey_keys[k], "SSHPublicKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSHPublicKey
-- &lt;p&gt;Contains information about an SSH public key.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetSSHPublicKey&lt;/a&gt; and &lt;a&gt;UploadSSHPublicKey&lt;/a&gt; actions. &lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the SSH public key.&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status of the SSH public key. &lt;code&gt;Active&lt;/code&gt; means the key can be used for authentication with an AWS CodeCommit repository. &lt;code&gt;Inactive&lt;/code&gt; means the key cannot be used.&lt;/p&gt;
-- @param SSHPublicKeyBody [publicKeyMaterialType] &lt;p&gt;The SSH public key.&lt;/p&gt;
-- @param UploadDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the SSH public key was uploaded.&lt;/p&gt;
-- @param Fingerprint [publicKeyFingerprintType] &lt;p&gt;The MD5 message digest of the SSH public key.&lt;/p&gt;
-- @param SSHPublicKeyId [publicKeyIdType] &lt;p&gt;The unique identifier for the SSH public key.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
-- Required parameter: Fingerprint
-- Required parameter: SSHPublicKeyBody
-- Required parameter: Status
function M.SSHPublicKey(UserName, Status, SSHPublicKeyBody, UploadDate, Fingerprint, SSHPublicKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SSHPublicKey")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["SSHPublicKeyBody"] = SSHPublicKeyBody,
		["UploadDate"] = UploadDate,
		["Fingerprint"] = Fingerprint,
		["SSHPublicKeyId"] = SSHPublicKeyId,
	}
	M.AssertSSHPublicKey(t)
	return t
end

local ListPoliciesResponse_keys = { "Marker" = true, "IsTruncated" = true, "Policies" = true, nil }

function M.AssertListPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesResponse to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Policies"] then M.AssertpolicyListType(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(ListPoliciesResponse_keys[k], "ListPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListPolicies&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- @param Policies [policyListType] &lt;p&gt;A list of policies.&lt;/p&gt;
function M.ListPoliciesResponse(Marker, IsTruncated, Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesResponse")
	local t = { 
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Policies"] = Policies,
	}
	M.AssertListPoliciesResponse(t)
	return t
end

local AttachUserPolicyRequest_keys = { "UserName" = true, "PolicyArn" = true, nil }

function M.AssertAttachUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(AttachUserPolicyRequest_keys[k], "AttachUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachUserPolicyRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name (friendly name, not ARN) of the IAM user to attach the policy to.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy you want to attach.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: PolicyArn
function M.AttachUserPolicyRequest(UserName, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachUserPolicyRequest")
	local t = { 
		["UserName"] = UserName,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertAttachUserPolicyRequest(t)
	return t
end

local ResetServiceSpecificCredentialResponse_keys = { "ServiceSpecificCredential" = true, nil }

function M.AssertResetServiceSpecificCredentialResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetServiceSpecificCredentialResponse to be of type 'table'")
	if struct["ServiceSpecificCredential"] then M.AssertServiceSpecificCredential(struct["ServiceSpecificCredential"]) end
	for k,_ in pairs(struct) do
		assert(ResetServiceSpecificCredentialResponse_keys[k], "ResetServiceSpecificCredentialResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetServiceSpecificCredentialResponse
--  
-- @param ServiceSpecificCredential [ServiceSpecificCredential] &lt;p&gt;A structure with details about the updated service-specific credential, including the new password.&lt;/p&gt; &lt;important&gt; &lt;p&gt;This is the &lt;b&gt;only&lt;/b&gt; time that you can access the password. You cannot recover the password later, but you can reset it again.&lt;/p&gt; &lt;/important&gt;
function M.ResetServiceSpecificCredentialResponse(ServiceSpecificCredential, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetServiceSpecificCredentialResponse")
	local t = { 
		["ServiceSpecificCredential"] = ServiceSpecificCredential,
	}
	M.AssertResetServiceSpecificCredentialResponse(t)
	return t
end

local ListRolePoliciesResponse_keys = { "Marker" = true, "PolicyNames" = true, "IsTruncated" = true, nil }

function M.AssertListRolePoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRolePoliciesResponse to be of type 'table'")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PolicyNames"] then M.AssertpolicyNameListType(struct["PolicyNames"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListRolePoliciesResponse_keys[k], "ListRolePoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRolePoliciesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListRolePolicies&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param PolicyNames [policyNameListType] &lt;p&gt;A list of policy names.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: PolicyNames
function M.ListRolePoliciesResponse(Marker, PolicyNames, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRolePoliciesResponse")
	local t = { 
		["Marker"] = Marker,
		["PolicyNames"] = PolicyNames,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListRolePoliciesResponse(t)
	return t
end

local CreateServiceSpecificCredentialRequest_keys = { "UserName" = true, "ServiceName" = true, nil }

function M.AssertCreateServiceSpecificCredentialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceSpecificCredentialRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["ServiceName"], "Expected key ServiceName to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["ServiceName"] then M.AssertserviceName(struct["ServiceName"]) end
	for k,_ in pairs(struct) do
		assert(CreateServiceSpecificCredentialRequest_keys[k], "CreateServiceSpecificCredentialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceSpecificCredentialRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user that is to be associated with the credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param ServiceName [serviceName] &lt;p&gt;The name of the AWS service that is to be associated with the credentials. The service you specify here is the only service that can be accessed using these credentials.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: ServiceName
function M.CreateServiceSpecificCredentialRequest(UserName, ServiceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceSpecificCredentialRequest")
	local t = { 
		["UserName"] = UserName,
		["ServiceName"] = ServiceName,
	}
	M.AssertCreateServiceSpecificCredentialRequest(t)
	return t
end

local GetContextKeysForPolicyResponse_keys = { "ContextKeyNames" = true, nil }

function M.AssertGetContextKeysForPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContextKeysForPolicyResponse to be of type 'table'")
	if struct["ContextKeyNames"] then M.AssertContextKeyNamesResultListType(struct["ContextKeyNames"]) end
	for k,_ in pairs(struct) do
		assert(GetContextKeysForPolicyResponse_keys[k], "GetContextKeysForPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContextKeysForPolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetContextKeysForPrincipalPolicy&lt;/a&gt; or &lt;a&gt;GetContextKeysForCustomPolicy&lt;/a&gt; request. &lt;/p&gt;
-- @param ContextKeyNames [ContextKeyNamesResultListType] &lt;p&gt;The list of context keys that are referenced in the input policies.&lt;/p&gt;
function M.GetContextKeysForPolicyResponse(ContextKeyNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContextKeysForPolicyResponse")
	local t = { 
		["ContextKeyNames"] = ContextKeyNames,
	}
	M.AssertGetContextKeysForPolicyResponse(t)
	return t
end

local ListGroupPoliciesRequest_keys = { "Marker" = true, "GroupName" = true, "MaxItems" = true, nil }

function M.AssertListGroupPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupPoliciesRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupPoliciesRequest_keys[k], "ListGroupPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupPoliciesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The name of the group to list policies for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: GroupName
function M.ListGroupPoliciesRequest(Marker, GroupName, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupPoliciesRequest")
	local t = { 
		["Marker"] = Marker,
		["GroupName"] = GroupName,
		["MaxItems"] = MaxItems,
	}
	M.AssertListGroupPoliciesRequest(t)
	return t
end

local ListUsersRequest_keys = { "Marker" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersRequest to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then M.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListUsersRequest_keys[k], "ListUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param PathPrefix [pathPrefixType] &lt;p&gt; The path prefix for filtering the results. For example: &lt;code&gt;/division_abc/subdivision_xyz/&lt;/code&gt;, which would get all user names whose path starts with &lt;code&gt;/division_abc/subdivision_xyz/&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/), listing all user names. This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListUsersRequest(Marker, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUsersRequest")
	local t = { 
		["Marker"] = Marker,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListUsersRequest(t)
	return t
end

local UpdateRoleDescriptionRequest_keys = { "RoleName" = true, "Description" = true, nil }

function M.AssertUpdateRoleDescriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRoleDescriptionRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["Description"] then M.AssertroleDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRoleDescriptionRequest_keys[k], "UpdateRoleDescriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRoleDescriptionRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role that you want to modify.&lt;/p&gt;
-- @param Description [roleDescriptionType] &lt;p&gt;The new description that you want to apply to the specified role.&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: Description
function M.UpdateRoleDescriptionRequest(RoleName, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRoleDescriptionRequest")
	local t = { 
		["RoleName"] = RoleName,
		["Description"] = Description,
	}
	M.AssertUpdateRoleDescriptionRequest(t)
	return t
end

local UploadSSHPublicKeyRequest_keys = { "UserName" = true, "SSHPublicKeyBody" = true, nil }

function M.AssertUploadSSHPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadSSHPublicKeyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyBody"], "Expected key SSHPublicKeyBody to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["SSHPublicKeyBody"] then M.AssertpublicKeyMaterialType(struct["SSHPublicKeyBody"]) end
	for k,_ in pairs(struct) do
		assert(UploadSSHPublicKeyRequest_keys[k], "UploadSSHPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadSSHPublicKeyRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user to associate the SSH public key with.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param SSHPublicKeyBody [publicKeyMaterialType] &lt;p&gt;The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyBody
function M.UploadSSHPublicKeyRequest(UserName, SSHPublicKeyBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadSSHPublicKeyRequest")
	local t = { 
		["UserName"] = UserName,
		["SSHPublicKeyBody"] = SSHPublicKeyBody,
	}
	M.AssertUploadSSHPublicKeyRequest(t)
	return t
end

local RoleDetail_keys = { "AssumeRolePolicyDocument" = true, "RoleId" = true, "CreateDate" = true, "InstanceProfileList" = true, "RoleName" = true, "Path" = true, "AttachedManagedPolicies" = true, "RolePolicyList" = true, "Arn" = true, nil }

function M.AssertRoleDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoleDetail to be of type 'table'")
	if struct["AssumeRolePolicyDocument"] then M.AssertpolicyDocumentType(struct["AssumeRolePolicyDocument"]) end
	if struct["RoleId"] then M.AssertidType(struct["RoleId"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["InstanceProfileList"] then M.AssertinstanceProfileListType(struct["InstanceProfileList"]) end
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["AttachedManagedPolicies"] then M.AssertattachedPoliciesListType(struct["AttachedManagedPolicies"]) end
	if struct["RolePolicyList"] then M.AssertpolicyDetailListType(struct["RolePolicyList"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(RoleDetail_keys[k], "RoleDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoleDetail
-- &lt;p&gt;Contains information about an IAM role, including all of the role's policies.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt;
-- @param AssumeRolePolicyDocument [policyDocumentType] &lt;p&gt;The trust policy that grants permission to assume the role.&lt;/p&gt;
-- @param RoleId [idType] &lt;p&gt;The stable and unique string identifying the role. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the role was created.&lt;/p&gt;
-- @param InstanceProfileList [instanceProfileListType] &lt;p&gt;A list of instance profiles that contain this role.&lt;/p&gt;
-- @param RoleName [roleNameType] &lt;p&gt;The friendly name that identifies the role.&lt;/p&gt;
-- @param Path [pathType] &lt;p&gt;The path to the role. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param AttachedManagedPolicies [attachedPoliciesListType] &lt;p&gt;A list of managed policies attached to the role. These policies are the role's access (permissions) policies.&lt;/p&gt;
-- @param RolePolicyList [policyDetailListType] &lt;p&gt;A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;Contains information about an IAM role, including all of the role's policies.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt;
function M.RoleDetail(AssumeRolePolicyDocument, RoleId, CreateDate, InstanceProfileList, RoleName, Path, AttachedManagedPolicies, RolePolicyList, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RoleDetail")
	local t = { 
		["AssumeRolePolicyDocument"] = AssumeRolePolicyDocument,
		["RoleId"] = RoleId,
		["CreateDate"] = CreateDate,
		["InstanceProfileList"] = InstanceProfileList,
		["RoleName"] = RoleName,
		["Path"] = Path,
		["AttachedManagedPolicies"] = AttachedManagedPolicies,
		["RolePolicyList"] = RolePolicyList,
		["Arn"] = Arn,
	}
	M.AssertRoleDetail(t)
	return t
end

local PolicyDetail_keys = { "PolicyName" = true, "PolicyDocument" = true, nil }

function M.AssertPolicyDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyDetail to be of type 'table'")
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	for k,_ in pairs(struct) do
		assert(PolicyDetail_keys[k], "PolicyDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyDetail
-- &lt;p&gt;Contains information about an IAM policy, including the policy document.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy.&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The policy document.&lt;/p&gt;
function M.PolicyDetail(PolicyName, PolicyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyDetail")
	local t = { 
		["PolicyName"] = PolicyName,
		["PolicyDocument"] = PolicyDocument,
	}
	M.AssertPolicyDetail(t)
	return t
end

local DeletePolicyVersionRequest_keys = { "VersionId" = true, "PolicyArn" = true, nil }

function M.AssertDeletePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyVersionRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["VersionId"] then M.AssertpolicyVersionIdType(struct["VersionId"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(DeletePolicyVersionRequest_keys[k], "DeletePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyVersionRequest
--  
-- @param VersionId [policyVersionIdType] &lt;p&gt;The policy version to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.&lt;/p&gt; &lt;p&gt;For more information about managed policy versions, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html&quot;&gt;Versioning for Managed Policies&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a version.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PolicyArn
-- Required parameter: VersionId
function M.DeletePolicyVersionRequest(VersionId, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyVersionRequest")
	local t = { 
		["VersionId"] = VersionId,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertDeletePolicyVersionRequest(t)
	return t
end

local GetLoginProfileRequest_keys = { "UserName" = true, nil }

function M.AssertGetLoginProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoginProfileRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(GetLoginProfileRequest_keys[k], "GetLoginProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoginProfileRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the user whose login profile you want to retrieve.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: UserName
function M.GetLoginProfileRequest(UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoginProfileRequest")
	local t = { 
		["UserName"] = UserName,
	}
	M.AssertGetLoginProfileRequest(t)
	return t
end

local GetPolicyRequest_keys = { "PolicyArn" = true, nil }

function M.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyRequest_keys[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
--  
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the managed policy that you want information about.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PolicyArn
function M.GetPolicyRequest(PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyRequest")
	local t = { 
		["PolicyArn"] = PolicyArn,
	}
	M.AssertGetPolicyRequest(t)
	return t
end

local ListSigningCertificatesRequest_keys = { "UserName" = true, "Marker" = true, "MaxItems" = true, nil }

function M.AssertListSigningCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningCertificatesRequest to be of type 'table'")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListSigningCertificatesRequest_keys[k], "ListSigningCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningCertificatesRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the IAM user whose signing certificates you want to examine.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListSigningCertificatesRequest(UserName, Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSigningCertificatesRequest")
	local t = { 
		["UserName"] = UserName,
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListSigningCertificatesRequest(t)
	return t
end

local UploadServerCertificateResponse_keys = { "ServerCertificateMetadata" = true, nil }

function M.AssertUploadServerCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadServerCertificateResponse to be of type 'table'")
	if struct["ServerCertificateMetadata"] then M.AssertServerCertificateMetadata(struct["ServerCertificateMetadata"]) end
	for k,_ in pairs(struct) do
		assert(UploadServerCertificateResponse_keys[k], "UploadServerCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadServerCertificateResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;UploadServerCertificate&lt;/a&gt; request. &lt;/p&gt;
-- @param ServerCertificateMetadata [ServerCertificateMetadata] &lt;p&gt;The meta information of the uploaded server certificate without its certificate body, certificate chain, and private key.&lt;/p&gt;
function M.UploadServerCertificateResponse(ServerCertificateMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadServerCertificateResponse")
	local t = { 
		["ServerCertificateMetadata"] = ServerCertificateMetadata,
	}
	M.AssertUploadServerCertificateResponse(t)
	return t
end

local DeleteGroupPolicyRequest_keys = { "GroupName" = true, "PolicyName" = true, nil }

function M.AssertDeleteGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGroupPolicyRequest_keys[k], "DeleteGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupPolicyRequest
--  
-- @param GroupName [groupNameType] &lt;p&gt;The name (friendly name, not ARN) identifying the group that the policy is embedded in.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name identifying the policy document to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: GroupName
-- Required parameter: PolicyName
function M.DeleteGroupPolicyRequest(GroupName, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupPolicyRequest")
	local t = { 
		["GroupName"] = GroupName,
		["PolicyName"] = PolicyName,
	}
	M.AssertDeleteGroupPolicyRequest(t)
	return t
end

local CreateRoleRequest_keys = { "Path" = true, "AssumeRolePolicyDocument" = true, "Description" = true, "RoleName" = true, nil }

function M.AssertCreateRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["AssumeRolePolicyDocument"], "Expected key AssumeRolePolicyDocument to exist in table")
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["AssumeRolePolicyDocument"] then M.AssertpolicyDocumentType(struct["AssumeRolePolicyDocument"]) end
	if struct["Description"] then M.AssertroleDescriptionType(struct["Description"]) end
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	for k,_ in pairs(struct) do
		assert(CreateRoleRequest_keys[k], "CreateRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRoleRequest
--  
-- @param Path [pathType] &lt;p&gt; The path to the role. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/).&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param AssumeRolePolicyDocument [policyDocumentType] &lt;p&gt;The trust relationship policy document that grants an entity permission to assume the role.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param Description [roleDescriptionType] &lt;p&gt;A customer-provided description of the role.&lt;/p&gt;
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role to create.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt; &lt;p&gt;Role names are not distinguished by case. For example, you cannot create roles named both &quot;PRODROLE&quot; and &quot;prodrole&quot;.&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: AssumeRolePolicyDocument
function M.CreateRoleRequest(Path, AssumeRolePolicyDocument, Description, RoleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRoleRequest")
	local t = { 
		["Path"] = Path,
		["AssumeRolePolicyDocument"] = AssumeRolePolicyDocument,
		["Description"] = Description,
		["RoleName"] = RoleName,
	}
	M.AssertCreateRoleRequest(t)
	return t
end

local SetDefaultPolicyVersionRequest_keys = { "VersionId" = true, "PolicyArn" = true, nil }

function M.AssertSetDefaultPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDefaultPolicyVersionRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["VersionId"] then M.AssertpolicyVersionIdType(struct["VersionId"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(SetDefaultPolicyVersionRequest_keys[k], "SetDefaultPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDefaultPolicyVersionRequest
--  
-- @param VersionId [policyVersionIdType] &lt;p&gt;The version of the policy to set as the default (operative) version.&lt;/p&gt; &lt;p&gt;For more information about managed policy versions, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html&quot;&gt;Versioning for Managed Policies&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy whose default version you want to set.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PolicyArn
-- Required parameter: VersionId
function M.SetDefaultPolicyVersionRequest(VersionId, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDefaultPolicyVersionRequest")
	local t = { 
		["VersionId"] = VersionId,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertSetDefaultPolicyVersionRequest(t)
	return t
end

local CreateLoginProfileResponse_keys = { "LoginProfile" = true, nil }

function M.AssertCreateLoginProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoginProfileResponse to be of type 'table'")
	assert(struct["LoginProfile"], "Expected key LoginProfile to exist in table")
	if struct["LoginProfile"] then M.AssertLoginProfile(struct["LoginProfile"]) end
	for k,_ in pairs(struct) do
		assert(CreateLoginProfileResponse_keys[k], "CreateLoginProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoginProfileResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateLoginProfile&lt;/a&gt; request. &lt;/p&gt;
-- @param LoginProfile [LoginProfile] &lt;p&gt;A structure containing the user name and password create date.&lt;/p&gt;
-- Required parameter: LoginProfile
function M.CreateLoginProfileResponse(LoginProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoginProfileResponse")
	local t = { 
		["LoginProfile"] = LoginProfile,
	}
	M.AssertCreateLoginProfileResponse(t)
	return t
end

local DeleteOpenIDConnectProviderRequest_keys = { "OpenIDConnectProviderArn" = true, nil }

function M.AssertDeleteOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	if struct["OpenIDConnectProviderArn"] then M.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteOpenIDConnectProviderRequest_keys[k], "DeleteOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOpenIDConnectProviderRequest
--  
-- @param OpenIDConnectProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to delete. You can get a list of OpenID Connect provider resource ARNs by using the &lt;a&gt;ListOpenIDConnectProviders&lt;/a&gt; action.&lt;/p&gt;
-- Required parameter: OpenIDConnectProviderArn
function M.DeleteOpenIDConnectProviderRequest(OpenIDConnectProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteOpenIDConnectProviderRequest")
	local t = { 
		["OpenIDConnectProviderArn"] = OpenIDConnectProviderArn,
	}
	M.AssertDeleteOpenIDConnectProviderRequest(t)
	return t
end

local ListServiceSpecificCredentialsResponse_keys = { "ServiceSpecificCredentials" = true, nil }

function M.AssertListServiceSpecificCredentialsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServiceSpecificCredentialsResponse to be of type 'table'")
	if struct["ServiceSpecificCredentials"] then M.AssertServiceSpecificCredentialsListType(struct["ServiceSpecificCredentials"]) end
	for k,_ in pairs(struct) do
		assert(ListServiceSpecificCredentialsResponse_keys[k], "ListServiceSpecificCredentialsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServiceSpecificCredentialsResponse
--  
-- @param ServiceSpecificCredentials [ServiceSpecificCredentialsListType] &lt;p&gt;A list of structures that each contain details about a service-specific credential.&lt;/p&gt;
function M.ListServiceSpecificCredentialsResponse(ServiceSpecificCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServiceSpecificCredentialsResponse")
	local t = { 
		["ServiceSpecificCredentials"] = ServiceSpecificCredentials,
	}
	M.AssertListServiceSpecificCredentialsResponse(t)
	return t
end

local EntityAlreadyExistsException_keys = { "message" = true, nil }

function M.AssertEntityAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAlreadyExistsException to be of type 'table'")
	if struct["message"] then M.AssertentityAlreadyExistsMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(EntityAlreadyExistsException_keys[k], "EntityAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAlreadyExistsException
-- &lt;p&gt;The request was rejected because it attempted to create a resource that already exists.&lt;/p&gt;
-- @param message [entityAlreadyExistsMessage] &lt;p&gt;The request was rejected because it attempted to create a resource that already exists.&lt;/p&gt;
function M.EntityAlreadyExistsException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityAlreadyExistsException")
	local t = { 
		["message"] = message,
	}
	M.AssertEntityAlreadyExistsException(t)
	return t
end

local ListGroupPoliciesResponse_keys = { "Marker" = true, "PolicyNames" = true, "IsTruncated" = true, nil }

function M.AssertListGroupPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupPoliciesResponse to be of type 'table'")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PolicyNames"] then M.AssertpolicyNameListType(struct["PolicyNames"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupPoliciesResponse_keys[k], "ListGroupPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupPoliciesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListGroupPolicies&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param PolicyNames [policyNameListType] &lt;p&gt;A list of policy names.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: PolicyNames
function M.ListGroupPoliciesResponse(Marker, PolicyNames, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupPoliciesResponse")
	local t = { 
		["Marker"] = Marker,
		["PolicyNames"] = PolicyNames,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListGroupPoliciesResponse(t)
	return t
end

local InvalidCertificateException_keys = { "message" = true, nil }

function M.AssertInvalidCertificateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCertificateException to be of type 'table'")
	if struct["message"] then M.AssertinvalidCertificateMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidCertificateException_keys[k], "InvalidCertificateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCertificateException
-- &lt;p&gt;The request was rejected because the certificate is invalid.&lt;/p&gt;
-- @param message [invalidCertificateMessage] &lt;p&gt;The request was rejected because the certificate is invalid.&lt;/p&gt;
function M.InvalidCertificateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCertificateException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidCertificateException(t)
	return t
end

local ListSigningCertificatesResponse_keys = { "Certificates" = true, "Marker" = true, "IsTruncated" = true, nil }

function M.AssertListSigningCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningCertificatesResponse to be of type 'table'")
	assert(struct["Certificates"], "Expected key Certificates to exist in table")
	if struct["Certificates"] then M.AssertcertificateListType(struct["Certificates"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListSigningCertificatesResponse_keys[k], "ListSigningCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningCertificatesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListSigningCertificates&lt;/a&gt; request. &lt;/p&gt;
-- @param Certificates [certificateListType] &lt;p&gt;A list of the user's signing certificate information.&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: Certificates
function M.ListSigningCertificatesResponse(Certificates, Marker, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSigningCertificatesResponse")
	local t = { 
		["Certificates"] = Certificates,
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListSigningCertificatesResponse(t)
	return t
end

local GroupDetail_keys = { "GroupPolicyList" = true, "CreateDate" = true, "GroupName" = true, "Path" = true, "AttachedManagedPolicies" = true, "GroupId" = true, "Arn" = true, nil }

function M.AssertGroupDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupDetail to be of type 'table'")
	if struct["GroupPolicyList"] then M.AssertpolicyDetailListType(struct["GroupPolicyList"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["AttachedManagedPolicies"] then M.AssertattachedPoliciesListType(struct["AttachedManagedPolicies"]) end
	if struct["GroupId"] then M.AssertidType(struct["GroupId"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GroupDetail_keys[k], "GroupDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupDetail
-- &lt;p&gt;Contains information about an IAM group, including all of the group's policies.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt;
-- @param GroupPolicyList [policyDetailListType] &lt;p&gt;A list of the inline policies embedded in the group.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the group was created.&lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The friendly name that identifies the group.&lt;/p&gt;
-- @param Path [pathType] &lt;p&gt;The path to the group. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param AttachedManagedPolicies [attachedPoliciesListType] &lt;p&gt;A list of the managed policies attached to the group.&lt;/p&gt;
-- @param GroupId [idType] &lt;p&gt;The stable and unique string identifying the group. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;Contains information about an IAM group, including all of the group's policies.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt;
function M.GroupDetail(GroupPolicyList, CreateDate, GroupName, Path, AttachedManagedPolicies, GroupId, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupDetail")
	local t = { 
		["GroupPolicyList"] = GroupPolicyList,
		["CreateDate"] = CreateDate,
		["GroupName"] = GroupName,
		["Path"] = Path,
		["AttachedManagedPolicies"] = AttachedManagedPolicies,
		["GroupId"] = GroupId,
		["Arn"] = Arn,
	}
	M.AssertGroupDetail(t)
	return t
end

local VirtualMFADevice_keys = { "Base32StringSeed" = true, "SerialNumber" = true, "EnableDate" = true, "User" = true, "QRCodePNG" = true, nil }

function M.AssertVirtualMFADevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualMFADevice to be of type 'table'")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	if struct["Base32StringSeed"] then M.AssertBootstrapDatum(struct["Base32StringSeed"]) end
	if struct["SerialNumber"] then M.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["EnableDate"] then M.AssertdateType(struct["EnableDate"]) end
	if struct["User"] then M.AssertUser(struct["User"]) end
	if struct["QRCodePNG"] then M.AssertBootstrapDatum(struct["QRCodePNG"]) end
	for k,_ in pairs(struct) do
		assert(VirtualMFADevice_keys[k], "VirtualMFADevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualMFADevice
-- &lt;p&gt;Contains information about a virtual MFA device.&lt;/p&gt;
-- @param Base32StringSeed [BootstrapDatum] &lt;p&gt; The Base32 seed defined as specified in &lt;a href=&quot;https://tools.ietf.org/html/rfc3548.txt&quot;&gt;RFC3548&lt;/a&gt;. The &lt;code&gt;Base32StringSeed&lt;/code&gt; is Base64-encoded. &lt;/p&gt;
-- @param SerialNumber [serialNumberType] &lt;p&gt;The serial number associated with &lt;code&gt;VirtualMFADevice&lt;/code&gt;.&lt;/p&gt;
-- @param EnableDate [dateType] &lt;p&gt;The date and time on which the virtual MFA device was enabled.&lt;/p&gt;
-- @param User [User] &lt;p&gt;The IAM user associated with this virtual MFA device.&lt;/p&gt;
-- @param QRCodePNG [BootstrapDatum] &lt;p&gt; A QR code PNG image that encodes &lt;code&gt;otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String&lt;/code&gt; where &lt;code&gt;$virtualMFADeviceName&lt;/code&gt; is one of the create call arguments, &lt;code&gt;AccountName&lt;/code&gt; is the user name if set (otherwise, the account ID otherwise), and &lt;code&gt;Base32String&lt;/code&gt; is the seed in Base32 format. The &lt;code&gt;Base32String&lt;/code&gt; value is Base64-encoded. &lt;/p&gt;
-- Required parameter: SerialNumber
function M.VirtualMFADevice(Base32StringSeed, SerialNumber, EnableDate, User, QRCodePNG, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualMFADevice")
	local t = { 
		["Base32StringSeed"] = Base32StringSeed,
		["SerialNumber"] = SerialNumber,
		["EnableDate"] = EnableDate,
		["User"] = User,
		["QRCodePNG"] = QRCodePNG,
	}
	M.AssertVirtualMFADevice(t)
	return t
end

local DeleteUserRequest_keys = { "UserName" = true, nil }

function M.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUserRequest_keys[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: UserName
function M.DeleteUserRequest(UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserRequest")
	local t = { 
		["UserName"] = UserName,
	}
	M.AssertDeleteUserRequest(t)
	return t
end

local Role_keys = { "Description" = true, "AssumeRolePolicyDocument" = true, "RoleId" = true, "CreateDate" = true, "RoleName" = true, "Path" = true, "Arn" = true, nil }

function M.AssertRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Role to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["RoleId"], "Expected key RoleId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["Description"] then M.AssertroleDescriptionType(struct["Description"]) end
	if struct["AssumeRolePolicyDocument"] then M.AssertpolicyDocumentType(struct["AssumeRolePolicyDocument"]) end
	if struct["RoleId"] then M.AssertidType(struct["RoleId"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Role_keys[k], "Role contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Role
-- &lt;p&gt;Contains information about an IAM role. This structure is returned as a response element in several APIs that interact with roles.&lt;/p&gt;
-- @param Description [roleDescriptionType] &lt;p&gt;A description of the role that you provide.&lt;/p&gt;
-- @param AssumeRolePolicyDocument [policyDocumentType] &lt;p&gt;The policy that grants an entity permission to assume the role.&lt;/p&gt;
-- @param RoleId [idType] &lt;p&gt; The stable and unique string identifying the role. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the role was created.&lt;/p&gt;
-- @param RoleName [roleNameType] &lt;p&gt;The friendly name that identifies the role.&lt;/p&gt;
-- @param Path [pathType] &lt;p&gt; The path to the role. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt; The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and how to use them in policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt; guide. &lt;/p&gt;
-- Required parameter: Path
-- Required parameter: RoleName
-- Required parameter: RoleId
-- Required parameter: Arn
-- Required parameter: CreateDate
function M.Role(Description, AssumeRolePolicyDocument, RoleId, CreateDate, RoleName, Path, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Role")
	local t = { 
		["Description"] = Description,
		["AssumeRolePolicyDocument"] = AssumeRolePolicyDocument,
		["RoleId"] = RoleId,
		["CreateDate"] = CreateDate,
		["RoleName"] = RoleName,
		["Path"] = Path,
		["Arn"] = Arn,
	}
	M.AssertRole(t)
	return t
end

local ListUserPoliciesResponse_keys = { "Marker" = true, "PolicyNames" = true, "IsTruncated" = true, nil }

function M.AssertListUserPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoliciesResponse to be of type 'table'")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PolicyNames"] then M.AssertpolicyNameListType(struct["PolicyNames"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListUserPoliciesResponse_keys[k], "ListUserPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoliciesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListUserPolicies&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param PolicyNames [policyNameListType] &lt;p&gt;A list of policy names.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: PolicyNames
function M.ListUserPoliciesResponse(Marker, PolicyNames, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserPoliciesResponse")
	local t = { 
		["Marker"] = Marker,
		["PolicyNames"] = PolicyNames,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListUserPoliciesResponse(t)
	return t
end

local GetServerCertificateRequest_keys = { "ServerCertificateName" = true, nil }

function M.AssertGetServerCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServerCertificateRequest to be of type 'table'")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	if struct["ServerCertificateName"] then M.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	for k,_ in pairs(struct) do
		assert(GetServerCertificateRequest_keys[k], "GetServerCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServerCertificateRequest
--  
-- @param ServerCertificateName [serverCertificateNameType] &lt;p&gt;The name of the server certificate you want to retrieve information about.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: ServerCertificateName
function M.GetServerCertificateRequest(ServerCertificateName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServerCertificateRequest")
	local t = { 
		["ServerCertificateName"] = ServerCertificateName,
	}
	M.AssertGetServerCertificateRequest(t)
	return t
end

local UserDetail_keys = { "UserName" = true, "GroupList" = true, "CreateDate" = true, "UserId" = true, "UserPolicyList" = true, "Path" = true, "AttachedManagedPolicies" = true, "Arn" = true, nil }

function M.AssertUserDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserDetail to be of type 'table'")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["GroupList"] then M.AssertgroupNameListType(struct["GroupList"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["UserId"] then M.AssertidType(struct["UserId"]) end
	if struct["UserPolicyList"] then M.AssertpolicyDetailListType(struct["UserPolicyList"]) end
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["AttachedManagedPolicies"] then M.AssertattachedPoliciesListType(struct["AttachedManagedPolicies"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(UserDetail_keys[k], "UserDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserDetail
-- &lt;p&gt;Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The friendly name identifying the user.&lt;/p&gt;
-- @param GroupList [groupNameListType] &lt;p&gt;A list of IAM groups that the user is in.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the user was created.&lt;/p&gt;
-- @param UserId [idType] &lt;p&gt;The stable and unique string identifying the user. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param UserPolicyList [policyDetailListType] &lt;p&gt;A list of the inline policies embedded in the user.&lt;/p&gt;
-- @param Path [pathType] &lt;p&gt;The path to the user. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param AttachedManagedPolicies [attachedPoliciesListType] &lt;p&gt;A list of the managed policies attached to the user.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccountAuthorizationDetails&lt;/a&gt; action.&lt;/p&gt;
function M.UserDetail(UserName, GroupList, CreateDate, UserId, UserPolicyList, Path, AttachedManagedPolicies, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserDetail")
	local t = { 
		["UserName"] = UserName,
		["GroupList"] = GroupList,
		["CreateDate"] = CreateDate,
		["UserId"] = UserId,
		["UserPolicyList"] = UserPolicyList,
		["Path"] = Path,
		["AttachedManagedPolicies"] = AttachedManagedPolicies,
		["Arn"] = Arn,
	}
	M.AssertUserDetail(t)
	return t
end

local CreateOpenIDConnectProviderRequest_keys = { "Url" = true, "ThumbprintList" = true, "ClientIDList" = true, nil }

function M.AssertCreateOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["Url"], "Expected key Url to exist in table")
	assert(struct["ThumbprintList"], "Expected key ThumbprintList to exist in table")
	if struct["Url"] then M.AssertOpenIDConnectProviderUrlType(struct["Url"]) end
	if struct["ThumbprintList"] then M.AssertthumbprintListType(struct["ThumbprintList"]) end
	if struct["ClientIDList"] then M.AssertclientIDListType(struct["ClientIDList"]) end
	for k,_ in pairs(struct) do
		assert(CreateOpenIDConnectProviderRequest_keys[k], "CreateOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOpenIDConnectProviderRequest
--  
-- @param Url [OpenIDConnectProviderUrlType] &lt;p&gt;The URL of the identity provider. The URL must begin with &quot;https://&quot; and should correspond to the &lt;code&gt;iss&lt;/code&gt; claim in the provider's OpenID Connect ID tokens. Per the OIDC standard, path components are allowed but query parameters are not. Typically the URL consists of only a host name, like &quot;https://server.example.org&quot; or &quot;https://example.com&quot;.&lt;/p&gt; &lt;p&gt;You cannot register the same provider multiple times in a single AWS account. If you try to submit a URL that has already been used for an OpenID Connect provider in the AWS account, you will get an error.&lt;/p&gt;
-- @param ThumbprintList [thumbprintListType] &lt;p&gt;A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). Typically this list includes only one entry. However, IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain multiple thumbprints if the identity provider is rotating certificates.&lt;/p&gt; &lt;p&gt;The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.&lt;/p&gt; &lt;p&gt;You must provide at least one thumbprint when creating an IAM OIDC provider. For example, if the OIDC provider is &lt;code&gt;server.example.com&lt;/code&gt; and the provider stores its keys at &quot;https://keys.server.example.com/openid-connect&quot;, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate used by https://keys.server.example.com.&lt;/p&gt; &lt;p&gt;For more information about obtaining the OIDC provider's thumbprint, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html&quot;&gt;Obtaining the Thumbprint for an OpenID Connect Provider&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param ClientIDList [clientIDListType] &lt;p&gt;A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the &lt;code&gt;client_id&lt;/code&gt; parameter on OAuth requests.)&lt;/p&gt; &lt;p&gt;You can register multiple client IDs with the same provider. For example, you might have multiple applications that use the same OIDC provider. You cannot register more than 100 client IDs with a single IAM OIDC provider.&lt;/p&gt; &lt;p&gt;There is no defined format for a client ID. The &lt;code&gt;CreateOpenIDConnectProviderRequest&lt;/code&gt; action accepts client IDs up to 255 characters long.&lt;/p&gt;
-- Required parameter: Url
-- Required parameter: ThumbprintList
function M.CreateOpenIDConnectProviderRequest(Url, ThumbprintList, ClientIDList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOpenIDConnectProviderRequest")
	local t = { 
		["Url"] = Url,
		["ThumbprintList"] = ThumbprintList,
		["ClientIDList"] = ClientIDList,
	}
	M.AssertCreateOpenIDConnectProviderRequest(t)
	return t
end

local ListUsersResponse_keys = { "Marker" = true, "Users" = true, "IsTruncated" = true, nil }

function M.AssertListUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersResponse to be of type 'table'")
	assert(struct["Users"], "Expected key Users to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["Users"] then M.AssertuserListType(struct["Users"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListUsersResponse_keys[k], "ListUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListUsers&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param Users [userListType] &lt;p&gt;A list of users.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: Users
function M.ListUsersResponse(Marker, Users, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUsersResponse")
	local t = { 
		["Marker"] = Marker,
		["Users"] = Users,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListUsersResponse(t)
	return t
end

local ResyncMFADeviceRequest_keys = { "UserName" = true, "AuthenticationCode1" = true, "SerialNumber" = true, "AuthenticationCode2" = true, nil }

function M.AssertResyncMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResyncMFADeviceRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	assert(struct["AuthenticationCode1"], "Expected key AuthenticationCode1 to exist in table")
	assert(struct["AuthenticationCode2"], "Expected key AuthenticationCode2 to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["AuthenticationCode1"] then M.AssertauthenticationCodeType(struct["AuthenticationCode1"]) end
	if struct["SerialNumber"] then M.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["AuthenticationCode2"] then M.AssertauthenticationCodeType(struct["AuthenticationCode2"]) end
	for k,_ in pairs(struct) do
		assert(ResyncMFADeviceRequest_keys[k], "ResyncMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResyncMFADeviceRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user whose MFA device you want to resynchronize.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param AuthenticationCode1 [authenticationCodeType] &lt;p&gt;An authentication code emitted by the device.&lt;/p&gt; &lt;p&gt;The format for this parameter is a sequence of six digits.&lt;/p&gt;
-- @param SerialNumber [serialNumberType] &lt;p&gt;Serial number that uniquely identifies the MFA device.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param AuthenticationCode2 [authenticationCodeType] &lt;p&gt;A subsequent authentication code emitted by the device.&lt;/p&gt; &lt;p&gt;The format for this parameter is a sequence of six digits.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SerialNumber
-- Required parameter: AuthenticationCode1
-- Required parameter: AuthenticationCode2
function M.ResyncMFADeviceRequest(UserName, AuthenticationCode1, SerialNumber, AuthenticationCode2, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResyncMFADeviceRequest")
	local t = { 
		["UserName"] = UserName,
		["AuthenticationCode1"] = AuthenticationCode1,
		["SerialNumber"] = SerialNumber,
		["AuthenticationCode2"] = AuthenticationCode2,
	}
	M.AssertResyncMFADeviceRequest(t)
	return t
end

local CreateOpenIDConnectProviderResponse_keys = { "OpenIDConnectProviderArn" = true, nil }

function M.AssertCreateOpenIDConnectProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOpenIDConnectProviderResponse to be of type 'table'")
	if struct["OpenIDConnectProviderArn"] then M.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateOpenIDConnectProviderResponse_keys[k], "CreateOpenIDConnectProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOpenIDConnectProviderResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateOpenIDConnectProvider&lt;/a&gt; request. &lt;/p&gt;
-- @param OpenIDConnectProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is created. For more information, see &lt;a&gt;OpenIDConnectProviderListEntry&lt;/a&gt;. &lt;/p&gt;
function M.CreateOpenIDConnectProviderResponse(OpenIDConnectProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOpenIDConnectProviderResponse")
	local t = { 
		["OpenIDConnectProviderArn"] = OpenIDConnectProviderArn,
	}
	M.AssertCreateOpenIDConnectProviderResponse(t)
	return t
end

local UpdateRoleDescriptionResponse_keys = { "Role" = true, nil }

function M.AssertUpdateRoleDescriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRoleDescriptionResponse to be of type 'table'")
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(UpdateRoleDescriptionResponse_keys[k], "UpdateRoleDescriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRoleDescriptionResponse
--  
-- @param Role [Role] &lt;p&gt;A structure that contains details about the modified role.&lt;/p&gt;
function M.UpdateRoleDescriptionResponse(Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRoleDescriptionResponse")
	local t = { 
		["Role"] = Role,
	}
	M.AssertUpdateRoleDescriptionResponse(t)
	return t
end

local GetInstanceProfileResponse_keys = { "InstanceProfile" = true, nil }

function M.AssertGetInstanceProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceProfileResponse to be of type 'table'")
	assert(struct["InstanceProfile"], "Expected key InstanceProfile to exist in table")
	if struct["InstanceProfile"] then M.AssertInstanceProfile(struct["InstanceProfile"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceProfileResponse_keys[k], "GetInstanceProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceProfileResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetInstanceProfile&lt;/a&gt; request. &lt;/p&gt;
-- @param InstanceProfile [InstanceProfile] &lt;p&gt;A structure containing details about the instance profile.&lt;/p&gt;
-- Required parameter: InstanceProfile
function M.GetInstanceProfileResponse(InstanceProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceProfileResponse")
	local t = { 
		["InstanceProfile"] = InstanceProfile,
	}
	M.AssertGetInstanceProfileResponse(t)
	return t
end

local ListPolicyVersionsRequest_keys = { "Marker" = true, "MaxItems" = true, "PolicyArn" = true, nil }

function M.AssertListPolicyVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(ListPolicyVersionsRequest_keys[k], "ListPolicyVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PolicyArn
function M.ListPolicyVersionsRequest(Marker, MaxItems, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyVersionsRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertListPolicyVersionsRequest(t)
	return t
end

local GetGroupPolicyRequest_keys = { "GroupName" = true, "PolicyName" = true, nil }

function M.AssertGetGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupPolicyRequest_keys[k], "GetGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupPolicyRequest
--  
-- @param GroupName [groupNameType] &lt;p&gt;The name of the group the policy is associated with.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy document to get.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: GroupName
-- Required parameter: PolicyName
function M.GetGroupPolicyRequest(GroupName, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupPolicyRequest")
	local t = { 
		["GroupName"] = GroupName,
		["PolicyName"] = PolicyName,
	}
	M.AssertGetGroupPolicyRequest(t)
	return t
end

local GetGroupRequest_keys = { "Marker" = true, "GroupName" = true, "MaxItems" = true, nil }

function M.AssertGetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupRequest_keys[k], "GetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The name of the group.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: GroupName
function M.GetGroupRequest(Marker, GroupName, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupRequest")
	local t = { 
		["Marker"] = Marker,
		["GroupName"] = GroupName,
		["MaxItems"] = MaxItems,
	}
	M.AssertGetGroupRequest(t)
	return t
end

local ListRolesRequest_keys = { "Marker" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListRolesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRolesRequest to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then M.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListRolesRequest_keys[k], "ListRolesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRolesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param PathPrefix [pathPrefixType] &lt;p&gt; The path prefix for filtering the results. For example, the prefix &lt;code&gt;/application_abc/component_xyz/&lt;/code&gt; gets all roles whose path starts with &lt;code&gt;/application_abc/component_xyz/&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListRolesRequest(Marker, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRolesRequest")
	local t = { 
		["Marker"] = Marker,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListRolesRequest(t)
	return t
end

local UpdateLoginProfileRequest_keys = { "UserName" = true, "PasswordResetRequired" = true, "Password" = true, nil }

function M.AssertUpdateLoginProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLoginProfileRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["PasswordResetRequired"] then M.AssertbooleanObjectType(struct["PasswordResetRequired"]) end
	if struct["Password"] then M.AssertpasswordType(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(UpdateLoginProfileRequest_keys[k], "UpdateLoginProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLoginProfileRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the user whose password you want to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PasswordResetRequired [booleanObjectType] &lt;p&gt;Allows this new password to be used only once by requiring the specified IAM user to set a new password on next sign-in.&lt;/p&gt;
-- @param Password [passwordType] &lt;p&gt;The new password for the specified IAM user.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D). However, the format can be further restricted by the account administrator by setting a password policy on the AWS account. For more information, see &lt;a&gt;UpdateAccountPasswordPolicy&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: UserName
function M.UpdateLoginProfileRequest(UserName, PasswordResetRequired, Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLoginProfileRequest")
	local t = { 
		["UserName"] = UserName,
		["PasswordResetRequired"] = PasswordResetRequired,
		["Password"] = Password,
	}
	M.AssertUpdateLoginProfileRequest(t)
	return t
end

local UpdateOpenIDConnectProviderThumbprintRequest_keys = { "ThumbprintList" = true, "OpenIDConnectProviderArn" = true, nil }

function M.AssertUpdateOpenIDConnectProviderThumbprintRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateOpenIDConnectProviderThumbprintRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	assert(struct["ThumbprintList"], "Expected key ThumbprintList to exist in table")
	if struct["ThumbprintList"] then M.AssertthumbprintListType(struct["ThumbprintList"]) end
	if struct["OpenIDConnectProviderArn"] then M.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateOpenIDConnectProviderThumbprintRequest_keys[k], "UpdateOpenIDConnectProviderThumbprintRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateOpenIDConnectProviderThumbprintRequest
--  
-- @param ThumbprintList [thumbprintListType] &lt;p&gt;A list of certificate thumbprints that are associated with the specified IAM OpenID Connect provider. For more information, see &lt;a&gt;CreateOpenIDConnectProvider&lt;/a&gt;. &lt;/p&gt;
-- @param OpenIDConnectProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the &lt;a&gt;ListOpenIDConnectProviders&lt;/a&gt; action.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: OpenIDConnectProviderArn
-- Required parameter: ThumbprintList
function M.UpdateOpenIDConnectProviderThumbprintRequest(ThumbprintList, OpenIDConnectProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateOpenIDConnectProviderThumbprintRequest")
	local t = { 
		["ThumbprintList"] = ThumbprintList,
		["OpenIDConnectProviderArn"] = OpenIDConnectProviderArn,
	}
	M.AssertUpdateOpenIDConnectProviderThumbprintRequest(t)
	return t
end

local CreatePolicyVersionResponse_keys = { "PolicyVersion" = true, nil }

function M.AssertCreatePolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionResponse to be of type 'table'")
	if struct["PolicyVersion"] then M.AssertPolicyVersion(struct["PolicyVersion"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyVersionResponse_keys[k], "CreatePolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreatePolicyVersion&lt;/a&gt; request. &lt;/p&gt;
-- @param PolicyVersion [PolicyVersion] &lt;p&gt;A structure containing details about the new policy version.&lt;/p&gt;
function M.CreatePolicyVersionResponse(PolicyVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyVersionResponse")
	local t = { 
		["PolicyVersion"] = PolicyVersion,
	}
	M.AssertCreatePolicyVersionResponse(t)
	return t
end

local PutUserPolicyRequest_keys = { "UserName" = true, "PolicyName" = true, "PolicyDocument" = true, nil }

function M.AssertPutUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	for k,_ in pairs(struct) do
		assert(PutUserPolicyRequest_keys[k], "PutUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutUserPolicyRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user to associate the policy with.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy document.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The policy document.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.PutUserPolicyRequest(UserName, PolicyName, PolicyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutUserPolicyRequest")
	local t = { 
		["UserName"] = UserName,
		["PolicyName"] = PolicyName,
		["PolicyDocument"] = PolicyDocument,
	}
	M.AssertPutUserPolicyRequest(t)
	return t
end

local LimitExceededException_keys = { "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertlimitExceededMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;The request was rejected because it attempted to create resources beyond the current AWS account limits. The error message describes the limit exceeded.&lt;/p&gt;
-- @param message [limitExceededMessage] &lt;p&gt;The request was rejected because it attempted to create resources beyond the current AWS account limits. The error message describes the limit exceeded.&lt;/p&gt;
function M.LimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local InvalidPublicKeyException_keys = { "message" = true, nil }

function M.AssertInvalidPublicKeyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPublicKeyException to be of type 'table'")
	if struct["message"] then M.AssertinvalidPublicKeyMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidPublicKeyException_keys[k], "InvalidPublicKeyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPublicKeyException
-- &lt;p&gt;The request was rejected because the public key is malformed or otherwise invalid.&lt;/p&gt;
-- @param message [invalidPublicKeyMessage] &lt;p&gt;The request was rejected because the public key is malformed or otherwise invalid.&lt;/p&gt;
function M.InvalidPublicKeyException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPublicKeyException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidPublicKeyException(t)
	return t
end

local AccessKeyLastUsed_keys = { "Region" = true, "ServiceName" = true, "LastUsedDate" = true, nil }

function M.AssertAccessKeyLastUsed(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessKeyLastUsed to be of type 'table'")
	assert(struct["LastUsedDate"], "Expected key LastUsedDate to exist in table")
	assert(struct["ServiceName"], "Expected key ServiceName to exist in table")
	assert(struct["Region"], "Expected key Region to exist in table")
	if struct["Region"] then M.AssertstringType(struct["Region"]) end
	if struct["ServiceName"] then M.AssertstringType(struct["ServiceName"]) end
	if struct["LastUsedDate"] then M.AssertdateType(struct["LastUsedDate"]) end
	for k,_ in pairs(struct) do
		assert(AccessKeyLastUsed_keys[k], "AccessKeyLastUsed contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessKeyLastUsed
-- &lt;p&gt;Contains information about the last time an AWS access key was used.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetAccessKeyLastUsed&lt;/a&gt; action.&lt;/p&gt;
-- @param Region [stringType] &lt;p&gt;The AWS region where this access key was most recently used. This field is displays &quot;N/A&quot; when:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information about AWS regions, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/rande.html&quot;&gt;Regions and Endpoints&lt;/a&gt; in the Amazon Web Services General Reference.&lt;/p&gt;
-- @param ServiceName [stringType] &lt;p&gt;The name of the AWS service with which this access key was most recently used. This field displays &quot;N/A&quot; when:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param LastUsedDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the access key was most recently used. This field is null when:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have an access key.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;There is no sign-in data associated with the user&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: LastUsedDate
-- Required parameter: ServiceName
-- Required parameter: Region
function M.AccessKeyLastUsed(Region, ServiceName, LastUsedDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessKeyLastUsed")
	local t = { 
		["Region"] = Region,
		["ServiceName"] = ServiceName,
		["LastUsedDate"] = LastUsedDate,
	}
	M.AssertAccessKeyLastUsed(t)
	return t
end

local CreateUserResponse_keys = { "User" = true, nil }

function M.AssertCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResponse to be of type 'table'")
	if struct["User"] then M.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserResponse_keys[k], "CreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateUser&lt;/a&gt; request. &lt;/p&gt;
-- @param User [User] &lt;p&gt;A structure with details about the new IAM user.&lt;/p&gt;
function M.CreateUserResponse(User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserResponse")
	local t = { 
		["User"] = User,
	}
	M.AssertCreateUserResponse(t)
	return t
end

local CreatePolicyVersionRequest_keys = { "SetAsDefault" = true, "PolicyDocument" = true, "PolicyArn" = true, nil }

function M.AssertCreatePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["SetAsDefault"] then M.AssertbooleanType(struct["SetAsDefault"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyVersionRequest_keys[k], "CreatePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionRequest
--  
-- @param SetAsDefault [booleanType] &lt;p&gt;Specifies whether to set this version as the policy's default version.&lt;/p&gt; &lt;p&gt;When this parameter is &lt;code&gt;true&lt;/code&gt;, the new policy version becomes the operative version; that is, the version that is in effect for the IAM users, groups, and roles that the policy is attached to.&lt;/p&gt; &lt;p&gt;For more information about managed policy versions, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html&quot;&gt;Versioning for Managed Policies&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The JSON policy document that you want to use as the content for this new version of the policy.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new version.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PolicyArn
-- Required parameter: PolicyDocument
function M.CreatePolicyVersionRequest(SetAsDefault, PolicyDocument, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyVersionRequest")
	local t = { 
		["SetAsDefault"] = SetAsDefault,
		["PolicyDocument"] = PolicyDocument,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertCreatePolicyVersionRequest(t)
	return t
end

local GetUserResponse_keys = { "User" = true, nil }

function M.AssertGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserResponse to be of type 'table'")
	assert(struct["User"], "Expected key User to exist in table")
	if struct["User"] then M.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(GetUserResponse_keys[k], "GetUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetUser&lt;/a&gt; request. &lt;/p&gt;
-- @param User [User] &lt;p&gt;A structure containing details about the IAM user.&lt;/p&gt;
-- Required parameter: User
function M.GetUserResponse(User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserResponse")
	local t = { 
		["User"] = User,
	}
	M.AssertGetUserResponse(t)
	return t
end

local SimulateCustomPolicyRequest_keys = { "ResourceHandlingOption" = true, "ContextEntries" = true, "CallerArn" = true, "PolicyInputList" = true, "ResourcePolicy" = true, "MaxItems" = true, "ActionNames" = true, "Marker" = true, "ResourceArns" = true, "ResourceOwner" = true, nil }

function M.AssertSimulateCustomPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SimulateCustomPolicyRequest to be of type 'table'")
	assert(struct["PolicyInputList"], "Expected key PolicyInputList to exist in table")
	assert(struct["ActionNames"], "Expected key ActionNames to exist in table")
	if struct["ResourceHandlingOption"] then M.AssertResourceHandlingOptionType(struct["ResourceHandlingOption"]) end
	if struct["ContextEntries"] then M.AssertContextEntryListType(struct["ContextEntries"]) end
	if struct["CallerArn"] then M.AssertResourceNameType(struct["CallerArn"]) end
	if struct["PolicyInputList"] then M.AssertSimulationPolicyListType(struct["PolicyInputList"]) end
	if struct["ResourcePolicy"] then M.AssertpolicyDocumentType(struct["ResourcePolicy"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	if struct["ActionNames"] then M.AssertActionNameListType(struct["ActionNames"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["ResourceArns"] then M.AssertResourceNameListType(struct["ResourceArns"]) end
	if struct["ResourceOwner"] then M.AssertResourceNameType(struct["ResourceOwner"]) end
	for k,_ in pairs(struct) do
		assert(SimulateCustomPolicyRequest_keys[k], "SimulateCustomPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SimulateCustomPolicyRequest
--  
-- @param ResourceHandlingOption [ResourceHandlingOptionType] &lt;p&gt;Specifies the type of simulation to run. Different APIs that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.&lt;/p&gt; &lt;p&gt;Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html&quot;&gt;Supported Platforms&lt;/a&gt; in the &lt;i&gt;AWS EC2 User Guide&lt;/i&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-Classic-InstanceStore&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-Classic-EBS&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, volume&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-VPC-InstanceStore&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, network-interface&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-VPC-InstanceStore-Subnet&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, network-interface, subnet&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-VPC-EBS&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, network-interface, volume&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-VPC-EBS-Subnet&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, network-interface, subnet, volume&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ContextEntries [ContextEntryListType] &lt;p&gt;A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permission policies, the corresponding value is supplied.&lt;/p&gt;
-- @param CallerArn [ResourceNameType] &lt;p&gt;The ARN of the IAM user that you want to use as the simulated caller of the APIs. &lt;code&gt;CallerArn&lt;/code&gt; is required if you include a &lt;code&gt;ResourcePolicy&lt;/code&gt; so that the policy's &lt;code&gt;Principal&lt;/code&gt; element has a value to use in evaluating the policy.&lt;/p&gt; &lt;p&gt;You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.&lt;/p&gt;
-- @param PolicyInputList [SimulationPolicyListType] &lt;p&gt;A list of policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy. Do not include any resource-based policies in this parameter. Any resource-based policy must be submitted with the &lt;code&gt;ResourcePolicy&lt;/code&gt; parameter. The policies cannot be &quot;scope-down&quot; policies, such as you could include in a call to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html&quot;&gt;GetFederationToken&lt;/a&gt; or one of the &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html&quot;&gt;AssumeRole&lt;/a&gt; APIs to restrict what a user can do while using the temporary credentials.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param ResourcePolicy [policyDocumentType] &lt;p&gt;A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- @param ActionNames [ActionNameListType] &lt;p&gt;A list of names of API actions to evaluate in the simulation. Each action is evaluated against each resource. Each action must include the service identifier, such as &lt;code&gt;iam:CreateUser&lt;/code&gt;.&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param ResourceArns [ResourceNameListType] &lt;p&gt;A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided then the value defaults to &lt;code&gt;*&lt;/code&gt; (all resources). Each API in the &lt;code&gt;ActionNames&lt;/code&gt; parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.&lt;/p&gt; &lt;p&gt;The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the &lt;code&gt;ResourcePolicy&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;If you include a &lt;code&gt;ResourcePolicy&lt;/code&gt;, then it must be applicable to all of the resources included in the simulation or you receive an invalid input error.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param ResourceOwner [ResourceNameType] &lt;p&gt;An AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN, such as an S3 bucket or object. If &lt;code&gt;ResourceOwner&lt;/code&gt; is specified, it is also used as the account owner of any &lt;code&gt;ResourcePolicy&lt;/code&gt; included in the simulation. If the &lt;code&gt;ResourceOwner&lt;/code&gt; parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in &lt;code&gt;CallerArn&lt;/code&gt;. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user &lt;code&gt;CallerArn&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: PolicyInputList
-- Required parameter: ActionNames
function M.SimulateCustomPolicyRequest(ResourceHandlingOption, ContextEntries, CallerArn, PolicyInputList, ResourcePolicy, MaxItems, ActionNames, Marker, ResourceArns, ResourceOwner, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SimulateCustomPolicyRequest")
	local t = { 
		["ResourceHandlingOption"] = ResourceHandlingOption,
		["ContextEntries"] = ContextEntries,
		["CallerArn"] = CallerArn,
		["PolicyInputList"] = PolicyInputList,
		["ResourcePolicy"] = ResourcePolicy,
		["MaxItems"] = MaxItems,
		["ActionNames"] = ActionNames,
		["Marker"] = Marker,
		["ResourceArns"] = ResourceArns,
		["ResourceOwner"] = ResourceOwner,
	}
	M.AssertSimulateCustomPolicyRequest(t)
	return t
end

local AccessKeyMetadata_keys = { "UserName" = true, "Status" = true, "CreateDate" = true, "AccessKeyId" = true, nil }

function M.AssertAccessKeyMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessKeyMetadata to be of type 'table'")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["AccessKeyId"] then M.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(AccessKeyMetadata_keys[k], "AccessKeyMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessKeyMetadata
-- &lt;p&gt;Contains information about an AWS access key, without its secret key.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListAccessKeys&lt;/a&gt; action.&lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user that the key is associated with.&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status of the access key. &lt;code&gt;Active&lt;/code&gt; means the key is valid for API calls; &lt;code&gt;Inactive&lt;/code&gt; means it is not.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date when the access key was created.&lt;/p&gt;
-- @param AccessKeyId [accessKeyIdType] &lt;p&gt;The ID for this access key.&lt;/p&gt;
function M.AccessKeyMetadata(UserName, Status, CreateDate, AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessKeyMetadata")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["CreateDate"] = CreateDate,
		["AccessKeyId"] = AccessKeyId,
	}
	M.AssertAccessKeyMetadata(t)
	return t
end

local GetAccountPasswordPolicyResponse_keys = { "PasswordPolicy" = true, nil }

function M.AssertGetAccountPasswordPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountPasswordPolicyResponse to be of type 'table'")
	assert(struct["PasswordPolicy"], "Expected key PasswordPolicy to exist in table")
	if struct["PasswordPolicy"] then M.AssertPasswordPolicy(struct["PasswordPolicy"]) end
	for k,_ in pairs(struct) do
		assert(GetAccountPasswordPolicyResponse_keys[k], "GetAccountPasswordPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountPasswordPolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetAccountPasswordPolicy&lt;/a&gt; request. &lt;/p&gt;
-- @param PasswordPolicy [PasswordPolicy] &lt;p&gt;A structure that contains details about the account's password policy.&lt;/p&gt;
-- Required parameter: PasswordPolicy
function M.GetAccountPasswordPolicyResponse(PasswordPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountPasswordPolicyResponse")
	local t = { 
		["PasswordPolicy"] = PasswordPolicy,
	}
	M.AssertGetAccountPasswordPolicyResponse(t)
	return t
end

local UploadSSHPublicKeyResponse_keys = { "SSHPublicKey" = true, nil }

function M.AssertUploadSSHPublicKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadSSHPublicKeyResponse to be of type 'table'")
	if struct["SSHPublicKey"] then M.AssertSSHPublicKey(struct["SSHPublicKey"]) end
	for k,_ in pairs(struct) do
		assert(UploadSSHPublicKeyResponse_keys[k], "UploadSSHPublicKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadSSHPublicKeyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;UploadSSHPublicKey&lt;/a&gt; request.&lt;/p&gt;
-- @param SSHPublicKey [SSHPublicKey] &lt;p&gt;Contains information about the SSH public key.&lt;/p&gt;
function M.UploadSSHPublicKeyResponse(SSHPublicKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadSSHPublicKeyResponse")
	local t = { 
		["SSHPublicKey"] = SSHPublicKey,
	}
	M.AssertUploadSSHPublicKeyResponse(t)
	return t
end

local GetPolicyVersionRequest_keys = { "VersionId" = true, "PolicyArn" = true, nil }

function M.AssertGetPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["VersionId"] then M.AssertpolicyVersionIdType(struct["VersionId"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyVersionRequest_keys[k], "GetPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionRequest
--  
-- @param VersionId [policyVersionIdType] &lt;p&gt;Identifies the policy version to retrieve.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the managed policy that you want information about.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PolicyArn
-- Required parameter: VersionId
function M.GetPolicyVersionRequest(VersionId, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyVersionRequest")
	local t = { 
		["VersionId"] = VersionId,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertGetPolicyVersionRequest(t)
	return t
end

local CreateSAMLProviderResponse_keys = { "SAMLProviderArn" = true, nil }

function M.AssertCreateSAMLProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSAMLProviderResponse to be of type 'table'")
	if struct["SAMLProviderArn"] then M.AssertarnType(struct["SAMLProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateSAMLProviderResponse_keys[k], "CreateSAMLProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSAMLProviderResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateSAMLProvider&lt;/a&gt; request. &lt;/p&gt;
-- @param SAMLProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.&lt;/p&gt;
function M.CreateSAMLProviderResponse(SAMLProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSAMLProviderResponse")
	local t = { 
		["SAMLProviderArn"] = SAMLProviderArn,
	}
	M.AssertCreateSAMLProviderResponse(t)
	return t
end

local KeyPairMismatchException_keys = { "message" = true, nil }

function M.AssertKeyPairMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPairMismatchException to be of type 'table'")
	if struct["message"] then M.AssertkeyPairMismatchMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(KeyPairMismatchException_keys[k], "KeyPairMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPairMismatchException
-- &lt;p&gt;The request was rejected because the public key certificate and the private key do not match.&lt;/p&gt;
-- @param message [keyPairMismatchMessage] &lt;p&gt;The request was rejected because the public key certificate and the private key do not match.&lt;/p&gt;
function M.KeyPairMismatchException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyPairMismatchException")
	local t = { 
		["message"] = message,
	}
	M.AssertKeyPairMismatchException(t)
	return t
end

local CredentialReportNotPresentException_keys = { "message" = true, nil }

function M.AssertCredentialReportNotPresentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CredentialReportNotPresentException to be of type 'table'")
	if struct["message"] then M.AssertcredentialReportNotPresentExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CredentialReportNotPresentException_keys[k], "CredentialReportNotPresentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CredentialReportNotPresentException
-- &lt;p&gt;The request was rejected because the credential report does not exist. To generate a credential report, use &lt;a&gt;GenerateCredentialReport&lt;/a&gt;.&lt;/p&gt;
-- @param message [credentialReportNotPresentExceptionMessage] &lt;p&gt;The request was rejected because the credential report does not exist. To generate a credential report, use &lt;a&gt;GenerateCredentialReport&lt;/a&gt;.&lt;/p&gt;
function M.CredentialReportNotPresentException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CredentialReportNotPresentException")
	local t = { 
		["message"] = message,
	}
	M.AssertCredentialReportNotPresentException(t)
	return t
end

local SAMLProviderListEntry_keys = { "CreateDate" = true, "ValidUntil" = true, "Arn" = true, nil }

function M.AssertSAMLProviderListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SAMLProviderListEntry to be of type 'table'")
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["ValidUntil"] then M.AssertdateType(struct["ValidUntil"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(SAMLProviderListEntry_keys[k], "SAMLProviderListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SAMLProviderListEntry
-- &lt;p&gt;Contains the list of SAML providers for this account.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time when the SAML provider was created.&lt;/p&gt;
-- @param ValidUntil [dateType] &lt;p&gt;The expiration date and time for the SAML provider.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the SAML provider.&lt;/p&gt;
function M.SAMLProviderListEntry(CreateDate, ValidUntil, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SAMLProviderListEntry")
	local t = { 
		["CreateDate"] = CreateDate,
		["ValidUntil"] = ValidUntil,
		["Arn"] = Arn,
	}
	M.AssertSAMLProviderListEntry(t)
	return t
end

local ServiceFailureException_keys = { "message" = true, nil }

function M.AssertServiceFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceFailureException to be of type 'table'")
	if struct["message"] then M.AssertserviceFailureExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceFailureException_keys[k], "ServiceFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceFailureException
-- &lt;p&gt;The request processing has failed because of an unknown error, exception or failure.&lt;/p&gt;
-- @param message [serviceFailureExceptionMessage] &lt;p&gt;The request processing has failed because of an unknown error, exception or failure.&lt;/p&gt;
function M.ServiceFailureException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceFailureException")
	local t = { 
		["message"] = message,
	}
	M.AssertServiceFailureException(t)
	return t
end

local ListServerCertificatesRequest_keys = { "Marker" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListServerCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServerCertificatesRequest to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then M.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListServerCertificatesRequest_keys[k], "ListServerCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServerCertificatesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param PathPrefix [pathPrefixType] &lt;p&gt; The path prefix for filtering the results. For example: &lt;code&gt;/company/servercerts&lt;/code&gt; would get all server certificates for which the path starts with &lt;code&gt;/company/servercerts&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/), listing all server certificates. This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListServerCertificatesRequest(Marker, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServerCertificatesRequest")
	local t = { 
		["Marker"] = Marker,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListServerCertificatesRequest(t)
	return t
end

local InvalidAuthenticationCodeException_keys = { "message" = true, nil }

function M.AssertInvalidAuthenticationCodeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAuthenticationCodeException to be of type 'table'")
	if struct["message"] then M.AssertinvalidAuthenticationCodeMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAuthenticationCodeException_keys[k], "InvalidAuthenticationCodeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAuthenticationCodeException
-- &lt;p&gt;The request was rejected because the authentication code was not recognized. The error message describes the specific error.&lt;/p&gt;
-- @param message [invalidAuthenticationCodeMessage] &lt;p&gt;The request was rejected because the authentication code was not recognized. The error message describes the specific error.&lt;/p&gt;
function M.InvalidAuthenticationCodeException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAuthenticationCodeException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidAuthenticationCodeException(t)
	return t
end

local AttachRolePolicyRequest_keys = { "RoleName" = true, "PolicyArn" = true, nil }

function M.AssertAttachRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(AttachRolePolicyRequest_keys[k], "AttachRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachRolePolicyRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name (friendly name, not ARN) of the role to attach the policy to.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy you want to attach.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: PolicyArn
function M.AttachRolePolicyRequest(RoleName, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachRolePolicyRequest")
	local t = { 
		["RoleName"] = RoleName,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertAttachRolePolicyRequest(t)
	return t
end

local ListAttachedUserPoliciesResponse_keys = { "Marker" = true, "AttachedPolicies" = true, "IsTruncated" = true, nil }

function M.AssertListAttachedUserPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedUserPoliciesResponse to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["AttachedPolicies"] then M.AssertattachedPoliciesListType(struct["AttachedPolicies"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListAttachedUserPoliciesResponse_keys[k], "ListAttachedUserPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedUserPoliciesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListAttachedUserPolicies&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param AttachedPolicies [attachedPoliciesListType] &lt;p&gt;A list of the attached policies.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
function M.ListAttachedUserPoliciesResponse(Marker, AttachedPolicies, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedUserPoliciesResponse")
	local t = { 
		["Marker"] = Marker,
		["AttachedPolicies"] = AttachedPolicies,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListAttachedUserPoliciesResponse(t)
	return t
end

local ListMFADevicesRequest_keys = { "UserName" = true, "Marker" = true, "MaxItems" = true, nil }

function M.AssertListMFADevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMFADevicesRequest to be of type 'table'")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListMFADevicesRequest_keys[k], "ListMFADevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMFADevicesRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user whose MFA devices you want to list.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListMFADevicesRequest(UserName, Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMFADevicesRequest")
	local t = { 
		["UserName"] = UserName,
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListMFADevicesRequest(t)
	return t
end

local DuplicateCertificateException_keys = { "message" = true, nil }

function M.AssertDuplicateCertificateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateCertificateException to be of type 'table'")
	if struct["message"] then M.AssertduplicateCertificateMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateCertificateException_keys[k], "DuplicateCertificateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateCertificateException
-- &lt;p&gt;The request was rejected because the same certificate is associated with an IAM user in the account.&lt;/p&gt;
-- @param message [duplicateCertificateMessage] &lt;p&gt;The request was rejected because the same certificate is associated with an IAM user in the account.&lt;/p&gt;
function M.DuplicateCertificateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateCertificateException")
	local t = { 
		["message"] = message,
	}
	M.AssertDuplicateCertificateException(t)
	return t
end

local CredentialReportExpiredException_keys = { "message" = true, nil }

function M.AssertCredentialReportExpiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CredentialReportExpiredException to be of type 'table'")
	if struct["message"] then M.AssertcredentialReportExpiredExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(CredentialReportExpiredException_keys[k], "CredentialReportExpiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CredentialReportExpiredException
-- &lt;p&gt;The request was rejected because the most recent credential report has expired. To generate a new credential report, use &lt;a&gt;GenerateCredentialReport&lt;/a&gt;. For more information about credential report expiration, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html&quot;&gt;Getting Credential Reports&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param message [credentialReportExpiredExceptionMessage] &lt;p&gt;The request was rejected because the most recent credential report has expired. To generate a new credential report, use &lt;a&gt;GenerateCredentialReport&lt;/a&gt;. For more information about credential report expiration, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html&quot;&gt;Getting Credential Reports&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
function M.CredentialReportExpiredException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CredentialReportExpiredException")
	local t = { 
		["message"] = message,
	}
	M.AssertCredentialReportExpiredException(t)
	return t
end

local ResetServiceSpecificCredentialRequest_keys = { "UserName" = true, "ServiceSpecificCredentialId" = true, nil }

function M.AssertResetServiceSpecificCredentialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetServiceSpecificCredentialRequest to be of type 'table'")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["ServiceSpecificCredentialId"] then M.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	for k,_ in pairs(struct) do
		assert(ResetServiceSpecificCredentialRequest_keys[k], "ResetServiceSpecificCredentialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetServiceSpecificCredentialRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param ServiceSpecificCredentialId [serviceSpecificCredentialId] &lt;p&gt;The unique identifier of the service-specific credential.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: ServiceSpecificCredentialId
function M.ResetServiceSpecificCredentialRequest(UserName, ServiceSpecificCredentialId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetServiceSpecificCredentialRequest")
	local t = { 
		["UserName"] = UserName,
		["ServiceSpecificCredentialId"] = ServiceSpecificCredentialId,
	}
	M.AssertResetServiceSpecificCredentialRequest(t)
	return t
end

local ListSSHPublicKeysResponse_keys = { "Marker" = true, "SSHPublicKeys" = true, "IsTruncated" = true, nil }

function M.AssertListSSHPublicKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSSHPublicKeysResponse to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["SSHPublicKeys"] then M.AssertSSHPublicKeyListType(struct["SSHPublicKeys"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListSSHPublicKeysResponse_keys[k], "ListSSHPublicKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSSHPublicKeysResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListSSHPublicKeys&lt;/a&gt; request.&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param SSHPublicKeys [SSHPublicKeyListType] &lt;p&gt;A list of the SSH public keys assigned to IAM user.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
function M.ListSSHPublicKeysResponse(Marker, SSHPublicKeys, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSSHPublicKeysResponse")
	local t = { 
		["Marker"] = Marker,
		["SSHPublicKeys"] = SSHPublicKeys,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListSSHPublicKeysResponse(t)
	return t
end

local GetAccountSummaryResponse_keys = { "SummaryMap" = true, nil }

function M.AssertGetAccountSummaryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSummaryResponse to be of type 'table'")
	if struct["SummaryMap"] then M.AssertsummaryMapType(struct["SummaryMap"]) end
	for k,_ in pairs(struct) do
		assert(GetAccountSummaryResponse_keys[k], "GetAccountSummaryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSummaryResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetAccountSummary&lt;/a&gt; request. &lt;/p&gt;
-- @param SummaryMap [summaryMapType] &lt;p&gt;A set of key value pairs containing information about IAM entity usage and IAM quotas.&lt;/p&gt;
function M.GetAccountSummaryResponse(SummaryMap, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountSummaryResponse")
	local t = { 
		["SummaryMap"] = SummaryMap,
	}
	M.AssertGetAccountSummaryResponse(t)
	return t
end

local CreateUserRequest_keys = { "UserName" = true, "Path" = true, nil }

function M.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(CreateUserRequest_keys[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the user to create.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-. User names are not distinguished by case. For example, you cannot create users named both &quot;TESTUSER&quot; and &quot;testuser&quot;.&lt;/p&gt;
-- @param Path [pathType] &lt;p&gt; The path for the user name. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/).&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- Required parameter: UserName
function M.CreateUserRequest(UserName, Path, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserRequest")
	local t = { 
		["UserName"] = UserName,
		["Path"] = Path,
	}
	M.AssertCreateUserRequest(t)
	return t
end

local PolicyGroup_keys = { "GroupName" = true, "GroupId" = true, nil }

function M.AssertPolicyGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyGroup to be of type 'table'")
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["GroupId"] then M.AssertidType(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(PolicyGroup_keys[k], "PolicyGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyGroup
-- &lt;p&gt;Contains information about a group that a managed policy is attached to.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListEntitiesForPolicy&lt;/a&gt; action. &lt;/p&gt; &lt;p&gt;For more information about managed policies, refer to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The name (friendly name, not ARN) identifying the group.&lt;/p&gt;
-- @param GroupId [idType] &lt;p&gt;The stable and unique string identifying the group. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
function M.PolicyGroup(GroupName, GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyGroup")
	local t = { 
		["GroupName"] = GroupName,
		["GroupId"] = GroupId,
	}
	M.AssertPolicyGroup(t)
	return t
end

local ListPoliciesRequest_keys = { "Marker" = true, "Scope" = true, "OnlyAttached" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["Scope"] then M.AssertpolicyScopeType(struct["Scope"]) end
	if struct["OnlyAttached"] then M.AssertbooleanType(struct["OnlyAttached"]) end
	if struct["PathPrefix"] then M.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListPoliciesRequest_keys[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param Scope [policyScopeType] &lt;p&gt;The scope to use for filtering the results.&lt;/p&gt; &lt;p&gt;To list only AWS managed policies, set &lt;code&gt;Scope&lt;/code&gt; to &lt;code&gt;AWS&lt;/code&gt;. To list only the customer managed policies in your AWS account, set &lt;code&gt;Scope&lt;/code&gt; to &lt;code&gt;Local&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, or if it is set to &lt;code&gt;All&lt;/code&gt;, all policies are returned.&lt;/p&gt;
-- @param OnlyAttached [booleanType] &lt;p&gt;A flag to filter the results to only the attached policies.&lt;/p&gt; &lt;p&gt;When &lt;code&gt;OnlyAttached&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, the returned list contains only the policies that are attached to an IAM user, group, or role. When &lt;code&gt;OnlyAttached&lt;/code&gt; is &lt;code&gt;false&lt;/code&gt;, or when the parameter is not included, all policies are returned.&lt;/p&gt;
-- @param PathPrefix [policyPathType] &lt;p&gt;The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListPoliciesRequest(Marker, Scope, OnlyAttached, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesRequest")
	local t = { 
		["Marker"] = Marker,
		["Scope"] = Scope,
		["OnlyAttached"] = OnlyAttached,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListPoliciesRequest(t)
	return t
end

local CreateAccountAliasRequest_keys = { "AccountAlias" = true, nil }

function M.AssertCreateAccountAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountAliasRequest to be of type 'table'")
	assert(struct["AccountAlias"], "Expected key AccountAlias to exist in table")
	if struct["AccountAlias"] then M.AssertaccountAliasType(struct["AccountAlias"]) end
	for k,_ in pairs(struct) do
		assert(CreateAccountAliasRequest_keys[k], "CreateAccountAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountAliasRequest
--  
-- @param AccountAlias [accountAliasType] &lt;p&gt;The account alias to create.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.&lt;/p&gt;
-- Required parameter: AccountAlias
function M.CreateAccountAliasRequest(AccountAlias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountAliasRequest")
	local t = { 
		["AccountAlias"] = AccountAlias,
	}
	M.AssertCreateAccountAliasRequest(t)
	return t
end

local CreatePolicyRequest_keys = { "PolicyName" = true, "PolicyDocument" = true, "Description" = true, "Path" = true, nil }

function M.AssertCreatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyRequest to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["Description"] then M.AssertpolicyDescriptionType(struct["Description"]) end
	if struct["Path"] then M.AssertpolicyPathType(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyRequest_keys[k], "CreatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyRequest
--  
-- @param PolicyName [policyNameType] &lt;p&gt;The friendly name of the policy.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The JSON policy document that you want to use as the content for the new policy.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param Description [policyDescriptionType] &lt;p&gt;A friendly description of the policy.&lt;/p&gt; &lt;p&gt;Typically used to store information about the permissions defined in the policy. For example, &quot;Grants access to production DynamoDB tables.&quot;&lt;/p&gt; &lt;p&gt;The policy description is immutable. After a value is assigned, it cannot be changed.&lt;/p&gt;
-- @param Path [policyPathType] &lt;p&gt;The path for the policy.&lt;/p&gt; &lt;p&gt;For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/).&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.CreatePolicyRequest(PolicyName, PolicyDocument, Description, Path, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyRequest")
	local t = { 
		["PolicyName"] = PolicyName,
		["PolicyDocument"] = PolicyDocument,
		["Description"] = Description,
		["Path"] = Path,
	}
	M.AssertCreatePolicyRequest(t)
	return t
end

local ListVirtualMFADevicesResponse_keys = { "Marker" = true, "IsTruncated" = true, "VirtualMFADevices" = true, nil }

function M.AssertListVirtualMFADevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVirtualMFADevicesResponse to be of type 'table'")
	assert(struct["VirtualMFADevices"], "Expected key VirtualMFADevices to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	if struct["VirtualMFADevices"] then M.AssertvirtualMFADeviceListType(struct["VirtualMFADevices"]) end
	for k,_ in pairs(struct) do
		assert(ListVirtualMFADevicesResponse_keys[k], "ListVirtualMFADevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVirtualMFADevicesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListVirtualMFADevices&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- @param VirtualMFADevices [virtualMFADeviceListType] &lt;p&gt; The list of virtual MFA devices in the current account that match the &lt;code&gt;AssignmentStatus&lt;/code&gt; value that was passed in the request.&lt;/p&gt;
-- Required parameter: VirtualMFADevices
function M.ListVirtualMFADevicesResponse(Marker, IsTruncated, VirtualMFADevices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVirtualMFADevicesResponse")
	local t = { 
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["VirtualMFADevices"] = VirtualMFADevices,
	}
	M.AssertListVirtualMFADevicesResponse(t)
	return t
end

local CreateRoleResponse_keys = { "Role" = true, nil }

function M.AssertCreateRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRoleResponse to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(CreateRoleResponse_keys[k], "CreateRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRoleResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateRole&lt;/a&gt; request. &lt;/p&gt;
-- @param Role [Role] &lt;p&gt;A structure containing details about the new role.&lt;/p&gt;
-- Required parameter: Role
function M.CreateRoleResponse(Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRoleResponse")
	local t = { 
		["Role"] = Role,
	}
	M.AssertCreateRoleResponse(t)
	return t
end

local UpdateServerCertificateRequest_keys = { "NewPath" = true, "NewServerCertificateName" = true, "ServerCertificateName" = true, nil }

function M.AssertUpdateServerCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerCertificateRequest to be of type 'table'")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	if struct["NewPath"] then M.AssertpathType(struct["NewPath"]) end
	if struct["NewServerCertificateName"] then M.AssertserverCertificateNameType(struct["NewServerCertificateName"]) end
	if struct["ServerCertificateName"] then M.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServerCertificateRequest_keys[k], "UpdateServerCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerCertificateRequest
--  
-- @param NewPath [pathType] &lt;p&gt;The new path for the server certificate. Include this only if you are updating the server certificate's path.&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param NewServerCertificateName [serverCertificateNameType] &lt;p&gt;The new name for the server certificate. Include this only if you are updating the server certificate's name. The name of the certificate cannot contain any spaces.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param ServerCertificateName [serverCertificateNameType] &lt;p&gt;The name of the server certificate that you want to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: ServerCertificateName
function M.UpdateServerCertificateRequest(NewPath, NewServerCertificateName, ServerCertificateName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerCertificateRequest")
	local t = { 
		["NewPath"] = NewPath,
		["NewServerCertificateName"] = NewServerCertificateName,
		["ServerCertificateName"] = ServerCertificateName,
	}
	M.AssertUpdateServerCertificateRequest(t)
	return t
end

local AttachGroupPolicyRequest_keys = { "GroupName" = true, "PolicyArn" = true, nil }

function M.AssertAttachGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(AttachGroupPolicyRequest_keys[k], "AttachGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachGroupPolicyRequest
--  
-- @param GroupName [groupNameType] &lt;p&gt;The name (friendly name, not ARN) of the group to attach the policy to.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy you want to attach.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: GroupName
-- Required parameter: PolicyArn
function M.AttachGroupPolicyRequest(GroupName, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachGroupPolicyRequest")
	local t = { 
		["GroupName"] = GroupName,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertAttachGroupPolicyRequest(t)
	return t
end

local ListAccountAliasesRequest_keys = { "Marker" = true, "MaxItems" = true, nil }

function M.AssertListAccountAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountAliasesRequest to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListAccountAliasesRequest_keys[k], "ListAccountAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountAliasesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListAccountAliasesRequest(Marker, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountAliasesRequest")
	local t = { 
		["Marker"] = Marker,
		["MaxItems"] = MaxItems,
	}
	M.AssertListAccountAliasesRequest(t)
	return t
end

local AddUserToGroupRequest_keys = { "UserName" = true, "GroupName" = true, nil }

function M.AssertAddUserToGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddUserToGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(AddUserToGroupRequest_keys[k], "AddUserToGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddUserToGroupRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user to add.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param GroupName [groupNameType] &lt;p&gt;The name of the group to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: GroupName
-- Required parameter: UserName
function M.AddUserToGroupRequest(UserName, GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddUserToGroupRequest")
	local t = { 
		["UserName"] = UserName,
		["GroupName"] = GroupName,
	}
	M.AssertAddUserToGroupRequest(t)
	return t
end

local DetachUserPolicyRequest_keys = { "UserName" = true, "PolicyArn" = true, nil }

function M.AssertDetachUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(DetachUserPolicyRequest_keys[k], "DetachUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachUserPolicyRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name (friendly name, not ARN) of the IAM user to detach the policy from.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy you want to detach.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: PolicyArn
function M.DetachUserPolicyRequest(UserName, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachUserPolicyRequest")
	local t = { 
		["UserName"] = UserName,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertDetachUserPolicyRequest(t)
	return t
end

local ListRolesResponse_keys = { "Marker" = true, "IsTruncated" = true, "Roles" = true, nil }

function M.AssertListRolesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRolesResponse to be of type 'table'")
	assert(struct["Roles"], "Expected key Roles to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Roles"] then M.AssertroleListType(struct["Roles"]) end
	for k,_ in pairs(struct) do
		assert(ListRolesResponse_keys[k], "ListRolesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRolesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListRoles&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- @param Roles [roleListType] &lt;p&gt;A list of roles.&lt;/p&gt;
-- Required parameter: Roles
function M.ListRolesResponse(Marker, IsTruncated, Roles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRolesResponse")
	local t = { 
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["Roles"] = Roles,
	}
	M.AssertListRolesResponse(t)
	return t
end

local MFADevice_keys = { "UserName" = true, "SerialNumber" = true, "EnableDate" = true, nil }

function M.AssertMFADevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MFADevice to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	assert(struct["EnableDate"], "Expected key EnableDate to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["SerialNumber"] then M.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["EnableDate"] then M.AssertdateType(struct["EnableDate"]) end
	for k,_ in pairs(struct) do
		assert(MFADevice_keys[k], "MFADevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MFADevice
-- &lt;p&gt;Contains information about an MFA device.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListMFADevices&lt;/a&gt; action.&lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The user with whom the MFA device is associated.&lt;/p&gt;
-- @param SerialNumber [serialNumberType] &lt;p&gt;The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.&lt;/p&gt;
-- @param EnableDate [dateType] &lt;p&gt;The date when the MFA device was enabled for the user.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SerialNumber
-- Required parameter: EnableDate
function M.MFADevice(UserName, SerialNumber, EnableDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MFADevice")
	local t = { 
		["UserName"] = UserName,
		["SerialNumber"] = SerialNumber,
		["EnableDate"] = EnableDate,
	}
	M.AssertMFADevice(t)
	return t
end

local InvalidUserTypeException_keys = { "message" = true, nil }

function M.AssertInvalidUserTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUserTypeException to be of type 'table'")
	if struct["message"] then M.AssertinvalidUserTypeMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidUserTypeException_keys[k], "InvalidUserTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUserTypeException
-- &lt;p&gt;The request was rejected because the type of user for the transaction was incorrect.&lt;/p&gt;
-- @param message [invalidUserTypeMessage] &lt;p&gt;The request was rejected because the type of user for the transaction was incorrect.&lt;/p&gt;
function M.InvalidUserTypeException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidUserTypeException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidUserTypeException(t)
	return t
end

local GetRoleResponse_keys = { "Role" = true, nil }

function M.AssertGetRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRoleResponse to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(GetRoleResponse_keys[k], "GetRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRoleResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetRole&lt;/a&gt; request. &lt;/p&gt;
-- @param Role [Role] &lt;p&gt;A structure containing details about the IAM role.&lt;/p&gt;
-- Required parameter: Role
function M.GetRoleResponse(Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRoleResponse")
	local t = { 
		["Role"] = Role,
	}
	M.AssertGetRoleResponse(t)
	return t
end

local ServiceSpecificCredential_keys = { "UserName" = true, "Status" = true, "CreateDate" = true, "ServiceName" = true, "ServicePassword" = true, "ServiceSpecificCredentialId" = true, "ServiceUserName" = true, nil }

function M.AssertServiceSpecificCredential(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceSpecificCredential to be of type 'table'")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	assert(struct["ServiceName"], "Expected key ServiceName to exist in table")
	assert(struct["ServiceUserName"], "Expected key ServiceUserName to exist in table")
	assert(struct["ServicePassword"], "Expected key ServicePassword to exist in table")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["ServiceName"] then M.AssertserviceName(struct["ServiceName"]) end
	if struct["ServicePassword"] then M.AssertservicePassword(struct["ServicePassword"]) end
	if struct["ServiceSpecificCredentialId"] then M.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	if struct["ServiceUserName"] then M.AssertserviceUserName(struct["ServiceUserName"]) end
	for k,_ in pairs(struct) do
		assert(ServiceSpecificCredential_keys[k], "ServiceSpecificCredential contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceSpecificCredential
-- &lt;p&gt;Contains the details of a service specific credential.&lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the service-specific credential.&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status of the service-specific credential. &lt;code&gt;Active&lt;/code&gt; means the key is valid for API calls, while &lt;code&gt;Inactive&lt;/code&gt; means it is not.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the service-specific credential were created.&lt;/p&gt;
-- @param ServiceName [serviceName] &lt;p&gt;The name of the service associated with the service-specific credential.&lt;/p&gt;
-- @param ServicePassword [servicePassword] &lt;p&gt;The generated password for the service-specific credential.&lt;/p&gt;
-- @param ServiceSpecificCredentialId [serviceSpecificCredentialId] &lt;p&gt;The unique identifier for the service-specific credential.&lt;/p&gt;
-- @param ServiceUserName [serviceUserName] &lt;p&gt;The generated user name for the service-specific credential. This value is generated by combining the IAM user's name combined with the ID number of the AWS account, as in &lt;code&gt;jane-at-123456789012&lt;/code&gt;, for example. This value cannot be configured by the user.&lt;/p&gt;
-- Required parameter: CreateDate
-- Required parameter: ServiceName
-- Required parameter: ServiceUserName
-- Required parameter: ServicePassword
-- Required parameter: ServiceSpecificCredentialId
-- Required parameter: UserName
-- Required parameter: Status
function M.ServiceSpecificCredential(UserName, Status, CreateDate, ServiceName, ServicePassword, ServiceSpecificCredentialId, ServiceUserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceSpecificCredential")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["CreateDate"] = CreateDate,
		["ServiceName"] = ServiceName,
		["ServicePassword"] = ServicePassword,
		["ServiceSpecificCredentialId"] = ServiceSpecificCredentialId,
		["ServiceUserName"] = ServiceUserName,
	}
	M.AssertServiceSpecificCredential(t)
	return t
end

local UpdateSAMLProviderResponse_keys = { "SAMLProviderArn" = true, nil }

function M.AssertUpdateSAMLProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSAMLProviderResponse to be of type 'table'")
	if struct["SAMLProviderArn"] then M.AssertarnType(struct["SAMLProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSAMLProviderResponse_keys[k], "UpdateSAMLProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSAMLProviderResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;UpdateSAMLProvider&lt;/a&gt; request. &lt;/p&gt;
-- @param SAMLProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the SAML provider that was updated.&lt;/p&gt;
function M.UpdateSAMLProviderResponse(SAMLProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSAMLProviderResponse")
	local t = { 
		["SAMLProviderArn"] = SAMLProviderArn,
	}
	M.AssertUpdateSAMLProviderResponse(t)
	return t
end

local ServiceNotSupportedException_keys = { "message" = true, nil }

function M.AssertServiceNotSupportedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceNotSupportedException to be of type 'table'")
	if struct["message"] then M.AssertserviceNotSupportedMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceNotSupportedException_keys[k], "ServiceNotSupportedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceNotSupportedException
-- &lt;p&gt;The specified service does not support service-specific credentials.&lt;/p&gt;
-- @param message [serviceNotSupportedMessage] &lt;p&gt;The specified service does not support service-specific credentials.&lt;/p&gt;
function M.ServiceNotSupportedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceNotSupportedException")
	local t = { 
		["message"] = message,
	}
	M.AssertServiceNotSupportedException(t)
	return t
end

local PasswordPolicy_keys = { "AllowUsersToChangePassword" = true, "RequireLowercaseCharacters" = true, "RequireUppercaseCharacters" = true, "MinimumPasswordLength" = true, "RequireNumbers" = true, "PasswordReusePrevention" = true, "HardExpiry" = true, "RequireSymbols" = true, "MaxPasswordAge" = true, "ExpirePasswords" = true, nil }

function M.AssertPasswordPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordPolicy to be of type 'table'")
	if struct["AllowUsersToChangePassword"] then M.AssertbooleanType(struct["AllowUsersToChangePassword"]) end
	if struct["RequireLowercaseCharacters"] then M.AssertbooleanType(struct["RequireLowercaseCharacters"]) end
	if struct["RequireUppercaseCharacters"] then M.AssertbooleanType(struct["RequireUppercaseCharacters"]) end
	if struct["MinimumPasswordLength"] then M.AssertminimumPasswordLengthType(struct["MinimumPasswordLength"]) end
	if struct["RequireNumbers"] then M.AssertbooleanType(struct["RequireNumbers"]) end
	if struct["PasswordReusePrevention"] then M.AssertpasswordReusePreventionType(struct["PasswordReusePrevention"]) end
	if struct["HardExpiry"] then M.AssertbooleanObjectType(struct["HardExpiry"]) end
	if struct["RequireSymbols"] then M.AssertbooleanType(struct["RequireSymbols"]) end
	if struct["MaxPasswordAge"] then M.AssertmaxPasswordAgeType(struct["MaxPasswordAge"]) end
	if struct["ExpirePasswords"] then M.AssertbooleanType(struct["ExpirePasswords"]) end
	for k,_ in pairs(struct) do
		assert(PasswordPolicy_keys[k], "PasswordPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordPolicy
-- &lt;p&gt;Contains information about the account password policy.&lt;/p&gt; &lt;p&gt; This data type is used as a response element in the &lt;a&gt;GetAccountPasswordPolicy&lt;/a&gt; action. &lt;/p&gt;
-- @param AllowUsersToChangePassword [booleanType] &lt;p&gt;Specifies whether IAM users are allowed to change their own password.&lt;/p&gt;
-- @param RequireLowercaseCharacters [booleanType] &lt;p&gt;Specifies whether to require lowercase characters for IAM user passwords.&lt;/p&gt;
-- @param RequireUppercaseCharacters [booleanType] &lt;p&gt;Specifies whether to require uppercase characters for IAM user passwords.&lt;/p&gt;
-- @param MinimumPasswordLength [minimumPasswordLengthType] &lt;p&gt;Minimum length to require for IAM user passwords.&lt;/p&gt;
-- @param RequireNumbers [booleanType] &lt;p&gt;Specifies whether to require numbers for IAM user passwords.&lt;/p&gt;
-- @param PasswordReusePrevention [passwordReusePreventionType] &lt;p&gt;Specifies the number of previous passwords that IAM users are prevented from reusing.&lt;/p&gt;
-- @param HardExpiry [booleanObjectType] &lt;p&gt;Specifies whether IAM users are prevented from setting a new password after their password has expired.&lt;/p&gt;
-- @param RequireSymbols [booleanType] &lt;p&gt;Specifies whether to require symbols for IAM user passwords.&lt;/p&gt;
-- @param MaxPasswordAge [maxPasswordAgeType] &lt;p&gt;The number of days that an IAM user password is valid.&lt;/p&gt;
-- @param ExpirePasswords [booleanType] &lt;p&gt;Indicates whether passwords in the account expire. Returns true if MaxPasswordAge is contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.&lt;/p&gt;
function M.PasswordPolicy(AllowUsersToChangePassword, RequireLowercaseCharacters, RequireUppercaseCharacters, MinimumPasswordLength, RequireNumbers, PasswordReusePrevention, HardExpiry, RequireSymbols, MaxPasswordAge, ExpirePasswords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PasswordPolicy")
	local t = { 
		["AllowUsersToChangePassword"] = AllowUsersToChangePassword,
		["RequireLowercaseCharacters"] = RequireLowercaseCharacters,
		["RequireUppercaseCharacters"] = RequireUppercaseCharacters,
		["MinimumPasswordLength"] = MinimumPasswordLength,
		["RequireNumbers"] = RequireNumbers,
		["PasswordReusePrevention"] = PasswordReusePrevention,
		["HardExpiry"] = HardExpiry,
		["RequireSymbols"] = RequireSymbols,
		["MaxPasswordAge"] = MaxPasswordAge,
		["ExpirePasswords"] = ExpirePasswords,
	}
	M.AssertPasswordPolicy(t)
	return t
end

local ListMFADevicesResponse_keys = { "Marker" = true, "MFADevices" = true, "IsTruncated" = true, nil }

function M.AssertListMFADevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMFADevicesResponse to be of type 'table'")
	assert(struct["MFADevices"], "Expected key MFADevices to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["MFADevices"] then M.AssertmfaDeviceListType(struct["MFADevices"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListMFADevicesResponse_keys[k], "ListMFADevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMFADevicesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListMFADevices&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param MFADevices [mfaDeviceListType] &lt;p&gt;A list of MFA devices.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: MFADevices
function M.ListMFADevicesResponse(Marker, MFADevices, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMFADevicesResponse")
	local t = { 
		["Marker"] = Marker,
		["MFADevices"] = MFADevices,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListMFADevicesResponse(t)
	return t
end

local GetSSHPublicKeyResponse_keys = { "SSHPublicKey" = true, nil }

function M.AssertGetSSHPublicKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSSHPublicKeyResponse to be of type 'table'")
	if struct["SSHPublicKey"] then M.AssertSSHPublicKey(struct["SSHPublicKey"]) end
	for k,_ in pairs(struct) do
		assert(GetSSHPublicKeyResponse_keys[k], "GetSSHPublicKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSSHPublicKeyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetSSHPublicKey&lt;/a&gt; request.&lt;/p&gt;
-- @param SSHPublicKey [SSHPublicKey] &lt;p&gt;A structure containing details about the SSH public key.&lt;/p&gt;
function M.GetSSHPublicKeyResponse(SSHPublicKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSSHPublicKeyResponse")
	local t = { 
		["SSHPublicKey"] = SSHPublicKey,
	}
	M.AssertGetSSHPublicKeyResponse(t)
	return t
end

local ListAccessKeysResponse_keys = { "Marker" = true, "AccessKeyMetadata" = true, "IsTruncated" = true, nil }

function M.AssertListAccessKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccessKeysResponse to be of type 'table'")
	assert(struct["AccessKeyMetadata"], "Expected key AccessKeyMetadata to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["AccessKeyMetadata"] then M.AssertaccessKeyMetadataListType(struct["AccessKeyMetadata"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(ListAccessKeysResponse_keys[k], "ListAccessKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccessKeysResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListAccessKeys&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param AccessKeyMetadata [accessKeyMetadataListType] &lt;p&gt;A list of objects containing metadata about the access keys.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- Required parameter: AccessKeyMetadata
function M.ListAccessKeysResponse(Marker, AccessKeyMetadata, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccessKeysResponse")
	local t = { 
		["Marker"] = Marker,
		["AccessKeyMetadata"] = AccessKeyMetadata,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertListAccessKeysResponse(t)
	return t
end

local PasswordPolicyViolationException_keys = { "message" = true, nil }

function M.AssertPasswordPolicyViolationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordPolicyViolationException to be of type 'table'")
	if struct["message"] then M.AssertpasswordPolicyViolationMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PasswordPolicyViolationException_keys[k], "PasswordPolicyViolationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordPolicyViolationException
-- &lt;p&gt;The request was rejected because the provided password did not meet the requirements imposed by the account password policy.&lt;/p&gt;
-- @param message [passwordPolicyViolationMessage] &lt;p&gt;The request was rejected because the provided password did not meet the requirements imposed by the account password policy.&lt;/p&gt;
function M.PasswordPolicyViolationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PasswordPolicyViolationException")
	local t = { 
		["message"] = message,
	}
	M.AssertPasswordPolicyViolationException(t)
	return t
end

local PolicyUser_keys = { "UserName" = true, "UserId" = true, nil }

function M.AssertPolicyUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyUser to be of type 'table'")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["UserId"] then M.AssertidType(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(PolicyUser_keys[k], "PolicyUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyUser
-- &lt;p&gt;Contains information about a user that a managed policy is attached to.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListEntitiesForPolicy&lt;/a&gt; action. &lt;/p&gt; &lt;p&gt;For more information about managed policies, refer to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The name (friendly name, not ARN) identifying the user.&lt;/p&gt;
-- @param UserId [idType] &lt;p&gt;The stable and unique string identifying the user. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
function M.PolicyUser(UserName, UserId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyUser")
	local t = { 
		["UserName"] = UserName,
		["UserId"] = UserId,
	}
	M.AssertPolicyUser(t)
	return t
end

local ListGroupsRequest_keys = { "Marker" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsRequest to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then M.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupsRequest_keys[k], "ListGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param PathPrefix [pathPrefixType] &lt;p&gt; The path prefix for filtering the results. For example, the prefix &lt;code&gt;/division_abc/subdivision_xyz/&lt;/code&gt; gets all groups whose path starts with &lt;code&gt;/division_abc/subdivision_xyz/&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/), listing all groups. This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
function M.ListGroupsRequest(Marker, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsRequest")
	local t = { 
		["Marker"] = Marker,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListGroupsRequest(t)
	return t
end

local DetachGroupPolicyRequest_keys = { "GroupName" = true, "PolicyArn" = true, nil }

function M.AssertDetachGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(DetachGroupPolicyRequest_keys[k], "DetachGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachGroupPolicyRequest
--  
-- @param GroupName [groupNameType] &lt;p&gt;The name (friendly name, not ARN) of the IAM group to detach the policy from.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy you want to detach.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: GroupName
-- Required parameter: PolicyArn
function M.DetachGroupPolicyRequest(GroupName, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachGroupPolicyRequest")
	local t = { 
		["GroupName"] = GroupName,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertDetachGroupPolicyRequest(t)
	return t
end

local Statement_keys = { "SourcePolicyId" = true, "StartPosition" = true, "SourcePolicyType" = true, "EndPosition" = true, nil }

function M.AssertStatement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Statement to be of type 'table'")
	if struct["SourcePolicyId"] then M.AssertPolicyIdentifierType(struct["SourcePolicyId"]) end
	if struct["StartPosition"] then M.AssertPosition(struct["StartPosition"]) end
	if struct["SourcePolicyType"] then M.AssertPolicySourceType(struct["SourcePolicyType"]) end
	if struct["EndPosition"] then M.AssertPosition(struct["EndPosition"]) end
	for k,_ in pairs(struct) do
		assert(Statement_keys[k], "Statement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Statement
-- &lt;p&gt;Contains a reference to a &lt;code&gt;Statement&lt;/code&gt; element in a policy document that determines the result of the simulation.&lt;/p&gt; &lt;p&gt;This data type is used by the &lt;code&gt;MatchedStatements&lt;/code&gt; member of the &lt;code&gt; &lt;a&gt;EvaluationResult&lt;/a&gt; &lt;/code&gt; type.&lt;/p&gt;
-- @param SourcePolicyId [PolicyIdentifierType] &lt;p&gt;The identifier of the policy that was provided as an input.&lt;/p&gt;
-- @param StartPosition [Position] &lt;p&gt;The row and column of the beginning of the &lt;code&gt;Statement&lt;/code&gt; in an IAM policy.&lt;/p&gt;
-- @param SourcePolicyType [PolicySourceType] &lt;p&gt;The type of the policy.&lt;/p&gt;
-- @param EndPosition [Position] &lt;p&gt;The row and column of the end of a &lt;code&gt;Statement&lt;/code&gt; in an IAM policy.&lt;/p&gt;
function M.Statement(SourcePolicyId, StartPosition, SourcePolicyType, EndPosition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Statement")
	local t = { 
		["SourcePolicyId"] = SourcePolicyId,
		["StartPosition"] = StartPosition,
		["SourcePolicyType"] = SourcePolicyType,
		["EndPosition"] = EndPosition,
	}
	M.AssertStatement(t)
	return t
end

local PutGroupPolicyRequest_keys = { "GroupName" = true, "PolicyDocument" = true, "PolicyName" = true, nil }

function M.AssertPutGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyDocument"] then M.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(PutGroupPolicyRequest_keys[k], "PutGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutGroupPolicyRequest
--  
-- @param GroupName [groupNameType] &lt;p&gt;The name of the group to associate the policy with.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyDocument [policyDocumentType] &lt;p&gt;The policy document.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy document.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: GroupName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.PutGroupPolicyRequest(GroupName, PolicyDocument, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutGroupPolicyRequest")
	local t = { 
		["GroupName"] = GroupName,
		["PolicyDocument"] = PolicyDocument,
		["PolicyName"] = PolicyName,
	}
	M.AssertPutGroupPolicyRequest(t)
	return t
end

local GetRoleRequest_keys = { "RoleName" = true, nil }

function M.AssertGetRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	for k,_ in pairs(struct) do
		assert(GetRoleRequest_keys[k], "GetRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRoleRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name of the IAM role to get information about.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- Required parameter: RoleName
function M.GetRoleRequest(RoleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRoleRequest")
	local t = { 
		["RoleName"] = RoleName,
	}
	M.AssertGetRoleRequest(t)
	return t
end

local CreateServiceLinkedRoleRequest_keys = { "AWSServiceName" = true, "Description" = true, "CustomSuffix" = true, nil }

function M.AssertCreateServiceLinkedRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceLinkedRoleRequest to be of type 'table'")
	assert(struct["AWSServiceName"], "Expected key AWSServiceName to exist in table")
	if struct["AWSServiceName"] then M.AssertgroupNameType(struct["AWSServiceName"]) end
	if struct["Description"] then M.AssertroleDescriptionType(struct["Description"]) end
	if struct["CustomSuffix"] then M.AssertcustomSuffixType(struct["CustomSuffix"]) end
	for k,_ in pairs(struct) do
		assert(CreateServiceLinkedRoleRequest_keys[k], "CreateServiceLinkedRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceLinkedRoleRequest
--  
-- @param AWSServiceName [groupNameType] &lt;p&gt;The AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: &lt;code&gt;elasticbeanstalk.amazonaws.com&lt;/code&gt; &lt;/p&gt;
-- @param Description [roleDescriptionType] &lt;p&gt;The description of the role.&lt;/p&gt;
-- @param CustomSuffix [customSuffixType] &lt;p&gt;A string that you provide, which is combined with the service name to form the complete role name. If you make multiple requests for the same service, then you must supply a different &lt;code&gt;CustomSuffix&lt;/code&gt; for each request. Otherwise the request fails with a duplicate role name error. For example, you could add &lt;code&gt;-1&lt;/code&gt; or &lt;code&gt;-debug&lt;/code&gt; to the suffix.&lt;/p&gt;
-- Required parameter: AWSServiceName
function M.CreateServiceLinkedRoleRequest(AWSServiceName, Description, CustomSuffix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceLinkedRoleRequest")
	local t = { 
		["AWSServiceName"] = AWSServiceName,
		["Description"] = Description,
		["CustomSuffix"] = CustomSuffix,
	}
	M.AssertCreateServiceLinkedRoleRequest(t)
	return t
end

local DeleteVirtualMFADeviceRequest_keys = { "SerialNumber" = true, nil }

function M.AssertDeleteVirtualMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVirtualMFADeviceRequest to be of type 'table'")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	if struct["SerialNumber"] then M.AssertserialNumberType(struct["SerialNumber"]) end
	for k,_ in pairs(struct) do
		assert(DeleteVirtualMFADeviceRequest_keys[k], "DeleteVirtualMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVirtualMFADeviceRequest
--  
-- @param SerialNumber [serialNumberType] &lt;p&gt;The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-&lt;/p&gt;
-- Required parameter: SerialNumber
function M.DeleteVirtualMFADeviceRequest(SerialNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVirtualMFADeviceRequest")
	local t = { 
		["SerialNumber"] = SerialNumber,
	}
	M.AssertDeleteVirtualMFADeviceRequest(t)
	return t
end

local AddRoleToInstanceProfileRequest_keys = { "RoleName" = true, "InstanceProfileName" = true, nil }

function M.AssertAddRoleToInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddRoleToInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["InstanceProfileName"] then M.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(AddRoleToInstanceProfileRequest_keys[k], "AddRoleToInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddRoleToInstanceProfileRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role to add.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param InstanceProfileName [instanceProfileNameType] &lt;p&gt;The name of the instance profile to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: InstanceProfileName
-- Required parameter: RoleName
function M.AddRoleToInstanceProfileRequest(RoleName, InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddRoleToInstanceProfileRequest")
	local t = { 
		["RoleName"] = RoleName,
		["InstanceProfileName"] = InstanceProfileName,
	}
	M.AssertAddRoleToInstanceProfileRequest(t)
	return t
end

local GetAccessKeyLastUsedResponse_keys = { "UserName" = true, "AccessKeyLastUsed" = true, nil }

function M.AssertGetAccessKeyLastUsedResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccessKeyLastUsedResponse to be of type 'table'")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["AccessKeyLastUsed"] then M.AssertAccessKeyLastUsed(struct["AccessKeyLastUsed"]) end
	for k,_ in pairs(struct) do
		assert(GetAccessKeyLastUsedResponse_keys[k], "GetAccessKeyLastUsedResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccessKeyLastUsedResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetAccessKeyLastUsed&lt;/a&gt; request. It is also returned as a member of the &lt;a&gt;AccessKeyMetaData&lt;/a&gt; structure returned by the &lt;a&gt;ListAccessKeys&lt;/a&gt; action.&lt;/p&gt;
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the AWS IAM user that owns this access key.&lt;/p&gt; &lt;p/&gt;
-- @param AccessKeyLastUsed [AccessKeyLastUsed] &lt;p&gt;Contains information about the last time the access key was used.&lt;/p&gt;
function M.GetAccessKeyLastUsedResponse(UserName, AccessKeyLastUsed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccessKeyLastUsedResponse")
	local t = { 
		["UserName"] = UserName,
		["AccessKeyLastUsed"] = AccessKeyLastUsed,
	}
	M.AssertGetAccessKeyLastUsedResponse(t)
	return t
end

local Position_keys = { "Column" = true, "Line" = true, nil }

function M.AssertPosition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Position to be of type 'table'")
	if struct["Column"] then M.AssertColumnNumber(struct["Column"]) end
	if struct["Line"] then M.AssertLineNumber(struct["Line"]) end
	for k,_ in pairs(struct) do
		assert(Position_keys[k], "Position contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Position
-- &lt;p&gt;Contains the row and column of a location of a &lt;code&gt;Statement&lt;/code&gt; element in a policy document.&lt;/p&gt; &lt;p&gt;This data type is used as a member of the &lt;code&gt; &lt;a&gt;Statement&lt;/a&gt; &lt;/code&gt; type.&lt;/p&gt;
-- @param Column [ColumnNumber] &lt;p&gt;The column in the line containing the specified position in the document.&lt;/p&gt;
-- @param Line [LineNumber] &lt;p&gt;The line containing the specified position in the document.&lt;/p&gt;
function M.Position(Column, Line, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Position")
	local t = { 
		["Column"] = Column,
		["Line"] = Line,
	}
	M.AssertPosition(t)
	return t
end

local UploadServerCertificateRequest_keys = { "Path" = true, "CertificateBody" = true, "PrivateKey" = true, "ServerCertificateName" = true, "CertificateChain" = true, nil }

function M.AssertUploadServerCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadServerCertificateRequest to be of type 'table'")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	assert(struct["CertificateBody"], "Expected key CertificateBody to exist in table")
	assert(struct["PrivateKey"], "Expected key PrivateKey to exist in table")
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["CertificateBody"] then M.AssertcertificateBodyType(struct["CertificateBody"]) end
	if struct["PrivateKey"] then M.AssertprivateKeyType(struct["PrivateKey"]) end
	if struct["ServerCertificateName"] then M.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	if struct["CertificateChain"] then M.AssertcertificateChainType(struct["CertificateChain"]) end
	for k,_ in pairs(struct) do
		assert(UploadServerCertificateRequest_keys[k], "UploadServerCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadServerCertificateRequest
--  
-- @param Path [pathType] &lt;p&gt;The path for the server certificate. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/). This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt; &lt;note&gt; &lt;p&gt; If you are uploading a server certificate specifically for use with Amazon CloudFront distributions, you must specify a path using the &lt;code&gt;--path&lt;/code&gt; option. The path must begin with &lt;code&gt;/cloudfront&lt;/code&gt; and must include a trailing slash (for example, &lt;code&gt;/cloudfront/test/&lt;/code&gt;).&lt;/p&gt; &lt;/note&gt;
-- @param CertificateBody [certificateBodyType] &lt;p&gt;The contents of the public key certificate in PEM-encoded format.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param PrivateKey [privateKeyType] &lt;p&gt;The contents of the private key in PEM-encoded format.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param ServerCertificateName [serverCertificateNameType] &lt;p&gt;The name for the server certificate. Do not include the path in this value. The name of the certificate cannot contain any spaces.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param CertificateChain [certificateChainType] &lt;p&gt;The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- Required parameter: ServerCertificateName
-- Required parameter: CertificateBody
-- Required parameter: PrivateKey
function M.UploadServerCertificateRequest(Path, CertificateBody, PrivateKey, ServerCertificateName, CertificateChain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadServerCertificateRequest")
	local t = { 
		["Path"] = Path,
		["CertificateBody"] = CertificateBody,
		["PrivateKey"] = PrivateKey,
		["ServerCertificateName"] = ServerCertificateName,
		["CertificateChain"] = CertificateChain,
	}
	M.AssertUploadServerCertificateRequest(t)
	return t
end

local LoginProfile_keys = { "UserName" = true, "CreateDate" = true, "PasswordResetRequired" = true, nil }

function M.AssertLoginProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoginProfile to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["PasswordResetRequired"] then M.AssertbooleanType(struct["PasswordResetRequired"]) end
	for k,_ in pairs(struct) do
		assert(LoginProfile_keys[k], "LoginProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoginProfile
-- &lt;p&gt;Contains the user name and password create date for a user.&lt;/p&gt; &lt;p&gt; This data type is used as a response element in the &lt;a&gt;CreateLoginProfile&lt;/a&gt; and &lt;a&gt;GetLoginProfile&lt;/a&gt; actions. &lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The name of the user, which can be used for signing in to the AWS Management Console.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date when the password for the user was created.&lt;/p&gt;
-- @param PasswordResetRequired [booleanType] &lt;p&gt;Specifies whether the user is required to set a new password on next sign-in.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: CreateDate
function M.LoginProfile(UserName, CreateDate, PasswordResetRequired, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoginProfile")
	local t = { 
		["UserName"] = UserName,
		["CreateDate"] = CreateDate,
		["PasswordResetRequired"] = PasswordResetRequired,
	}
	M.AssertLoginProfile(t)
	return t
end

local CreateAccessKeyRequest_keys = { "UserName" = true, nil }

function M.AssertCreateAccessKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccessKeyRequest to be of type 'table'")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(CreateAccessKeyRequest_keys[k], "CreateAccessKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccessKeyRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the IAM user that the new key will belong to.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
function M.CreateAccessKeyRequest(UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccessKeyRequest")
	local t = { 
		["UserName"] = UserName,
	}
	M.AssertCreateAccessKeyRequest(t)
	return t
end

local ContextEntry_keys = { "ContextKeyValues" = true, "ContextKeyType" = true, "ContextKeyName" = true, nil }

function M.AssertContextEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContextEntry to be of type 'table'")
	if struct["ContextKeyValues"] then M.AssertContextKeyValueListType(struct["ContextKeyValues"]) end
	if struct["ContextKeyType"] then M.AssertContextKeyTypeEnum(struct["ContextKeyType"]) end
	if struct["ContextKeyName"] then M.AssertContextKeyNameType(struct["ContextKeyName"]) end
	for k,_ in pairs(struct) do
		assert(ContextEntry_keys[k], "ContextEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContextEntry
-- &lt;p&gt;Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the &lt;code&gt;Condition&lt;/code&gt; elements of the input policies.&lt;/p&gt; &lt;p&gt;This data type is used as an input parameter to &lt;code&gt; &lt;a&gt;SimulateCustomPolicy&lt;/a&gt; &lt;/code&gt; and &lt;code&gt; &lt;a&gt;SimulateCustomPolicy&lt;/a&gt; &lt;/code&gt;.&lt;/p&gt;
-- @param ContextKeyValues [ContextKeyValueListType] &lt;p&gt;The value (or values, if the condition context key supports multiple values) to provide to the simulation for use when the key is referenced by a &lt;code&gt;Condition&lt;/code&gt; element in an input policy.&lt;/p&gt;
-- @param ContextKeyType [ContextKeyTypeEnum] &lt;p&gt;The data type of the value (or values) specified in the &lt;code&gt;ContextKeyValues&lt;/code&gt; parameter.&lt;/p&gt;
-- @param ContextKeyName [ContextKeyNameType] &lt;p&gt;The full name of a condition context key, including the service prefix. For example, &lt;code&gt;aws:SourceIp&lt;/code&gt; or &lt;code&gt;s3:VersionId&lt;/code&gt;.&lt;/p&gt;
function M.ContextEntry(ContextKeyValues, ContextKeyType, ContextKeyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContextEntry")
	local t = { 
		["ContextKeyValues"] = ContextKeyValues,
		["ContextKeyType"] = ContextKeyType,
		["ContextKeyName"] = ContextKeyName,
	}
	M.AssertContextEntry(t)
	return t
end

local PolicyRole_keys = { "RoleName" = true, "RoleId" = true, nil }

function M.AssertPolicyRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyRole to be of type 'table'")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["RoleId"] then M.AssertidType(struct["RoleId"]) end
	for k,_ in pairs(struct) do
		assert(PolicyRole_keys[k], "PolicyRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyRole
-- &lt;p&gt;Contains information about a role that a managed policy is attached to.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListEntitiesForPolicy&lt;/a&gt; action. &lt;/p&gt; &lt;p&gt;For more information about managed policies, refer to &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html&quot;&gt;Managed Policies and Inline Policies&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- @param RoleName [roleNameType] &lt;p&gt;The name (friendly name, not ARN) identifying the role.&lt;/p&gt;
-- @param RoleId [idType] &lt;p&gt;The stable and unique string identifying the role. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt;
function M.PolicyRole(RoleName, RoleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyRole")
	local t = { 
		["RoleName"] = RoleName,
		["RoleId"] = RoleId,
	}
	M.AssertPolicyRole(t)
	return t
end

local CreateInstanceProfileRequest_keys = { "Path" = true, "InstanceProfileName" = true, nil }

function M.AssertCreateInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["InstanceProfileName"] then M.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(CreateInstanceProfileRequest_keys[k], "CreateInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceProfileRequest
--  
-- @param Path [pathType] &lt;p&gt; The path to the instance profile. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/).&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param InstanceProfileName [instanceProfileNameType] &lt;p&gt;The name of the instance profile to create.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: InstanceProfileName
function M.CreateInstanceProfileRequest(Path, InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceProfileRequest")
	local t = { 
		["Path"] = Path,
		["InstanceProfileName"] = InstanceProfileName,
	}
	M.AssertCreateInstanceProfileRequest(t)
	return t
end

local DeleteSSHPublicKeyRequest_keys = { "UserName" = true, "SSHPublicKeyId" = true, nil }

function M.AssertDeleteSSHPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSSHPublicKeyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["SSHPublicKeyId"] then M.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSSHPublicKeyRequest_keys[k], "DeleteSSHPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSSHPublicKeyRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the SSH public key.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param SSHPublicKeyId [publicKeyIdType] &lt;p&gt;The unique identifier for the SSH public key.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
function M.DeleteSSHPublicKeyRequest(UserName, SSHPublicKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSSHPublicKeyRequest")
	local t = { 
		["UserName"] = UserName,
		["SSHPublicKeyId"] = SSHPublicKeyId,
	}
	M.AssertDeleteSSHPublicKeyRequest(t)
	return t
end

local DeleteGroupRequest_keys = { "GroupName" = true, nil }

function M.AssertDeleteGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then M.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGroupRequest_keys[k], "DeleteGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupRequest
--  
-- @param GroupName [groupNameType] &lt;p&gt;The name of the IAM group to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: GroupName
function M.DeleteGroupRequest(GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupRequest")
	local t = { 
		["GroupName"] = GroupName,
	}
	M.AssertDeleteGroupRequest(t)
	return t
end

local CreatePolicyResponse_keys = { "Policy" = true, nil }

function M.AssertCreatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyResponse to be of type 'table'")
	if struct["Policy"] then M.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(CreatePolicyResponse_keys[k], "CreatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreatePolicy&lt;/a&gt; request. &lt;/p&gt;
-- @param Policy [Policy] &lt;p&gt;A structure containing details about the new policy.&lt;/p&gt;
function M.CreatePolicyResponse(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyResponse")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertCreatePolicyResponse(t)
	return t
end

local DetachRolePolicyRequest_keys = { "RoleName" = true, "PolicyArn" = true, nil }

function M.AssertDetachRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(DetachRolePolicyRequest_keys[k], "DetachRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachRolePolicyRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name (friendly name, not ARN) of the IAM role to detach the policy from.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy you want to detach.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: PolicyArn
function M.DetachRolePolicyRequest(RoleName, PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachRolePolicyRequest")
	local t = { 
		["RoleName"] = RoleName,
		["PolicyArn"] = PolicyArn,
	}
	M.AssertDetachRolePolicyRequest(t)
	return t
end

local UpdateSSHPublicKeyRequest_keys = { "UserName" = true, "Status" = true, "SSHPublicKeyId" = true, nil }

function M.AssertUpdateSSHPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSSHPublicKeyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["SSHPublicKeyId"] then M.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSSHPublicKeyRequest_keys[k], "UpdateSSHPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSSHPublicKeyRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the SSH public key.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status to assign to the SSH public key. &lt;code&gt;Active&lt;/code&gt; means the key can be used for authentication with an AWS CodeCommit repository. &lt;code&gt;Inactive&lt;/code&gt; means the key cannot be used.&lt;/p&gt;
-- @param SSHPublicKeyId [publicKeyIdType] &lt;p&gt;The unique identifier for the SSH public key.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
-- Required parameter: Status
function M.UpdateSSHPublicKeyRequest(UserName, Status, SSHPublicKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSSHPublicKeyRequest")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["SSHPublicKeyId"] = SSHPublicKeyId,
	}
	M.AssertUpdateSSHPublicKeyRequest(t)
	return t
end

local NoSuchEntityException_keys = { "message" = true, nil }

function M.AssertNoSuchEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchEntityException to be of type 'table'")
	if struct["message"] then M.AssertnoSuchEntityMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchEntityException_keys[k], "NoSuchEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchEntityException
-- &lt;p&gt;The request was rejected because it referenced an entity that does not exist. The error message describes the entity.&lt;/p&gt;
-- @param message [noSuchEntityMessage] &lt;p&gt;The request was rejected because it referenced an entity that does not exist. The error message describes the entity.&lt;/p&gt;
function M.NoSuchEntityException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchEntityException")
	local t = { 
		["message"] = message,
	}
	M.AssertNoSuchEntityException(t)
	return t
end

local RemoveRoleFromInstanceProfileRequest_keys = { "RoleName" = true, "InstanceProfileName" = true, nil }

function M.AssertRemoveRoleFromInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveRoleFromInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["InstanceProfileName"] then M.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(RemoveRoleFromInstanceProfileRequest_keys[k], "RemoveRoleFromInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveRoleFromInstanceProfileRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role to remove.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param InstanceProfileName [instanceProfileNameType] &lt;p&gt;The name of the instance profile to update.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: InstanceProfileName
-- Required parameter: RoleName
function M.RemoveRoleFromInstanceProfileRequest(RoleName, InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveRoleFromInstanceProfileRequest")
	local t = { 
		["RoleName"] = RoleName,
		["InstanceProfileName"] = InstanceProfileName,
	}
	M.AssertRemoveRoleFromInstanceProfileRequest(t)
	return t
end

local SimulatePrincipalPolicyRequest_keys = { "PolicySourceArn" = true, "ResourceHandlingOption" = true, "ContextEntries" = true, "CallerArn" = true, "ResourceArns" = true, "PolicyInputList" = true, "ResourcePolicy" = true, "MaxItems" = true, "Marker" = true, "ActionNames" = true, "ResourceOwner" = true, nil }

function M.AssertSimulatePrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SimulatePrincipalPolicyRequest to be of type 'table'")
	assert(struct["PolicySourceArn"], "Expected key PolicySourceArn to exist in table")
	assert(struct["ActionNames"], "Expected key ActionNames to exist in table")
	if struct["PolicySourceArn"] then M.AssertarnType(struct["PolicySourceArn"]) end
	if struct["ResourceHandlingOption"] then M.AssertResourceHandlingOptionType(struct["ResourceHandlingOption"]) end
	if struct["ContextEntries"] then M.AssertContextEntryListType(struct["ContextEntries"]) end
	if struct["CallerArn"] then M.AssertResourceNameType(struct["CallerArn"]) end
	if struct["ResourceArns"] then M.AssertResourceNameListType(struct["ResourceArns"]) end
	if struct["PolicyInputList"] then M.AssertSimulationPolicyListType(struct["PolicyInputList"]) end
	if struct["ResourcePolicy"] then M.AssertpolicyDocumentType(struct["ResourcePolicy"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["ActionNames"] then M.AssertActionNameListType(struct["ActionNames"]) end
	if struct["ResourceOwner"] then M.AssertResourceNameType(struct["ResourceOwner"]) end
	for k,_ in pairs(struct) do
		assert(SimulatePrincipalPolicyRequest_keys[k], "SimulatePrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SimulatePrincipalPolicyRequest
--  
-- @param PolicySourceArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to include in the simulation. If you specify a user, group, or role, the simulation includes all policies that are associated with that entity. If you specify a user, the simulation also includes all policies that are attached to any groups the user belongs to.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param ResourceHandlingOption [ResourceHandlingOptionType] &lt;p&gt;Specifies the type of simulation to run. Different APIs that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.&lt;/p&gt; &lt;p&gt;Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see &lt;a href=&quot;http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html&quot;&gt;Supported Platforms&lt;/a&gt; in the &lt;i&gt;AWS EC2 User Guide&lt;/i&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-Classic-InstanceStore&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-Classic-EBS&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, volume&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-VPC-InstanceStore&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, network-interface&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-VPC-InstanceStore-Subnet&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, network-interface, subnet&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-VPC-EBS&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, network-interface, volume&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;EC2-VPC-EBS-Subnet&lt;/b&gt; &lt;/p&gt; &lt;p&gt;instance, image, security-group, network-interface, subnet, volume&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ContextEntries [ContextEntryListType] &lt;p&gt;A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permission policies, the corresponding value is supplied.&lt;/p&gt;
-- @param CallerArn [ResourceNameType] &lt;p&gt;The ARN of the IAM user that you want to specify as the simulated caller of the APIs. If you do not specify a &lt;code&gt;CallerArn&lt;/code&gt;, it defaults to the ARN of the user that you specify in &lt;code&gt;PolicySourceArn&lt;/code&gt;, if you specified a user. If you include both a &lt;code&gt;PolicySourceArn&lt;/code&gt; (for example, &lt;code&gt;arn:aws:iam::123456789012:user/David&lt;/code&gt;) and a &lt;code&gt;CallerArn&lt;/code&gt; (for example, &lt;code&gt;arn:aws:iam::123456789012:user/Bob&lt;/code&gt;), the result is that you simulate calling the APIs as Bob, as if Bob had David's policies.&lt;/p&gt; &lt;p&gt;You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.&lt;/p&gt; &lt;p&gt; &lt;code&gt;CallerArn&lt;/code&gt; is required if you include a &lt;code&gt;ResourcePolicy&lt;/code&gt; and the &lt;code&gt;PolicySourceArn&lt;/code&gt; is not the ARN for an IAM user. This is required so that the resource-based policy's &lt;code&gt;Principal&lt;/code&gt; element has a value to use in evaluating the policy.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param ResourceArns [ResourceNameListType] &lt;p&gt;A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided then the value defaults to &lt;code&gt;*&lt;/code&gt; (all resources). Each API in the &lt;code&gt;ActionNames&lt;/code&gt; parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.&lt;/p&gt; &lt;p&gt;The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the &lt;code&gt;ResourcePolicy&lt;/code&gt; parameter.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param PolicyInputList [SimulationPolicyListType] &lt;p&gt;An optional list of additional policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param ResourcePolicy [policyDocumentType] &lt;p&gt;A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param ActionNames [ActionNameListType] &lt;p&gt;A list of names of API actions to evaluate in the simulation. Each action is evaluated for each resource. Each action must include the service identifier, such as &lt;code&gt;iam:CreateUser&lt;/code&gt;.&lt;/p&gt;
-- @param ResourceOwner [ResourceNameType] &lt;p&gt;An AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN, such as an S3 bucket or object. If &lt;code&gt;ResourceOwner&lt;/code&gt; is specified, it is also used as the account owner of any &lt;code&gt;ResourcePolicy&lt;/code&gt; included in the simulation. If the &lt;code&gt;ResourceOwner&lt;/code&gt; parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in &lt;code&gt;CallerArn&lt;/code&gt;. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user &lt;code&gt;CallerArn&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: PolicySourceArn
-- Required parameter: ActionNames
function M.SimulatePrincipalPolicyRequest(PolicySourceArn, ResourceHandlingOption, ContextEntries, CallerArn, ResourceArns, PolicyInputList, ResourcePolicy, MaxItems, Marker, ActionNames, ResourceOwner, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SimulatePrincipalPolicyRequest")
	local t = { 
		["PolicySourceArn"] = PolicySourceArn,
		["ResourceHandlingOption"] = ResourceHandlingOption,
		["ContextEntries"] = ContextEntries,
		["CallerArn"] = CallerArn,
		["ResourceArns"] = ResourceArns,
		["PolicyInputList"] = PolicyInputList,
		["ResourcePolicy"] = ResourcePolicy,
		["MaxItems"] = MaxItems,
		["Marker"] = Marker,
		["ActionNames"] = ActionNames,
		["ResourceOwner"] = ResourceOwner,
	}
	M.AssertSimulatePrincipalPolicyRequest(t)
	return t
end

local GetUserPolicyRequest_keys = { "UserName" = true, "PolicyName" = true, nil }

function M.AssertGetUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["UserName"] then M.AssertexistingUserNameType(struct["UserName"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(GetUserPolicyRequest_keys[k], "GetUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserPolicyRequest
--  
-- @param UserName [existingUserNameType] &lt;p&gt;The name of the user who the policy is associated with.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy document to get.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: PolicyName
function M.GetUserPolicyRequest(UserName, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserPolicyRequest")
	local t = { 
		["UserName"] = UserName,
		["PolicyName"] = PolicyName,
	}
	M.AssertGetUserPolicyRequest(t)
	return t
end

local GetRolePolicyRequest_keys = { "RoleName" = true, "PolicyName" = true, nil }

function M.AssertGetRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyName"] then M.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(GetRolePolicyRequest_keys[k], "GetRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRolePolicyRequest
--  
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role associated with the policy.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param PolicyName [policyNameType] &lt;p&gt;The name of the policy document to get.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: RoleName
-- Required parameter: PolicyName
function M.GetRolePolicyRequest(RoleName, PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRolePolicyRequest")
	local t = { 
		["RoleName"] = RoleName,
		["PolicyName"] = PolicyName,
	}
	M.AssertGetRolePolicyRequest(t)
	return t
end

local DeleteConflictException_keys = { "message" = true, nil }

function M.AssertDeleteConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConflictException to be of type 'table'")
	if struct["message"] then M.AssertdeleteConflictMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DeleteConflictException_keys[k], "DeleteConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConflictException
-- &lt;p&gt;The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.&lt;/p&gt;
-- @param message [deleteConflictMessage] &lt;p&gt;The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.&lt;/p&gt;
function M.DeleteConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertDeleteConflictException(t)
	return t
end

local CreateSAMLProviderRequest_keys = { "SAMLMetadataDocument" = true, "Name" = true, nil }

function M.AssertCreateSAMLProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSAMLProviderRequest to be of type 'table'")
	assert(struct["SAMLMetadataDocument"], "Expected key SAMLMetadataDocument to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SAMLMetadataDocument"] then M.AssertSAMLMetadataDocumentType(struct["SAMLMetadataDocument"]) end
	if struct["Name"] then M.AssertSAMLProviderNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSAMLProviderRequest_keys[k], "CreateSAMLProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSAMLProviderRequest
--  
-- @param SAMLMetadataDocument [SAMLMetadataDocumentType] &lt;p&gt;An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html&quot;&gt;About SAML 2.0-based Federation&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt; &lt;/p&gt;
-- @param Name [SAMLProviderNameType] &lt;p&gt;The name of the provider to create.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: SAMLMetadataDocument
-- Required parameter: Name
function M.CreateSAMLProviderRequest(SAMLMetadataDocument, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSAMLProviderRequest")
	local t = { 
		["SAMLMetadataDocument"] = SAMLMetadataDocument,
		["Name"] = Name,
	}
	M.AssertCreateSAMLProviderRequest(t)
	return t
end

local DeleteLoginProfileRequest_keys = { "UserName" = true, nil }

function M.AssertDeleteLoginProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoginProfileRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLoginProfileRequest_keys[k], "DeleteLoginProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoginProfileRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the user whose password you want to delete.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: UserName
function M.DeleteLoginProfileRequest(UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLoginProfileRequest")
	local t = { 
		["UserName"] = UserName,
	}
	M.AssertDeleteLoginProfileRequest(t)
	return t
end

local CreateVirtualMFADeviceRequest_keys = { "Path" = true, "VirtualMFADeviceName" = true, nil }

function M.AssertCreateVirtualMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVirtualMFADeviceRequest to be of type 'table'")
	assert(struct["VirtualMFADeviceName"], "Expected key VirtualMFADeviceName to exist in table")
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["VirtualMFADeviceName"] then M.AssertvirtualMFADeviceName(struct["VirtualMFADeviceName"]) end
	for k,_ in pairs(struct) do
		assert(CreateVirtualMFADeviceRequest_keys[k], "CreateVirtualMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVirtualMFADeviceRequest
--  
-- @param Path [pathType] &lt;p&gt; The path for the virtual MFA device. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;IAM User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;This parameter is optional. If it is not included, it defaults to a slash (/).&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param VirtualMFADeviceName [virtualMFADeviceName] &lt;p&gt;The name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: VirtualMFADeviceName
function M.CreateVirtualMFADeviceRequest(Path, VirtualMFADeviceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVirtualMFADeviceRequest")
	local t = { 
		["Path"] = Path,
		["VirtualMFADeviceName"] = VirtualMFADeviceName,
	}
	M.AssertCreateVirtualMFADeviceRequest(t)
	return t
end

local User_keys = { "UserName" = true, "PasswordLastUsed" = true, "CreateDate" = true, "UserId" = true, "Path" = true, "Arn" = true, nil }

function M.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["PasswordLastUsed"] then M.AssertdateType(struct["PasswordLastUsed"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["UserId"] then M.AssertidType(struct["UserId"]) end
	if struct["Path"] then M.AssertpathType(struct["Path"]) end
	if struct["Arn"] then M.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(User_keys[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- &lt;p&gt;Contains information about an IAM user entity.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the following actions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;CreateUser&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;GetUser&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;a&gt;ListUsers&lt;/a&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param UserName [userNameType] &lt;p&gt;The friendly name identifying the user.&lt;/p&gt;
-- @param PasswordLastUsed [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the user's password was last used to sign in to an AWS website. For a list of AWS websites that capture a user's last sign-in time, see the &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html&quot;&gt;Credential Reports&lt;/a&gt; topic in the &lt;i&gt;Using IAM&lt;/i&gt; guide. If a password is used more than once in a five-minute span, only the first use is returned in this field. This field is null (not present) when:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The user does not have a password&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The password exists but has never been used (at least not since IAM started tracking this information on October 20th, 2014&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;there is no sign-in data associated with the user&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;This value is returned only in the &lt;a&gt;GetUser&lt;/a&gt; and &lt;a&gt;ListUsers&lt;/a&gt; actions. &lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the user was created.&lt;/p&gt;
-- @param UserId [idType] &lt;p&gt;The stable and unique string identifying the user. For more information about IDs, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param Path [pathType] &lt;p&gt;The path to the user. For more information about paths, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide.&lt;/p&gt;
-- @param Arn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and how to use ARNs in policies, see &lt;a href=&quot;http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html&quot;&gt;IAM Identifiers&lt;/a&gt; in the &lt;i&gt;Using IAM&lt;/i&gt; guide. &lt;/p&gt;
-- Required parameter: Path
-- Required parameter: UserName
-- Required parameter: UserId
-- Required parameter: Arn
-- Required parameter: CreateDate
function M.User(UserName, PasswordLastUsed, CreateDate, UserId, Path, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating User")
	local t = { 
		["UserName"] = UserName,
		["PasswordLastUsed"] = PasswordLastUsed,
		["CreateDate"] = CreateDate,
		["UserId"] = UserId,
		["Path"] = Path,
		["Arn"] = Arn,
	}
	M.AssertUser(t)
	return t
end

local GetInstanceProfileRequest_keys = { "InstanceProfileName" = true, nil }

function M.AssertGetInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	if struct["InstanceProfileName"] then M.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(GetInstanceProfileRequest_keys[k], "GetInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceProfileRequest
--  
-- @param InstanceProfileName [instanceProfileNameType] &lt;p&gt;The name of the instance profile to get information about.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- Required parameter: InstanceProfileName
function M.GetInstanceProfileRequest(InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceProfileRequest")
	local t = { 
		["InstanceProfileName"] = InstanceProfileName,
	}
	M.AssertGetInstanceProfileRequest(t)
	return t
end

local SimulatePolicyResponse_keys = { "Marker" = true, "EvaluationResults" = true, "IsTruncated" = true, nil }

function M.AssertSimulatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SimulatePolicyResponse to be of type 'table'")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["EvaluationResults"] then M.AssertEvaluationResultsListType(struct["EvaluationResults"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(SimulatePolicyResponse_keys[k], "SimulatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SimulatePolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;SimulatePrincipalPolicy&lt;/a&gt; or &lt;a&gt;SimulateCustomPolicy&lt;/a&gt; request.&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param EvaluationResults [EvaluationResultsListType] &lt;p&gt;The results of the simulation.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
function M.SimulatePolicyResponse(Marker, EvaluationResults, IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SimulatePolicyResponse")
	local t = { 
		["Marker"] = Marker,
		["EvaluationResults"] = EvaluationResults,
		["IsTruncated"] = IsTruncated,
	}
	M.AssertSimulatePolicyResponse(t)
	return t
end

local CreateServiceLinkedRoleResponse_keys = { "Role" = true, nil }

function M.AssertCreateServiceLinkedRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceLinkedRoleResponse to be of type 'table'")
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(CreateServiceLinkedRoleResponse_keys[k], "CreateServiceLinkedRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceLinkedRoleResponse
--  
-- @param Role [Role] &lt;p&gt;A &lt;a&gt;Role&lt;/a&gt; object that contains details about the newly created role.&lt;/p&gt;
function M.CreateServiceLinkedRoleResponse(Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceLinkedRoleResponse")
	local t = { 
		["Role"] = Role,
	}
	M.AssertCreateServiceLinkedRoleResponse(t)
	return t
end

local ListEntitiesForPolicyRequest_keys = { "Marker" = true, "EntityFilter" = true, "PathPrefix" = true, "PolicyArn" = true, "MaxItems" = true, nil }

function M.AssertListEntitiesForPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEntitiesForPolicyRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["EntityFilter"] then M.AssertEntityType(struct["EntityFilter"]) end
	if struct["PathPrefix"] then M.AssertpathType(struct["PathPrefix"]) end
	if struct["PolicyArn"] then M.AssertarnType(struct["PolicyArn"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListEntitiesForPolicyRequest_keys[k], "ListEntitiesForPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEntitiesForPolicyRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param EntityFilter [EntityType] &lt;p&gt;The entity type to use for filtering the results.&lt;/p&gt; &lt;p&gt;For example, when &lt;code&gt;EntityFilter&lt;/code&gt; is &lt;code&gt;Role&lt;/code&gt;, only the roles that are attached to the specified policy are returned. This parameter is optional. If it is not included, all attached entities (users, groups, and roles) are returned. The argument for this parameter must be one of the valid values listed below.&lt;/p&gt;
-- @param PathPrefix [pathType] &lt;p&gt;The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all entities.&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param PolicyArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.&lt;/p&gt; &lt;p&gt;For more information about ARNs, see &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: PolicyArn
function M.ListEntitiesForPolicyRequest(Marker, EntityFilter, PathPrefix, PolicyArn, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEntitiesForPolicyRequest")
	local t = { 
		["Marker"] = Marker,
		["EntityFilter"] = EntityFilter,
		["PathPrefix"] = PathPrefix,
		["PolicyArn"] = PolicyArn,
		["MaxItems"] = MaxItems,
	}
	M.AssertListEntitiesForPolicyRequest(t)
	return t
end

local ListInstanceProfilesForRoleRequest_keys = { "Marker" = true, "RoleName" = true, "MaxItems" = true, nil }

function M.AssertListInstanceProfilesForRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesForRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListInstanceProfilesForRoleRequest_keys[k], "ListInstanceProfilesForRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesForRoleRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param RoleName [roleNameType] &lt;p&gt;The name of the role to list instance profiles for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: RoleName
function M.ListInstanceProfilesForRoleRequest(Marker, RoleName, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceProfilesForRoleRequest")
	local t = { 
		["Marker"] = Marker,
		["RoleName"] = RoleName,
		["MaxItems"] = MaxItems,
	}
	M.AssertListInstanceProfilesForRoleRequest(t)
	return t
end

local GetOpenIDConnectProviderResponse_keys = { "Url" = true, "CreateDate" = true, "ThumbprintList" = true, "ClientIDList" = true, nil }

function M.AssertGetOpenIDConnectProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIDConnectProviderResponse to be of type 'table'")
	if struct["Url"] then M.AssertOpenIDConnectProviderUrlType(struct["Url"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["ThumbprintList"] then M.AssertthumbprintListType(struct["ThumbprintList"]) end
	if struct["ClientIDList"] then M.AssertclientIDListType(struct["ClientIDList"]) end
	for k,_ in pairs(struct) do
		assert(GetOpenIDConnectProviderResponse_keys[k], "GetOpenIDConnectProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIDConnectProviderResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetOpenIDConnectProvider&lt;/a&gt; request. &lt;/p&gt;
-- @param Url [OpenIDConnectProviderUrlType] &lt;p&gt;The URL that the IAM OIDC provider resource object is associated with. For more information, see &lt;a&gt;CreateOpenIDConnectProvider&lt;/a&gt;.&lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time when the IAM OIDC provider resource object was created in the AWS account.&lt;/p&gt;
-- @param ThumbprintList [thumbprintListType] &lt;p&gt;A list of certificate thumbprints that are associated with the specified IAM OIDC provider resource object. For more information, see &lt;a&gt;CreateOpenIDConnectProvider&lt;/a&gt;. &lt;/p&gt;
-- @param ClientIDList [clientIDListType] &lt;p&gt;A list of client IDs (also known as audiences) that are associated with the specified IAM OIDC provider resource object. For more information, see &lt;a&gt;CreateOpenIDConnectProvider&lt;/a&gt;.&lt;/p&gt;
function M.GetOpenIDConnectProviderResponse(Url, CreateDate, ThumbprintList, ClientIDList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOpenIDConnectProviderResponse")
	local t = { 
		["Url"] = Url,
		["CreateDate"] = CreateDate,
		["ThumbprintList"] = ThumbprintList,
		["ClientIDList"] = ClientIDList,
	}
	M.AssertGetOpenIDConnectProviderResponse(t)
	return t
end

local AddClientIDToOpenIDConnectProviderRequest_keys = { "OpenIDConnectProviderArn" = true, "ClientID" = true, nil }

function M.AssertAddClientIDToOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddClientIDToOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	assert(struct["ClientID"], "Expected key ClientID to exist in table")
	if struct["OpenIDConnectProviderArn"] then M.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	if struct["ClientID"] then M.AssertclientIDType(struct["ClientID"]) end
	for k,_ in pairs(struct) do
		assert(AddClientIDToOpenIDConnectProviderRequest_keys[k], "AddClientIDToOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddClientIDToOpenIDConnectProviderRequest
--  
-- @param OpenIDConnectProviderArn [arnType] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to add the client ID to. You can get a list of OIDC provider ARNs by using the &lt;a&gt;ListOpenIDConnectProviders&lt;/a&gt; action.&lt;/p&gt;
-- @param ClientID [clientIDType] &lt;p&gt;The client ID (also known as audience) to add to the IAM OpenID Connect provider resource.&lt;/p&gt;
-- Required parameter: OpenIDConnectProviderArn
-- Required parameter: ClientID
function M.AddClientIDToOpenIDConnectProviderRequest(OpenIDConnectProviderArn, ClientID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddClientIDToOpenIDConnectProviderRequest")
	local t = { 
		["OpenIDConnectProviderArn"] = OpenIDConnectProviderArn,
		["ClientID"] = ClientID,
	}
	M.AssertAddClientIDToOpenIDConnectProviderRequest(t)
	return t
end

local MalformedCertificateException_keys = { "message" = true, nil }

function M.AssertMalformedCertificateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedCertificateException to be of type 'table'")
	if struct["message"] then M.AssertmalformedCertificateMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MalformedCertificateException_keys[k], "MalformedCertificateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedCertificateException
-- &lt;p&gt;The request was rejected because the certificate was malformed or expired. The error message describes the specific error.&lt;/p&gt;
-- @param message [malformedCertificateMessage] &lt;p&gt;The request was rejected because the certificate was malformed or expired. The error message describes the specific error.&lt;/p&gt;
function M.MalformedCertificateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedCertificateException")
	local t = { 
		["message"] = message,
	}
	M.AssertMalformedCertificateException(t)
	return t
end

local GetPolicyVersionResponse_keys = { "PolicyVersion" = true, nil }

function M.AssertGetPolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionResponse to be of type 'table'")
	if struct["PolicyVersion"] then M.AssertPolicyVersion(struct["PolicyVersion"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyVersionResponse_keys[k], "GetPolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetPolicyVersion&lt;/a&gt; request. &lt;/p&gt;
-- @param PolicyVersion [PolicyVersion] &lt;p&gt;A structure containing details about the policy version.&lt;/p&gt;
function M.GetPolicyVersionResponse(PolicyVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyVersionResponse")
	local t = { 
		["PolicyVersion"] = PolicyVersion,
	}
	M.AssertGetPolicyVersionResponse(t)
	return t
end

local GetSAMLProviderResponse_keys = { "CreateDate" = true, "SAMLMetadataDocument" = true, "ValidUntil" = true, nil }

function M.AssertGetSAMLProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSAMLProviderResponse to be of type 'table'")
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["SAMLMetadataDocument"] then M.AssertSAMLMetadataDocumentType(struct["SAMLMetadataDocument"]) end
	if struct["ValidUntil"] then M.AssertdateType(struct["ValidUntil"]) end
	for k,_ in pairs(struct) do
		assert(GetSAMLProviderResponse_keys[k], "GetSAMLProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSAMLProviderResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetSAMLProvider&lt;/a&gt; request. &lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date and time when the SAML provider was created.&lt;/p&gt;
-- @param SAMLMetadataDocument [SAMLMetadataDocumentType] &lt;p&gt;The XML metadata document that includes information about an identity provider.&lt;/p&gt;
-- @param ValidUntil [dateType] &lt;p&gt;The expiration date and time for the SAML provider.&lt;/p&gt;
function M.GetSAMLProviderResponse(CreateDate, SAMLMetadataDocument, ValidUntil, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSAMLProviderResponse")
	local t = { 
		["CreateDate"] = CreateDate,
		["SAMLMetadataDocument"] = SAMLMetadataDocument,
		["ValidUntil"] = ValidUntil,
	}
	M.AssertGetSAMLProviderResponse(t)
	return t
end

local ListOpenIDConnectProvidersRequest_keys = { nil }

function M.AssertListOpenIDConnectProvidersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOpenIDConnectProvidersRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ListOpenIDConnectProvidersRequest_keys[k], "ListOpenIDConnectProvidersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOpenIDConnectProvidersRequest
--  
function M.ListOpenIDConnectProvidersRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOpenIDConnectProvidersRequest")
	local t = { 
	}
	M.AssertListOpenIDConnectProvidersRequest(t)
	return t
end

local ListInstanceProfilesResponse_keys = { "Marker" = true, "IsTruncated" = true, "InstanceProfiles" = true, nil }

function M.AssertListInstanceProfilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesResponse to be of type 'table'")
	assert(struct["InstanceProfiles"], "Expected key InstanceProfiles to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then M.AssertbooleanType(struct["IsTruncated"]) end
	if struct["InstanceProfiles"] then M.AssertinstanceProfileListType(struct["InstanceProfiles"]) end
	for k,_ in pairs(struct) do
		assert(ListInstanceProfilesResponse_keys[k], "ListInstanceProfilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListInstanceProfiles&lt;/a&gt; request. &lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;When &lt;code&gt;IsTruncated&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;, this element is present and contains the value to use for the &lt;code&gt;Marker&lt;/code&gt; parameter in a subsequent pagination request.&lt;/p&gt;
-- @param IsTruncated [booleanType] &lt;p&gt;A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the &lt;code&gt;Marker&lt;/code&gt; request parameter to retrieve more items. Note that IAM might return fewer than the &lt;code&gt;MaxItems&lt;/code&gt; number of results even when there are more results available. We recommend that you check &lt;code&gt;IsTruncated&lt;/code&gt; after every call to ensure that you receive all of your results.&lt;/p&gt;
-- @param InstanceProfiles [instanceProfileListType] &lt;p&gt;A list of instance profiles.&lt;/p&gt;
-- Required parameter: InstanceProfiles
function M.ListInstanceProfilesResponse(Marker, IsTruncated, InstanceProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceProfilesResponse")
	local t = { 
		["Marker"] = Marker,
		["IsTruncated"] = IsTruncated,
		["InstanceProfiles"] = InstanceProfiles,
	}
	M.AssertListInstanceProfilesResponse(t)
	return t
end

local CreateLoginProfileRequest_keys = { "UserName" = true, "PasswordResetRequired" = true, "Password" = true, nil }

function M.AssertCreateLoginProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoginProfileRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["PasswordResetRequired"] then M.AssertbooleanType(struct["PasswordResetRequired"]) end
	if struct["Password"] then M.AssertpasswordType(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(CreateLoginProfileRequest_keys[k], "CreateLoginProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoginProfileRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user to create a password for. The user must already exist.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param PasswordResetRequired [booleanType] &lt;p&gt;Specifies whether the user is required to set a new password on next sign-in.&lt;/p&gt;
-- @param Password [passwordType] &lt;p&gt;The new password for the user.&lt;/p&gt; &lt;p&gt;The &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt; used to validate this parameter is a string of characters consisting of almost any printable ASCII character from the space (\u0020) through the end of the ASCII character range (\u00FF). You can also include the tab (\u0009), line feed (\u000A), and carriage return (\u000D) characters. Although any of these characters are valid in a password, note that many tools, such as the AWS Management Console, might restrict the ability to enter certain characters because they have special meaning within that tool.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: Password
function M.CreateLoginProfileRequest(UserName, PasswordResetRequired, Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoginProfileRequest")
	local t = { 
		["UserName"] = UserName,
		["PasswordResetRequired"] = PasswordResetRequired,
		["Password"] = Password,
	}
	M.AssertCreateLoginProfileRequest(t)
	return t
end

local ListSAMLProvidersResponse_keys = { "SAMLProviderList" = true, nil }

function M.AssertListSAMLProvidersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSAMLProvidersResponse to be of type 'table'")
	if struct["SAMLProviderList"] then M.AssertSAMLProviderListType(struct["SAMLProviderList"]) end
	for k,_ in pairs(struct) do
		assert(ListSAMLProvidersResponse_keys[k], "ListSAMLProvidersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSAMLProvidersResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;ListSAMLProviders&lt;/a&gt; request. &lt;/p&gt;
-- @param SAMLProviderList [SAMLProviderListType] &lt;p&gt;The list of SAML provider resource objects defined in IAM for this AWS account.&lt;/p&gt;
function M.ListSAMLProvidersResponse(SAMLProviderList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSAMLProvidersResponse")
	local t = { 
		["SAMLProviderList"] = SAMLProviderList,
	}
	M.AssertListSAMLProvidersResponse(t)
	return t
end

local UpdateServiceSpecificCredentialRequest_keys = { "UserName" = true, "Status" = true, "ServiceSpecificCredentialId" = true, nil }

function M.AssertUpdateServiceSpecificCredentialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceSpecificCredentialRequest to be of type 'table'")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["ServiceSpecificCredentialId"] then M.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateServiceSpecificCredentialRequest_keys[k], "UpdateServiceSpecificCredentialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceSpecificCredentialRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the service-specific credential. If you do not specify this value, then the operation assumes the user whose credentials are used to call the operation.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status to be assigned to the service-specific credential.&lt;/p&gt;
-- @param ServiceSpecificCredentialId [serviceSpecificCredentialId] &lt;p&gt;The unique identifier of the service-specific credential.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters that can consist of any upper or lowercased letter or digit.&lt;/p&gt;
-- Required parameter: ServiceSpecificCredentialId
-- Required parameter: Status
function M.UpdateServiceSpecificCredentialRequest(UserName, Status, ServiceSpecificCredentialId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceSpecificCredentialRequest")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["ServiceSpecificCredentialId"] = ServiceSpecificCredentialId,
	}
	M.AssertUpdateServiceSpecificCredentialRequest(t)
	return t
end

local ListAttachedRolePoliciesRequest_keys = { "Marker" = true, "RoleName" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListAttachedRolePoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedRolePoliciesRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["RoleName"] then M.AssertroleNameType(struct["RoleName"]) end
	if struct["PathPrefix"] then M.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListAttachedRolePoliciesRequest_keys[k], "ListAttachedRolePoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedRolePoliciesRequest
--  
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param RoleName [roleNameType] &lt;p&gt;The name (friendly name, not ARN) of the role to list attached policies for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-&lt;/p&gt;
-- @param PathPrefix [policyPathType] &lt;p&gt;The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: RoleName
function M.ListAttachedRolePoliciesRequest(Marker, RoleName, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedRolePoliciesRequest")
	local t = { 
		["Marker"] = Marker,
		["RoleName"] = RoleName,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListAttachedRolePoliciesRequest(t)
	return t
end

local CreateVirtualMFADeviceResponse_keys = { "VirtualMFADevice" = true, nil }

function M.AssertCreateVirtualMFADeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVirtualMFADeviceResponse to be of type 'table'")
	assert(struct["VirtualMFADevice"], "Expected key VirtualMFADevice to exist in table")
	if struct["VirtualMFADevice"] then M.AssertVirtualMFADevice(struct["VirtualMFADevice"]) end
	for k,_ in pairs(struct) do
		assert(CreateVirtualMFADeviceResponse_keys[k], "CreateVirtualMFADeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVirtualMFADeviceResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateVirtualMFADevice&lt;/a&gt; request. &lt;/p&gt;
-- @param VirtualMFADevice [VirtualMFADevice] &lt;p&gt;A structure containing details about the new virtual MFA device.&lt;/p&gt;
-- Required parameter: VirtualMFADevice
function M.CreateVirtualMFADeviceResponse(VirtualMFADevice, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVirtualMFADeviceResponse")
	local t = { 
		["VirtualMFADevice"] = VirtualMFADevice,
	}
	M.AssertCreateVirtualMFADeviceResponse(t)
	return t
end

local GetPolicyResponse_keys = { "Policy" = true, nil }

function M.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["Policy"] then M.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(GetPolicyResponse_keys[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;GetPolicy&lt;/a&gt; request. &lt;/p&gt;
-- @param Policy [Policy] &lt;p&gt;A structure containing details about the policy.&lt;/p&gt;
function M.GetPolicyResponse(Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyResponse")
	local t = { 
		["Policy"] = Policy,
	}
	M.AssertGetPolicyResponse(t)
	return t
end

local AccessKey_keys = { "UserName" = true, "Status" = true, "CreateDate" = true, "SecretAccessKey" = true, "AccessKeyId" = true, nil }

function M.AssertAccessKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessKey to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["SecretAccessKey"], "Expected key SecretAccessKey to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["CreateDate"] then M.AssertdateType(struct["CreateDate"]) end
	if struct["SecretAccessKey"] then M.AssertaccessKeySecretType(struct["SecretAccessKey"]) end
	if struct["AccessKeyId"] then M.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(AccessKey_keys[k], "AccessKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessKey
-- &lt;p&gt;Contains information about an AWS access key.&lt;/p&gt; &lt;p&gt; This data type is used as a response element in the &lt;a&gt;CreateAccessKey&lt;/a&gt; and &lt;a&gt;ListAccessKeys&lt;/a&gt; actions. &lt;/p&gt; &lt;note&gt; &lt;p&gt;The &lt;code&gt;SecretAccessKey&lt;/code&gt; value is returned only in response to &lt;a&gt;CreateAccessKey&lt;/a&gt;. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.&lt;/p&gt; &lt;/note&gt;
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user that the access key is associated with.&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status of the access key. &lt;code&gt;Active&lt;/code&gt; means the key is valid for API calls, while &lt;code&gt;Inactive&lt;/code&gt; means it is not. &lt;/p&gt;
-- @param CreateDate [dateType] &lt;p&gt;The date when the access key was created.&lt;/p&gt;
-- @param SecretAccessKey [accessKeySecretType] &lt;p&gt;The secret key used to sign requests.&lt;/p&gt;
-- @param AccessKeyId [accessKeyIdType] &lt;p&gt;The ID for this access key.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: AccessKeyId
-- Required parameter: Status
-- Required parameter: SecretAccessKey
function M.AccessKey(UserName, Status, CreateDate, SecretAccessKey, AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessKey")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["CreateDate"] = CreateDate,
		["SecretAccessKey"] = SecretAccessKey,
		["AccessKeyId"] = AccessKeyId,
	}
	M.AssertAccessKey(t)
	return t
end

local SSHPublicKeyMetadata_keys = { "UserName" = true, "Status" = true, "SSHPublicKeyId" = true, "UploadDate" = true, nil }

function M.AssertSSHPublicKeyMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSHPublicKeyMetadata to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["UploadDate"], "Expected key UploadDate to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then M.AssertstatusType(struct["Status"]) end
	if struct["SSHPublicKeyId"] then M.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	if struct["UploadDate"] then M.AssertdateType(struct["UploadDate"]) end
	for k,_ in pairs(struct) do
		assert(SSHPublicKeyMetadata_keys[k], "SSHPublicKeyMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSHPublicKeyMetadata
-- &lt;p&gt;Contains information about an SSH public key, without the key's body or fingerprint.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListSSHPublicKeys&lt;/a&gt; action.&lt;/p&gt;
-- @param UserName [userNameType] &lt;p&gt;The name of the IAM user associated with the SSH public key.&lt;/p&gt;
-- @param Status [statusType] &lt;p&gt;The status of the SSH public key. &lt;code&gt;Active&lt;/code&gt; means the key can be used for authentication with an AWS CodeCommit repository. &lt;code&gt;Inactive&lt;/code&gt; means the key cannot be used.&lt;/p&gt;
-- @param SSHPublicKeyId [publicKeyIdType] &lt;p&gt;The unique identifier for the SSH public key.&lt;/p&gt;
-- @param UploadDate [dateType] &lt;p&gt;The date and time, in &lt;a href=&quot;http://www.iso.org/iso/iso8601&quot;&gt;ISO 8601 date-time format&lt;/a&gt;, when the SSH public key was uploaded.&lt;/p&gt;
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
-- Required parameter: Status
-- Required parameter: UploadDate
function M.SSHPublicKeyMetadata(UserName, Status, SSHPublicKeyId, UploadDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SSHPublicKeyMetadata")
	local t = { 
		["UserName"] = UserName,
		["Status"] = Status,
		["SSHPublicKeyId"] = SSHPublicKeyId,
		["UploadDate"] = UploadDate,
	}
	M.AssertSSHPublicKeyMetadata(t)
	return t
end

local DuplicateSSHPublicKeyException_keys = { "message" = true, nil }

function M.AssertDuplicateSSHPublicKeyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateSSHPublicKeyException to be of type 'table'")
	if struct["message"] then M.AssertduplicateSSHPublicKeyMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateSSHPublicKeyException_keys[k], "DuplicateSSHPublicKeyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateSSHPublicKeyException
-- &lt;p&gt;The request was rejected because the SSH public key is already associated with the specified IAM user.&lt;/p&gt;
-- @param message [duplicateSSHPublicKeyMessage] &lt;p&gt;The request was rejected because the SSH public key is already associated with the specified IAM user.&lt;/p&gt;
function M.DuplicateSSHPublicKeyException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateSSHPublicKeyException")
	local t = { 
		["message"] = message,
	}
	M.AssertDuplicateSSHPublicKeyException(t)
	return t
end

local ListAttachedUserPoliciesRequest_keys = { "UserName" = true, "Marker" = true, "PathPrefix" = true, "MaxItems" = true, nil }

function M.AssertListAttachedUserPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedUserPoliciesRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then M.AssertuserNameType(struct["UserName"]) end
	if struct["Marker"] then M.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then M.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then M.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(ListAttachedUserPoliciesRequest_keys[k], "ListAttachedUserPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedUserPoliciesRequest
--  
-- @param UserName [userNameType] &lt;p&gt;The name (friendly name, not ARN) of the user to list attached policies for.&lt;/p&gt; &lt;p&gt;This parameter allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-&lt;/p&gt;
-- @param Marker [markerType] &lt;p&gt;Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the &lt;code&gt;Marker&lt;/code&gt; element in the response that you received to indicate where the next call should start.&lt;/p&gt;
-- @param PathPrefix [policyPathType] &lt;p&gt;The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.&lt;/p&gt; &lt;p&gt;This paramater allows (per its &lt;a href=&quot;http://wikipedia.org/wiki/regex&quot;&gt;regex pattern&lt;/a&gt;) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.&lt;/p&gt;
-- @param MaxItems [maxItemsType] &lt;p&gt;(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the &lt;code&gt;IsTruncated&lt;/code&gt; response element is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the &lt;code&gt;IsTruncated&lt;/code&gt; response element returns &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;Marker&lt;/code&gt; contains a value to include in the subsequent call that tells the service where to continue from.&lt;/p&gt;
-- Required parameter: UserName
function M.ListAttachedUserPoliciesRequest(UserName, Marker, PathPrefix, MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedUserPoliciesRequest")
	local t = { 
		["UserName"] = UserName,
		["Marker"] = Marker,
		["PathPrefix"] = PathPrefix,
		["MaxItems"] = MaxItems,
	}
	M.AssertListAttachedUserPoliciesRequest(t)
	return t
end

local CreateGroupResponse_keys = { "Group" = true, nil }

function M.AssertCreateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupResponse to be of type 'table'")
	assert(struct["Group"], "Expected key Group to exist in table")
	if struct["Group"] then M.AssertGroup(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupResponse_keys[k], "CreateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupResponse
-- &lt;p&gt;Contains the response to a successful &lt;a&gt;CreateGroup&lt;/a&gt; request. &lt;/p&gt;
-- @param Group [Group] &lt;p&gt;A structure containing details about the new group.&lt;/p&gt;
-- Required parameter: Group
function M.CreateGroupResponse(Group, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupResponse")
	local t = { 
		["Group"] = Group,
	}
	M.AssertCreateGroupResponse(t)
	return t
end

local ServerCertificate_keys = { "CertificateChain" = true, "CertificateBody" = true, "ServerCertificateMetadata" = true, nil }

function M.AssertServerCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerCertificate to be of type 'table'")
	assert(struct["ServerCertificateMetadata"], "Expected key ServerCertificateMetadata to exist in table")
	assert(struct["CertificateBody"], "Expected key CertificateBody to exist in table")
	if struct["CertificateChain"] then M.AssertcertificateChainType(struct["CertificateChain"]) end
	if struct["CertificateBody"] then M.AssertcertificateBodyType(struct["CertificateBody"]) end
	if struct["ServerCertificateMetadata"] then M.AssertServerCertificateMetadata(struct["ServerCertificateMetadata"]) end
	for k,_ in pairs(struct) do
		assert(ServerCertificate_keys[k], "ServerCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerCertificate
-- &lt;p&gt;Contains information about a server certificate.&lt;/p&gt; &lt;p&gt; This data type is used as a response element in the &lt;a&gt;GetServerCertificate&lt;/a&gt; action. &lt;/p&gt;
-- @param CertificateChain [certificateChainType] &lt;p&gt;The contents of the public key certificate chain.&lt;/p&gt;
-- @param CertificateBody [certificateBodyType] &lt;p&gt;The contents of the public key certificate.&lt;/p&gt;
-- @param ServerCertificateMetadata [ServerCertificateMetadata] &lt;p&gt;The meta information of the server certificate, such as its name, path, ID, and ARN.&lt;/p&gt;
-- Required parameter: ServerCertificateMetadata
-- Required parameter: CertificateBody
function M.ServerCertificate(CertificateChain, CertificateBody, ServerCertificateMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerCertificate")
	local t = { 
		["CertificateChain"] = CertificateChain,
		["CertificateBody"] = CertificateBody,
		["ServerCertificateMetadata"] = ServerCertificateMetadata,
	}
	M.AssertServerCertificate(t)
	return t
end

function M.AssertstringType(str)
	assert(str)
	assert(type(str) == "string", "Expected stringType to be of type 'string'")
end

--  
function M.stringType(str)
	M.AssertstringType(str)
	return str
end

function M.AssertinvalidUserTypeMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidUserTypeMessage to be of type 'string'")
end

--  
function M.invalidUserTypeMessage(str)
	M.AssertinvalidUserTypeMessage(str)
	return str
end

function M.AssertpublicKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected publicKeyIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("[%w]+"), "Expected string to match pattern '[%w]+'")
end

--  
function M.publicKeyIdType(str)
	M.AssertpublicKeyIdType(str)
	return str
end

function M.AssertcredentialReportNotReadyExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected credentialReportNotReadyExceptionMessage to be of type 'string'")
end

--  
function M.credentialReportNotReadyExceptionMessage(str)
	M.AssertcredentialReportNotReadyExceptionMessage(str)
	return str
end

function M.AssertpolicyDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyDescriptionType to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.policyDescriptionType(str)
	M.AssertpolicyDescriptionType(str)
	return str
end

function M.AssertcertificateBodyType(str)
	assert(str)
	assert(type(str) == "string", "Expected certificateBodyType to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]+'")
end

--  
function M.certificateBodyType(str)
	M.AssertcertificateBodyType(str)
	return str
end

function M.AssertaccountAliasType(str)
	assert(str)
	assert(type(str) == "string", "Expected accountAliasType to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$"), "Expected string to match pattern '^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$'")
end

--  
function M.accountAliasType(str)
	M.AssertaccountAliasType(str)
	return str
end

function M.AssertaccessKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected accessKeyIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
	assert(str:match("[%w]+"), "Expected string to match pattern '[%w]+'")
end

--  
function M.accessKeyIdType(str)
	M.AssertaccessKeyIdType(str)
	return str
end

function M.AssertcredentialReportNotPresentExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected credentialReportNotPresentExceptionMessage to be of type 'string'")
end

--  
function M.credentialReportNotPresentExceptionMessage(str)
	M.AssertcredentialReportNotPresentExceptionMessage(str)
	return str
end

function M.AssertsummaryKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected summaryKeyType to be of type 'string'")
end

--  
function M.summaryKeyType(str)
	M.AssertsummaryKeyType(str)
	return str
end

function M.AssertinvalidAuthenticationCodeMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidAuthenticationCodeMessage to be of type 'string'")
end

--  
function M.invalidAuthenticationCodeMessage(str)
	M.AssertinvalidAuthenticationCodeMessage(str)
	return str
end

function M.AssertassignmentStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected assignmentStatusType to be of type 'string'")
end

--  
function M.assignmentStatusType(str)
	M.AssertassignmentStatusType(str)
	return str
end

function M.AssertcustomSuffixType(str)
	assert(str)
	assert(type(str) == "string", "Expected customSuffixType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.customSuffixType(str)
	M.AssertcustomSuffixType(str)
	return str
end

function M.AssertReportStateDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportStateDescriptionType to be of type 'string'")
end

--  
function M.ReportStateDescriptionType(str)
	M.AssertReportStateDescriptionType(str)
	return str
end

function M.AssertContextKeyNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContextKeyNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

--  
function M.ContextKeyNameType(str)
	M.AssertContextKeyNameType(str)
	return str
end

function M.AssertentityTemporarilyUnmodifiableMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected entityTemporarilyUnmodifiableMessage to be of type 'string'")
end

--  
function M.entityTemporarilyUnmodifiableMessage(str)
	M.AssertentityTemporarilyUnmodifiableMessage(str)
	return str
end

function M.AssertPolicyIdentifierType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyIdentifierType to be of type 'string'")
end

--  
function M.PolicyIdentifierType(str)
	M.AssertPolicyIdentifierType(str)
	return str
end

function M.AssertpublicKeyFingerprintType(str)
	assert(str)
	assert(type(str) == "string", "Expected publicKeyFingerprintType to be of type 'string'")
	assert(#str <= 48, "Expected string to be max 48 characters")
	assert(#str >= 48, "Expected string to be min 48 characters")
	assert(str:match("[:%w]+"), "Expected string to match pattern '[:%w]+'")
end

--  
function M.publicKeyFingerprintType(str)
	M.AssertpublicKeyFingerprintType(str)
	return str
end

function M.AssertvirtualMFADeviceName(str)
	assert(str)
	assert(type(str) == "string", "Expected virtualMFADeviceName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.virtualMFADeviceName(str)
	M.AssertvirtualMFADeviceName(str)
	return str
end

function M.AssertserviceSpecificCredentialId(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceSpecificCredentialId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("[%w]+"), "Expected string to match pattern '[%w]+'")
end

--  
function M.serviceSpecificCredentialId(str)
	M.AssertserviceSpecificCredentialId(str)
	return str
end

function M.AssertduplicateCertificateMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected duplicateCertificateMessage to be of type 'string'")
end

--  
function M.duplicateCertificateMessage(str)
	M.AssertduplicateCertificateMessage(str)
	return str
end

function M.AssertauthenticationCodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected authenticationCodeType to be of type 'string'")
	assert(#str <= 6, "Expected string to be max 6 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
	assert(str:match("[%d]+"), "Expected string to match pattern '[%d]+'")
end

--  
function M.authenticationCodeType(str)
	M.AssertauthenticationCodeType(str)
	return str
end

function M.AssertroleNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected roleNameType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.roleNameType(str)
	M.AssertroleNameType(str)
	return str
end

function M.AssertinvalidPublicKeyMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidPublicKeyMessage to be of type 'string'")
end

--  
function M.invalidPublicKeyMessage(str)
	M.AssertinvalidPublicKeyMessage(str)
	return str
end

function M.AssertEvalDecisionSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected EvalDecisionSourceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.EvalDecisionSourceType(str)
	M.AssertEvalDecisionSourceType(str)
	return str
end

function M.AssertcredentialReportExpiredExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected credentialReportExpiredExceptionMessage to be of type 'string'")
end

--  
function M.credentialReportExpiredExceptionMessage(str)
	M.AssertcredentialReportExpiredExceptionMessage(str)
	return str
end

function M.AssertmarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected markerType to be of type 'string'")
	assert(#str <= 320, "Expected string to be max 320 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0020-%u00FF]+"), "Expected string to match pattern '[%u0020-%u00FF]+'")
end

--  
function M.markerType(str)
	M.AssertmarkerType(str)
	return str
end

function M.AssertserviceNotSupportedMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceNotSupportedMessage to be of type 'string'")
end

--  
function M.serviceNotSupportedMessage(str)
	M.AssertserviceNotSupportedMessage(str)
	return str
end

function M.AssertserviceName(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceName to be of type 'string'")
end

--  
function M.serviceName(str)
	M.AssertserviceName(str)
	return str
end

function M.AssertthumbprintType(str)
	assert(str)
	assert(type(str) == "string", "Expected thumbprintType to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 40, "Expected string to be min 40 characters")
end

-- &lt;p&gt;Contains a thumbprint for an identity provider's server certificate.&lt;/p&gt; &lt;p&gt;The identity provider's server certificate thumbprint is the hex-encoded SHA-1 hash value of the self-signed X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.&lt;/p&gt;
function M.thumbprintType(str)
	M.AssertthumbprintType(str)
	return str
end

function M.AssertpolicyNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.policyNameType(str)
	M.AssertpolicyNameType(str)
	return str
end

function M.AssertpublicKeyMaterialType(str)
	assert(str)
	assert(type(str) == "string", "Expected publicKeyMaterialType to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]+'")
end

--  
function M.publicKeyMaterialType(str)
	M.AssertpublicKeyMaterialType(str)
	return str
end

function M.AssertpasswordType(str)
	assert(str)
	assert(type(str) == "string", "Expected passwordType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]+'")
end

--  
function M.passwordType(str)
	M.AssertpasswordType(str)
	return str
end

function M.AssertunrecognizedPublicKeyEncodingMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected unrecognizedPublicKeyEncodingMessage to be of type 'string'")
end

--  
function M.unrecognizedPublicKeyEncodingMessage(str)
	M.AssertunrecognizedPublicKeyEncodingMessage(str)
	return str
end

function M.AssertentityAlreadyExistsMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected entityAlreadyExistsMessage to be of type 'string'")
end

--  
function M.entityAlreadyExistsMessage(str)
	M.AssertentityAlreadyExistsMessage(str)
	return str
end

function M.AssertkeyPairMismatchMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected keyPairMismatchMessage to be of type 'string'")
end

--  
function M.keyPairMismatchMessage(str)
	M.AssertkeyPairMismatchMessage(str)
	return str
end

function M.AssertContextKeyValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContextKeyValueType to be of type 'string'")
end

--  
function M.ContextKeyValueType(str)
	M.AssertContextKeyValueType(str)
	return str
end

function M.AssertSAMLMetadataDocumentType(str)
	assert(str)
	assert(type(str) == "string", "Expected SAMLMetadataDocumentType to be of type 'string'")
	assert(#str <= 10000000, "Expected string to be max 10000000 characters")
	assert(#str >= 1000, "Expected string to be min 1000 characters")
end

--  
function M.SAMLMetadataDocumentType(str)
	M.AssertSAMLMetadataDocumentType(str)
	return str
end

function M.AssertnoSuchEntityMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected noSuchEntityMessage to be of type 'string'")
end

--  
function M.noSuchEntityMessage(str)
	M.AssertnoSuchEntityMessage(str)
	return str
end

function M.AssertserverCertificateNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected serverCertificateNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.serverCertificateNameType(str)
	M.AssertserverCertificateNameType(str)
	return str
end

function M.AssertprivateKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected privateKeyType to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]+'")
end

--  
function M.privateKeyType(str)
	M.AssertprivateKeyType(str)
	return str
end

function M.AssertResourceHandlingOptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceHandlingOptionType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceHandlingOptionType(str)
	M.AssertResourceHandlingOptionType(str)
	return str
end

function M.AssertserialNumberType(str)
	assert(str)
	assert(type(str) == "string", "Expected serialNumberType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 9, "Expected string to be min 9 characters")
	assert(str:match("[%w+=/:,.@-]+"), "Expected string to match pattern '[%w+=/:,.@-]+'")
end

--  
function M.serialNumberType(str)
	M.AssertserialNumberType(str)
	return str
end

function M.AssertuserNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected userNameType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.userNameType(str)
	M.AssertuserNameType(str)
	return str
end

function M.AssertroleDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected roleDescriptionType to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(str:match("[%p{L}%p{M}%p{Z}%p{S}%p{N}%p{P}]*"), "Expected string to match pattern '[%p{L}%p{M}%p{Z}%p{S}%p{N}%p{P}]*'")
end

--  
function M.roleDescriptionType(str)
	M.AssertroleDescriptionType(str)
	return str
end

function M.AssertdeleteConflictMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected deleteConflictMessage to be of type 'string'")
end

--  
function M.deleteConflictMessage(str)
	M.AssertdeleteConflictMessage(str)
	return str
end

function M.AssertpolicyVersionIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyVersionIdType to be of type 'string'")
	assert(str:match("v[1-9][0-9]*(%.[A-Za-z0-9-]*)?"), "Expected string to match pattern 'v[1-9][0-9]*(%.[A-Za-z0-9-]*)?'")
end

--  
function M.policyVersionIdType(str)
	M.AssertpolicyVersionIdType(str)
	return str
end

function M.AssertinstanceProfileNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected instanceProfileNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.instanceProfileNameType(str)
	M.AssertinstanceProfileNameType(str)
	return str
end

function M.AssertgroupNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected groupNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.groupNameType(str)
	M.AssertgroupNameType(str)
	return str
end

function M.AssertserviceUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceUserName to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 17, "Expected string to be min 17 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.serviceUserName(str)
	M.AssertserviceUserName(str)
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

function M.AssertinvalidInputMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidInputMessage to be of type 'string'")
end

--  
function M.invalidInputMessage(str)
	M.AssertinvalidInputMessage(str)
	return str
end

function M.AssertResourceNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceNameType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceNameType(str)
	M.AssertResourceNameType(str)
	return str
end

function M.AssertcertificateIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected certificateIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 24, "Expected string to be min 24 characters")
	assert(str:match("[%w]+"), "Expected string to match pattern '[%w]+'")
end

--  
function M.certificateIdType(str)
	M.AssertcertificateIdType(str)
	return str
end

function M.AssertpolicyDocumentType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyDocumentType to be of type 'string'")
	assert(#str <= 131072, "Expected string to be max 131072 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]+'")
end

--  
function M.policyDocumentType(str)
	M.AssertpolicyDocumentType(str)
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

function M.AssertPolicyEvaluationDecisionType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyEvaluationDecisionType to be of type 'string'")
end

--  
function M.PolicyEvaluationDecisionType(str)
	M.AssertPolicyEvaluationDecisionType(str)
	return str
end

function M.AssertPolicySourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicySourceType to be of type 'string'")
end

--  
function M.PolicySourceType(str)
	M.AssertPolicySourceType(str)
	return str
end

function M.AssertOpenIDConnectProviderUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected OpenIDConnectProviderUrlType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- &lt;p&gt;Contains a URL that specifies the endpoint for an OpenID Connect provider.&lt;/p&gt;
function M.OpenIDConnectProviderUrlType(str)
	M.AssertOpenIDConnectProviderUrlType(str)
	return str
end

function M.AssertEntityType(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityType to be of type 'string'")
end

--  
function M.EntityType(str)
	M.AssertEntityType(str)
	return str
end

function M.AssertlimitExceededMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected limitExceededMessage to be of type 'string'")
end

--  
function M.limitExceededMessage(str)
	M.AssertlimitExceededMessage(str)
	return str
end

function M.AssertReportFormatType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportFormatType to be of type 'string'")
end

--  
function M.ReportFormatType(str)
	M.AssertReportFormatType(str)
	return str
end

function M.AssertduplicateSSHPublicKeyMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected duplicateSSHPublicKeyMessage to be of type 'string'")
end

--  
function M.duplicateSSHPublicKeyMessage(str)
	M.AssertduplicateSSHPublicKeyMessage(str)
	return str
end

function M.AssertexistingUserNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected existingUserNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w+=,.@-]+"), "Expected string to match pattern '[%w+=,.@-]+'")
end

--  
function M.existingUserNameType(str)
	M.AssertexistingUserNameType(str)
	return str
end

function M.AssertmalformedCertificateMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected malformedCertificateMessage to be of type 'string'")
end

--  
function M.malformedCertificateMessage(str)
	M.AssertmalformedCertificateMessage(str)
	return str
end

function M.AssertReportStateType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportStateType to be of type 'string'")
end

--  
function M.ReportStateType(str)
	M.AssertReportStateType(str)
	return str
end

function M.AssertActionNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.ActionNameType(str)
	M.AssertActionNameType(str)
	return str
end

function M.AssertpolicyScopeType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyScopeType to be of type 'string'")
end

--  
function M.policyScopeType(str)
	M.AssertpolicyScopeType(str)
	return str
end

function M.AssertpathPrefixType(str)
	assert(str)
	assert(type(str) == "string", "Expected pathPrefixType to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("%u002F[%u0021-%u007F]*"), "Expected string to match pattern '%u002F[%u0021-%u007F]*'")
end

--  
function M.pathPrefixType(str)
	M.AssertpathPrefixType(str)
	return str
end

function M.AssertservicePassword(str)
	assert(str)
	assert(type(str) == "string", "Expected servicePassword to be of type 'string'")
end

--  
function M.servicePassword(str)
	M.AssertservicePassword(str)
	return str
end

function M.AssertinvalidCertificateMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidCertificateMessage to be of type 'string'")
end

--  
function M.invalidCertificateMessage(str)
	M.AssertinvalidCertificateMessage(str)
	return str
end

function M.AssertpolicyPathType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyPathType to be of type 'string'")
	assert(str:match("((/[A-Za-z0-9%.,%+@=_-]+)*)/"), "Expected string to match pattern '((/[A-Za-z0-9%.,%+@=_-]+)*)/'")
end

--  
function M.policyPathType(str)
	M.AssertpolicyPathType(str)
	return str
end

function M.AssertclientIDType(str)
	assert(str)
	assert(type(str) == "string", "Expected clientIDType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.clientIDType(str)
	M.AssertclientIDType(str)
	return str
end

function M.AssertstatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected statusType to be of type 'string'")
end

--  
function M.statusType(str)
	M.AssertstatusType(str)
	return str
end

function M.AssertContextKeyTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ContextKeyTypeEnum to be of type 'string'")
end

--  
function M.ContextKeyTypeEnum(str)
	M.AssertContextKeyTypeEnum(str)
	return str
end

function M.AssertunmodifiableEntityMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected unmodifiableEntityMessage to be of type 'string'")
end

--  
function M.unmodifiableEntityMessage(str)
	M.AssertunmodifiableEntityMessage(str)
	return str
end

function M.AssertserviceFailureExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceFailureExceptionMessage to be of type 'string'")
end

--  
function M.serviceFailureExceptionMessage(str)
	M.AssertserviceFailureExceptionMessage(str)
	return str
end

function M.AssertSAMLProviderNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected SAMLProviderNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%w._-]+"), "Expected string to match pattern '[%w._-]+'")
end

--  
function M.SAMLProviderNameType(str)
	M.AssertSAMLProviderNameType(str)
	return str
end

function M.AssertpolicyEvaluationErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected policyEvaluationErrorMessage to be of type 'string'")
end

--  
function M.policyEvaluationErrorMessage(str)
	M.AssertpolicyEvaluationErrorMessage(str)
	return str
end

function M.AssertarnType(str)
	assert(str)
	assert(type(str) == "string", "Expected arnType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

-- &lt;p&gt;The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS resources.&lt;/p&gt; &lt;p&gt;For more information about ARNs, go to &lt;a href=&quot;http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html&quot;&gt;Amazon Resource Names (ARNs) and AWS Service Namespaces&lt;/a&gt; in the &lt;i&gt;AWS General Reference&lt;/i&gt;. &lt;/p&gt;
function M.arnType(str)
	M.AssertarnType(str)
	return str
end

function M.AssertcertificateChainType(str)
	assert(str)
	assert(type(str) == "string", "Expected certificateChainType to be of type 'string'")
	assert(#str <= 2097152, "Expected string to be max 2097152 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%u0009%u000A%u000D%u0020-%u00FF]+"), "Expected string to match pattern '[%u0009%u000A%u000D%u0020-%u00FF]+'")
end

--  
function M.certificateChainType(str)
	M.AssertcertificateChainType(str)
	return str
end

function M.AssertencodingType(str)
	assert(str)
	assert(type(str) == "string", "Expected encodingType to be of type 'string'")
end

--  
function M.encodingType(str)
	M.AssertencodingType(str)
	return str
end

function M.AssertpathType(str)
	assert(str)
	assert(type(str) == "string", "Expected pathType to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("(%u002F)|(%u002F[%u0021-%u007F]+%u002F)"), "Expected string to match pattern '(%u002F)|(%u002F[%u0021-%u007F]+%u002F)'")
end

--  
function M.pathType(str)
	M.AssertpathType(str)
	return str
end

function M.AssertidType(str)
	assert(str)
	assert(type(str) == "string", "Expected idType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
	assert(str:match("[%w]+"), "Expected string to match pattern '[%w]+'")
end

--  
function M.idType(str)
	M.AssertidType(str)
	return str
end

function M.AssertpasswordPolicyViolationMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected passwordPolicyViolationMessage to be of type 'string'")
end

--  
function M.passwordPolicyViolationMessage(str)
	M.AssertpasswordPolicyViolationMessage(str)
	return str
end

function M.AssertmaxPasswordAgeType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected maxPasswordAgeType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1095, "Expected integer to be max 1095")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.maxPasswordAgeType(integer)
	M.AssertmaxPasswordAgeType(integer)
	return integer
end

function M.AssertColumnNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ColumnNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ColumnNumber(integer)
	M.AssertColumnNumber(integer)
	return integer
end

function M.AssertminimumPasswordLengthType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected minimumPasswordLengthType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 128, "Expected integer to be max 128")
	assert(integer >= 6, "Expected integer to be min 6")
end

function M.minimumPasswordLengthType(integer)
	M.AssertminimumPasswordLengthType(integer)
	return integer
end

function M.AssertpasswordReusePreventionType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected passwordReusePreventionType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 24, "Expected integer to be max 24")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.passwordReusePreventionType(integer)
	M.AssertpasswordReusePreventionType(integer)
	return integer
end

function M.AssertattachmentCountType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected attachmentCountType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.attachmentCountType(integer)
	M.AssertattachmentCountType(integer)
	return integer
end

function M.AssertmaxItemsType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected maxItemsType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.maxItemsType(integer)
	M.AssertmaxItemsType(integer)
	return integer
end

function M.AssertLineNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LineNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.LineNumber(integer)
	M.AssertLineNumber(integer)
	return integer
end

function M.AssertsummaryValueType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected summaryValueType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.summaryValueType(integer)
	M.AssertsummaryValueType(integer)
	return integer
end

function M.AssertbooleanObjectType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected booleanObjectType to be of type 'boolean'")
end

function M.booleanObjectType(boolean)
	M.AssertbooleanObjectType(boolean)
	return boolean
end

function M.AssertbooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected booleanType to be of type 'boolean'")
end

function M.booleanType(boolean)
	M.AssertbooleanType(boolean)
	return boolean
end

function M.AssertEvalDecisionDetailsType(map)
	assert(map)
	assert(type(map) == "table", "Expected EvalDecisionDetailsType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertEvalDecisionSourceType(k)
		M.AssertPolicyEvaluationDecisionType(v)
	end
end

function M.EvalDecisionDetailsType(map)
	M.AssertEvalDecisionDetailsType(map)
	return map
end

function M.AssertsummaryMapType(map)
	assert(map)
	assert(type(map) == "table", "Expected summaryMapType to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertsummaryKeyType(k)
		M.AssertsummaryValueType(v)
	end
end

function M.summaryMapType(map)
	M.AssertsummaryMapType(map)
	return map
end

function M.AssertdateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected dateType to be of type 'string'")
end

function M.dateType(timestamp)
	M.AssertdateType(timestamp)
	return timestamp
end

function M.AssertReportContentType(blob)
	assert(blob)
	assert(type(string) == "string", "Expected ReportContentType to be of type 'string'")
end

function M.ReportContentType(blob)
	M.AssertReportContentType(blob)
	return blob
end

function M.AssertBootstrapDatum(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BootstrapDatum to be of type 'string'")
end

function M.BootstrapDatum(blob)
	M.AssertBootstrapDatum(blob)
	return blob
end

function M.AssertgroupNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected groupNameListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertgroupNameType(v)
	end
end

--  
-- List of groupNameType objects
function M.groupNameListType(list)
	M.AssertgroupNameListType(list)
	return list
end

function M.AssertuserDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected userDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUserDetail(v)
	end
end

--  
-- List of UserDetail objects
function M.userDetailListType(list)
	M.AssertuserDetailListType(list)
	return list
end

function M.AssertContextKeyValueListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ContextKeyValueListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertContextKeyValueType(v)
	end
end

--  
-- List of ContextKeyValueType objects
function M.ContextKeyValueListType(list)
	M.AssertContextKeyValueListType(list)
	return list
end

function M.AssertEvaluationResultsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected EvaluationResultsListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvaluationResult(v)
	end
end

--  
-- List of EvaluationResult objects
function M.EvaluationResultsListType(list)
	M.AssertEvaluationResultsListType(list)
	return list
end

function M.AssertStatementListType(list)
	assert(list)
	assert(type(list) == "table", "Expected StatementListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStatement(v)
	end
end

--  
-- List of Statement objects
function M.StatementListType(list)
	M.AssertStatementListType(list)
	return list
end

function M.AssertaccountAliasListType(list)
	assert(list)
	assert(type(list) == "table", "Expected accountAliasListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertaccountAliasType(v)
	end
end

--  
-- List of accountAliasType objects
function M.accountAliasListType(list)
	M.AssertaccountAliasListType(list)
	return list
end

function M.AssertpolicyDocumentVersionListType(list)
	assert(list)
	assert(type(list) == "table", "Expected policyDocumentVersionListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyVersion(v)
	end
end

--  
-- List of PolicyVersion objects
function M.policyDocumentVersionListType(list)
	M.AssertpolicyDocumentVersionListType(list)
	return list
end

function M.AssertserverCertificateMetadataListType(list)
	assert(list)
	assert(type(list) == "table", "Expected serverCertificateMetadataListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServerCertificateMetadata(v)
	end
end

--  
-- List of ServerCertificateMetadata objects
function M.serverCertificateMetadataListType(list)
	M.AssertserverCertificateMetadataListType(list)
	return list
end

function M.AssertcertificateListType(list)
	assert(list)
	assert(type(list) == "table", "Expected certificateListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSigningCertificate(v)
	end
end

-- &lt;p&gt;Contains a list of signing certificates.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListSigningCertificates&lt;/a&gt; action.&lt;/p&gt;
-- List of SigningCertificate objects
function M.certificateListType(list)
	M.AssertcertificateListType(list)
	return list
end

function M.AssertroleDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected roleDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRoleDetail(v)
	end
end

--  
-- List of RoleDetail objects
function M.roleDetailListType(list)
	M.AssertroleDetailListType(list)
	return list
end

function M.AssertclientIDListType(list)
	assert(list)
	assert(type(list) == "table", "Expected clientIDListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertclientIDType(v)
	end
end

--  
-- List of clientIDType objects
function M.clientIDListType(list)
	M.AssertclientIDListType(list)
	return list
end

function M.AssertpolicyDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected policyDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyDetail(v)
	end
end

--  
-- List of PolicyDetail objects
function M.policyDetailListType(list)
	M.AssertpolicyDetailListType(list)
	return list
end

function M.AssertResourceNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceNameListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceNameType(v)
	end
end

--  
-- List of ResourceNameType objects
function M.ResourceNameListType(list)
	M.AssertResourceNameListType(list)
	return list
end

function M.AssertvirtualMFADeviceListType(list)
	assert(list)
	assert(type(list) == "table", "Expected virtualMFADeviceListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVirtualMFADevice(v)
	end
end

--  
-- List of VirtualMFADevice objects
function M.virtualMFADeviceListType(list)
	M.AssertvirtualMFADeviceListType(list)
	return list
end

function M.AssertinstanceProfileListType(list)
	assert(list)
	assert(type(list) == "table", "Expected instanceProfileListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceProfile(v)
	end
end

-- &lt;p&gt;Contains a list of instance profiles.&lt;/p&gt;
-- List of InstanceProfile objects
function M.instanceProfileListType(list)
	M.AssertinstanceProfileListType(list)
	return list
end

function M.AssertPolicyGroupListType(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyGroupListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyGroup(v)
	end
end

--  
-- List of PolicyGroup objects
function M.PolicyGroupListType(list)
	M.AssertPolicyGroupListType(list)
	return list
end

function M.AssertActionNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionNameListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActionNameType(v)
	end
end

--  
-- List of ActionNameType objects
function M.ActionNameListType(list)
	M.AssertActionNameListType(list)
	return list
end

function M.AssertthumbprintListType(list)
	assert(list)
	assert(type(list) == "table", "Expected thumbprintListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertthumbprintType(v)
	end
end

-- &lt;p&gt;Contains a list of thumbprints of identity provider server certificates.&lt;/p&gt;
-- List of thumbprintType objects
function M.thumbprintListType(list)
	M.AssertthumbprintListType(list)
	return list
end

function M.AssertpolicyListType(list)
	assert(list)
	assert(type(list) == "table", "Expected policyListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicy(v)
	end
end

--  
-- List of Policy objects
function M.policyListType(list)
	M.AssertpolicyListType(list)
	return list
end

function M.AssertentityListType(list)
	assert(list)
	assert(type(list) == "table", "Expected entityListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEntityType(v)
	end
end

--  
-- List of EntityType objects
function M.entityListType(list)
	M.AssertentityListType(list)
	return list
end

function M.AssertManagedPolicyDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ManagedPolicyDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertManagedPolicyDetail(v)
	end
end

--  
-- List of ManagedPolicyDetail objects
function M.ManagedPolicyDetailListType(list)
	M.AssertManagedPolicyDetailListType(list)
	return list
end

function M.AssertaccessKeyMetadataListType(list)
	assert(list)
	assert(type(list) == "table", "Expected accessKeyMetadataListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAccessKeyMetadata(v)
	end
end

-- &lt;p&gt;Contains a list of access key metadata.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListAccessKeys&lt;/a&gt; action.&lt;/p&gt;
-- List of AccessKeyMetadata objects
function M.accessKeyMetadataListType(list)
	M.AssertaccessKeyMetadataListType(list)
	return list
end

function M.AssertroleListType(list)
	assert(list)
	assert(type(list) == "table", "Expected roleListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRole(v)
	end
end

-- &lt;p&gt;Contains a list of IAM roles.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListRoles&lt;/a&gt; action.&lt;/p&gt;
-- List of Role objects
function M.roleListType(list)
	M.AssertroleListType(list)
	return list
end

function M.AssertContextEntryListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ContextEntryListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertContextEntry(v)
	end
end

--  
-- List of ContextEntry objects
function M.ContextEntryListType(list)
	M.AssertContextEntryListType(list)
	return list
end

function M.AssertServiceSpecificCredentialsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceSpecificCredentialsListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServiceSpecificCredentialMetadata(v)
	end
end

--  
-- List of ServiceSpecificCredentialMetadata objects
function M.ServiceSpecificCredentialsListType(list)
	M.AssertServiceSpecificCredentialsListType(list)
	return list
end

function M.AssertattachedPoliciesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected attachedPoliciesListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAttachedPolicy(v)
	end
end

--  
-- List of AttachedPolicy objects
function M.attachedPoliciesListType(list)
	M.AssertattachedPoliciesListType(list)
	return list
end

function M.AssertResourceSpecificResultListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceSpecificResultListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceSpecificResult(v)
	end
end

--  
-- List of ResourceSpecificResult objects
function M.ResourceSpecificResultListType(list)
	M.AssertResourceSpecificResultListType(list)
	return list
end

function M.AssertgroupDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected groupDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGroupDetail(v)
	end
end

--  
-- List of GroupDetail objects
function M.groupDetailListType(list)
	M.AssertgroupDetailListType(list)
	return list
end

function M.AssertuserListType(list)
	assert(list)
	assert(type(list) == "table", "Expected userListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUser(v)
	end
end

-- &lt;p&gt;Contains a list of users.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;GetGroup&lt;/a&gt; and &lt;a&gt;ListUsers&lt;/a&gt; actions. &lt;/p&gt;
-- List of User objects
function M.userListType(list)
	M.AssertuserListType(list)
	return list
end

function M.AssertOpenIDConnectProviderListType(list)
	assert(list)
	assert(type(list) == "table", "Expected OpenIDConnectProviderListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOpenIDConnectProviderListEntry(v)
	end
end

-- &lt;p&gt;Contains a list of IAM OpenID Connect providers.&lt;/p&gt;
-- List of OpenIDConnectProviderListEntry objects
function M.OpenIDConnectProviderListType(list)
	M.AssertOpenIDConnectProviderListType(list)
	return list
end

function M.AssertpolicyNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected policyNameListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertpolicyNameType(v)
	end
end

-- &lt;p&gt;Contains a list of policy names.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListPolicies&lt;/a&gt; action.&lt;/p&gt;
-- List of policyNameType objects
function M.policyNameListType(list)
	M.AssertpolicyNameListType(list)
	return list
end

function M.AssertPolicyUserListType(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyUserListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyUser(v)
	end
end

--  
-- List of PolicyUser objects
function M.PolicyUserListType(list)
	M.AssertPolicyUserListType(list)
	return list
end

function M.AssertmfaDeviceListType(list)
	assert(list)
	assert(type(list) == "table", "Expected mfaDeviceListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMFADevice(v)
	end
end

-- &lt;p&gt;Contains a list of MFA devices.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListMFADevices&lt;/a&gt; and &lt;a&gt;ListVirtualMFADevices&lt;/a&gt; actions. &lt;/p&gt;
-- List of MFADevice objects
function M.mfaDeviceListType(list)
	M.AssertmfaDeviceListType(list)
	return list
end

function M.AssertContextKeyNamesResultListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ContextKeyNamesResultListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertContextKeyNameType(v)
	end
end

--  
-- List of ContextKeyNameType objects
function M.ContextKeyNamesResultListType(list)
	M.AssertContextKeyNamesResultListType(list)
	return list
end

function M.AssertgroupListType(list)
	assert(list)
	assert(type(list) == "table", "Expected groupListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGroup(v)
	end
end

-- &lt;p&gt;Contains a list of IAM groups.&lt;/p&gt; &lt;p&gt;This data type is used as a response element in the &lt;a&gt;ListGroups&lt;/a&gt; action.&lt;/p&gt;
-- List of Group objects
function M.groupListType(list)
	M.AssertgroupListType(list)
	return list
end

function M.AssertSimulationPolicyListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SimulationPolicyListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertpolicyDocumentType(v)
	end
end

--  
-- List of policyDocumentType objects
function M.SimulationPolicyListType(list)
	M.AssertSimulationPolicyListType(list)
	return list
end

function M.AssertSSHPublicKeyListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SSHPublicKeyListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSSHPublicKeyMetadata(v)
	end
end

--  
-- List of SSHPublicKeyMetadata objects
function M.SSHPublicKeyListType(list)
	M.AssertSSHPublicKeyListType(list)
	return list
end

function M.AssertPolicyRoleListType(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyRoleListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPolicyRole(v)
	end
end

--  
-- List of PolicyRole objects
function M.PolicyRoleListType(list)
	M.AssertPolicyRoleListType(list)
	return list
end

function M.AssertSAMLProviderListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SAMLProviderListType to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSAMLProviderListEntry(v)
	end
end

--  
-- List of SAMLProviderListEntry objects
function M.SAMLProviderListType(list)
	M.AssertSAMLProviderListType(list)
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
			return "iam.amazonaws.com"
		end
	end
	local ss = { "iam" }
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
--- GetUserPolicy
-- @param GetUserPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUserPolicyAsync(GetUserPolicyRequest, cb)
	assert(GetUserPolicyRequest, "You must provide a GetUserPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetUserPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetUserPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateServiceLinkedRole
-- @param CreateServiceLinkedRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateServiceLinkedRoleAsync(CreateServiceLinkedRoleRequest, cb)
	assert(CreateServiceLinkedRoleRequest, "You must provide a CreateServiceLinkedRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateServiceLinkedRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateServiceLinkedRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteInstanceProfile
-- @param DeleteInstanceProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteInstanceProfileAsync(DeleteInstanceProfileRequest, cb)
	assert(DeleteInstanceProfileRequest, "You must provide a DeleteInstanceProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteInstanceProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteInstanceProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAccountSummary
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountSummaryAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAccountSummary",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAttachedGroupPolicies
-- @param ListAttachedGroupPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttachedGroupPoliciesAsync(ListAttachedGroupPoliciesRequest, cb)
	assert(ListAttachedGroupPoliciesRequest, "You must provide a ListAttachedGroupPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAttachedGroupPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAttachedGroupPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateUser
-- @param UpdateUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateUserAsync(UpdateUserRequest, cb)
	assert(UpdateUserRequest, "You must provide a UpdateUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAccountAliases
-- @param ListAccountAliasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAccountAliasesAsync(ListAccountAliasesRequest, cb)
	assert(ListAccountAliasesRequest, "You must provide a ListAccountAliasesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAccountAliases",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAccountAliasesRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".GetUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadSSHPublicKey
-- @param UploadSSHPublicKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadSSHPublicKeyAsync(UploadSSHPublicKeyRequest, cb)
	assert(UploadSSHPublicKeyRequest, "You must provide a UploadSSHPublicKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadSSHPublicKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UploadSSHPublicKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGroupPolicies
-- @param ListGroupPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGroupPoliciesAsync(ListGroupPoliciesRequest, cb)
	assert(ListGroupPoliciesRequest, "You must provide a ListGroupPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListGroupPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGroupPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAccessKey
-- @param CreateAccessKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAccessKeyAsync(CreateAccessKeyRequest, cb)
	assert(CreateAccessKeyRequest, "You must provide a CreateAccessKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateAccessKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAccessKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateLoginProfile
-- @param UpdateLoginProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateLoginProfileAsync(UpdateLoginProfileRequest, cb)
	assert(UpdateLoginProfileRequest, "You must provide a UpdateLoginProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateLoginProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateLoginProfileRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".ListGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateRoleDescription
-- @param UpdateRoleDescriptionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateRoleDescriptionAsync(UpdateRoleDescriptionRequest, cb)
	assert(UpdateRoleDescriptionRequest, "You must provide a UpdateRoleDescriptionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateRoleDescription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateRoleDescriptionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSAMLProvider
-- @param UpdateSAMLProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSAMLProviderAsync(UpdateSAMLProviderRequest, cb)
	assert(UpdateSAMLProviderRequest, "You must provide a UpdateSAMLProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateSAMLProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateSAMLProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResetServiceSpecificCredential
-- @param ResetServiceSpecificCredentialRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResetServiceSpecificCredentialAsync(ResetServiceSpecificCredentialRequest, cb)
	assert(ResetServiceSpecificCredentialRequest, "You must provide a ResetServiceSpecificCredentialRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ResetServiceSpecificCredential",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResetServiceSpecificCredentialRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSSHPublicKey
-- @param DeleteSSHPublicKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSSHPublicKeyAsync(DeleteSSHPublicKeyRequest, cb)
	assert(DeleteSSHPublicKeyRequest, "You must provide a DeleteSSHPublicKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSSHPublicKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSSHPublicKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveUserFromGroup
-- @param RemoveUserFromGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveUserFromGroupAsync(RemoveUserFromGroupRequest, cb)
	assert(RemoveUserFromGroupRequest, "You must provide a RemoveUserFromGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveUserFromGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveUserFromGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSAMLProviders
-- @param ListSAMLProvidersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSAMLProvidersAsync(ListSAMLProvidersRequest, cb)
	assert(ListSAMLProvidersRequest, "You must provide a ListSAMLProvidersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListSAMLProviders",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSAMLProvidersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRolePolicy
-- @param DeleteRolePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRolePolicyAsync(DeleteRolePolicyRequest, cb)
	assert(DeleteRolePolicyRequest, "You must provide a DeleteRolePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteRolePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRolePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadServerCertificate
-- @param UploadServerCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadServerCertificateAsync(UploadServerCertificateRequest, cb)
	assert(UploadServerCertificateRequest, "You must provide a UploadServerCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadServerCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UploadServerCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetContextKeysForPrincipalPolicy
-- @param GetContextKeysForPrincipalPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetContextKeysForPrincipalPolicyAsync(GetContextKeysForPrincipalPolicyRequest, cb)
	assert(GetContextKeysForPrincipalPolicyRequest, "You must provide a GetContextKeysForPrincipalPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetContextKeysForPrincipalPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetContextKeysForPrincipalPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAccessKey
-- @param UpdateAccessKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAccessKeyAsync(UpdateAccessKeyRequest, cb)
	assert(UpdateAccessKeyRequest, "You must provide a UpdateAccessKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateAccessKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAccessKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRoles
-- @param ListRolesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRolesAsync(ListRolesRequest, cb)
	assert(ListRolesRequest, "You must provide a ListRolesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListRoles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRolesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAccessKey
-- @param DeleteAccessKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAccessKeyAsync(DeleteAccessKeyRequest, cb)
	assert(DeleteAccessKeyRequest, "You must provide a DeleteAccessKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAccessKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAccessKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddRoleToInstanceProfile
-- @param AddRoleToInstanceProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddRoleToInstanceProfileAsync(AddRoleToInstanceProfileRequest, cb)
	assert(AddRoleToInstanceProfileRequest, "You must provide a AddRoleToInstanceProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddRoleToInstanceProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddRoleToInstanceProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetContextKeysForCustomPolicy
-- @param GetContextKeysForCustomPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetContextKeysForCustomPolicyAsync(GetContextKeysForCustomPolicyRequest, cb)
	assert(GetContextKeysForCustomPolicyRequest, "You must provide a GetContextKeysForCustomPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetContextKeysForCustomPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetContextKeysForCustomPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetGroupPolicy
-- @param GetGroupPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGroupPolicyAsync(GetGroupPolicyRequest, cb)
	assert(GetGroupPolicyRequest, "You must provide a GetGroupPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetGroupPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetGroupPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateServiceSpecificCredential
-- @param CreateServiceSpecificCredentialRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateServiceSpecificCredentialAsync(CreateServiceSpecificCredentialRequest, cb)
	assert(CreateServiceSpecificCredentialRequest, "You must provide a CreateServiceSpecificCredentialRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateServiceSpecificCredential",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateServiceSpecificCredentialRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLoginProfile
-- @param CreateLoginProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLoginProfileAsync(CreateLoginProfileRequest, cb)
	assert(CreateLoginProfileRequest, "You must provide a CreateLoginProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateLoginProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateLoginProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SimulateCustomPolicy
-- @param SimulateCustomPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SimulateCustomPolicyAsync(SimulateCustomPolicyRequest, cb)
	assert(SimulateCustomPolicyRequest, "You must provide a SimulateCustomPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SimulateCustomPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SimulateCustomPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeactivateMFADevice
-- @param DeactivateMFADeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeactivateMFADeviceAsync(DeactivateMFADeviceRequest, cb)
	assert(DeactivateMFADeviceRequest, "You must provide a DeactivateMFADeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeactivateMFADevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeactivateMFADeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachRolePolicy
-- @param DetachRolePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachRolePolicyAsync(DetachRolePolicyRequest, cb)
	assert(DetachRolePolicyRequest, "You must provide a DetachRolePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachRolePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachRolePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPolicy
-- @param GetPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPolicyAsync(GetPolicyRequest, cb)
	assert(GetPolicyRequest, "You must provide a GetPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSAMLProvider
-- @param CreateSAMLProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSAMLProviderAsync(CreateSAMLProviderRequest, cb)
	assert(CreateSAMLProviderRequest, "You must provide a CreateSAMLProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateSAMLProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSAMLProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOpenIDConnectProviders
-- @param ListOpenIDConnectProvidersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOpenIDConnectProvidersAsync(ListOpenIDConnectProvidersRequest, cb)
	assert(ListOpenIDConnectProvidersRequest, "You must provide a ListOpenIDConnectProvidersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListOpenIDConnectProviders",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOpenIDConnectProvidersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAccountAlias
-- @param DeleteAccountAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAccountAliasAsync(DeleteAccountAliasRequest, cb)
	assert(DeleteAccountAliasRequest, "You must provide a DeleteAccountAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAccountAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAccountAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSigningCertificates
-- @param ListSigningCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSigningCertificatesAsync(ListSigningCertificatesRequest, cb)
	assert(ListSigningCertificatesRequest, "You must provide a ListSigningCertificatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListSigningCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSigningCertificatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRole
-- @param DeleteRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRoleAsync(DeleteRoleRequest, cb)
	assert(DeleteRoleRequest, "You must provide a DeleteRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRoleRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".UpdateGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateGroupRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".GetGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRolePolicy
-- @param GetRolePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRolePolicyAsync(GetRolePolicyRequest, cb)
	assert(GetRolePolicyRequest, "You must provide a GetRolePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetRolePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRolePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateUser
-- @param CreateUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateUserAsync(CreateUserRequest, cb)
	assert(CreateUserRequest, "You must provide a CreateUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddUserToGroup
-- @param AddUserToGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddUserToGroupAsync(AddUserToGroupRequest, cb)
	assert(AddUserToGroupRequest, "You must provide a AddUserToGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddUserToGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddUserToGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveRoleFromInstanceProfile
-- @param RemoveRoleFromInstanceProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveRoleFromInstanceProfileAsync(RemoveRoleFromInstanceProfileRequest, cb)
	assert(RemoveRoleFromInstanceProfileRequest, "You must provide a RemoveRoleFromInstanceProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveRoleFromInstanceProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveRoleFromInstanceProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListInstanceProfiles
-- @param ListInstanceProfilesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListInstanceProfilesAsync(ListInstanceProfilesRequest, cb)
	assert(ListInstanceProfilesRequest, "You must provide a ListInstanceProfilesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListInstanceProfiles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListInstanceProfilesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateServiceSpecificCredential
-- @param UpdateServiceSpecificCredentialRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateServiceSpecificCredentialAsync(UpdateServiceSpecificCredentialRequest, cb)
	assert(UpdateServiceSpecificCredentialRequest, "You must provide a UpdateServiceSpecificCredentialRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateServiceSpecificCredential",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateServiceSpecificCredentialRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAttachedUserPolicies
-- @param ListAttachedUserPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttachedUserPoliciesAsync(ListAttachedUserPoliciesRequest, cb)
	assert(ListAttachedUserPoliciesRequest, "You must provide a ListAttachedUserPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAttachedUserPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAttachedUserPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePolicyVersion
-- @param CreatePolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePolicyVersionAsync(CreatePolicyVersionRequest, cb)
	assert(CreatePolicyVersionRequest, "You must provide a CreatePolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreatePolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListServiceSpecificCredentials
-- @param ListServiceSpecificCredentialsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListServiceSpecificCredentialsAsync(ListServiceSpecificCredentialsRequest, cb)
	assert(ListServiceSpecificCredentialsRequest, "You must provide a ListServiceSpecificCredentialsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListServiceSpecificCredentials",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListServiceSpecificCredentialsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachUserPolicy
-- @param AttachUserPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachUserPolicyAsync(AttachUserPolicyRequest, cb)
	assert(AttachUserPolicyRequest, "You must provide a AttachUserPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachUserPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachUserPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListVirtualMFADevices
-- @param ListVirtualMFADevicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListVirtualMFADevicesAsync(ListVirtualMFADevicesRequest, cb)
	assert(ListVirtualMFADevicesRequest, "You must provide a ListVirtualMFADevicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListVirtualMFADevices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListVirtualMFADevicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAssumeRolePolicy
-- @param UpdateAssumeRolePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAssumeRolePolicyAsync(UpdateAssumeRolePolicyRequest, cb)
	assert(UpdateAssumeRolePolicyRequest, "You must provide a UpdateAssumeRolePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateAssumeRolePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAssumeRolePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListServerCertificates
-- @param ListServerCertificatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListServerCertificatesAsync(ListServerCertificatesRequest, cb)
	assert(ListServerCertificatesRequest, "You must provide a ListServerCertificatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListServerCertificates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListServerCertificatesRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".DeleteGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateOpenIDConnectProviderThumbprint
-- @param UpdateOpenIDConnectProviderThumbprintRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateOpenIDConnectProviderThumbprintAsync(UpdateOpenIDConnectProviderThumbprintRequest, cb)
	assert(UpdateOpenIDConnectProviderThumbprintRequest, "You must provide a UpdateOpenIDConnectProviderThumbprintRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateOpenIDConnectProviderThumbprint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateOpenIDConnectProviderThumbprintRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".CreateGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePolicy
-- @param DeletePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePolicyAsync(DeletePolicyRequest, cb)
	assert(DeletePolicyRequest, "You must provide a DeletePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeletePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUserPolicy
-- @param DeleteUserPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUserPolicyAsync(DeleteUserPolicyRequest, cb)
	assert(DeleteUserPolicyRequest, "You must provide a DeleteUserPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteUserPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateServerCertificate
-- @param UpdateServerCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateServerCertificateAsync(UpdateServerCertificateRequest, cb)
	assert(UpdateServerCertificateRequest, "You must provide a UpdateServerCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateServerCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateServerCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddClientIDToOpenIDConnectProvider
-- @param AddClientIDToOpenIDConnectProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddClientIDToOpenIDConnectProviderAsync(AddClientIDToOpenIDConnectProviderRequest, cb)
	assert(AddClientIDToOpenIDConnectProviderRequest, "You must provide a AddClientIDToOpenIDConnectProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddClientIDToOpenIDConnectProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddClientIDToOpenIDConnectProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteVirtualMFADevice
-- @param DeleteVirtualMFADeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteVirtualMFADeviceAsync(DeleteVirtualMFADeviceRequest, cb)
	assert(DeleteVirtualMFADeviceRequest, "You must provide a DeleteVirtualMFADeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteVirtualMFADevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteVirtualMFADeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SimulatePrincipalPolicy
-- @param SimulatePrincipalPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SimulatePrincipalPolicyAsync(SimulatePrincipalPolicyRequest, cb)
	assert(SimulatePrincipalPolicyRequest, "You must provide a SimulatePrincipalPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SimulatePrincipalPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SimulatePrincipalPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAccessKeys
-- @param ListAccessKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAccessKeysAsync(ListAccessKeysRequest, cb)
	assert(ListAccessKeysRequest, "You must provide a ListAccessKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAccessKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAccessKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSSHPublicKey
-- @param GetSSHPublicKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSSHPublicKeyAsync(GetSSHPublicKeyRequest, cb)
	assert(GetSSHPublicKeyRequest, "You must provide a GetSSHPublicKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSSHPublicKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSSHPublicKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSSHPublicKeys
-- @param ListSSHPublicKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSSHPublicKeysAsync(ListSSHPublicKeysRequest, cb)
	assert(ListSSHPublicKeysRequest, "You must provide a ListSSHPublicKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListSSHPublicKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSSHPublicKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSigningCertificate
-- @param DeleteSigningCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSigningCertificateAsync(DeleteSigningCertificateRequest, cb)
	assert(DeleteSigningCertificateRequest, "You must provide a DeleteSigningCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSigningCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSigningCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPolicyVersion
-- @param GetPolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPolicyVersionAsync(GetPolicyVersionRequest, cb)
	assert(GetPolicyVersionRequest, "You must provide a GetPolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetPolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutRolePolicy
-- @param PutRolePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutRolePolicyAsync(PutRolePolicyRequest, cb)
	assert(PutRolePolicyRequest, "You must provide a PutRolePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutRolePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutRolePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetDefaultPolicyVersion
-- @param SetDefaultPolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetDefaultPolicyVersionAsync(SetDefaultPolicyVersionRequest, cb)
	assert(SetDefaultPolicyVersionRequest, "You must provide a SetDefaultPolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetDefaultPolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetDefaultPolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAccessKeyLastUsed
-- @param GetAccessKeyLastUsedRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccessKeyLastUsedAsync(GetAccessKeyLastUsedRequest, cb)
	assert(GetAccessKeyLastUsedRequest, "You must provide a GetAccessKeyLastUsedRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAccessKeyLastUsed",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAccessKeyLastUsedRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAccountPasswordPolicy
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAccountPasswordPolicyAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAccountPasswordPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListMFADevices
-- @param ListMFADevicesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListMFADevicesAsync(ListMFADevicesRequest, cb)
	assert(ListMFADevicesRequest, "You must provide a ListMFADevicesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListMFADevices",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListMFADevicesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSigningCertificate
-- @param UpdateSigningCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSigningCertificateAsync(UpdateSigningCertificateRequest, cb)
	assert(UpdateSigningCertificateRequest, "You must provide a UpdateSigningCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateSigningCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateSigningCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachGroupPolicy
-- @param DetachGroupPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachGroupPolicyAsync(DetachGroupPolicyRequest, cb)
	assert(DetachGroupPolicyRequest, "You must provide a DetachGroupPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachGroupPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachGroupPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSSHPublicKey
-- @param UpdateSSHPublicKeyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSSHPublicKeyAsync(UpdateSSHPublicKeyRequest, cb)
	assert(UpdateSSHPublicKeyRequest, "You must provide a UpdateSSHPublicKeyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateSSHPublicKey",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateSSHPublicKeyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInstanceProfile
-- @param GetInstanceProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInstanceProfileAsync(GetInstanceProfileRequest, cb)
	assert(GetInstanceProfileRequest, "You must provide a GetInstanceProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetInstanceProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInstanceProfileRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".DeleteUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetOpenIDConnectProvider
-- @param GetOpenIDConnectProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetOpenIDConnectProviderAsync(GetOpenIDConnectProviderRequest, cb)
	assert(GetOpenIDConnectProviderRequest, "You must provide a GetOpenIDConnectProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetOpenIDConnectProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetOpenIDConnectProviderRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".ListUsers",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUsersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLoginProfile
-- @param DeleteLoginProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLoginProfileAsync(DeleteLoginProfileRequest, cb)
	assert(DeleteLoginProfileRequest, "You must provide a DeleteLoginProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteLoginProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteLoginProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPolicyVersions
-- @param ListPolicyVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPolicyVersionsAsync(ListPolicyVersionsRequest, cb)
	assert(ListPolicyVersionsRequest, "You must provide a ListPolicyVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPolicyVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPolicyVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachGroupPolicy
-- @param AttachGroupPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachGroupPolicyAsync(AttachGroupPolicyRequest, cb)
	assert(AttachGroupPolicyRequest, "You must provide a AttachGroupPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachGroupPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachGroupPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteServiceSpecificCredential
-- @param DeleteServiceSpecificCredentialRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteServiceSpecificCredentialAsync(DeleteServiceSpecificCredentialRequest, cb)
	assert(DeleteServiceSpecificCredentialRequest, "You must provide a DeleteServiceSpecificCredentialRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteServiceSpecificCredential",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteServiceSpecificCredentialRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePolicy
-- @param CreatePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePolicyAsync(CreatePolicyRequest, cb)
	assert(CreatePolicyRequest, "You must provide a CreatePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreatePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateOpenIDConnectProvider
-- @param CreateOpenIDConnectProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOpenIDConnectProviderAsync(CreateOpenIDConnectProviderRequest, cb)
	assert(CreateOpenIDConnectProviderRequest, "You must provide a CreateOpenIDConnectProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateOpenIDConnectProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateOpenIDConnectProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachUserPolicy
-- @param DetachUserPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachUserPolicyAsync(DetachUserPolicyRequest, cb)
	assert(DetachUserPolicyRequest, "You must provide a DetachUserPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DetachUserPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachUserPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGroupsForUser
-- @param ListGroupsForUserRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGroupsForUserAsync(ListGroupsForUserRequest, cb)
	assert(ListGroupsForUserRequest, "You must provide a ListGroupsForUserRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListGroupsForUser",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListGroupsForUserRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCredentialReport
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.GetCredentialReportAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCredentialReport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAccountAlias
-- @param CreateAccountAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAccountAliasAsync(CreateAccountAliasRequest, cb)
	assert(CreateAccountAliasRequest, "You must provide a CreateAccountAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateAccountAlias",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAccountAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAccountAuthorizationDetails
-- @param GetAccountAuthorizationDetailsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountAuthorizationDetailsAsync(GetAccountAuthorizationDetailsRequest, cb)
	assert(GetAccountAuthorizationDetailsRequest, "You must provide a GetAccountAuthorizationDetailsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAccountAuthorizationDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAccountAuthorizationDetailsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSAMLProvider
-- @param GetSAMLProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSAMLProviderAsync(GetSAMLProviderRequest, cb)
	assert(GetSAMLProviderRequest, "You must provide a GetSAMLProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSAMLProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSAMLProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateRole
-- @param CreateRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateRoleAsync(CreateRoleRequest, cb)
	assert(CreateRoleRequest, "You must provide a CreateRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAttachedRolePolicies
-- @param ListAttachedRolePoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAttachedRolePoliciesAsync(ListAttachedRolePoliciesRequest, cb)
	assert(ListAttachedRolePoliciesRequest, "You must provide a ListAttachedRolePoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListAttachedRolePolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAttachedRolePoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableMFADevice
-- @param EnableMFADeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableMFADeviceAsync(EnableMFADeviceRequest, cb)
	assert(EnableMFADeviceRequest, "You must provide a EnableMFADeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EnableMFADevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableMFADeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSAMLProvider
-- @param DeleteSAMLProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSAMLProviderAsync(DeleteSAMLProviderRequest, cb)
	assert(DeleteSAMLProviderRequest, "You must provide a DeleteSAMLProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSAMLProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSAMLProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListUserPolicies
-- @param ListUserPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListUserPoliciesAsync(ListUserPoliciesRequest, cb)
	assert(ListUserPoliciesRequest, "You must provide a ListUserPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListUserPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListUserPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRolePolicies
-- @param ListRolePoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRolePoliciesAsync(ListRolePoliciesRequest, cb)
	assert(ListRolePoliciesRequest, "You must provide a ListRolePoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListRolePolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRolePoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutGroupPolicy
-- @param PutGroupPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutGroupPolicyAsync(PutGroupPolicyRequest, cb)
	assert(PutGroupPolicyRequest, "You must provide a PutGroupPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutGroupPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutGroupPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UploadSigningCertificate
-- @param UploadSigningCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UploadSigningCertificateAsync(UploadSigningCertificateRequest, cb)
	assert(UploadSigningCertificateRequest, "You must provide a UploadSigningCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UploadSigningCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UploadSigningCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListInstanceProfilesForRole
-- @param ListInstanceProfilesForRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListInstanceProfilesForRoleAsync(ListInstanceProfilesForRoleRequest, cb)
	assert(ListInstanceProfilesForRoleRequest, "You must provide a ListInstanceProfilesForRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListInstanceProfilesForRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListInstanceProfilesForRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GenerateCredentialReport
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateCredentialReportAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GenerateCredentialReport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = ".ChangePassword",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ChangePasswordRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListEntitiesForPolicy
-- @param ListEntitiesForPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListEntitiesForPolicyAsync(ListEntitiesForPolicyRequest, cb)
	assert(ListEntitiesForPolicyRequest, "You must provide a ListEntitiesForPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListEntitiesForPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListEntitiesForPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetLoginProfile
-- @param GetLoginProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetLoginProfileAsync(GetLoginProfileRequest, cb)
	assert(GetLoginProfileRequest, "You must provide a GetLoginProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetLoginProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetLoginProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateVirtualMFADevice
-- @param CreateVirtualMFADeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateVirtualMFADeviceAsync(CreateVirtualMFADeviceRequest, cb)
	assert(CreateVirtualMFADeviceRequest, "You must provide a CreateVirtualMFADeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateVirtualMFADevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateVirtualMFADeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetServerCertificate
-- @param GetServerCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetServerCertificateAsync(GetServerCertificateRequest, cb)
	assert(GetServerCertificateRequest, "You must provide a GetServerCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetServerCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetServerCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachRolePolicy
-- @param AttachRolePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachRolePolicyAsync(AttachRolePolicyRequest, cb)
	assert(AttachRolePolicyRequest, "You must provide a AttachRolePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AttachRolePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachRolePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveClientIDFromOpenIDConnectProvider
-- @param RemoveClientIDFromOpenIDConnectProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveClientIDFromOpenIDConnectProviderAsync(RemoveClientIDFromOpenIDConnectProviderRequest, cb)
	assert(RemoveClientIDFromOpenIDConnectProviderRequest, "You must provide a RemoveClientIDFromOpenIDConnectProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemoveClientIDFromOpenIDConnectProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveClientIDFromOpenIDConnectProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAccountPasswordPolicy
-- @param UpdateAccountPasswordPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAccountPasswordPolicyAsync(UpdateAccountPasswordPolicyRequest, cb)
	assert(UpdateAccountPasswordPolicyRequest, "You must provide a UpdateAccountPasswordPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateAccountPasswordPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAccountPasswordPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetRole
-- @param GetRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetRoleAsync(GetRoleRequest, cb)
	assert(GetRoleRequest, "You must provide a GetRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePolicyVersion
-- @param DeletePolicyVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePolicyVersionAsync(DeletePolicyVersionRequest, cb)
	assert(DeletePolicyVersionRequest, "You must provide a DeletePolicyVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeletePolicyVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePolicyVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPolicies
-- @param ListPoliciesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPoliciesAsync(ListPoliciesRequest, cb)
	assert(ListPoliciesRequest, "You must provide a ListPoliciesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutUserPolicy
-- @param PutUserPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutUserPolicyAsync(PutUserPolicyRequest, cb)
	assert(PutUserPolicyRequest, "You must provide a PutUserPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutUserPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutUserPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ResyncMFADevice
-- @param ResyncMFADeviceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ResyncMFADeviceAsync(ResyncMFADeviceRequest, cb)
	assert(ResyncMFADeviceRequest, "You must provide a ResyncMFADeviceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ResyncMFADevice",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ResyncMFADeviceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteServerCertificate
-- @param DeleteServerCertificateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteServerCertificateAsync(DeleteServerCertificateRequest, cb)
	assert(DeleteServerCertificateRequest, "You must provide a DeleteServerCertificateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteServerCertificate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteServerCertificateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAccountPasswordPolicy
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountPasswordPolicyAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAccountPasswordPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateInstanceProfile
-- @param CreateInstanceProfileRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateInstanceProfileAsync(CreateInstanceProfileRequest, cb)
	assert(CreateInstanceProfileRequest, "You must provide a CreateInstanceProfileRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateInstanceProfile",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateInstanceProfileRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteOpenIDConnectProvider
-- @param DeleteOpenIDConnectProviderRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteOpenIDConnectProviderAsync(DeleteOpenIDConnectProviderRequest, cb)
	assert(DeleteOpenIDConnectProviderRequest, "You must provide a DeleteOpenIDConnectProviderRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteOpenIDConnectProvider",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteOpenIDConnectProviderRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteGroupPolicy
-- @param DeleteGroupPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteGroupPolicyAsync(DeleteGroupPolicyRequest, cb)
	assert(DeleteGroupPolicyRequest, "You must provide a DeleteGroupPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteGroupPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteGroupPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
