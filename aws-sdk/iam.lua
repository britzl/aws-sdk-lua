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

local keys = {}
local asserts = {}

keys.OrganizationsDecisionDetail = { ["AllowedByOrganizations"] = true, nil }

function asserts.AssertOrganizationsDecisionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationsDecisionDetail to be of type 'table'")
	if struct["AllowedByOrganizations"] then asserts.AssertbooleanType(struct["AllowedByOrganizations"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationsDecisionDetail[k], "OrganizationsDecisionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationsDecisionDetail
-- <p>Contains information about AWS Organizations's affect on a policy simulation.</p>
-- @param _AllowedByOrganizations [booleanType] <p>Specifies whether the simulated action is allowed by the AWS Organizations service control policies that impact the simulated user's account.</p>
function M.OrganizationsDecisionDetail(_AllowedByOrganizations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationsDecisionDetail")
	local t = { 
		["AllowedByOrganizations"] = _AllowedByOrganizations,
	}
	asserts.AssertOrganizationsDecisionDetail(t)
	return t
end

keys.UploadSigningCertificateResponse = { ["Certificate"] = true, nil }

function asserts.AssertUploadSigningCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadSigningCertificateResponse to be of type 'table'")
	assert(struct["Certificate"], "Expected key Certificate to exist in table")
	if struct["Certificate"] then asserts.AssertSigningCertificate(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadSigningCertificateResponse[k], "UploadSigningCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadSigningCertificateResponse
-- <p>Contains the response to a successful <a>UploadSigningCertificate</a> request. </p>
-- @param _Certificate [SigningCertificate] <p>Information about the certificate.</p>
-- Required parameter: Certificate
function M.UploadSigningCertificateResponse(_Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadSigningCertificateResponse")
	local t = { 
		["Certificate"] = _Certificate,
	}
	asserts.AssertUploadSigningCertificateResponse(t)
	return t
end

keys.ServiceSpecificCredentialMetadata = { ["UserName"] = true, ["Status"] = true, ["CreateDate"] = true, ["ServiceName"] = true, ["ServiceSpecificCredentialId"] = true, ["ServiceUserName"] = true, nil }

function asserts.AssertServiceSpecificCredentialMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceSpecificCredentialMetadata to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["ServiceUserName"], "Expected key ServiceUserName to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	assert(struct["ServiceName"], "Expected key ServiceName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["ServiceName"] then asserts.AssertserviceName(struct["ServiceName"]) end
	if struct["ServiceSpecificCredentialId"] then asserts.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	if struct["ServiceUserName"] then asserts.AssertserviceUserName(struct["ServiceUserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceSpecificCredentialMetadata[k], "ServiceSpecificCredentialMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceSpecificCredentialMetadata
-- <p>Contains additional details about a service-specific credential.</p>
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential.</p>
-- @param _Status [statusType] <p>The status of the service-specific credential. <code>Active</code> means the key is valid for API calls, while <code>Inactive</code> means it is not.</p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the service-specific credential were created.</p>
-- @param _ServiceName [serviceName] <p>The name of the service associated with the service-specific credential.</p>
-- @param _ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier for the service-specific credential.</p>
-- @param _ServiceUserName [serviceUserName] <p>The generated user name for the service-specific credential.</p>
-- Required parameter: UserName
-- Required parameter: Status
-- Required parameter: ServiceUserName
-- Required parameter: CreateDate
-- Required parameter: ServiceSpecificCredentialId
-- Required parameter: ServiceName
function M.ServiceSpecificCredentialMetadata(_UserName, _Status, _CreateDate, _ServiceName, _ServiceSpecificCredentialId, _ServiceUserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceSpecificCredentialMetadata")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["CreateDate"] = _CreateDate,
		["ServiceName"] = _ServiceName,
		["ServiceSpecificCredentialId"] = _ServiceSpecificCredentialId,
		["ServiceUserName"] = _ServiceUserName,
	}
	asserts.AssertServiceSpecificCredentialMetadata(t)
	return t
end

keys.PutRolePolicyRequest = { ["RoleName"] = true, ["PolicyDocument"] = true, ["PolicyName"] = true, nil }

function asserts.AssertPutRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRolePolicyRequest[k], "PutRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRolePolicyRequest
--  
-- @param _RoleName [roleNameType] <p>The name of the role to associate the policy with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _PolicyDocument [policyDocumentType] <p>The policy document.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy document.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: RoleName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.PutRolePolicyRequest(_RoleName, _PolicyDocument, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRolePolicyRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["PolicyDocument"] = _PolicyDocument,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertPutRolePolicyRequest(t)
	return t
end

keys.GetLoginProfileResponse = { ["LoginProfile"] = true, nil }

function asserts.AssertGetLoginProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoginProfileResponse to be of type 'table'")
	assert(struct["LoginProfile"], "Expected key LoginProfile to exist in table")
	if struct["LoginProfile"] then asserts.AssertLoginProfile(struct["LoginProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoginProfileResponse[k], "GetLoginProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoginProfileResponse
-- <p>Contains the response to a successful <a>GetLoginProfile</a> request. </p>
-- @param _LoginProfile [LoginProfile] <p>A structure containing the user name and password create date for the user.</p>
-- Required parameter: LoginProfile
function M.GetLoginProfileResponse(_LoginProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoginProfileResponse")
	local t = { 
		["LoginProfile"] = _LoginProfile,
	}
	asserts.AssertGetLoginProfileResponse(t)
	return t
end

keys.ListGroupsForUserRequest = { ["UserName"] = true, ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListGroupsForUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsForUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsForUserRequest[k], "ListGroupsForUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsForUserRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user to list groups for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: UserName
function M.ListGroupsForUserRequest(_UserName, _Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsForUserRequest")
	local t = { 
		["UserName"] = _UserName,
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListGroupsForUserRequest(t)
	return t
end

keys.RemoveClientIDFromOpenIDConnectProviderRequest = { ["OpenIDConnectProviderArn"] = true, ["ClientID"] = true, nil }

function asserts.AssertRemoveClientIDFromOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveClientIDFromOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	assert(struct["ClientID"], "Expected key ClientID to exist in table")
	if struct["OpenIDConnectProviderArn"] then asserts.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	if struct["ClientID"] then asserts.AssertclientIDType(struct["ClientID"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveClientIDFromOpenIDConnectProviderRequest[k], "RemoveClientIDFromOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveClientIDFromOpenIDConnectProviderRequest
--  
-- @param _OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the client ID from. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> action.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param _ClientID [clientIDType] <p>The client ID (also known as audience) to remove from the IAM OIDC provider resource. For more information about client IDs, see <a>CreateOpenIDConnectProvider</a>.</p>
-- Required parameter: OpenIDConnectProviderArn
-- Required parameter: ClientID
function M.RemoveClientIDFromOpenIDConnectProviderRequest(_OpenIDConnectProviderArn, _ClientID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveClientIDFromOpenIDConnectProviderRequest")
	local t = { 
		["OpenIDConnectProviderArn"] = _OpenIDConnectProviderArn,
		["ClientID"] = _ClientID,
	}
	asserts.AssertRemoveClientIDFromOpenIDConnectProviderRequest(t)
	return t
end

keys.GetAccountAuthorizationDetailsRequest = { ["Filter"] = true, ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertGetAccountAuthorizationDetailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountAuthorizationDetailsRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertentityListType(struct["Filter"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountAuthorizationDetailsRequest[k], "GetAccountAuthorizationDetailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountAuthorizationDetailsRequest
--  
-- @param _Filter [entityListType] <p>A list of entity types used to filter the results. Only the entities that match the types you specify are included in the output. Use the value <code>LocalManagedPolicy</code> to include customer managed policies.</p> <p>The format for this parameter is a comma-separated (if more than one) list of strings. Each string value in the list must be one of the valid values listed below.</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.GetAccountAuthorizationDetailsRequest(_Filter, _Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountAuthorizationDetailsRequest")
	local t = { 
		["Filter"] = _Filter,
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertGetAccountAuthorizationDetailsRequest(t)
	return t
end

keys.DeleteRolePolicyRequest = { ["RoleName"] = true, ["PolicyName"] = true, nil }

function asserts.AssertDeleteRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRolePolicyRequest[k], "DeleteRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRolePolicyRequest
--  
-- @param _RoleName [roleNameType] <p>The name (friendly name, not ARN) identifying the role that the policy is embedded in.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _PolicyName [policyNameType] <p>The name of the inline policy to delete from the specified IAM role.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: RoleName
-- Required parameter: PolicyName
function M.DeleteRolePolicyRequest(_RoleName, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRolePolicyRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertDeleteRolePolicyRequest(t)
	return t
end

keys.ListVirtualMFADevicesRequest = { ["Marker"] = true, ["AssignmentStatus"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListVirtualMFADevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVirtualMFADevicesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["AssignmentStatus"] then asserts.AssertassignmentStatusType(struct["AssignmentStatus"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVirtualMFADevicesRequest[k], "ListVirtualMFADevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVirtualMFADevicesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _AssignmentStatus [assignmentStatusType] <p> The status (<code>Unassigned</code> or <code>Assigned</code>) of the devices to list. If you do not specify an <code>AssignmentStatus</code>, the action defaults to <code>Any</code> which lists both assigned and unassigned virtual MFA devices.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListVirtualMFADevicesRequest(_Marker, _AssignmentStatus, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVirtualMFADevicesRequest")
	local t = { 
		["Marker"] = _Marker,
		["AssignmentStatus"] = _AssignmentStatus,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListVirtualMFADevicesRequest(t)
	return t
end

keys.CreateAccessKeyResponse = { ["AccessKey"] = true, nil }

function asserts.AssertCreateAccessKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccessKeyResponse to be of type 'table'")
	assert(struct["AccessKey"], "Expected key AccessKey to exist in table")
	if struct["AccessKey"] then asserts.AssertAccessKey(struct["AccessKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccessKeyResponse[k], "CreateAccessKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccessKeyResponse
-- <p>Contains the response to a successful <a>CreateAccessKey</a> request. </p>
-- @param _AccessKey [AccessKey] <p>A structure with details about the access key.</p>
-- Required parameter: AccessKey
function M.CreateAccessKeyResponse(_AccessKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccessKeyResponse")
	local t = { 
		["AccessKey"] = _AccessKey,
	}
	asserts.AssertCreateAccessKeyResponse(t)
	return t
end

keys.InstanceProfile = { ["InstanceProfileId"] = true, ["Roles"] = true, ["CreateDate"] = true, ["InstanceProfileName"] = true, ["Path"] = true, ["Arn"] = true, nil }

function asserts.AssertInstanceProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceProfile to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	assert(struct["InstanceProfileId"], "Expected key InstanceProfileId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	assert(struct["Roles"], "Expected key Roles to exist in table")
	if struct["InstanceProfileId"] then asserts.AssertidType(struct["InstanceProfileId"]) end
	if struct["Roles"] then asserts.AssertroleListType(struct["Roles"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["InstanceProfileName"] then asserts.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceProfile[k], "InstanceProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceProfile
-- <p>Contains information about an instance profile.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateInstanceProfile</a> </p> </li> <li> <p> <a>GetInstanceProfile</a> </p> </li> <li> <p> <a>ListInstanceProfiles</a> </p> </li> <li> <p> <a>ListInstanceProfilesForRole</a> </p> </li> </ul>
-- @param _InstanceProfileId [idType] <p> The stable and unique string identifying the instance profile. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _Roles [roleListType] <p>The role associated with the instance profile.</p>
-- @param _CreateDate [dateType] <p>The date when the instance profile was created.</p>
-- @param _InstanceProfileName [instanceProfileNameType] <p>The name identifying the instance profile.</p>
-- @param _Path [pathType] <p> The path to the instance profile. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _Arn [arnType] <p> The Amazon Resource Name (ARN) specifying the instance profile. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- Required parameter: Path
-- Required parameter: InstanceProfileName
-- Required parameter: InstanceProfileId
-- Required parameter: Arn
-- Required parameter: CreateDate
-- Required parameter: Roles
function M.InstanceProfile(_InstanceProfileId, _Roles, _CreateDate, _InstanceProfileName, _Path, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceProfile")
	local t = { 
		["InstanceProfileId"] = _InstanceProfileId,
		["Roles"] = _Roles,
		["CreateDate"] = _CreateDate,
		["InstanceProfileName"] = _InstanceProfileName,
		["Path"] = _Path,
		["Arn"] = _Arn,
	}
	asserts.AssertInstanceProfile(t)
	return t
end

keys.ListGroupsForUserResponse = { ["Marker"] = true, ["IsTruncated"] = true, ["Groups"] = true, nil }

function asserts.AssertListGroupsForUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsForUserResponse to be of type 'table'")
	assert(struct["Groups"], "Expected key Groups to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Groups"] then asserts.AssertgroupListType(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsForUserResponse[k], "ListGroupsForUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsForUserResponse
-- <p>Contains the response to a successful <a>ListGroupsForUser</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @param _Groups [groupListType] <p>A list of groups.</p>
-- Required parameter: Groups
function M.ListGroupsForUserResponse(_Marker, _IsTruncated, _Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsForUserResponse")
	local t = { 
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Groups"] = _Groups,
	}
	asserts.AssertListGroupsForUserResponse(t)
	return t
end

keys.InvalidInputException = { ["message"] = true, nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["message"] then asserts.AssertinvalidInputMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>
-- @param _message [invalidInputMessage] 
function M.InvalidInputException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidInputException(t)
	return t
end

keys.GenerateCredentialReportResponse = { ["State"] = true, ["Description"] = true, nil }

function asserts.AssertGenerateCredentialReportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenerateCredentialReportResponse to be of type 'table'")
	if struct["State"] then asserts.AssertReportStateType(struct["State"]) end
	if struct["Description"] then asserts.AssertReportStateDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.GenerateCredentialReportResponse[k], "GenerateCredentialReportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenerateCredentialReportResponse
-- <p>Contains the response to a successful <a>GenerateCredentialReport</a> request. </p>
-- @param _State [ReportStateType] <p>Information about the state of the credential report.</p>
-- @param _Description [ReportStateDescriptionType] <p>Information about the credential report.</p>
function M.GenerateCredentialReportResponse(_State, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenerateCredentialReportResponse")
	local t = { 
		["State"] = _State,
		["Description"] = _Description,
	}
	asserts.AssertGenerateCredentialReportResponse(t)
	return t
end

keys.DeleteAccessKeyRequest = { ["UserName"] = true, ["AccessKeyId"] = true, nil }

function asserts.AssertDeleteAccessKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAccessKeyRequest to be of type 'table'")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["AccessKeyId"] then asserts.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAccessKeyRequest[k], "DeleteAccessKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAccessKeyRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user whose access key pair you want to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _AccessKeyId [accessKeyIdType] <p>The access key ID for the access key ID and secret access key you want to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: AccessKeyId
function M.DeleteAccessKeyRequest(_UserName, _AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAccessKeyRequest")
	local t = { 
		["UserName"] = _UserName,
		["AccessKeyId"] = _AccessKeyId,
	}
	asserts.AssertDeleteAccessKeyRequest(t)
	return t
end

keys.GetContextKeysForCustomPolicyRequest = { ["PolicyInputList"] = true, nil }

function asserts.AssertGetContextKeysForCustomPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContextKeysForCustomPolicyRequest to be of type 'table'")
	assert(struct["PolicyInputList"], "Expected key PolicyInputList to exist in table")
	if struct["PolicyInputList"] then asserts.AssertSimulationPolicyListType(struct["PolicyInputList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContextKeysForCustomPolicyRequest[k], "GetContextKeysForCustomPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContextKeysForCustomPolicyRequest
--  
-- @param _PolicyInputList [SimulationPolicyListType] <p>A list of policies for which you want the list of context keys referenced in those policies. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- Required parameter: PolicyInputList
function M.GetContextKeysForCustomPolicyRequest(_PolicyInputList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContextKeysForCustomPolicyRequest")
	local t = { 
		["PolicyInputList"] = _PolicyInputList,
	}
	asserts.AssertGetContextKeysForCustomPolicyRequest(t)
	return t
end

keys.ListServerCertificatesResponse = { ["ServerCertificateMetadataList"] = true, ["Marker"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListServerCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServerCertificatesResponse to be of type 'table'")
	assert(struct["ServerCertificateMetadataList"], "Expected key ServerCertificateMetadataList to exist in table")
	if struct["ServerCertificateMetadataList"] then asserts.AssertserverCertificateMetadataListType(struct["ServerCertificateMetadataList"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServerCertificatesResponse[k], "ListServerCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServerCertificatesResponse
-- <p>Contains the response to a successful <a>ListServerCertificates</a> request. </p>
-- @param _ServerCertificateMetadataList [serverCertificateMetadataListType] <p>A list of server certificates.</p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: ServerCertificateMetadataList
function M.ListServerCertificatesResponse(_ServerCertificateMetadataList, _Marker, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServerCertificatesResponse")
	local t = { 
		["ServerCertificateMetadataList"] = _ServerCertificateMetadataList,
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListServerCertificatesResponse(t)
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

keys.DeactivateMFADeviceRequest = { ["UserName"] = true, ["SerialNumber"] = true, nil }

function asserts.AssertDeactivateMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeactivateMFADeviceRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["SerialNumber"] then asserts.AssertserialNumberType(struct["SerialNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeactivateMFADeviceRequest[k], "DeactivateMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeactivateMFADeviceRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user whose MFA device you want to deactivate.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _SerialNumber [serialNumberType] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>
-- Required parameter: UserName
-- Required parameter: SerialNumber
function M.DeactivateMFADeviceRequest(_UserName, _SerialNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeactivateMFADeviceRequest")
	local t = { 
		["UserName"] = _UserName,
		["SerialNumber"] = _SerialNumber,
	}
	asserts.AssertDeactivateMFADeviceRequest(t)
	return t
end

keys.ChangePasswordRequest = { ["NewPassword"] = true, ["OldPassword"] = true, nil }

function asserts.AssertChangePasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangePasswordRequest to be of type 'table'")
	assert(struct["OldPassword"], "Expected key OldPassword to exist in table")
	assert(struct["NewPassword"], "Expected key NewPassword to exist in table")
	if struct["NewPassword"] then asserts.AssertpasswordType(struct["NewPassword"]) end
	if struct["OldPassword"] then asserts.AssertpasswordType(struct["OldPassword"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangePasswordRequest[k], "ChangePasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangePasswordRequest
--  
-- @param _NewPassword [passwordType] <p>The new password. The new password must conform to the AWS account's password policy, if one exists.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of almost any printable ASCII character from the space (\u0020) through the end of the ASCII character range (\u00FF). You can also include the tab (\u0009), line feed (\u000A), and carriage return (\u000D) characters. Although any of these characters are valid in a password, note that many tools, such as the AWS Management Console, might restrict the ability to enter certain characters because they have special meaning within that tool.</p>
-- @param _OldPassword [passwordType] <p>The IAM user's current password.</p>
-- Required parameter: OldPassword
-- Required parameter: NewPassword
function M.ChangePasswordRequest(_NewPassword, _OldPassword, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangePasswordRequest")
	local t = { 
		["NewPassword"] = _NewPassword,
		["OldPassword"] = _OldPassword,
	}
	asserts.AssertChangePasswordRequest(t)
	return t
end

keys.ListAccountAliasesResponse = { ["Marker"] = true, ["AccountAliases"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListAccountAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountAliasesResponse to be of type 'table'")
	assert(struct["AccountAliases"], "Expected key AccountAliases to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["AccountAliases"] then asserts.AssertaccountAliasListType(struct["AccountAliases"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccountAliasesResponse[k], "ListAccountAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountAliasesResponse
-- <p>Contains the response to a successful <a>ListAccountAliases</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _AccountAliases [accountAliasListType] <p>A list of aliases associated with the account. AWS supports only one alias per account.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: AccountAliases
function M.ListAccountAliasesResponse(_Marker, _AccountAliases, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountAliasesResponse")
	local t = { 
		["Marker"] = _Marker,
		["AccountAliases"] = _AccountAliases,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListAccountAliasesResponse(t)
	return t
end

keys.ListGroupsResponse = { ["Marker"] = true, ["IsTruncated"] = true, ["Groups"] = true, nil }

function asserts.AssertListGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsResponse to be of type 'table'")
	assert(struct["Groups"], "Expected key Groups to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Groups"] then asserts.AssertgroupListType(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsResponse[k], "ListGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsResponse
-- <p>Contains the response to a successful <a>ListGroups</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @param _Groups [groupListType] <p>A list of groups.</p>
-- Required parameter: Groups
function M.ListGroupsResponse(_Marker, _IsTruncated, _Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsResponse")
	local t = { 
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Groups"] = _Groups,
	}
	asserts.AssertListGroupsResponse(t)
	return t
end

keys.UnrecognizedPublicKeyEncodingException = { ["message"] = true, nil }

function asserts.AssertUnrecognizedPublicKeyEncodingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnrecognizedPublicKeyEncodingException to be of type 'table'")
	if struct["message"] then asserts.AssertunrecognizedPublicKeyEncodingMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnrecognizedPublicKeyEncodingException[k], "UnrecognizedPublicKeyEncodingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnrecognizedPublicKeyEncodingException
-- <p>The request was rejected because the public key encoding format is unsupported or unrecognized.</p>
-- @param _message [unrecognizedPublicKeyEncodingMessage] 
function M.UnrecognizedPublicKeyEncodingException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnrecognizedPublicKeyEncodingException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnrecognizedPublicKeyEncodingException(t)
	return t
end

keys.DeletePolicyRequest = { ["PolicyArn"] = true, nil }

function asserts.AssertDeletePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyRequest[k], "DeletePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyRequest
--  
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to delete.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: PolicyArn
function M.DeletePolicyRequest(_PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyRequest")
	local t = { 
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertDeletePolicyRequest(t)
	return t
end

keys.DeleteRoleRequest = { ["RoleName"] = true, nil }

function asserts.AssertDeleteRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRoleRequest[k], "DeleteRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRoleRequest
--  
-- @param _RoleName [roleNameType] <p>The name of the role to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required parameter: RoleName
function M.DeleteRoleRequest(_RoleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRoleRequest")
	local t = { 
		["RoleName"] = _RoleName,
	}
	asserts.AssertDeleteRoleRequest(t)
	return t
end

keys.EntityTemporarilyUnmodifiableException = { ["message"] = true, nil }

function asserts.AssertEntityTemporarilyUnmodifiableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityTemporarilyUnmodifiableException to be of type 'table'")
	if struct["message"] then asserts.AssertentityTemporarilyUnmodifiableMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityTemporarilyUnmodifiableException[k], "EntityTemporarilyUnmodifiableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityTemporarilyUnmodifiableException
-- <p>The request was rejected because it referenced an entity that is temporarily unmodifiable, such as a user name that was deleted and then recreated. The error indicates that the request is likely to succeed if you try again after waiting several minutes. The error message describes the entity.</p>
-- @param _message [entityTemporarilyUnmodifiableMessage] 
function M.EntityTemporarilyUnmodifiableException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityTemporarilyUnmodifiableException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertEntityTemporarilyUnmodifiableException(t)
	return t
end

keys.UpdateSigningCertificateRequest = { ["UserName"] = true, ["Status"] = true, ["CertificateId"] = true, nil }

function asserts.AssertUpdateSigningCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSigningCertificateRequest to be of type 'table'")
	assert(struct["CertificateId"], "Expected key CertificateId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["CertificateId"] then asserts.AssertcertificateIdType(struct["CertificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSigningCertificateRequest[k], "UpdateSigningCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSigningCertificateRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the IAM user the signing certificate belongs to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Status [statusType] <p> The status you want to assign to the certificate. <code>Active</code> means the certificate can be used for API calls to AWS, while <code>Inactive</code> means the certificate cannot be used.</p>
-- @param _CertificateId [certificateIdType] <p>The ID of the signing certificate you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: CertificateId
-- Required parameter: Status
function M.UpdateSigningCertificateRequest(_UserName, _Status, _CertificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSigningCertificateRequest")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["CertificateId"] = _CertificateId,
	}
	asserts.AssertUpdateSigningCertificateRequest(t)
	return t
end

keys.DeleteServiceSpecificCredentialRequest = { ["UserName"] = true, ["ServiceSpecificCredentialId"] = true, nil }

function asserts.AssertDeleteServiceSpecificCredentialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceSpecificCredentialRequest to be of type 'table'")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["ServiceSpecificCredentialId"] then asserts.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceSpecificCredentialRequest[k], "DeleteServiceSpecificCredentialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceSpecificCredentialRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier of the service-specific credential. You can get this value by calling <a>ListServiceSpecificCredentials</a>.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: ServiceSpecificCredentialId
function M.DeleteServiceSpecificCredentialRequest(_UserName, _ServiceSpecificCredentialId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServiceSpecificCredentialRequest")
	local t = { 
		["UserName"] = _UserName,
		["ServiceSpecificCredentialId"] = _ServiceSpecificCredentialId,
	}
	asserts.AssertDeleteServiceSpecificCredentialRequest(t)
	return t
end

keys.Group = { ["Path"] = true, ["CreateDate"] = true, ["GroupId"] = true, ["Arn"] = true, ["GroupName"] = true, nil }

function asserts.AssertGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Group to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["GroupId"] then asserts.AssertidType(struct["GroupId"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Group[k], "Group contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Group
-- <p>Contains information about an IAM group entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateGroup</a> </p> </li> <li> <p> <a>GetGroup</a> </p> </li> <li> <p> <a>ListGroups</a> </p> </li> </ul>
-- @param _Path [pathType] <p>The path to the group. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the group was created.</p>
-- @param _GroupId [idType] <p> The stable and unique string identifying the group. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _Arn [arnType] <p> The Amazon Resource Name (ARN) specifying the group. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _GroupName [groupNameType] <p>The friendly name that identifies the group.</p>
-- Required parameter: Path
-- Required parameter: GroupName
-- Required parameter: GroupId
-- Required parameter: Arn
-- Required parameter: CreateDate
function M.Group(_Path, _CreateDate, _GroupId, _Arn, _GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Group")
	local t = { 
		["Path"] = _Path,
		["CreateDate"] = _CreateDate,
		["GroupId"] = _GroupId,
		["Arn"] = _Arn,
		["GroupName"] = _GroupName,
	}
	asserts.AssertGroup(t)
	return t
end

keys.EnableMFADeviceRequest = { ["UserName"] = true, ["AuthenticationCode1"] = true, ["SerialNumber"] = true, ["AuthenticationCode2"] = true, nil }

function asserts.AssertEnableMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableMFADeviceRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	assert(struct["AuthenticationCode1"], "Expected key AuthenticationCode1 to exist in table")
	assert(struct["AuthenticationCode2"], "Expected key AuthenticationCode2 to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["AuthenticationCode1"] then asserts.AssertauthenticationCodeType(struct["AuthenticationCode1"]) end
	if struct["SerialNumber"] then asserts.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["AuthenticationCode2"] then asserts.AssertauthenticationCodeType(struct["AuthenticationCode2"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableMFADeviceRequest[k], "EnableMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableMFADeviceRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the IAM user for whom you want to enable the MFA device.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _AuthenticationCode1 [authenticationCodeType] <p>An authentication code emitted by the device. </p> <p>The format for this parameter is a string of 6 digits.</p> <important> <p>Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the device</a>.</p> </important>
-- @param _SerialNumber [serialNumberType] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>
-- @param _AuthenticationCode2 [authenticationCodeType] <p>A subsequent authentication code emitted by the device.</p> <p>The format for this parameter is a string of 6 digits.</p> <important> <p>Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the device</a>.</p> </important>
-- Required parameter: UserName
-- Required parameter: SerialNumber
-- Required parameter: AuthenticationCode1
-- Required parameter: AuthenticationCode2
function M.EnableMFADeviceRequest(_UserName, _AuthenticationCode1, _SerialNumber, _AuthenticationCode2, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableMFADeviceRequest")
	local t = { 
		["UserName"] = _UserName,
		["AuthenticationCode1"] = _AuthenticationCode1,
		["SerialNumber"] = _SerialNumber,
		["AuthenticationCode2"] = _AuthenticationCode2,
	}
	asserts.AssertEnableMFADeviceRequest(t)
	return t
end

keys.ListAttachedGroupPoliciesResponse = { ["Marker"] = true, ["AttachedPolicies"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListAttachedGroupPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedGroupPoliciesResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["AttachedPolicies"] then asserts.AssertattachedPoliciesListType(struct["AttachedPolicies"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttachedGroupPoliciesResponse[k], "ListAttachedGroupPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedGroupPoliciesResponse
-- <p>Contains the response to a successful <a>ListAttachedGroupPolicies</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _AttachedPolicies [attachedPoliciesListType] <p>A list of the attached policies.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
function M.ListAttachedGroupPoliciesResponse(_Marker, _AttachedPolicies, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedGroupPoliciesResponse")
	local t = { 
		["Marker"] = _Marker,
		["AttachedPolicies"] = _AttachedPolicies,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListAttachedGroupPoliciesResponse(t)
	return t
end

keys.UpdateAccountPasswordPolicyRequest = { ["AllowUsersToChangePassword"] = true, ["RequireLowercaseCharacters"] = true, ["RequireUppercaseCharacters"] = true, ["MinimumPasswordLength"] = true, ["RequireNumbers"] = true, ["PasswordReusePrevention"] = true, ["HardExpiry"] = true, ["RequireSymbols"] = true, ["MaxPasswordAge"] = true, nil }

function asserts.AssertUpdateAccountPasswordPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccountPasswordPolicyRequest to be of type 'table'")
	if struct["AllowUsersToChangePassword"] then asserts.AssertbooleanType(struct["AllowUsersToChangePassword"]) end
	if struct["RequireLowercaseCharacters"] then asserts.AssertbooleanType(struct["RequireLowercaseCharacters"]) end
	if struct["RequireUppercaseCharacters"] then asserts.AssertbooleanType(struct["RequireUppercaseCharacters"]) end
	if struct["MinimumPasswordLength"] then asserts.AssertminimumPasswordLengthType(struct["MinimumPasswordLength"]) end
	if struct["RequireNumbers"] then asserts.AssertbooleanType(struct["RequireNumbers"]) end
	if struct["PasswordReusePrevention"] then asserts.AssertpasswordReusePreventionType(struct["PasswordReusePrevention"]) end
	if struct["HardExpiry"] then asserts.AssertbooleanObjectType(struct["HardExpiry"]) end
	if struct["RequireSymbols"] then asserts.AssertbooleanType(struct["RequireSymbols"]) end
	if struct["MaxPasswordAge"] then asserts.AssertmaxPasswordAgeType(struct["MaxPasswordAge"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAccountPasswordPolicyRequest[k], "UpdateAccountPasswordPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccountPasswordPolicyRequest
--  
-- @param _AllowUsersToChangePassword [booleanType] <p> Allows all IAM users in your account to use the AWS Management Console to change their own passwords. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html">Letting IAM Users Change Their Own Passwords</a> in the <i>IAM User Guide</i>.</p> <p>Default value: false</p>
-- @param _RequireLowercaseCharacters [booleanType] <p>Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z).</p> <p>Default value: false</p>
-- @param _RequireUppercaseCharacters [booleanType] <p>Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z).</p> <p>Default value: false</p>
-- @param _MinimumPasswordLength [minimumPasswordLengthType] <p>The minimum number of characters allowed in an IAM user password.</p> <p>Default value: 6</p>
-- @param _RequireNumbers [booleanType] <p>Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).</p> <p>Default value: false</p>
-- @param _PasswordReusePrevention [passwordReusePreventionType] <p>Specifies the number of previous passwords that IAM users are prevented from reusing. The default value of 0 means IAM users are not prevented from reusing previous passwords.</p> <p>Default value: 0</p>
-- @param _HardExpiry [booleanObjectType] <p>Prevents IAM users from setting a new password after their password has expired.</p> <p>Default value: false</p>
-- @param _RequireSymbols [booleanType] <p>Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters:</p> <p>! @ # $ % ^ &amp;amp; * ( ) _ + - = [ ] { } | '</p> <p>Default value: false</p>
-- @param _MaxPasswordAge [maxPasswordAgeType] <p>The number of days that an IAM user password is valid. The default value of 0 means IAM user passwords never expire.</p> <p>Default value: 0</p>
function M.UpdateAccountPasswordPolicyRequest(_AllowUsersToChangePassword, _RequireLowercaseCharacters, _RequireUppercaseCharacters, _MinimumPasswordLength, _RequireNumbers, _PasswordReusePrevention, _HardExpiry, _RequireSymbols, _MaxPasswordAge, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAccountPasswordPolicyRequest")
	local t = { 
		["AllowUsersToChangePassword"] = _AllowUsersToChangePassword,
		["RequireLowercaseCharacters"] = _RequireLowercaseCharacters,
		["RequireUppercaseCharacters"] = _RequireUppercaseCharacters,
		["MinimumPasswordLength"] = _MinimumPasswordLength,
		["RequireNumbers"] = _RequireNumbers,
		["PasswordReusePrevention"] = _PasswordReusePrevention,
		["HardExpiry"] = _HardExpiry,
		["RequireSymbols"] = _RequireSymbols,
		["MaxPasswordAge"] = _MaxPasswordAge,
	}
	asserts.AssertUpdateAccountPasswordPolicyRequest(t)
	return t
end

keys.GetGroupResponse = { ["Marker"] = true, ["Group"] = true, ["Users"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertGetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupResponse to be of type 'table'")
	assert(struct["Group"], "Expected key Group to exist in table")
	assert(struct["Users"], "Expected key Users to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["Group"] then asserts.AssertGroup(struct["Group"]) end
	if struct["Users"] then asserts.AssertuserListType(struct["Users"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupResponse[k], "GetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupResponse
-- <p>Contains the response to a successful <a>GetGroup</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _Group [Group] <p>A structure that contains details about the group.</p>
-- @param _Users [userListType] <p>A list of users in the group.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: Group
-- Required parameter: Users
function M.GetGroupResponse(_Marker, _Group, _Users, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupResponse")
	local t = { 
		["Marker"] = _Marker,
		["Group"] = _Group,
		["Users"] = _Users,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertGetGroupResponse(t)
	return t
end

keys.GetRolePolicyResponse = { ["RoleName"] = true, ["PolicyDocument"] = true, ["PolicyName"] = true, nil }

function asserts.AssertGetRolePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRolePolicyResponse to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRolePolicyResponse[k], "GetRolePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRolePolicyResponse
-- <p>Contains the response to a successful <a>GetRolePolicy</a> request. </p>
-- @param _RoleName [roleNameType] <p>The role the policy is associated with.</p>
-- @param _PolicyDocument [policyDocumentType] <p>The policy document.</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy.</p>
-- Required parameter: RoleName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.GetRolePolicyResponse(_RoleName, _PolicyDocument, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRolePolicyResponse")
	local t = { 
		["RoleName"] = _RoleName,
		["PolicyDocument"] = _PolicyDocument,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertGetRolePolicyResponse(t)
	return t
end

keys.DeleteSAMLProviderRequest = { ["SAMLProviderArn"] = true, nil }

function asserts.AssertDeleteSAMLProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSAMLProviderRequest to be of type 'table'")
	assert(struct["SAMLProviderArn"], "Expected key SAMLProviderArn to exist in table")
	if struct["SAMLProviderArn"] then asserts.AssertarnType(struct["SAMLProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSAMLProviderRequest[k], "DeleteSAMLProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSAMLProviderRequest
--  
-- @param _SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider to delete.</p>
-- Required parameter: SAMLProviderArn
function M.DeleteSAMLProviderRequest(_SAMLProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSAMLProviderRequest")
	local t = { 
		["SAMLProviderArn"] = _SAMLProviderArn,
	}
	asserts.AssertDeleteSAMLProviderRequest(t)
	return t
end

keys.CreateInstanceProfileResponse = { ["InstanceProfile"] = true, nil }

function asserts.AssertCreateInstanceProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceProfileResponse to be of type 'table'")
	assert(struct["InstanceProfile"], "Expected key InstanceProfile to exist in table")
	if struct["InstanceProfile"] then asserts.AssertInstanceProfile(struct["InstanceProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstanceProfileResponse[k], "CreateInstanceProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceProfileResponse
-- <p>Contains the response to a successful <a>CreateInstanceProfile</a> request. </p>
-- @param _InstanceProfile [InstanceProfile] <p>A structure containing details about the new instance profile.</p>
-- Required parameter: InstanceProfile
function M.CreateInstanceProfileResponse(_InstanceProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceProfileResponse")
	local t = { 
		["InstanceProfile"] = _InstanceProfile,
	}
	asserts.AssertCreateInstanceProfileResponse(t)
	return t
end

keys.UploadSigningCertificateRequest = { ["UserName"] = true, ["CertificateBody"] = true, nil }

function asserts.AssertUploadSigningCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadSigningCertificateRequest to be of type 'table'")
	assert(struct["CertificateBody"], "Expected key CertificateBody to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["CertificateBody"] then asserts.AssertcertificateBodyType(struct["CertificateBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadSigningCertificateRequest[k], "UploadSigningCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadSigningCertificateRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user the signing certificate is for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _CertificateBody [certificateBodyType] <p>The contents of the signing certificate.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- Required parameter: CertificateBody
function M.UploadSigningCertificateRequest(_UserName, _CertificateBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadSigningCertificateRequest")
	local t = { 
		["UserName"] = _UserName,
		["CertificateBody"] = _CertificateBody,
	}
	asserts.AssertUploadSigningCertificateRequest(t)
	return t
end

keys.ListRolePoliciesRequest = { ["Marker"] = true, ["RoleName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListRolePoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRolePoliciesRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRolePoliciesRequest[k], "ListRolePoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRolePoliciesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _RoleName [roleNameType] <p>The name of the role to list policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: RoleName
function M.ListRolePoliciesRequest(_Marker, _RoleName, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRolePoliciesRequest")
	local t = { 
		["Marker"] = _Marker,
		["RoleName"] = _RoleName,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListRolePoliciesRequest(t)
	return t
end

keys.UnmodifiableEntityException = { ["message"] = true, nil }

function asserts.AssertUnmodifiableEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnmodifiableEntityException to be of type 'table'")
	if struct["message"] then asserts.AssertunmodifiableEntityMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnmodifiableEntityException[k], "UnmodifiableEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnmodifiableEntityException
-- <p>The request was rejected because only the service that depends on the service-linked role can modify or delete the role on your behalf. The error message includes the name of the service that depends on this service-linked role. You must request the change through that service.</p>
-- @param _message [unmodifiableEntityMessage] 
function M.UnmodifiableEntityException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnmodifiableEntityException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnmodifiableEntityException(t)
	return t
end

keys.PolicyEvaluationException = { ["message"] = true, nil }

function asserts.AssertPolicyEvaluationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyEvaluationException to be of type 'table'")
	if struct["message"] then asserts.AssertpolicyEvaluationErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyEvaluationException[k], "PolicyEvaluationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyEvaluationException
-- <p>The request failed because a provided policy could not be successfully evaluated. An additional detail message indicates the source of the failure.</p>
-- @param _message [policyEvaluationErrorMessage] 
function M.PolicyEvaluationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyEvaluationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertPolicyEvaluationException(t)
	return t
end

keys.CredentialReportNotReadyException = { ["message"] = true, nil }

function asserts.AssertCredentialReportNotReadyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CredentialReportNotReadyException to be of type 'table'")
	if struct["message"] then asserts.AssertcredentialReportNotReadyExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CredentialReportNotReadyException[k], "CredentialReportNotReadyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CredentialReportNotReadyException
-- <p>The request was rejected because the credential report is still being generated.</p>
-- @param _message [credentialReportNotReadyExceptionMessage] 
function M.CredentialReportNotReadyException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CredentialReportNotReadyException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertCredentialReportNotReadyException(t)
	return t
end

keys.EvaluationResult = { ["OrganizationsDecisionDetail"] = true, ["MatchedStatements"] = true, ["EvalDecisionDetails"] = true, ["EvalResourceName"] = true, ["ResourceSpecificResults"] = true, ["EvalActionName"] = true, ["MissingContextValues"] = true, ["EvalDecision"] = true, nil }

function asserts.AssertEvaluationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EvaluationResult to be of type 'table'")
	assert(struct["EvalActionName"], "Expected key EvalActionName to exist in table")
	assert(struct["EvalDecision"], "Expected key EvalDecision to exist in table")
	if struct["OrganizationsDecisionDetail"] then asserts.AssertOrganizationsDecisionDetail(struct["OrganizationsDecisionDetail"]) end
	if struct["MatchedStatements"] then asserts.AssertStatementListType(struct["MatchedStatements"]) end
	if struct["EvalDecisionDetails"] then asserts.AssertEvalDecisionDetailsType(struct["EvalDecisionDetails"]) end
	if struct["EvalResourceName"] then asserts.AssertResourceNameType(struct["EvalResourceName"]) end
	if struct["ResourceSpecificResults"] then asserts.AssertResourceSpecificResultListType(struct["ResourceSpecificResults"]) end
	if struct["EvalActionName"] then asserts.AssertActionNameType(struct["EvalActionName"]) end
	if struct["MissingContextValues"] then asserts.AssertContextKeyNamesResultListType(struct["MissingContextValues"]) end
	if struct["EvalDecision"] then asserts.AssertPolicyEvaluationDecisionType(struct["EvalDecision"]) end
	for k,_ in pairs(struct) do
		assert(keys.EvaluationResult[k], "EvaluationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EvaluationResult
-- <p>Contains the results of a simulation.</p> <p>This data type is used by the return parameter of <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulatePrincipalPolicy</a> </code>.</p>
-- @param _OrganizationsDecisionDetail [OrganizationsDecisionDetail] <p>A structure that details how AWS Organizations and its service control policies affect the results of the simulation. Only applies if the simulated user's account is part of an organization.</p>
-- @param _MatchedStatements [StatementListType] <p>A list of the statements in the input policies that determine the result for this scenario. Remember that even if multiple statements allow the action on the resource, if only one statement denies that action, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.</p>
-- @param _EvalDecisionDetails [EvalDecisionDetailsType] <p>Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_compare-resource-policies.html">How IAM Roles Differ from Resource-based Policies</a> </p>
-- @param _EvalResourceName [ResourceNameType] <p>The ARN of the resource that the indicated API action was tested on.</p>
-- @param _ResourceSpecificResults [ResourceSpecificResultListType] <p>The individual results of the simulation of the API action specified in EvalActionName on each resource.</p>
-- @param _EvalActionName [ActionNameType] <p>The name of the API action tested on the indicated resource.</p>
-- @param _MissingContextValues [ContextKeyNamesResultListType] <p>A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when the resource in a simulation is "*", either explicitly, or when the <code>ResourceArns</code> parameter blank. If you include a list of resources, then any missing context values are instead included under the <code>ResourceSpecificResults</code> section. To discover the context keys used by a set of policies, you can call <a>GetContextKeysForCustomPolicy</a> or <a>GetContextKeysForPrincipalPolicy</a>.</p>
-- @param _EvalDecision [PolicyEvaluationDecisionType] <p>The result of the simulation.</p>
-- Required parameter: EvalActionName
-- Required parameter: EvalDecision
function M.EvaluationResult(_OrganizationsDecisionDetail, _MatchedStatements, _EvalDecisionDetails, _EvalResourceName, _ResourceSpecificResults, _EvalActionName, _MissingContextValues, _EvalDecision, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EvaluationResult")
	local t = { 
		["OrganizationsDecisionDetail"] = _OrganizationsDecisionDetail,
		["MatchedStatements"] = _MatchedStatements,
		["EvalDecisionDetails"] = _EvalDecisionDetails,
		["EvalResourceName"] = _EvalResourceName,
		["ResourceSpecificResults"] = _ResourceSpecificResults,
		["EvalActionName"] = _EvalActionName,
		["MissingContextValues"] = _MissingContextValues,
		["EvalDecision"] = _EvalDecision,
	}
	asserts.AssertEvaluationResult(t)
	return t
end

keys.UpdateGroupRequest = { ["NewPath"] = true, ["GroupName"] = true, ["NewGroupName"] = true, nil }

function asserts.AssertUpdateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["NewPath"] then asserts.AssertpathType(struct["NewPath"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["NewGroupName"] then asserts.AssertgroupNameType(struct["NewGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupRequest[k], "UpdateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupRequest
--  
-- @param _NewPath [pathType] <p>New path for the IAM group. Only include this if changing the group's path.</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _GroupName [groupNameType] <p>Name of the IAM group to update. If you're changing the name of the group, this is the original name.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _NewGroupName [groupNameType] <p>New name for the IAM group. Only include this if changing the group's name.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: GroupName
function M.UpdateGroupRequest(_NewPath, _GroupName, _NewGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupRequest")
	local t = { 
		["NewPath"] = _NewPath,
		["GroupName"] = _GroupName,
		["NewGroupName"] = _NewGroupName,
	}
	asserts.AssertUpdateGroupRequest(t)
	return t
end

keys.DeleteAccountAliasRequest = { ["AccountAlias"] = true, nil }

function asserts.AssertDeleteAccountAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAccountAliasRequest to be of type 'table'")
	assert(struct["AccountAlias"], "Expected key AccountAlias to exist in table")
	if struct["AccountAlias"] then asserts.AssertaccountAliasType(struct["AccountAlias"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAccountAliasRequest[k], "DeleteAccountAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAccountAliasRequest
--  
-- @param _AccountAlias [accountAliasType] <p>The name of the account alias to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.</p>
-- Required parameter: AccountAlias
function M.DeleteAccountAliasRequest(_AccountAlias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAccountAliasRequest")
	local t = { 
		["AccountAlias"] = _AccountAlias,
	}
	asserts.AssertDeleteAccountAliasRequest(t)
	return t
end

keys.ListPolicyVersionsResponse = { ["Marker"] = true, ["IsTruncated"] = true, ["Versions"] = true, nil }

function asserts.AssertListPolicyVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Versions"] then asserts.AssertpolicyDocumentVersionListType(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyVersionsResponse[k], "ListPolicyVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsResponse
-- <p>Contains the response to a successful <a>ListPolicyVersions</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @param _Versions [policyDocumentVersionListType] <p>A list of policy versions.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
function M.ListPolicyVersionsResponse(_Marker, _IsTruncated, _Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyVersionsResponse")
	local t = { 
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Versions"] = _Versions,
	}
	asserts.AssertListPolicyVersionsResponse(t)
	return t
end

keys.Policy = { ["PolicyName"] = true, ["Description"] = true, ["CreateDate"] = true, ["AttachmentCount"] = true, ["IsAttachable"] = true, ["PolicyId"] = true, ["DefaultVersionId"] = true, ["Path"] = true, ["Arn"] = true, ["UpdateDate"] = true, nil }

function asserts.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["Description"] then asserts.AssertpolicyDescriptionType(struct["Description"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["AttachmentCount"] then asserts.AssertattachmentCountType(struct["AttachmentCount"]) end
	if struct["IsAttachable"] then asserts.AssertbooleanType(struct["IsAttachable"]) end
	if struct["PolicyId"] then asserts.AssertidType(struct["PolicyId"]) end
	if struct["DefaultVersionId"] then asserts.AssertpolicyVersionIdType(struct["DefaultVersionId"]) end
	if struct["Path"] then asserts.AssertpolicyPathType(struct["Path"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	if struct["UpdateDate"] then asserts.AssertdateType(struct["UpdateDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Policy[k], "Policy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policy
-- <p>Contains information about a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicy</a>, <a>GetPolicy</a>, and <a>ListPolicies</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param _PolicyName [policyNameType] <p>The friendly name (not ARN) identifying the policy.</p>
-- @param _Description [policyDescriptionType] <p>A friendly description of the policy.</p> <p>This element is included in the response to the <a>GetPolicy</a> operation. It is not included in the response to the <a>ListPolicies</a> operation. </p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy was created.</p>
-- @param _AttachmentCount [attachmentCountType] <p>The number of entities (users, groups, and roles) that the policy is attached to.</p>
-- @param _IsAttachable [booleanType] <p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>
-- @param _PolicyId [idType] <p>The stable and unique string identifying the policy.</p> <p>For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _DefaultVersionId [policyVersionIdType] <p>The identifier for the version of the policy that is set as the default version.</p>
-- @param _Path [policyPathType] <p>The path to the policy.</p> <p>For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _Arn [arnType] 
-- @param _UpdateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy was last updated.</p> <p>When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.</p>
function M.Policy(_PolicyName, _Description, _CreateDate, _AttachmentCount, _IsAttachable, _PolicyId, _DefaultVersionId, _Path, _Arn, _UpdateDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Policy")
	local t = { 
		["PolicyName"] = _PolicyName,
		["Description"] = _Description,
		["CreateDate"] = _CreateDate,
		["AttachmentCount"] = _AttachmentCount,
		["IsAttachable"] = _IsAttachable,
		["PolicyId"] = _PolicyId,
		["DefaultVersionId"] = _DefaultVersionId,
		["Path"] = _Path,
		["Arn"] = _Arn,
		["UpdateDate"] = _UpdateDate,
	}
	asserts.AssertPolicy(t)
	return t
end

keys.GetCredentialReportResponse = { ["Content"] = true, ["GeneratedTime"] = true, ["ReportFormat"] = true, nil }

function asserts.AssertGetCredentialReportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCredentialReportResponse to be of type 'table'")
	if struct["Content"] then asserts.AssertReportContentType(struct["Content"]) end
	if struct["GeneratedTime"] then asserts.AssertdateType(struct["GeneratedTime"]) end
	if struct["ReportFormat"] then asserts.AssertReportFormatType(struct["ReportFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCredentialReportResponse[k], "GetCredentialReportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCredentialReportResponse
-- <p>Contains the response to a successful <a>GetCredentialReport</a> request. </p>
-- @param _Content [ReportContentType] <p>Contains the credential report. The report is Base64-encoded.</p>
-- @param _GeneratedTime [dateType] <p> The date and time when the credential report was created, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>.</p>
-- @param _ReportFormat [ReportFormatType] <p>The format (MIME type) of the credential report.</p>
function M.GetCredentialReportResponse(_Content, _GeneratedTime, _ReportFormat, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCredentialReportResponse")
	local t = { 
		["Content"] = _Content,
		["GeneratedTime"] = _GeneratedTime,
		["ReportFormat"] = _ReportFormat,
	}
	asserts.AssertGetCredentialReportResponse(t)
	return t
end

keys.GetUserPolicyResponse = { ["UserName"] = true, ["PolicyName"] = true, ["PolicyDocument"] = true, nil }

function asserts.AssertGetUserPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserPolicyResponse to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserPolicyResponse[k], "GetUserPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserPolicyResponse
-- <p>Contains the response to a successful <a>GetUserPolicy</a> request. </p>
-- @param _UserName [existingUserNameType] <p>The user the policy is associated with.</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy.</p>
-- @param _PolicyDocument [policyDocumentType] <p>The policy document.</p>
-- Required parameter: UserName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.GetUserPolicyResponse(_UserName, _PolicyName, _PolicyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserPolicyResponse")
	local t = { 
		["UserName"] = _UserName,
		["PolicyName"] = _PolicyName,
		["PolicyDocument"] = _PolicyDocument,
	}
	asserts.AssertGetUserPolicyResponse(t)
	return t
end

keys.GetSAMLProviderRequest = { ["SAMLProviderArn"] = true, nil }

function asserts.AssertGetSAMLProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSAMLProviderRequest to be of type 'table'")
	assert(struct["SAMLProviderArn"], "Expected key SAMLProviderArn to exist in table")
	if struct["SAMLProviderArn"] then asserts.AssertarnType(struct["SAMLProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSAMLProviderRequest[k], "GetSAMLProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSAMLProviderRequest
--  
-- @param _SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get information about.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: SAMLProviderArn
function M.GetSAMLProviderRequest(_SAMLProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSAMLProviderRequest")
	local t = { 
		["SAMLProviderArn"] = _SAMLProviderArn,
	}
	asserts.AssertGetSAMLProviderRequest(t)
	return t
end

keys.DeleteInstanceProfileRequest = { ["InstanceProfileName"] = true, nil }

function asserts.AssertDeleteInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	if struct["InstanceProfileName"] then asserts.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInstanceProfileRequest[k], "DeleteInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInstanceProfileRequest
--  
-- @param _InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: InstanceProfileName
function M.DeleteInstanceProfileRequest(_InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteInstanceProfileRequest")
	local t = { 
		["InstanceProfileName"] = _InstanceProfileName,
	}
	asserts.AssertDeleteInstanceProfileRequest(t)
	return t
end

keys.ListInstanceProfilesForRoleResponse = { ["Marker"] = true, ["IsTruncated"] = true, ["InstanceProfiles"] = true, nil }

function asserts.AssertListInstanceProfilesForRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesForRoleResponse to be of type 'table'")
	assert(struct["InstanceProfiles"], "Expected key InstanceProfiles to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	if struct["InstanceProfiles"] then asserts.AssertinstanceProfileListType(struct["InstanceProfiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceProfilesForRoleResponse[k], "ListInstanceProfilesForRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesForRoleResponse
-- <p>Contains the response to a successful <a>ListInstanceProfilesForRole</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @param _InstanceProfiles [instanceProfileListType] <p>A list of instance profiles.</p>
-- Required parameter: InstanceProfiles
function M.ListInstanceProfilesForRoleResponse(_Marker, _IsTruncated, _InstanceProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceProfilesForRoleResponse")
	local t = { 
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["InstanceProfiles"] = _InstanceProfiles,
	}
	asserts.AssertListInstanceProfilesForRoleResponse(t)
	return t
end

keys.ListEntitiesForPolicyResponse = { ["Marker"] = true, ["PolicyGroups"] = true, ["PolicyUsers"] = true, ["PolicyRoles"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListEntitiesForPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEntitiesForPolicyResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PolicyGroups"] then asserts.AssertPolicyGroupListType(struct["PolicyGroups"]) end
	if struct["PolicyUsers"] then asserts.AssertPolicyUserListType(struct["PolicyUsers"]) end
	if struct["PolicyRoles"] then asserts.AssertPolicyRoleListType(struct["PolicyRoles"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEntitiesForPolicyResponse[k], "ListEntitiesForPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEntitiesForPolicyResponse
-- <p>Contains the response to a successful <a>ListEntitiesForPolicy</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _PolicyGroups [PolicyGroupListType] <p>A list of IAM groups that the policy is attached to.</p>
-- @param _PolicyUsers [PolicyUserListType] <p>A list of IAM users that the policy is attached to.</p>
-- @param _PolicyRoles [PolicyRoleListType] <p>A list of IAM roles that the policy is attached to.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
function M.ListEntitiesForPolicyResponse(_Marker, _PolicyGroups, _PolicyUsers, _PolicyRoles, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEntitiesForPolicyResponse")
	local t = { 
		["Marker"] = _Marker,
		["PolicyGroups"] = _PolicyGroups,
		["PolicyUsers"] = _PolicyUsers,
		["PolicyRoles"] = _PolicyRoles,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListEntitiesForPolicyResponse(t)
	return t
end

keys.GetAccountAuthorizationDetailsResponse = { ["RoleDetailList"] = true, ["GroupDetailList"] = true, ["UserDetailList"] = true, ["Policies"] = true, ["Marker"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertGetAccountAuthorizationDetailsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountAuthorizationDetailsResponse to be of type 'table'")
	if struct["RoleDetailList"] then asserts.AssertroleDetailListType(struct["RoleDetailList"]) end
	if struct["GroupDetailList"] then asserts.AssertgroupDetailListType(struct["GroupDetailList"]) end
	if struct["UserDetailList"] then asserts.AssertuserDetailListType(struct["UserDetailList"]) end
	if struct["Policies"] then asserts.AssertManagedPolicyDetailListType(struct["Policies"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountAuthorizationDetailsResponse[k], "GetAccountAuthorizationDetailsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountAuthorizationDetailsResponse
-- <p>Contains the response to a successful <a>GetAccountAuthorizationDetails</a> request. </p>
-- @param _RoleDetailList [roleDetailListType] <p>A list containing information about IAM roles.</p>
-- @param _GroupDetailList [groupDetailListType] <p>A list containing information about IAM groups.</p>
-- @param _UserDetailList [userDetailListType] <p>A list containing information about IAM users.</p>
-- @param _Policies [ManagedPolicyDetailListType] <p>A list containing information about managed policies.</p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
function M.GetAccountAuthorizationDetailsResponse(_RoleDetailList, _GroupDetailList, _UserDetailList, _Policies, _Marker, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountAuthorizationDetailsResponse")
	local t = { 
		["RoleDetailList"] = _RoleDetailList,
		["GroupDetailList"] = _GroupDetailList,
		["UserDetailList"] = _UserDetailList,
		["Policies"] = _Policies,
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertGetAccountAuthorizationDetailsResponse(t)
	return t
end

keys.ResourceSpecificResult = { ["EvalResourceDecision"] = true, ["MissingContextValues"] = true, ["MatchedStatements"] = true, ["EvalDecisionDetails"] = true, ["EvalResourceName"] = true, nil }

function asserts.AssertResourceSpecificResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceSpecificResult to be of type 'table'")
	assert(struct["EvalResourceName"], "Expected key EvalResourceName to exist in table")
	assert(struct["EvalResourceDecision"], "Expected key EvalResourceDecision to exist in table")
	if struct["EvalResourceDecision"] then asserts.AssertPolicyEvaluationDecisionType(struct["EvalResourceDecision"]) end
	if struct["MissingContextValues"] then asserts.AssertContextKeyNamesResultListType(struct["MissingContextValues"]) end
	if struct["MatchedStatements"] then asserts.AssertStatementListType(struct["MatchedStatements"]) end
	if struct["EvalDecisionDetails"] then asserts.AssertEvalDecisionDetailsType(struct["EvalDecisionDetails"]) end
	if struct["EvalResourceName"] then asserts.AssertResourceNameType(struct["EvalResourceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceSpecificResult[k], "ResourceSpecificResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceSpecificResult
-- <p>Contains the result of the simulation of a single API action call on a single resource.</p> <p>This data type is used by a member of the <a>EvaluationResult</a> data type.</p>
-- @param _EvalResourceDecision [PolicyEvaluationDecisionType] <p>The result of the simulation of the simulated API action on the resource specified in <code>EvalResourceName</code>.</p>
-- @param _MissingContextValues [ContextKeyNamesResultListType] <p>A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when a list of ARNs is included in the <code>ResourceArns</code> parameter instead of "*". If you do not specify individual resources, by setting <code>ResourceArns</code> to "*" or by not including the <code>ResourceArns</code> parameter, then any missing context values are instead included under the <code>EvaluationResults</code> section. To discover the context keys used by a set of policies, you can call <a>GetContextKeysForCustomPolicy</a> or <a>GetContextKeysForPrincipalPolicy</a>.</p>
-- @param _MatchedStatements [StatementListType] <p>A list of the statements in the input policies that determine the result for this part of the simulation. Remember that even if multiple statements allow the action on the resource, if <i>any</i> statement denies that action, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.</p>
-- @param _EvalDecisionDetails [EvalDecisionDetailsType] <p>Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access.</p>
-- @param _EvalResourceName [ResourceNameType] <p>The name of the simulated resource, in Amazon Resource Name (ARN) format.</p>
-- Required parameter: EvalResourceName
-- Required parameter: EvalResourceDecision
function M.ResourceSpecificResult(_EvalResourceDecision, _MissingContextValues, _MatchedStatements, _EvalDecisionDetails, _EvalResourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceSpecificResult")
	local t = { 
		["EvalResourceDecision"] = _EvalResourceDecision,
		["MissingContextValues"] = _MissingContextValues,
		["MatchedStatements"] = _MatchedStatements,
		["EvalDecisionDetails"] = _EvalDecisionDetails,
		["EvalResourceName"] = _EvalResourceName,
	}
	asserts.AssertResourceSpecificResult(t)
	return t
end

keys.DeleteSigningCertificateRequest = { ["UserName"] = true, ["CertificateId"] = true, nil }

function asserts.AssertDeleteSigningCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSigningCertificateRequest to be of type 'table'")
	assert(struct["CertificateId"], "Expected key CertificateId to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["CertificateId"] then asserts.AssertcertificateIdType(struct["CertificateId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSigningCertificateRequest[k], "DeleteSigningCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSigningCertificateRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user the signing certificate belongs to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _CertificateId [certificateIdType] <p>The ID of the signing certificate to delete.</p> <p>The format of this parameter, as described by its <a href="http://wikipedia.org/wiki/regex">regex</a> pattern, is a string of characters that can be upper- or lower-cased letters or digits.</p>
-- Required parameter: CertificateId
function M.DeleteSigningCertificateRequest(_UserName, _CertificateId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSigningCertificateRequest")
	local t = { 
		["UserName"] = _UserName,
		["CertificateId"] = _CertificateId,
	}
	asserts.AssertDeleteSigningCertificateRequest(t)
	return t
end

keys.ListInstanceProfilesRequest = { ["Marker"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListInstanceProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then asserts.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceProfilesRequest[k], "ListInstanceProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example, the prefix <code>/application_abc/component_xyz/</code> gets all instance profiles whose path starts with <code>/application_abc/component_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all instance profiles. This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListInstanceProfilesRequest(_Marker, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceProfilesRequest")
	local t = { 
		["Marker"] = _Marker,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListInstanceProfilesRequest(t)
	return t
end

keys.OpenIDConnectProviderListEntry = { ["Arn"] = true, nil }

function asserts.AssertOpenIDConnectProviderListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OpenIDConnectProviderListEntry to be of type 'table'")
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.OpenIDConnectProviderListEntry[k], "OpenIDConnectProviderListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OpenIDConnectProviderListEntry
-- <p>Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect provider.</p>
-- @param _Arn [arnType] 
function M.OpenIDConnectProviderListEntry(_Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OpenIDConnectProviderListEntry")
	local t = { 
		["Arn"] = _Arn,
	}
	asserts.AssertOpenIDConnectProviderListEntry(t)
	return t
end

keys.ListAccessKeysRequest = { ["UserName"] = true, ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListAccessKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccessKeysRequest to be of type 'table'")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccessKeysRequest[k], "ListAccessKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccessKeysRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListAccessKeysRequest(_UserName, _Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccessKeysRequest")
	local t = { 
		["UserName"] = _UserName,
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListAccessKeysRequest(t)
	return t
end

keys.GetSSHPublicKeyRequest = { ["UserName"] = true, ["SSHPublicKeyId"] = true, ["Encoding"] = true, nil }

function asserts.AssertGetSSHPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSSHPublicKeyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	assert(struct["Encoding"], "Expected key Encoding to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["SSHPublicKeyId"] then asserts.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	if struct["Encoding"] then asserts.AssertencodingType(struct["Encoding"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSSHPublicKeyRequest[k], "GetSSHPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSSHPublicKeyRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- @param _Encoding [encodingType] <p>Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use <code>SSH</code>. To retrieve the public key in PEM format, use <code>PEM</code>.</p>
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
-- Required parameter: Encoding
function M.GetSSHPublicKeyRequest(_UserName, _SSHPublicKeyId, _Encoding, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSSHPublicKeyRequest")
	local t = { 
		["UserName"] = _UserName,
		["SSHPublicKeyId"] = _SSHPublicKeyId,
		["Encoding"] = _Encoding,
	}
	asserts.AssertGetSSHPublicKeyRequest(t)
	return t
end

keys.UpdateSAMLProviderRequest = { ["SAMLProviderArn"] = true, ["SAMLMetadataDocument"] = true, nil }

function asserts.AssertUpdateSAMLProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSAMLProviderRequest to be of type 'table'")
	assert(struct["SAMLMetadataDocument"], "Expected key SAMLMetadataDocument to exist in table")
	assert(struct["SAMLProviderArn"], "Expected key SAMLProviderArn to exist in table")
	if struct["SAMLProviderArn"] then asserts.AssertarnType(struct["SAMLProviderArn"]) end
	if struct["SAMLMetadataDocument"] then asserts.AssertSAMLMetadataDocumentType(struct["SAMLMetadataDocument"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSAMLProviderRequest[k], "UpdateSAMLProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSAMLProviderRequest
--  
-- @param _SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider to update.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param _SAMLMetadataDocument [SAMLMetadataDocumentType] <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p>
-- Required parameter: SAMLMetadataDocument
-- Required parameter: SAMLProviderArn
function M.UpdateSAMLProviderRequest(_SAMLProviderArn, _SAMLMetadataDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSAMLProviderRequest")
	local t = { 
		["SAMLProviderArn"] = _SAMLProviderArn,
		["SAMLMetadataDocument"] = _SAMLMetadataDocument,
	}
	asserts.AssertUpdateSAMLProviderRequest(t)
	return t
end

keys.GetGroupPolicyResponse = { ["GroupName"] = true, ["PolicyDocument"] = true, ["PolicyName"] = true, nil }

function asserts.AssertGetGroupPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupPolicyResponse to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupPolicyResponse[k], "GetGroupPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupPolicyResponse
-- <p>Contains the response to a successful <a>GetGroupPolicy</a> request. </p>
-- @param _GroupName [groupNameType] <p>The group the policy is associated with.</p>
-- @param _PolicyDocument [policyDocumentType] <p>The policy document.</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy.</p>
-- Required parameter: GroupName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.GetGroupPolicyResponse(_GroupName, _PolicyDocument, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupPolicyResponse")
	local t = { 
		["GroupName"] = _GroupName,
		["PolicyDocument"] = _PolicyDocument,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertGetGroupPolicyResponse(t)
	return t
end

keys.ServerCertificateMetadata = { ["ServerCertificateId"] = true, ["ServerCertificateName"] = true, ["Expiration"] = true, ["Path"] = true, ["Arn"] = true, ["UploadDate"] = true, nil }

function asserts.AssertServerCertificateMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerCertificateMetadata to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	assert(struct["ServerCertificateId"], "Expected key ServerCertificateId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["ServerCertificateId"] then asserts.AssertidType(struct["ServerCertificateId"]) end
	if struct["ServerCertificateName"] then asserts.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	if struct["Expiration"] then asserts.AssertdateType(struct["Expiration"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	if struct["UploadDate"] then asserts.AssertdateType(struct["UploadDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerCertificateMetadata[k], "ServerCertificateMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerCertificateMetadata
-- <p>Contains information about a server certificate without its certificate body, certificate chain, and private key.</p> <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a> actions. </p>
-- @param _ServerCertificateId [idType] <p> The stable and unique string identifying the server certificate. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _ServerCertificateName [serverCertificateNameType] <p>The name that identifies the server certificate.</p>
-- @param _Expiration [dateType] <p>The date on which the certificate is set to expire.</p>
-- @param _Path [pathType] <p> The path to the server certificate. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _Arn [arnType] <p> The Amazon Resource Name (ARN) specifying the server certificate. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _UploadDate [dateType] <p>The date when the server certificate was uploaded.</p>
-- Required parameter: Path
-- Required parameter: ServerCertificateName
-- Required parameter: ServerCertificateId
-- Required parameter: Arn
function M.ServerCertificateMetadata(_ServerCertificateId, _ServerCertificateName, _Expiration, _Path, _Arn, _UploadDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerCertificateMetadata")
	local t = { 
		["ServerCertificateId"] = _ServerCertificateId,
		["ServerCertificateName"] = _ServerCertificateName,
		["Expiration"] = _Expiration,
		["Path"] = _Path,
		["Arn"] = _Arn,
		["UploadDate"] = _UploadDate,
	}
	asserts.AssertServerCertificateMetadata(t)
	return t
end

keys.DeleteServerCertificateRequest = { ["ServerCertificateName"] = true, nil }

function asserts.AssertDeleteServerCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServerCertificateRequest to be of type 'table'")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	if struct["ServerCertificateName"] then asserts.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServerCertificateRequest[k], "DeleteServerCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServerCertificateRequest
--  
-- @param _ServerCertificateName [serverCertificateNameType] <p>The name of the server certificate you want to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: ServerCertificateName
function M.DeleteServerCertificateRequest(_ServerCertificateName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteServerCertificateRequest")
	local t = { 
		["ServerCertificateName"] = _ServerCertificateName,
	}
	asserts.AssertDeleteServerCertificateRequest(t)
	return t
end

keys.CreateGroupRequest = { ["Path"] = true, ["GroupName"] = true, nil }

function asserts.AssertCreateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupRequest[k], "CreateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupRequest
--  
-- @param _Path [pathType] <p> The path to the group. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _GroupName [groupNameType] <p>The name of the group to create. Do not include the path in this value.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-. The group name must be unique within the account. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".</p>
-- Required parameter: GroupName
function M.CreateGroupRequest(_Path, _GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupRequest")
	local t = { 
		["Path"] = _Path,
		["GroupName"] = _GroupName,
	}
	asserts.AssertCreateGroupRequest(t)
	return t
end

keys.PolicyVersion = { ["CreateDate"] = true, ["VersionId"] = true, ["Document"] = true, ["IsDefaultVersion"] = true, nil }

function asserts.AssertPolicyVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyVersion to be of type 'table'")
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["VersionId"] then asserts.AssertpolicyVersionIdType(struct["VersionId"]) end
	if struct["Document"] then asserts.AssertpolicyDocumentType(struct["Document"]) end
	if struct["IsDefaultVersion"] then asserts.AssertbooleanType(struct["IsDefaultVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyVersion[k], "PolicyVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyVersion
-- <p>Contains information about a version of a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy version was created.</p>
-- @param _VersionId [policyVersionIdType] <p>The identifier for the policy version.</p> <p>Policy version identifiers always begin with <code>v</code> (always lowercase). When a policy is created, the first policy version is <code>v1</code>. </p>
-- @param _Document [policyDocumentType] <p>The policy document.</p> <p>The policy document is returned in the response to the <a>GetPolicyVersion</a> and <a>GetAccountAuthorizationDetails</a> operations. It is not returned in the response to the <a>CreatePolicyVersion</a> or <a>ListPolicyVersions</a> operations. </p>
-- @param _IsDefaultVersion [booleanType] <p>Specifies whether the policy version is set as the policy's default version.</p>
function M.PolicyVersion(_CreateDate, _VersionId, _Document, _IsDefaultVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyVersion")
	local t = { 
		["CreateDate"] = _CreateDate,
		["VersionId"] = _VersionId,
		["Document"] = _Document,
		["IsDefaultVersion"] = _IsDefaultVersion,
	}
	asserts.AssertPolicyVersion(t)
	return t
end

keys.GetContextKeysForPrincipalPolicyRequest = { ["PolicySourceArn"] = true, ["PolicyInputList"] = true, nil }

function asserts.AssertGetContextKeysForPrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContextKeysForPrincipalPolicyRequest to be of type 'table'")
	assert(struct["PolicySourceArn"], "Expected key PolicySourceArn to exist in table")
	if struct["PolicySourceArn"] then asserts.AssertarnType(struct["PolicySourceArn"]) end
	if struct["PolicyInputList"] then asserts.AssertSimulationPolicyListType(struct["PolicyInputList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContextKeysForPrincipalPolicyRequest[k], "GetContextKeysForPrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContextKeysForPrincipalPolicyRequest
--  
-- @param _PolicySourceArn [arnType] <p>The ARN of a user, group, or role whose policies contain the context keys that you want listed. If you specify a user, the list includes context keys that are found in all policies attached to the user as well as to all groups that the user is a member of. If you pick a group or a role, then it includes only those context keys that are found in policies attached to that entity. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param _PolicyInputList [SimulationPolicyListType] <p>An optional list of additional policies for which you want the list of context keys that are referenced.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- Required parameter: PolicySourceArn
function M.GetContextKeysForPrincipalPolicyRequest(_PolicySourceArn, _PolicyInputList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContextKeysForPrincipalPolicyRequest")
	local t = { 
		["PolicySourceArn"] = _PolicySourceArn,
		["PolicyInputList"] = _PolicyInputList,
	}
	asserts.AssertGetContextKeysForPrincipalPolicyRequest(t)
	return t
end

keys.ListUserPoliciesRequest = { ["UserName"] = true, ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListUserPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoliciesRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserPoliciesRequest[k], "ListUserPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoliciesRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user to list policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: UserName
function M.ListUserPoliciesRequest(_UserName, _Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserPoliciesRequest")
	local t = { 
		["UserName"] = _UserName,
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListUserPoliciesRequest(t)
	return t
end

keys.ListServiceSpecificCredentialsRequest = { ["UserName"] = true, ["ServiceName"] = true, nil }

function asserts.AssertListServiceSpecificCredentialsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServiceSpecificCredentialsRequest to be of type 'table'")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["ServiceName"] then asserts.AssertserviceName(struct["ServiceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServiceSpecificCredentialsRequest[k], "ListServiceSpecificCredentialsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServiceSpecificCredentialsRequest
--  
-- @param _UserName [userNameType] <p>The name of the user whose service-specific credentials you want information about. If this value is not specified then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _ServiceName [serviceName] <p>Filters the returned results to only those for the specified AWS service. If not specified, then AWS returns service-specific credentials for all services.</p>
function M.ListServiceSpecificCredentialsRequest(_UserName, _ServiceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServiceSpecificCredentialsRequest")
	local t = { 
		["UserName"] = _UserName,
		["ServiceName"] = _ServiceName,
	}
	asserts.AssertListServiceSpecificCredentialsRequest(t)
	return t
end

keys.ListSSHPublicKeysRequest = { ["UserName"] = true, ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListSSHPublicKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSSHPublicKeysRequest to be of type 'table'")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSSHPublicKeysRequest[k], "ListSSHPublicKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSSHPublicKeysRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user to list SSH public keys for. If none is specified, the UserName field is determined implicitly based on the AWS access key used to sign the request.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListSSHPublicKeysRequest(_UserName, _Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSSHPublicKeysRequest")
	local t = { 
		["UserName"] = _UserName,
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListSSHPublicKeysRequest(t)
	return t
end

keys.ListSAMLProvidersRequest = { nil }

function asserts.AssertListSAMLProvidersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSAMLProvidersRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ListSAMLProvidersRequest[k], "ListSAMLProvidersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSAMLProvidersRequest
--  
function M.ListSAMLProvidersRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSAMLProvidersRequest")
	local t = { 
	}
	asserts.AssertListSAMLProvidersRequest(t)
	return t
end

keys.UpdateAssumeRolePolicyRequest = { ["RoleName"] = true, ["PolicyDocument"] = true, nil }

function asserts.AssertUpdateAssumeRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssumeRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAssumeRolePolicyRequest[k], "UpdateAssumeRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssumeRolePolicyRequest
--  
-- @param _RoleName [roleNameType] <p>The name of the role to update with the new policy.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _PolicyDocument [policyDocumentType] <p>The policy that grants an entity permission to assume the role.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- Required parameter: RoleName
-- Required parameter: PolicyDocument
function M.UpdateAssumeRolePolicyRequest(_RoleName, _PolicyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAssumeRolePolicyRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["PolicyDocument"] = _PolicyDocument,
	}
	asserts.AssertUpdateAssumeRolePolicyRequest(t)
	return t
end

keys.RemoveUserFromGroupRequest = { ["UserName"] = true, ["GroupName"] = true, nil }

function asserts.AssertRemoveUserFromGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveUserFromGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveUserFromGroupRequest[k], "RemoveUserFromGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveUserFromGroupRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user to remove.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _GroupName [groupNameType] <p>The name of the group to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: GroupName
-- Required parameter: UserName
function M.RemoveUserFromGroupRequest(_UserName, _GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveUserFromGroupRequest")
	local t = { 
		["UserName"] = _UserName,
		["GroupName"] = _GroupName,
	}
	asserts.AssertRemoveUserFromGroupRequest(t)
	return t
end

keys.SigningCertificate = { ["UserName"] = true, ["Status"] = true, ["CertificateBody"] = true, ["CertificateId"] = true, ["UploadDate"] = true, nil }

function asserts.AssertSigningCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SigningCertificate to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["CertificateId"], "Expected key CertificateId to exist in table")
	assert(struct["CertificateBody"], "Expected key CertificateBody to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["CertificateBody"] then asserts.AssertcertificateBodyType(struct["CertificateBody"]) end
	if struct["CertificateId"] then asserts.AssertcertificateIdType(struct["CertificateId"]) end
	if struct["UploadDate"] then asserts.AssertdateType(struct["UploadDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.SigningCertificate[k], "SigningCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SigningCertificate
-- <p>Contains information about an X.509 signing certificate.</p> <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a> actions. </p>
-- @param _UserName [userNameType] <p>The name of the user the signing certificate is associated with.</p>
-- @param _Status [statusType] <p>The status of the signing certificate. <code>Active</code> means the key is valid for API calls, while <code>Inactive</code> means it is not.</p>
-- @param _CertificateBody [certificateBodyType] <p>The contents of the signing certificate.</p>
-- @param _CertificateId [certificateIdType] <p>The ID for the signing certificate.</p>
-- @param _UploadDate [dateType] <p>The date when the signing certificate was uploaded.</p>
-- Required parameter: UserName
-- Required parameter: CertificateId
-- Required parameter: CertificateBody
-- Required parameter: Status
function M.SigningCertificate(_UserName, _Status, _CertificateBody, _CertificateId, _UploadDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SigningCertificate")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["CertificateBody"] = _CertificateBody,
		["CertificateId"] = _CertificateId,
		["UploadDate"] = _UploadDate,
	}
	asserts.AssertSigningCertificate(t)
	return t
end

keys.ManagedPolicyDetail = { ["PolicyName"] = true, ["Description"] = true, ["CreateDate"] = true, ["AttachmentCount"] = true, ["IsAttachable"] = true, ["PolicyId"] = true, ["DefaultVersionId"] = true, ["PolicyVersionList"] = true, ["Path"] = true, ["Arn"] = true, ["UpdateDate"] = true, nil }

function asserts.AssertManagedPolicyDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ManagedPolicyDetail to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["Description"] then asserts.AssertpolicyDescriptionType(struct["Description"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["AttachmentCount"] then asserts.AssertattachmentCountType(struct["AttachmentCount"]) end
	if struct["IsAttachable"] then asserts.AssertbooleanType(struct["IsAttachable"]) end
	if struct["PolicyId"] then asserts.AssertidType(struct["PolicyId"]) end
	if struct["DefaultVersionId"] then asserts.AssertpolicyVersionIdType(struct["DefaultVersionId"]) end
	if struct["PolicyVersionList"] then asserts.AssertpolicyDocumentVersionListType(struct["PolicyVersionList"]) end
	if struct["Path"] then asserts.AssertpolicyPathType(struct["Path"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	if struct["UpdateDate"] then asserts.AssertdateType(struct["UpdateDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ManagedPolicyDetail[k], "ManagedPolicyDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ManagedPolicyDetail
-- <p>Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param _PolicyName [policyNameType] <p>The friendly name (not ARN) identifying the policy.</p>
-- @param _Description [policyDescriptionType] <p>A friendly description of the policy.</p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy was created.</p>
-- @param _AttachmentCount [attachmentCountType] <p>The number of principal entities (users, groups, and roles) that the policy is attached to.</p>
-- @param _IsAttachable [booleanType] <p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>
-- @param _PolicyId [idType] <p>The stable and unique string identifying the policy.</p> <p>For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _DefaultVersionId [policyVersionIdType] <p>The identifier for the version of the policy that is set as the default (operative) version.</p> <p>For more information about policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param _PolicyVersionList [policyDocumentVersionListType] <p>A list containing information about the versions of the policy.</p>
-- @param _Path [policyPathType] <p>The path to the policy.</p> <p>For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _Arn [arnType] 
-- @param _UpdateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy was last updated.</p> <p>When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.</p>
function M.ManagedPolicyDetail(_PolicyName, _Description, _CreateDate, _AttachmentCount, _IsAttachable, _PolicyId, _DefaultVersionId, _PolicyVersionList, _Path, _Arn, _UpdateDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ManagedPolicyDetail")
	local t = { 
		["PolicyName"] = _PolicyName,
		["Description"] = _Description,
		["CreateDate"] = _CreateDate,
		["AttachmentCount"] = _AttachmentCount,
		["IsAttachable"] = _IsAttachable,
		["PolicyId"] = _PolicyId,
		["DefaultVersionId"] = _DefaultVersionId,
		["PolicyVersionList"] = _PolicyVersionList,
		["Path"] = _Path,
		["Arn"] = _Arn,
		["UpdateDate"] = _UpdateDate,
	}
	asserts.AssertManagedPolicyDetail(t)
	return t
end

keys.ListAttachedRolePoliciesResponse = { ["Marker"] = true, ["AttachedPolicies"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListAttachedRolePoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedRolePoliciesResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["AttachedPolicies"] then asserts.AssertattachedPoliciesListType(struct["AttachedPolicies"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttachedRolePoliciesResponse[k], "ListAttachedRolePoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedRolePoliciesResponse
-- <p>Contains the response to a successful <a>ListAttachedRolePolicies</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _AttachedPolicies [attachedPoliciesListType] <p>A list of the attached policies.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
function M.ListAttachedRolePoliciesResponse(_Marker, _AttachedPolicies, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedRolePoliciesResponse")
	local t = { 
		["Marker"] = _Marker,
		["AttachedPolicies"] = _AttachedPolicies,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListAttachedRolePoliciesResponse(t)
	return t
end

keys.GetAccessKeyLastUsedRequest = { ["AccessKeyId"] = true, nil }

function asserts.AssertGetAccessKeyLastUsedRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccessKeyLastUsedRequest to be of type 'table'")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	if struct["AccessKeyId"] then asserts.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccessKeyLastUsedRequest[k], "GetAccessKeyLastUsedRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccessKeyLastUsedRequest
--  
-- @param _AccessKeyId [accessKeyIdType] <p>The identifier of an access key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: AccessKeyId
function M.GetAccessKeyLastUsedRequest(_AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccessKeyLastUsedRequest")
	local t = { 
		["AccessKeyId"] = _AccessKeyId,
	}
	asserts.AssertGetAccessKeyLastUsedRequest(t)
	return t
end

keys.DeleteUserPolicyRequest = { ["UserName"] = true, ["PolicyName"] = true, nil }

function asserts.AssertDeleteUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserPolicyRequest[k], "DeleteUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPolicyRequest
--  
-- @param _UserName [existingUserNameType] <p>The name (friendly name, not ARN) identifying the user that the policy is embedded in.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyName [policyNameType] <p>The name identifying the policy document to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: UserName
-- Required parameter: PolicyName
function M.DeleteUserPolicyRequest(_UserName, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserPolicyRequest")
	local t = { 
		["UserName"] = _UserName,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertDeleteUserPolicyRequest(t)
	return t
end

keys.GetServerCertificateResponse = { ["ServerCertificate"] = true, nil }

function asserts.AssertGetServerCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServerCertificateResponse to be of type 'table'")
	assert(struct["ServerCertificate"], "Expected key ServerCertificate to exist in table")
	if struct["ServerCertificate"] then asserts.AssertServerCertificate(struct["ServerCertificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServerCertificateResponse[k], "GetServerCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServerCertificateResponse
-- <p>Contains the response to a successful <a>GetServerCertificate</a> request. </p>
-- @param _ServerCertificate [ServerCertificate] <p>A structure containing details about the server certificate.</p>
-- Required parameter: ServerCertificate
function M.GetServerCertificateResponse(_ServerCertificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServerCertificateResponse")
	local t = { 
		["ServerCertificate"] = _ServerCertificate,
	}
	asserts.AssertGetServerCertificateResponse(t)
	return t
end

keys.GetOpenIDConnectProviderRequest = { ["OpenIDConnectProviderArn"] = true, nil }

function asserts.AssertGetOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	if struct["OpenIDConnectProviderArn"] then asserts.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOpenIDConnectProviderRequest[k], "GetOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIDConnectProviderRequest
--  
-- @param _OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get information for. You can get a list of OIDC provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> action.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: OpenIDConnectProviderArn
function M.GetOpenIDConnectProviderRequest(_OpenIDConnectProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOpenIDConnectProviderRequest")
	local t = { 
		["OpenIDConnectProviderArn"] = _OpenIDConnectProviderArn,
	}
	asserts.AssertGetOpenIDConnectProviderRequest(t)
	return t
end

keys.ListOpenIDConnectProvidersResponse = { ["OpenIDConnectProviderList"] = true, nil }

function asserts.AssertListOpenIDConnectProvidersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOpenIDConnectProvidersResponse to be of type 'table'")
	if struct["OpenIDConnectProviderList"] then asserts.AssertOpenIDConnectProviderListType(struct["OpenIDConnectProviderList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOpenIDConnectProvidersResponse[k], "ListOpenIDConnectProvidersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOpenIDConnectProvidersResponse
-- <p>Contains the response to a successful <a>ListOpenIDConnectProviders</a> request. </p>
-- @param _OpenIDConnectProviderList [OpenIDConnectProviderListType] <p>The list of IAM OIDC provider resource objects defined in the AWS account.</p>
function M.ListOpenIDConnectProvidersResponse(_OpenIDConnectProviderList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOpenIDConnectProvidersResponse")
	local t = { 
		["OpenIDConnectProviderList"] = _OpenIDConnectProviderList,
	}
	asserts.AssertListOpenIDConnectProvidersResponse(t)
	return t
end

keys.GetUserRequest = { ["UserName"] = true, nil }

function asserts.AssertGetUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserRequest to be of type 'table'")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserRequest[k], "GetUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user to get information about.</p> <p>This parameter is optional. If it is not included, it defaults to the user making the request. This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
function M.GetUserRequest(_UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserRequest")
	local t = { 
		["UserName"] = _UserName,
	}
	asserts.AssertGetUserRequest(t)
	return t
end

keys.CreateServiceSpecificCredentialResponse = { ["ServiceSpecificCredential"] = true, nil }

function asserts.AssertCreateServiceSpecificCredentialResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceSpecificCredentialResponse to be of type 'table'")
	if struct["ServiceSpecificCredential"] then asserts.AssertServiceSpecificCredential(struct["ServiceSpecificCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceSpecificCredentialResponse[k], "CreateServiceSpecificCredentialResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceSpecificCredentialResponse
--  
-- @param _ServiceSpecificCredential [ServiceSpecificCredential] <p>A structure that contains information about the newly created service-specific credential.</p> <important> <p>This is the only time that the password for this credential set is available. It cannot be recovered later. Instead, you will have to reset the password with <a>ResetServiceSpecificCredential</a>.</p> </important>
function M.CreateServiceSpecificCredentialResponse(_ServiceSpecificCredential, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceSpecificCredentialResponse")
	local t = { 
		["ServiceSpecificCredential"] = _ServiceSpecificCredential,
	}
	asserts.AssertCreateServiceSpecificCredentialResponse(t)
	return t
end

keys.AttachedPolicy = { ["PolicyName"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertAttachedPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachedPolicy to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachedPolicy[k], "AttachedPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachedPolicy
-- <p>Contains information about an attached policy.</p> <p>An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> actions. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param _PolicyName [policyNameType] <p>The friendly name of the attached policy.</p>
-- @param _PolicyArn [arnType] 
function M.AttachedPolicy(_PolicyName, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachedPolicy")
	local t = { 
		["PolicyName"] = _PolicyName,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertAttachedPolicy(t)
	return t
end

keys.UpdateAccessKeyRequest = { ["UserName"] = true, ["Status"] = true, ["AccessKeyId"] = true, nil }

function asserts.AssertUpdateAccessKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAccessKeyRequest to be of type 'table'")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["AccessKeyId"] then asserts.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAccessKeyRequest[k], "UpdateAccessKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAccessKeyRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user whose key you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Status [statusType] <p> The status you want to assign to the secret access key. <code>Active</code> means the key can be used for API calls to AWS, while <code>Inactive</code> means the key cannot be used.</p>
-- @param _AccessKeyId [accessKeyIdType] <p>The access key ID of the secret access key you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: AccessKeyId
-- Required parameter: Status
function M.UpdateAccessKeyRequest(_UserName, _Status, _AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAccessKeyRequest")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["AccessKeyId"] = _AccessKeyId,
	}
	asserts.AssertUpdateAccessKeyRequest(t)
	return t
end

keys.UpdateUserRequest = { ["UserName"] = true, ["NewPath"] = true, ["NewUserName"] = true, nil }

function asserts.AssertUpdateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["NewPath"] then asserts.AssertpathType(struct["NewPath"]) end
	if struct["NewUserName"] then asserts.AssertuserNameType(struct["NewUserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserRequest[k], "UpdateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserRequest
--  
-- @param _UserName [existingUserNameType] <p>Name of the user to update. If you're changing the name of the user, this is the original user name.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _NewPath [pathType] <p>New path for the IAM user. Include this parameter only if you're changing the user's path.</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _NewUserName [userNameType] <p>New name for the user. Include this parameter only if you're changing the user's name.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: UserName
function M.UpdateUserRequest(_UserName, _NewPath, _NewUserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateUserRequest")
	local t = { 
		["UserName"] = _UserName,
		["NewPath"] = _NewPath,
		["NewUserName"] = _NewUserName,
	}
	asserts.AssertUpdateUserRequest(t)
	return t
end

keys.ListAttachedGroupPoliciesRequest = { ["Marker"] = true, ["GroupName"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListAttachedGroupPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedGroupPoliciesRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["PathPrefix"] then asserts.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttachedGroupPoliciesRequest[k], "ListAttachedGroupPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedGroupPoliciesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _GroupName [groupNameType] <p>The name (friendly name, not ARN) of the group to list attached policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PathPrefix [policyPathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: GroupName
function M.ListAttachedGroupPoliciesRequest(_Marker, _GroupName, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedGroupPoliciesRequest")
	local t = { 
		["Marker"] = _Marker,
		["GroupName"] = _GroupName,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListAttachedGroupPoliciesRequest(t)
	return t
end

keys.SSHPublicKey = { ["UserName"] = true, ["Status"] = true, ["SSHPublicKeyBody"] = true, ["UploadDate"] = true, ["Fingerprint"] = true, ["SSHPublicKeyId"] = true, nil }

function asserts.AssertSSHPublicKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSHPublicKey to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	assert(struct["Fingerprint"], "Expected key Fingerprint to exist in table")
	assert(struct["SSHPublicKeyBody"], "Expected key SSHPublicKeyBody to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["SSHPublicKeyBody"] then asserts.AssertpublicKeyMaterialType(struct["SSHPublicKeyBody"]) end
	if struct["UploadDate"] then asserts.AssertdateType(struct["UploadDate"]) end
	if struct["Fingerprint"] then asserts.AssertpublicKeyFingerprintType(struct["Fingerprint"]) end
	if struct["SSHPublicKeyId"] then asserts.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SSHPublicKey[k], "SSHPublicKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSHPublicKey
-- <p>Contains information about an SSH public key.</p> <p>This data type is used as a response element in the <a>GetSSHPublicKey</a> and <a>UploadSSHPublicKey</a> actions. </p>
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p>
-- @param _Status [statusType] <p>The status of the SSH public key. <code>Active</code> means the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means the key cannot be used.</p>
-- @param _SSHPublicKeyBody [publicKeyMaterialType] <p>The SSH public key.</p>
-- @param _UploadDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the SSH public key was uploaded.</p>
-- @param _Fingerprint [publicKeyFingerprintType] <p>The MD5 message digest of the SSH public key.</p>
-- @param _SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p>
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
-- Required parameter: Fingerprint
-- Required parameter: SSHPublicKeyBody
-- Required parameter: Status
function M.SSHPublicKey(_UserName, _Status, _SSHPublicKeyBody, _UploadDate, _Fingerprint, _SSHPublicKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SSHPublicKey")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["SSHPublicKeyBody"] = _SSHPublicKeyBody,
		["UploadDate"] = _UploadDate,
		["Fingerprint"] = _Fingerprint,
		["SSHPublicKeyId"] = _SSHPublicKeyId,
	}
	asserts.AssertSSHPublicKey(t)
	return t
end

keys.ListPoliciesResponse = { ["Marker"] = true, ["IsTruncated"] = true, ["Policies"] = true, nil }

function asserts.AssertListPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Policies"] then asserts.AssertpolicyListType(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesResponse[k], "ListPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesResponse
-- <p>Contains the response to a successful <a>ListPolicies</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @param _Policies [policyListType] <p>A list of policies.</p>
function M.ListPoliciesResponse(_Marker, _IsTruncated, _Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesResponse")
	local t = { 
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Policies"] = _Policies,
	}
	asserts.AssertListPoliciesResponse(t)
	return t
end

keys.AttachUserPolicyRequest = { ["UserName"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertAttachUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachUserPolicyRequest[k], "AttachUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachUserPolicyRequest
--  
-- @param _UserName [userNameType] <p>The name (friendly name, not ARN) of the IAM user to attach the policy to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: UserName
-- Required parameter: PolicyArn
function M.AttachUserPolicyRequest(_UserName, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachUserPolicyRequest")
	local t = { 
		["UserName"] = _UserName,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertAttachUserPolicyRequest(t)
	return t
end

keys.ResetServiceSpecificCredentialResponse = { ["ServiceSpecificCredential"] = true, nil }

function asserts.AssertResetServiceSpecificCredentialResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetServiceSpecificCredentialResponse to be of type 'table'")
	if struct["ServiceSpecificCredential"] then asserts.AssertServiceSpecificCredential(struct["ServiceSpecificCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetServiceSpecificCredentialResponse[k], "ResetServiceSpecificCredentialResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetServiceSpecificCredentialResponse
--  
-- @param _ServiceSpecificCredential [ServiceSpecificCredential] <p>A structure with details about the updated service-specific credential, including the new password.</p> <important> <p>This is the <b>only</b> time that you can access the password. You cannot recover the password later, but you can reset it again.</p> </important>
function M.ResetServiceSpecificCredentialResponse(_ServiceSpecificCredential, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetServiceSpecificCredentialResponse")
	local t = { 
		["ServiceSpecificCredential"] = _ServiceSpecificCredential,
	}
	asserts.AssertResetServiceSpecificCredentialResponse(t)
	return t
end

keys.ListRolePoliciesResponse = { ["Marker"] = true, ["PolicyNames"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListRolePoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRolePoliciesResponse to be of type 'table'")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PolicyNames"] then asserts.AssertpolicyNameListType(struct["PolicyNames"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRolePoliciesResponse[k], "ListRolePoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRolePoliciesResponse
-- <p>Contains the response to a successful <a>ListRolePolicies</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _PolicyNames [policyNameListType] <p>A list of policy names.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: PolicyNames
function M.ListRolePoliciesResponse(_Marker, _PolicyNames, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRolePoliciesResponse")
	local t = { 
		["Marker"] = _Marker,
		["PolicyNames"] = _PolicyNames,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListRolePoliciesResponse(t)
	return t
end

keys.CreateServiceSpecificCredentialRequest = { ["UserName"] = true, ["ServiceName"] = true, nil }

function asserts.AssertCreateServiceSpecificCredentialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceSpecificCredentialRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["ServiceName"], "Expected key ServiceName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["ServiceName"] then asserts.AssertserviceName(struct["ServiceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceSpecificCredentialRequest[k], "CreateServiceSpecificCredentialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceSpecificCredentialRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user that is to be associated with the credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _ServiceName [serviceName] <p>The name of the AWS service that is to be associated with the credentials. The service you specify here is the only service that can be accessed using these credentials.</p>
-- Required parameter: UserName
-- Required parameter: ServiceName
function M.CreateServiceSpecificCredentialRequest(_UserName, _ServiceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceSpecificCredentialRequest")
	local t = { 
		["UserName"] = _UserName,
		["ServiceName"] = _ServiceName,
	}
	asserts.AssertCreateServiceSpecificCredentialRequest(t)
	return t
end

keys.GetContextKeysForPolicyResponse = { ["ContextKeyNames"] = true, nil }

function asserts.AssertGetContextKeysForPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContextKeysForPolicyResponse to be of type 'table'")
	if struct["ContextKeyNames"] then asserts.AssertContextKeyNamesResultListType(struct["ContextKeyNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContextKeysForPolicyResponse[k], "GetContextKeysForPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContextKeysForPolicyResponse
-- <p>Contains the response to a successful <a>GetContextKeysForPrincipalPolicy</a> or <a>GetContextKeysForCustomPolicy</a> request. </p>
-- @param _ContextKeyNames [ContextKeyNamesResultListType] <p>The list of context keys that are referenced in the input policies.</p>
function M.GetContextKeysForPolicyResponse(_ContextKeyNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetContextKeysForPolicyResponse")
	local t = { 
		["ContextKeyNames"] = _ContextKeyNames,
	}
	asserts.AssertGetContextKeysForPolicyResponse(t)
	return t
end

keys.ListGroupPoliciesRequest = { ["Marker"] = true, ["GroupName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListGroupPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupPoliciesRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupPoliciesRequest[k], "ListGroupPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupPoliciesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _GroupName [groupNameType] <p>The name of the group to list policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: GroupName
function M.ListGroupPoliciesRequest(_Marker, _GroupName, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupPoliciesRequest")
	local t = { 
		["Marker"] = _Marker,
		["GroupName"] = _GroupName,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListGroupPoliciesRequest(t)
	return t
end

keys.ListUsersRequest = { ["Marker"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then asserts.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersRequest[k], "ListUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example: <code>/division_abc/subdivision_xyz/</code>, which would get all user names whose path starts with <code>/division_abc/subdivision_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all user names. This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListUsersRequest(_Marker, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUsersRequest")
	local t = { 
		["Marker"] = _Marker,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListUsersRequest(t)
	return t
end

keys.UpdateRoleDescriptionRequest = { ["RoleName"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateRoleDescriptionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRoleDescriptionRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["Description"] then asserts.AssertroleDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRoleDescriptionRequest[k], "UpdateRoleDescriptionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRoleDescriptionRequest
--  
-- @param _RoleName [roleNameType] <p>The name of the role that you want to modify.</p>
-- @param _Description [roleDescriptionType] <p>The new description that you want to apply to the specified role.</p>
-- Required parameter: RoleName
-- Required parameter: Description
function M.UpdateRoleDescriptionRequest(_RoleName, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRoleDescriptionRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["Description"] = _Description,
	}
	asserts.AssertUpdateRoleDescriptionRequest(t)
	return t
end

keys.UploadSSHPublicKeyRequest = { ["UserName"] = true, ["SSHPublicKeyBody"] = true, nil }

function asserts.AssertUploadSSHPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadSSHPublicKeyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyBody"], "Expected key SSHPublicKeyBody to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["SSHPublicKeyBody"] then asserts.AssertpublicKeyMaterialType(struct["SSHPublicKeyBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadSSHPublicKeyRequest[k], "UploadSSHPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadSSHPublicKeyRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user to associate the SSH public key with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _SSHPublicKeyBody [publicKeyMaterialType] <p>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyBody
function M.UploadSSHPublicKeyRequest(_UserName, _SSHPublicKeyBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadSSHPublicKeyRequest")
	local t = { 
		["UserName"] = _UserName,
		["SSHPublicKeyBody"] = _SSHPublicKeyBody,
	}
	asserts.AssertUploadSSHPublicKeyRequest(t)
	return t
end

keys.RoleDetail = { ["AssumeRolePolicyDocument"] = true, ["RoleId"] = true, ["CreateDate"] = true, ["InstanceProfileList"] = true, ["RoleName"] = true, ["Path"] = true, ["AttachedManagedPolicies"] = true, ["RolePolicyList"] = true, ["Arn"] = true, nil }

function asserts.AssertRoleDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoleDetail to be of type 'table'")
	if struct["AssumeRolePolicyDocument"] then asserts.AssertpolicyDocumentType(struct["AssumeRolePolicyDocument"]) end
	if struct["RoleId"] then asserts.AssertidType(struct["RoleId"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["InstanceProfileList"] then asserts.AssertinstanceProfileListType(struct["InstanceProfileList"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["AttachedManagedPolicies"] then asserts.AssertattachedPoliciesListType(struct["AttachedManagedPolicies"]) end
	if struct["RolePolicyList"] then asserts.AssertpolicyDetailListType(struct["RolePolicyList"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RoleDetail[k], "RoleDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoleDetail
-- <p>Contains information about an IAM role, including all of the role's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
-- @param _AssumeRolePolicyDocument [policyDocumentType] <p>The trust policy that grants permission to assume the role.</p>
-- @param _RoleId [idType] <p>The stable and unique string identifying the role. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the role was created.</p>
-- @param _InstanceProfileList [instanceProfileListType] <p>A list of instance profiles that contain this role.</p>
-- @param _RoleName [roleNameType] <p>The friendly name that identifies the role.</p>
-- @param _Path [pathType] <p>The path to the role. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _AttachedManagedPolicies [attachedPoliciesListType] <p>A list of managed policies attached to the role. These policies are the role's access (permissions) policies.</p>
-- @param _RolePolicyList [policyDetailListType] <p>A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.</p>
-- @param _Arn [arnType] 
function M.RoleDetail(_AssumeRolePolicyDocument, _RoleId, _CreateDate, _InstanceProfileList, _RoleName, _Path, _AttachedManagedPolicies, _RolePolicyList, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RoleDetail")
	local t = { 
		["AssumeRolePolicyDocument"] = _AssumeRolePolicyDocument,
		["RoleId"] = _RoleId,
		["CreateDate"] = _CreateDate,
		["InstanceProfileList"] = _InstanceProfileList,
		["RoleName"] = _RoleName,
		["Path"] = _Path,
		["AttachedManagedPolicies"] = _AttachedManagedPolicies,
		["RolePolicyList"] = _RolePolicyList,
		["Arn"] = _Arn,
	}
	asserts.AssertRoleDetail(t)
	return t
end

keys.PolicyDetail = { ["PolicyName"] = true, ["PolicyDocument"] = true, nil }

function asserts.AssertPolicyDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyDetail to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyDetail[k], "PolicyDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyDetail
-- <p>Contains information about an IAM policy, including the policy document.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy.</p>
-- @param _PolicyDocument [policyDocumentType] <p>The policy document.</p>
function M.PolicyDetail(_PolicyName, _PolicyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyDetail")
	local t = { 
		["PolicyName"] = _PolicyName,
		["PolicyDocument"] = _PolicyDocument,
	}
	asserts.AssertPolicyDetail(t)
	return t
end

keys.DeletePolicyVersionRequest = { ["VersionId"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertDeletePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyVersionRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["VersionId"] then asserts.AssertpolicyVersionIdType(struct["VersionId"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyVersionRequest[k], "DeletePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyVersionRequest
--  
-- @param _VersionId [policyVersionIdType] <p>The policy version to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a version.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: PolicyArn
-- Required parameter: VersionId
function M.DeletePolicyVersionRequest(_VersionId, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyVersionRequest")
	local t = { 
		["VersionId"] = _VersionId,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertDeletePolicyVersionRequest(t)
	return t
end

keys.GetLoginProfileRequest = { ["UserName"] = true, nil }

function asserts.AssertGetLoginProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoginProfileRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoginProfileRequest[k], "GetLoginProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoginProfileRequest
--  
-- @param _UserName [userNameType] <p>The name of the user whose login profile you want to retrieve.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: UserName
function M.GetLoginProfileRequest(_UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoginProfileRequest")
	local t = { 
		["UserName"] = _UserName,
	}
	asserts.AssertGetLoginProfileRequest(t)
	return t
end

keys.GetPolicyRequest = { ["PolicyArn"] = true, nil }

function asserts.AssertGetPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyRequest[k], "GetPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyRequest
--  
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the managed policy that you want information about.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: PolicyArn
function M.GetPolicyRequest(_PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyRequest")
	local t = { 
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertGetPolicyRequest(t)
	return t
end

keys.ListSigningCertificatesRequest = { ["UserName"] = true, ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListSigningCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningCertificatesRequest to be of type 'table'")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSigningCertificatesRequest[k], "ListSigningCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningCertificatesRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the IAM user whose signing certificates you want to examine.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListSigningCertificatesRequest(_UserName, _Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSigningCertificatesRequest")
	local t = { 
		["UserName"] = _UserName,
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListSigningCertificatesRequest(t)
	return t
end

keys.UploadServerCertificateResponse = { ["ServerCertificateMetadata"] = true, nil }

function asserts.AssertUploadServerCertificateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadServerCertificateResponse to be of type 'table'")
	if struct["ServerCertificateMetadata"] then asserts.AssertServerCertificateMetadata(struct["ServerCertificateMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadServerCertificateResponse[k], "UploadServerCertificateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadServerCertificateResponse
-- <p>Contains the response to a successful <a>UploadServerCertificate</a> request. </p>
-- @param _ServerCertificateMetadata [ServerCertificateMetadata] <p>The meta information of the uploaded server certificate without its certificate body, certificate chain, and private key.</p>
function M.UploadServerCertificateResponse(_ServerCertificateMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadServerCertificateResponse")
	local t = { 
		["ServerCertificateMetadata"] = _ServerCertificateMetadata,
	}
	asserts.AssertUploadServerCertificateResponse(t)
	return t
end

keys.DeleteGroupPolicyRequest = { ["GroupName"] = true, ["PolicyName"] = true, nil }

function asserts.AssertDeleteGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGroupPolicyRequest[k], "DeleteGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupPolicyRequest
--  
-- @param _GroupName [groupNameType] <p>The name (friendly name, not ARN) identifying the group that the policy is embedded in.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyName [policyNameType] <p>The name identifying the policy document to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: GroupName
-- Required parameter: PolicyName
function M.DeleteGroupPolicyRequest(_GroupName, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupPolicyRequest")
	local t = { 
		["GroupName"] = _GroupName,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertDeleteGroupPolicyRequest(t)
	return t
end

keys.CreateRoleRequest = { ["Path"] = true, ["AssumeRolePolicyDocument"] = true, ["Description"] = true, ["RoleName"] = true, nil }

function asserts.AssertCreateRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["AssumeRolePolicyDocument"], "Expected key AssumeRolePolicyDocument to exist in table")
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["AssumeRolePolicyDocument"] then asserts.AssertpolicyDocumentType(struct["AssumeRolePolicyDocument"]) end
	if struct["Description"] then asserts.AssertroleDescriptionType(struct["Description"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRoleRequest[k], "CreateRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRoleRequest
--  
-- @param _Path [pathType] <p> The path to the role. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _AssumeRolePolicyDocument [policyDocumentType] <p>The trust relationship policy document that grants an entity permission to assume the role.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _Description [roleDescriptionType] <p>A customer-provided description of the role.</p>
-- @param _RoleName [roleNameType] <p>The name of the role to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p> <p>Role names are not distinguished by case. For example, you cannot create roles named both "PRODROLE" and "prodrole".</p>
-- Required parameter: RoleName
-- Required parameter: AssumeRolePolicyDocument
function M.CreateRoleRequest(_Path, _AssumeRolePolicyDocument, _Description, _RoleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRoleRequest")
	local t = { 
		["Path"] = _Path,
		["AssumeRolePolicyDocument"] = _AssumeRolePolicyDocument,
		["Description"] = _Description,
		["RoleName"] = _RoleName,
	}
	asserts.AssertCreateRoleRequest(t)
	return t
end

keys.SetDefaultPolicyVersionRequest = { ["VersionId"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertSetDefaultPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDefaultPolicyVersionRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["VersionId"] then asserts.AssertpolicyVersionIdType(struct["VersionId"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetDefaultPolicyVersionRequest[k], "SetDefaultPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDefaultPolicyVersionRequest
--  
-- @param _VersionId [policyVersionIdType] <p>The version of the policy to set as the default (operative) version.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy whose default version you want to set.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: PolicyArn
-- Required parameter: VersionId
function M.SetDefaultPolicyVersionRequest(_VersionId, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDefaultPolicyVersionRequest")
	local t = { 
		["VersionId"] = _VersionId,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertSetDefaultPolicyVersionRequest(t)
	return t
end

keys.CreateLoginProfileResponse = { ["LoginProfile"] = true, nil }

function asserts.AssertCreateLoginProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoginProfileResponse to be of type 'table'")
	assert(struct["LoginProfile"], "Expected key LoginProfile to exist in table")
	if struct["LoginProfile"] then asserts.AssertLoginProfile(struct["LoginProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoginProfileResponse[k], "CreateLoginProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoginProfileResponse
-- <p>Contains the response to a successful <a>CreateLoginProfile</a> request. </p>
-- @param _LoginProfile [LoginProfile] <p>A structure containing the user name and password create date.</p>
-- Required parameter: LoginProfile
function M.CreateLoginProfileResponse(_LoginProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoginProfileResponse")
	local t = { 
		["LoginProfile"] = _LoginProfile,
	}
	asserts.AssertCreateLoginProfileResponse(t)
	return t
end

keys.DeleteOpenIDConnectProviderRequest = { ["OpenIDConnectProviderArn"] = true, nil }

function asserts.AssertDeleteOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	if struct["OpenIDConnectProviderArn"] then asserts.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteOpenIDConnectProviderRequest[k], "DeleteOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOpenIDConnectProviderRequest
--  
-- @param _OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to delete. You can get a list of OpenID Connect provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> action.</p>
-- Required parameter: OpenIDConnectProviderArn
function M.DeleteOpenIDConnectProviderRequest(_OpenIDConnectProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteOpenIDConnectProviderRequest")
	local t = { 
		["OpenIDConnectProviderArn"] = _OpenIDConnectProviderArn,
	}
	asserts.AssertDeleteOpenIDConnectProviderRequest(t)
	return t
end

keys.ListServiceSpecificCredentialsResponse = { ["ServiceSpecificCredentials"] = true, nil }

function asserts.AssertListServiceSpecificCredentialsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServiceSpecificCredentialsResponse to be of type 'table'")
	if struct["ServiceSpecificCredentials"] then asserts.AssertServiceSpecificCredentialsListType(struct["ServiceSpecificCredentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServiceSpecificCredentialsResponse[k], "ListServiceSpecificCredentialsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServiceSpecificCredentialsResponse
--  
-- @param _ServiceSpecificCredentials [ServiceSpecificCredentialsListType] <p>A list of structures that each contain details about a service-specific credential.</p>
function M.ListServiceSpecificCredentialsResponse(_ServiceSpecificCredentials, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServiceSpecificCredentialsResponse")
	local t = { 
		["ServiceSpecificCredentials"] = _ServiceSpecificCredentials,
	}
	asserts.AssertListServiceSpecificCredentialsResponse(t)
	return t
end

keys.EntityAlreadyExistsException = { ["message"] = true, nil }

function asserts.AssertEntityAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAlreadyExistsException to be of type 'table'")
	if struct["message"] then asserts.AssertentityAlreadyExistsMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityAlreadyExistsException[k], "EntityAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAlreadyExistsException
-- <p>The request was rejected because it attempted to create a resource that already exists.</p>
-- @param _message [entityAlreadyExistsMessage] 
function M.EntityAlreadyExistsException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityAlreadyExistsException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertEntityAlreadyExistsException(t)
	return t
end

keys.ListGroupPoliciesResponse = { ["Marker"] = true, ["PolicyNames"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListGroupPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupPoliciesResponse to be of type 'table'")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PolicyNames"] then asserts.AssertpolicyNameListType(struct["PolicyNames"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupPoliciesResponse[k], "ListGroupPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupPoliciesResponse
-- <p>Contains the response to a successful <a>ListGroupPolicies</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _PolicyNames [policyNameListType] <p>A list of policy names.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: PolicyNames
function M.ListGroupPoliciesResponse(_Marker, _PolicyNames, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupPoliciesResponse")
	local t = { 
		["Marker"] = _Marker,
		["PolicyNames"] = _PolicyNames,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListGroupPoliciesResponse(t)
	return t
end

keys.InvalidCertificateException = { ["message"] = true, nil }

function asserts.AssertInvalidCertificateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCertificateException to be of type 'table'")
	if struct["message"] then asserts.AssertinvalidCertificateMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCertificateException[k], "InvalidCertificateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCertificateException
-- <p>The request was rejected because the certificate is invalid.</p>
-- @param _message [invalidCertificateMessage] 
function M.InvalidCertificateException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCertificateException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidCertificateException(t)
	return t
end

keys.ListSigningCertificatesResponse = { ["Certificates"] = true, ["Marker"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListSigningCertificatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSigningCertificatesResponse to be of type 'table'")
	assert(struct["Certificates"], "Expected key Certificates to exist in table")
	if struct["Certificates"] then asserts.AssertcertificateListType(struct["Certificates"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSigningCertificatesResponse[k], "ListSigningCertificatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSigningCertificatesResponse
-- <p>Contains the response to a successful <a>ListSigningCertificates</a> request. </p>
-- @param _Certificates [certificateListType] <p>A list of the user's signing certificate information.</p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: Certificates
function M.ListSigningCertificatesResponse(_Certificates, _Marker, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSigningCertificatesResponse")
	local t = { 
		["Certificates"] = _Certificates,
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListSigningCertificatesResponse(t)
	return t
end

keys.GroupDetail = { ["GroupPolicyList"] = true, ["CreateDate"] = true, ["GroupName"] = true, ["Path"] = true, ["AttachedManagedPolicies"] = true, ["GroupId"] = true, ["Arn"] = true, nil }

function asserts.AssertGroupDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupDetail to be of type 'table'")
	if struct["GroupPolicyList"] then asserts.AssertpolicyDetailListType(struct["GroupPolicyList"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["AttachedManagedPolicies"] then asserts.AssertattachedPoliciesListType(struct["AttachedManagedPolicies"]) end
	if struct["GroupId"] then asserts.AssertidType(struct["GroupId"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupDetail[k], "GroupDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupDetail
-- <p>Contains information about an IAM group, including all of the group's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
-- @param _GroupPolicyList [policyDetailListType] <p>A list of the inline policies embedded in the group.</p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the group was created.</p>
-- @param _GroupName [groupNameType] <p>The friendly name that identifies the group.</p>
-- @param _Path [pathType] <p>The path to the group. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _AttachedManagedPolicies [attachedPoliciesListType] <p>A list of the managed policies attached to the group.</p>
-- @param _GroupId [idType] <p>The stable and unique string identifying the group. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _Arn [arnType] 
function M.GroupDetail(_GroupPolicyList, _CreateDate, _GroupName, _Path, _AttachedManagedPolicies, _GroupId, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupDetail")
	local t = { 
		["GroupPolicyList"] = _GroupPolicyList,
		["CreateDate"] = _CreateDate,
		["GroupName"] = _GroupName,
		["Path"] = _Path,
		["AttachedManagedPolicies"] = _AttachedManagedPolicies,
		["GroupId"] = _GroupId,
		["Arn"] = _Arn,
	}
	asserts.AssertGroupDetail(t)
	return t
end

keys.VirtualMFADevice = { ["Base32StringSeed"] = true, ["SerialNumber"] = true, ["EnableDate"] = true, ["User"] = true, ["QRCodePNG"] = true, nil }

function asserts.AssertVirtualMFADevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VirtualMFADevice to be of type 'table'")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	if struct["Base32StringSeed"] then asserts.AssertBootstrapDatum(struct["Base32StringSeed"]) end
	if struct["SerialNumber"] then asserts.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["EnableDate"] then asserts.AssertdateType(struct["EnableDate"]) end
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	if struct["QRCodePNG"] then asserts.AssertBootstrapDatum(struct["QRCodePNG"]) end
	for k,_ in pairs(struct) do
		assert(keys.VirtualMFADevice[k], "VirtualMFADevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VirtualMFADevice
-- <p>Contains information about a virtual MFA device.</p>
-- @param _Base32StringSeed [BootstrapDatum] <p> The Base32 seed defined as specified in <a href="https://tools.ietf.org/html/rfc3548.txt">RFC3548</a>. The <code>Base32StringSeed</code> is Base64-encoded. </p>
-- @param _SerialNumber [serialNumberType] <p>The serial number associated with <code>VirtualMFADevice</code>.</p>
-- @param _EnableDate [dateType] <p>The date and time on which the virtual MFA device was enabled.</p>
-- @param _User [User] <p>The IAM user associated with this virtual MFA device.</p>
-- @param _QRCodePNG [BootstrapDatum] <p> A QR code PNG image that encodes <code>otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String</code> where <code>$virtualMFADeviceName</code> is one of the create call arguments, <code>AccountName</code> is the user name if set (otherwise, the account ID otherwise), and <code>Base32String</code> is the seed in Base32 format. The <code>Base32String</code> value is Base64-encoded. </p>
-- Required parameter: SerialNumber
function M.VirtualMFADevice(_Base32StringSeed, _SerialNumber, _EnableDate, _User, _QRCodePNG, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VirtualMFADevice")
	local t = { 
		["Base32StringSeed"] = _Base32StringSeed,
		["SerialNumber"] = _SerialNumber,
		["EnableDate"] = _EnableDate,
		["User"] = _User,
		["QRCodePNG"] = _QRCodePNG,
	}
	asserts.AssertVirtualMFADevice(t)
	return t
end

keys.DeleteUserRequest = { ["UserName"] = true, nil }

function asserts.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserRequest[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: UserName
function M.DeleteUserRequest(_UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUserRequest")
	local t = { 
		["UserName"] = _UserName,
	}
	asserts.AssertDeleteUserRequest(t)
	return t
end

keys.Role = { ["Description"] = true, ["AssumeRolePolicyDocument"] = true, ["RoleId"] = true, ["CreateDate"] = true, ["RoleName"] = true, ["Path"] = true, ["Arn"] = true, nil }

function asserts.AssertRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Role to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["RoleId"], "Expected key RoleId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["Description"] then asserts.AssertroleDescriptionType(struct["Description"]) end
	if struct["AssumeRolePolicyDocument"] then asserts.AssertpolicyDocumentType(struct["AssumeRolePolicyDocument"]) end
	if struct["RoleId"] then asserts.AssertidType(struct["RoleId"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Role[k], "Role contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Role
-- <p>Contains information about an IAM role. This structure is returned as a response element in several APIs that interact with roles.</p>
-- @param _Description [roleDescriptionType] <p>A description of the role that you provide.</p>
-- @param _AssumeRolePolicyDocument [policyDocumentType] <p>The policy that grants an entity permission to assume the role.</p>
-- @param _RoleId [idType] <p> The stable and unique string identifying the role. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the role was created.</p>
-- @param _RoleName [roleNameType] <p>The friendly name that identifies the role.</p>
-- @param _Path [pathType] <p> The path to the role. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- @param _Arn [arnType] <p> The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i> guide. </p>
-- Required parameter: Path
-- Required parameter: RoleName
-- Required parameter: RoleId
-- Required parameter: Arn
-- Required parameter: CreateDate
function M.Role(_Description, _AssumeRolePolicyDocument, _RoleId, _CreateDate, _RoleName, _Path, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Role")
	local t = { 
		["Description"] = _Description,
		["AssumeRolePolicyDocument"] = _AssumeRolePolicyDocument,
		["RoleId"] = _RoleId,
		["CreateDate"] = _CreateDate,
		["RoleName"] = _RoleName,
		["Path"] = _Path,
		["Arn"] = _Arn,
	}
	asserts.AssertRole(t)
	return t
end

keys.ListUserPoliciesResponse = { ["Marker"] = true, ["PolicyNames"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListUserPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserPoliciesResponse to be of type 'table'")
	assert(struct["PolicyNames"], "Expected key PolicyNames to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PolicyNames"] then asserts.AssertpolicyNameListType(struct["PolicyNames"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserPoliciesResponse[k], "ListUserPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserPoliciesResponse
-- <p>Contains the response to a successful <a>ListUserPolicies</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _PolicyNames [policyNameListType] <p>A list of policy names.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: PolicyNames
function M.ListUserPoliciesResponse(_Marker, _PolicyNames, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUserPoliciesResponse")
	local t = { 
		["Marker"] = _Marker,
		["PolicyNames"] = _PolicyNames,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListUserPoliciesResponse(t)
	return t
end

keys.GetServerCertificateRequest = { ["ServerCertificateName"] = true, nil }

function asserts.AssertGetServerCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServerCertificateRequest to be of type 'table'")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	if struct["ServerCertificateName"] then asserts.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServerCertificateRequest[k], "GetServerCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServerCertificateRequest
--  
-- @param _ServerCertificateName [serverCertificateNameType] <p>The name of the server certificate you want to retrieve information about.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: ServerCertificateName
function M.GetServerCertificateRequest(_ServerCertificateName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServerCertificateRequest")
	local t = { 
		["ServerCertificateName"] = _ServerCertificateName,
	}
	asserts.AssertGetServerCertificateRequest(t)
	return t
end

keys.UserDetail = { ["UserName"] = true, ["GroupList"] = true, ["CreateDate"] = true, ["UserId"] = true, ["UserPolicyList"] = true, ["Path"] = true, ["AttachedManagedPolicies"] = true, ["Arn"] = true, nil }

function asserts.AssertUserDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserDetail to be of type 'table'")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["GroupList"] then asserts.AssertgroupNameListType(struct["GroupList"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["UserId"] then asserts.AssertidType(struct["UserId"]) end
	if struct["UserPolicyList"] then asserts.AssertpolicyDetailListType(struct["UserPolicyList"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["AttachedManagedPolicies"] then asserts.AssertattachedPoliciesListType(struct["AttachedManagedPolicies"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserDetail[k], "UserDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserDetail
-- <p>Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> action.</p>
-- @param _UserName [userNameType] <p>The friendly name identifying the user.</p>
-- @param _GroupList [groupNameListType] <p>A list of IAM groups that the user is in.</p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the user was created.</p>
-- @param _UserId [idType] <p>The stable and unique string identifying the user. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _UserPolicyList [policyDetailListType] <p>A list of the inline policies embedded in the user.</p>
-- @param _Path [pathType] <p>The path to the user. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _AttachedManagedPolicies [attachedPoliciesListType] <p>A list of the managed policies attached to the user.</p>
-- @param _Arn [arnType] 
function M.UserDetail(_UserName, _GroupList, _CreateDate, _UserId, _UserPolicyList, _Path, _AttachedManagedPolicies, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserDetail")
	local t = { 
		["UserName"] = _UserName,
		["GroupList"] = _GroupList,
		["CreateDate"] = _CreateDate,
		["UserId"] = _UserId,
		["UserPolicyList"] = _UserPolicyList,
		["Path"] = _Path,
		["AttachedManagedPolicies"] = _AttachedManagedPolicies,
		["Arn"] = _Arn,
	}
	asserts.AssertUserDetail(t)
	return t
end

keys.CreateOpenIDConnectProviderRequest = { ["Url"] = true, ["ThumbprintList"] = true, ["ClientIDList"] = true, nil }

function asserts.AssertCreateOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["Url"], "Expected key Url to exist in table")
	assert(struct["ThumbprintList"], "Expected key ThumbprintList to exist in table")
	if struct["Url"] then asserts.AssertOpenIDConnectProviderUrlType(struct["Url"]) end
	if struct["ThumbprintList"] then asserts.AssertthumbprintListType(struct["ThumbprintList"]) end
	if struct["ClientIDList"] then asserts.AssertclientIDListType(struct["ClientIDList"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOpenIDConnectProviderRequest[k], "CreateOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOpenIDConnectProviderRequest
--  
-- @param _Url [OpenIDConnectProviderUrlType] <p>The URL of the identity provider. The URL must begin with "https://" and should correspond to the <code>iss</code> claim in the provider's OpenID Connect ID tokens. Per the OIDC standard, path components are allowed but query parameters are not. Typically the URL consists of only a host name, like "https://server.example.org" or "https://example.com".</p> <p>You cannot register the same provider multiple times in a single AWS account. If you try to submit a URL that has already been used for an OpenID Connect provider in the AWS account, you will get an error.</p>
-- @param _ThumbprintList [thumbprintListType] <p>A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). Typically this list includes only one entry. However, IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain multiple thumbprints if the identity provider is rotating certificates.</p> <p>The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.</p> <p>You must provide at least one thumbprint when creating an IAM OIDC provider. For example, if the OIDC provider is <code>server.example.com</code> and the provider stores its keys at "https://keys.server.example.com/openid-connect", the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate used by https://keys.server.example.com.</p> <p>For more information about obtaining the OIDC provider's thumbprint, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html">Obtaining the Thumbprint for an OpenID Connect Provider</a> in the <i>IAM User Guide</i>.</p>
-- @param _ClientIDList [clientIDListType] <p>A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the <code>client_id</code> parameter on OAuth requests.)</p> <p>You can register multiple client IDs with the same provider. For example, you might have multiple applications that use the same OIDC provider. You cannot register more than 100 client IDs with a single IAM OIDC provider.</p> <p>There is no defined format for a client ID. The <code>CreateOpenIDConnectProviderRequest</code> action accepts client IDs up to 255 characters long.</p>
-- Required parameter: Url
-- Required parameter: ThumbprintList
function M.CreateOpenIDConnectProviderRequest(_Url, _ThumbprintList, _ClientIDList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOpenIDConnectProviderRequest")
	local t = { 
		["Url"] = _Url,
		["ThumbprintList"] = _ThumbprintList,
		["ClientIDList"] = _ClientIDList,
	}
	asserts.AssertCreateOpenIDConnectProviderRequest(t)
	return t
end

keys.ListUsersResponse = { ["Marker"] = true, ["Users"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersResponse to be of type 'table'")
	assert(struct["Users"], "Expected key Users to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["Users"] then asserts.AssertuserListType(struct["Users"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersResponse[k], "ListUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersResponse
-- <p>Contains the response to a successful <a>ListUsers</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _Users [userListType] <p>A list of users.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: Users
function M.ListUsersResponse(_Marker, _Users, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListUsersResponse")
	local t = { 
		["Marker"] = _Marker,
		["Users"] = _Users,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListUsersResponse(t)
	return t
end

keys.ResyncMFADeviceRequest = { ["UserName"] = true, ["AuthenticationCode1"] = true, ["SerialNumber"] = true, ["AuthenticationCode2"] = true, nil }

function asserts.AssertResyncMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResyncMFADeviceRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	assert(struct["AuthenticationCode1"], "Expected key AuthenticationCode1 to exist in table")
	assert(struct["AuthenticationCode2"], "Expected key AuthenticationCode2 to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["AuthenticationCode1"] then asserts.AssertauthenticationCodeType(struct["AuthenticationCode1"]) end
	if struct["SerialNumber"] then asserts.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["AuthenticationCode2"] then asserts.AssertauthenticationCodeType(struct["AuthenticationCode2"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResyncMFADeviceRequest[k], "ResyncMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResyncMFADeviceRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user whose MFA device you want to resynchronize.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _AuthenticationCode1 [authenticationCodeType] <p>An authentication code emitted by the device.</p> <p>The format for this parameter is a sequence of six digits.</p>
-- @param _SerialNumber [serialNumberType] <p>Serial number that uniquely identifies the MFA device.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _AuthenticationCode2 [authenticationCodeType] <p>A subsequent authentication code emitted by the device.</p> <p>The format for this parameter is a sequence of six digits.</p>
-- Required parameter: UserName
-- Required parameter: SerialNumber
-- Required parameter: AuthenticationCode1
-- Required parameter: AuthenticationCode2
function M.ResyncMFADeviceRequest(_UserName, _AuthenticationCode1, _SerialNumber, _AuthenticationCode2, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResyncMFADeviceRequest")
	local t = { 
		["UserName"] = _UserName,
		["AuthenticationCode1"] = _AuthenticationCode1,
		["SerialNumber"] = _SerialNumber,
		["AuthenticationCode2"] = _AuthenticationCode2,
	}
	asserts.AssertResyncMFADeviceRequest(t)
	return t
end

keys.CreateOpenIDConnectProviderResponse = { ["OpenIDConnectProviderArn"] = true, nil }

function asserts.AssertCreateOpenIDConnectProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOpenIDConnectProviderResponse to be of type 'table'")
	if struct["OpenIDConnectProviderArn"] then asserts.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOpenIDConnectProviderResponse[k], "CreateOpenIDConnectProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOpenIDConnectProviderResponse
-- <p>Contains the response to a successful <a>CreateOpenIDConnectProvider</a> request. </p>
-- @param _OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is created. For more information, see <a>OpenIDConnectProviderListEntry</a>. </p>
function M.CreateOpenIDConnectProviderResponse(_OpenIDConnectProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOpenIDConnectProviderResponse")
	local t = { 
		["OpenIDConnectProviderArn"] = _OpenIDConnectProviderArn,
	}
	asserts.AssertCreateOpenIDConnectProviderResponse(t)
	return t
end

keys.UpdateRoleDescriptionResponse = { ["Role"] = true, nil }

function asserts.AssertUpdateRoleDescriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRoleDescriptionResponse to be of type 'table'")
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRoleDescriptionResponse[k], "UpdateRoleDescriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRoleDescriptionResponse
--  
-- @param _Role [Role] <p>A structure that contains details about the modified role.</p>
function M.UpdateRoleDescriptionResponse(_Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateRoleDescriptionResponse")
	local t = { 
		["Role"] = _Role,
	}
	asserts.AssertUpdateRoleDescriptionResponse(t)
	return t
end

keys.GetInstanceProfileResponse = { ["InstanceProfile"] = true, nil }

function asserts.AssertGetInstanceProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceProfileResponse to be of type 'table'")
	assert(struct["InstanceProfile"], "Expected key InstanceProfile to exist in table")
	if struct["InstanceProfile"] then asserts.AssertInstanceProfile(struct["InstanceProfile"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceProfileResponse[k], "GetInstanceProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceProfileResponse
-- <p>Contains the response to a successful <a>GetInstanceProfile</a> request. </p>
-- @param _InstanceProfile [InstanceProfile] <p>A structure containing details about the instance profile.</p>
-- Required parameter: InstanceProfile
function M.GetInstanceProfileResponse(_InstanceProfile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceProfileResponse")
	local t = { 
		["InstanceProfile"] = _InstanceProfile,
	}
	asserts.AssertGetInstanceProfileResponse(t)
	return t
end

keys.ListPolicyVersionsRequest = { ["Marker"] = true, ["MaxItems"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertListPolicyVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPolicyVersionsRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPolicyVersionsRequest[k], "ListPolicyVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPolicyVersionsRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: PolicyArn
function M.ListPolicyVersionsRequest(_Marker, _MaxItems, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPolicyVersionsRequest")
	local t = { 
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertListPolicyVersionsRequest(t)
	return t
end

keys.GetGroupPolicyRequest = { ["GroupName"] = true, ["PolicyName"] = true, nil }

function asserts.AssertGetGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupPolicyRequest[k], "GetGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupPolicyRequest
--  
-- @param _GroupName [groupNameType] <p>The name of the group the policy is associated with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy document to get.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: GroupName
-- Required parameter: PolicyName
function M.GetGroupPolicyRequest(_GroupName, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupPolicyRequest")
	local t = { 
		["GroupName"] = _GroupName,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertGetGroupPolicyRequest(t)
	return t
end

keys.GetGroupRequest = { ["Marker"] = true, ["GroupName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertGetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupRequest[k], "GetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _GroupName [groupNameType] <p>The name of the group.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: GroupName
function M.GetGroupRequest(_Marker, _GroupName, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupRequest")
	local t = { 
		["Marker"] = _Marker,
		["GroupName"] = _GroupName,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertGetGroupRequest(t)
	return t
end

keys.ListRolesRequest = { ["Marker"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListRolesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRolesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then asserts.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRolesRequest[k], "ListRolesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRolesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example, the prefix <code>/application_abc/component_xyz/</code> gets all roles whose path starts with <code>/application_abc/component_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListRolesRequest(_Marker, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRolesRequest")
	local t = { 
		["Marker"] = _Marker,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListRolesRequest(t)
	return t
end

keys.UpdateLoginProfileRequest = { ["UserName"] = true, ["PasswordResetRequired"] = true, ["Password"] = true, nil }

function asserts.AssertUpdateLoginProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLoginProfileRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["PasswordResetRequired"] then asserts.AssertbooleanObjectType(struct["PasswordResetRequired"]) end
	if struct["Password"] then asserts.AssertpasswordType(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateLoginProfileRequest[k], "UpdateLoginProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLoginProfileRequest
--  
-- @param _UserName [userNameType] <p>The name of the user whose password you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PasswordResetRequired [booleanObjectType] <p>Allows this new password to be used only once by requiring the specified IAM user to set a new password on next sign-in.</p>
-- @param _Password [passwordType] <p>The new password for the specified IAM user.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D). However, the format can be further restricted by the account administrator by setting a password policy on the AWS account. For more information, see <a>UpdateAccountPasswordPolicy</a>.</p>
-- Required parameter: UserName
function M.UpdateLoginProfileRequest(_UserName, _PasswordResetRequired, _Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLoginProfileRequest")
	local t = { 
		["UserName"] = _UserName,
		["PasswordResetRequired"] = _PasswordResetRequired,
		["Password"] = _Password,
	}
	asserts.AssertUpdateLoginProfileRequest(t)
	return t
end

keys.UpdateOpenIDConnectProviderThumbprintRequest = { ["ThumbprintList"] = true, ["OpenIDConnectProviderArn"] = true, nil }

function asserts.AssertUpdateOpenIDConnectProviderThumbprintRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateOpenIDConnectProviderThumbprintRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	assert(struct["ThumbprintList"], "Expected key ThumbprintList to exist in table")
	if struct["ThumbprintList"] then asserts.AssertthumbprintListType(struct["ThumbprintList"]) end
	if struct["OpenIDConnectProviderArn"] then asserts.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateOpenIDConnectProviderThumbprintRequest[k], "UpdateOpenIDConnectProviderThumbprintRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateOpenIDConnectProviderThumbprintRequest
--  
-- @param _ThumbprintList [thumbprintListType] <p>A list of certificate thumbprints that are associated with the specified IAM OpenID Connect provider. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>
-- @param _OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> action.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: OpenIDConnectProviderArn
-- Required parameter: ThumbprintList
function M.UpdateOpenIDConnectProviderThumbprintRequest(_ThumbprintList, _OpenIDConnectProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateOpenIDConnectProviderThumbprintRequest")
	local t = { 
		["ThumbprintList"] = _ThumbprintList,
		["OpenIDConnectProviderArn"] = _OpenIDConnectProviderArn,
	}
	asserts.AssertUpdateOpenIDConnectProviderThumbprintRequest(t)
	return t
end

keys.CreatePolicyVersionResponse = { ["PolicyVersion"] = true, nil }

function asserts.AssertCreatePolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionResponse to be of type 'table'")
	if struct["PolicyVersion"] then asserts.AssertPolicyVersion(struct["PolicyVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyVersionResponse[k], "CreatePolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionResponse
-- <p>Contains the response to a successful <a>CreatePolicyVersion</a> request. </p>
-- @param _PolicyVersion [PolicyVersion] <p>A structure containing details about the new policy version.</p>
function M.CreatePolicyVersionResponse(_PolicyVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyVersionResponse")
	local t = { 
		["PolicyVersion"] = _PolicyVersion,
	}
	asserts.AssertCreatePolicyVersionResponse(t)
	return t
end

keys.PutUserPolicyRequest = { ["UserName"] = true, ["PolicyName"] = true, ["PolicyDocument"] = true, nil }

function asserts.AssertPutUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutUserPolicyRequest[k], "PutUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutUserPolicyRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user to associate the policy with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy document.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyDocument [policyDocumentType] <p>The policy document.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- Required parameter: UserName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.PutUserPolicyRequest(_UserName, _PolicyName, _PolicyDocument, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutUserPolicyRequest")
	local t = { 
		["UserName"] = _UserName,
		["PolicyName"] = _PolicyName,
		["PolicyDocument"] = _PolicyDocument,
	}
	asserts.AssertPutUserPolicyRequest(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertlimitExceededMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error message describes the limit exceeded.</p>
-- @param _message [limitExceededMessage] 
function M.LimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.InvalidPublicKeyException = { ["message"] = true, nil }

function asserts.AssertInvalidPublicKeyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPublicKeyException to be of type 'table'")
	if struct["message"] then asserts.AssertinvalidPublicKeyMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidPublicKeyException[k], "InvalidPublicKeyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPublicKeyException
-- <p>The request was rejected because the public key is malformed or otherwise invalid.</p>
-- @param _message [invalidPublicKeyMessage] 
function M.InvalidPublicKeyException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPublicKeyException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidPublicKeyException(t)
	return t
end

keys.AccessKeyLastUsed = { ["Region"] = true, ["ServiceName"] = true, ["LastUsedDate"] = true, nil }

function asserts.AssertAccessKeyLastUsed(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessKeyLastUsed to be of type 'table'")
	assert(struct["LastUsedDate"], "Expected key LastUsedDate to exist in table")
	assert(struct["ServiceName"], "Expected key ServiceName to exist in table")
	assert(struct["Region"], "Expected key Region to exist in table")
	if struct["Region"] then asserts.AssertstringType(struct["Region"]) end
	if struct["ServiceName"] then asserts.AssertstringType(struct["ServiceName"]) end
	if struct["LastUsedDate"] then asserts.AssertdateType(struct["LastUsedDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessKeyLastUsed[k], "AccessKeyLastUsed contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessKeyLastUsed
-- <p>Contains information about the last time an AWS access key was used.</p> <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> action.</p>
-- @param _Region [stringType] <p>The AWS region where this access key was most recently used. This field is displays "N/A" when:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.</p> </li> <li> <p>There is no sign-in data associated with the user</p> </li> </ul> <p>For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
-- @param _ServiceName [stringType] <p>The name of the AWS service with which this access key was most recently used. This field displays "N/A" when:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.</p> </li> <li> <p>There is no sign-in data associated with the user</p> </li> </ul>
-- @param _LastUsedDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the access key was most recently used. This field is null when:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.</p> </li> <li> <p>There is no sign-in data associated with the user</p> </li> </ul>
-- Required parameter: LastUsedDate
-- Required parameter: ServiceName
-- Required parameter: Region
function M.AccessKeyLastUsed(_Region, _ServiceName, _LastUsedDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessKeyLastUsed")
	local t = { 
		["Region"] = _Region,
		["ServiceName"] = _ServiceName,
		["LastUsedDate"] = _LastUsedDate,
	}
	asserts.AssertAccessKeyLastUsed(t)
	return t
end

keys.CreateUserResponse = { ["User"] = true, nil }

function asserts.AssertCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserResponse[k], "CreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResponse
-- <p>Contains the response to a successful <a>CreateUser</a> request. </p>
-- @param _User [User] <p>A structure with details about the new IAM user.</p>
function M.CreateUserResponse(_User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserResponse")
	local t = { 
		["User"] = _User,
	}
	asserts.AssertCreateUserResponse(t)
	return t
end

keys.CreatePolicyVersionRequest = { ["SetAsDefault"] = true, ["PolicyDocument"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertCreatePolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyVersionRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["SetAsDefault"] then asserts.AssertbooleanType(struct["SetAsDefault"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyVersionRequest[k], "CreatePolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyVersionRequest
--  
-- @param _SetAsDefault [booleanType] <p>Specifies whether to set this version as the policy's default version.</p> <p>When this parameter is <code>true</code>, the new policy version becomes the operative version; that is, the version that is in effect for the IAM users, groups, and roles that the policy is attached to.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
-- @param _PolicyDocument [policyDocumentType] <p>The JSON policy document that you want to use as the content for this new version of the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new version.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: PolicyArn
-- Required parameter: PolicyDocument
function M.CreatePolicyVersionRequest(_SetAsDefault, _PolicyDocument, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyVersionRequest")
	local t = { 
		["SetAsDefault"] = _SetAsDefault,
		["PolicyDocument"] = _PolicyDocument,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertCreatePolicyVersionRequest(t)
	return t
end

keys.GetUserResponse = { ["User"] = true, nil }

function asserts.AssertGetUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserResponse to be of type 'table'")
	assert(struct["User"], "Expected key User to exist in table")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserResponse[k], "GetUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserResponse
-- <p>Contains the response to a successful <a>GetUser</a> request. </p>
-- @param _User [User] <p>A structure containing details about the IAM user.</p>
-- Required parameter: User
function M.GetUserResponse(_User, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserResponse")
	local t = { 
		["User"] = _User,
	}
	asserts.AssertGetUserResponse(t)
	return t
end

keys.SimulateCustomPolicyRequest = { ["ResourceHandlingOption"] = true, ["ContextEntries"] = true, ["CallerArn"] = true, ["PolicyInputList"] = true, ["ResourcePolicy"] = true, ["MaxItems"] = true, ["ActionNames"] = true, ["Marker"] = true, ["ResourceArns"] = true, ["ResourceOwner"] = true, nil }

function asserts.AssertSimulateCustomPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SimulateCustomPolicyRequest to be of type 'table'")
	assert(struct["PolicyInputList"], "Expected key PolicyInputList to exist in table")
	assert(struct["ActionNames"], "Expected key ActionNames to exist in table")
	if struct["ResourceHandlingOption"] then asserts.AssertResourceHandlingOptionType(struct["ResourceHandlingOption"]) end
	if struct["ContextEntries"] then asserts.AssertContextEntryListType(struct["ContextEntries"]) end
	if struct["CallerArn"] then asserts.AssertResourceNameType(struct["CallerArn"]) end
	if struct["PolicyInputList"] then asserts.AssertSimulationPolicyListType(struct["PolicyInputList"]) end
	if struct["ResourcePolicy"] then asserts.AssertpolicyDocumentType(struct["ResourcePolicy"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	if struct["ActionNames"] then asserts.AssertActionNameListType(struct["ActionNames"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["ResourceArns"] then asserts.AssertResourceNameListType(struct["ResourceArns"]) end
	if struct["ResourceOwner"] then asserts.AssertResourceNameType(struct["ResourceOwner"]) end
	for k,_ in pairs(struct) do
		assert(keys.SimulateCustomPolicyRequest[k], "SimulateCustomPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SimulateCustomPolicyRequest
--  
-- @param _ResourceHandlingOption [ResourceHandlingOptionType] <p>Specifies the type of simulation to run. Different APIs that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.</p> <p>Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a> in the <i>AWS EC2 User Guide</i>.</p> <ul> <li> <p> <b>EC2-Classic-InstanceStore</b> </p> <p>instance, image, security-group</p> </li> <li> <p> <b>EC2-Classic-EBS</b> </p> <p>instance, image, security-group, volume</p> </li> <li> <p> <b>EC2-VPC-InstanceStore</b> </p> <p>instance, image, security-group, network-interface</p> </li> <li> <p> <b>EC2-VPC-InstanceStore-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet</p> </li> <li> <p> <b>EC2-VPC-EBS</b> </p> <p>instance, image, security-group, network-interface, volume</p> </li> <li> <p> <b>EC2-VPC-EBS-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet, volume</p> </li> </ul>
-- @param _ContextEntries [ContextEntryListType] <p>A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permission policies, the corresponding value is supplied.</p>
-- @param _CallerArn [ResourceNameType] <p>The ARN of the IAM user that you want to use as the simulated caller of the APIs. <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> so that the policy's <code>Principal</code> element has a value to use in evaluating the policy.</p> <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.</p>
-- @param _PolicyInputList [SimulationPolicyListType] <p>A list of policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy. Do not include any resource-based policies in this parameter. Any resource-based policy must be submitted with the <code>ResourcePolicy</code> parameter. The policies cannot be "scope-down" policies, such as you could include in a call to <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html">GetFederationToken</a> or one of the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html">AssumeRole</a> APIs to restrict what a user can do while using the temporary credentials.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _ResourcePolicy [policyDocumentType] <p>A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @param _ActionNames [ActionNameListType] <p>A list of names of API actions to evaluate in the simulation. Each action is evaluated against each resource. Each action must include the service identifier, such as <code>iam:CreateUser</code>.</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _ResourceArns [ResourceNameListType] <p>A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided then the value defaults to <code>*</code> (all resources). Each API in the <code>ActionNames</code> parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.</p> <p>The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the <code>ResourcePolicy</code> parameter.</p> <p>If you include a <code>ResourcePolicy</code>, then it must be applicable to all of the resources included in the simulation or you receive an invalid input error.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param _ResourceOwner [ResourceNameType] <p>An AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN, such as an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also used as the account owner of any <code>ResourcePolicy</code> included in the simulation. If the <code>ResourceOwner</code> parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in <code>CallerArn</code>. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user <code>CallerArn</code>.</p>
-- Required parameter: PolicyInputList
-- Required parameter: ActionNames
function M.SimulateCustomPolicyRequest(_ResourceHandlingOption, _ContextEntries, _CallerArn, _PolicyInputList, _ResourcePolicy, _MaxItems, _ActionNames, _Marker, _ResourceArns, _ResourceOwner, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SimulateCustomPolicyRequest")
	local t = { 
		["ResourceHandlingOption"] = _ResourceHandlingOption,
		["ContextEntries"] = _ContextEntries,
		["CallerArn"] = _CallerArn,
		["PolicyInputList"] = _PolicyInputList,
		["ResourcePolicy"] = _ResourcePolicy,
		["MaxItems"] = _MaxItems,
		["ActionNames"] = _ActionNames,
		["Marker"] = _Marker,
		["ResourceArns"] = _ResourceArns,
		["ResourceOwner"] = _ResourceOwner,
	}
	asserts.AssertSimulateCustomPolicyRequest(t)
	return t
end

keys.AccessKeyMetadata = { ["UserName"] = true, ["Status"] = true, ["CreateDate"] = true, ["AccessKeyId"] = true, nil }

function asserts.AssertAccessKeyMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessKeyMetadata to be of type 'table'")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["AccessKeyId"] then asserts.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessKeyMetadata[k], "AccessKeyMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessKeyMetadata
-- <p>Contains information about an AWS access key, without its secret key.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>
-- @param _UserName [userNameType] <p>The name of the IAM user that the key is associated with.</p>
-- @param _Status [statusType] <p>The status of the access key. <code>Active</code> means the key is valid for API calls; <code>Inactive</code> means it is not.</p>
-- @param _CreateDate [dateType] <p>The date when the access key was created.</p>
-- @param _AccessKeyId [accessKeyIdType] <p>The ID for this access key.</p>
function M.AccessKeyMetadata(_UserName, _Status, _CreateDate, _AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessKeyMetadata")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["CreateDate"] = _CreateDate,
		["AccessKeyId"] = _AccessKeyId,
	}
	asserts.AssertAccessKeyMetadata(t)
	return t
end

keys.GetAccountPasswordPolicyResponse = { ["PasswordPolicy"] = true, nil }

function asserts.AssertGetAccountPasswordPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountPasswordPolicyResponse to be of type 'table'")
	assert(struct["PasswordPolicy"], "Expected key PasswordPolicy to exist in table")
	if struct["PasswordPolicy"] then asserts.AssertPasswordPolicy(struct["PasswordPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountPasswordPolicyResponse[k], "GetAccountPasswordPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountPasswordPolicyResponse
-- <p>Contains the response to a successful <a>GetAccountPasswordPolicy</a> request. </p>
-- @param _PasswordPolicy [PasswordPolicy] <p>A structure that contains details about the account's password policy.</p>
-- Required parameter: PasswordPolicy
function M.GetAccountPasswordPolicyResponse(_PasswordPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountPasswordPolicyResponse")
	local t = { 
		["PasswordPolicy"] = _PasswordPolicy,
	}
	asserts.AssertGetAccountPasswordPolicyResponse(t)
	return t
end

keys.UploadSSHPublicKeyResponse = { ["SSHPublicKey"] = true, nil }

function asserts.AssertUploadSSHPublicKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadSSHPublicKeyResponse to be of type 'table'")
	if struct["SSHPublicKey"] then asserts.AssertSSHPublicKey(struct["SSHPublicKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadSSHPublicKeyResponse[k], "UploadSSHPublicKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadSSHPublicKeyResponse
-- <p>Contains the response to a successful <a>UploadSSHPublicKey</a> request.</p>
-- @param _SSHPublicKey [SSHPublicKey] <p>Contains information about the SSH public key.</p>
function M.UploadSSHPublicKeyResponse(_SSHPublicKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadSSHPublicKeyResponse")
	local t = { 
		["SSHPublicKey"] = _SSHPublicKey,
	}
	asserts.AssertUploadSSHPublicKeyResponse(t)
	return t
end

keys.GetPolicyVersionRequest = { ["VersionId"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertGetPolicyVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["VersionId"] then asserts.AssertpolicyVersionIdType(struct["VersionId"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyVersionRequest[k], "GetPolicyVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionRequest
--  
-- @param _VersionId [policyVersionIdType] <p>Identifies the policy version to retrieve.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the managed policy that you want information about.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: PolicyArn
-- Required parameter: VersionId
function M.GetPolicyVersionRequest(_VersionId, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyVersionRequest")
	local t = { 
		["VersionId"] = _VersionId,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertGetPolicyVersionRequest(t)
	return t
end

keys.CreateSAMLProviderResponse = { ["SAMLProviderArn"] = true, nil }

function asserts.AssertCreateSAMLProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSAMLProviderResponse to be of type 'table'")
	if struct["SAMLProviderArn"] then asserts.AssertarnType(struct["SAMLProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSAMLProviderResponse[k], "CreateSAMLProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSAMLProviderResponse
-- <p>Contains the response to a successful <a>CreateSAMLProvider</a> request. </p>
-- @param _SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.</p>
function M.CreateSAMLProviderResponse(_SAMLProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSAMLProviderResponse")
	local t = { 
		["SAMLProviderArn"] = _SAMLProviderArn,
	}
	asserts.AssertCreateSAMLProviderResponse(t)
	return t
end

keys.KeyPairMismatchException = { ["message"] = true, nil }

function asserts.AssertKeyPairMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyPairMismatchException to be of type 'table'")
	if struct["message"] then asserts.AssertkeyPairMismatchMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyPairMismatchException[k], "KeyPairMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyPairMismatchException
-- <p>The request was rejected because the public key certificate and the private key do not match.</p>
-- @param _message [keyPairMismatchMessage] 
function M.KeyPairMismatchException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KeyPairMismatchException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertKeyPairMismatchException(t)
	return t
end

keys.CredentialReportNotPresentException = { ["message"] = true, nil }

function asserts.AssertCredentialReportNotPresentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CredentialReportNotPresentException to be of type 'table'")
	if struct["message"] then asserts.AssertcredentialReportNotPresentExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CredentialReportNotPresentException[k], "CredentialReportNotPresentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CredentialReportNotPresentException
-- <p>The request was rejected because the credential report does not exist. To generate a credential report, use <a>GenerateCredentialReport</a>.</p>
-- @param _message [credentialReportNotPresentExceptionMessage] 
function M.CredentialReportNotPresentException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CredentialReportNotPresentException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertCredentialReportNotPresentException(t)
	return t
end

keys.SAMLProviderListEntry = { ["CreateDate"] = true, ["ValidUntil"] = true, ["Arn"] = true, nil }

function asserts.AssertSAMLProviderListEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SAMLProviderListEntry to be of type 'table'")
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["ValidUntil"] then asserts.AssertdateType(struct["ValidUntil"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SAMLProviderListEntry[k], "SAMLProviderListEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SAMLProviderListEntry
-- <p>Contains the list of SAML providers for this account.</p>
-- @param _CreateDate [dateType] <p>The date and time when the SAML provider was created.</p>
-- @param _ValidUntil [dateType] <p>The expiration date and time for the SAML provider.</p>
-- @param _Arn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider.</p>
function M.SAMLProviderListEntry(_CreateDate, _ValidUntil, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SAMLProviderListEntry")
	local t = { 
		["CreateDate"] = _CreateDate,
		["ValidUntil"] = _ValidUntil,
		["Arn"] = _Arn,
	}
	asserts.AssertSAMLProviderListEntry(t)
	return t
end

keys.ServiceFailureException = { ["message"] = true, nil }

function asserts.AssertServiceFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceFailureException to be of type 'table'")
	if struct["message"] then asserts.AssertserviceFailureExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceFailureException[k], "ServiceFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceFailureException
-- <p>The request processing has failed because of an unknown error, exception or failure.</p>
-- @param _message [serviceFailureExceptionMessage] 
function M.ServiceFailureException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceFailureException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServiceFailureException(t)
	return t
end

keys.ListServerCertificatesRequest = { ["Marker"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListServerCertificatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListServerCertificatesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then asserts.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListServerCertificatesRequest[k], "ListServerCertificatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListServerCertificatesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example: <code>/company/servercerts</code> would get all server certificates for which the path starts with <code>/company/servercerts</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all server certificates. This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListServerCertificatesRequest(_Marker, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListServerCertificatesRequest")
	local t = { 
		["Marker"] = _Marker,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListServerCertificatesRequest(t)
	return t
end

keys.InvalidAuthenticationCodeException = { ["message"] = true, nil }

function asserts.AssertInvalidAuthenticationCodeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAuthenticationCodeException to be of type 'table'")
	if struct["message"] then asserts.AssertinvalidAuthenticationCodeMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAuthenticationCodeException[k], "InvalidAuthenticationCodeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAuthenticationCodeException
-- <p>The request was rejected because the authentication code was not recognized. The error message describes the specific error.</p>
-- @param _message [invalidAuthenticationCodeMessage] 
function M.InvalidAuthenticationCodeException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAuthenticationCodeException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidAuthenticationCodeException(t)
	return t
end

keys.AttachRolePolicyRequest = { ["RoleName"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertAttachRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachRolePolicyRequest[k], "AttachRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachRolePolicyRequest
--  
-- @param _RoleName [roleNameType] <p>The name (friendly name, not ARN) of the role to attach the policy to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: RoleName
-- Required parameter: PolicyArn
function M.AttachRolePolicyRequest(_RoleName, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachRolePolicyRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertAttachRolePolicyRequest(t)
	return t
end

keys.ListAttachedUserPoliciesResponse = { ["Marker"] = true, ["AttachedPolicies"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListAttachedUserPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedUserPoliciesResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["AttachedPolicies"] then asserts.AssertattachedPoliciesListType(struct["AttachedPolicies"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttachedUserPoliciesResponse[k], "ListAttachedUserPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedUserPoliciesResponse
-- <p>Contains the response to a successful <a>ListAttachedUserPolicies</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _AttachedPolicies [attachedPoliciesListType] <p>A list of the attached policies.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
function M.ListAttachedUserPoliciesResponse(_Marker, _AttachedPolicies, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedUserPoliciesResponse")
	local t = { 
		["Marker"] = _Marker,
		["AttachedPolicies"] = _AttachedPolicies,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListAttachedUserPoliciesResponse(t)
	return t
end

keys.ListMFADevicesRequest = { ["UserName"] = true, ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListMFADevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMFADevicesRequest to be of type 'table'")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMFADevicesRequest[k], "ListMFADevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMFADevicesRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user whose MFA devices you want to list.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListMFADevicesRequest(_UserName, _Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMFADevicesRequest")
	local t = { 
		["UserName"] = _UserName,
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListMFADevicesRequest(t)
	return t
end

keys.DuplicateCertificateException = { ["message"] = true, nil }

function asserts.AssertDuplicateCertificateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateCertificateException to be of type 'table'")
	if struct["message"] then asserts.AssertduplicateCertificateMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateCertificateException[k], "DuplicateCertificateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateCertificateException
-- <p>The request was rejected because the same certificate is associated with an IAM user in the account.</p>
-- @param _message [duplicateCertificateMessage] 
function M.DuplicateCertificateException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateCertificateException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDuplicateCertificateException(t)
	return t
end

keys.CredentialReportExpiredException = { ["message"] = true, nil }

function asserts.AssertCredentialReportExpiredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CredentialReportExpiredException to be of type 'table'")
	if struct["message"] then asserts.AssertcredentialReportExpiredExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CredentialReportExpiredException[k], "CredentialReportExpiredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CredentialReportExpiredException
-- <p>The request was rejected because the most recent credential report has expired. To generate a new credential report, use <a>GenerateCredentialReport</a>. For more information about credential report expiration, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting Credential Reports</a> in the <i>IAM User Guide</i>.</p>
-- @param _message [credentialReportExpiredExceptionMessage] 
function M.CredentialReportExpiredException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CredentialReportExpiredException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertCredentialReportExpiredException(t)
	return t
end

keys.ResetServiceSpecificCredentialRequest = { ["UserName"] = true, ["ServiceSpecificCredentialId"] = true, nil }

function asserts.AssertResetServiceSpecificCredentialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetServiceSpecificCredentialRequest to be of type 'table'")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["ServiceSpecificCredentialId"] then asserts.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetServiceSpecificCredentialRequest[k], "ResetServiceSpecificCredentialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetServiceSpecificCredentialRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier of the service-specific credential.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: ServiceSpecificCredentialId
function M.ResetServiceSpecificCredentialRequest(_UserName, _ServiceSpecificCredentialId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResetServiceSpecificCredentialRequest")
	local t = { 
		["UserName"] = _UserName,
		["ServiceSpecificCredentialId"] = _ServiceSpecificCredentialId,
	}
	asserts.AssertResetServiceSpecificCredentialRequest(t)
	return t
end

keys.ListSSHPublicKeysResponse = { ["Marker"] = true, ["SSHPublicKeys"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListSSHPublicKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSSHPublicKeysResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["SSHPublicKeys"] then asserts.AssertSSHPublicKeyListType(struct["SSHPublicKeys"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSSHPublicKeysResponse[k], "ListSSHPublicKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSSHPublicKeysResponse
-- <p>Contains the response to a successful <a>ListSSHPublicKeys</a> request.</p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _SSHPublicKeys [SSHPublicKeyListType] <p>A list of the SSH public keys assigned to IAM user.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
function M.ListSSHPublicKeysResponse(_Marker, _SSHPublicKeys, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSSHPublicKeysResponse")
	local t = { 
		["Marker"] = _Marker,
		["SSHPublicKeys"] = _SSHPublicKeys,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListSSHPublicKeysResponse(t)
	return t
end

keys.GetAccountSummaryResponse = { ["SummaryMap"] = true, nil }

function asserts.AssertGetAccountSummaryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccountSummaryResponse to be of type 'table'")
	if struct["SummaryMap"] then asserts.AssertsummaryMapType(struct["SummaryMap"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccountSummaryResponse[k], "GetAccountSummaryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccountSummaryResponse
-- <p>Contains the response to a successful <a>GetAccountSummary</a> request. </p>
-- @param _SummaryMap [summaryMapType] <p>A set of key value pairs containing information about IAM entity usage and IAM quotas.</p>
function M.GetAccountSummaryResponse(_SummaryMap, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccountSummaryResponse")
	local t = { 
		["SummaryMap"] = _SummaryMap,
	}
	asserts.AssertGetAccountSummaryResponse(t)
	return t
end

keys.CreateUserRequest = { ["UserName"] = true, ["Path"] = true, nil }

function asserts.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserRequest[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param _UserName [userNameType] <p>The name of the user to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".</p>
-- @param _Path [pathType] <p> The path for the user name. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- Required parameter: UserName
function M.CreateUserRequest(_UserName, _Path, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateUserRequest")
	local t = { 
		["UserName"] = _UserName,
		["Path"] = _Path,
	}
	asserts.AssertCreateUserRequest(t)
	return t
end

keys.PolicyGroup = { ["GroupName"] = true, ["GroupId"] = true, nil }

function asserts.AssertPolicyGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyGroup to be of type 'table'")
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["GroupId"] then asserts.AssertidType(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyGroup[k], "PolicyGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyGroup
-- <p>Contains information about a group that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param _GroupName [groupNameType] <p>The name (friendly name, not ARN) identifying the group.</p>
-- @param _GroupId [idType] <p>The stable and unique string identifying the group. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>
function M.PolicyGroup(_GroupName, _GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyGroup")
	local t = { 
		["GroupName"] = _GroupName,
		["GroupId"] = _GroupId,
	}
	asserts.AssertPolicyGroup(t)
	return t
end

keys.ListPoliciesRequest = { ["Marker"] = true, ["Scope"] = true, ["OnlyAttached"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["Scope"] then asserts.AssertpolicyScopeType(struct["Scope"]) end
	if struct["OnlyAttached"] then asserts.AssertbooleanType(struct["OnlyAttached"]) end
	if struct["PathPrefix"] then asserts.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesRequest[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _Scope [policyScopeType] <p>The scope to use for filtering the results.</p> <p>To list only AWS managed policies, set <code>Scope</code> to <code>AWS</code>. To list only the customer managed policies in your AWS account, set <code>Scope</code> to <code>Local</code>.</p> <p>This parameter is optional. If it is not included, or if it is set to <code>All</code>, all policies are returned.</p>
-- @param _OnlyAttached [booleanType] <p>A flag to filter the results to only the attached policies.</p> <p>When <code>OnlyAttached</code> is <code>true</code>, the returned list contains only the policies that are attached to an IAM user, group, or role. When <code>OnlyAttached</code> is <code>false</code>, or when the parameter is not included, all policies are returned.</p>
-- @param _PathPrefix [policyPathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListPoliciesRequest(_Marker, _Scope, _OnlyAttached, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesRequest")
	local t = { 
		["Marker"] = _Marker,
		["Scope"] = _Scope,
		["OnlyAttached"] = _OnlyAttached,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListPoliciesRequest(t)
	return t
end

keys.CreateAccountAliasRequest = { ["AccountAlias"] = true, nil }

function asserts.AssertCreateAccountAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountAliasRequest to be of type 'table'")
	assert(struct["AccountAlias"], "Expected key AccountAlias to exist in table")
	if struct["AccountAlias"] then asserts.AssertaccountAliasType(struct["AccountAlias"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccountAliasRequest[k], "CreateAccountAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountAliasRequest
--  
-- @param _AccountAlias [accountAliasType] <p>The account alias to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.</p>
-- Required parameter: AccountAlias
function M.CreateAccountAliasRequest(_AccountAlias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountAliasRequest")
	local t = { 
		["AccountAlias"] = _AccountAlias,
	}
	asserts.AssertCreateAccountAliasRequest(t)
	return t
end

keys.CreatePolicyRequest = { ["PolicyName"] = true, ["PolicyDocument"] = true, ["Description"] = true, ["Path"] = true, nil }

function asserts.AssertCreatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyRequest to be of type 'table'")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["Description"] then asserts.AssertpolicyDescriptionType(struct["Description"]) end
	if struct["Path"] then asserts.AssertpolicyPathType(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyRequest[k], "CreatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyRequest
--  
-- @param _PolicyName [policyNameType] <p>The friendly name of the policy.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyDocument [policyDocumentType] <p>The JSON policy document that you want to use as the content for the new policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _Description [policyDescriptionType] <p>A friendly description of the policy.</p> <p>Typically used to store information about the permissions defined in the policy. For example, "Grants access to production DynamoDB tables."</p> <p>The policy description is immutable. After a value is assigned, it cannot be changed.</p>
-- @param _Path [policyPathType] <p>The path for the policy.</p> <p>For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.CreatePolicyRequest(_PolicyName, _PolicyDocument, _Description, _Path, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyRequest")
	local t = { 
		["PolicyName"] = _PolicyName,
		["PolicyDocument"] = _PolicyDocument,
		["Description"] = _Description,
		["Path"] = _Path,
	}
	asserts.AssertCreatePolicyRequest(t)
	return t
end

keys.ListVirtualMFADevicesResponse = { ["Marker"] = true, ["IsTruncated"] = true, ["VirtualMFADevices"] = true, nil }

function asserts.AssertListVirtualMFADevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVirtualMFADevicesResponse to be of type 'table'")
	assert(struct["VirtualMFADevices"], "Expected key VirtualMFADevices to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	if struct["VirtualMFADevices"] then asserts.AssertvirtualMFADeviceListType(struct["VirtualMFADevices"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVirtualMFADevicesResponse[k], "ListVirtualMFADevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVirtualMFADevicesResponse
-- <p>Contains the response to a successful <a>ListVirtualMFADevices</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @param _VirtualMFADevices [virtualMFADeviceListType] <p> The list of virtual MFA devices in the current account that match the <code>AssignmentStatus</code> value that was passed in the request.</p>
-- Required parameter: VirtualMFADevices
function M.ListVirtualMFADevicesResponse(_Marker, _IsTruncated, _VirtualMFADevices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVirtualMFADevicesResponse")
	local t = { 
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["VirtualMFADevices"] = _VirtualMFADevices,
	}
	asserts.AssertListVirtualMFADevicesResponse(t)
	return t
end

keys.CreateRoleResponse = { ["Role"] = true, nil }

function asserts.AssertCreateRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRoleResponse to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRoleResponse[k], "CreateRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRoleResponse
-- <p>Contains the response to a successful <a>CreateRole</a> request. </p>
-- @param _Role [Role] <p>A structure containing details about the new role.</p>
-- Required parameter: Role
function M.CreateRoleResponse(_Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateRoleResponse")
	local t = { 
		["Role"] = _Role,
	}
	asserts.AssertCreateRoleResponse(t)
	return t
end

keys.UpdateServerCertificateRequest = { ["NewPath"] = true, ["NewServerCertificateName"] = true, ["ServerCertificateName"] = true, nil }

function asserts.AssertUpdateServerCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServerCertificateRequest to be of type 'table'")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	if struct["NewPath"] then asserts.AssertpathType(struct["NewPath"]) end
	if struct["NewServerCertificateName"] then asserts.AssertserverCertificateNameType(struct["NewServerCertificateName"]) end
	if struct["ServerCertificateName"] then asserts.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServerCertificateRequest[k], "UpdateServerCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServerCertificateRequest
--  
-- @param _NewPath [pathType] <p>The new path for the server certificate. Include this only if you are updating the server certificate's path.</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _NewServerCertificateName [serverCertificateNameType] <p>The new name for the server certificate. Include this only if you are updating the server certificate's name. The name of the certificate cannot contain any spaces.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _ServerCertificateName [serverCertificateNameType] <p>The name of the server certificate that you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: ServerCertificateName
function M.UpdateServerCertificateRequest(_NewPath, _NewServerCertificateName, _ServerCertificateName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServerCertificateRequest")
	local t = { 
		["NewPath"] = _NewPath,
		["NewServerCertificateName"] = _NewServerCertificateName,
		["ServerCertificateName"] = _ServerCertificateName,
	}
	asserts.AssertUpdateServerCertificateRequest(t)
	return t
end

keys.AttachGroupPolicyRequest = { ["GroupName"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertAttachGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachGroupPolicyRequest[k], "AttachGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachGroupPolicyRequest
--  
-- @param _GroupName [groupNameType] <p>The name (friendly name, not ARN) of the group to attach the policy to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: GroupName
-- Required parameter: PolicyArn
function M.AttachGroupPolicyRequest(_GroupName, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachGroupPolicyRequest")
	local t = { 
		["GroupName"] = _GroupName,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertAttachGroupPolicyRequest(t)
	return t
end

keys.ListAccountAliasesRequest = { ["Marker"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListAccountAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountAliasesRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccountAliasesRequest[k], "ListAccountAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountAliasesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListAccountAliasesRequest(_Marker, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountAliasesRequest")
	local t = { 
		["Marker"] = _Marker,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListAccountAliasesRequest(t)
	return t
end

keys.AddUserToGroupRequest = { ["UserName"] = true, ["GroupName"] = true, nil }

function asserts.AssertAddUserToGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddUserToGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddUserToGroupRequest[k], "AddUserToGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddUserToGroupRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user to add.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _GroupName [groupNameType] <p>The name of the group to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: GroupName
-- Required parameter: UserName
function M.AddUserToGroupRequest(_UserName, _GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddUserToGroupRequest")
	local t = { 
		["UserName"] = _UserName,
		["GroupName"] = _GroupName,
	}
	asserts.AssertAddUserToGroupRequest(t)
	return t
end

keys.DetachUserPolicyRequest = { ["UserName"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertDetachUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachUserPolicyRequest[k], "DetachUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachUserPolicyRequest
--  
-- @param _UserName [userNameType] <p>The name (friendly name, not ARN) of the IAM user to detach the policy from.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: UserName
-- Required parameter: PolicyArn
function M.DetachUserPolicyRequest(_UserName, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachUserPolicyRequest")
	local t = { 
		["UserName"] = _UserName,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertDetachUserPolicyRequest(t)
	return t
end

keys.ListRolesResponse = { ["Marker"] = true, ["IsTruncated"] = true, ["Roles"] = true, nil }

function asserts.AssertListRolesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRolesResponse to be of type 'table'")
	assert(struct["Roles"], "Expected key Roles to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	if struct["Roles"] then asserts.AssertroleListType(struct["Roles"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRolesResponse[k], "ListRolesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRolesResponse
-- <p>Contains the response to a successful <a>ListRoles</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @param _Roles [roleListType] <p>A list of roles.</p>
-- Required parameter: Roles
function M.ListRolesResponse(_Marker, _IsTruncated, _Roles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRolesResponse")
	local t = { 
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["Roles"] = _Roles,
	}
	asserts.AssertListRolesResponse(t)
	return t
end

keys.MFADevice = { ["UserName"] = true, ["SerialNumber"] = true, ["EnableDate"] = true, nil }

function asserts.AssertMFADevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MFADevice to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	assert(struct["EnableDate"], "Expected key EnableDate to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["SerialNumber"] then asserts.AssertserialNumberType(struct["SerialNumber"]) end
	if struct["EnableDate"] then asserts.AssertdateType(struct["EnableDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.MFADevice[k], "MFADevice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MFADevice
-- <p>Contains information about an MFA device.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> action.</p>
-- @param _UserName [userNameType] <p>The user with whom the MFA device is associated.</p>
-- @param _SerialNumber [serialNumberType] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p>
-- @param _EnableDate [dateType] <p>The date when the MFA device was enabled for the user.</p>
-- Required parameter: UserName
-- Required parameter: SerialNumber
-- Required parameter: EnableDate
function M.MFADevice(_UserName, _SerialNumber, _EnableDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MFADevice")
	local t = { 
		["UserName"] = _UserName,
		["SerialNumber"] = _SerialNumber,
		["EnableDate"] = _EnableDate,
	}
	asserts.AssertMFADevice(t)
	return t
end

keys.InvalidUserTypeException = { ["message"] = true, nil }

function asserts.AssertInvalidUserTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUserTypeException to be of type 'table'")
	if struct["message"] then asserts.AssertinvalidUserTypeMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidUserTypeException[k], "InvalidUserTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUserTypeException
-- <p>The request was rejected because the type of user for the transaction was incorrect.</p>
-- @param _message [invalidUserTypeMessage] 
function M.InvalidUserTypeException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidUserTypeException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidUserTypeException(t)
	return t
end

keys.GetRoleResponse = { ["Role"] = true, nil }

function asserts.AssertGetRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRoleResponse to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRoleResponse[k], "GetRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRoleResponse
-- <p>Contains the response to a successful <a>GetRole</a> request. </p>
-- @param _Role [Role] <p>A structure containing details about the IAM role.</p>
-- Required parameter: Role
function M.GetRoleResponse(_Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRoleResponse")
	local t = { 
		["Role"] = _Role,
	}
	asserts.AssertGetRoleResponse(t)
	return t
end

keys.ServiceSpecificCredential = { ["UserName"] = true, ["Status"] = true, ["CreateDate"] = true, ["ServiceName"] = true, ["ServicePassword"] = true, ["ServiceSpecificCredentialId"] = true, ["ServiceUserName"] = true, nil }

function asserts.AssertServiceSpecificCredential(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceSpecificCredential to be of type 'table'")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	assert(struct["ServiceName"], "Expected key ServiceName to exist in table")
	assert(struct["ServiceUserName"], "Expected key ServiceUserName to exist in table")
	assert(struct["ServicePassword"], "Expected key ServicePassword to exist in table")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["ServiceName"] then asserts.AssertserviceName(struct["ServiceName"]) end
	if struct["ServicePassword"] then asserts.AssertservicePassword(struct["ServicePassword"]) end
	if struct["ServiceSpecificCredentialId"] then asserts.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	if struct["ServiceUserName"] then asserts.AssertserviceUserName(struct["ServiceUserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceSpecificCredential[k], "ServiceSpecificCredential contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceSpecificCredential
-- <p>Contains the details of a service specific credential.</p>
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential.</p>
-- @param _Status [statusType] <p>The status of the service-specific credential. <code>Active</code> means the key is valid for API calls, while <code>Inactive</code> means it is not.</p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the service-specific credential were created.</p>
-- @param _ServiceName [serviceName] <p>The name of the service associated with the service-specific credential.</p>
-- @param _ServicePassword [servicePassword] <p>The generated password for the service-specific credential.</p>
-- @param _ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier for the service-specific credential.</p>
-- @param _ServiceUserName [serviceUserName] <p>The generated user name for the service-specific credential. This value is generated by combining the IAM user's name combined with the ID number of the AWS account, as in <code>jane-at-123456789012</code>, for example. This value cannot be configured by the user.</p>
-- Required parameter: CreateDate
-- Required parameter: ServiceName
-- Required parameter: ServiceUserName
-- Required parameter: ServicePassword
-- Required parameter: ServiceSpecificCredentialId
-- Required parameter: UserName
-- Required parameter: Status
function M.ServiceSpecificCredential(_UserName, _Status, _CreateDate, _ServiceName, _ServicePassword, _ServiceSpecificCredentialId, _ServiceUserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceSpecificCredential")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["CreateDate"] = _CreateDate,
		["ServiceName"] = _ServiceName,
		["ServicePassword"] = _ServicePassword,
		["ServiceSpecificCredentialId"] = _ServiceSpecificCredentialId,
		["ServiceUserName"] = _ServiceUserName,
	}
	asserts.AssertServiceSpecificCredential(t)
	return t
end

keys.UpdateSAMLProviderResponse = { ["SAMLProviderArn"] = true, nil }

function asserts.AssertUpdateSAMLProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSAMLProviderResponse to be of type 'table'")
	if struct["SAMLProviderArn"] then asserts.AssertarnType(struct["SAMLProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSAMLProviderResponse[k], "UpdateSAMLProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSAMLProviderResponse
-- <p>Contains the response to a successful <a>UpdateSAMLProvider</a> request. </p>
-- @param _SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider that was updated.</p>
function M.UpdateSAMLProviderResponse(_SAMLProviderArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSAMLProviderResponse")
	local t = { 
		["SAMLProviderArn"] = _SAMLProviderArn,
	}
	asserts.AssertUpdateSAMLProviderResponse(t)
	return t
end

keys.ServiceNotSupportedException = { ["message"] = true, nil }

function asserts.AssertServiceNotSupportedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceNotSupportedException to be of type 'table'")
	if struct["message"] then asserts.AssertserviceNotSupportedMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceNotSupportedException[k], "ServiceNotSupportedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceNotSupportedException
-- <p>The specified service does not support service-specific credentials.</p>
-- @param _message [serviceNotSupportedMessage] 
function M.ServiceNotSupportedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceNotSupportedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServiceNotSupportedException(t)
	return t
end

keys.PasswordPolicy = { ["AllowUsersToChangePassword"] = true, ["RequireLowercaseCharacters"] = true, ["RequireUppercaseCharacters"] = true, ["MinimumPasswordLength"] = true, ["RequireNumbers"] = true, ["PasswordReusePrevention"] = true, ["HardExpiry"] = true, ["RequireSymbols"] = true, ["MaxPasswordAge"] = true, ["ExpirePasswords"] = true, nil }

function asserts.AssertPasswordPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordPolicy to be of type 'table'")
	if struct["AllowUsersToChangePassword"] then asserts.AssertbooleanType(struct["AllowUsersToChangePassword"]) end
	if struct["RequireLowercaseCharacters"] then asserts.AssertbooleanType(struct["RequireLowercaseCharacters"]) end
	if struct["RequireUppercaseCharacters"] then asserts.AssertbooleanType(struct["RequireUppercaseCharacters"]) end
	if struct["MinimumPasswordLength"] then asserts.AssertminimumPasswordLengthType(struct["MinimumPasswordLength"]) end
	if struct["RequireNumbers"] then asserts.AssertbooleanType(struct["RequireNumbers"]) end
	if struct["PasswordReusePrevention"] then asserts.AssertpasswordReusePreventionType(struct["PasswordReusePrevention"]) end
	if struct["HardExpiry"] then asserts.AssertbooleanObjectType(struct["HardExpiry"]) end
	if struct["RequireSymbols"] then asserts.AssertbooleanType(struct["RequireSymbols"]) end
	if struct["MaxPasswordAge"] then asserts.AssertmaxPasswordAgeType(struct["MaxPasswordAge"]) end
	if struct["ExpirePasswords"] then asserts.AssertbooleanType(struct["ExpirePasswords"]) end
	for k,_ in pairs(struct) do
		assert(keys.PasswordPolicy[k], "PasswordPolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordPolicy
-- <p>Contains information about the account password policy.</p> <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> action. </p>
-- @param _AllowUsersToChangePassword [booleanType] <p>Specifies whether IAM users are allowed to change their own password.</p>
-- @param _RequireLowercaseCharacters [booleanType] <p>Specifies whether to require lowercase characters for IAM user passwords.</p>
-- @param _RequireUppercaseCharacters [booleanType] <p>Specifies whether to require uppercase characters for IAM user passwords.</p>
-- @param _MinimumPasswordLength [minimumPasswordLengthType] <p>Minimum length to require for IAM user passwords.</p>
-- @param _RequireNumbers [booleanType] <p>Specifies whether to require numbers for IAM user passwords.</p>
-- @param _PasswordReusePrevention [passwordReusePreventionType] <p>Specifies the number of previous passwords that IAM users are prevented from reusing.</p>
-- @param _HardExpiry [booleanObjectType] <p>Specifies whether IAM users are prevented from setting a new password after their password has expired.</p>
-- @param _RequireSymbols [booleanType] <p>Specifies whether to require symbols for IAM user passwords.</p>
-- @param _MaxPasswordAge [maxPasswordAgeType] <p>The number of days that an IAM user password is valid.</p>
-- @param _ExpirePasswords [booleanType] <p>Indicates whether passwords in the account expire. Returns true if MaxPasswordAge is contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.</p>
function M.PasswordPolicy(_AllowUsersToChangePassword, _RequireLowercaseCharacters, _RequireUppercaseCharacters, _MinimumPasswordLength, _RequireNumbers, _PasswordReusePrevention, _HardExpiry, _RequireSymbols, _MaxPasswordAge, _ExpirePasswords, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PasswordPolicy")
	local t = { 
		["AllowUsersToChangePassword"] = _AllowUsersToChangePassword,
		["RequireLowercaseCharacters"] = _RequireLowercaseCharacters,
		["RequireUppercaseCharacters"] = _RequireUppercaseCharacters,
		["MinimumPasswordLength"] = _MinimumPasswordLength,
		["RequireNumbers"] = _RequireNumbers,
		["PasswordReusePrevention"] = _PasswordReusePrevention,
		["HardExpiry"] = _HardExpiry,
		["RequireSymbols"] = _RequireSymbols,
		["MaxPasswordAge"] = _MaxPasswordAge,
		["ExpirePasswords"] = _ExpirePasswords,
	}
	asserts.AssertPasswordPolicy(t)
	return t
end

keys.ListMFADevicesResponse = { ["Marker"] = true, ["MFADevices"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListMFADevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMFADevicesResponse to be of type 'table'")
	assert(struct["MFADevices"], "Expected key MFADevices to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["MFADevices"] then asserts.AssertmfaDeviceListType(struct["MFADevices"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMFADevicesResponse[k], "ListMFADevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMFADevicesResponse
-- <p>Contains the response to a successful <a>ListMFADevices</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _MFADevices [mfaDeviceListType] <p>A list of MFA devices.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: MFADevices
function M.ListMFADevicesResponse(_Marker, _MFADevices, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListMFADevicesResponse")
	local t = { 
		["Marker"] = _Marker,
		["MFADevices"] = _MFADevices,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListMFADevicesResponse(t)
	return t
end

keys.GetSSHPublicKeyResponse = { ["SSHPublicKey"] = true, nil }

function asserts.AssertGetSSHPublicKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSSHPublicKeyResponse to be of type 'table'")
	if struct["SSHPublicKey"] then asserts.AssertSSHPublicKey(struct["SSHPublicKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSSHPublicKeyResponse[k], "GetSSHPublicKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSSHPublicKeyResponse
-- <p>Contains the response to a successful <a>GetSSHPublicKey</a> request.</p>
-- @param _SSHPublicKey [SSHPublicKey] <p>A structure containing details about the SSH public key.</p>
function M.GetSSHPublicKeyResponse(_SSHPublicKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSSHPublicKeyResponse")
	local t = { 
		["SSHPublicKey"] = _SSHPublicKey,
	}
	asserts.AssertGetSSHPublicKeyResponse(t)
	return t
end

keys.ListAccessKeysResponse = { ["Marker"] = true, ["AccessKeyMetadata"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertListAccessKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccessKeysResponse to be of type 'table'")
	assert(struct["AccessKeyMetadata"], "Expected key AccessKeyMetadata to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["AccessKeyMetadata"] then asserts.AssertaccessKeyMetadataListType(struct["AccessKeyMetadata"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccessKeysResponse[k], "ListAccessKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccessKeysResponse
-- <p>Contains the response to a successful <a>ListAccessKeys</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _AccessKeyMetadata [accessKeyMetadataListType] <p>A list of objects containing metadata about the access keys.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required parameter: AccessKeyMetadata
function M.ListAccessKeysResponse(_Marker, _AccessKeyMetadata, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccessKeysResponse")
	local t = { 
		["Marker"] = _Marker,
		["AccessKeyMetadata"] = _AccessKeyMetadata,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertListAccessKeysResponse(t)
	return t
end

keys.PasswordPolicyViolationException = { ["message"] = true, nil }

function asserts.AssertPasswordPolicyViolationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PasswordPolicyViolationException to be of type 'table'")
	if struct["message"] then asserts.AssertpasswordPolicyViolationMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PasswordPolicyViolationException[k], "PasswordPolicyViolationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PasswordPolicyViolationException
-- <p>The request was rejected because the provided password did not meet the requirements imposed by the account password policy.</p>
-- @param _message [passwordPolicyViolationMessage] 
function M.PasswordPolicyViolationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PasswordPolicyViolationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertPasswordPolicyViolationException(t)
	return t
end

keys.PolicyUser = { ["UserName"] = true, ["UserId"] = true, nil }

function asserts.AssertPolicyUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyUser to be of type 'table'")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["UserId"] then asserts.AssertidType(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyUser[k], "PolicyUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyUser
-- <p>Contains information about a user that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param _UserName [userNameType] <p>The name (friendly name, not ARN) identifying the user.</p>
-- @param _UserId [idType] <p>The stable and unique string identifying the user. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>
function M.PolicyUser(_UserName, _UserId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyUser")
	local t = { 
		["UserName"] = _UserName,
		["UserId"] = _UserId,
	}
	asserts.AssertPolicyUser(t)
	return t
end

keys.ListGroupsRequest = { ["Marker"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsRequest to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then asserts.AssertpathPrefixType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsRequest[k], "ListGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example, the prefix <code>/division_abc/subdivision_xyz/</code> gets all groups whose path starts with <code>/division_abc/subdivision_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all groups. This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
function M.ListGroupsRequest(_Marker, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsRequest")
	local t = { 
		["Marker"] = _Marker,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListGroupsRequest(t)
	return t
end

keys.DetachGroupPolicyRequest = { ["GroupName"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertDetachGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachGroupPolicyRequest[k], "DetachGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachGroupPolicyRequest
--  
-- @param _GroupName [groupNameType] <p>The name (friendly name, not ARN) of the IAM group to detach the policy from.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: GroupName
-- Required parameter: PolicyArn
function M.DetachGroupPolicyRequest(_GroupName, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachGroupPolicyRequest")
	local t = { 
		["GroupName"] = _GroupName,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertDetachGroupPolicyRequest(t)
	return t
end

keys.Statement = { ["SourcePolicyId"] = true, ["StartPosition"] = true, ["SourcePolicyType"] = true, ["EndPosition"] = true, nil }

function asserts.AssertStatement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Statement to be of type 'table'")
	if struct["SourcePolicyId"] then asserts.AssertPolicyIdentifierType(struct["SourcePolicyId"]) end
	if struct["StartPosition"] then asserts.AssertPosition(struct["StartPosition"]) end
	if struct["SourcePolicyType"] then asserts.AssertPolicySourceType(struct["SourcePolicyType"]) end
	if struct["EndPosition"] then asserts.AssertPosition(struct["EndPosition"]) end
	for k,_ in pairs(struct) do
		assert(keys.Statement[k], "Statement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Statement
-- <p>Contains a reference to a <code>Statement</code> element in a policy document that determines the result of the simulation.</p> <p>This data type is used by the <code>MatchedStatements</code> member of the <code> <a>EvaluationResult</a> </code> type.</p>
-- @param _SourcePolicyId [PolicyIdentifierType] <p>The identifier of the policy that was provided as an input.</p>
-- @param _StartPosition [Position] <p>The row and column of the beginning of the <code>Statement</code> in an IAM policy.</p>
-- @param _SourcePolicyType [PolicySourceType] <p>The type of the policy.</p>
-- @param _EndPosition [Position] <p>The row and column of the end of a <code>Statement</code> in an IAM policy.</p>
function M.Statement(_SourcePolicyId, _StartPosition, _SourcePolicyType, _EndPosition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Statement")
	local t = { 
		["SourcePolicyId"] = _SourcePolicyId,
		["StartPosition"] = _StartPosition,
		["SourcePolicyType"] = _SourcePolicyType,
		["EndPosition"] = _EndPosition,
	}
	asserts.AssertStatement(t)
	return t
end

keys.PutGroupPolicyRequest = { ["GroupName"] = true, ["PolicyDocument"] = true, ["PolicyName"] = true, nil }

function asserts.AssertPutGroupPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutGroupPolicyRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	assert(struct["PolicyDocument"], "Expected key PolicyDocument to exist in table")
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	if struct["PolicyDocument"] then asserts.AssertpolicyDocumentType(struct["PolicyDocument"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutGroupPolicyRequest[k], "PutGroupPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutGroupPolicyRequest
--  
-- @param _GroupName [groupNameType] <p>The name of the group to associate the policy with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyDocument [policyDocumentType] <p>The policy document.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy document.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: GroupName
-- Required parameter: PolicyName
-- Required parameter: PolicyDocument
function M.PutGroupPolicyRequest(_GroupName, _PolicyDocument, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutGroupPolicyRequest")
	local t = { 
		["GroupName"] = _GroupName,
		["PolicyDocument"] = _PolicyDocument,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertPutGroupPolicyRequest(t)
	return t
end

keys.GetRoleRequest = { ["RoleName"] = true, nil }

function asserts.AssertGetRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRoleRequest[k], "GetRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRoleRequest
--  
-- @param _RoleName [roleNameType] <p>The name of the IAM role to get information about.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required parameter: RoleName
function M.GetRoleRequest(_RoleName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRoleRequest")
	local t = { 
		["RoleName"] = _RoleName,
	}
	asserts.AssertGetRoleRequest(t)
	return t
end

keys.CreateServiceLinkedRoleRequest = { ["AWSServiceName"] = true, ["Description"] = true, ["CustomSuffix"] = true, nil }

function asserts.AssertCreateServiceLinkedRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceLinkedRoleRequest to be of type 'table'")
	assert(struct["AWSServiceName"], "Expected key AWSServiceName to exist in table")
	if struct["AWSServiceName"] then asserts.AssertgroupNameType(struct["AWSServiceName"]) end
	if struct["Description"] then asserts.AssertroleDescriptionType(struct["Description"]) end
	if struct["CustomSuffix"] then asserts.AssertcustomSuffixType(struct["CustomSuffix"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceLinkedRoleRequest[k], "CreateServiceLinkedRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceLinkedRoleRequest
--  
-- @param _AWSServiceName [groupNameType] <p>The AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: <code>elasticbeanstalk.amazonaws.com</code> </p>
-- @param _Description [roleDescriptionType] <p>The description of the role.</p>
-- @param _CustomSuffix [customSuffixType] <p>A string that you provide, which is combined with the service name to form the complete role name. If you make multiple requests for the same service, then you must supply a different <code>CustomSuffix</code> for each request. Otherwise the request fails with a duplicate role name error. For example, you could add <code>-1</code> or <code>-debug</code> to the suffix.</p>
-- Required parameter: AWSServiceName
function M.CreateServiceLinkedRoleRequest(_AWSServiceName, _Description, _CustomSuffix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceLinkedRoleRequest")
	local t = { 
		["AWSServiceName"] = _AWSServiceName,
		["Description"] = _Description,
		["CustomSuffix"] = _CustomSuffix,
	}
	asserts.AssertCreateServiceLinkedRoleRequest(t)
	return t
end

keys.DeleteVirtualMFADeviceRequest = { ["SerialNumber"] = true, nil }

function asserts.AssertDeleteVirtualMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVirtualMFADeviceRequest to be of type 'table'")
	assert(struct["SerialNumber"], "Expected key SerialNumber to exist in table")
	if struct["SerialNumber"] then asserts.AssertserialNumberType(struct["SerialNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVirtualMFADeviceRequest[k], "DeleteVirtualMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVirtualMFADeviceRequest
--  
-- @param _SerialNumber [serialNumberType] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>
-- Required parameter: SerialNumber
function M.DeleteVirtualMFADeviceRequest(_SerialNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteVirtualMFADeviceRequest")
	local t = { 
		["SerialNumber"] = _SerialNumber,
	}
	asserts.AssertDeleteVirtualMFADeviceRequest(t)
	return t
end

keys.AddRoleToInstanceProfileRequest = { ["RoleName"] = true, ["InstanceProfileName"] = true, nil }

function asserts.AssertAddRoleToInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddRoleToInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["InstanceProfileName"] then asserts.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddRoleToInstanceProfileRequest[k], "AddRoleToInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddRoleToInstanceProfileRequest
--  
-- @param _RoleName [roleNameType] <p>The name of the role to add.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: InstanceProfileName
-- Required parameter: RoleName
function M.AddRoleToInstanceProfileRequest(_RoleName, _InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddRoleToInstanceProfileRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["InstanceProfileName"] = _InstanceProfileName,
	}
	asserts.AssertAddRoleToInstanceProfileRequest(t)
	return t
end

keys.GetAccessKeyLastUsedResponse = { ["UserName"] = true, ["AccessKeyLastUsed"] = true, nil }

function asserts.AssertGetAccessKeyLastUsedResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAccessKeyLastUsedResponse to be of type 'table'")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["AccessKeyLastUsed"] then asserts.AssertAccessKeyLastUsed(struct["AccessKeyLastUsed"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAccessKeyLastUsedResponse[k], "GetAccessKeyLastUsedResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAccessKeyLastUsedResponse
-- <p>Contains the response to a successful <a>GetAccessKeyLastUsed</a> request. It is also returned as a member of the <a>AccessKeyMetaData</a> structure returned by the <a>ListAccessKeys</a> action.</p>
-- @param _UserName [existingUserNameType] <p>The name of the AWS IAM user that owns this access key.</p> <p/>
-- @param _AccessKeyLastUsed [AccessKeyLastUsed] <p>Contains information about the last time the access key was used.</p>
function M.GetAccessKeyLastUsedResponse(_UserName, _AccessKeyLastUsed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAccessKeyLastUsedResponse")
	local t = { 
		["UserName"] = _UserName,
		["AccessKeyLastUsed"] = _AccessKeyLastUsed,
	}
	asserts.AssertGetAccessKeyLastUsedResponse(t)
	return t
end

keys.Position = { ["Column"] = true, ["Line"] = true, nil }

function asserts.AssertPosition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Position to be of type 'table'")
	if struct["Column"] then asserts.AssertColumnNumber(struct["Column"]) end
	if struct["Line"] then asserts.AssertLineNumber(struct["Line"]) end
	for k,_ in pairs(struct) do
		assert(keys.Position[k], "Position contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Position
-- <p>Contains the row and column of a location of a <code>Statement</code> element in a policy document.</p> <p>This data type is used as a member of the <code> <a>Statement</a> </code> type.</p>
-- @param _Column [ColumnNumber] <p>The column in the line containing the specified position in the document.</p>
-- @param _Line [LineNumber] <p>The line containing the specified position in the document.</p>
function M.Position(_Column, _Line, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Position")
	local t = { 
		["Column"] = _Column,
		["Line"] = _Line,
	}
	asserts.AssertPosition(t)
	return t
end

keys.UploadServerCertificateRequest = { ["Path"] = true, ["CertificateBody"] = true, ["PrivateKey"] = true, ["ServerCertificateName"] = true, ["CertificateChain"] = true, nil }

function asserts.AssertUploadServerCertificateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UploadServerCertificateRequest to be of type 'table'")
	assert(struct["ServerCertificateName"], "Expected key ServerCertificateName to exist in table")
	assert(struct["CertificateBody"], "Expected key CertificateBody to exist in table")
	assert(struct["PrivateKey"], "Expected key PrivateKey to exist in table")
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["CertificateBody"] then asserts.AssertcertificateBodyType(struct["CertificateBody"]) end
	if struct["PrivateKey"] then asserts.AssertprivateKeyType(struct["PrivateKey"]) end
	if struct["ServerCertificateName"] then asserts.AssertserverCertificateNameType(struct["ServerCertificateName"]) end
	if struct["CertificateChain"] then asserts.AssertcertificateChainType(struct["CertificateChain"]) end
	for k,_ in pairs(struct) do
		assert(keys.UploadServerCertificateRequest[k], "UploadServerCertificateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UploadServerCertificateRequest
--  
-- @param _Path [pathType] <p>The path for the server certificate. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/). This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p> <note> <p> If you are uploading a server certificate specifically for use with Amazon CloudFront distributions, you must specify a path using the <code>--path</code> option. The path must begin with <code>/cloudfront</code> and must include a trailing slash (for example, <code>/cloudfront/test/</code>).</p> </note>
-- @param _CertificateBody [certificateBodyType] <p>The contents of the public key certificate in PEM-encoded format.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _PrivateKey [privateKeyType] <p>The contents of the private key in PEM-encoded format.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _ServerCertificateName [serverCertificateNameType] <p>The name for the server certificate. Do not include the path in this value. The name of the certificate cannot contain any spaces.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _CertificateChain [certificateChainType] <p>The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- Required parameter: ServerCertificateName
-- Required parameter: CertificateBody
-- Required parameter: PrivateKey
function M.UploadServerCertificateRequest(_Path, _CertificateBody, _PrivateKey, _ServerCertificateName, _CertificateChain, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UploadServerCertificateRequest")
	local t = { 
		["Path"] = _Path,
		["CertificateBody"] = _CertificateBody,
		["PrivateKey"] = _PrivateKey,
		["ServerCertificateName"] = _ServerCertificateName,
		["CertificateChain"] = _CertificateChain,
	}
	asserts.AssertUploadServerCertificateRequest(t)
	return t
end

keys.LoginProfile = { ["UserName"] = true, ["CreateDate"] = true, ["PasswordResetRequired"] = true, nil }

function asserts.AssertLoginProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoginProfile to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["PasswordResetRequired"] then asserts.AssertbooleanType(struct["PasswordResetRequired"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoginProfile[k], "LoginProfile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoginProfile
-- <p>Contains the user name and password create date for a user.</p> <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> actions. </p>
-- @param _UserName [userNameType] <p>The name of the user, which can be used for signing in to the AWS Management Console.</p>
-- @param _CreateDate [dateType] <p>The date when the password for the user was created.</p>
-- @param _PasswordResetRequired [booleanType] <p>Specifies whether the user is required to set a new password on next sign-in.</p>
-- Required parameter: UserName
-- Required parameter: CreateDate
function M.LoginProfile(_UserName, _CreateDate, _PasswordResetRequired, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoginProfile")
	local t = { 
		["UserName"] = _UserName,
		["CreateDate"] = _CreateDate,
		["PasswordResetRequired"] = _PasswordResetRequired,
	}
	asserts.AssertLoginProfile(t)
	return t
end

keys.CreateAccessKeyRequest = { ["UserName"] = true, nil }

function asserts.AssertCreateAccessKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccessKeyRequest to be of type 'table'")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccessKeyRequest[k], "CreateAccessKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccessKeyRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the IAM user that the new key will belong to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
function M.CreateAccessKeyRequest(_UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccessKeyRequest")
	local t = { 
		["UserName"] = _UserName,
	}
	asserts.AssertCreateAccessKeyRequest(t)
	return t
end

keys.ContextEntry = { ["ContextKeyValues"] = true, ["ContextKeyType"] = true, ["ContextKeyName"] = true, nil }

function asserts.AssertContextEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContextEntry to be of type 'table'")
	if struct["ContextKeyValues"] then asserts.AssertContextKeyValueListType(struct["ContextKeyValues"]) end
	if struct["ContextKeyType"] then asserts.AssertContextKeyTypeEnum(struct["ContextKeyType"]) end
	if struct["ContextKeyName"] then asserts.AssertContextKeyNameType(struct["ContextKeyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContextEntry[k], "ContextEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContextEntry
-- <p>Contains information about a condition context key. It includes the name of the key and specifies the value (or values, if the context key supports multiple values) to use in the simulation. This information is used when evaluating the <code>Condition</code> elements of the input policies.</p> <p>This data type is used as an input parameter to <code> <a>SimulateCustomPolicy</a> </code> and <code> <a>SimulateCustomPolicy</a> </code>.</p>
-- @param _ContextKeyValues [ContextKeyValueListType] <p>The value (or values, if the condition context key supports multiple values) to provide to the simulation for use when the key is referenced by a <code>Condition</code> element in an input policy.</p>
-- @param _ContextKeyType [ContextKeyTypeEnum] <p>The data type of the value (or values) specified in the <code>ContextKeyValues</code> parameter.</p>
-- @param _ContextKeyName [ContextKeyNameType] <p>The full name of a condition context key, including the service prefix. For example, <code>aws:SourceIp</code> or <code>s3:VersionId</code>.</p>
function M.ContextEntry(_ContextKeyValues, _ContextKeyType, _ContextKeyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContextEntry")
	local t = { 
		["ContextKeyValues"] = _ContextKeyValues,
		["ContextKeyType"] = _ContextKeyType,
		["ContextKeyName"] = _ContextKeyName,
	}
	asserts.AssertContextEntry(t)
	return t
end

keys.PolicyRole = { ["RoleName"] = true, ["RoleId"] = true, nil }

function asserts.AssertPolicyRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyRole to be of type 'table'")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["RoleId"] then asserts.AssertidType(struct["RoleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyRole[k], "PolicyRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyRole
-- <p>Contains information about a role that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> action. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param _RoleName [roleNameType] <p>The name (friendly name, not ARN) identifying the role.</p>
-- @param _RoleId [idType] <p>The stable and unique string identifying the role. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>
function M.PolicyRole(_RoleName, _RoleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyRole")
	local t = { 
		["RoleName"] = _RoleName,
		["RoleId"] = _RoleId,
	}
	asserts.AssertPolicyRole(t)
	return t
end

keys.CreateInstanceProfileRequest = { ["Path"] = true, ["InstanceProfileName"] = true, nil }

function asserts.AssertCreateInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["InstanceProfileName"] then asserts.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInstanceProfileRequest[k], "CreateInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInstanceProfileRequest
--  
-- @param _Path [pathType] <p> The path to the instance profile. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: InstanceProfileName
function M.CreateInstanceProfileRequest(_Path, _InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateInstanceProfileRequest")
	local t = { 
		["Path"] = _Path,
		["InstanceProfileName"] = _InstanceProfileName,
	}
	asserts.AssertCreateInstanceProfileRequest(t)
	return t
end

keys.DeleteSSHPublicKeyRequest = { ["UserName"] = true, ["SSHPublicKeyId"] = true, nil }

function asserts.AssertDeleteSSHPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSSHPublicKeyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["SSHPublicKeyId"] then asserts.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSSHPublicKeyRequest[k], "DeleteSSHPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSSHPublicKeyRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
function M.DeleteSSHPublicKeyRequest(_UserName, _SSHPublicKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSSHPublicKeyRequest")
	local t = { 
		["UserName"] = _UserName,
		["SSHPublicKeyId"] = _SSHPublicKeyId,
	}
	asserts.AssertDeleteSSHPublicKeyRequest(t)
	return t
end

keys.DeleteGroupRequest = { ["GroupName"] = true, nil }

function asserts.AssertDeleteGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then asserts.AssertgroupNameType(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGroupRequest[k], "DeleteGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupRequest
--  
-- @param _GroupName [groupNameType] <p>The name of the IAM group to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: GroupName
function M.DeleteGroupRequest(_GroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupRequest")
	local t = { 
		["GroupName"] = _GroupName,
	}
	asserts.AssertDeleteGroupRequest(t)
	return t
end

keys.CreatePolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertCreatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyResponse[k], "CreatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyResponse
-- <p>Contains the response to a successful <a>CreatePolicy</a> request. </p>
-- @param _Policy [Policy] <p>A structure containing details about the new policy.</p>
function M.CreatePolicyResponse(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyResponse")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertCreatePolicyResponse(t)
	return t
end

keys.DetachRolePolicyRequest = { ["RoleName"] = true, ["PolicyArn"] = true, nil }

function asserts.AssertDetachRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachRolePolicyRequest[k], "DetachRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachRolePolicyRequest
--  
-- @param _RoleName [roleNameType] <p>The name (friendly name, not ARN) of the IAM role to detach the policy from.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required parameter: RoleName
-- Required parameter: PolicyArn
function M.DetachRolePolicyRequest(_RoleName, _PolicyArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachRolePolicyRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["PolicyArn"] = _PolicyArn,
	}
	asserts.AssertDetachRolePolicyRequest(t)
	return t
end

keys.UpdateSSHPublicKeyRequest = { ["UserName"] = true, ["Status"] = true, ["SSHPublicKeyId"] = true, nil }

function asserts.AssertUpdateSSHPublicKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSSHPublicKeyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["SSHPublicKeyId"] then asserts.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSSHPublicKeyRequest[k], "UpdateSSHPublicKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSSHPublicKeyRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Status [statusType] <p>The status to assign to the SSH public key. <code>Active</code> means the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means the key cannot be used.</p>
-- @param _SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
-- Required parameter: Status
function M.UpdateSSHPublicKeyRequest(_UserName, _Status, _SSHPublicKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSSHPublicKeyRequest")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["SSHPublicKeyId"] = _SSHPublicKeyId,
	}
	asserts.AssertUpdateSSHPublicKeyRequest(t)
	return t
end

keys.NoSuchEntityException = { ["message"] = true, nil }

function asserts.AssertNoSuchEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchEntityException to be of type 'table'")
	if struct["message"] then asserts.AssertnoSuchEntityMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchEntityException[k], "NoSuchEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchEntityException
-- <p>The request was rejected because it referenced an entity that does not exist. The error message describes the entity.</p>
-- @param _message [noSuchEntityMessage] 
function M.NoSuchEntityException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchEntityException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertNoSuchEntityException(t)
	return t
end

keys.RemoveRoleFromInstanceProfileRequest = { ["RoleName"] = true, ["InstanceProfileName"] = true, nil }

function asserts.AssertRemoveRoleFromInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveRoleFromInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["InstanceProfileName"] then asserts.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveRoleFromInstanceProfileRequest[k], "RemoveRoleFromInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveRoleFromInstanceProfileRequest
--  
-- @param _RoleName [roleNameType] <p>The name of the role to remove.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: InstanceProfileName
-- Required parameter: RoleName
function M.RemoveRoleFromInstanceProfileRequest(_RoleName, _InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveRoleFromInstanceProfileRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["InstanceProfileName"] = _InstanceProfileName,
	}
	asserts.AssertRemoveRoleFromInstanceProfileRequest(t)
	return t
end

keys.SimulatePrincipalPolicyRequest = { ["PolicySourceArn"] = true, ["ResourceHandlingOption"] = true, ["ContextEntries"] = true, ["CallerArn"] = true, ["ResourceArns"] = true, ["PolicyInputList"] = true, ["ResourcePolicy"] = true, ["MaxItems"] = true, ["Marker"] = true, ["ActionNames"] = true, ["ResourceOwner"] = true, nil }

function asserts.AssertSimulatePrincipalPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SimulatePrincipalPolicyRequest to be of type 'table'")
	assert(struct["PolicySourceArn"], "Expected key PolicySourceArn to exist in table")
	assert(struct["ActionNames"], "Expected key ActionNames to exist in table")
	if struct["PolicySourceArn"] then asserts.AssertarnType(struct["PolicySourceArn"]) end
	if struct["ResourceHandlingOption"] then asserts.AssertResourceHandlingOptionType(struct["ResourceHandlingOption"]) end
	if struct["ContextEntries"] then asserts.AssertContextEntryListType(struct["ContextEntries"]) end
	if struct["CallerArn"] then asserts.AssertResourceNameType(struct["CallerArn"]) end
	if struct["ResourceArns"] then asserts.AssertResourceNameListType(struct["ResourceArns"]) end
	if struct["PolicyInputList"] then asserts.AssertSimulationPolicyListType(struct["PolicyInputList"]) end
	if struct["ResourcePolicy"] then asserts.AssertpolicyDocumentType(struct["ResourcePolicy"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["ActionNames"] then asserts.AssertActionNameListType(struct["ActionNames"]) end
	if struct["ResourceOwner"] then asserts.AssertResourceNameType(struct["ResourceOwner"]) end
	for k,_ in pairs(struct) do
		assert(keys.SimulatePrincipalPolicyRequest[k], "SimulatePrincipalPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SimulatePrincipalPolicyRequest
--  
-- @param _PolicySourceArn [arnType] <p>The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to include in the simulation. If you specify a user, group, or role, the simulation includes all policies that are associated with that entity. If you specify a user, the simulation also includes all policies that are attached to any groups the user belongs to.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param _ResourceHandlingOption [ResourceHandlingOptionType] <p>Specifies the type of simulation to run. Different APIs that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.</p> <p>Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a> in the <i>AWS EC2 User Guide</i>.</p> <ul> <li> <p> <b>EC2-Classic-InstanceStore</b> </p> <p>instance, image, security-group</p> </li> <li> <p> <b>EC2-Classic-EBS</b> </p> <p>instance, image, security-group, volume</p> </li> <li> <p> <b>EC2-VPC-InstanceStore</b> </p> <p>instance, image, security-group, network-interface</p> </li> <li> <p> <b>EC2-VPC-InstanceStore-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet</p> </li> <li> <p> <b>EC2-VPC-EBS</b> </p> <p>instance, image, security-group, network-interface, volume</p> </li> <li> <p> <b>EC2-VPC-EBS-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet, volume</p> </li> </ul>
-- @param _ContextEntries [ContextEntryListType] <p>A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permission policies, the corresponding value is supplied.</p>
-- @param _CallerArn [ResourceNameType] <p>The ARN of the IAM user that you want to specify as the simulated caller of the APIs. If you do not specify a <code>CallerArn</code>, it defaults to the ARN of the user that you specify in <code>PolicySourceArn</code>, if you specified a user. If you include both a <code>PolicySourceArn</code> (for example, <code>arn:aws:iam::123456789012:user/David</code>) and a <code>CallerArn</code> (for example, <code>arn:aws:iam::123456789012:user/Bob</code>), the result is that you simulate calling the APIs as Bob, as if Bob had David's policies.</p> <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.</p> <p> <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> and the <code>PolicySourceArn</code> is not the ARN for an IAM user. This is required so that the resource-based policy's <code>Principal</code> element has a value to use in evaluating the policy.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param _ResourceArns [ResourceNameListType] <p>A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided then the value defaults to <code>*</code> (all resources). Each API in the <code>ActionNames</code> parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.</p> <p>The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the <code>ResourcePolicy</code> parameter.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param _PolicyInputList [SimulationPolicyListType] <p>An optional list of additional policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _ResourcePolicy [policyDocumentType] <p>A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of any printable ASCII character ranging from the space character (\u0020) through end of the ASCII character range as well as the printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF). It also includes the special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D).</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _ActionNames [ActionNameListType] <p>A list of names of API actions to evaluate in the simulation. Each action is evaluated for each resource. Each action must include the service identifier, such as <code>iam:CreateUser</code>.</p>
-- @param _ResourceOwner [ResourceNameType] <p>An AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN, such as an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also used as the account owner of any <code>ResourcePolicy</code> included in the simulation. If the <code>ResourceOwner</code> parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in <code>CallerArn</code>. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user <code>CallerArn</code>.</p>
-- Required parameter: PolicySourceArn
-- Required parameter: ActionNames
function M.SimulatePrincipalPolicyRequest(_PolicySourceArn, _ResourceHandlingOption, _ContextEntries, _CallerArn, _ResourceArns, _PolicyInputList, _ResourcePolicy, _MaxItems, _Marker, _ActionNames, _ResourceOwner, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SimulatePrincipalPolicyRequest")
	local t = { 
		["PolicySourceArn"] = _PolicySourceArn,
		["ResourceHandlingOption"] = _ResourceHandlingOption,
		["ContextEntries"] = _ContextEntries,
		["CallerArn"] = _CallerArn,
		["ResourceArns"] = _ResourceArns,
		["PolicyInputList"] = _PolicyInputList,
		["ResourcePolicy"] = _ResourcePolicy,
		["MaxItems"] = _MaxItems,
		["Marker"] = _Marker,
		["ActionNames"] = _ActionNames,
		["ResourceOwner"] = _ResourceOwner,
	}
	asserts.AssertSimulatePrincipalPolicyRequest(t)
	return t
end

keys.GetUserPolicyRequest = { ["UserName"] = true, ["PolicyName"] = true, nil }

function asserts.AssertGetUserPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserPolicyRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["UserName"] then asserts.AssertexistingUserNameType(struct["UserName"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserPolicyRequest[k], "GetUserPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserPolicyRequest
--  
-- @param _UserName [existingUserNameType] <p>The name of the user who the policy is associated with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy document to get.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: UserName
-- Required parameter: PolicyName
function M.GetUserPolicyRequest(_UserName, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUserPolicyRequest")
	local t = { 
		["UserName"] = _UserName,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertGetUserPolicyRequest(t)
	return t
end

keys.GetRolePolicyRequest = { ["RoleName"] = true, ["PolicyName"] = true, nil }

function asserts.AssertGetRolePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRolePolicyRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PolicyName"], "Expected key PolicyName to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRolePolicyRequest[k], "GetRolePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRolePolicyRequest
--  
-- @param _RoleName [roleNameType] <p>The name of the role associated with the policy.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _PolicyName [policyNameType] <p>The name of the policy document to get.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: RoleName
-- Required parameter: PolicyName
function M.GetRolePolicyRequest(_RoleName, _PolicyName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetRolePolicyRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["PolicyName"] = _PolicyName,
	}
	asserts.AssertGetRolePolicyRequest(t)
	return t
end

keys.DeleteConflictException = { ["message"] = true, nil }

function asserts.AssertDeleteConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConflictException to be of type 'table'")
	if struct["message"] then asserts.AssertdeleteConflictMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConflictException[k], "DeleteConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConflictException
-- <p>The request was rejected because it attempted to delete a resource that has attached subordinate entities. The error message describes these entities.</p>
-- @param _message [deleteConflictMessage] 
function M.DeleteConflictException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteConflictException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDeleteConflictException(t)
	return t
end

keys.CreateSAMLProviderRequest = { ["SAMLMetadataDocument"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSAMLProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSAMLProviderRequest to be of type 'table'")
	assert(struct["SAMLMetadataDocument"], "Expected key SAMLMetadataDocument to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SAMLMetadataDocument"] then asserts.AssertSAMLMetadataDocumentType(struct["SAMLMetadataDocument"]) end
	if struct["Name"] then asserts.AssertSAMLProviderNameType(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSAMLProviderRequest[k], "CreateSAMLProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSAMLProviderRequest
--  
-- @param _SAMLMetadataDocument [SAMLMetadataDocumentType] <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i> </p>
-- @param _Name [SAMLProviderNameType] <p>The name of the provider to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: SAMLMetadataDocument
-- Required parameter: Name
function M.CreateSAMLProviderRequest(_SAMLMetadataDocument, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSAMLProviderRequest")
	local t = { 
		["SAMLMetadataDocument"] = _SAMLMetadataDocument,
		["Name"] = _Name,
	}
	asserts.AssertCreateSAMLProviderRequest(t)
	return t
end

keys.DeleteLoginProfileRequest = { ["UserName"] = true, nil }

function asserts.AssertDeleteLoginProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoginProfileRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoginProfileRequest[k], "DeleteLoginProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoginProfileRequest
--  
-- @param _UserName [userNameType] <p>The name of the user whose password you want to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: UserName
function M.DeleteLoginProfileRequest(_UserName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLoginProfileRequest")
	local t = { 
		["UserName"] = _UserName,
	}
	asserts.AssertDeleteLoginProfileRequest(t)
	return t
end

keys.CreateVirtualMFADeviceRequest = { ["Path"] = true, ["VirtualMFADeviceName"] = true, nil }

function asserts.AssertCreateVirtualMFADeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVirtualMFADeviceRequest to be of type 'table'")
	assert(struct["VirtualMFADeviceName"], "Expected key VirtualMFADeviceName to exist in table")
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["VirtualMFADeviceName"] then asserts.AssertvirtualMFADeviceName(struct["VirtualMFADeviceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVirtualMFADeviceRequest[k], "CreateVirtualMFADeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVirtualMFADeviceRequest
--  
-- @param _Path [pathType] <p> The path for the virtual MFA device. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _VirtualMFADeviceName [virtualMFADeviceName] <p>The name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: VirtualMFADeviceName
function M.CreateVirtualMFADeviceRequest(_Path, _VirtualMFADeviceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVirtualMFADeviceRequest")
	local t = { 
		["Path"] = _Path,
		["VirtualMFADeviceName"] = _VirtualMFADeviceName,
	}
	asserts.AssertCreateVirtualMFADeviceRequest(t)
	return t
end

keys.User = { ["UserName"] = true, ["PasswordLastUsed"] = true, ["CreateDate"] = true, ["UserId"] = true, ["Path"] = true, ["Arn"] = true, nil }

function asserts.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["PasswordLastUsed"] then asserts.AssertdateType(struct["PasswordLastUsed"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["UserId"] then asserts.AssertidType(struct["UserId"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.User[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- <p>Contains information about an IAM user entity.</p> <p>This data type is used as a response element in the following actions:</p> <ul> <li> <p> <a>CreateUser</a> </p> </li> <li> <p> <a>GetUser</a> </p> </li> <li> <p> <a>ListUsers</a> </p> </li> </ul>
-- @param _UserName [userNameType] <p>The friendly name identifying the user.</p>
-- @param _PasswordLastUsed [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the user's password was last used to sign in to an AWS website. For a list of AWS websites that capture a user's last sign-in time, see the <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Credential Reports</a> topic in the <i>Using IAM</i> guide. If a password is used more than once in a five-minute span, only the first use is returned in this field. This field is null (not present) when:</p> <ul> <li> <p>The user does not have a password</p> </li> <li> <p>The password exists but has never been used (at least not since IAM started tracking this information on October 20th, 2014</p> </li> <li> <p>there is no sign-in data associated with the user</p> </li> </ul> <p>This value is returned only in the <a>GetUser</a> and <a>ListUsers</a> actions. </p>
-- @param _CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the user was created.</p>
-- @param _UserId [idType] <p>The stable and unique string identifying the user. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _Path [pathType] <p>The path to the user. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- @param _Arn [arnType] <p>The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and how to use ARNs in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- Required parameter: Path
-- Required parameter: UserName
-- Required parameter: UserId
-- Required parameter: Arn
-- Required parameter: CreateDate
function M.User(_UserName, _PasswordLastUsed, _CreateDate, _UserId, _Path, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating User")
	local t = { 
		["UserName"] = _UserName,
		["PasswordLastUsed"] = _PasswordLastUsed,
		["CreateDate"] = _CreateDate,
		["UserId"] = _UserId,
		["Path"] = _Path,
		["Arn"] = _Arn,
	}
	asserts.AssertUser(t)
	return t
end

keys.GetInstanceProfileRequest = { ["InstanceProfileName"] = true, nil }

function asserts.AssertGetInstanceProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInstanceProfileRequest to be of type 'table'")
	assert(struct["InstanceProfileName"], "Expected key InstanceProfileName to exist in table")
	if struct["InstanceProfileName"] then asserts.AssertinstanceProfileNameType(struct["InstanceProfileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInstanceProfileRequest[k], "GetInstanceProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInstanceProfileRequest
--  
-- @param _InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to get information about.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- Required parameter: InstanceProfileName
function M.GetInstanceProfileRequest(_InstanceProfileName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInstanceProfileRequest")
	local t = { 
		["InstanceProfileName"] = _InstanceProfileName,
	}
	asserts.AssertGetInstanceProfileRequest(t)
	return t
end

keys.SimulatePolicyResponse = { ["Marker"] = true, ["EvaluationResults"] = true, ["IsTruncated"] = true, nil }

function asserts.AssertSimulatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SimulatePolicyResponse to be of type 'table'")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["EvaluationResults"] then asserts.AssertEvaluationResultsListType(struct["EvaluationResults"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.SimulatePolicyResponse[k], "SimulatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SimulatePolicyResponse
-- <p>Contains the response to a successful <a>SimulatePrincipalPolicy</a> or <a>SimulateCustomPolicy</a> request.</p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _EvaluationResults [EvaluationResultsListType] <p>The results of the simulation.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
function M.SimulatePolicyResponse(_Marker, _EvaluationResults, _IsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SimulatePolicyResponse")
	local t = { 
		["Marker"] = _Marker,
		["EvaluationResults"] = _EvaluationResults,
		["IsTruncated"] = _IsTruncated,
	}
	asserts.AssertSimulatePolicyResponse(t)
	return t
end

keys.CreateServiceLinkedRoleResponse = { ["Role"] = true, nil }

function asserts.AssertCreateServiceLinkedRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateServiceLinkedRoleResponse to be of type 'table'")
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateServiceLinkedRoleResponse[k], "CreateServiceLinkedRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateServiceLinkedRoleResponse
--  
-- @param _Role [Role] <p>A <a>Role</a> object that contains details about the newly created role.</p>
function M.CreateServiceLinkedRoleResponse(_Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateServiceLinkedRoleResponse")
	local t = { 
		["Role"] = _Role,
	}
	asserts.AssertCreateServiceLinkedRoleResponse(t)
	return t
end

keys.ListEntitiesForPolicyRequest = { ["Marker"] = true, ["EntityFilter"] = true, ["PathPrefix"] = true, ["PolicyArn"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListEntitiesForPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEntitiesForPolicyRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["EntityFilter"] then asserts.AssertEntityType(struct["EntityFilter"]) end
	if struct["PathPrefix"] then asserts.AssertpathType(struct["PathPrefix"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEntitiesForPolicyRequest[k], "ListEntitiesForPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEntitiesForPolicyRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _EntityFilter [EntityType] <p>The entity type to use for filtering the results.</p> <p>For example, when <code>EntityFilter</code> is <code>Role</code>, only the roles that are attached to the specified policy are returned. This parameter is optional. If it is not included, all attached entities (users, groups, and roles) are returned. The argument for this parameter must be one of the valid values listed below.</p>
-- @param _PathPrefix [pathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all entities.</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: PolicyArn
function M.ListEntitiesForPolicyRequest(_Marker, _EntityFilter, _PathPrefix, _PolicyArn, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEntitiesForPolicyRequest")
	local t = { 
		["Marker"] = _Marker,
		["EntityFilter"] = _EntityFilter,
		["PathPrefix"] = _PathPrefix,
		["PolicyArn"] = _PolicyArn,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListEntitiesForPolicyRequest(t)
	return t
end

keys.ListInstanceProfilesForRoleRequest = { ["Marker"] = true, ["RoleName"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListInstanceProfilesForRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesForRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceProfilesForRoleRequest[k], "ListInstanceProfilesForRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesForRoleRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _RoleName [roleNameType] <p>The name of the role to list instance profiles for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: RoleName
function M.ListInstanceProfilesForRoleRequest(_Marker, _RoleName, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceProfilesForRoleRequest")
	local t = { 
		["Marker"] = _Marker,
		["RoleName"] = _RoleName,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListInstanceProfilesForRoleRequest(t)
	return t
end

keys.GetOpenIDConnectProviderResponse = { ["Url"] = true, ["CreateDate"] = true, ["ThumbprintList"] = true, ["ClientIDList"] = true, nil }

function asserts.AssertGetOpenIDConnectProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetOpenIDConnectProviderResponse to be of type 'table'")
	if struct["Url"] then asserts.AssertOpenIDConnectProviderUrlType(struct["Url"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["ThumbprintList"] then asserts.AssertthumbprintListType(struct["ThumbprintList"]) end
	if struct["ClientIDList"] then asserts.AssertclientIDListType(struct["ClientIDList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetOpenIDConnectProviderResponse[k], "GetOpenIDConnectProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetOpenIDConnectProviderResponse
-- <p>Contains the response to a successful <a>GetOpenIDConnectProvider</a> request. </p>
-- @param _Url [OpenIDConnectProviderUrlType] <p>The URL that the IAM OIDC provider resource object is associated with. For more information, see <a>CreateOpenIDConnectProvider</a>.</p>
-- @param _CreateDate [dateType] <p>The date and time when the IAM OIDC provider resource object was created in the AWS account.</p>
-- @param _ThumbprintList [thumbprintListType] <p>A list of certificate thumbprints that are associated with the specified IAM OIDC provider resource object. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>
-- @param _ClientIDList [clientIDListType] <p>A list of client IDs (also known as audiences) that are associated with the specified IAM OIDC provider resource object. For more information, see <a>CreateOpenIDConnectProvider</a>.</p>
function M.GetOpenIDConnectProviderResponse(_Url, _CreateDate, _ThumbprintList, _ClientIDList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetOpenIDConnectProviderResponse")
	local t = { 
		["Url"] = _Url,
		["CreateDate"] = _CreateDate,
		["ThumbprintList"] = _ThumbprintList,
		["ClientIDList"] = _ClientIDList,
	}
	asserts.AssertGetOpenIDConnectProviderResponse(t)
	return t
end

keys.AddClientIDToOpenIDConnectProviderRequest = { ["OpenIDConnectProviderArn"] = true, ["ClientID"] = true, nil }

function asserts.AssertAddClientIDToOpenIDConnectProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddClientIDToOpenIDConnectProviderRequest to be of type 'table'")
	assert(struct["OpenIDConnectProviderArn"], "Expected key OpenIDConnectProviderArn to exist in table")
	assert(struct["ClientID"], "Expected key ClientID to exist in table")
	if struct["OpenIDConnectProviderArn"] then asserts.AssertarnType(struct["OpenIDConnectProviderArn"]) end
	if struct["ClientID"] then asserts.AssertclientIDType(struct["ClientID"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddClientIDToOpenIDConnectProviderRequest[k], "AddClientIDToOpenIDConnectProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddClientIDToOpenIDConnectProviderRequest
--  
-- @param _OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to add the client ID to. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> action.</p>
-- @param _ClientID [clientIDType] <p>The client ID (also known as audience) to add to the IAM OpenID Connect provider resource.</p>
-- Required parameter: OpenIDConnectProviderArn
-- Required parameter: ClientID
function M.AddClientIDToOpenIDConnectProviderRequest(_OpenIDConnectProviderArn, _ClientID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddClientIDToOpenIDConnectProviderRequest")
	local t = { 
		["OpenIDConnectProviderArn"] = _OpenIDConnectProviderArn,
		["ClientID"] = _ClientID,
	}
	asserts.AssertAddClientIDToOpenIDConnectProviderRequest(t)
	return t
end

keys.MalformedCertificateException = { ["message"] = true, nil }

function asserts.AssertMalformedCertificateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedCertificateException to be of type 'table'")
	if struct["message"] then asserts.AssertmalformedCertificateMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedCertificateException[k], "MalformedCertificateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedCertificateException
-- <p>The request was rejected because the certificate was malformed or expired. The error message describes the specific error.</p>
-- @param _message [malformedCertificateMessage] 
function M.MalformedCertificateException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedCertificateException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMalformedCertificateException(t)
	return t
end

keys.GetPolicyVersionResponse = { ["PolicyVersion"] = true, nil }

function asserts.AssertGetPolicyVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyVersionResponse to be of type 'table'")
	if struct["PolicyVersion"] then asserts.AssertPolicyVersion(struct["PolicyVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyVersionResponse[k], "GetPolicyVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyVersionResponse
-- <p>Contains the response to a successful <a>GetPolicyVersion</a> request. </p>
-- @param _PolicyVersion [PolicyVersion] <p>A structure containing details about the policy version.</p>
function M.GetPolicyVersionResponse(_PolicyVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyVersionResponse")
	local t = { 
		["PolicyVersion"] = _PolicyVersion,
	}
	asserts.AssertGetPolicyVersionResponse(t)
	return t
end

keys.GetSAMLProviderResponse = { ["CreateDate"] = true, ["SAMLMetadataDocument"] = true, ["ValidUntil"] = true, nil }

function asserts.AssertGetSAMLProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSAMLProviderResponse to be of type 'table'")
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["SAMLMetadataDocument"] then asserts.AssertSAMLMetadataDocumentType(struct["SAMLMetadataDocument"]) end
	if struct["ValidUntil"] then asserts.AssertdateType(struct["ValidUntil"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSAMLProviderResponse[k], "GetSAMLProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSAMLProviderResponse
-- <p>Contains the response to a successful <a>GetSAMLProvider</a> request. </p>
-- @param _CreateDate [dateType] <p>The date and time when the SAML provider was created.</p>
-- @param _SAMLMetadataDocument [SAMLMetadataDocumentType] <p>The XML metadata document that includes information about an identity provider.</p>
-- @param _ValidUntil [dateType] <p>The expiration date and time for the SAML provider.</p>
function M.GetSAMLProviderResponse(_CreateDate, _SAMLMetadataDocument, _ValidUntil, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSAMLProviderResponse")
	local t = { 
		["CreateDate"] = _CreateDate,
		["SAMLMetadataDocument"] = _SAMLMetadataDocument,
		["ValidUntil"] = _ValidUntil,
	}
	asserts.AssertGetSAMLProviderResponse(t)
	return t
end

keys.ListOpenIDConnectProvidersRequest = { nil }

function asserts.AssertListOpenIDConnectProvidersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOpenIDConnectProvidersRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ListOpenIDConnectProvidersRequest[k], "ListOpenIDConnectProvidersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOpenIDConnectProvidersRequest
--  
function M.ListOpenIDConnectProvidersRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOpenIDConnectProvidersRequest")
	local t = { 
	}
	asserts.AssertListOpenIDConnectProvidersRequest(t)
	return t
end

keys.ListInstanceProfilesResponse = { ["Marker"] = true, ["IsTruncated"] = true, ["InstanceProfiles"] = true, nil }

function asserts.AssertListInstanceProfilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInstanceProfilesResponse to be of type 'table'")
	assert(struct["InstanceProfiles"], "Expected key InstanceProfiles to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["IsTruncated"] then asserts.AssertbooleanType(struct["IsTruncated"]) end
	if struct["InstanceProfiles"] then asserts.AssertinstanceProfileListType(struct["InstanceProfiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInstanceProfilesResponse[k], "ListInstanceProfilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInstanceProfilesResponse
-- <p>Contains the response to a successful <a>ListInstanceProfiles</a> request. </p>
-- @param _Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- @param _IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @param _InstanceProfiles [instanceProfileListType] <p>A list of instance profiles.</p>
-- Required parameter: InstanceProfiles
function M.ListInstanceProfilesResponse(_Marker, _IsTruncated, _InstanceProfiles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInstanceProfilesResponse")
	local t = { 
		["Marker"] = _Marker,
		["IsTruncated"] = _IsTruncated,
		["InstanceProfiles"] = _InstanceProfiles,
	}
	asserts.AssertListInstanceProfilesResponse(t)
	return t
end

keys.CreateLoginProfileRequest = { ["UserName"] = true, ["PasswordResetRequired"] = true, ["Password"] = true, nil }

function asserts.AssertCreateLoginProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoginProfileRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["PasswordResetRequired"] then asserts.AssertbooleanType(struct["PasswordResetRequired"]) end
	if struct["Password"] then asserts.AssertpasswordType(struct["Password"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoginProfileRequest[k], "CreateLoginProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoginProfileRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user to create a password for. The user must already exist.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _PasswordResetRequired [booleanType] <p>Specifies whether the user is required to set a new password on next sign-in.</p>
-- @param _Password [passwordType] <p>The new password for the user.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of almost any printable ASCII character from the space (\u0020) through the end of the ASCII character range (\u00FF). You can also include the tab (\u0009), line feed (\u000A), and carriage return (\u000D) characters. Although any of these characters are valid in a password, note that many tools, such as the AWS Management Console, might restrict the ability to enter certain characters because they have special meaning within that tool.</p>
-- Required parameter: UserName
-- Required parameter: Password
function M.CreateLoginProfileRequest(_UserName, _PasswordResetRequired, _Password, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoginProfileRequest")
	local t = { 
		["UserName"] = _UserName,
		["PasswordResetRequired"] = _PasswordResetRequired,
		["Password"] = _Password,
	}
	asserts.AssertCreateLoginProfileRequest(t)
	return t
end

keys.ListSAMLProvidersResponse = { ["SAMLProviderList"] = true, nil }

function asserts.AssertListSAMLProvidersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSAMLProvidersResponse to be of type 'table'")
	if struct["SAMLProviderList"] then asserts.AssertSAMLProviderListType(struct["SAMLProviderList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSAMLProvidersResponse[k], "ListSAMLProvidersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSAMLProvidersResponse
-- <p>Contains the response to a successful <a>ListSAMLProviders</a> request. </p>
-- @param _SAMLProviderList [SAMLProviderListType] <p>The list of SAML provider resource objects defined in IAM for this AWS account.</p>
function M.ListSAMLProvidersResponse(_SAMLProviderList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSAMLProvidersResponse")
	local t = { 
		["SAMLProviderList"] = _SAMLProviderList,
	}
	asserts.AssertListSAMLProvidersResponse(t)
	return t
end

keys.UpdateServiceSpecificCredentialRequest = { ["UserName"] = true, ["Status"] = true, ["ServiceSpecificCredentialId"] = true, nil }

function asserts.AssertUpdateServiceSpecificCredentialRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateServiceSpecificCredentialRequest to be of type 'table'")
	assert(struct["ServiceSpecificCredentialId"], "Expected key ServiceSpecificCredentialId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["ServiceSpecificCredentialId"] then asserts.AssertserviceSpecificCredentialId(struct["ServiceSpecificCredentialId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateServiceSpecificCredentialRequest[k], "UpdateServiceSpecificCredentialRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateServiceSpecificCredentialRequest
--  
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential. If you do not specify this value, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Status [statusType] <p>The status to be assigned to the service-specific credential.</p>
-- @param _ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier of the service-specific credential.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required parameter: ServiceSpecificCredentialId
-- Required parameter: Status
function M.UpdateServiceSpecificCredentialRequest(_UserName, _Status, _ServiceSpecificCredentialId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateServiceSpecificCredentialRequest")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["ServiceSpecificCredentialId"] = _ServiceSpecificCredentialId,
	}
	asserts.AssertUpdateServiceSpecificCredentialRequest(t)
	return t
end

keys.ListAttachedRolePoliciesRequest = { ["Marker"] = true, ["RoleName"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListAttachedRolePoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedRolePoliciesRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PathPrefix"] then asserts.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttachedRolePoliciesRequest[k], "ListAttachedRolePoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedRolePoliciesRequest
--  
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _RoleName [roleNameType] <p>The name (friendly name, not ARN) of the role to list attached policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @param _PathPrefix [policyPathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: RoleName
function M.ListAttachedRolePoliciesRequest(_Marker, _RoleName, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedRolePoliciesRequest")
	local t = { 
		["Marker"] = _Marker,
		["RoleName"] = _RoleName,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListAttachedRolePoliciesRequest(t)
	return t
end

keys.CreateVirtualMFADeviceResponse = { ["VirtualMFADevice"] = true, nil }

function asserts.AssertCreateVirtualMFADeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVirtualMFADeviceResponse to be of type 'table'")
	assert(struct["VirtualMFADevice"], "Expected key VirtualMFADevice to exist in table")
	if struct["VirtualMFADevice"] then asserts.AssertVirtualMFADevice(struct["VirtualMFADevice"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVirtualMFADeviceResponse[k], "CreateVirtualMFADeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVirtualMFADeviceResponse
-- <p>Contains the response to a successful <a>CreateVirtualMFADevice</a> request. </p>
-- @param _VirtualMFADevice [VirtualMFADevice] <p>A structure containing details about the new virtual MFA device.</p>
-- Required parameter: VirtualMFADevice
function M.CreateVirtualMFADeviceResponse(_VirtualMFADevice, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateVirtualMFADeviceResponse")
	local t = { 
		["VirtualMFADevice"] = _VirtualMFADevice,
	}
	asserts.AssertCreateVirtualMFADeviceResponse(t)
	return t
end

keys.GetPolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertGetPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPolicyResponse[k], "GetPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPolicyResponse
-- <p>Contains the response to a successful <a>GetPolicy</a> request. </p>
-- @param _Policy [Policy] <p>A structure containing details about the policy.</p>
function M.GetPolicyResponse(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPolicyResponse")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertGetPolicyResponse(t)
	return t
end

keys.AccessKey = { ["UserName"] = true, ["Status"] = true, ["CreateDate"] = true, ["SecretAccessKey"] = true, ["AccessKeyId"] = true, nil }

function asserts.AssertAccessKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessKey to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["AccessKeyId"], "Expected key AccessKeyId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["SecretAccessKey"], "Expected key SecretAccessKey to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["SecretAccessKey"] then asserts.AssertaccessKeySecretType(struct["SecretAccessKey"]) end
	if struct["AccessKeyId"] then asserts.AssertaccessKeyIdType(struct["AccessKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessKey[k], "AccessKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessKey
-- <p>Contains information about an AWS access key.</p> <p> This data type is used as a response element in the <a>CreateAccessKey</a> and <a>ListAccessKeys</a> actions. </p> <note> <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.</p> </note>
-- @param _UserName [userNameType] <p>The name of the IAM user that the access key is associated with.</p>
-- @param _Status [statusType] <p>The status of the access key. <code>Active</code> means the key is valid for API calls, while <code>Inactive</code> means it is not. </p>
-- @param _CreateDate [dateType] <p>The date when the access key was created.</p>
-- @param _SecretAccessKey [accessKeySecretType] <p>The secret key used to sign requests.</p>
-- @param _AccessKeyId [accessKeyIdType] <p>The ID for this access key.</p>
-- Required parameter: UserName
-- Required parameter: AccessKeyId
-- Required parameter: Status
-- Required parameter: SecretAccessKey
function M.AccessKey(_UserName, _Status, _CreateDate, _SecretAccessKey, _AccessKeyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessKey")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["CreateDate"] = _CreateDate,
		["SecretAccessKey"] = _SecretAccessKey,
		["AccessKeyId"] = _AccessKeyId,
	}
	asserts.AssertAccessKey(t)
	return t
end

keys.SSHPublicKeyMetadata = { ["UserName"] = true, ["Status"] = true, ["SSHPublicKeyId"] = true, ["UploadDate"] = true, nil }

function asserts.AssertSSHPublicKeyMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SSHPublicKeyMetadata to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["SSHPublicKeyId"], "Expected key SSHPublicKeyId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	assert(struct["UploadDate"], "Expected key UploadDate to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Status"] then asserts.AssertstatusType(struct["Status"]) end
	if struct["SSHPublicKeyId"] then asserts.AssertpublicKeyIdType(struct["SSHPublicKeyId"]) end
	if struct["UploadDate"] then asserts.AssertdateType(struct["UploadDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.SSHPublicKeyMetadata[k], "SSHPublicKeyMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SSHPublicKeyMetadata
-- <p>Contains information about an SSH public key, without the key's body or fingerprint.</p> <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a> action.</p>
-- @param _UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p>
-- @param _Status [statusType] <p>The status of the SSH public key. <code>Active</code> means the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means the key cannot be used.</p>
-- @param _SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p>
-- @param _UploadDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the SSH public key was uploaded.</p>
-- Required parameter: UserName
-- Required parameter: SSHPublicKeyId
-- Required parameter: Status
-- Required parameter: UploadDate
function M.SSHPublicKeyMetadata(_UserName, _Status, _SSHPublicKeyId, _UploadDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SSHPublicKeyMetadata")
	local t = { 
		["UserName"] = _UserName,
		["Status"] = _Status,
		["SSHPublicKeyId"] = _SSHPublicKeyId,
		["UploadDate"] = _UploadDate,
	}
	asserts.AssertSSHPublicKeyMetadata(t)
	return t
end

keys.DuplicateSSHPublicKeyException = { ["message"] = true, nil }

function asserts.AssertDuplicateSSHPublicKeyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateSSHPublicKeyException to be of type 'table'")
	if struct["message"] then asserts.AssertduplicateSSHPublicKeyMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateSSHPublicKeyException[k], "DuplicateSSHPublicKeyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateSSHPublicKeyException
-- <p>The request was rejected because the SSH public key is already associated with the specified IAM user.</p>
-- @param _message [duplicateSSHPublicKeyMessage] 
function M.DuplicateSSHPublicKeyException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateSSHPublicKeyException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDuplicateSSHPublicKeyException(t)
	return t
end

keys.ListAttachedUserPoliciesRequest = { ["UserName"] = true, ["Marker"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, nil }

function asserts.AssertListAttachedUserPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAttachedUserPoliciesRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["PathPrefix"] then asserts.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAttachedUserPoliciesRequest[k], "ListAttachedUserPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAttachedUserPoliciesRequest
--  
-- @param _UserName [userNameType] <p>The name (friendly name, not ARN) of the user to list attached policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-</p>
-- @param _Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- @param _PathPrefix [policyPathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This paramater allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes, containing any ASCII character from the ! (\u0021) thru the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- @param _MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required parameter: UserName
function M.ListAttachedUserPoliciesRequest(_UserName, _Marker, _PathPrefix, _MaxItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAttachedUserPoliciesRequest")
	local t = { 
		["UserName"] = _UserName,
		["Marker"] = _Marker,
		["PathPrefix"] = _PathPrefix,
		["MaxItems"] = _MaxItems,
	}
	asserts.AssertListAttachedUserPoliciesRequest(t)
	return t
end

keys.CreateGroupResponse = { ["Group"] = true, nil }

function asserts.AssertCreateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupResponse to be of type 'table'")
	assert(struct["Group"], "Expected key Group to exist in table")
	if struct["Group"] then asserts.AssertGroup(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupResponse[k], "CreateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupResponse
-- <p>Contains the response to a successful <a>CreateGroup</a> request. </p>
-- @param _Group [Group] <p>A structure containing details about the new group.</p>
-- Required parameter: Group
function M.CreateGroupResponse(_Group, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupResponse")
	local t = { 
		["Group"] = _Group,
	}
	asserts.AssertCreateGroupResponse(t)
	return t
end

keys.ServerCertificate = { ["CertificateChain"] = true, ["CertificateBody"] = true, ["ServerCertificateMetadata"] = true, nil }

function asserts.AssertServerCertificate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServerCertificate to be of type 'table'")
	assert(struct["ServerCertificateMetadata"], "Expected key ServerCertificateMetadata to exist in table")
	assert(struct["CertificateBody"], "Expected key CertificateBody to exist in table")
	if struct["CertificateChain"] then asserts.AssertcertificateChainType(struct["CertificateChain"]) end
	if struct["CertificateBody"] then asserts.AssertcertificateBodyType(struct["CertificateBody"]) end
	if struct["ServerCertificateMetadata"] then asserts.AssertServerCertificateMetadata(struct["ServerCertificateMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServerCertificate[k], "ServerCertificate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServerCertificate
-- <p>Contains information about a server certificate.</p> <p> This data type is used as a response element in the <a>GetServerCertificate</a> action. </p>
-- @param _CertificateChain [certificateChainType] <p>The contents of the public key certificate chain.</p>
-- @param _CertificateBody [certificateBodyType] <p>The contents of the public key certificate.</p>
-- @param _ServerCertificateMetadata [ServerCertificateMetadata] <p>The meta information of the server certificate, such as its name, path, ID, and ARN.</p>
-- Required parameter: ServerCertificateMetadata
-- Required parameter: CertificateBody
function M.ServerCertificate(_CertificateChain, _CertificateBody, _ServerCertificateMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServerCertificate")
	local t = { 
		["CertificateChain"] = _CertificateChain,
		["CertificateBody"] = _CertificateBody,
		["ServerCertificateMetadata"] = _ServerCertificateMetadata,
	}
	asserts.AssertServerCertificate(t)
	return t
end

function asserts.AssertstringType(str)
	assert(str)
	assert(type(str) == "string", "Expected stringType to be of type 'string'")
end

--  
function M.stringType(str)
	asserts.AssertstringType(str)
	return str
end

function asserts.AssertinvalidUserTypeMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidUserTypeMessage to be of type 'string'")
end

--  
function M.invalidUserTypeMessage(str)
	asserts.AssertinvalidUserTypeMessage(str)
	return str
end

function asserts.AssertpublicKeyIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected publicKeyIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.publicKeyIdType(str)
	asserts.AssertpublicKeyIdType(str)
	return str
end

function asserts.AssertcredentialReportNotReadyExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected credentialReportNotReadyExceptionMessage to be of type 'string'")
end

--  
function M.credentialReportNotReadyExceptionMessage(str)
	asserts.AssertcredentialReportNotReadyExceptionMessage(str)
	return str
end

function asserts.AssertpolicyDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyDescriptionType to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.policyDescriptionType(str)
	asserts.AssertpolicyDescriptionType(str)
	return str
end

function asserts.AssertcertificateBodyType(str)
	assert(str)
	assert(type(str) == "string", "Expected certificateBodyType to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.certificateBodyType(str)
	asserts.AssertcertificateBodyType(str)
	return str
end

function asserts.AssertaccountAliasType(str)
	assert(str)
	assert(type(str) == "string", "Expected accountAliasType to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.accountAliasType(str)
	asserts.AssertaccountAliasType(str)
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

function asserts.AssertcredentialReportNotPresentExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected credentialReportNotPresentExceptionMessage to be of type 'string'")
end

--  
function M.credentialReportNotPresentExceptionMessage(str)
	asserts.AssertcredentialReportNotPresentExceptionMessage(str)
	return str
end

function asserts.AssertsummaryKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected summaryKeyType to be of type 'string'")
end

--  
function M.summaryKeyType(str)
	asserts.AssertsummaryKeyType(str)
	return str
end

function asserts.AssertinvalidAuthenticationCodeMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidAuthenticationCodeMessage to be of type 'string'")
end

--  
function M.invalidAuthenticationCodeMessage(str)
	asserts.AssertinvalidAuthenticationCodeMessage(str)
	return str
end

function asserts.AssertassignmentStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected assignmentStatusType to be of type 'string'")
end

--  
function M.assignmentStatusType(str)
	asserts.AssertassignmentStatusType(str)
	return str
end

function asserts.AssertcustomSuffixType(str)
	assert(str)
	assert(type(str) == "string", "Expected customSuffixType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.customSuffixType(str)
	asserts.AssertcustomSuffixType(str)
	return str
end

function asserts.AssertReportStateDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportStateDescriptionType to be of type 'string'")
end

--  
function M.ReportStateDescriptionType(str)
	asserts.AssertReportStateDescriptionType(str)
	return str
end

function asserts.AssertContextKeyNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContextKeyNameType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 5, "Expected string to be min 5 characters")
end

--  
function M.ContextKeyNameType(str)
	asserts.AssertContextKeyNameType(str)
	return str
end

function asserts.AssertentityTemporarilyUnmodifiableMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected entityTemporarilyUnmodifiableMessage to be of type 'string'")
end

--  
function M.entityTemporarilyUnmodifiableMessage(str)
	asserts.AssertentityTemporarilyUnmodifiableMessage(str)
	return str
end

function asserts.AssertPolicyIdentifierType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyIdentifierType to be of type 'string'")
end

--  
function M.PolicyIdentifierType(str)
	asserts.AssertPolicyIdentifierType(str)
	return str
end

function asserts.AssertpublicKeyFingerprintType(str)
	assert(str)
	assert(type(str) == "string", "Expected publicKeyFingerprintType to be of type 'string'")
	assert(#str <= 48, "Expected string to be max 48 characters")
	assert(#str >= 48, "Expected string to be min 48 characters")
end

--  
function M.publicKeyFingerprintType(str)
	asserts.AssertpublicKeyFingerprintType(str)
	return str
end

function asserts.AssertvirtualMFADeviceName(str)
	assert(str)
	assert(type(str) == "string", "Expected virtualMFADeviceName to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.virtualMFADeviceName(str)
	asserts.AssertvirtualMFADeviceName(str)
	return str
end

function asserts.AssertserviceSpecificCredentialId(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceSpecificCredentialId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.serviceSpecificCredentialId(str)
	asserts.AssertserviceSpecificCredentialId(str)
	return str
end

function asserts.AssertduplicateCertificateMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected duplicateCertificateMessage to be of type 'string'")
end

--  
function M.duplicateCertificateMessage(str)
	asserts.AssertduplicateCertificateMessage(str)
	return str
end

function asserts.AssertauthenticationCodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected authenticationCodeType to be of type 'string'")
	assert(#str <= 6, "Expected string to be max 6 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.authenticationCodeType(str)
	asserts.AssertauthenticationCodeType(str)
	return str
end

function asserts.AssertroleNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected roleNameType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.roleNameType(str)
	asserts.AssertroleNameType(str)
	return str
end

function asserts.AssertinvalidPublicKeyMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidPublicKeyMessage to be of type 'string'")
end

--  
function M.invalidPublicKeyMessage(str)
	asserts.AssertinvalidPublicKeyMessage(str)
	return str
end

function asserts.AssertEvalDecisionSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected EvalDecisionSourceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.EvalDecisionSourceType(str)
	asserts.AssertEvalDecisionSourceType(str)
	return str
end

function asserts.AssertcredentialReportExpiredExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected credentialReportExpiredExceptionMessage to be of type 'string'")
end

--  
function M.credentialReportExpiredExceptionMessage(str)
	asserts.AssertcredentialReportExpiredExceptionMessage(str)
	return str
end

function asserts.AssertmarkerType(str)
	assert(str)
	assert(type(str) == "string", "Expected markerType to be of type 'string'")
	assert(#str <= 320, "Expected string to be max 320 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.markerType(str)
	asserts.AssertmarkerType(str)
	return str
end

function asserts.AssertserviceNotSupportedMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceNotSupportedMessage to be of type 'string'")
end

--  
function M.serviceNotSupportedMessage(str)
	asserts.AssertserviceNotSupportedMessage(str)
	return str
end

function asserts.AssertserviceName(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceName to be of type 'string'")
end

--  
function M.serviceName(str)
	asserts.AssertserviceName(str)
	return str
end

function asserts.AssertthumbprintType(str)
	assert(str)
	assert(type(str) == "string", "Expected thumbprintType to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 40, "Expected string to be min 40 characters")
end

-- <p>Contains a thumbprint for an identity provider's server certificate.</p> <p>The identity provider's server certificate thumbprint is the hex-encoded SHA-1 hash value of the self-signed X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.</p>
function M.thumbprintType(str)
	asserts.AssertthumbprintType(str)
	return str
end

function asserts.AssertpolicyNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.policyNameType(str)
	asserts.AssertpolicyNameType(str)
	return str
end

function asserts.AssertpublicKeyMaterialType(str)
	assert(str)
	assert(type(str) == "string", "Expected publicKeyMaterialType to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.publicKeyMaterialType(str)
	asserts.AssertpublicKeyMaterialType(str)
	return str
end

function asserts.AssertpasswordType(str)
	assert(str)
	assert(type(str) == "string", "Expected passwordType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.passwordType(str)
	asserts.AssertpasswordType(str)
	return str
end

function asserts.AssertunrecognizedPublicKeyEncodingMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected unrecognizedPublicKeyEncodingMessage to be of type 'string'")
end

--  
function M.unrecognizedPublicKeyEncodingMessage(str)
	asserts.AssertunrecognizedPublicKeyEncodingMessage(str)
	return str
end

function asserts.AssertentityAlreadyExistsMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected entityAlreadyExistsMessage to be of type 'string'")
end

--  
function M.entityAlreadyExistsMessage(str)
	asserts.AssertentityAlreadyExistsMessage(str)
	return str
end

function asserts.AssertkeyPairMismatchMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected keyPairMismatchMessage to be of type 'string'")
end

--  
function M.keyPairMismatchMessage(str)
	asserts.AssertkeyPairMismatchMessage(str)
	return str
end

function asserts.AssertContextKeyValueType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContextKeyValueType to be of type 'string'")
end

--  
function M.ContextKeyValueType(str)
	asserts.AssertContextKeyValueType(str)
	return str
end

function asserts.AssertSAMLMetadataDocumentType(str)
	assert(str)
	assert(type(str) == "string", "Expected SAMLMetadataDocumentType to be of type 'string'")
	assert(#str <= 10000000, "Expected string to be max 10000000 characters")
	assert(#str >= 1000, "Expected string to be min 1000 characters")
end

--  
function M.SAMLMetadataDocumentType(str)
	asserts.AssertSAMLMetadataDocumentType(str)
	return str
end

function asserts.AssertnoSuchEntityMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected noSuchEntityMessage to be of type 'string'")
end

--  
function M.noSuchEntityMessage(str)
	asserts.AssertnoSuchEntityMessage(str)
	return str
end

function asserts.AssertserverCertificateNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected serverCertificateNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.serverCertificateNameType(str)
	asserts.AssertserverCertificateNameType(str)
	return str
end

function asserts.AssertprivateKeyType(str)
	assert(str)
	assert(type(str) == "string", "Expected privateKeyType to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.privateKeyType(str)
	asserts.AssertprivateKeyType(str)
	return str
end

function asserts.AssertResourceHandlingOptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceHandlingOptionType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceHandlingOptionType(str)
	asserts.AssertResourceHandlingOptionType(str)
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

function asserts.AssertuserNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected userNameType to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.userNameType(str)
	asserts.AssertuserNameType(str)
	return str
end

function asserts.AssertroleDescriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected roleDescriptionType to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.roleDescriptionType(str)
	asserts.AssertroleDescriptionType(str)
	return str
end

function asserts.AssertdeleteConflictMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected deleteConflictMessage to be of type 'string'")
end

--  
function M.deleteConflictMessage(str)
	asserts.AssertdeleteConflictMessage(str)
	return str
end

function asserts.AssertpolicyVersionIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyVersionIdType to be of type 'string'")
end

--  
function M.policyVersionIdType(str)
	asserts.AssertpolicyVersionIdType(str)
	return str
end

function asserts.AssertinstanceProfileNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected instanceProfileNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.instanceProfileNameType(str)
	asserts.AssertinstanceProfileNameType(str)
	return str
end

function asserts.AssertgroupNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected groupNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.groupNameType(str)
	asserts.AssertgroupNameType(str)
	return str
end

function asserts.AssertserviceUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceUserName to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 17, "Expected string to be min 17 characters")
end

--  
function M.serviceUserName(str)
	asserts.AssertserviceUserName(str)
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

function asserts.AssertinvalidInputMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidInputMessage to be of type 'string'")
end

--  
function M.invalidInputMessage(str)
	asserts.AssertinvalidInputMessage(str)
	return str
end

function asserts.AssertResourceNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceNameType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceNameType(str)
	asserts.AssertResourceNameType(str)
	return str
end

function asserts.AssertcertificateIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected certificateIdType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 24, "Expected string to be min 24 characters")
end

--  
function M.certificateIdType(str)
	asserts.AssertcertificateIdType(str)
	return str
end

function asserts.AssertpolicyDocumentType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyDocumentType to be of type 'string'")
	assert(#str <= 131072, "Expected string to be max 131072 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.policyDocumentType(str)
	asserts.AssertpolicyDocumentType(str)
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

function asserts.AssertPolicyEvaluationDecisionType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyEvaluationDecisionType to be of type 'string'")
end

--  
function M.PolicyEvaluationDecisionType(str)
	asserts.AssertPolicyEvaluationDecisionType(str)
	return str
end

function asserts.AssertPolicySourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicySourceType to be of type 'string'")
end

--  
function M.PolicySourceType(str)
	asserts.AssertPolicySourceType(str)
	return str
end

function asserts.AssertOpenIDConnectProviderUrlType(str)
	assert(str)
	assert(type(str) == "string", "Expected OpenIDConnectProviderUrlType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>Contains a URL that specifies the endpoint for an OpenID Connect provider.</p>
function M.OpenIDConnectProviderUrlType(str)
	asserts.AssertOpenIDConnectProviderUrlType(str)
	return str
end

function asserts.AssertEntityType(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityType to be of type 'string'")
end

--  
function M.EntityType(str)
	asserts.AssertEntityType(str)
	return str
end

function asserts.AssertlimitExceededMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected limitExceededMessage to be of type 'string'")
end

--  
function M.limitExceededMessage(str)
	asserts.AssertlimitExceededMessage(str)
	return str
end

function asserts.AssertReportFormatType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportFormatType to be of type 'string'")
end

--  
function M.ReportFormatType(str)
	asserts.AssertReportFormatType(str)
	return str
end

function asserts.AssertduplicateSSHPublicKeyMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected duplicateSSHPublicKeyMessage to be of type 'string'")
end

--  
function M.duplicateSSHPublicKeyMessage(str)
	asserts.AssertduplicateSSHPublicKeyMessage(str)
	return str
end

function asserts.AssertexistingUserNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected existingUserNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.existingUserNameType(str)
	asserts.AssertexistingUserNameType(str)
	return str
end

function asserts.AssertmalformedCertificateMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected malformedCertificateMessage to be of type 'string'")
end

--  
function M.malformedCertificateMessage(str)
	asserts.AssertmalformedCertificateMessage(str)
	return str
end

function asserts.AssertReportStateType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportStateType to be of type 'string'")
end

--  
function M.ReportStateType(str)
	asserts.AssertReportStateType(str)
	return str
end

function asserts.AssertActionNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.ActionNameType(str)
	asserts.AssertActionNameType(str)
	return str
end

function asserts.AssertpolicyScopeType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyScopeType to be of type 'string'")
end

--  
function M.policyScopeType(str)
	asserts.AssertpolicyScopeType(str)
	return str
end

function asserts.AssertpathPrefixType(str)
	assert(str)
	assert(type(str) == "string", "Expected pathPrefixType to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.pathPrefixType(str)
	asserts.AssertpathPrefixType(str)
	return str
end

function asserts.AssertservicePassword(str)
	assert(str)
	assert(type(str) == "string", "Expected servicePassword to be of type 'string'")
end

--  
function M.servicePassword(str)
	asserts.AssertservicePassword(str)
	return str
end

function asserts.AssertinvalidCertificateMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected invalidCertificateMessage to be of type 'string'")
end

--  
function M.invalidCertificateMessage(str)
	asserts.AssertinvalidCertificateMessage(str)
	return str
end

function asserts.AssertpolicyPathType(str)
	assert(str)
	assert(type(str) == "string", "Expected policyPathType to be of type 'string'")
end

--  
function M.policyPathType(str)
	asserts.AssertpolicyPathType(str)
	return str
end

function asserts.AssertclientIDType(str)
	assert(str)
	assert(type(str) == "string", "Expected clientIDType to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.clientIDType(str)
	asserts.AssertclientIDType(str)
	return str
end

function asserts.AssertstatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected statusType to be of type 'string'")
end

--  
function M.statusType(str)
	asserts.AssertstatusType(str)
	return str
end

function asserts.AssertContextKeyTypeEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ContextKeyTypeEnum to be of type 'string'")
end

--  
function M.ContextKeyTypeEnum(str)
	asserts.AssertContextKeyTypeEnum(str)
	return str
end

function asserts.AssertunmodifiableEntityMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected unmodifiableEntityMessage to be of type 'string'")
end

--  
function M.unmodifiableEntityMessage(str)
	asserts.AssertunmodifiableEntityMessage(str)
	return str
end

function asserts.AssertserviceFailureExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected serviceFailureExceptionMessage to be of type 'string'")
end

--  
function M.serviceFailureExceptionMessage(str)
	asserts.AssertserviceFailureExceptionMessage(str)
	return str
end

function asserts.AssertSAMLProviderNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected SAMLProviderNameType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SAMLProviderNameType(str)
	asserts.AssertSAMLProviderNameType(str)
	return str
end

function asserts.AssertpolicyEvaluationErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected policyEvaluationErrorMessage to be of type 'string'")
end

--  
function M.policyEvaluationErrorMessage(str)
	asserts.AssertpolicyEvaluationErrorMessage(str)
	return str
end

function asserts.AssertarnType(str)
	assert(str)
	assert(type(str) == "string", "Expected arnType to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

-- <p>The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS resources.</p> <p>For more information about ARNs, go to <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>. </p>
function M.arnType(str)
	asserts.AssertarnType(str)
	return str
end

function asserts.AssertcertificateChainType(str)
	assert(str)
	assert(type(str) == "string", "Expected certificateChainType to be of type 'string'")
	assert(#str <= 2097152, "Expected string to be max 2097152 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.certificateChainType(str)
	asserts.AssertcertificateChainType(str)
	return str
end

function asserts.AssertencodingType(str)
	assert(str)
	assert(type(str) == "string", "Expected encodingType to be of type 'string'")
end

--  
function M.encodingType(str)
	asserts.AssertencodingType(str)
	return str
end

function asserts.AssertpathType(str)
	assert(str)
	assert(type(str) == "string", "Expected pathType to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.pathType(str)
	asserts.AssertpathType(str)
	return str
end

function asserts.AssertidType(str)
	assert(str)
	assert(type(str) == "string", "Expected idType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
end

--  
function M.idType(str)
	asserts.AssertidType(str)
	return str
end

function asserts.AssertpasswordPolicyViolationMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected passwordPolicyViolationMessage to be of type 'string'")
end

--  
function M.passwordPolicyViolationMessage(str)
	asserts.AssertpasswordPolicyViolationMessage(str)
	return str
end

function asserts.AssertmaxPasswordAgeType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected maxPasswordAgeType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1095, "Expected integer to be max 1095")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.maxPasswordAgeType(integer)
	asserts.AssertmaxPasswordAgeType(integer)
	return integer
end

function asserts.AssertColumnNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ColumnNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ColumnNumber(integer)
	asserts.AssertColumnNumber(integer)
	return integer
end

function asserts.AssertminimumPasswordLengthType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected minimumPasswordLengthType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 128, "Expected integer to be max 128")
	assert(integer >= 6, "Expected integer to be min 6")
end

function M.minimumPasswordLengthType(integer)
	asserts.AssertminimumPasswordLengthType(integer)
	return integer
end

function asserts.AssertpasswordReusePreventionType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected passwordReusePreventionType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 24, "Expected integer to be max 24")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.passwordReusePreventionType(integer)
	asserts.AssertpasswordReusePreventionType(integer)
	return integer
end

function asserts.AssertattachmentCountType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected attachmentCountType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.attachmentCountType(integer)
	asserts.AssertattachmentCountType(integer)
	return integer
end

function asserts.AssertmaxItemsType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected maxItemsType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.maxItemsType(integer)
	asserts.AssertmaxItemsType(integer)
	return integer
end

function asserts.AssertLineNumber(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LineNumber to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.LineNumber(integer)
	asserts.AssertLineNumber(integer)
	return integer
end

function asserts.AssertsummaryValueType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected summaryValueType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.summaryValueType(integer)
	asserts.AssertsummaryValueType(integer)
	return integer
end

function asserts.AssertbooleanObjectType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected booleanObjectType to be of type 'boolean'")
end

function M.booleanObjectType(boolean)
	asserts.AssertbooleanObjectType(boolean)
	return boolean
end

function asserts.AssertbooleanType(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected booleanType to be of type 'boolean'")
end

function M.booleanType(boolean)
	asserts.AssertbooleanType(boolean)
	return boolean
end

function asserts.AssertEvalDecisionDetailsType(map)
	assert(map)
	assert(type(map) == "table", "Expected EvalDecisionDetailsType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertEvalDecisionSourceType(k)
		asserts.AssertPolicyEvaluationDecisionType(v)
	end
end

function M.EvalDecisionDetailsType(map)
	asserts.AssertEvalDecisionDetailsType(map)
	return map
end

function asserts.AssertsummaryMapType(map)
	assert(map)
	assert(type(map) == "table", "Expected summaryMapType to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertsummaryKeyType(k)
		asserts.AssertsummaryValueType(v)
	end
end

function M.summaryMapType(map)
	asserts.AssertsummaryMapType(map)
	return map
end

function asserts.AssertdateType(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected dateType to be of type 'string'")
end

function M.dateType(timestamp)
	asserts.AssertdateType(timestamp)
	return timestamp
end

function asserts.AssertReportContentType(blob)
	assert(blob)
	assert(type(string) == "string", "Expected ReportContentType to be of type 'string'")
end

function M.ReportContentType(blob)
	asserts.AssertReportContentType(blob)
	return blob
end

function asserts.AssertBootstrapDatum(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BootstrapDatum to be of type 'string'")
end

function M.BootstrapDatum(blob)
	asserts.AssertBootstrapDatum(blob)
	return blob
end

function asserts.AssertgroupNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected groupNameListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertgroupNameType(v)
	end
end

--  
-- List of groupNameType objects
function M.groupNameListType(list)
	asserts.AssertgroupNameListType(list)
	return list
end

function asserts.AssertuserDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected userDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserDetail(v)
	end
end

--  
-- List of UserDetail objects
function M.userDetailListType(list)
	asserts.AssertuserDetailListType(list)
	return list
end

function asserts.AssertContextKeyValueListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ContextKeyValueListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContextKeyValueType(v)
	end
end

--  
-- List of ContextKeyValueType objects
function M.ContextKeyValueListType(list)
	asserts.AssertContextKeyValueListType(list)
	return list
end

function asserts.AssertEvaluationResultsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected EvaluationResultsListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvaluationResult(v)
	end
end

--  
-- List of EvaluationResult objects
function M.EvaluationResultsListType(list)
	asserts.AssertEvaluationResultsListType(list)
	return list
end

function asserts.AssertStatementListType(list)
	assert(list)
	assert(type(list) == "table", "Expected StatementListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStatement(v)
	end
end

--  
-- List of Statement objects
function M.StatementListType(list)
	asserts.AssertStatementListType(list)
	return list
end

function asserts.AssertaccountAliasListType(list)
	assert(list)
	assert(type(list) == "table", "Expected accountAliasListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertaccountAliasType(v)
	end
end

--  
-- List of accountAliasType objects
function M.accountAliasListType(list)
	asserts.AssertaccountAliasListType(list)
	return list
end

function asserts.AssertpolicyDocumentVersionListType(list)
	assert(list)
	assert(type(list) == "table", "Expected policyDocumentVersionListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyVersion(v)
	end
end

--  
-- List of PolicyVersion objects
function M.policyDocumentVersionListType(list)
	asserts.AssertpolicyDocumentVersionListType(list)
	return list
end

function asserts.AssertserverCertificateMetadataListType(list)
	assert(list)
	assert(type(list) == "table", "Expected serverCertificateMetadataListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServerCertificateMetadata(v)
	end
end

--  
-- List of ServerCertificateMetadata objects
function M.serverCertificateMetadataListType(list)
	asserts.AssertserverCertificateMetadataListType(list)
	return list
end

function asserts.AssertcertificateListType(list)
	assert(list)
	assert(type(list) == "table", "Expected certificateListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSigningCertificate(v)
	end
end

-- <p>Contains a list of signing certificates.</p> <p>This data type is used as a response element in the <a>ListSigningCertificates</a> action.</p>
-- List of SigningCertificate objects
function M.certificateListType(list)
	asserts.AssertcertificateListType(list)
	return list
end

function asserts.AssertroleDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected roleDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRoleDetail(v)
	end
end

--  
-- List of RoleDetail objects
function M.roleDetailListType(list)
	asserts.AssertroleDetailListType(list)
	return list
end

function asserts.AssertclientIDListType(list)
	assert(list)
	assert(type(list) == "table", "Expected clientIDListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertclientIDType(v)
	end
end

--  
-- List of clientIDType objects
function M.clientIDListType(list)
	asserts.AssertclientIDListType(list)
	return list
end

function asserts.AssertpolicyDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected policyDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyDetail(v)
	end
end

--  
-- List of PolicyDetail objects
function M.policyDetailListType(list)
	asserts.AssertpolicyDetailListType(list)
	return list
end

function asserts.AssertResourceNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceNameListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceNameType(v)
	end
end

--  
-- List of ResourceNameType objects
function M.ResourceNameListType(list)
	asserts.AssertResourceNameListType(list)
	return list
end

function asserts.AssertvirtualMFADeviceListType(list)
	assert(list)
	assert(type(list) == "table", "Expected virtualMFADeviceListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVirtualMFADevice(v)
	end
end

--  
-- List of VirtualMFADevice objects
function M.virtualMFADeviceListType(list)
	asserts.AssertvirtualMFADeviceListType(list)
	return list
end

function asserts.AssertinstanceProfileListType(list)
	assert(list)
	assert(type(list) == "table", "Expected instanceProfileListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceProfile(v)
	end
end

-- <p>Contains a list of instance profiles.</p>
-- List of InstanceProfile objects
function M.instanceProfileListType(list)
	asserts.AssertinstanceProfileListType(list)
	return list
end

function asserts.AssertPolicyGroupListType(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyGroupListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyGroup(v)
	end
end

--  
-- List of PolicyGroup objects
function M.PolicyGroupListType(list)
	asserts.AssertPolicyGroupListType(list)
	return list
end

function asserts.AssertActionNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionNameListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActionNameType(v)
	end
end

--  
-- List of ActionNameType objects
function M.ActionNameListType(list)
	asserts.AssertActionNameListType(list)
	return list
end

function asserts.AssertthumbprintListType(list)
	assert(list)
	assert(type(list) == "table", "Expected thumbprintListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertthumbprintType(v)
	end
end

-- <p>Contains a list of thumbprints of identity provider server certificates.</p>
-- List of thumbprintType objects
function M.thumbprintListType(list)
	asserts.AssertthumbprintListType(list)
	return list
end

function asserts.AssertpolicyListType(list)
	assert(list)
	assert(type(list) == "table", "Expected policyListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicy(v)
	end
end

--  
-- List of Policy objects
function M.policyListType(list)
	asserts.AssertpolicyListType(list)
	return list
end

function asserts.AssertentityListType(list)
	assert(list)
	assert(type(list) == "table", "Expected entityListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEntityType(v)
	end
end

--  
-- List of EntityType objects
function M.entityListType(list)
	asserts.AssertentityListType(list)
	return list
end

function asserts.AssertManagedPolicyDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ManagedPolicyDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertManagedPolicyDetail(v)
	end
end

--  
-- List of ManagedPolicyDetail objects
function M.ManagedPolicyDetailListType(list)
	asserts.AssertManagedPolicyDetailListType(list)
	return list
end

function asserts.AssertaccessKeyMetadataListType(list)
	assert(list)
	assert(type(list) == "table", "Expected accessKeyMetadataListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccessKeyMetadata(v)
	end
end

-- <p>Contains a list of access key metadata.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> action.</p>
-- List of AccessKeyMetadata objects
function M.accessKeyMetadataListType(list)
	asserts.AssertaccessKeyMetadataListType(list)
	return list
end

function asserts.AssertroleListType(list)
	assert(list)
	assert(type(list) == "table", "Expected roleListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRole(v)
	end
end

-- <p>Contains a list of IAM roles.</p> <p>This data type is used as a response element in the <a>ListRoles</a> action.</p>
-- List of Role objects
function M.roleListType(list)
	asserts.AssertroleListType(list)
	return list
end

function asserts.AssertContextEntryListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ContextEntryListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContextEntry(v)
	end
end

--  
-- List of ContextEntry objects
function M.ContextEntryListType(list)
	asserts.AssertContextEntryListType(list)
	return list
end

function asserts.AssertServiceSpecificCredentialsListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceSpecificCredentialsListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServiceSpecificCredentialMetadata(v)
	end
end

--  
-- List of ServiceSpecificCredentialMetadata objects
function M.ServiceSpecificCredentialsListType(list)
	asserts.AssertServiceSpecificCredentialsListType(list)
	return list
end

function asserts.AssertattachedPoliciesListType(list)
	assert(list)
	assert(type(list) == "table", "Expected attachedPoliciesListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAttachedPolicy(v)
	end
end

--  
-- List of AttachedPolicy objects
function M.attachedPoliciesListType(list)
	asserts.AssertattachedPoliciesListType(list)
	return list
end

function asserts.AssertResourceSpecificResultListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceSpecificResultListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceSpecificResult(v)
	end
end

--  
-- List of ResourceSpecificResult objects
function M.ResourceSpecificResultListType(list)
	asserts.AssertResourceSpecificResultListType(list)
	return list
end

function asserts.AssertgroupDetailListType(list)
	assert(list)
	assert(type(list) == "table", "Expected groupDetailListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroupDetail(v)
	end
end

--  
-- List of GroupDetail objects
function M.groupDetailListType(list)
	asserts.AssertgroupDetailListType(list)
	return list
end

function asserts.AssertuserListType(list)
	assert(list)
	assert(type(list) == "table", "Expected userListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUser(v)
	end
end

-- <p>Contains a list of users.</p> <p>This data type is used as a response element in the <a>GetGroup</a> and <a>ListUsers</a> actions. </p>
-- List of User objects
function M.userListType(list)
	asserts.AssertuserListType(list)
	return list
end

function asserts.AssertOpenIDConnectProviderListType(list)
	assert(list)
	assert(type(list) == "table", "Expected OpenIDConnectProviderListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOpenIDConnectProviderListEntry(v)
	end
end

-- <p>Contains a list of IAM OpenID Connect providers.</p>
-- List of OpenIDConnectProviderListEntry objects
function M.OpenIDConnectProviderListType(list)
	asserts.AssertOpenIDConnectProviderListType(list)
	return list
end

function asserts.AssertpolicyNameListType(list)
	assert(list)
	assert(type(list) == "table", "Expected policyNameListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertpolicyNameType(v)
	end
end

-- <p>Contains a list of policy names.</p> <p>This data type is used as a response element in the <a>ListPolicies</a> action.</p>
-- List of policyNameType objects
function M.policyNameListType(list)
	asserts.AssertpolicyNameListType(list)
	return list
end

function asserts.AssertPolicyUserListType(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyUserListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyUser(v)
	end
end

--  
-- List of PolicyUser objects
function M.PolicyUserListType(list)
	asserts.AssertPolicyUserListType(list)
	return list
end

function asserts.AssertmfaDeviceListType(list)
	assert(list)
	assert(type(list) == "table", "Expected mfaDeviceListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMFADevice(v)
	end
end

-- <p>Contains a list of MFA devices.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> and <a>ListVirtualMFADevices</a> actions. </p>
-- List of MFADevice objects
function M.mfaDeviceListType(list)
	asserts.AssertmfaDeviceListType(list)
	return list
end

function asserts.AssertContextKeyNamesResultListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ContextKeyNamesResultListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContextKeyNameType(v)
	end
end

--  
-- List of ContextKeyNameType objects
function M.ContextKeyNamesResultListType(list)
	asserts.AssertContextKeyNamesResultListType(list)
	return list
end

function asserts.AssertgroupListType(list)
	assert(list)
	assert(type(list) == "table", "Expected groupListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroup(v)
	end
end

-- <p>Contains a list of IAM groups.</p> <p>This data type is used as a response element in the <a>ListGroups</a> action.</p>
-- List of Group objects
function M.groupListType(list)
	asserts.AssertgroupListType(list)
	return list
end

function asserts.AssertSimulationPolicyListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SimulationPolicyListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertpolicyDocumentType(v)
	end
end

--  
-- List of policyDocumentType objects
function M.SimulationPolicyListType(list)
	asserts.AssertSimulationPolicyListType(list)
	return list
end

function asserts.AssertSSHPublicKeyListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SSHPublicKeyListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSSHPublicKeyMetadata(v)
	end
end

--  
-- List of SSHPublicKeyMetadata objects
function M.SSHPublicKeyListType(list)
	asserts.AssertSSHPublicKeyListType(list)
	return list
end

function asserts.AssertPolicyRoleListType(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyRoleListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyRole(v)
	end
end

--  
-- List of PolicyRole objects
function M.PolicyRoleListType(list)
	asserts.AssertPolicyRoleListType(list)
	return list
end

function asserts.AssertSAMLProviderListType(list)
	assert(list)
	assert(type(list) == "table", "Expected SAMLProviderListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSAMLProviderListEntry(v)
	end
end

--  
-- List of SAMLProviderListEntry objects
function M.SAMLProviderListType(list)
	asserts.AssertSAMLProviderListType(list)
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
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountSummaryAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAccountSummary",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
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
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAccountPasswordPolicyAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteAccountPasswordPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
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
-- @param cb Callback function accepting two args: response, error_message
function M.GetCredentialReportAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCredentialReport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
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
-- @param cb Callback function accepting two args: response, error_message
function M.GenerateCredentialReportAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GenerateCredentialReport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
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
-- @param cb Callback function accepting two args: response, error_message
function M.GetAccountPasswordPolicyAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAccountPasswordPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
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
