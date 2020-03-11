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
-- <p>Contains information about AWS Organizations's effect on a policy simulation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllowedByOrganizations [booleanType] <p>Specifies whether the simulated operation is allowed by the AWS Organizations service control policies that impact the simulated user's account.</p>
-- @return OrganizationsDecisionDetail structure as a key-value pair table
function M.OrganizationsDecisionDetail(args)
	assert(args, "You must provide an argument table when creating OrganizationsDecisionDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllowedByOrganizations"] = args["AllowedByOrganizations"],
	}
	asserts.AssertOrganizationsDecisionDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [SigningCertificate] <p>Information about the certificate.</p>
-- Required key: Certificate
-- @return UploadSigningCertificateResponse structure as a key-value pair table
function M.UploadSigningCertificateResponse(args)
	assert(args, "You must provide an argument table when creating UploadSigningCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
	}
	asserts.AssertUploadSigningCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential.</p>
-- * Status [statusType] <p>The status of the service-specific credential. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not.</p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the service-specific credential were created.</p>
-- * ServiceName [serviceName] <p>The name of the service associated with the service-specific credential.</p>
-- * ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier for the service-specific credential.</p>
-- * ServiceUserName [serviceUserName] <p>The generated user name for the service-specific credential.</p>
-- Required key: UserName
-- Required key: Status
-- Required key: ServiceUserName
-- Required key: CreateDate
-- Required key: ServiceSpecificCredentialId
-- Required key: ServiceName
-- @return ServiceSpecificCredentialMetadata structure as a key-value pair table
function M.ServiceSpecificCredentialMetadata(args)
	assert(args, "You must provide an argument table when creating ServiceSpecificCredentialMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["CreateDate"] = args["CreateDate"],
		["ServiceName"] = args["ServiceName"],
		["ServiceSpecificCredentialId"] = args["ServiceSpecificCredentialId"],
		["ServiceUserName"] = args["ServiceUserName"],
	}
	asserts.AssertServiceSpecificCredentialMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the role to associate the policy with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyDocument [policyDocumentType] <p>The policy document.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * PolicyName [policyNameType] <p>The name of the policy document.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: RoleName
-- Required key: PolicyName
-- Required key: PolicyDocument
-- @return PutRolePolicyRequest structure as a key-value pair table
function M.PutRolePolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutRolePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["PolicyDocument"] = args["PolicyDocument"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertPutRolePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoginProfile [LoginProfile] <p>A structure containing the user name and password create date for the user.</p>
-- Required key: LoginProfile
-- @return GetLoginProfileResponse structure as a key-value pair table
function M.GetLoginProfileResponse(args)
	assert(args, "You must provide an argument table when creating GetLoginProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoginProfile"] = args["LoginProfile"],
	}
	asserts.AssertGetLoginProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user to list groups for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: UserName
-- @return ListGroupsForUserRequest structure as a key-value pair table
function M.ListGroupsForUserRequest(args)
	assert(args, "You must provide an argument table when creating ListGroupsForUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListGroupsForUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the client ID from. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * ClientID [clientIDType] <p>The client ID (also known as audience) to remove from the IAM OIDC provider resource. For more information about client IDs, see <a>CreateOpenIDConnectProvider</a>.</p>
-- Required key: OpenIDConnectProviderArn
-- Required key: ClientID
-- @return RemoveClientIDFromOpenIDConnectProviderRequest structure as a key-value pair table
function M.RemoveClientIDFromOpenIDConnectProviderRequest(args)
	assert(args, "You must provide an argument table when creating RemoveClientIDFromOpenIDConnectProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OpenIDConnectProviderArn"] = args["OpenIDConnectProviderArn"],
		["ClientID"] = args["ClientID"],
	}
	asserts.AssertRemoveClientIDFromOpenIDConnectProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [entityListType] <p>A list of entity types used to filter the results. Only the entities that match the types you specify are included in the output. Use the value <code>LocalManagedPolicy</code> to include customer managed policies.</p> <p>The format for this parameter is a comma-separated (if more than one) list of strings. Each string value in the list must be one of the valid values listed below.</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return GetAccountAuthorizationDetailsRequest structure as a key-value pair table
function M.GetAccountAuthorizationDetailsRequest(args)
	assert(args, "You must provide an argument table when creating GetAccountAuthorizationDetailsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertGetAccountAuthorizationDetailsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name (friendly name, not ARN) identifying the role that the policy is embedded in.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyName [policyNameType] <p>The name of the inline policy to delete from the specified IAM role.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: RoleName
-- Required key: PolicyName
-- @return DeleteRolePolicyRequest structure as a key-value pair table
function M.DeleteRolePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRolePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertDeleteRolePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * AssignmentStatus [assignmentStatusType] <p> The status (<code>Unassigned</code> or <code>Assigned</code>) of the devices to list. If you do not specify an <code>AssignmentStatus</code>, the operation defaults to <code>Any</code> which lists both assigned and unassigned virtual MFA devices.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListVirtualMFADevicesRequest structure as a key-value pair table
function M.ListVirtualMFADevicesRequest(args)
	assert(args, "You must provide an argument table when creating ListVirtualMFADevicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["AssignmentStatus"] = args["AssignmentStatus"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListVirtualMFADevicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessKey [AccessKey] <p>A structure with details about the access key.</p>
-- Required key: AccessKey
-- @return CreateAccessKeyResponse structure as a key-value pair table
function M.CreateAccessKeyResponse(args)
	assert(args, "You must provide an argument table when creating CreateAccessKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessKey"] = args["AccessKey"],
	}
	asserts.AssertCreateAccessKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an instance profile.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateInstanceProfile</a> </p> </li> <li> <p> <a>GetInstanceProfile</a> </p> </li> <li> <p> <a>ListInstanceProfiles</a> </p> </li> <li> <p> <a>ListInstanceProfilesForRole</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceProfileId [idType] <p> The stable and unique string identifying the instance profile. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * Roles [roleListType] <p>The role associated with the instance profile.</p>
-- * CreateDate [dateType] <p>The date when the instance profile was created.</p>
-- * InstanceProfileName [instanceProfileNameType] <p>The name identifying the instance profile.</p>
-- * Path [pathType] <p> The path to the instance profile. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * Arn [arnType] <p> The Amazon Resource Name (ARN) specifying the instance profile. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- Required key: Path
-- Required key: InstanceProfileName
-- Required key: InstanceProfileId
-- Required key: Arn
-- Required key: CreateDate
-- Required key: Roles
-- @return InstanceProfile structure as a key-value pair table
function M.InstanceProfile(args)
	assert(args, "You must provide an argument table when creating InstanceProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceProfileId"] = args["InstanceProfileId"],
		["Roles"] = args["Roles"],
		["CreateDate"] = args["CreateDate"],
		["InstanceProfileName"] = args["InstanceProfileName"],
		["Path"] = args["Path"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertInstanceProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- * Groups [groupListType] <p>A list of groups.</p>
-- Required key: Groups
-- @return ListGroupsForUserResponse structure as a key-value pair table
function M.ListGroupsForUserResponse(args)
	assert(args, "You must provide an argument table when creating ListGroupsForUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertListGroupsForUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [invalidInputMessage] 
-- @return InvalidInputException structure as a key-value pair table
function M.InvalidInputException(args)
	assert(args, "You must provide an argument table when creating InvalidInputException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidInputException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [ReportStateType] <p>Information about the state of the credential report.</p>
-- * Description [ReportStateDescriptionType] <p>Information about the credential report.</p>
-- @return GenerateCredentialReportResponse structure as a key-value pair table
function M.GenerateCredentialReportResponse(args)
	assert(args, "You must provide an argument table when creating GenerateCredentialReportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["Description"] = args["Description"],
	}
	asserts.AssertGenerateCredentialReportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user whose access key pair you want to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * AccessKeyId [accessKeyIdType] <p>The access key ID for the access key ID and secret access key you want to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: AccessKeyId
-- @return DeleteAccessKeyRequest structure as a key-value pair table
function M.DeleteAccessKeyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAccessKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["AccessKeyId"] = args["AccessKeyId"],
	}
	asserts.AssertDeleteAccessKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyInputList [SimulationPolicyListType] <p>A list of policies for which you want the list of context keys referenced in those policies. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- Required key: PolicyInputList
-- @return GetContextKeysForCustomPolicyRequest structure as a key-value pair table
function M.GetContextKeysForCustomPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetContextKeysForCustomPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyInputList"] = args["PolicyInputList"],
	}
	asserts.AssertGetContextKeysForCustomPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerCertificateMetadataList [serverCertificateMetadataListType] <p>A list of server certificates.</p>
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: ServerCertificateMetadataList
-- @return ListServerCertificatesResponse structure as a key-value pair table
function M.ListServerCertificatesResponse(args)
	assert(args, "You must provide an argument table when creating ListServerCertificatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerCertificateMetadataList"] = args["ServerCertificateMetadataList"],
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListServerCertificatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [malformedPolicyDocumentMessage] 
-- @return MalformedPolicyDocumentException structure as a key-value pair table
function M.MalformedPolicyDocumentException(args)
	assert(args, "You must provide an argument table when creating MalformedPolicyDocumentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMalformedPolicyDocumentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServiceLinkedRoleResponse = { ["DeletionTaskId"] = true, nil }

function asserts.AssertDeleteServiceLinkedRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceLinkedRoleResponse to be of type 'table'")
	assert(struct["DeletionTaskId"], "Expected key DeletionTaskId to exist in table")
	if struct["DeletionTaskId"] then asserts.AssertDeletionTaskIdType(struct["DeletionTaskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceLinkedRoleResponse[k], "DeleteServiceLinkedRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceLinkedRoleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeletionTaskId [DeletionTaskIdType] <p>The deletion task identifier that you can use to check the status of the deletion. This identifier is returned in the format <code>task/aws-service-role/&lt;service-principal-name&gt;/&lt;role-name&gt;/&lt;task-uuid&gt;</code>.</p>
-- Required key: DeletionTaskId
-- @return DeleteServiceLinkedRoleResponse structure as a key-value pair table
function M.DeleteServiceLinkedRoleResponse(args)
	assert(args, "You must provide an argument table when creating DeleteServiceLinkedRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeletionTaskId"] = args["DeletionTaskId"],
	}
	asserts.AssertDeleteServiceLinkedRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user whose MFA device you want to deactivate.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * SerialNumber [serialNumberType] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>
-- Required key: UserName
-- Required key: SerialNumber
-- @return DeactivateMFADeviceRequest structure as a key-value pair table
function M.DeactivateMFADeviceRequest(args)
	assert(args, "You must provide an argument table when creating DeactivateMFADeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["SerialNumber"] = args["SerialNumber"],
	}
	asserts.AssertDeactivateMFADeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NewPassword [passwordType] <p>The new password. The new password must conform to the AWS account's password policy, if one exists.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (\u0020) through the end of the ASCII character range (\u00FF). You can also include the tab (\u0009), line feed (\u000A), and carriage return (\u000D) characters. Any of these characters are valid in a password. However, many tools, such as the AWS Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.</p>
-- * OldPassword [passwordType] <p>The IAM user's current password.</p>
-- Required key: OldPassword
-- Required key: NewPassword
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
		["NewPassword"] = args["NewPassword"],
		["OldPassword"] = args["OldPassword"],
	}
	asserts.AssertChangePasswordRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * AccountAliases [accountAliasListType] <p>A list of aliases associated with the account. AWS supports only one alias per account.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: AccountAliases
-- @return ListAccountAliasesResponse structure as a key-value pair table
function M.ListAccountAliasesResponse(args)
	assert(args, "You must provide an argument table when creating ListAccountAliasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["AccountAliases"] = args["AccountAliases"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListAccountAliasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- * Groups [groupListType] <p>A list of groups.</p>
-- Required key: Groups
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
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [unrecognizedPublicKeyEncodingMessage] 
-- @return UnrecognizedPublicKeyEncodingException structure as a key-value pair table
function M.UnrecognizedPublicKeyEncodingException(args)
	assert(args, "You must provide an argument table when creating UnrecognizedPublicKeyEncodingException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnrecognizedPublicKeyEncodingException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to delete.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: PolicyArn
-- @return DeletePolicyRequest structure as a key-value pair table
function M.DeletePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeletePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertDeletePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the role to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: RoleName
-- @return DeleteRoleRequest structure as a key-value pair table
function M.DeleteRoleRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
	}
	asserts.AssertDeleteRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [entityTemporarilyUnmodifiableMessage] 
-- @return EntityTemporarilyUnmodifiableException structure as a key-value pair table
function M.EntityTemporarilyUnmodifiableException(args)
	assert(args, "You must provide an argument table when creating EntityTemporarilyUnmodifiableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertEntityTemporarilyUnmodifiableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the IAM user the signing certificate belongs to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Status [statusType] <p> The status you want to assign to the certificate. <code>Active</code> means that the certificate can be used for API calls to AWS <code>Inactive</code> means that the certificate cannot be used.</p>
-- * CertificateId [certificateIdType] <p>The ID of the signing certificate you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: CertificateId
-- Required key: Status
-- @return UpdateSigningCertificateRequest structure as a key-value pair table
function M.UpdateSigningCertificateRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSigningCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["CertificateId"] = args["CertificateId"],
	}
	asserts.AssertUpdateSigningCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier of the service-specific credential. You can get this value by calling <a>ListServiceSpecificCredentials</a>.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: ServiceSpecificCredentialId
-- @return DeleteServiceSpecificCredentialRequest structure as a key-value pair table
function M.DeleteServiceSpecificCredentialRequest(args)
	assert(args, "You must provide an argument table when creating DeleteServiceSpecificCredentialRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["ServiceSpecificCredentialId"] = args["ServiceSpecificCredentialId"],
	}
	asserts.AssertDeleteServiceSpecificCredentialRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an IAM group entity.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateGroup</a> </p> </li> <li> <p> <a>GetGroup</a> </p> </li> <li> <p> <a>ListGroups</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [pathType] <p>The path to the group. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the group was created.</p>
-- * GroupId [idType] <p> The stable and unique string identifying the group. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * Arn [arnType] <p> The Amazon Resource Name (ARN) specifying the group. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * GroupName [groupNameType] <p>The friendly name that identifies the group.</p>
-- Required key: Path
-- Required key: GroupName
-- Required key: GroupId
-- Required key: Arn
-- Required key: CreateDate
-- @return Group structure as a key-value pair table
function M.Group(args)
	assert(args, "You must provide an argument table when creating Group")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["CreateDate"] = args["CreateDate"],
		["GroupId"] = args["GroupId"],
		["Arn"] = args["Arn"],
		["GroupName"] = args["GroupName"],
	}
	asserts.AssertGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the IAM user for whom you want to enable the MFA device.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * AuthenticationCode1 [authenticationCodeType] <p>An authentication code emitted by the device. </p> <p>The format for this parameter is a string of six digits.</p> <important> <p>Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the device</a>.</p> </important>
-- * SerialNumber [serialNumberType] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>
-- * AuthenticationCode2 [authenticationCodeType] <p>A subsequent authentication code emitted by the device.</p> <p>The format for this parameter is a string of six digits.</p> <important> <p>Submit your request immediately after generating the authentication codes. If you generate the codes and then wait too long to submit the request, the MFA device successfully associates with the user but the MFA device becomes out of sync. This happens because time-based one-time passwords (TOTP) expire after a short period of time. If this happens, you can <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the device</a>.</p> </important>
-- Required key: UserName
-- Required key: SerialNumber
-- Required key: AuthenticationCode1
-- Required key: AuthenticationCode2
-- @return EnableMFADeviceRequest structure as a key-value pair table
function M.EnableMFADeviceRequest(args)
	assert(args, "You must provide an argument table when creating EnableMFADeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["AuthenticationCode1"] = args["AuthenticationCode1"],
		["SerialNumber"] = args["SerialNumber"],
		["AuthenticationCode2"] = args["AuthenticationCode2"],
	}
	asserts.AssertEnableMFADeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRolePermissionsBoundaryRequest = { ["RoleName"] = true, ["PermissionsBoundary"] = true, nil }

function asserts.AssertPutRolePermissionsBoundaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRolePermissionsBoundaryRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["PermissionsBoundary"], "Expected key PermissionsBoundary to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["PermissionsBoundary"] then asserts.AssertarnType(struct["PermissionsBoundary"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRolePermissionsBoundaryRequest[k], "PutRolePermissionsBoundaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRolePermissionsBoundaryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name (friendly name, not ARN) of the IAM role for which you want to set the permissions boundary.</p>
-- * PermissionsBoundary [arnType] <p>The ARN of the policy that is used to set the permissions boundary for the role.</p>
-- Required key: RoleName
-- Required key: PermissionsBoundary
-- @return PutRolePermissionsBoundaryRequest structure as a key-value pair table
function M.PutRolePermissionsBoundaryRequest(args)
	assert(args, "You must provide an argument table when creating PutRolePermissionsBoundaryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["PermissionsBoundary"] = args["PermissionsBoundary"],
	}
	asserts.AssertPutRolePermissionsBoundaryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * AttachedPolicies [attachedPoliciesListType] <p>A list of the attached policies.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @return ListAttachedGroupPoliciesResponse structure as a key-value pair table
function M.ListAttachedGroupPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListAttachedGroupPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["AttachedPolicies"] = args["AttachedPolicies"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListAttachedGroupPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletionTaskFailureReasonType = { ["RoleUsageList"] = true, ["Reason"] = true, nil }

function asserts.AssertDeletionTaskFailureReasonType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletionTaskFailureReasonType to be of type 'table'")
	if struct["RoleUsageList"] then asserts.AssertRoleUsageListType(struct["RoleUsageList"]) end
	if struct["Reason"] then asserts.AssertReasonType(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletionTaskFailureReasonType[k], "DeletionTaskFailureReasonType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletionTaskFailureReasonType
-- <p>The reason that the service-linked role deletion failed.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleUsageList [RoleUsageListType] <p>A list of objects that contains details about the service-linked role deletion failure, if that information is returned by the service. If the service-linked role has active sessions or if any resources that were used by the role have not been deleted from the linked service, the role can't be deleted. This parameter includes a list of the resources that are associated with the role and the region in which the resources are being used.</p>
-- * Reason [ReasonType] <p>A short description of the reason that the service-linked role deletion failed.</p>
-- @return DeletionTaskFailureReasonType structure as a key-value pair table
function M.DeletionTaskFailureReasonType(args)
	assert(args, "You must provide an argument table when creating DeletionTaskFailureReasonType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleUsageList"] = args["RoleUsageList"],
		["Reason"] = args["Reason"],
	}
	asserts.AssertDeletionTaskFailureReasonType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllowUsersToChangePassword [booleanType] <p> Allows all IAM users in your account to use the AWS Management Console to change their own passwords. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html">Letting IAM Users Change Their Own Passwords</a> in the <i>IAM User Guide</i>.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that IAM users in the account do not automatically have permissions to change their own password.</p>
-- * RequireLowercaseCharacters [booleanType] <p>Specifies whether IAM user passwords must contain at least one lowercase character from the ISO basic Latin alphabet (a to z).</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that passwords do not require at least one lowercase character.</p>
-- * RequireUppercaseCharacters [booleanType] <p>Specifies whether IAM user passwords must contain at least one uppercase character from the ISO basic Latin alphabet (A to Z).</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that passwords do not require at least one uppercase character.</p>
-- * MinimumPasswordLength [minimumPasswordLengthType] <p>The minimum number of characters allowed in an IAM user password.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>6</code>.</p>
-- * RequireNumbers [booleanType] <p>Specifies whether IAM user passwords must contain at least one numeric character (0 to 9).</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that passwords do not require at least one numeric character.</p>
-- * PasswordReusePrevention [passwordReusePreventionType] <p>Specifies the number of previous passwords that IAM users are prevented from reusing.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>0</code>. The result is that IAM users are not prevented from reusing previous passwords.</p>
-- * HardExpiry [booleanObjectType] <p>Prevents IAM users from setting a new password after their password has expired. The IAM user cannot be accessed until an administrator resets the password.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that IAM users can change their passwords after they expire and continue to sign in as the user.</p>
-- * RequireSymbols [booleanType] <p>Specifies whether IAM user passwords must contain at least one of the following non-alphanumeric characters:</p> <p>! @ # $ % ^ &amp; * ( ) _ + - = [ ] { } | '</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>false</code>. The result is that passwords do not require at least one symbol character.</p>
-- * MaxPasswordAge [maxPasswordAgeType] <p>The number of days that an IAM user password is valid.</p> <p>If you do not specify a value for this parameter, then the operation uses the default value of <code>0</code>. The result is that IAM user passwords never expire.</p>
-- @return UpdateAccountPasswordPolicyRequest structure as a key-value pair table
function M.UpdateAccountPasswordPolicyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAccountPasswordPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllowUsersToChangePassword"] = args["AllowUsersToChangePassword"],
		["RequireLowercaseCharacters"] = args["RequireLowercaseCharacters"],
		["RequireUppercaseCharacters"] = args["RequireUppercaseCharacters"],
		["MinimumPasswordLength"] = args["MinimumPasswordLength"],
		["RequireNumbers"] = args["RequireNumbers"],
		["PasswordReusePrevention"] = args["PasswordReusePrevention"],
		["HardExpiry"] = args["HardExpiry"],
		["RequireSymbols"] = args["RequireSymbols"],
		["MaxPasswordAge"] = args["MaxPasswordAge"],
	}
	asserts.AssertUpdateAccountPasswordPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * Group [Group] <p>A structure that contains details about the group.</p>
-- * Users [userListType] <p>A list of users in the group.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: Group
-- Required key: Users
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
		["Marker"] = args["Marker"],
		["Group"] = args["Group"],
		["Users"] = args["Users"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertGetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The role the policy is associated with.</p>
-- * PolicyDocument [policyDocumentType] <p>The policy document.</p>
-- * PolicyName [policyNameType] <p>The name of the policy.</p>
-- Required key: RoleName
-- Required key: PolicyName
-- Required key: PolicyDocument
-- @return GetRolePolicyResponse structure as a key-value pair table
function M.GetRolePolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetRolePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["PolicyDocument"] = args["PolicyDocument"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertGetRolePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider to delete.</p>
-- Required key: SAMLProviderArn
-- @return DeleteSAMLProviderRequest structure as a key-value pair table
function M.DeleteSAMLProviderRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSAMLProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SAMLProviderArn"] = args["SAMLProviderArn"],
	}
	asserts.AssertDeleteSAMLProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceProfile [InstanceProfile] <p>A structure containing details about the new instance profile.</p>
-- Required key: InstanceProfile
-- @return CreateInstanceProfileResponse structure as a key-value pair table
function M.CreateInstanceProfileResponse(args)
	assert(args, "You must provide an argument table when creating CreateInstanceProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceProfile"] = args["InstanceProfile"],
	}
	asserts.AssertCreateInstanceProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user the signing certificate is for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * CertificateBody [certificateBodyType] <p>The contents of the signing certificate.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- Required key: CertificateBody
-- @return UploadSigningCertificateRequest structure as a key-value pair table
function M.UploadSigningCertificateRequest(args)
	assert(args, "You must provide an argument table when creating UploadSigningCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["CertificateBody"] = args["CertificateBody"],
	}
	asserts.AssertUploadSigningCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * RoleName [roleNameType] <p>The name of the role to list policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: RoleName
-- @return ListRolePoliciesRequest structure as a key-value pair table
function M.ListRolePoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListRolePoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["RoleName"] = args["RoleName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListRolePoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [unmodifiableEntityMessage] 
-- @return UnmodifiableEntityException structure as a key-value pair table
function M.UnmodifiableEntityException(args)
	assert(args, "You must provide an argument table when creating UnmodifiableEntityException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnmodifiableEntityException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The request failed because a provided policy could not be successfully evaluated. An additional detailed message indicates the source of the failure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [policyEvaluationErrorMessage] 
-- @return PolicyEvaluationException structure as a key-value pair table
function M.PolicyEvaluationException(args)
	assert(args, "You must provide an argument table when creating PolicyEvaluationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertPolicyEvaluationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [credentialReportNotReadyExceptionMessage] 
-- @return CredentialReportNotReadyException structure as a key-value pair table
function M.CredentialReportNotReadyException(args)
	assert(args, "You must provide an argument table when creating CredentialReportNotReadyException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertCredentialReportNotReadyException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationsDecisionDetail [OrganizationsDecisionDetail] <p>A structure that details how AWS Organizations and its service control policies affect the results of the simulation. Only applies if the simulated user's account is part of an organization.</p>
-- * MatchedStatements [StatementListType] <p>A list of the statements in the input policies that determine the result for this scenario. Remember that even if multiple statements allow the operation on the resource, if only one statement denies that operation, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.</p>
-- * EvalDecisionDetails [EvalDecisionDetailsType] <p>Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access. See <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_compare-resource-policies.html">How IAM Roles Differ from Resource-based Policies</a> </p>
-- * EvalResourceName [ResourceNameType] <p>The ARN of the resource that the indicated API operation was tested on.</p>
-- * ResourceSpecificResults [ResourceSpecificResultListType] <p>The individual results of the simulation of the API operation specified in EvalActionName on each resource.</p>
-- * EvalActionName [ActionNameType] <p>The name of the API operation tested on the indicated resource.</p>
-- * MissingContextValues [ContextKeyNamesResultListType] <p>A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when the resource in a simulation is "*", either explicitly, or when the <code>ResourceArns</code> parameter blank. If you include a list of resources, then any missing context values are instead included under the <code>ResourceSpecificResults</code> section. To discover the context keys used by a set of policies, you can call <a>GetContextKeysForCustomPolicy</a> or <a>GetContextKeysForPrincipalPolicy</a>.</p>
-- * EvalDecision [PolicyEvaluationDecisionType] <p>The result of the simulation.</p>
-- Required key: EvalActionName
-- Required key: EvalDecision
-- @return EvaluationResult structure as a key-value pair table
function M.EvaluationResult(args)
	assert(args, "You must provide an argument table when creating EvaluationResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationsDecisionDetail"] = args["OrganizationsDecisionDetail"],
		["MatchedStatements"] = args["MatchedStatements"],
		["EvalDecisionDetails"] = args["EvalDecisionDetails"],
		["EvalResourceName"] = args["EvalResourceName"],
		["ResourceSpecificResults"] = args["ResourceSpecificResults"],
		["EvalActionName"] = args["EvalActionName"],
		["MissingContextValues"] = args["MissingContextValues"],
		["EvalDecision"] = args["EvalDecision"],
	}
	asserts.AssertEvaluationResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NewPath [pathType] <p>New path for the IAM group. Only include this if changing the group's path.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * GroupName [groupNameType] <p>Name of the IAM group to update. If you're changing the name of the group, this is the original name.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * NewGroupName [groupNameType] <p>New name for the IAM group. Only include this if changing the group's name.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: GroupName
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
		["NewPath"] = args["NewPath"],
		["GroupName"] = args["GroupName"],
		["NewGroupName"] = args["NewGroupName"],
	}
	asserts.AssertUpdateGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountAlias [accountAliasType] <p>The name of the account alias to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.</p>
-- Required key: AccountAlias
-- @return DeleteAccountAliasRequest structure as a key-value pair table
function M.DeleteAccountAliasRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAccountAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountAlias"] = args["AccountAlias"],
	}
	asserts.AssertDeleteAccountAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- * Versions [policyDocumentVersionListType] <p>A list of policy versions.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
-- @return ListPolicyVersionsResponse structure as a key-value pair table
function M.ListPolicyVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListPolicyVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListPolicyVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Policy = { ["PolicyName"] = true, ["Description"] = true, ["PermissionsBoundaryUsageCount"] = true, ["CreateDate"] = true, ["AttachmentCount"] = true, ["IsAttachable"] = true, ["PolicyId"] = true, ["DefaultVersionId"] = true, ["Path"] = true, ["Arn"] = true, ["UpdateDate"] = true, nil }

function asserts.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["Description"] then asserts.AssertpolicyDescriptionType(struct["Description"]) end
	if struct["PermissionsBoundaryUsageCount"] then asserts.AssertattachmentCountType(struct["PermissionsBoundaryUsageCount"]) end
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
-- <p>Contains information about a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicy</a>, <a>GetPolicy</a>, and <a>ListPolicies</a> operations. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [policyNameType] <p>The friendly name (not ARN) identifying the policy.</p>
-- * Description [policyDescriptionType] <p>A friendly description of the policy.</p> <p>This element is included in the response to the <a>GetPolicy</a> operation. It is not included in the response to the <a>ListPolicies</a> operation. </p>
-- * PermissionsBoundaryUsageCount [attachmentCountType] <p>The number of entities (users and roles) for which the policy is used to set the permissions boundary. </p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy was created.</p>
-- * AttachmentCount [attachmentCountType] <p>The number of entities (users, groups, and roles) that the policy is attached to.</p>
-- * IsAttachable [booleanType] <p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>
-- * PolicyId [idType] <p>The stable and unique string identifying the policy.</p> <p>For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * DefaultVersionId [policyVersionIdType] <p>The identifier for the version of the policy that is set as the default version.</p>
-- * Path [policyPathType] <p>The path to the policy.</p> <p>For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * Arn [arnType] 
-- * UpdateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy was last updated.</p> <p>When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.</p>
-- @return Policy structure as a key-value pair table
function M.Policy(args)
	assert(args, "You must provide an argument table when creating Policy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["Description"] = args["Description"],
		["PermissionsBoundaryUsageCount"] = args["PermissionsBoundaryUsageCount"],
		["CreateDate"] = args["CreateDate"],
		["AttachmentCount"] = args["AttachmentCount"],
		["IsAttachable"] = args["IsAttachable"],
		["PolicyId"] = args["PolicyId"],
		["DefaultVersionId"] = args["DefaultVersionId"],
		["Path"] = args["Path"],
		["Arn"] = args["Arn"],
		["UpdateDate"] = args["UpdateDate"],
	}
	asserts.AssertPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [ReportContentType] <p>Contains the credential report. The report is Base64-encoded.</p>
-- * GeneratedTime [dateType] <p> The date and time when the credential report was created, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>.</p>
-- * ReportFormat [ReportFormatType] <p>The format (MIME type) of the credential report.</p>
-- @return GetCredentialReportResponse structure as a key-value pair table
function M.GetCredentialReportResponse(args)
	assert(args, "You must provide an argument table when creating GetCredentialReportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Content"] = args["Content"],
		["GeneratedTime"] = args["GeneratedTime"],
		["ReportFormat"] = args["ReportFormat"],
	}
	asserts.AssertGetCredentialReportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The user the policy is associated with.</p>
-- * PolicyName [policyNameType] <p>The name of the policy.</p>
-- * PolicyDocument [policyDocumentType] <p>The policy document.</p>
-- Required key: UserName
-- Required key: PolicyName
-- Required key: PolicyDocument
-- @return GetUserPolicyResponse structure as a key-value pair table
function M.GetUserPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetUserPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PolicyName"] = args["PolicyName"],
		["PolicyDocument"] = args["PolicyDocument"],
	}
	asserts.AssertGetUserPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get information about.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: SAMLProviderArn
-- @return GetSAMLProviderRequest structure as a key-value pair table
function M.GetSAMLProviderRequest(args)
	assert(args, "You must provide an argument table when creating GetSAMLProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SAMLProviderArn"] = args["SAMLProviderArn"],
	}
	asserts.AssertGetSAMLProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: InstanceProfileName
-- @return DeleteInstanceProfileRequest structure as a key-value pair table
function M.DeleteInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceProfileName"] = args["InstanceProfileName"],
	}
	asserts.AssertDeleteInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- * InstanceProfiles [instanceProfileListType] <p>A list of instance profiles.</p>
-- Required key: InstanceProfiles
-- @return ListInstanceProfilesForRoleResponse structure as a key-value pair table
function M.ListInstanceProfilesForRoleResponse(args)
	assert(args, "You must provide an argument table when creating ListInstanceProfilesForRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["InstanceProfiles"] = args["InstanceProfiles"],
	}
	asserts.AssertListInstanceProfilesForRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * PolicyGroups [PolicyGroupListType] <p>A list of IAM groups that the policy is attached to.</p>
-- * PolicyUsers [PolicyUserListType] <p>A list of IAM users that the policy is attached to.</p>
-- * PolicyRoles [PolicyRoleListType] <p>A list of IAM roles that the policy is attached to.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @return ListEntitiesForPolicyResponse structure as a key-value pair table
function M.ListEntitiesForPolicyResponse(args)
	assert(args, "You must provide an argument table when creating ListEntitiesForPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PolicyGroups"] = args["PolicyGroups"],
		["PolicyUsers"] = args["PolicyUsers"],
		["PolicyRoles"] = args["PolicyRoles"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListEntitiesForPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleDetailList [roleDetailListType] <p>A list containing information about IAM roles.</p>
-- * GroupDetailList [groupDetailListType] <p>A list containing information about IAM groups.</p>
-- * UserDetailList [userDetailListType] <p>A list containing information about IAM users.</p>
-- * Policies [ManagedPolicyDetailListType] <p>A list containing information about managed policies.</p>
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @return GetAccountAuthorizationDetailsResponse structure as a key-value pair table
function M.GetAccountAuthorizationDetailsResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountAuthorizationDetailsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleDetailList"] = args["RoleDetailList"],
		["GroupDetailList"] = args["GroupDetailList"],
		["UserDetailList"] = args["UserDetailList"],
		["Policies"] = args["Policies"],
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertGetAccountAuthorizationDetailsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the result of the simulation of a single API operation call on a single resource.</p> <p>This data type is used by a member of the <a>EvaluationResult</a> data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EvalResourceDecision [PolicyEvaluationDecisionType] <p>The result of the simulation of the simulated API operation on the resource specified in <code>EvalResourceName</code>.</p>
-- * MissingContextValues [ContextKeyNamesResultListType] <p>A list of context keys that are required by the included input policies but that were not provided by one of the input parameters. This list is used when a list of ARNs is included in the <code>ResourceArns</code> parameter instead of "*". If you do not specify individual resources, by setting <code>ResourceArns</code> to "*" or by not including the <code>ResourceArns</code> parameter, then any missing context values are instead included under the <code>EvaluationResults</code> section. To discover the context keys used by a set of policies, you can call <a>GetContextKeysForCustomPolicy</a> or <a>GetContextKeysForPrincipalPolicy</a>.</p>
-- * MatchedStatements [StatementListType] <p>A list of the statements in the input policies that determine the result for this part of the simulation. Remember that even if multiple statements allow the operation on the resource, if <i>any</i> statement denies that operation, then the explicit deny overrides any allow, and the deny statement is the only entry included in the result.</p>
-- * EvalDecisionDetails [EvalDecisionDetailsType] <p>Additional details about the results of the evaluation decision. When there are both IAM policies and resource policies, this parameter explains how each set of policies contributes to the final evaluation decision. When simulating cross-account access to a resource, both the resource-based policy and the caller's IAM policy must grant access.</p>
-- * EvalResourceName [ResourceNameType] <p>The name of the simulated resource, in Amazon Resource Name (ARN) format.</p>
-- Required key: EvalResourceName
-- Required key: EvalResourceDecision
-- @return ResourceSpecificResult structure as a key-value pair table
function M.ResourceSpecificResult(args)
	assert(args, "You must provide an argument table when creating ResourceSpecificResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EvalResourceDecision"] = args["EvalResourceDecision"],
		["MissingContextValues"] = args["MissingContextValues"],
		["MatchedStatements"] = args["MatchedStatements"],
		["EvalDecisionDetails"] = args["EvalDecisionDetails"],
		["EvalResourceName"] = args["EvalResourceName"],
	}
	asserts.AssertResourceSpecificResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user the signing certificate belongs to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * CertificateId [certificateIdType] <p>The ID of the signing certificate to delete.</p> <p>The format of this parameter, as described by its <a href="http://wikipedia.org/wiki/regex">regex</a> pattern, is a string of characters that can be upper- or lower-cased letters or digits.</p>
-- Required key: CertificateId
-- @return DeleteSigningCertificateRequest structure as a key-value pair table
function M.DeleteSigningCertificateRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSigningCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["CertificateId"] = args["CertificateId"],
	}
	asserts.AssertDeleteSigningCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example, the prefix <code>/application_abc/component_xyz/</code> gets all instance profiles whose path starts with <code>/application_abc/component_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all instance profiles. This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListInstanceProfilesRequest structure as a key-value pair table
function M.ListInstanceProfilesRequest(args)
	assert(args, "You must provide an argument table when creating ListInstanceProfilesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListInstanceProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [arnType] 
-- @return OpenIDConnectProviderListEntry structure as a key-value pair table
function M.OpenIDConnectProviderListEntry(args)
	assert(args, "You must provide an argument table when creating OpenIDConnectProviderListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
	}
	asserts.AssertOpenIDConnectProviderListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- * Encoding [encodingType] <p>Specifies the public key encoding format to use in the response. To retrieve the public key in ssh-rsa format, use <code>SSH</code>. To retrieve the public key in PEM format, use <code>PEM</code>.</p>
-- Required key: UserName
-- Required key: SSHPublicKeyId
-- Required key: Encoding
-- @return GetSSHPublicKeyRequest structure as a key-value pair table
function M.GetSSHPublicKeyRequest(args)
	assert(args, "You must provide an argument table when creating GetSSHPublicKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["SSHPublicKeyId"] = args["SSHPublicKeyId"],
		["Encoding"] = args["Encoding"],
	}
	asserts.AssertGetSSHPublicKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider to update.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * SAMLMetadataDocument [SAMLMetadataDocumentType] <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p>
-- Required key: SAMLMetadataDocument
-- Required key: SAMLProviderArn
-- @return UpdateSAMLProviderRequest structure as a key-value pair table
function M.UpdateSAMLProviderRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSAMLProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SAMLProviderArn"] = args["SAMLProviderArn"],
		["SAMLMetadataDocument"] = args["SAMLMetadataDocument"],
	}
	asserts.AssertUpdateSAMLProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [groupNameType] <p>The group the policy is associated with.</p>
-- * PolicyDocument [policyDocumentType] <p>The policy document.</p>
-- * PolicyName [policyNameType] <p>The name of the policy.</p>
-- Required key: GroupName
-- Required key: PolicyName
-- Required key: PolicyDocument
-- @return GetGroupPolicyResponse structure as a key-value pair table
function M.GetGroupPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetGroupPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["PolicyDocument"] = args["PolicyDocument"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertGetGroupPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about a server certificate without its certificate body, certificate chain, and private key.</p> <p> This data type is used as a response element in the <a>UploadServerCertificate</a> and <a>ListServerCertificates</a> operations. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerCertificateId [idType] <p> The stable and unique string identifying the server certificate. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * ServerCertificateName [serverCertificateNameType] <p>The name that identifies the server certificate.</p>
-- * Expiration [dateType] <p>The date on which the certificate is set to expire.</p>
-- * Path [pathType] <p> The path to the server certificate. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * Arn [arnType] <p> The Amazon Resource Name (ARN) specifying the server certificate. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * UploadDate [dateType] <p>The date when the server certificate was uploaded.</p>
-- Required key: Path
-- Required key: ServerCertificateName
-- Required key: ServerCertificateId
-- Required key: Arn
-- @return ServerCertificateMetadata structure as a key-value pair table
function M.ServerCertificateMetadata(args)
	assert(args, "You must provide an argument table when creating ServerCertificateMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerCertificateId"] = args["ServerCertificateId"],
		["ServerCertificateName"] = args["ServerCertificateName"],
		["Expiration"] = args["Expiration"],
		["Path"] = args["Path"],
		["Arn"] = args["Arn"],
		["UploadDate"] = args["UploadDate"],
	}
	asserts.AssertServerCertificateMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerCertificateName [serverCertificateNameType] <p>The name of the server certificate you want to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: ServerCertificateName
-- @return DeleteServerCertificateRequest structure as a key-value pair table
function M.DeleteServerCertificateRequest(args)
	assert(args, "You must provide an argument table when creating DeleteServerCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerCertificateName"] = args["ServerCertificateName"],
	}
	asserts.AssertDeleteServerCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [pathType] <p> The path to the group. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * GroupName [groupNameType] <p>The name of the group to create. Do not include the path in this value.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-. The group name must be unique within the account. Group names are not distinguished by case. For example, you cannot create groups named both "ADMINS" and "admins".</p>
-- Required key: GroupName
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
		["Path"] = args["Path"],
		["GroupName"] = args["GroupName"],
	}
	asserts.AssertCreateGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicySourceArn [arnType] <p>The ARN of a user, group, or role whose policies contain the context keys that you want listed. If you specify a user, the list includes context keys that are found in all policies that are attached to the user. The list also includes all groups that the user is a member of. If you pick a group or a role, then it includes only those context keys that are found in policies attached to that entity. Note that all parameters are shown in unencoded form here for clarity, but must be URL encoded to be included as a part of a real HTML request.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * PolicyInputList [SimulationPolicyListType] <p>An optional list of additional policies for which you want the list of context keys that are referenced.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- Required key: PolicySourceArn
-- @return GetContextKeysForPrincipalPolicyRequest structure as a key-value pair table
function M.GetContextKeysForPrincipalPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetContextKeysForPrincipalPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicySourceArn"] = args["PolicySourceArn"],
		["PolicyInputList"] = args["PolicyInputList"],
	}
	asserts.AssertGetContextKeysForPrincipalPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user to list policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: UserName
-- @return ListUserPoliciesRequest structure as a key-value pair table
function M.ListUserPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListUserPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListUserPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the user whose service-specific credentials you want information about. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * ServiceName [serviceName] <p>Filters the returned results to only those for the specified AWS service. If not specified, then AWS returns service-specific credentials for all services.</p>
-- @return ListServiceSpecificCredentialsRequest structure as a key-value pair table
function M.ListServiceSpecificCredentialsRequest(args)
	assert(args, "You must provide an argument table when creating ListServiceSpecificCredentialsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["ServiceName"] = args["ServiceName"],
	}
	asserts.AssertListServiceSpecificCredentialsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user to list SSH public keys for. If none is specified, the <code>UserName</code> field is determined implicitly based on the AWS access key used to sign the request.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListSSHPublicKeysRequest structure as a key-value pair table
function M.ListSSHPublicKeysRequest(args)
	assert(args, "You must provide an argument table when creating ListSSHPublicKeysRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListSSHPublicKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ListSAMLProvidersRequest structure as a key-value pair table
function M.ListSAMLProvidersRequest(args)
	assert(args, "You must provide an argument table when creating ListSAMLProvidersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertListSAMLProvidersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the role to update with the new policy.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyDocument [policyDocumentType] <p>The policy that grants an entity permission to assume the role.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- Required key: RoleName
-- Required key: PolicyDocument
-- @return UpdateAssumeRolePolicyRequest structure as a key-value pair table
function M.UpdateAssumeRolePolicyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAssumeRolePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["PolicyDocument"] = args["PolicyDocument"],
	}
	asserts.AssertUpdateAssumeRolePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user to remove.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * GroupName [groupNameType] <p>The name of the group to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: GroupName
-- Required key: UserName
-- @return RemoveUserFromGroupRequest structure as a key-value pair table
function M.RemoveUserFromGroupRequest(args)
	assert(args, "You must provide an argument table when creating RemoveUserFromGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["GroupName"] = args["GroupName"],
	}
	asserts.AssertRemoveUserFromGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ManagedPolicyDetail = { ["PolicyName"] = true, ["Description"] = true, ["PermissionsBoundaryUsageCount"] = true, ["CreateDate"] = true, ["AttachmentCount"] = true, ["IsAttachable"] = true, ["PolicyId"] = true, ["DefaultVersionId"] = true, ["PolicyVersionList"] = true, ["Path"] = true, ["Arn"] = true, ["UpdateDate"] = true, nil }

function asserts.AssertManagedPolicyDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ManagedPolicyDetail to be of type 'table'")
	if struct["PolicyName"] then asserts.AssertpolicyNameType(struct["PolicyName"]) end
	if struct["Description"] then asserts.AssertpolicyDescriptionType(struct["Description"]) end
	if struct["PermissionsBoundaryUsageCount"] then asserts.AssertattachmentCountType(struct["PermissionsBoundaryUsageCount"]) end
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
-- <p>Contains information about a managed policy, including the policy's ARN, versions, and the number of principal entities (users, groups, and roles) that the policy is attached to.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p> <p>For more information about managed policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [policyNameType] <p>The friendly name (not ARN) identifying the policy.</p>
-- * Description [policyDescriptionType] <p>A friendly description of the policy.</p>
-- * PermissionsBoundaryUsageCount [attachmentCountType] <p>The number of entities (users and roles) for which the policy is used as the permissions boundary. </p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy was created.</p>
-- * AttachmentCount [attachmentCountType] <p>The number of principal entities (users, groups, and roles) that the policy is attached to.</p>
-- * IsAttachable [booleanType] <p>Specifies whether the policy can be attached to an IAM user, group, or role.</p>
-- * PolicyId [idType] <p>The stable and unique string identifying the policy.</p> <p>For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * DefaultVersionId [policyVersionIdType] <p>The identifier for the version of the policy that is set as the default (operative) version.</p> <p>For more information about policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>Using IAM</i> guide. </p>
-- * PolicyVersionList [policyDocumentVersionListType] <p>A list containing information about the versions of the policy.</p>
-- * Path [policyPathType] <p>The path to the policy.</p> <p>For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * Arn [arnType] 
-- * UpdateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy was last updated.</p> <p>When a policy has only one version, this field contains the date and time when the policy was created. When a policy has more than one version, this field contains the date and time when the most recent policy version was created.</p>
-- @return ManagedPolicyDetail structure as a key-value pair table
function M.ManagedPolicyDetail(args)
	assert(args, "You must provide an argument table when creating ManagedPolicyDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["Description"] = args["Description"],
		["PermissionsBoundaryUsageCount"] = args["PermissionsBoundaryUsageCount"],
		["CreateDate"] = args["CreateDate"],
		["AttachmentCount"] = args["AttachmentCount"],
		["IsAttachable"] = args["IsAttachable"],
		["PolicyId"] = args["PolicyId"],
		["DefaultVersionId"] = args["DefaultVersionId"],
		["PolicyVersionList"] = args["PolicyVersionList"],
		["Path"] = args["Path"],
		["Arn"] = args["Arn"],
		["UpdateDate"] = args["UpdateDate"],
	}
	asserts.AssertManagedPolicyDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * AttachedPolicies [attachedPoliciesListType] <p>A list of the attached policies.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @return ListAttachedRolePoliciesResponse structure as a key-value pair table
function M.ListAttachedRolePoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListAttachedRolePoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["AttachedPolicies"] = args["AttachedPolicies"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListAttachedRolePoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccessKeyId [accessKeyIdType] <p>The identifier of an access key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: AccessKeyId
-- @return GetAccessKeyLastUsedRequest structure as a key-value pair table
function M.GetAccessKeyLastUsedRequest(args)
	assert(args, "You must provide an argument table when creating GetAccessKeyLastUsedRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccessKeyId"] = args["AccessKeyId"],
	}
	asserts.AssertGetAccessKeyLastUsedRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name (friendly name, not ARN) identifying the user that the policy is embedded in.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyName [policyNameType] <p>The name identifying the policy document to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: UserName
-- Required key: PolicyName
-- @return DeleteUserPolicyRequest structure as a key-value pair table
function M.DeleteUserPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertDeleteUserPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerCertificate [ServerCertificate] <p>A structure containing details about the server certificate.</p>
-- Required key: ServerCertificate
-- @return GetServerCertificateResponse structure as a key-value pair table
function M.GetServerCertificateResponse(args)
	assert(args, "You must provide an argument table when creating GetServerCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerCertificate"] = args["ServerCertificate"],
	}
	asserts.AssertGetServerCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get information for. You can get a list of OIDC provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: OpenIDConnectProviderArn
-- @return GetOpenIDConnectProviderRequest structure as a key-value pair table
function M.GetOpenIDConnectProviderRequest(args)
	assert(args, "You must provide an argument table when creating GetOpenIDConnectProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OpenIDConnectProviderArn"] = args["OpenIDConnectProviderArn"],
	}
	asserts.AssertGetOpenIDConnectProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OpenIDConnectProviderList [OpenIDConnectProviderListType] <p>The list of IAM OIDC provider resource objects defined in the AWS account.</p>
-- @return ListOpenIDConnectProvidersResponse structure as a key-value pair table
function M.ListOpenIDConnectProvidersResponse(args)
	assert(args, "You must provide an argument table when creating ListOpenIDConnectProvidersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OpenIDConnectProviderList"] = args["OpenIDConnectProviderList"],
	}
	asserts.AssertListOpenIDConnectProvidersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user to get information about.</p> <p>This parameter is optional. If it is not included, it defaults to the user making the request. This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
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
		["UserName"] = args["UserName"],
	}
	asserts.AssertGetUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceSpecificCredential [ServiceSpecificCredential] <p>A structure that contains information about the newly created service-specific credential.</p> <important> <p>This is the only time that the password for this credential set is available. It cannot be recovered later. Instead, you will have to reset the password with <a>ResetServiceSpecificCredential</a>.</p> </important>
-- @return CreateServiceSpecificCredentialResponse structure as a key-value pair table
function M.CreateServiceSpecificCredentialResponse(args)
	assert(args, "You must provide an argument table when creating CreateServiceSpecificCredentialResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceSpecificCredential"] = args["ServiceSpecificCredential"],
	}
	asserts.AssertCreateServiceSpecificCredentialResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an attached policy.</p> <p>An attached policy is a managed policy that has been attached to a user, group, or role. This data type is used as a response element in the <a>ListAttachedGroupPolicies</a>, <a>ListAttachedRolePolicies</a>, <a>ListAttachedUserPolicies</a>, and <a>GetAccountAuthorizationDetails</a> operations. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [policyNameType] <p>The friendly name of the attached policy.</p>
-- * PolicyArn [arnType] 
-- @return AttachedPolicy structure as a key-value pair table
function M.AttachedPolicy(args)
	assert(args, "You must provide an argument table when creating AttachedPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertAttachedPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user whose key you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Status [statusType] <p> The status you want to assign to the secret access key. <code>Active</code> means that the key can be used for API calls to AWS, while <code>Inactive</code> means that the key cannot be used.</p>
-- * AccessKeyId [accessKeyIdType] <p>The access key ID of the secret access key you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: AccessKeyId
-- Required key: Status
-- @return UpdateAccessKeyRequest structure as a key-value pair table
function M.UpdateAccessKeyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAccessKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["AccessKeyId"] = args["AccessKeyId"],
	}
	asserts.AssertUpdateAccessKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>Name of the user to update. If you're changing the name of the user, this is the original user name.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * NewPath [pathType] <p>New path for the IAM user. Include this parameter only if you're changing the user's path.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * NewUserName [userNameType] <p>New name for the user. Include this parameter only if you're changing the user's name.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: UserName
-- @return UpdateUserRequest structure as a key-value pair table
function M.UpdateUserRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["NewPath"] = args["NewPath"],
		["NewUserName"] = args["NewUserName"],
	}
	asserts.AssertUpdateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * GroupName [groupNameType] <p>The name (friendly name, not ARN) of the group to list attached policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PathPrefix [policyPathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: GroupName
-- @return ListAttachedGroupPoliciesRequest structure as a key-value pair table
function M.ListAttachedGroupPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListAttachedGroupPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GroupName"] = args["GroupName"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListAttachedGroupPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an SSH public key.</p> <p>This data type is used as a response element in the <a>GetSSHPublicKey</a> and <a>UploadSSHPublicKey</a> operations. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p>
-- * Status [statusType] <p>The status of the SSH public key. <code>Active</code> means that the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means that the key cannot be used.</p>
-- * SSHPublicKeyBody [publicKeyMaterialType] <p>The SSH public key.</p>
-- * UploadDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the SSH public key was uploaded.</p>
-- * Fingerprint [publicKeyFingerprintType] <p>The MD5 message digest of the SSH public key.</p>
-- * SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p>
-- Required key: UserName
-- Required key: SSHPublicKeyId
-- Required key: Fingerprint
-- Required key: SSHPublicKeyBody
-- Required key: Status
-- @return SSHPublicKey structure as a key-value pair table
function M.SSHPublicKey(args)
	assert(args, "You must provide an argument table when creating SSHPublicKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["SSHPublicKeyBody"] = args["SSHPublicKeyBody"],
		["UploadDate"] = args["UploadDate"],
		["Fingerprint"] = args["Fingerprint"],
		["SSHPublicKeyId"] = args["SSHPublicKeyId"],
	}
	asserts.AssertSSHPublicKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- * Policies [policyListType] <p>A list of policies.</p>
-- @return ListPoliciesResponse structure as a key-value pair table
function M.ListPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["Policies"] = args["Policies"],
	}
	asserts.AssertListPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name (friendly name, not ARN) of the IAM user to attach the policy to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: UserName
-- Required key: PolicyArn
-- @return AttachUserPolicyRequest structure as a key-value pair table
function M.AttachUserPolicyRequest(args)
	assert(args, "You must provide an argument table when creating AttachUserPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertAttachUserPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceSpecificCredential [ServiceSpecificCredential] <p>A structure with details about the updated service-specific credential, including the new password.</p> <important> <p>This is the <b>only</b> time that you can access the password. You cannot recover the password later, but you can reset it again.</p> </important>
-- @return ResetServiceSpecificCredentialResponse structure as a key-value pair table
function M.ResetServiceSpecificCredentialResponse(args)
	assert(args, "You must provide an argument table when creating ResetServiceSpecificCredentialResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceSpecificCredential"] = args["ServiceSpecificCredential"],
	}
	asserts.AssertResetServiceSpecificCredentialResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * PolicyNames [policyNameListType] <p>A list of policy names.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: PolicyNames
-- @return ListRolePoliciesResponse structure as a key-value pair table
function M.ListRolePoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListRolePoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PolicyNames"] = args["PolicyNames"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListRolePoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user that is to be associated with the credentials. The new service-specific credentials have the same permissions as the associated user except that they can be used only to access the specified service.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * ServiceName [serviceName] <p>The name of the AWS service that is to be associated with the credentials. The service you specify here is the only service that can be accessed using these credentials.</p>
-- Required key: UserName
-- Required key: ServiceName
-- @return CreateServiceSpecificCredentialRequest structure as a key-value pair table
function M.CreateServiceSpecificCredentialRequest(args)
	assert(args, "You must provide an argument table when creating CreateServiceSpecificCredentialRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["ServiceName"] = args["ServiceName"],
	}
	asserts.AssertCreateServiceSpecificCredentialRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContextKeyNames [ContextKeyNamesResultListType] <p>The list of context keys that are referenced in the input policies.</p>
-- @return GetContextKeysForPolicyResponse structure as a key-value pair table
function M.GetContextKeysForPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetContextKeysForPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContextKeyNames"] = args["ContextKeyNames"],
	}
	asserts.AssertGetContextKeysForPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * GroupName [groupNameType] <p>The name of the group to list policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: GroupName
-- @return ListGroupPoliciesRequest structure as a key-value pair table
function M.ListGroupPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListGroupPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["GroupName"] = args["GroupName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListGroupPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example: <code>/division_abc/subdivision_xyz/</code>, which would get all user names whose path starts with <code>/division_abc/subdivision_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all user names. This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
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
		["Marker"] = args["Marker"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListUsersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the role that you want to modify.</p>
-- * Description [roleDescriptionType] <p>The new description that you want to apply to the specified role.</p>
-- Required key: RoleName
-- Required key: Description
-- @return UpdateRoleDescriptionRequest structure as a key-value pair table
function M.UpdateRoleDescriptionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRoleDescriptionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateRoleDescriptionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user to associate the SSH public key with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * SSHPublicKeyBody [publicKeyMaterialType] <p>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format. The miminum bit-length of the public key is 2048 bits. For example, you can generate a 2048-bit key, and the resulting PEM file is 1679 bytes long.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- Required key: UserName
-- Required key: SSHPublicKeyBody
-- @return UploadSSHPublicKeyRequest structure as a key-value pair table
function M.UploadSSHPublicKeyRequest(args)
	assert(args, "You must provide an argument table when creating UploadSSHPublicKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["SSHPublicKeyBody"] = args["SSHPublicKeyBody"],
	}
	asserts.AssertUploadSSHPublicKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RoleDetail = { ["PermissionsBoundary"] = true, ["AssumeRolePolicyDocument"] = true, ["RoleId"] = true, ["CreateDate"] = true, ["InstanceProfileList"] = true, ["RoleName"] = true, ["Path"] = true, ["AttachedManagedPolicies"] = true, ["RolePolicyList"] = true, ["Arn"] = true, nil }

function asserts.AssertRoleDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoleDetail to be of type 'table'")
	if struct["PermissionsBoundary"] then asserts.AssertAttachedPermissionsBoundary(struct["PermissionsBoundary"]) end
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
-- <p>Contains information about an IAM role, including all of the role's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PermissionsBoundary [AttachedPermissionsBoundary] <p>The ARN of the policy used to set the permissions boundary for the role.</p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>
-- * AssumeRolePolicyDocument [policyDocumentType] <p>The trust policy that grants permission to assume the role.</p>
-- * RoleId [idType] <p>The stable and unique string identifying the role. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the role was created.</p>
-- * InstanceProfileList [instanceProfileListType] <p>A list of instance profiles that contain this role.</p>
-- * RoleName [roleNameType] <p>The friendly name that identifies the role.</p>
-- * Path [pathType] <p>The path to the role. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * AttachedManagedPolicies [attachedPoliciesListType] <p>A list of managed policies attached to the role. These policies are the role's access (permissions) policies.</p>
-- * RolePolicyList [policyDetailListType] <p>A list of inline policies embedded in the role. These policies are the role's access (permissions) policies.</p>
-- * Arn [arnType] 
-- @return RoleDetail structure as a key-value pair table
function M.RoleDetail(args)
	assert(args, "You must provide an argument table when creating RoleDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PermissionsBoundary"] = args["PermissionsBoundary"],
		["AssumeRolePolicyDocument"] = args["AssumeRolePolicyDocument"],
		["RoleId"] = args["RoleId"],
		["CreateDate"] = args["CreateDate"],
		["InstanceProfileList"] = args["InstanceProfileList"],
		["RoleName"] = args["RoleName"],
		["Path"] = args["Path"],
		["AttachedManagedPolicies"] = args["AttachedManagedPolicies"],
		["RolePolicyList"] = args["RolePolicyList"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertRoleDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an IAM policy, including the policy document.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [policyNameType] <p>The name of the policy.</p>
-- * PolicyDocument [policyDocumentType] <p>The policy document.</p>
-- @return PolicyDetail structure as a key-value pair table
function M.PolicyDetail(args)
	assert(args, "You must provide an argument table when creating PolicyDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["PolicyDocument"] = args["PolicyDocument"],
	}
	asserts.AssertPolicyDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [policyVersionIdType] <p>The policy version to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a version.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: PolicyArn
-- Required key: VersionId
-- @return DeletePolicyVersionRequest structure as a key-value pair table
function M.DeletePolicyVersionRequest(args)
	assert(args, "You must provide an argument table when creating DeletePolicyVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertDeletePolicyVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the user whose login profile you want to retrieve.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: UserName
-- @return GetLoginProfileRequest structure as a key-value pair table
function M.GetLoginProfileRequest(args)
	assert(args, "You must provide an argument table when creating GetLoginProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
	}
	asserts.AssertGetLoginProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the managed policy that you want information about.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: PolicyArn
-- @return GetPolicyRequest structure as a key-value pair table
function M.GetPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertGetPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about the account password policy.</p> <p> This data type is used as a response element in the <a>GetAccountPasswordPolicy</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllowUsersToChangePassword [booleanType] <p>Specifies whether IAM users are allowed to change their own password.</p>
-- * RequireLowercaseCharacters [booleanType] <p>Specifies whether to require lowercase characters for IAM user passwords.</p>
-- * RequireUppercaseCharacters [booleanType] <p>Specifies whether to require uppercase characters for IAM user passwords.</p>
-- * MinimumPasswordLength [minimumPasswordLengthType] <p>Minimum length to require for IAM user passwords.</p>
-- * RequireNumbers [booleanType] <p>Specifies whether to require numbers for IAM user passwords.</p>
-- * PasswordReusePrevention [passwordReusePreventionType] <p>Specifies the number of previous passwords that IAM users are prevented from reusing.</p>
-- * HardExpiry [booleanObjectType] <p>Specifies whether IAM users are prevented from setting a new password after their password has expired.</p>
-- * RequireSymbols [booleanType] <p>Specifies whether to require symbols for IAM user passwords.</p>
-- * MaxPasswordAge [maxPasswordAgeType] <p>The number of days that an IAM user password is valid.</p>
-- * ExpirePasswords [booleanType] <p>Indicates whether passwords in the account expire. Returns true if <code>MaxPasswordAge</code> contains a value greater than 0. Returns false if MaxPasswordAge is 0 or not present.</p>
-- @return PasswordPolicy structure as a key-value pair table
function M.PasswordPolicy(args)
	assert(args, "You must provide an argument table when creating PasswordPolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllowUsersToChangePassword"] = args["AllowUsersToChangePassword"],
		["RequireLowercaseCharacters"] = args["RequireLowercaseCharacters"],
		["RequireUppercaseCharacters"] = args["RequireUppercaseCharacters"],
		["MinimumPasswordLength"] = args["MinimumPasswordLength"],
		["RequireNumbers"] = args["RequireNumbers"],
		["PasswordReusePrevention"] = args["PasswordReusePrevention"],
		["HardExpiry"] = args["HardExpiry"],
		["RequireSymbols"] = args["RequireSymbols"],
		["MaxPasswordAge"] = args["MaxPasswordAge"],
		["ExpirePasswords"] = args["ExpirePasswords"],
	}
	asserts.AssertPasswordPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the IAM user whose signing certificates you want to examine.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListSigningCertificatesRequest structure as a key-value pair table
function M.ListSigningCertificatesRequest(args)
	assert(args, "You must provide an argument table when creating ListSigningCertificatesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListSigningCertificatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerCertificateMetadata [ServerCertificateMetadata] <p>The meta information of the uploaded server certificate without its certificate body, certificate chain, and private key.</p>
-- @return UploadServerCertificateResponse structure as a key-value pair table
function M.UploadServerCertificateResponse(args)
	assert(args, "You must provide an argument table when creating UploadServerCertificateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerCertificateMetadata"] = args["ServerCertificateMetadata"],
	}
	asserts.AssertUploadServerCertificateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [groupNameType] <p>The name (friendly name, not ARN) identifying the group that the policy is embedded in.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyName [policyNameType] <p>The name identifying the policy document to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: GroupName
-- Required key: PolicyName
-- @return DeleteGroupPolicyRequest structure as a key-value pair table
function M.DeleteGroupPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteGroupPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertDeleteGroupPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRoleRequest = { ["Description"] = true, ["AssumeRolePolicyDocument"] = true, ["MaxSessionDuration"] = true, ["RoleName"] = true, ["Path"] = true, ["PermissionsBoundary"] = true, nil }

function asserts.AssertCreateRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	assert(struct["AssumeRolePolicyDocument"], "Expected key AssumeRolePolicyDocument to exist in table")
	if struct["Description"] then asserts.AssertroleDescriptionType(struct["Description"]) end
	if struct["AssumeRolePolicyDocument"] then asserts.AssertpolicyDocumentType(struct["AssumeRolePolicyDocument"]) end
	if struct["MaxSessionDuration"] then asserts.AssertroleMaxSessionDurationType(struct["MaxSessionDuration"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["PermissionsBoundary"] then asserts.AssertarnType(struct["PermissionsBoundary"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRoleRequest[k], "CreateRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRoleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [roleDescriptionType] <p>A description of the role.</p>
-- * AssumeRolePolicyDocument [policyDocumentType] <p>The trust relationship policy document that grants an entity permission to assume the role.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * MaxSessionDuration [roleMaxSessionDurationType] <p>The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.</p> <p>Anyone who assumes the role from the AWS CLI or API can use the <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code> CLI parameter to request a longer session. The <code>MaxSessionDuration</code> setting determines the maximum duration that can be requested using the <code>DurationSeconds</code> parameter. If users don't specify a value for the <code>DurationSeconds</code> parameter, their security credentials are valid for one hour by default. This applies when you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI operations but does not apply when you use those operations to create a console URL. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM Roles</a> in the <i>IAM User Guide</i>.</p>
-- * RoleName [roleNameType] <p>The name of the role to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p> <p>Role names are not distinguished by case. For example, you cannot create roles named both "PRODROLE" and "prodrole".</p>
-- * Path [pathType] <p> The path to the role. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * PermissionsBoundary [arnType] <p>The ARN of the policy that is used to set the permissions boundary for the role.</p>
-- Required key: RoleName
-- Required key: AssumeRolePolicyDocument
-- @return CreateRoleRequest structure as a key-value pair table
function M.CreateRoleRequest(args)
	assert(args, "You must provide an argument table when creating CreateRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["AssumeRolePolicyDocument"] = args["AssumeRolePolicyDocument"],
		["MaxSessionDuration"] = args["MaxSessionDuration"],
		["RoleName"] = args["RoleName"],
		["Path"] = args["Path"],
		["PermissionsBoundary"] = args["PermissionsBoundary"],
	}
	asserts.AssertCreateRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [policyVersionIdType] <p>The version of the policy to set as the default (operative) version.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy whose default version you want to set.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: PolicyArn
-- Required key: VersionId
-- @return SetDefaultPolicyVersionRequest structure as a key-value pair table
function M.SetDefaultPolicyVersionRequest(args)
	assert(args, "You must provide an argument table when creating SetDefaultPolicyVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertSetDefaultPolicyVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoginProfile [LoginProfile] <p>A structure containing the user name and password create date.</p>
-- Required key: LoginProfile
-- @return CreateLoginProfileResponse structure as a key-value pair table
function M.CreateLoginProfileResponse(args)
	assert(args, "You must provide an argument table when creating CreateLoginProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoginProfile"] = args["LoginProfile"],
	}
	asserts.AssertCreateLoginProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Role [Role] <p>A <a>Role</a> object that contains details about the newly created role.</p>
-- @return CreateServiceLinkedRoleResponse structure as a key-value pair table
function M.CreateServiceLinkedRoleResponse(args)
	assert(args, "You must provide an argument table when creating CreateServiceLinkedRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Role"] = args["Role"],
	}
	asserts.AssertCreateServiceLinkedRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to delete. You can get a list of OpenID Connect provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>
-- Required key: OpenIDConnectProviderArn
-- @return DeleteOpenIDConnectProviderRequest structure as a key-value pair table
function M.DeleteOpenIDConnectProviderRequest(args)
	assert(args, "You must provide an argument table when creating DeleteOpenIDConnectProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OpenIDConnectProviderArn"] = args["OpenIDConnectProviderArn"],
	}
	asserts.AssertDeleteOpenIDConnectProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRoleResponse = { nil }

function asserts.AssertUpdateRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRoleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateRoleResponse[k], "UpdateRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRoleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateRoleResponse structure as a key-value pair table
function M.UpdateRoleResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceSpecificCredentials [ServiceSpecificCredentialsListType] <p>A list of structures that each contain details about a service-specific credential.</p>
-- @return ListServiceSpecificCredentialsResponse structure as a key-value pair table
function M.ListServiceSpecificCredentialsResponse(args)
	assert(args, "You must provide an argument table when creating ListServiceSpecificCredentialsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceSpecificCredentials"] = args["ServiceSpecificCredentials"],
	}
	asserts.AssertListServiceSpecificCredentialsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [entityAlreadyExistsMessage] 
-- @return EntityAlreadyExistsException structure as a key-value pair table
function M.EntityAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating EntityAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertEntityAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * PolicyNames [policyNameListType] <p>A list of policy names.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: PolicyNames
-- @return ListGroupPoliciesResponse structure as a key-value pair table
function M.ListGroupPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListGroupPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PolicyNames"] = args["PolicyNames"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListGroupPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [invalidCertificateMessage] 
-- @return InvalidCertificateException structure as a key-value pair table
function M.InvalidCertificateException(args)
	assert(args, "You must provide an argument table when creating InvalidCertificateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidCertificateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificates [certificateListType] <p>A list of the user's signing certificate information.</p>
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: Certificates
-- @return ListSigningCertificatesResponse structure as a key-value pair table
function M.ListSigningCertificatesResponse(args)
	assert(args, "You must provide an argument table when creating ListSigningCertificatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificates"] = args["Certificates"],
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListSigningCertificatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an IAM group, including all of the group's policies.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupPolicyList [policyDetailListType] <p>A list of the inline policies embedded in the group.</p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the group was created.</p>
-- * GroupName [groupNameType] <p>The friendly name that identifies the group.</p>
-- * Path [pathType] <p>The path to the group. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * AttachedManagedPolicies [attachedPoliciesListType] <p>A list of the managed policies attached to the group.</p>
-- * GroupId [idType] <p>The stable and unique string identifying the group. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * Arn [arnType] 
-- @return GroupDetail structure as a key-value pair table
function M.GroupDetail(args)
	assert(args, "You must provide an argument table when creating GroupDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupPolicyList"] = args["GroupPolicyList"],
		["CreateDate"] = args["CreateDate"],
		["GroupName"] = args["GroupName"],
		["Path"] = args["Path"],
		["AttachedManagedPolicies"] = args["AttachedManagedPolicies"],
		["GroupId"] = args["GroupId"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGroupDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Base32StringSeed [BootstrapDatum] <p> The Base32 seed defined as specified in <a href="https://tools.ietf.org/html/rfc3548.txt">RFC3548</a>. The <code>Base32StringSeed</code> is Base64-encoded. </p>
-- * SerialNumber [serialNumberType] <p>The serial number associated with <code>VirtualMFADevice</code>.</p>
-- * EnableDate [dateType] <p>The date and time on which the virtual MFA device was enabled.</p>
-- * User [User] <p>The IAM user associated with this virtual MFA device.</p>
-- * QRCodePNG [BootstrapDatum] <p> A QR code PNG image that encodes <code>otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String</code> where <code>$virtualMFADeviceName</code> is one of the create call arguments, <code>AccountName</code> is the user name if set (otherwise, the account ID otherwise), and <code>Base32String</code> is the seed in Base32 format. The <code>Base32String</code> value is Base64-encoded. </p>
-- Required key: SerialNumber
-- @return VirtualMFADevice structure as a key-value pair table
function M.VirtualMFADevice(args)
	assert(args, "You must provide an argument table when creating VirtualMFADevice")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Base32StringSeed"] = args["Base32StringSeed"],
		["SerialNumber"] = args["SerialNumber"],
		["EnableDate"] = args["EnableDate"],
		["User"] = args["User"],
		["QRCodePNG"] = args["QRCodePNG"],
	}
	asserts.AssertVirtualMFADevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: UserName
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
		["UserName"] = args["UserName"],
	}
	asserts.AssertDeleteUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Role = { ["Description"] = true, ["AssumeRolePolicyDocument"] = true, ["MaxSessionDuration"] = true, ["RoleId"] = true, ["CreateDate"] = true, ["RoleName"] = true, ["Path"] = true, ["Arn"] = true, ["PermissionsBoundary"] = true, nil }

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
	if struct["MaxSessionDuration"] then asserts.AssertroleMaxSessionDurationType(struct["MaxSessionDuration"]) end
	if struct["RoleId"] then asserts.AssertidType(struct["RoleId"]) end
	if struct["CreateDate"] then asserts.AssertdateType(struct["CreateDate"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["Arn"] then asserts.AssertarnType(struct["Arn"]) end
	if struct["PermissionsBoundary"] then asserts.AssertAttachedPermissionsBoundary(struct["PermissionsBoundary"]) end
	for k,_ in pairs(struct) do
		assert(keys.Role[k], "Role contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Role
-- <p>Contains information about an IAM role. This structure is returned as a response element in several API operations that interact with roles.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [roleDescriptionType] <p>A description of the role that you provide.</p>
-- * AssumeRolePolicyDocument [policyDocumentType] <p>The policy that grants an entity permission to assume the role.</p>
-- * MaxSessionDuration [roleMaxSessionDurationType] <p>The maximum session duration (in seconds) for the specified role. Anyone who uses the AWS CLI or API to assume the role can specify the duration using the optional <code>DurationSeconds</code> API parameter or <code>duration-seconds</code> CLI parameter.</p>
-- * RoleId [idType] <p> The stable and unique string identifying the role. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the role was created.</p>
-- * RoleName [roleNameType] <p>The friendly name that identifies the role.</p>
-- * Path [pathType] <p> The path to the role. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- * Arn [arnType] <p> The Amazon Resource Name (ARN) specifying the role. For more information about ARNs and how to use them in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i> guide. </p>
-- * PermissionsBoundary [AttachedPermissionsBoundary] <p>The ARN of the policy used to set the permissions boundary for the role.</p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>
-- Required key: Path
-- Required key: RoleName
-- Required key: RoleId
-- Required key: Arn
-- Required key: CreateDate
-- @return Role structure as a key-value pair table
function M.Role(args)
	assert(args, "You must provide an argument table when creating Role")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["AssumeRolePolicyDocument"] = args["AssumeRolePolicyDocument"],
		["MaxSessionDuration"] = args["MaxSessionDuration"],
		["RoleId"] = args["RoleId"],
		["CreateDate"] = args["CreateDate"],
		["RoleName"] = args["RoleName"],
		["Path"] = args["Path"],
		["Arn"] = args["Arn"],
		["PermissionsBoundary"] = args["PermissionsBoundary"],
	}
	asserts.AssertRole(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * PolicyNames [policyNameListType] <p>A list of policy names.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: PolicyNames
-- @return ListUserPoliciesResponse structure as a key-value pair table
function M.ListUserPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListUserPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PolicyNames"] = args["PolicyNames"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListUserPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServerCertificateName [serverCertificateNameType] <p>The name of the server certificate you want to retrieve information about.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: ServerCertificateName
-- @return GetServerCertificateRequest structure as a key-value pair table
function M.GetServerCertificateRequest(args)
	assert(args, "You must provide an argument table when creating GetServerCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServerCertificateName"] = args["ServerCertificateName"],
	}
	asserts.AssertGetServerCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserDetail = { ["UserName"] = true, ["GroupList"] = true, ["PermissionsBoundary"] = true, ["CreateDate"] = true, ["UserId"] = true, ["UserPolicyList"] = true, ["Path"] = true, ["AttachedManagedPolicies"] = true, ["Arn"] = true, nil }

function asserts.AssertUserDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserDetail to be of type 'table'")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["GroupList"] then asserts.AssertgroupNameListType(struct["GroupList"]) end
	if struct["PermissionsBoundary"] then asserts.AssertAttachedPermissionsBoundary(struct["PermissionsBoundary"]) end
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
-- <p>Contains information about an IAM user, including all the user's policies and all the IAM groups the user is in.</p> <p>This data type is used as a response element in the <a>GetAccountAuthorizationDetails</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The friendly name identifying the user.</p>
-- * GroupList [groupNameListType] <p>A list of IAM groups that the user is in.</p>
-- * PermissionsBoundary [AttachedPermissionsBoundary] <p>The ARN of the policy used to set the permissions boundary for the user.</p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the user was created.</p>
-- * UserId [idType] <p>The stable and unique string identifying the user. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * UserPolicyList [policyDetailListType] <p>A list of the inline policies embedded in the user.</p>
-- * Path [pathType] <p>The path to the user. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * AttachedManagedPolicies [attachedPoliciesListType] <p>A list of the managed policies attached to the user.</p>
-- * Arn [arnType] 
-- @return UserDetail structure as a key-value pair table
function M.UserDetail(args)
	assert(args, "You must provide an argument table when creating UserDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["GroupList"] = args["GroupList"],
		["PermissionsBoundary"] = args["PermissionsBoundary"],
		["CreateDate"] = args["CreateDate"],
		["UserId"] = args["UserId"],
		["UserPolicyList"] = args["UserPolicyList"],
		["Path"] = args["Path"],
		["AttachedManagedPolicies"] = args["AttachedManagedPolicies"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUserDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [OpenIDConnectProviderUrlType] <p>The URL of the identity provider. The URL must begin with <code>https://</code> and should correspond to the <code>iss</code> claim in the provider's OpenID Connect ID tokens. Per the OIDC standard, path components are allowed but query parameters are not. Typically the URL consists of only a hostname, like <code>https://server.example.org</code> or <code>https://example.com</code>.</p> <p>You cannot register the same provider multiple times in a single AWS account. If you try to submit a URL that has already been used for an OpenID Connect provider in the AWS account, you will get an error.</p>
-- * ThumbprintList [thumbprintListType] <p>A list of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificates. Typically this list includes only one entry. However, IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain multiple thumbprints if the identity provider is rotating certificates.</p> <p>The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509 certificate used by the domain where the OpenID Connect provider makes its keys available. It is always a 40-character string.</p> <p>You must provide at least one thumbprint when creating an IAM OIDC provider. For example, assume that the OIDC provider is <code>server.example.com</code> and the provider stores its keys at https://keys.server.example.com/openid-connect. In that case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate used by https://keys.server.example.com.</p> <p>For more information about obtaining the OIDC provider's thumbprint, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html">Obtaining the Thumbprint for an OpenID Connect Provider</a> in the <i>IAM User Guide</i>.</p>
-- * ClientIDList [clientIDListType] <p>A list of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the <code>client_id</code> parameter on OAuth requests.)</p> <p>You can register multiple client IDs with the same provider. For example, you might have multiple applications that use the same OIDC provider. You cannot register more than 100 client IDs with a single IAM OIDC provider.</p> <p>There is no defined format for a client ID. The <code>CreateOpenIDConnectProviderRequest</code> operation accepts client IDs up to 255 characters long.</p>
-- Required key: Url
-- Required key: ThumbprintList
-- @return CreateOpenIDConnectProviderRequest structure as a key-value pair table
function M.CreateOpenIDConnectProviderRequest(args)
	assert(args, "You must provide an argument table when creating CreateOpenIDConnectProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["ThumbprintList"] = args["ThumbprintList"],
		["ClientIDList"] = args["ClientIDList"],
	}
	asserts.AssertCreateOpenIDConnectProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * Users [userListType] <p>A list of users.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: Users
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
		["Marker"] = args["Marker"],
		["Users"] = args["Users"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListUsersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user whose MFA device you want to resynchronize.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * AuthenticationCode1 [authenticationCodeType] <p>An authentication code emitted by the device.</p> <p>The format for this parameter is a sequence of six digits.</p>
-- * SerialNumber [serialNumberType] <p>Serial number that uniquely identifies the MFA device.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * AuthenticationCode2 [authenticationCodeType] <p>A subsequent authentication code emitted by the device.</p> <p>The format for this parameter is a sequence of six digits.</p>
-- Required key: UserName
-- Required key: SerialNumber
-- Required key: AuthenticationCode1
-- Required key: AuthenticationCode2
-- @return ResyncMFADeviceRequest structure as a key-value pair table
function M.ResyncMFADeviceRequest(args)
	assert(args, "You must provide an argument table when creating ResyncMFADeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["AuthenticationCode1"] = args["AuthenticationCode1"],
		["SerialNumber"] = args["SerialNumber"],
		["AuthenticationCode2"] = args["AuthenticationCode2"],
	}
	asserts.AssertResyncMFADeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the new IAM OpenID Connect provider that is created. For more information, see <a>OpenIDConnectProviderListEntry</a>. </p>
-- @return CreateOpenIDConnectProviderResponse structure as a key-value pair table
function M.CreateOpenIDConnectProviderResponse(args)
	assert(args, "You must provide an argument table when creating CreateOpenIDConnectProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OpenIDConnectProviderArn"] = args["OpenIDConnectProviderArn"],
	}
	asserts.AssertCreateOpenIDConnectProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Role [Role] <p>A structure that contains details about the modified role.</p>
-- @return UpdateRoleDescriptionResponse structure as a key-value pair table
function M.UpdateRoleDescriptionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRoleDescriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Role"] = args["Role"],
	}
	asserts.AssertUpdateRoleDescriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceProfile [InstanceProfile] <p>A structure containing details about the instance profile.</p>
-- Required key: InstanceProfile
-- @return GetInstanceProfileResponse structure as a key-value pair table
function M.GetInstanceProfileResponse(args)
	assert(args, "You must provide an argument table when creating GetInstanceProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceProfile"] = args["InstanceProfile"],
	}
	asserts.AssertGetInstanceProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListAccessKeysRequest structure as a key-value pair table
function M.ListAccessKeysRequest(args)
	assert(args, "You must provide an argument table when creating ListAccessKeysRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListAccessKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: PolicyArn
-- @return ListPolicyVersionsRequest structure as a key-value pair table
function M.ListPolicyVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListPolicyVersionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertListPolicyVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [groupNameType] <p>The name of the group the policy is associated with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyName [policyNameType] <p>The name of the policy document to get.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: GroupName
-- Required key: PolicyName
-- @return GetGroupPolicyRequest structure as a key-value pair table
function M.GetGroupPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetGroupPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertGetGroupPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * GroupName [groupNameType] <p>The name of the group.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: GroupName
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
		["Marker"] = args["Marker"],
		["GroupName"] = args["GroupName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertGetGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example, the prefix <code>/application_abc/component_xyz/</code> gets all roles whose path starts with <code>/application_abc/component_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all roles. This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListRolesRequest structure as a key-value pair table
function M.ListRolesRequest(args)
	assert(args, "You must provide an argument table when creating ListRolesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListRolesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserPermissionsBoundaryRequest = { ["UserName"] = true, nil }

function asserts.AssertDeleteUserPermissionsBoundaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserPermissionsBoundaryRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserPermissionsBoundaryRequest[k], "DeleteUserPermissionsBoundaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserPermissionsBoundaryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name (friendly name, not ARN) of the IAM user from which you want to remove the permissions boundary.</p>
-- Required key: UserName
-- @return DeleteUserPermissionsBoundaryRequest structure as a key-value pair table
function M.DeleteUserPermissionsBoundaryRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserPermissionsBoundaryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
	}
	asserts.AssertDeleteUserPermissionsBoundaryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the user whose password you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PasswordResetRequired [booleanObjectType] <p>Allows this new password to be used only once by requiring the specified IAM user to set a new password on next sign-in.</p>
-- * Password [passwordType] <p>The new password for the specified IAM user.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul> <p>However, the format can be further restricted by the account administrator by setting a password policy on the AWS account. For more information, see <a>UpdateAccountPasswordPolicy</a>.</p>
-- Required key: UserName
-- @return UpdateLoginProfileRequest structure as a key-value pair table
function M.UpdateLoginProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateLoginProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PasswordResetRequired"] = args["PasswordResetRequired"],
		["Password"] = args["Password"],
	}
	asserts.AssertUpdateLoginProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyNotAttachableException = { ["message"] = true, nil }

function asserts.AssertPolicyNotAttachableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyNotAttachableException to be of type 'table'")
	if struct["message"] then asserts.AssertpolicyNotAttachableMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyNotAttachableException[k], "PolicyNotAttachableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyNotAttachableException
-- <p>The request failed because AWS service role policies can only be attached to the service-linked role for that service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [policyNotAttachableMessage] 
-- @return PolicyNotAttachableException structure as a key-value pair table
function M.PolicyNotAttachableException(args)
	assert(args, "You must provide an argument table when creating PolicyNotAttachableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertPolicyNotAttachableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ThumbprintList [thumbprintListType] <p>A list of certificate thumbprints that are associated with the specified IAM OpenID Connect provider. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>
-- * OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: OpenIDConnectProviderArn
-- Required key: ThumbprintList
-- @return UpdateOpenIDConnectProviderThumbprintRequest structure as a key-value pair table
function M.UpdateOpenIDConnectProviderThumbprintRequest(args)
	assert(args, "You must provide an argument table when creating UpdateOpenIDConnectProviderThumbprintRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ThumbprintList"] = args["ThumbprintList"],
		["OpenIDConnectProviderArn"] = args["OpenIDConnectProviderArn"],
	}
	asserts.AssertUpdateOpenIDConnectProviderThumbprintRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyVersion [PolicyVersion] <p>A structure containing details about the new policy version.</p>
-- @return CreatePolicyVersionResponse structure as a key-value pair table
function M.CreatePolicyVersionResponse(args)
	assert(args, "You must provide an argument table when creating CreatePolicyVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyVersion"] = args["PolicyVersion"],
	}
	asserts.AssertCreatePolicyVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user to associate the policy with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyName [policyNameType] <p>The name of the policy document.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyDocument [policyDocumentType] <p>The policy document.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- Required key: UserName
-- Required key: PolicyName
-- Required key: PolicyDocument
-- @return PutUserPolicyRequest structure as a key-value pair table
function M.PutUserPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutUserPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PolicyName"] = args["PolicyName"],
		["PolicyDocument"] = args["PolicyDocument"],
	}
	asserts.AssertPutUserPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [limitExceededMessage] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [invalidPublicKeyMessage] 
-- @return InvalidPublicKeyException structure as a key-value pair table
function M.InvalidPublicKeyException(args)
	assert(args, "You must provide an argument table when creating InvalidPublicKeyException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidPublicKeyException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about the last time an AWS access key was used.</p> <p>This data type is used as a response element in the <a>GetAccessKeyLastUsed</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Region [stringType] <p>The AWS region where this access key was most recently used. This field is displays "N/A" in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.</p> </li> <li> <p>There is no sign-in data associated with the user</p> </li> </ul> <p>For more information about AWS regions, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html">Regions and Endpoints</a> in the Amazon Web Services General Reference.</p>
-- * ServiceName [stringType] <p>The name of the AWS service with which this access key was most recently used. This field displays "N/A" in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.</p> </li> <li> <p>There is no sign-in data associated with the user</p> </li> </ul>
-- * LastUsedDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the access key was most recently used. This field is null in the following situations:</p> <ul> <li> <p>The user does not have an access key.</p> </li> <li> <p>An access key exists but has never been used, at least not since IAM started tracking this information on April 22nd, 2015.</p> </li> <li> <p>There is no sign-in data associated with the user</p> </li> </ul>
-- Required key: LastUsedDate
-- Required key: ServiceName
-- Required key: Region
-- @return AccessKeyLastUsed structure as a key-value pair table
function M.AccessKeyLastUsed(args)
	assert(args, "You must provide an argument table when creating AccessKeyLastUsed")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Region"] = args["Region"],
		["ServiceName"] = args["ServiceName"],
		["LastUsedDate"] = args["LastUsedDate"],
	}
	asserts.AssertAccessKeyLastUsed(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>A structure with details about the new IAM user.</p>
-- @return CreateUserResponse structure as a key-value pair table
function M.CreateUserResponse(args)
	assert(args, "You must provide an argument table when creating CreateUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["User"] = args["User"],
	}
	asserts.AssertCreateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SetAsDefault [booleanType] <p>Specifies whether to set this version as the policy's default version.</p> <p>When this parameter is <code>true</code>, the new policy version becomes the operative version. That is, it becomes the version that is in effect for the IAM users, groups, and roles that the policy is attached to.</p> <p>For more information about managed policy versions, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for Managed Policies</a> in the <i>IAM User Guide</i>.</p>
-- * PolicyDocument [policyDocumentType] <p>The JSON policy document that you want to use as the content for this new version of the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new version.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: PolicyArn
-- Required key: PolicyDocument
-- @return CreatePolicyVersionRequest structure as a key-value pair table
function M.CreatePolicyVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreatePolicyVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SetAsDefault"] = args["SetAsDefault"],
		["PolicyDocument"] = args["PolicyDocument"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertCreatePolicyVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>A structure containing details about the IAM user.</p> <important> <p>Due to a service issue, password last used data does not include password use from May 3rd 2018 22:50 PDT to May 23rd 2018 14:08 PDT. This affects <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_finding-unused.html">last sign-in</a> dates shown in the IAM console and password last used dates in the <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_getting-report.html">IAM credential report</a>, and returned by this GetUser API. If users signed in during the affected time, the password last used date that is returned is the date the user last signed in before May 3rd 2018. For users that signed in after May 23rd 2018 14:08 PDT, the returned password last used date is accurate.</p> <p>If you use password last used information to identify unused credentials for deletion, such as deleting users who did not sign in to AWS in the last 90 days, we recommend that you adjust your evaluation window to include dates after May 23rd 2018. Alternatively, if your users use access keys to access AWS programmatically you can refer to access key last used information because it is accurate for all dates. </p> </important>
-- Required key: User
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
		["User"] = args["User"],
	}
	asserts.AssertGetUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceHandlingOption [ResourceHandlingOptionType] <p>Specifies the type of simulation to run. Different API operations that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.</p> <p>Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a> in the <i>Amazon EC2 User Guide</i>.</p> <ul> <li> <p> <b>EC2-Classic-InstanceStore</b> </p> <p>instance, image, security-group</p> </li> <li> <p> <b>EC2-Classic-EBS</b> </p> <p>instance, image, security-group, volume</p> </li> <li> <p> <b>EC2-VPC-InstanceStore</b> </p> <p>instance, image, security-group, network-interface</p> </li> <li> <p> <b>EC2-VPC-InstanceStore-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet</p> </li> <li> <p> <b>EC2-VPC-EBS</b> </p> <p>instance, image, security-group, network-interface, volume</p> </li> <li> <p> <b>EC2-VPC-EBS-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet, volume</p> </li> </ul>
-- * ContextEntries [ContextEntryListType] <p>A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permission policies, the corresponding value is supplied.</p>
-- * CallerArn [ResourceNameType] <p>The ARN of the IAM user that you want to use as the simulated caller of the API operations. <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> so that the policy's <code>Principal</code> element has a value to use in evaluating the policy.</p> <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.</p>
-- * PolicyInputList [SimulationPolicyListType] <p>A list of policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy. Do not include any resource-based policies in this parameter. Any resource-based policy must be submitted with the <code>ResourcePolicy</code> parameter. The policies cannot be "scope-down" policies, such as you could include in a call to <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html">GetFederationToken</a> or one of the <a href="http://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html">AssumeRole</a> API operations. In other words, do not use policies designed to restrict what a user can do while using the temporary credentials.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * ResourcePolicy [policyDocumentType] <p>A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- * ActionNames [ActionNameListType] <p>A list of names of API operations to evaluate in the simulation. Each operation is evaluated against each resource. Each operation must include the service identifier, such as <code>iam:CreateUser</code>.</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * ResourceArns [ResourceNameListType] <p>A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided then the value defaults to <code>*</code> (all resources). Each API in the <code>ActionNames</code> parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.</p> <p>The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the <code>ResourcePolicy</code> parameter.</p> <p>If you include a <code>ResourcePolicy</code>, then it must be applicable to all of the resources included in the simulation or you receive an invalid input error.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * ResourceOwner [ResourceNameType] <p>An ARN representing the AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN, such as an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also used as the account owner of any <code>ResourcePolicy</code> included in the simulation. If the <code>ResourceOwner</code> parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in <code>CallerArn</code>. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user <code>CallerArn</code>.</p> <p>The ARN for an account uses the following syntax: <code>arn:aws:iam::<i>AWS-account-ID</i>:root</code>. For example, to represent the account with the 112233445566 ID, use the following ARN: <code>arn:aws:iam::112233445566-ID:root</code>. </p>
-- Required key: PolicyInputList
-- Required key: ActionNames
-- @return SimulateCustomPolicyRequest structure as a key-value pair table
function M.SimulateCustomPolicyRequest(args)
	assert(args, "You must provide an argument table when creating SimulateCustomPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceHandlingOption"] = args["ResourceHandlingOption"],
		["ContextEntries"] = args["ContextEntries"],
		["CallerArn"] = args["CallerArn"],
		["PolicyInputList"] = args["PolicyInputList"],
		["ResourcePolicy"] = args["ResourcePolicy"],
		["MaxItems"] = args["MaxItems"],
		["ActionNames"] = args["ActionNames"],
		["Marker"] = args["Marker"],
		["ResourceArns"] = args["ResourceArns"],
		["ResourceOwner"] = args["ResourceOwner"],
	}
	asserts.AssertSimulateCustomPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about a version of a managed policy.</p> <p>This data type is used as a response element in the <a>CreatePolicyVersion</a>, <a>GetPolicyVersion</a>, <a>ListPolicyVersions</a>, and <a>GetAccountAuthorizationDetails</a> operations. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the policy version was created.</p>
-- * VersionId [policyVersionIdType] <p>The identifier for the policy version.</p> <p>Policy version identifiers always begin with <code>v</code> (always lowercase). When a policy is created, the first policy version is <code>v1</code>. </p>
-- * Document [policyDocumentType] <p>The policy document.</p> <p>The policy document is returned in the response to the <a>GetPolicyVersion</a> and <a>GetAccountAuthorizationDetails</a> operations. It is not returned in the response to the <a>CreatePolicyVersion</a> or <a>ListPolicyVersions</a> operations. </p> <p>The policy document returned in this structure is URL-encoded compliant with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL decoding method to convert the policy back to plain JSON text. For example, if you use Java, you can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in the Java SDK. Other languages and SDKs provide similar functionality.</p>
-- * IsDefaultVersion [booleanType] <p>Specifies whether the policy version is set as the policy's default version.</p>
-- @return PolicyVersion structure as a key-value pair table
function M.PolicyVersion(args)
	assert(args, "You must provide an argument table when creating PolicyVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreateDate"] = args["CreateDate"],
		["VersionId"] = args["VersionId"],
		["Document"] = args["Document"],
		["IsDefaultVersion"] = args["IsDefaultVersion"],
	}
	asserts.AssertPolicyVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PasswordPolicy [PasswordPolicy] <p>A structure that contains details about the account's password policy.</p>
-- Required key: PasswordPolicy
-- @return GetAccountPasswordPolicyResponse structure as a key-value pair table
function M.GetAccountPasswordPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountPasswordPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PasswordPolicy"] = args["PasswordPolicy"],
	}
	asserts.AssertGetAccountPasswordPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSHPublicKey [SSHPublicKey] <p>Contains information about the SSH public key.</p>
-- @return UploadSSHPublicKeyResponse structure as a key-value pair table
function M.UploadSSHPublicKeyResponse(args)
	assert(args, "You must provide an argument table when creating UploadSSHPublicKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SSHPublicKey"] = args["SSHPublicKey"],
	}
	asserts.AssertUploadSSHPublicKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [policyVersionIdType] <p>Identifies the policy version to retrieve.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consists of the lowercase letter 'v' followed by one or two digits, and optionally followed by a period '.' and a string of letters and digits.</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the managed policy that you want information about.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: PolicyArn
-- Required key: VersionId
-- @return GetPolicyVersionRequest structure as a key-value pair table
function M.GetPolicyVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetPolicyVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertGetPolicyVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the new SAML provider resource in IAM.</p>
-- @return CreateSAMLProviderResponse structure as a key-value pair table
function M.CreateSAMLProviderResponse(args)
	assert(args, "You must provide an argument table when creating CreateSAMLProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SAMLProviderArn"] = args["SAMLProviderArn"],
	}
	asserts.AssertCreateSAMLProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [keyPairMismatchMessage] 
-- @return KeyPairMismatchException structure as a key-value pair table
function M.KeyPairMismatchException(args)
	assert(args, "You must provide an argument table when creating KeyPairMismatchException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertKeyPairMismatchException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [credentialReportNotPresentExceptionMessage] 
-- @return CredentialReportNotPresentException structure as a key-value pair table
function M.CredentialReportNotPresentException(args)
	assert(args, "You must provide an argument table when creating CredentialReportNotPresentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertCredentialReportNotPresentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateDate [dateType] <p>The date and time when the SAML provider was created.</p>
-- * ValidUntil [dateType] <p>The expiration date and time for the SAML provider.</p>
-- * Arn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider.</p>
-- @return SAMLProviderListEntry structure as a key-value pair table
function M.SAMLProviderListEntry(args)
	assert(args, "You must provide an argument table when creating SAMLProviderListEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreateDate"] = args["CreateDate"],
		["ValidUntil"] = args["ValidUntil"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertSAMLProviderListEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [serviceFailureExceptionMessage] 
-- @return ServiceFailureException structure as a key-value pair table
function M.ServiceFailureException(args)
	assert(args, "You must provide an argument table when creating ServiceFailureException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServiceFailureException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example: <code>/company/servercerts</code> would get all server certificates for which the path starts with <code>/company/servercerts</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all server certificates. This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListServerCertificatesRequest structure as a key-value pair table
function M.ListServerCertificatesRequest(args)
	assert(args, "You must provide an argument table when creating ListServerCertificatesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListServerCertificatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the AWS IAM user that owns this access key.</p> <p/>
-- * AccessKeyLastUsed [AccessKeyLastUsed] <p>Contains information about the last time the access key was used.</p>
-- @return GetAccessKeyLastUsedResponse structure as a key-value pair table
function M.GetAccessKeyLastUsedResponse(args)
	assert(args, "You must provide an argument table when creating GetAccessKeyLastUsedResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["AccessKeyLastUsed"] = args["AccessKeyLastUsed"],
	}
	asserts.AssertGetAccessKeyLastUsedResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [invalidAuthenticationCodeMessage] 
-- @return InvalidAuthenticationCodeException structure as a key-value pair table
function M.InvalidAuthenticationCodeException(args)
	assert(args, "You must provide an argument table when creating InvalidAuthenticationCodeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidAuthenticationCodeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name (friendly name, not ARN) of the role to attach the policy to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: RoleName
-- Required key: PolicyArn
-- @return AttachRolePolicyRequest structure as a key-value pair table
function M.AttachRolePolicyRequest(args)
	assert(args, "You must provide an argument table when creating AttachRolePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertAttachRolePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * AttachedPolicies [attachedPoliciesListType] <p>A list of the attached policies.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @return ListAttachedUserPoliciesResponse structure as a key-value pair table
function M.ListAttachedUserPoliciesResponse(args)
	assert(args, "You must provide an argument table when creating ListAttachedUserPoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["AttachedPolicies"] = args["AttachedPolicies"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListAttachedUserPoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user whose MFA devices you want to list.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListMFADevicesRequest structure as a key-value pair table
function M.ListMFADevicesRequest(args)
	assert(args, "You must provide an argument table when creating ListMFADevicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListMFADevicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [duplicateCertificateMessage] 
-- @return DuplicateCertificateException structure as a key-value pair table
function M.DuplicateCertificateException(args)
	assert(args, "You must provide an argument table when creating DuplicateCertificateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDuplicateCertificateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [credentialReportExpiredExceptionMessage] 
-- @return CredentialReportExpiredException structure as a key-value pair table
function M.CredentialReportExpiredException(args)
	assert(args, "You must provide an argument table when creating CredentialReportExpiredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertCredentialReportExpiredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential. If this value is not specified, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier of the service-specific credential.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: ServiceSpecificCredentialId
-- @return ResetServiceSpecificCredentialRequest structure as a key-value pair table
function M.ResetServiceSpecificCredentialRequest(args)
	assert(args, "You must provide an argument table when creating ResetServiceSpecificCredentialRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["ServiceSpecificCredentialId"] = args["ServiceSpecificCredentialId"],
	}
	asserts.AssertResetServiceSpecificCredentialRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * SSHPublicKeys [SSHPublicKeyListType] <p>A list of the SSH public keys assigned to IAM user.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @return ListSSHPublicKeysResponse structure as a key-value pair table
function M.ListSSHPublicKeysResponse(args)
	assert(args, "You must provide an argument table when creating ListSSHPublicKeysResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["SSHPublicKeys"] = args["SSHPublicKeys"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListSSHPublicKeysResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SummaryMap [summaryMapType] <p>A set of key value pairs containing information about IAM entity usage and IAM quotas.</p>
-- @return GetAccountSummaryResponse structure as a key-value pair table
function M.GetAccountSummaryResponse(args)
	assert(args, "You must provide an argument table when creating GetAccountSummaryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SummaryMap"] = args["SummaryMap"],
	}
	asserts.AssertGetAccountSummaryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserRequest = { ["UserName"] = true, ["Path"] = true, ["PermissionsBoundary"] = true, nil }

function asserts.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["Path"] then asserts.AssertpathType(struct["Path"]) end
	if struct["PermissionsBoundary"] then asserts.AssertarnType(struct["PermissionsBoundary"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserRequest[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the user to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-. User names are not distinguished by case. For example, you cannot create users named both "TESTUSER" and "testuser".</p>
-- * Path [pathType] <p> The path for the user name. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * PermissionsBoundary [arnType] <p>The ARN of the policy that is used to set the permissions boundary for the user.</p>
-- Required key: UserName
-- @return CreateUserRequest structure as a key-value pair table
function M.CreateUserRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Path"] = args["Path"],
		["PermissionsBoundary"] = args["PermissionsBoundary"],
	}
	asserts.AssertCreateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about a group that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [groupNameType] <p>The name (friendly name, not ARN) identifying the group.</p>
-- * GroupId [idType] <p>The stable and unique string identifying the group. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>
-- @return PolicyGroup structure as a key-value pair table
function M.PolicyGroup(args)
	assert(args, "You must provide an argument table when creating PolicyGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertPolicyGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPoliciesRequest = { ["OnlyAttached"] = true, ["PolicyUsageFilter"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, ["Marker"] = true, ["Scope"] = true, nil }

function asserts.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	if struct["OnlyAttached"] then asserts.AssertbooleanType(struct["OnlyAttached"]) end
	if struct["PolicyUsageFilter"] then asserts.AssertPolicyUsageType(struct["PolicyUsageFilter"]) end
	if struct["PathPrefix"] then asserts.AssertpolicyPathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	if struct["Scope"] then asserts.AssertpolicyScopeType(struct["Scope"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesRequest[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OnlyAttached [booleanType] <p>A flag to filter the results to only the attached policies.</p> <p>When <code>OnlyAttached</code> is <code>true</code>, the returned list contains only the policies that are attached to an IAM user, group, or role. When <code>OnlyAttached</code> is <code>false</code>, or when the parameter is not included, all policies are returned.</p>
-- * PolicyUsageFilter [PolicyUsageType] <p>The policy usage method to use for filtering the results.</p> <p>To list only permissions policies, set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only the policies used to set permissions boundaries, set the value to <code>PermissionsBoundary</code>.</p> <p>This parameter is optional. If it is not included, all policies are returned. </p>
-- * PathPrefix [policyPathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies. This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * Scope [policyScopeType] <p>The scope to use for filtering the results.</p> <p>To list only AWS managed policies, set <code>Scope</code> to <code>AWS</code>. To list only the customer managed policies in your AWS account, set <code>Scope</code> to <code>Local</code>.</p> <p>This parameter is optional. If it is not included, or if it is set to <code>All</code>, all policies are returned.</p>
-- @return ListPoliciesRequest structure as a key-value pair table
function M.ListPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OnlyAttached"] = args["OnlyAttached"],
		["PolicyUsageFilter"] = args["PolicyUsageFilter"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
		["Marker"] = args["Marker"],
		["Scope"] = args["Scope"],
	}
	asserts.AssertListPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetServiceLinkedRoleDeletionStatusRequest = { ["DeletionTaskId"] = true, nil }

function asserts.AssertGetServiceLinkedRoleDeletionStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceLinkedRoleDeletionStatusRequest to be of type 'table'")
	assert(struct["DeletionTaskId"], "Expected key DeletionTaskId to exist in table")
	if struct["DeletionTaskId"] then asserts.AssertDeletionTaskIdType(struct["DeletionTaskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServiceLinkedRoleDeletionStatusRequest[k], "GetServiceLinkedRoleDeletionStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceLinkedRoleDeletionStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeletionTaskId [DeletionTaskIdType] <p>The deletion task identifier. This identifier is returned by the <a>DeleteServiceLinkedRole</a> operation in the format <code>task/aws-service-role/&lt;service-principal-name&gt;/&lt;role-name&gt;/&lt;task-uuid&gt;</code>.</p>
-- Required key: DeletionTaskId
-- @return GetServiceLinkedRoleDeletionStatusRequest structure as a key-value pair table
function M.GetServiceLinkedRoleDeletionStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetServiceLinkedRoleDeletionStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeletionTaskId"] = args["DeletionTaskId"],
	}
	asserts.AssertGetServiceLinkedRoleDeletionStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountAlias [accountAliasType] <p>The account alias to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have two dashes in a row.</p>
-- Required key: AccountAlias
-- @return CreateAccountAliasRequest structure as a key-value pair table
function M.CreateAccountAliasRequest(args)
	assert(args, "You must provide an argument table when creating CreateAccountAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountAlias"] = args["AccountAlias"],
	}
	asserts.AssertCreateAccountAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyName [policyNameType] <p>The friendly name of the policy.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyDocument [policyDocumentType] <p>The JSON policy document that you want to use as the content for the new policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * Description [policyDescriptionType] <p>A friendly description of the policy.</p> <p>Typically used to store information about the permissions defined in the policy. For example, "Grants access to production DynamoDB tables."</p> <p>The policy description is immutable. After a value is assigned, it cannot be changed.</p>
-- * Path [policyPathType] <p>The path for the policy.</p> <p>For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- Required key: PolicyName
-- Required key: PolicyDocument
-- @return CreatePolicyRequest structure as a key-value pair table
function M.CreatePolicyRequest(args)
	assert(args, "You must provide an argument table when creating CreatePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyName"] = args["PolicyName"],
		["PolicyDocument"] = args["PolicyDocument"],
		["Description"] = args["Description"],
		["Path"] = args["Path"],
	}
	asserts.AssertCreatePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- * VirtualMFADevices [virtualMFADeviceListType] <p> The list of virtual MFA devices in the current account that match the <code>AssignmentStatus</code> value that was passed in the request.</p>
-- Required key: VirtualMFADevices
-- @return ListVirtualMFADevicesResponse structure as a key-value pair table
function M.ListVirtualMFADevicesResponse(args)
	assert(args, "You must provide an argument table when creating ListVirtualMFADevicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["VirtualMFADevices"] = args["VirtualMFADevices"],
	}
	asserts.AssertListVirtualMFADevicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Role [Role] <p>A structure containing details about the new role.</p>
-- Required key: Role
-- @return CreateRoleResponse structure as a key-value pair table
function M.CreateRoleResponse(args)
	assert(args, "You must provide an argument table when creating CreateRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Role"] = args["Role"],
	}
	asserts.AssertCreateRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NewPath [pathType] <p>The new path for the server certificate. Include this only if you are updating the server certificate's path.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * NewServerCertificateName [serverCertificateNameType] <p>The new name for the server certificate. Include this only if you are updating the server certificate's name. The name of the certificate cannot contain any spaces.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * ServerCertificateName [serverCertificateNameType] <p>The name of the server certificate that you want to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: ServerCertificateName
-- @return UpdateServerCertificateRequest structure as a key-value pair table
function M.UpdateServerCertificateRequest(args)
	assert(args, "You must provide an argument table when creating UpdateServerCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NewPath"] = args["NewPath"],
		["NewServerCertificateName"] = args["NewServerCertificateName"],
		["ServerCertificateName"] = args["ServerCertificateName"],
	}
	asserts.AssertUpdateServerCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [groupNameType] <p>The name (friendly name, not ARN) of the group to attach the policy to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: GroupName
-- Required key: PolicyArn
-- @return AttachGroupPolicyRequest structure as a key-value pair table
function M.AttachGroupPolicyRequest(args)
	assert(args, "You must provide an argument table when creating AttachGroupPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertAttachGroupPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- @return ListAccountAliasesRequest structure as a key-value pair table
function M.ListAccountAliasesRequest(args)
	assert(args, "You must provide an argument table when creating ListAccountAliasesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListAccountAliasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RoleUsageType = { ["Region"] = true, ["Resources"] = true, nil }

function asserts.AssertRoleUsageType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoleUsageType to be of type 'table'")
	if struct["Region"] then asserts.AssertRegionNameType(struct["Region"]) end
	if struct["Resources"] then asserts.AssertArnListType(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.RoleUsageType[k], "RoleUsageType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoleUsageType
-- <p>An object that contains details about how a service-linked role is used, if that information is returned by the service.</p> <p>This data type is used as a response element in the <a>GetServiceLinkedRoleDeletionStatus</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Region [RegionNameType] <p>The name of the region where the service-linked role is being used.</p>
-- * Resources [ArnListType] <p>The name of the resource that is using the service-linked role.</p>
-- @return RoleUsageType structure as a key-value pair table
function M.RoleUsageType(args)
	assert(args, "You must provide an argument table when creating RoleUsageType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Region"] = args["Region"],
		["Resources"] = args["Resources"],
	}
	asserts.AssertRoleUsageType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user to add.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * GroupName [groupNameType] <p>The name of the group to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: GroupName
-- Required key: UserName
-- @return AddUserToGroupRequest structure as a key-value pair table
function M.AddUserToGroupRequest(args)
	assert(args, "You must provide an argument table when creating AddUserToGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["GroupName"] = args["GroupName"],
	}
	asserts.AssertAddUserToGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name (friendly name, not ARN) of the IAM user to detach the policy from.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: UserName
-- Required key: PolicyArn
-- @return DetachUserPolicyRequest structure as a key-value pair table
function M.DetachUserPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DetachUserPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertDetachUserPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- * Roles [roleListType] <p>A list of roles.</p>
-- Required key: Roles
-- @return ListRolesResponse structure as a key-value pair table
function M.ListRolesResponse(args)
	assert(args, "You must provide an argument table when creating ListRolesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["Roles"] = args["Roles"],
	}
	asserts.AssertListRolesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an MFA device.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The user with whom the MFA device is associated.</p>
-- * SerialNumber [serialNumberType] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the device ARN.</p>
-- * EnableDate [dateType] <p>The date when the MFA device was enabled for the user.</p>
-- Required key: UserName
-- Required key: SerialNumber
-- Required key: EnableDate
-- @return MFADevice structure as a key-value pair table
function M.MFADevice(args)
	assert(args, "You must provide an argument table when creating MFADevice")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["SerialNumber"] = args["SerialNumber"],
		["EnableDate"] = args["EnableDate"],
	}
	asserts.AssertMFADevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [invalidUserTypeMessage] 
-- @return InvalidUserTypeException structure as a key-value pair table
function M.InvalidUserTypeException(args)
	assert(args, "You must provide an argument table when creating InvalidUserTypeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidUserTypeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Role [Role] <p>A structure containing details about the IAM role.</p>
-- Required key: Role
-- @return GetRoleResponse structure as a key-value pair table
function M.GetRoleResponse(args)
	assert(args, "You must provide an argument table when creating GetRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Role"] = args["Role"],
	}
	asserts.AssertGetRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the details of a service-specific credential.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential.</p>
-- * Status [statusType] <p>The status of the service-specific credential. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not.</p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the service-specific credential were created.</p>
-- * ServiceName [serviceName] <p>The name of the service associated with the service-specific credential.</p>
-- * ServicePassword [servicePassword] <p>The generated password for the service-specific credential.</p>
-- * ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier for the service-specific credential.</p>
-- * ServiceUserName [serviceUserName] <p>The generated user name for the service-specific credential. This value is generated by combining the IAM user's name combined with the ID number of the AWS account, as in <code>jane-at-123456789012</code>, for example. This value cannot be configured by the user.</p>
-- Required key: CreateDate
-- Required key: ServiceName
-- Required key: ServiceUserName
-- Required key: ServicePassword
-- Required key: ServiceSpecificCredentialId
-- Required key: UserName
-- Required key: Status
-- @return ServiceSpecificCredential structure as a key-value pair table
function M.ServiceSpecificCredential(args)
	assert(args, "You must provide an argument table when creating ServiceSpecificCredential")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["CreateDate"] = args["CreateDate"],
		["ServiceName"] = args["ServiceName"],
		["ServicePassword"] = args["ServicePassword"],
		["ServiceSpecificCredentialId"] = args["ServiceSpecificCredentialId"],
		["ServiceUserName"] = args["ServiceUserName"],
	}
	asserts.AssertServiceSpecificCredential(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SAMLProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the SAML provider that was updated.</p>
-- @return UpdateSAMLProviderResponse structure as a key-value pair table
function M.UpdateSAMLProviderResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSAMLProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SAMLProviderArn"] = args["SAMLProviderArn"],
	}
	asserts.AssertUpdateSAMLProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [serviceNotSupportedMessage] 
-- @return ServiceNotSupportedException structure as a key-value pair table
function M.ServiceNotSupportedException(args)
	assert(args, "You must provide an argument table when creating ServiceNotSupportedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServiceNotSupportedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRoleRequest = { ["MaxSessionDuration"] = true, ["RoleName"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["MaxSessionDuration"] then asserts.AssertroleMaxSessionDurationType(struct["MaxSessionDuration"]) end
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	if struct["Description"] then asserts.AssertroleDescriptionType(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRoleRequest[k], "UpdateRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRoleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxSessionDuration [roleMaxSessionDurationType] <p>The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.</p> <p>Anyone who assumes the role from the AWS CLI or API can use the <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code> CLI parameter to request a longer session. The <code>MaxSessionDuration</code> setting determines the maximum duration that can be requested using the <code>DurationSeconds</code> parameter. If users don't specify a value for the <code>DurationSeconds</code> parameter, their security credentials are valid for one hour by default. This applies when you use the <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI operations but does not apply when you use those operations to create a console URL. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM Roles</a> in the <i>IAM User Guide</i>.</p>
-- * RoleName [roleNameType] <p>The name of the role that you want to modify.</p>
-- * Description [roleDescriptionType] <p>The new description that you want to apply to the specified role.</p>
-- Required key: RoleName
-- @return UpdateRoleRequest structure as a key-value pair table
function M.UpdateRoleRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxSessionDuration"] = args["MaxSessionDuration"],
		["RoleName"] = args["RoleName"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * MFADevices [mfaDeviceListType] <p>A list of MFA devices.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: MFADevices
-- @return ListMFADevicesResponse structure as a key-value pair table
function M.ListMFADevicesResponse(args)
	assert(args, "You must provide an argument table when creating ListMFADevicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["MFADevices"] = args["MFADevices"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListMFADevicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SSHPublicKey [SSHPublicKey] <p>A structure containing details about the SSH public key.</p>
-- @return GetSSHPublicKeyResponse structure as a key-value pair table
function M.GetSSHPublicKeyResponse(args)
	assert(args, "You must provide an argument table when creating GetSSHPublicKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SSHPublicKey"] = args["SSHPublicKey"],
	}
	asserts.AssertGetSSHPublicKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * AccessKeyMetadata [accessKeyMetadataListType] <p>A list of objects containing metadata about the access keys.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- Required key: AccessKeyMetadata
-- @return ListAccessKeysResponse structure as a key-value pair table
function M.ListAccessKeysResponse(args)
	assert(args, "You must provide an argument table when creating ListAccessKeysResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["AccessKeyMetadata"] = args["AccessKeyMetadata"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertListAccessKeysResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [passwordPolicyViolationMessage] 
-- @return PasswordPolicyViolationException structure as a key-value pair table
function M.PasswordPolicyViolationException(args)
	assert(args, "You must provide an argument table when creating PasswordPolicyViolationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertPasswordPolicyViolationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about a user that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name (friendly name, not ARN) identifying the user.</p>
-- * UserId [idType] <p>The stable and unique string identifying the user. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>
-- @return PolicyUser structure as a key-value pair table
function M.PolicyUser(args)
	assert(args, "You must provide an argument table when creating PolicyUser")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertPolicyUser(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * PathPrefix [pathPrefixType] <p> The path prefix for filtering the results. For example, the prefix <code>/division_abc/subdivision_xyz/</code> gets all groups whose path starts with <code>/division_abc/subdivision_xyz/</code>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing all groups. This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
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
		["Marker"] = args["Marker"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [groupNameType] <p>The name (friendly name, not ARN) of the IAM group to detach the policy from.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: GroupName
-- Required key: PolicyArn
-- @return DetachGroupPolicyRequest structure as a key-value pair table
function M.DetachGroupPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DetachGroupPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertDetachGroupPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourcePolicyId [PolicyIdentifierType] <p>The identifier of the policy that was provided as an input.</p>
-- * StartPosition [Position] <p>The row and column of the beginning of the <code>Statement</code> in an IAM policy.</p>
-- * SourcePolicyType [PolicySourceType] <p>The type of the policy.</p>
-- * EndPosition [Position] <p>The row and column of the end of a <code>Statement</code> in an IAM policy.</p>
-- @return Statement structure as a key-value pair table
function M.Statement(args)
	assert(args, "You must provide an argument table when creating Statement")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourcePolicyId"] = args["SourcePolicyId"],
		["StartPosition"] = args["StartPosition"],
		["SourcePolicyType"] = args["SourcePolicyType"],
		["EndPosition"] = args["EndPosition"],
	}
	asserts.AssertStatement(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [groupNameType] <p>The name of the group to associate the policy with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyDocument [policyDocumentType] <p>The policy document.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * PolicyName [policyNameType] <p>The name of the policy document.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: GroupName
-- Required key: PolicyName
-- Required key: PolicyDocument
-- @return PutGroupPolicyRequest structure as a key-value pair table
function M.PutGroupPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutGroupPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["PolicyDocument"] = args["PolicyDocument"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertPutGroupPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the IAM role to get information about.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: RoleName
-- @return GetRoleRequest structure as a key-value pair table
function M.GetRoleRequest(args)
	assert(args, "You must provide an argument table when creating GetRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
	}
	asserts.AssertGetRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AWSServiceName [groupNameType] <p>The AWS service to which this role is attached. You use a string similar to a URL but without the http:// in front. For example: <code>elasticbeanstalk.amazonaws.com</code> </p>
-- * Description [roleDescriptionType] <p>The description of the role.</p>
-- * CustomSuffix [customSuffixType] <p>A string that you provide, which is combined with the service name to form the complete role name. If you make multiple requests for the same service, then you must supply a different <code>CustomSuffix</code> for each request. Otherwise the request fails with a duplicate role name error. For example, you could add <code>-1</code> or <code>-debug</code> to the suffix.</p>
-- Required key: AWSServiceName
-- @return CreateServiceLinkedRoleRequest structure as a key-value pair table
function M.CreateServiceLinkedRoleRequest(args)
	assert(args, "You must provide an argument table when creating CreateServiceLinkedRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AWSServiceName"] = args["AWSServiceName"],
		["Description"] = args["Description"],
		["CustomSuffix"] = args["CustomSuffix"],
	}
	asserts.AssertCreateServiceLinkedRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SerialNumber [serialNumberType] <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices, the serial number is the same as the ARN.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@:/-</p>
-- Required key: SerialNumber
-- @return DeleteVirtualMFADeviceRequest structure as a key-value pair table
function M.DeleteVirtualMFADeviceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteVirtualMFADeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SerialNumber"] = args["SerialNumber"],
	}
	asserts.AssertDeleteVirtualMFADeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetServiceLinkedRoleDeletionStatusResponse = { ["Status"] = true, ["Reason"] = true, nil }

function asserts.AssertGetServiceLinkedRoleDeletionStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceLinkedRoleDeletionStatusResponse to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then asserts.AssertDeletionTaskStatusType(struct["Status"]) end
	if struct["Reason"] then asserts.AssertDeletionTaskFailureReasonType(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServiceLinkedRoleDeletionStatusResponse[k], "GetServiceLinkedRoleDeletionStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceLinkedRoleDeletionStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [DeletionTaskStatusType] <p>The status of the deletion.</p>
-- * Reason [DeletionTaskFailureReasonType] <p>An object that contains details about the reason the deletion failed.</p>
-- Required key: Status
-- @return GetServiceLinkedRoleDeletionStatusResponse structure as a key-value pair table
function M.GetServiceLinkedRoleDeletionStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetServiceLinkedRoleDeletionStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Reason"] = args["Reason"],
	}
	asserts.AssertGetServiceLinkedRoleDeletionStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the role to add.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: InstanceProfileName
-- Required key: RoleName
-- @return AddRoleToInstanceProfileRequest structure as a key-value pair table
function M.AddRoleToInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating AddRoleToInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["InstanceProfileName"] = args["InstanceProfileName"],
	}
	asserts.AssertAddRoleToInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Column [ColumnNumber] <p>The column in the line containing the specified position in the document.</p>
-- * Line [LineNumber] <p>The line containing the specified position in the document.</p>
-- @return Position structure as a key-value pair table
function M.Position(args)
	assert(args, "You must provide an argument table when creating Position")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Column"] = args["Column"],
		["Line"] = args["Line"],
	}
	asserts.AssertPosition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [pathType] <p>The path for the server certificate. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/). This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p> <note> <p> If you are uploading a server certificate specifically for use with Amazon CloudFront distributions, you must specify a path using the <code>path</code> parameter. The path must begin with <code>/cloudfront</code> and must include a trailing slash (for example, <code>/cloudfront/test/</code>).</p> </note>
-- * CertificateBody [certificateBodyType] <p>The contents of the public key certificate in PEM-encoded format.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * PrivateKey [privateKeyType] <p>The contents of the private key in PEM-encoded format.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * ServerCertificateName [serverCertificateNameType] <p>The name for the server certificate. Do not include the path in this value. The name of the certificate cannot contain any spaces.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * CertificateChain [certificateChainType] <p>The contents of the certificate chain. This is typically a concatenation of the PEM-encoded public key certificates of the chain.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- Required key: ServerCertificateName
-- Required key: CertificateBody
-- Required key: PrivateKey
-- @return UploadServerCertificateRequest structure as a key-value pair table
function M.UploadServerCertificateRequest(args)
	assert(args, "You must provide an argument table when creating UploadServerCertificateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["CertificateBody"] = args["CertificateBody"],
		["PrivateKey"] = args["PrivateKey"],
		["ServerCertificateName"] = args["ServerCertificateName"],
		["CertificateChain"] = args["CertificateChain"],
	}
	asserts.AssertUploadServerCertificateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the user name and password create date for a user.</p> <p> This data type is used as a response element in the <a>CreateLoginProfile</a> and <a>GetLoginProfile</a> operations. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the user, which can be used for signing in to the AWS Management Console.</p>
-- * CreateDate [dateType] <p>The date when the password for the user was created.</p>
-- * PasswordResetRequired [booleanType] <p>Specifies whether the user is required to set a new password on next sign-in.</p>
-- Required key: UserName
-- Required key: CreateDate
-- @return LoginProfile structure as a key-value pair table
function M.LoginProfile(args)
	assert(args, "You must provide an argument table when creating LoginProfile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["CreateDate"] = args["CreateDate"],
		["PasswordResetRequired"] = args["PasswordResetRequired"],
	}
	asserts.AssertLoginProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the IAM user that the new key will belong to.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- @return CreateAccessKeyRequest structure as a key-value pair table
function M.CreateAccessKeyRequest(args)
	assert(args, "You must provide an argument table when creating CreateAccessKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
	}
	asserts.AssertCreateAccessKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContextKeyValues [ContextKeyValueListType] <p>The value (or values, if the condition context key supports multiple values) to provide to the simulation when the key is referenced by a <code>Condition</code> element in an input policy.</p>
-- * ContextKeyType [ContextKeyTypeEnum] <p>The data type of the value (or values) specified in the <code>ContextKeyValues</code> parameter.</p>
-- * ContextKeyName [ContextKeyNameType] <p>The full name of a condition context key, including the service prefix. For example, <code>aws:SourceIp</code> or <code>s3:VersionId</code>.</p>
-- @return ContextEntry structure as a key-value pair table
function M.ContextEntry(args)
	assert(args, "You must provide an argument table when creating ContextEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContextKeyValues"] = args["ContextKeyValues"],
		["ContextKeyType"] = args["ContextKeyType"],
		["ContextKeyName"] = args["ContextKeyName"],
	}
	asserts.AssertContextEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about a role that a managed policy is attached to.</p> <p>This data type is used as a response element in the <a>ListEntitiesForPolicy</a> operation. </p> <p>For more information about managed policies, refer to <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed Policies and Inline Policies</a> in the <i>Using IAM</i> guide. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name (friendly name, not ARN) identifying the role.</p>
-- * RoleId [idType] <p>The stable and unique string identifying the role. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p>
-- @return PolicyRole structure as a key-value pair table
function M.PolicyRole(args)
	assert(args, "You must provide an argument table when creating PolicyRole")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["RoleId"] = args["RoleId"],
	}
	asserts.AssertPolicyRole(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [pathType] <p> The path to the instance profile. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: InstanceProfileName
-- @return CreateInstanceProfileRequest structure as a key-value pair table
function M.CreateInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating CreateInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["InstanceProfileName"] = args["InstanceProfileName"],
	}
	asserts.AssertCreateInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: UserName
-- Required key: SSHPublicKeyId
-- @return DeleteSSHPublicKeyRequest structure as a key-value pair table
function M.DeleteSSHPublicKeyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSSHPublicKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["SSHPublicKeyId"] = args["SSHPublicKeyId"],
	}
	asserts.AssertDeleteSSHPublicKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [groupNameType] <p>The name of the IAM group to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: GroupName
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
	}
	asserts.AssertDeleteGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>A structure containing details about the new policy.</p>
-- @return CreatePolicyResponse structure as a key-value pair table
function M.CreatePolicyResponse(args)
	assert(args, "You must provide an argument table when creating CreatePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertCreatePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name (friendly name, not ARN) of the IAM role to detach the policy from.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- Required key: RoleName
-- Required key: PolicyArn
-- @return DetachRolePolicyRequest structure as a key-value pair table
function M.DetachRolePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DetachRolePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["PolicyArn"] = args["PolicyArn"],
	}
	asserts.AssertDetachRolePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachedPermissionsBoundary = { ["PermissionsBoundaryType"] = true, ["PermissionsBoundaryArn"] = true, nil }

function asserts.AssertAttachedPermissionsBoundary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachedPermissionsBoundary to be of type 'table'")
	if struct["PermissionsBoundaryType"] then asserts.AssertPermissionsBoundaryAttachmentType(struct["PermissionsBoundaryType"]) end
	if struct["PermissionsBoundaryArn"] then asserts.AssertarnType(struct["PermissionsBoundaryArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachedPermissionsBoundary[k], "AttachedPermissionsBoundary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachedPermissionsBoundary
-- <p>Contains information about an attached permissions boundary.</p> <p>An attached permissions boundary is a managed policy that has been attached to a user or role to set the permissions boundary.</p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PermissionsBoundaryType [PermissionsBoundaryAttachmentType] <p> The permissions boundary usage type that indicates what type of IAM resource is used as the permissions boundary for an entity. This data type can only have a value of <code>Policy</code>.</p>
-- * PermissionsBoundaryArn [arnType] <p> The ARN of the policy used to set the permissions boundary for the user or role.</p>
-- @return AttachedPermissionsBoundary structure as a key-value pair table
function M.AttachedPermissionsBoundary(args)
	assert(args, "You must provide an argument table when creating AttachedPermissionsBoundary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PermissionsBoundaryType"] = args["PermissionsBoundaryType"],
		["PermissionsBoundaryArn"] = args["PermissionsBoundaryArn"],
	}
	asserts.AssertAttachedPermissionsBoundary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRolePermissionsBoundaryRequest = { ["RoleName"] = true, nil }

function asserts.AssertDeleteRolePermissionsBoundaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRolePermissionsBoundaryRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRolePermissionsBoundaryRequest[k], "DeleteRolePermissionsBoundaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRolePermissionsBoundaryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name (friendly name, not ARN) of the IAM role from which you want to remove the permissions boundary.</p>
-- Required key: RoleName
-- @return DeleteRolePermissionsBoundaryRequest structure as a key-value pair table
function M.DeleteRolePermissionsBoundaryRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRolePermissionsBoundaryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
	}
	asserts.AssertDeleteRolePermissionsBoundaryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Status [statusType] <p>The status to assign to the SSH public key. <code>Active</code> means that the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means that the key cannot be used.</p>
-- * SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: UserName
-- Required key: SSHPublicKeyId
-- Required key: Status
-- @return UpdateSSHPublicKeyRequest structure as a key-value pair table
function M.UpdateSSHPublicKeyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSSHPublicKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["SSHPublicKeyId"] = args["SSHPublicKeyId"],
	}
	asserts.AssertUpdateSSHPublicKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteServiceLinkedRoleRequest = { ["RoleName"] = true, nil }

function asserts.AssertDeleteServiceLinkedRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteServiceLinkedRoleRequest to be of type 'table'")
	assert(struct["RoleName"], "Expected key RoleName to exist in table")
	if struct["RoleName"] then asserts.AssertroleNameType(struct["RoleName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteServiceLinkedRoleRequest[k], "DeleteServiceLinkedRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteServiceLinkedRoleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the service-linked role to be deleted.</p>
-- Required key: RoleName
-- @return DeleteServiceLinkedRoleRequest structure as a key-value pair table
function M.DeleteServiceLinkedRoleRequest(args)
	assert(args, "You must provide an argument table when creating DeleteServiceLinkedRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
	}
	asserts.AssertDeleteServiceLinkedRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [noSuchEntityMessage] 
-- @return NoSuchEntityException structure as a key-value pair table
function M.NoSuchEntityException(args)
	assert(args, "You must provide an argument table when creating NoSuchEntityException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNoSuchEntityException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the role to remove.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to update.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: InstanceProfileName
-- Required key: RoleName
-- @return RemoveRoleFromInstanceProfileRequest structure as a key-value pair table
function M.RemoveRoleFromInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating RemoveRoleFromInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["InstanceProfileName"] = args["InstanceProfileName"],
	}
	asserts.AssertRemoveRoleFromInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicySourceArn [arnType] <p>The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to include in the simulation. If you specify a user, group, or role, the simulation includes all policies that are associated with that entity. If you specify a user, the simulation also includes all policies that are attached to any groups the user belongs to.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * ResourceHandlingOption [ResourceHandlingOptionType] <p>Specifies the type of simulation to run. Different API operations that support resource-based policies require different combinations of resources. By specifying the type of simulation to run, you enable the policy simulator to enforce the presence of the required resources to ensure reliable simulation results. If your simulation does not match one of the following scenarios, then you can omit this parameter. The following list shows each of the supported scenario values and the resources that you must define to run the simulation.</p> <p>Each of the EC2 scenarios requires that you specify instance, image, and security-group resources. If your scenario includes an EBS volume, then you must specify that volume as a resource. If the EC2 scenario includes VPC, then you must supply the network-interface resource. If it includes an IP subnet, then you must specify the subnet resource. For more information on the EC2 scenario options, see <a href="http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a> in the <i>Amazon EC2 User Guide</i>.</p> <ul> <li> <p> <b>EC2-Classic-InstanceStore</b> </p> <p>instance, image, security-group</p> </li> <li> <p> <b>EC2-Classic-EBS</b> </p> <p>instance, image, security-group, volume</p> </li> <li> <p> <b>EC2-VPC-InstanceStore</b> </p> <p>instance, image, security-group, network-interface</p> </li> <li> <p> <b>EC2-VPC-InstanceStore-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet</p> </li> <li> <p> <b>EC2-VPC-EBS</b> </p> <p>instance, image, security-group, network-interface, volume</p> </li> <li> <p> <b>EC2-VPC-EBS-Subnet</b> </p> <p>instance, image, security-group, network-interface, subnet, volume</p> </li> </ul>
-- * ContextEntries [ContextEntryListType] <p>A list of context keys and corresponding values for the simulation to use. Whenever a context key is evaluated in one of the simulated IAM permission policies, the corresponding value is supplied.</p>
-- * CallerArn [ResourceNameType] <p>The ARN of the IAM user that you want to specify as the simulated caller of the API operations. If you do not specify a <code>CallerArn</code>, it defaults to the ARN of the user that you specify in <code>PolicySourceArn</code>, if you specified a user. If you include both a <code>PolicySourceArn</code> (for example, <code>arn:aws:iam::123456789012:user/David</code>) and a <code>CallerArn</code> (for example, <code>arn:aws:iam::123456789012:user/Bob</code>), the result is that you simulate calling the API operations as Bob, as if Bob had David's policies.</p> <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an assumed role, federated user, or a service principal.</p> <p> <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> and the <code>PolicySourceArn</code> is not the ARN for an IAM user. This is required so that the resource-based policy's <code>Principal</code> element has a value to use in evaluating the policy.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * ResourceArns [ResourceNameListType] <p>A list of ARNs of AWS resources to include in the simulation. If this parameter is not provided, then the value defaults to <code>*</code> (all resources). Each API in the <code>ActionNames</code> parameter is evaluated for each resource in this list. The simulation determines the access result (allowed or denied) of each combination and reports it in the response.</p> <p>The simulation does not automatically retrieve policies for the specified resources. If you want to include a resource policy in the simulation, then you must include the policy as a string in the <code>ResourcePolicy</code> parameter.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * PolicyInputList [SimulationPolicyListType] <p>An optional list of additional policy documents to include in the simulation. Each document is specified as a string containing the complete, valid JSON text of an IAM policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * ResourcePolicy [policyDocumentType] <p>A resource-based policy to include in the simulation provided as a string. Each resource in the simulation is treated as if it had this policy attached. You can include only one resource-based policy in a simulation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> used to validate this parameter is a string of characters consisting of the following:</p> <ul> <li> <p>Any printable ASCII character ranging from the space character (\u0020) through the end of the ASCII character range</p> </li> <li> <p>The printable characters in the Basic Latin and Latin-1 Supplement character set (through \u00FF)</p> </li> <li> <p>The special characters tab (\u0009), line feed (\u000A), and carriage return (\u000D)</p> </li> </ul>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * ActionNames [ActionNameListType] <p>A list of names of API operations to evaluate in the simulation. Each operation is evaluated for each resource. Each operation must include the service identifier, such as <code>iam:CreateUser</code>.</p>
-- * ResourceOwner [ResourceNameType] <p>An AWS account ID that specifies the owner of any simulated resource that does not identify its owner in the resource ARN, such as an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also used as the account owner of any <code>ResourcePolicy</code> included in the simulation. If the <code>ResourceOwner</code> parameter is not specified, then the owner of the resources and the resource policy defaults to the account of the identity provided in <code>CallerArn</code>. This parameter is required only if you specify a resource-based policy and account that owns the resource is different from the account that owns the simulated calling user <code>CallerArn</code>.</p>
-- Required key: PolicySourceArn
-- Required key: ActionNames
-- @return SimulatePrincipalPolicyRequest structure as a key-value pair table
function M.SimulatePrincipalPolicyRequest(args)
	assert(args, "You must provide an argument table when creating SimulatePrincipalPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicySourceArn"] = args["PolicySourceArn"],
		["ResourceHandlingOption"] = args["ResourceHandlingOption"],
		["ContextEntries"] = args["ContextEntries"],
		["CallerArn"] = args["CallerArn"],
		["ResourceArns"] = args["ResourceArns"],
		["PolicyInputList"] = args["PolicyInputList"],
		["ResourcePolicy"] = args["ResourcePolicy"],
		["MaxItems"] = args["MaxItems"],
		["Marker"] = args["Marker"],
		["ActionNames"] = args["ActionNames"],
		["ResourceOwner"] = args["ResourceOwner"],
	}
	asserts.AssertSimulatePrincipalPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [existingUserNameType] <p>The name of the user who the policy is associated with.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyName [policyNameType] <p>The name of the policy document to get.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: UserName
-- Required key: PolicyName
-- @return GetUserPolicyRequest structure as a key-value pair table
function M.GetUserPolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetUserPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertGetUserPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [roleNameType] <p>The name of the role associated with the policy.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PolicyName [policyNameType] <p>The name of the policy document to get.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: RoleName
-- Required key: PolicyName
-- @return GetRolePolicyRequest structure as a key-value pair table
function M.GetRolePolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetRolePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["PolicyName"] = args["PolicyName"],
	}
	asserts.AssertGetRolePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an SSH public key, without the key's body or fingerprint.</p> <p>This data type is used as a response element in the <a>ListSSHPublicKeys</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the SSH public key.</p>
-- * Status [statusType] <p>The status of the SSH public key. <code>Active</code> means that the key can be used for authentication with an AWS CodeCommit repository. <code>Inactive</code> means that the key cannot be used.</p>
-- * SSHPublicKeyId [publicKeyIdType] <p>The unique identifier for the SSH public key.</p>
-- * UploadDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the SSH public key was uploaded.</p>
-- Required key: UserName
-- Required key: SSHPublicKeyId
-- Required key: Status
-- Required key: UploadDate
-- @return SSHPublicKeyMetadata structure as a key-value pair table
function M.SSHPublicKeyMetadata(args)
	assert(args, "You must provide an argument table when creating SSHPublicKeyMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["SSHPublicKeyId"] = args["SSHPublicKeyId"],
		["UploadDate"] = args["UploadDate"],
	}
	asserts.AssertSSHPublicKeyMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [deleteConflictMessage] 
-- @return DeleteConflictException structure as a key-value pair table
function M.DeleteConflictException(args)
	assert(args, "You must provide an argument table when creating DeleteConflictException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDeleteConflictException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SAMLMetadataDocument [SAMLMetadataDocumentType] <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The document includes the issuer's name, expiration information, and keys that can be used to validate the SAML authentication response (assertions) that are received from the IdP. You must generate the metadata document using the identity management software that is used as your organization's IdP.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based Federation</a> in the <i>IAM User Guide</i> </p>
-- * Name [SAMLProviderNameType] <p>The name of the provider to create.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: SAMLMetadataDocument
-- Required key: Name
-- @return CreateSAMLProviderRequest structure as a key-value pair table
function M.CreateSAMLProviderRequest(args)
	assert(args, "You must provide an argument table when creating CreateSAMLProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SAMLMetadataDocument"] = args["SAMLMetadataDocument"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSAMLProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the user whose password you want to delete.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: UserName
-- @return DeleteLoginProfileRequest structure as a key-value pair table
function M.DeleteLoginProfileRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLoginProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
	}
	asserts.AssertDeleteLoginProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [pathType] <p> The path for the virtual MFA device. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>IAM User Guide</i>.</p> <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * VirtualMFADeviceName [virtualMFADeviceName] <p>The name of the virtual MFA device. Use with path to uniquely identify a virtual MFA device.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: VirtualMFADeviceName
-- @return CreateVirtualMFADeviceRequest structure as a key-value pair table
function M.CreateVirtualMFADeviceRequest(args)
	assert(args, "You must provide an argument table when creating CreateVirtualMFADeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["VirtualMFADeviceName"] = args["VirtualMFADeviceName"],
	}
	asserts.AssertCreateVirtualMFADeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an X.509 signing certificate.</p> <p>This data type is used as a response element in the <a>UploadSigningCertificate</a> and <a>ListSigningCertificates</a> operations. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the user the signing certificate is associated with.</p>
-- * Status [statusType] <p>The status of the signing certificate. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not.</p>
-- * CertificateBody [certificateBodyType] <p>The contents of the signing certificate.</p>
-- * CertificateId [certificateIdType] <p>The ID for the signing certificate.</p>
-- * UploadDate [dateType] <p>The date when the signing certificate was uploaded.</p>
-- Required key: UserName
-- Required key: CertificateId
-- Required key: CertificateBody
-- Required key: Status
-- @return SigningCertificate structure as a key-value pair table
function M.SigningCertificate(args)
	assert(args, "You must provide an argument table when creating SigningCertificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["CertificateBody"] = args["CertificateBody"],
		["CertificateId"] = args["CertificateId"],
		["UploadDate"] = args["UploadDate"],
	}
	asserts.AssertSigningCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.User = { ["UserName"] = true, ["PermissionsBoundary"] = true, ["PasswordLastUsed"] = true, ["CreateDate"] = true, ["UserId"] = true, ["Path"] = true, ["Arn"] = true, nil }

function asserts.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["CreateDate"], "Expected key CreateDate to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["PermissionsBoundary"] then asserts.AssertAttachedPermissionsBoundary(struct["PermissionsBoundary"]) end
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
-- <p>Contains information about an IAM user entity.</p> <p>This data type is used as a response element in the following operations:</p> <ul> <li> <p> <a>CreateUser</a> </p> </li> <li> <p> <a>GetUser</a> </p> </li> <li> <p> <a>ListUsers</a> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The friendly name identifying the user.</p>
-- * PermissionsBoundary [AttachedPermissionsBoundary] <p>The ARN of the policy used to set the permissions boundary for the user.</p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>
-- * PasswordLastUsed [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the user's password was last used to sign in to an AWS website. For a list of AWS websites that capture a user's last sign-in time, see the <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Credential Reports</a> topic in the <i>Using IAM</i> guide. If a password is used more than once in a five-minute span, only the first use is returned in this field. If the field is null (no value) then it indicates that they never signed in with a password. This can be because:</p> <ul> <li> <p>The user never had a password.</p> </li> <li> <p>A password exists but has not been used since IAM started tracking this information on October 20th, 2014.</p> </li> </ul> <p>A null does not mean that the user <i>never</i> had a password. Also, if the user does not currently have a password, but had one in the past, then this field contains the date and time the most recent password was used.</p> <p>This value is returned only in the <a>GetUser</a> and <a>ListUsers</a> operations. </p>
-- * CreateDate [dateType] <p>The date and time, in <a href="http://www.iso.org/iso/iso8601">ISO 8601 date-time format</a>, when the user was created.</p>
-- * UserId [idType] <p>The stable and unique string identifying the user. For more information about IDs, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * Path [pathType] <p>The path to the user. For more information about paths, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide.</p>
-- * Arn [arnType] <p>The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and how to use ARNs in policies, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM Identifiers</a> in the <i>Using IAM</i> guide. </p>
-- Required key: Path
-- Required key: UserName
-- Required key: UserId
-- Required key: Arn
-- Required key: CreateDate
-- @return User structure as a key-value pair table
function M.User(args)
	assert(args, "You must provide an argument table when creating User")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PermissionsBoundary"] = args["PermissionsBoundary"],
		["PasswordLastUsed"] = args["PasswordLastUsed"],
		["CreateDate"] = args["CreateDate"],
		["UserId"] = args["UserId"],
		["Path"] = args["Path"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUser(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceProfileName [instanceProfileNameType] <p>The name of the instance profile to get information about.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- Required key: InstanceProfileName
-- @return GetInstanceProfileRequest structure as a key-value pair table
function M.GetInstanceProfileRequest(args)
	assert(args, "You must provide an argument table when creating GetInstanceProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceProfileName"] = args["InstanceProfileName"],
	}
	asserts.AssertGetInstanceProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * EvaluationResults [EvaluationResultsListType] <p>The results of the simulation.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- @return SimulatePolicyResponse structure as a key-value pair table
function M.SimulatePolicyResponse(args)
	assert(args, "You must provide an argument table when creating SimulatePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["EvaluationResults"] = args["EvaluationResults"],
		["IsTruncated"] = args["IsTruncated"],
	}
	asserts.AssertSimulatePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListEntitiesForPolicyRequest = { ["EntityFilter"] = true, ["PolicyUsageFilter"] = true, ["PolicyArn"] = true, ["PathPrefix"] = true, ["MaxItems"] = true, ["Marker"] = true, nil }

function asserts.AssertListEntitiesForPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEntitiesForPolicyRequest to be of type 'table'")
	assert(struct["PolicyArn"], "Expected key PolicyArn to exist in table")
	if struct["EntityFilter"] then asserts.AssertEntityType(struct["EntityFilter"]) end
	if struct["PolicyUsageFilter"] then asserts.AssertPolicyUsageType(struct["PolicyUsageFilter"]) end
	if struct["PolicyArn"] then asserts.AssertarnType(struct["PolicyArn"]) end
	if struct["PathPrefix"] then asserts.AssertpathType(struct["PathPrefix"]) end
	if struct["MaxItems"] then asserts.AssertmaxItemsType(struct["MaxItems"]) end
	if struct["Marker"] then asserts.AssertmarkerType(struct["Marker"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEntitiesForPolicyRequest[k], "ListEntitiesForPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEntitiesForPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EntityFilter [EntityType] <p>The entity type to use for filtering the results.</p> <p>For example, when <code>EntityFilter</code> is <code>Role</code>, only the roles that are attached to the specified policy are returned. This parameter is optional. If it is not included, all attached entities (users, groups, and roles) are returned. The argument for this parameter must be one of the valid values listed below.</p>
-- * PolicyUsageFilter [PolicyUsageType] <p>The policy usage method to use for filtering the results.</p> <p>To list only permissions policies, set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only the policies used to set permissions boundaries, set the value to <code>PermissionsBoundary</code>.</p> <p>This parameter is optional. If it is not included, all policies are returned. </p>
-- * PolicyArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the versions.</p> <p>For more information about ARNs, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs) and AWS Service Namespaces</a> in the <i>AWS General Reference</i>.</p>
-- * PathPrefix [pathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all entities.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- Required key: PolicyArn
-- @return ListEntitiesForPolicyRequest structure as a key-value pair table
function M.ListEntitiesForPolicyRequest(args)
	assert(args, "You must provide an argument table when creating ListEntitiesForPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EntityFilter"] = args["EntityFilter"],
		["PolicyUsageFilter"] = args["PolicyUsageFilter"],
		["PolicyArn"] = args["PolicyArn"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
		["Marker"] = args["Marker"],
	}
	asserts.AssertListEntitiesForPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * RoleName [roleNameType] <p>The name of the role to list instance profiles for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: RoleName
-- @return ListInstanceProfilesForRoleRequest structure as a key-value pair table
function M.ListInstanceProfilesForRoleRequest(args)
	assert(args, "You must provide an argument table when creating ListInstanceProfilesForRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["RoleName"] = args["RoleName"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListInstanceProfilesForRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [OpenIDConnectProviderUrlType] <p>The URL that the IAM OIDC provider resource object is associated with. For more information, see <a>CreateOpenIDConnectProvider</a>.</p>
-- * CreateDate [dateType] <p>The date and time when the IAM OIDC provider resource object was created in the AWS account.</p>
-- * ThumbprintList [thumbprintListType] <p>A list of certificate thumbprints that are associated with the specified IAM OIDC provider resource object. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>
-- * ClientIDList [clientIDListType] <p>A list of client IDs (also known as audiences) that are associated with the specified IAM OIDC provider resource object. For more information, see <a>CreateOpenIDConnectProvider</a>.</p>
-- @return GetOpenIDConnectProviderResponse structure as a key-value pair table
function M.GetOpenIDConnectProviderResponse(args)
	assert(args, "You must provide an argument table when creating GetOpenIDConnectProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["CreateDate"] = args["CreateDate"],
		["ThumbprintList"] = args["ThumbprintList"],
		["ClientIDList"] = args["ClientIDList"],
	}
	asserts.AssertGetOpenIDConnectProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OpenIDConnectProviderArn [arnType] <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to add the client ID to. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>
-- * ClientID [clientIDType] <p>The client ID (also known as audience) to add to the IAM OpenID Connect provider resource.</p>
-- Required key: OpenIDConnectProviderArn
-- Required key: ClientID
-- @return AddClientIDToOpenIDConnectProviderRequest structure as a key-value pair table
function M.AddClientIDToOpenIDConnectProviderRequest(args)
	assert(args, "You must provide an argument table when creating AddClientIDToOpenIDConnectProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OpenIDConnectProviderArn"] = args["OpenIDConnectProviderArn"],
		["ClientID"] = args["ClientID"],
	}
	asserts.AssertAddClientIDToOpenIDConnectProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [malformedCertificateMessage] 
-- @return MalformedCertificateException structure as a key-value pair table
function M.MalformedCertificateException(args)
	assert(args, "You must provide an argument table when creating MalformedCertificateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMalformedCertificateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyVersion [PolicyVersion] <p>A structure containing details about the policy version.</p>
-- @return GetPolicyVersionResponse structure as a key-value pair table
function M.GetPolicyVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetPolicyVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyVersion"] = args["PolicyVersion"],
	}
	asserts.AssertGetPolicyVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateDate [dateType] <p>The date and time when the SAML provider was created.</p>
-- * SAMLMetadataDocument [SAMLMetadataDocumentType] <p>The XML metadata document that includes information about an identity provider.</p>
-- * ValidUntil [dateType] <p>The expiration date and time for the SAML provider.</p>
-- @return GetSAMLProviderResponse structure as a key-value pair table
function M.GetSAMLProviderResponse(args)
	assert(args, "You must provide an argument table when creating GetSAMLProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreateDate"] = args["CreateDate"],
		["SAMLMetadataDocument"] = args["SAMLMetadataDocument"],
		["ValidUntil"] = args["ValidUntil"],
	}
	asserts.AssertGetSAMLProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ListOpenIDConnectProvidersRequest structure as a key-value pair table
function M.ListOpenIDConnectProvidersRequest(args)
	assert(args, "You must provide an argument table when creating ListOpenIDConnectProvidersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertListOpenIDConnectProvidersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>When <code>IsTruncated</code> is <code>true</code>, this element is present and contains the value to use for the <code>Marker</code> parameter in a subsequent pagination request.</p>
-- * IsTruncated [booleanType] <p>A flag that indicates whether there are more items to return. If your results were truncated, you can make a subsequent pagination request using the <code>Marker</code> request parameter to retrieve more items. Note that IAM might return fewer than the <code>MaxItems</code> number of results even when there are more results available. We recommend that you check <code>IsTruncated</code> after every call to ensure that you receive all of your results.</p>
-- * InstanceProfiles [instanceProfileListType] <p>A list of instance profiles.</p>
-- Required key: InstanceProfiles
-- @return ListInstanceProfilesResponse structure as a key-value pair table
function M.ListInstanceProfilesResponse(args)
	assert(args, "You must provide an argument table when creating ListInstanceProfilesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["IsTruncated"] = args["IsTruncated"],
		["InstanceProfiles"] = args["InstanceProfiles"],
	}
	asserts.AssertListInstanceProfilesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user to create a password for. The user must already exist.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PasswordResetRequired [booleanType] <p>Specifies whether the user is required to set a new password on next sign-in.</p>
-- * Password [passwordType] <p>The new password for the user.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of characters. That string can include almost any printable ASCII character from the space (\u0020) through the end of the ASCII character range (\u00FF). You can also include the tab (\u0009), line feed (\u000A), and carriage return (\u000D) characters. Any of these characters are valid in a password. However, many tools, such as the AWS Management Console, might restrict the ability to type certain characters because they have special meaning within that tool.</p>
-- Required key: UserName
-- Required key: Password
-- @return CreateLoginProfileRequest structure as a key-value pair table
function M.CreateLoginProfileRequest(args)
	assert(args, "You must provide an argument table when creating CreateLoginProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PasswordResetRequired"] = args["PasswordResetRequired"],
		["Password"] = args["Password"],
	}
	asserts.AssertCreateLoginProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutUserPermissionsBoundaryRequest = { ["UserName"] = true, ["PermissionsBoundary"] = true, nil }

function asserts.AssertPutUserPermissionsBoundaryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutUserPermissionsBoundaryRequest to be of type 'table'")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["PermissionsBoundary"], "Expected key PermissionsBoundary to exist in table")
	if struct["UserName"] then asserts.AssertuserNameType(struct["UserName"]) end
	if struct["PermissionsBoundary"] then asserts.AssertarnType(struct["PermissionsBoundary"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutUserPermissionsBoundaryRequest[k], "PutUserPermissionsBoundaryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutUserPermissionsBoundaryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name (friendly name, not ARN) of the IAM user for which you want to set the permissions boundary.</p>
-- * PermissionsBoundary [arnType] <p>The ARN of the policy that is used to set the permissions boundary for the user.</p>
-- Required key: UserName
-- Required key: PermissionsBoundary
-- @return PutUserPermissionsBoundaryRequest structure as a key-value pair table
function M.PutUserPermissionsBoundaryRequest(args)
	assert(args, "You must provide an argument table when creating PutUserPermissionsBoundaryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["PermissionsBoundary"] = args["PermissionsBoundary"],
	}
	asserts.AssertPutUserPermissionsBoundaryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SAMLProviderList [SAMLProviderListType] <p>The list of SAML provider resource objects defined in IAM for this AWS account.</p>
-- @return ListSAMLProvidersResponse structure as a key-value pair table
function M.ListSAMLProvidersResponse(args)
	assert(args, "You must provide an argument table when creating ListSAMLProvidersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SAMLProviderList"] = args["SAMLProviderList"],
	}
	asserts.AssertListSAMLProvidersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user associated with the service-specific credential. If you do not specify this value, then the operation assumes the user whose credentials are used to call the operation.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Status [statusType] <p>The status to be assigned to the service-specific credential.</p>
-- * ServiceSpecificCredentialId [serviceSpecificCredentialId] <p>The unique identifier of the service-specific credential.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can consist of any upper or lowercased letter or digit.</p>
-- Required key: ServiceSpecificCredentialId
-- Required key: Status
-- @return UpdateServiceSpecificCredentialRequest structure as a key-value pair table
function M.UpdateServiceSpecificCredentialRequest(args)
	assert(args, "You must provide an argument table when creating UpdateServiceSpecificCredentialRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["ServiceSpecificCredentialId"] = args["ServiceSpecificCredentialId"],
	}
	asserts.AssertUpdateServiceSpecificCredentialRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * RoleName [roleNameType] <p>The name (friendly name, not ARN) of the role to list attached policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * PathPrefix [policyPathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: RoleName
-- @return ListAttachedRolePoliciesRequest structure as a key-value pair table
function M.ListAttachedRolePoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListAttachedRolePoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Marker"] = args["Marker"],
		["RoleName"] = args["RoleName"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListAttachedRolePoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VirtualMFADevice [VirtualMFADevice] <p>A structure containing details about the new virtual MFA device.</p>
-- Required key: VirtualMFADevice
-- @return CreateVirtualMFADeviceResponse structure as a key-value pair table
function M.CreateVirtualMFADeviceResponse(args)
	assert(args, "You must provide an argument table when creating CreateVirtualMFADeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VirtualMFADevice"] = args["VirtualMFADevice"],
	}
	asserts.AssertCreateVirtualMFADeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>A structure containing details about the policy.</p>
-- @return GetPolicyResponse structure as a key-value pair table
function M.GetPolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertGetPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an AWS access key.</p> <p> This data type is used as a response element in the <a>CreateAccessKey</a> and <a>ListAccessKeys</a> operations. </p> <note> <p>The <code>SecretAccessKey</code> value is returned only in response to <a>CreateAccessKey</a>. You can get a secret access key only when you first create an access key; you cannot recover the secret access key later. If you lose a secret access key, you must create a new access key.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user that the access key is associated with.</p>
-- * Status [statusType] <p>The status of the access key. <code>Active</code> means that the key is valid for API calls, while <code>Inactive</code> means it is not. </p>
-- * CreateDate [dateType] <p>The date when the access key was created.</p>
-- * SecretAccessKey [accessKeySecretType] <p>The secret key used to sign requests.</p>
-- * AccessKeyId [accessKeyIdType] <p>The ID for this access key.</p>
-- Required key: UserName
-- Required key: AccessKeyId
-- Required key: Status
-- Required key: SecretAccessKey
-- @return AccessKey structure as a key-value pair table
function M.AccessKey(args)
	assert(args, "You must provide an argument table when creating AccessKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["CreateDate"] = args["CreateDate"],
		["SecretAccessKey"] = args["SecretAccessKey"],
		["AccessKeyId"] = args["AccessKeyId"],
	}
	asserts.AssertAccessKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about an AWS access key, without its secret key.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name of the IAM user that the key is associated with.</p>
-- * Status [statusType] <p>The status of the access key. <code>Active</code> means the key is valid for API calls; <code>Inactive</code> means it is not.</p>
-- * CreateDate [dateType] <p>The date when the access key was created.</p>
-- * AccessKeyId [accessKeyIdType] <p>The ID for this access key.</p>
-- @return AccessKeyMetadata structure as a key-value pair table
function M.AccessKeyMetadata(args)
	assert(args, "You must provide an argument table when creating AccessKeyMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Status"] = args["Status"],
		["CreateDate"] = args["CreateDate"],
		["AccessKeyId"] = args["AccessKeyId"],
	}
	asserts.AssertAccessKeyMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [duplicateSSHPublicKeyMessage] 
-- @return DuplicateSSHPublicKeyException structure as a key-value pair table
function M.DuplicateSSHPublicKeyException(args)
	assert(args, "You must provide an argument table when creating DuplicateSSHPublicKeyException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDuplicateSSHPublicKeyException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [userNameType] <p>The name (friendly name, not ARN) of the user to list attached policies for.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
-- * Marker [markerType] <p>Use this parameter only when paginating results and only after you receive a response indicating that the results are truncated. Set it to the value of the <code>Marker</code> element in the response that you received to indicate where the next call should start.</p>
-- * PathPrefix [policyPathType] <p>The path prefix for filtering the results. This parameter is optional. If it is not included, it defaults to a slash (/), listing all policies.</p> <p>This parameter allows (per its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of either a forward slash (/) by itself or a string that must begin and end with forward slashes. In addition, it can contain any ASCII character from the ! (\u0021) through the DEL character (\u007F), including most punctuation characters, digits, and upper and lowercased letters.</p>
-- * MaxItems [maxItemsType] <p>(Optional) Use this only when paginating results to indicate the maximum number of items you want in the response. If additional items exist beyond the maximum you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p> <p>If you do not include this parameter, it defaults to 100. Note that IAM might return fewer results, even when there are more results available. In that case, the <code>IsTruncated</code> response element returns <code>true</code> and <code>Marker</code> contains a value to include in the subsequent call that tells the service where to continue from.</p>
-- Required key: UserName
-- @return ListAttachedUserPoliciesRequest structure as a key-value pair table
function M.ListAttachedUserPoliciesRequest(args)
	assert(args, "You must provide an argument table when creating ListAttachedUserPoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["Marker"] = args["Marker"],
		["PathPrefix"] = args["PathPrefix"],
		["MaxItems"] = args["MaxItems"],
	}
	asserts.AssertListAttachedUserPoliciesRequest(all_args)
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
	assert(struct["Group"], "Expected key Group to exist in table")
	if struct["Group"] then asserts.AssertGroup(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupResponse[k], "CreateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupResponse
-- <p>Contains the response to a successful <a>CreateGroup</a> request. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Group [Group] <p>A structure containing details about the new group.</p>
-- Required key: Group
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
-- <p>Contains information about a server certificate.</p> <p> This data type is used as a response element in the <a>GetServerCertificate</a> operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateChain [certificateChainType] <p>The contents of the public key certificate chain.</p>
-- * CertificateBody [certificateBodyType] <p>The contents of the public key certificate.</p>
-- * ServerCertificateMetadata [ServerCertificateMetadata] <p>The meta information of the server certificate, such as its name, path, ID, and ARN.</p>
-- Required key: ServerCertificateMetadata
-- Required key: CertificateBody
-- @return ServerCertificate structure as a key-value pair table
function M.ServerCertificate(args)
	assert(args, "You must provide an argument table when creating ServerCertificate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateChain"] = args["CertificateChain"],
		["CertificateBody"] = args["CertificateBody"],
		["ServerCertificateMetadata"] = args["ServerCertificateMetadata"],
	}
	asserts.AssertServerCertificate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertDeletionTaskIdType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeletionTaskIdType to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeletionTaskIdType(str)
	asserts.AssertDeletionTaskIdType(str)
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

function asserts.AssertpolicyNotAttachableMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected policyNotAttachableMessage to be of type 'string'")
end

--  
function M.policyNotAttachableMessage(str)
	asserts.AssertpolicyNotAttachableMessage(str)
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

function asserts.AssertPermissionsBoundaryAttachmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected PermissionsBoundaryAttachmentType to be of type 'string'")
end

--  
function M.PermissionsBoundaryAttachmentType(str)
	asserts.AssertPermissionsBoundaryAttachmentType(str)
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

function asserts.AssertDeletionTaskStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeletionTaskStatusType to be of type 'string'")
end

--  
function M.DeletionTaskStatusType(str)
	asserts.AssertDeletionTaskStatusType(str)
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

function asserts.AssertReasonType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReasonType to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.ReasonType(str)
	asserts.AssertReasonType(str)
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

function asserts.AssertmalformedPolicyDocumentMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected malformedPolicyDocumentMessage to be of type 'string'")
end

--  
function M.malformedPolicyDocumentMessage(str)
	asserts.AssertmalformedPolicyDocumentMessage(str)
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

function asserts.AssertPolicyUsageType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyUsageType to be of type 'string'")
end

-- <p>The policy usage type that indicates whether the policy is used as a permissions policy or as the permissions boundary for an entity.</p> <p>For more information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions Boundaries for IAM Identities </a> in the <i>IAM User Guide</i>.</p>
function M.PolicyUsageType(str)
	asserts.AssertPolicyUsageType(str)
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

function asserts.AssertRegionNameType(str)
	assert(str)
	assert(type(str) == "string", "Expected RegionNameType to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RegionNameType(str)
	asserts.AssertRegionNameType(str)
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

function asserts.AssertroleMaxSessionDurationType(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected roleMaxSessionDurationType to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 43200, "Expected integer to be max 43200")
	assert(integer >= 3600, "Expected integer to be min 3600")
end

function M.roleMaxSessionDurationType(integer)
	asserts.AssertroleMaxSessionDurationType(integer)
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
	assert(type(blob) == "string", "Expected ReportContentType to be of type 'string'")
end

function M.ReportContentType(blob)
	asserts.AssertReportContentType(blob)
	return blob
end

function asserts.AssertBootstrapDatum(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected BootstrapDatum to be of type 'string'")
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

function asserts.AssertArnListType(list)
	assert(list)
	assert(type(list) == "table", "Expected ArnListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertarnType(v)
	end
end

--  
-- List of arnType objects
function M.ArnListType(list)
	asserts.AssertArnListType(list)
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

-- <p>Contains a list of signing certificates.</p> <p>This data type is used as a response element in the <a>ListSigningCertificates</a> operation.</p>
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

function asserts.AssertRoleUsageListType(list)
	assert(list)
	assert(type(list) == "table", "Expected RoleUsageListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRoleUsageType(v)
	end
end

--  
-- List of RoleUsageType objects
function M.RoleUsageListType(list)
	asserts.AssertRoleUsageListType(list)
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

-- <p>Contains a list of access key metadata.</p> <p>This data type is used as a response element in the <a>ListAccessKeys</a> operation.</p>
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

-- <p>Contains a list of IAM roles.</p> <p>This data type is used as a response element in the <a>ListRoles</a> operation.</p>
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

-- <p>Contains a list of users.</p> <p>This data type is used as a response element in the <a>GetGroup</a> and <a>ListUsers</a> operations. </p>
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

-- <p>Contains a list of policy names.</p> <p>This data type is used as a response element in the <a>ListPolicies</a> operation.</p>
-- List of policyNameType objects
function M.policyNameListType(list)
	asserts.AssertpolicyNameListType(list)
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

-- <p>Contains a list of MFA devices.</p> <p>This data type is used as a response element in the <a>ListMFADevices</a> and <a>ListVirtualMFADevices</a> operations. </p>
-- List of MFADevice objects
function M.mfaDeviceListType(list)
	asserts.AssertmfaDeviceListType(list)
	return list
end

function asserts.AssertgroupListType(list)
	assert(list)
	assert(type(list) == "table", "Expected groupListType to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroup(v)
	end
end

-- <p>Contains a list of IAM groups.</p> <p>This data type is used as a response element in the <a>ListGroups</a> operation.</p>
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call GetUserPolicy asynchronously, invoking a callback when done
-- @param GetUserPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUserPolicyAsync(GetUserPolicyRequest, cb)
	assert(GetUserPolicyRequest, "You must provide a GetUserPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUserPolicy",
	}
	for header,value in pairs(GetUserPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetUserPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUserPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUserPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUserPolicySync(GetUserPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserPolicyAsync(GetUserPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateServiceLinkedRole asynchronously, invoking a callback when done
-- @param CreateServiceLinkedRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateServiceLinkedRoleAsync(CreateServiceLinkedRoleRequest, cb)
	assert(CreateServiceLinkedRoleRequest, "You must provide a CreateServiceLinkedRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateServiceLinkedRole",
	}
	for header,value in pairs(CreateServiceLinkedRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateServiceLinkedRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateServiceLinkedRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateServiceLinkedRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateServiceLinkedRoleSync(CreateServiceLinkedRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateServiceLinkedRoleAsync(CreateServiceLinkedRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInstanceProfile asynchronously, invoking a callback when done
-- @param DeleteInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteInstanceProfileAsync(DeleteInstanceProfileRequest, cb)
	assert(DeleteInstanceProfileRequest, "You must provide a DeleteInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteInstanceProfile",
	}
	for header,value in pairs(DeleteInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteInstanceProfileSync(DeleteInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInstanceProfileAsync(DeleteInstanceProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountSummary asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountSummaryAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccountSummary",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountSummary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountSummarySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountSummaryAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRolePermissionsBoundary asynchronously, invoking a callback when done
-- @param DeleteRolePermissionsBoundaryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRolePermissionsBoundaryAsync(DeleteRolePermissionsBoundaryRequest, cb)
	assert(DeleteRolePermissionsBoundaryRequest, "You must provide a DeleteRolePermissionsBoundaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRolePermissionsBoundary",
	}
	for header,value in pairs(DeleteRolePermissionsBoundaryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRolePermissionsBoundaryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRolePermissionsBoundary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRolePermissionsBoundaryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRolePermissionsBoundarySync(DeleteRolePermissionsBoundaryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRolePermissionsBoundaryAsync(DeleteRolePermissionsBoundaryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAttachedGroupPolicies asynchronously, invoking a callback when done
-- @param ListAttachedGroupPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAttachedGroupPoliciesAsync(ListAttachedGroupPoliciesRequest, cb)
	assert(ListAttachedGroupPoliciesRequest, "You must provide a ListAttachedGroupPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAttachedGroupPolicies",
	}
	for header,value in pairs(ListAttachedGroupPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAttachedGroupPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAttachedGroupPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAttachedGroupPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAttachedGroupPoliciesSync(ListAttachedGroupPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAttachedGroupPoliciesAsync(ListAttachedGroupPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUser asynchronously, invoking a callback when done
-- @param UpdateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserAsync(UpdateUserRequest, cb)
	assert(UpdateUserRequest, "You must provide a UpdateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUser",
	}
	for header,value in pairs(UpdateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserSync(UpdateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserAsync(UpdateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAccountAliases asynchronously, invoking a callback when done
-- @param ListAccountAliasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAccountAliasesAsync(ListAccountAliasesRequest, cb)
	assert(ListAccountAliasesRequest, "You must provide a ListAccountAliasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAccountAliases",
	}
	for header,value in pairs(ListAccountAliasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAccountAliasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAccountAliases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAccountAliasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAccountAliasesSync(ListAccountAliasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAccountAliasesAsync(ListAccountAliasesRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".GetUser",
	}
	for header,value in pairs(GetUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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

--- Call ListInstanceProfilesForRole asynchronously, invoking a callback when done
-- @param ListInstanceProfilesForRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInstanceProfilesForRoleAsync(ListInstanceProfilesForRoleRequest, cb)
	assert(ListInstanceProfilesForRoleRequest, "You must provide a ListInstanceProfilesForRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListInstanceProfilesForRole",
	}
	for header,value in pairs(ListInstanceProfilesForRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListInstanceProfilesForRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInstanceProfilesForRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInstanceProfilesForRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListInstanceProfilesForRoleSync(ListInstanceProfilesForRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInstanceProfilesForRoleAsync(ListInstanceProfilesForRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadSSHPublicKey asynchronously, invoking a callback when done
-- @param UploadSSHPublicKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UploadSSHPublicKeyAsync(UploadSSHPublicKeyRequest, cb)
	assert(UploadSSHPublicKeyRequest, "You must provide a UploadSSHPublicKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadSSHPublicKey",
	}
	for header,value in pairs(UploadSSHPublicKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UploadSSHPublicKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UploadSSHPublicKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadSSHPublicKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UploadSSHPublicKeySync(UploadSSHPublicKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadSSHPublicKeyAsync(UploadSSHPublicKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetServiceLinkedRoleDeletionStatus asynchronously, invoking a callback when done
-- @param GetServiceLinkedRoleDeletionStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetServiceLinkedRoleDeletionStatusAsync(GetServiceLinkedRoleDeletionStatusRequest, cb)
	assert(GetServiceLinkedRoleDeletionStatusRequest, "You must provide a GetServiceLinkedRoleDeletionStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetServiceLinkedRoleDeletionStatus",
	}
	for header,value in pairs(GetServiceLinkedRoleDeletionStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetServiceLinkedRoleDeletionStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetServiceLinkedRoleDeletionStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetServiceLinkedRoleDeletionStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetServiceLinkedRoleDeletionStatusSync(GetServiceLinkedRoleDeletionStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetServiceLinkedRoleDeletionStatusAsync(GetServiceLinkedRoleDeletionStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroupPolicies asynchronously, invoking a callback when done
-- @param ListGroupPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGroupPoliciesAsync(ListGroupPoliciesRequest, cb)
	assert(ListGroupPoliciesRequest, "You must provide a ListGroupPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGroupPolicies",
	}
	for header,value in pairs(ListGroupPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGroupPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroupPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListGroupPoliciesSync(ListGroupPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupPoliciesAsync(ListGroupPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAccessKey asynchronously, invoking a callback when done
-- @param CreateAccessKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAccessKeyAsync(CreateAccessKeyRequest, cb)
	assert(CreateAccessKeyRequest, "You must provide a CreateAccessKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAccessKey",
	}
	for header,value in pairs(CreateAccessKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAccessKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAccessKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAccessKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAccessKeySync(CreateAccessKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAccessKeyAsync(CreateAccessKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLoginProfile asynchronously, invoking a callback when done
-- @param UpdateLoginProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateLoginProfileAsync(UpdateLoginProfileRequest, cb)
	assert(UpdateLoginProfileRequest, "You must provide a UpdateLoginProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateLoginProfile",
	}
	for header,value in pairs(UpdateLoginProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateLoginProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateLoginProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateLoginProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateLoginProfileSync(UpdateLoginProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLoginProfileAsync(UpdateLoginProfileRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".ListGroups",
	}
	for header,value in pairs(ListGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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

--- Call UpdateRoleDescription asynchronously, invoking a callback when done
-- @param UpdateRoleDescriptionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRoleDescriptionAsync(UpdateRoleDescriptionRequest, cb)
	assert(UpdateRoleDescriptionRequest, "You must provide a UpdateRoleDescriptionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateRoleDescription",
	}
	for header,value in pairs(UpdateRoleDescriptionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRoleDescriptionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRoleDescription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRoleDescriptionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRoleDescriptionSync(UpdateRoleDescriptionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRoleDescriptionAsync(UpdateRoleDescriptionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSAMLProvider asynchronously, invoking a callback when done
-- @param UpdateSAMLProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSAMLProviderAsync(UpdateSAMLProviderRequest, cb)
	assert(UpdateSAMLProviderRequest, "You must provide a UpdateSAMLProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateSAMLProvider",
	}
	for header,value in pairs(UpdateSAMLProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSAMLProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSAMLProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSAMLProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSAMLProviderSync(UpdateSAMLProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSAMLProviderAsync(UpdateSAMLProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetServiceSpecificCredential asynchronously, invoking a callback when done
-- @param ResetServiceSpecificCredentialRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetServiceSpecificCredentialAsync(ResetServiceSpecificCredentialRequest, cb)
	assert(ResetServiceSpecificCredentialRequest, "You must provide a ResetServiceSpecificCredentialRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResetServiceSpecificCredential",
	}
	for header,value in pairs(ResetServiceSpecificCredentialRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetServiceSpecificCredentialRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetServiceSpecificCredential synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetServiceSpecificCredentialRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResetServiceSpecificCredentialSync(ResetServiceSpecificCredentialRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetServiceSpecificCredentialAsync(ResetServiceSpecificCredentialRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSSHPublicKey asynchronously, invoking a callback when done
-- @param DeleteSSHPublicKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSSHPublicKeyAsync(DeleteSSHPublicKeyRequest, cb)
	assert(DeleteSSHPublicKeyRequest, "You must provide a DeleteSSHPublicKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSSHPublicKey",
	}
	for header,value in pairs(DeleteSSHPublicKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSSHPublicKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSSHPublicKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSSHPublicKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSSHPublicKeySync(DeleteSSHPublicKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSSHPublicKeyAsync(DeleteSSHPublicKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRole asynchronously, invoking a callback when done
-- @param UpdateRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRoleAsync(UpdateRoleRequest, cb)
	assert(UpdateRoleRequest, "You must provide a UpdateRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateRole",
	}
	for header,value in pairs(UpdateRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRoleSync(UpdateRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRoleAsync(UpdateRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveUserFromGroup asynchronously, invoking a callback when done
-- @param RemoveUserFromGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveUserFromGroupAsync(RemoveUserFromGroupRequest, cb)
	assert(RemoveUserFromGroupRequest, "You must provide a RemoveUserFromGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveUserFromGroup",
	}
	for header,value in pairs(RemoveUserFromGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveUserFromGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveUserFromGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveUserFromGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveUserFromGroupSync(RemoveUserFromGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveUserFromGroupAsync(RemoveUserFromGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSAMLProviders asynchronously, invoking a callback when done
-- @param ListSAMLProvidersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSAMLProvidersAsync(ListSAMLProvidersRequest, cb)
	assert(ListSAMLProvidersRequest, "You must provide a ListSAMLProvidersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSAMLProviders",
	}
	for header,value in pairs(ListSAMLProvidersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSAMLProvidersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSAMLProviders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSAMLProvidersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSAMLProvidersSync(ListSAMLProvidersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSAMLProvidersAsync(ListSAMLProvidersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRolePolicy asynchronously, invoking a callback when done
-- @param DeleteRolePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRolePolicyAsync(DeleteRolePolicyRequest, cb)
	assert(DeleteRolePolicyRequest, "You must provide a DeleteRolePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRolePolicy",
	}
	for header,value in pairs(DeleteRolePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRolePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRolePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRolePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRolePolicySync(DeleteRolePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRolePolicyAsync(DeleteRolePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadServerCertificate asynchronously, invoking a callback when done
-- @param UploadServerCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UploadServerCertificateAsync(UploadServerCertificateRequest, cb)
	assert(UploadServerCertificateRequest, "You must provide a UploadServerCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadServerCertificate",
	}
	for header,value in pairs(UploadServerCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UploadServerCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UploadServerCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadServerCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UploadServerCertificateSync(UploadServerCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadServerCertificateAsync(UploadServerCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetContextKeysForPrincipalPolicy asynchronously, invoking a callback when done
-- @param GetContextKeysForPrincipalPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetContextKeysForPrincipalPolicyAsync(GetContextKeysForPrincipalPolicyRequest, cb)
	assert(GetContextKeysForPrincipalPolicyRequest, "You must provide a GetContextKeysForPrincipalPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetContextKeysForPrincipalPolicy",
	}
	for header,value in pairs(GetContextKeysForPrincipalPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetContextKeysForPrincipalPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetContextKeysForPrincipalPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetContextKeysForPrincipalPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetContextKeysForPrincipalPolicySync(GetContextKeysForPrincipalPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetContextKeysForPrincipalPolicyAsync(GetContextKeysForPrincipalPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAccessKey asynchronously, invoking a callback when done
-- @param UpdateAccessKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAccessKeyAsync(UpdateAccessKeyRequest, cb)
	assert(UpdateAccessKeyRequest, "You must provide a UpdateAccessKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAccessKey",
	}
	for header,value in pairs(UpdateAccessKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAccessKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAccessKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAccessKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAccessKeySync(UpdateAccessKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAccessKeyAsync(UpdateAccessKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRoles asynchronously, invoking a callback when done
-- @param ListRolesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRolesAsync(ListRolesRequest, cb)
	assert(ListRolesRequest, "You must provide a ListRolesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListRoles",
	}
	for header,value in pairs(ListRolesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRolesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRoles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRolesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRolesSync(ListRolesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRolesAsync(ListRolesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAccessKey asynchronously, invoking a callback when done
-- @param DeleteAccessKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAccessKeyAsync(DeleteAccessKeyRequest, cb)
	assert(DeleteAccessKeyRequest, "You must provide a DeleteAccessKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAccessKey",
	}
	for header,value in pairs(DeleteAccessKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAccessKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAccessKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAccessKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAccessKeySync(DeleteAccessKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAccessKeyAsync(DeleteAccessKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddRoleToInstanceProfile asynchronously, invoking a callback when done
-- @param AddRoleToInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddRoleToInstanceProfileAsync(AddRoleToInstanceProfileRequest, cb)
	assert(AddRoleToInstanceProfileRequest, "You must provide a AddRoleToInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddRoleToInstanceProfile",
	}
	for header,value in pairs(AddRoleToInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddRoleToInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddRoleToInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddRoleToInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddRoleToInstanceProfileSync(AddRoleToInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddRoleToInstanceProfileAsync(AddRoleToInstanceProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetContextKeysForCustomPolicy asynchronously, invoking a callback when done
-- @param GetContextKeysForCustomPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetContextKeysForCustomPolicyAsync(GetContextKeysForCustomPolicyRequest, cb)
	assert(GetContextKeysForCustomPolicyRequest, "You must provide a GetContextKeysForCustomPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetContextKeysForCustomPolicy",
	}
	for header,value in pairs(GetContextKeysForCustomPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetContextKeysForCustomPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetContextKeysForCustomPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetContextKeysForCustomPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetContextKeysForCustomPolicySync(GetContextKeysForCustomPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetContextKeysForCustomPolicyAsync(GetContextKeysForCustomPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroupPolicy asynchronously, invoking a callback when done
-- @param GetGroupPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGroupPolicyAsync(GetGroupPolicyRequest, cb)
	assert(GetGroupPolicyRequest, "You must provide a GetGroupPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGroupPolicy",
	}
	for header,value in pairs(GetGroupPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetGroupPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGroupPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetGroupPolicySync(GetGroupPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupPolicyAsync(GetGroupPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteServiceLinkedRole asynchronously, invoking a callback when done
-- @param DeleteServiceLinkedRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteServiceLinkedRoleAsync(DeleteServiceLinkedRoleRequest, cb)
	assert(DeleteServiceLinkedRoleRequest, "You must provide a DeleteServiceLinkedRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteServiceLinkedRole",
	}
	for header,value in pairs(DeleteServiceLinkedRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteServiceLinkedRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteServiceLinkedRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteServiceLinkedRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteServiceLinkedRoleSync(DeleteServiceLinkedRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteServiceLinkedRoleAsync(DeleteServiceLinkedRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateServiceSpecificCredential asynchronously, invoking a callback when done
-- @param CreateServiceSpecificCredentialRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateServiceSpecificCredentialAsync(CreateServiceSpecificCredentialRequest, cb)
	assert(CreateServiceSpecificCredentialRequest, "You must provide a CreateServiceSpecificCredentialRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateServiceSpecificCredential",
	}
	for header,value in pairs(CreateServiceSpecificCredentialRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateServiceSpecificCredentialRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateServiceSpecificCredential synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateServiceSpecificCredentialRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateServiceSpecificCredentialSync(CreateServiceSpecificCredentialRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateServiceSpecificCredentialAsync(CreateServiceSpecificCredentialRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLoginProfile asynchronously, invoking a callback when done
-- @param CreateLoginProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLoginProfileAsync(CreateLoginProfileRequest, cb)
	assert(CreateLoginProfileRequest, "You must provide a CreateLoginProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLoginProfile",
	}
	for header,value in pairs(CreateLoginProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLoginProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoginProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoginProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLoginProfileSync(CreateLoginProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoginProfileAsync(CreateLoginProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SimulateCustomPolicy asynchronously, invoking a callback when done
-- @param SimulateCustomPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SimulateCustomPolicyAsync(SimulateCustomPolicyRequest, cb)
	assert(SimulateCustomPolicyRequest, "You must provide a SimulateCustomPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SimulateCustomPolicy",
	}
	for header,value in pairs(SimulateCustomPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SimulateCustomPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SimulateCustomPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SimulateCustomPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SimulateCustomPolicySync(SimulateCustomPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SimulateCustomPolicyAsync(SimulateCustomPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeactivateMFADevice asynchronously, invoking a callback when done
-- @param DeactivateMFADeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeactivateMFADeviceAsync(DeactivateMFADeviceRequest, cb)
	assert(DeactivateMFADeviceRequest, "You must provide a DeactivateMFADeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeactivateMFADevice",
	}
	for header,value in pairs(DeactivateMFADeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeactivateMFADeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeactivateMFADevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeactivateMFADeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeactivateMFADeviceSync(DeactivateMFADeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeactivateMFADeviceAsync(DeactivateMFADeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachRolePolicy asynchronously, invoking a callback when done
-- @param DetachRolePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachRolePolicyAsync(DetachRolePolicyRequest, cb)
	assert(DetachRolePolicyRequest, "You must provide a DetachRolePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachRolePolicy",
	}
	for header,value in pairs(DetachRolePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachRolePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachRolePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachRolePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachRolePolicySync(DetachRolePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachRolePolicyAsync(DetachRolePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPolicy asynchronously, invoking a callback when done
-- @param GetPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPolicyAsync(GetPolicyRequest, cb)
	assert(GetPolicyRequest, "You must provide a GetPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPolicy",
	}
	for header,value in pairs(GetPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPolicySync(GetPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPolicyAsync(GetPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSAMLProvider asynchronously, invoking a callback when done
-- @param CreateSAMLProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSAMLProviderAsync(CreateSAMLProviderRequest, cb)
	assert(CreateSAMLProviderRequest, "You must provide a CreateSAMLProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSAMLProvider",
	}
	for header,value in pairs(CreateSAMLProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSAMLProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSAMLProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSAMLProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSAMLProviderSync(CreateSAMLProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSAMLProviderAsync(CreateSAMLProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOpenIDConnectProviders asynchronously, invoking a callback when done
-- @param ListOpenIDConnectProvidersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOpenIDConnectProvidersAsync(ListOpenIDConnectProvidersRequest, cb)
	assert(ListOpenIDConnectProvidersRequest, "You must provide a ListOpenIDConnectProvidersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListOpenIDConnectProviders",
	}
	for header,value in pairs(ListOpenIDConnectProvidersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOpenIDConnectProvidersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOpenIDConnectProviders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOpenIDConnectProvidersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOpenIDConnectProvidersSync(ListOpenIDConnectProvidersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOpenIDConnectProvidersAsync(ListOpenIDConnectProvidersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAccountAlias asynchronously, invoking a callback when done
-- @param DeleteAccountAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAccountAliasAsync(DeleteAccountAliasRequest, cb)
	assert(DeleteAccountAliasRequest, "You must provide a DeleteAccountAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAccountAlias",
	}
	for header,value in pairs(DeleteAccountAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAccountAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAccountAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAccountAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAccountAliasSync(DeleteAccountAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAccountAliasAsync(DeleteAccountAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSigningCertificates asynchronously, invoking a callback when done
-- @param ListSigningCertificatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSigningCertificatesAsync(ListSigningCertificatesRequest, cb)
	assert(ListSigningCertificatesRequest, "You must provide a ListSigningCertificatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSigningCertificates",
	}
	for header,value in pairs(ListSigningCertificatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSigningCertificatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSigningCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSigningCertificatesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSigningCertificatesSync(ListSigningCertificatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSigningCertificatesAsync(ListSigningCertificatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRole asynchronously, invoking a callback when done
-- @param DeleteRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRoleAsync(DeleteRoleRequest, cb)
	assert(DeleteRoleRequest, "You must provide a DeleteRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteRole",
	}
	for header,value in pairs(DeleteRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRoleSync(DeleteRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRoleAsync(DeleteRoleRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateGroup",
	}
	for header,value in pairs(UpdateGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
		[request_headers.AMZ_TARGET_HEADER] = ".GetGroup",
	}
	for header,value in pairs(GetGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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

--- Call GetRolePolicy asynchronously, invoking a callback when done
-- @param GetRolePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRolePolicyAsync(GetRolePolicyRequest, cb)
	assert(GetRolePolicyRequest, "You must provide a GetRolePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRolePolicy",
	}
	for header,value in pairs(GetRolePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRolePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRolePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRolePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRolePolicySync(GetRolePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRolePolicyAsync(GetRolePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUser asynchronously, invoking a callback when done
-- @param CreateUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserAsync(CreateUserRequest, cb)
	assert(CreateUserRequest, "You must provide a CreateUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateUser",
	}
	for header,value in pairs(CreateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserSync(CreateUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserAsync(CreateUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddUserToGroup asynchronously, invoking a callback when done
-- @param AddUserToGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddUserToGroupAsync(AddUserToGroupRequest, cb)
	assert(AddUserToGroupRequest, "You must provide a AddUserToGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddUserToGroup",
	}
	for header,value in pairs(AddUserToGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddUserToGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddUserToGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddUserToGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddUserToGroupSync(AddUserToGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddUserToGroupAsync(AddUserToGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveRoleFromInstanceProfile asynchronously, invoking a callback when done
-- @param RemoveRoleFromInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveRoleFromInstanceProfileAsync(RemoveRoleFromInstanceProfileRequest, cb)
	assert(RemoveRoleFromInstanceProfileRequest, "You must provide a RemoveRoleFromInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveRoleFromInstanceProfile",
	}
	for header,value in pairs(RemoveRoleFromInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveRoleFromInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveRoleFromInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveRoleFromInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveRoleFromInstanceProfileSync(RemoveRoleFromInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveRoleFromInstanceProfileAsync(RemoveRoleFromInstanceProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInstanceProfiles asynchronously, invoking a callback when done
-- @param ListInstanceProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInstanceProfilesAsync(ListInstanceProfilesRequest, cb)
	assert(ListInstanceProfilesRequest, "You must provide a ListInstanceProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListInstanceProfiles",
	}
	for header,value in pairs(ListInstanceProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListInstanceProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInstanceProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInstanceProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListInstanceProfilesSync(ListInstanceProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInstanceProfilesAsync(ListInstanceProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateServiceSpecificCredential asynchronously, invoking a callback when done
-- @param UpdateServiceSpecificCredentialRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateServiceSpecificCredentialAsync(UpdateServiceSpecificCredentialRequest, cb)
	assert(UpdateServiceSpecificCredentialRequest, "You must provide a UpdateServiceSpecificCredentialRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateServiceSpecificCredential",
	}
	for header,value in pairs(UpdateServiceSpecificCredentialRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateServiceSpecificCredentialRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateServiceSpecificCredential synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateServiceSpecificCredentialRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateServiceSpecificCredentialSync(UpdateServiceSpecificCredentialRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateServiceSpecificCredentialAsync(UpdateServiceSpecificCredentialRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAttachedUserPolicies asynchronously, invoking a callback when done
-- @param ListAttachedUserPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAttachedUserPoliciesAsync(ListAttachedUserPoliciesRequest, cb)
	assert(ListAttachedUserPoliciesRequest, "You must provide a ListAttachedUserPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAttachedUserPolicies",
	}
	for header,value in pairs(ListAttachedUserPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAttachedUserPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAttachedUserPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAttachedUserPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAttachedUserPoliciesSync(ListAttachedUserPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAttachedUserPoliciesAsync(ListAttachedUserPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePolicyVersion asynchronously, invoking a callback when done
-- @param CreatePolicyVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePolicyVersionAsync(CreatePolicyVersionRequest, cb)
	assert(CreatePolicyVersionRequest, "You must provide a CreatePolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePolicyVersion",
	}
	for header,value in pairs(CreatePolicyVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePolicyVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePolicyVersionSync(CreatePolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePolicyVersionAsync(CreatePolicyVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListServiceSpecificCredentials asynchronously, invoking a callback when done
-- @param ListServiceSpecificCredentialsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListServiceSpecificCredentialsAsync(ListServiceSpecificCredentialsRequest, cb)
	assert(ListServiceSpecificCredentialsRequest, "You must provide a ListServiceSpecificCredentialsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListServiceSpecificCredentials",
	}
	for header,value in pairs(ListServiceSpecificCredentialsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListServiceSpecificCredentialsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListServiceSpecificCredentials synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListServiceSpecificCredentialsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListServiceSpecificCredentialsSync(ListServiceSpecificCredentialsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListServiceSpecificCredentialsAsync(ListServiceSpecificCredentialsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachUserPolicy asynchronously, invoking a callback when done
-- @param AttachUserPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachUserPolicyAsync(AttachUserPolicyRequest, cb)
	assert(AttachUserPolicyRequest, "You must provide a AttachUserPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachUserPolicy",
	}
	for header,value in pairs(AttachUserPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachUserPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachUserPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachUserPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachUserPolicySync(AttachUserPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachUserPolicyAsync(AttachUserPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVirtualMFADevices asynchronously, invoking a callback when done
-- @param ListVirtualMFADevicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVirtualMFADevicesAsync(ListVirtualMFADevicesRequest, cb)
	assert(ListVirtualMFADevicesRequest, "You must provide a ListVirtualMFADevicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListVirtualMFADevices",
	}
	for header,value in pairs(ListVirtualMFADevicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListVirtualMFADevicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVirtualMFADevices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVirtualMFADevicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListVirtualMFADevicesSync(ListVirtualMFADevicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVirtualMFADevicesAsync(ListVirtualMFADevicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAssumeRolePolicy asynchronously, invoking a callback when done
-- @param UpdateAssumeRolePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAssumeRolePolicyAsync(UpdateAssumeRolePolicyRequest, cb)
	assert(UpdateAssumeRolePolicyRequest, "You must provide a UpdateAssumeRolePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAssumeRolePolicy",
	}
	for header,value in pairs(UpdateAssumeRolePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAssumeRolePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAssumeRolePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAssumeRolePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAssumeRolePolicySync(UpdateAssumeRolePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAssumeRolePolicyAsync(UpdateAssumeRolePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListServerCertificates asynchronously, invoking a callback when done
-- @param ListServerCertificatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListServerCertificatesAsync(ListServerCertificatesRequest, cb)
	assert(ListServerCertificatesRequest, "You must provide a ListServerCertificatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListServerCertificates",
	}
	for header,value in pairs(ListServerCertificatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListServerCertificatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListServerCertificates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListServerCertificatesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListServerCertificatesSync(ListServerCertificatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListServerCertificatesAsync(ListServerCertificatesRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteGroup",
	}
	for header,value in pairs(DeleteGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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

--- Call UpdateOpenIDConnectProviderThumbprint asynchronously, invoking a callback when done
-- @param UpdateOpenIDConnectProviderThumbprintRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateOpenIDConnectProviderThumbprintAsync(UpdateOpenIDConnectProviderThumbprintRequest, cb)
	assert(UpdateOpenIDConnectProviderThumbprintRequest, "You must provide a UpdateOpenIDConnectProviderThumbprintRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateOpenIDConnectProviderThumbprint",
	}
	for header,value in pairs(UpdateOpenIDConnectProviderThumbprintRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateOpenIDConnectProviderThumbprintRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateOpenIDConnectProviderThumbprint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateOpenIDConnectProviderThumbprintRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateOpenIDConnectProviderThumbprintSync(UpdateOpenIDConnectProviderThumbprintRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateOpenIDConnectProviderThumbprintAsync(UpdateOpenIDConnectProviderThumbprintRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".CreateGroup",
	}
	for header,value in pairs(CreateGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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

--- Call DeletePolicy asynchronously, invoking a callback when done
-- @param DeletePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePolicyAsync(DeletePolicyRequest, cb)
	assert(DeletePolicyRequest, "You must provide a DeletePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePolicy",
	}
	for header,value in pairs(DeletePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePolicySync(DeletePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePolicyAsync(DeletePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserPolicy asynchronously, invoking a callback when done
-- @param DeleteUserPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserPolicyAsync(DeleteUserPolicyRequest, cb)
	assert(DeleteUserPolicyRequest, "You must provide a DeleteUserPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUserPolicy",
	}
	for header,value in pairs(DeleteUserPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserPolicySync(DeleteUserPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserPolicyAsync(DeleteUserPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateServerCertificate asynchronously, invoking a callback when done
-- @param UpdateServerCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateServerCertificateAsync(UpdateServerCertificateRequest, cb)
	assert(UpdateServerCertificateRequest, "You must provide a UpdateServerCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateServerCertificate",
	}
	for header,value in pairs(UpdateServerCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateServerCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateServerCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateServerCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateServerCertificateSync(UpdateServerCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateServerCertificateAsync(UpdateServerCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddClientIDToOpenIDConnectProvider asynchronously, invoking a callback when done
-- @param AddClientIDToOpenIDConnectProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddClientIDToOpenIDConnectProviderAsync(AddClientIDToOpenIDConnectProviderRequest, cb)
	assert(AddClientIDToOpenIDConnectProviderRequest, "You must provide a AddClientIDToOpenIDConnectProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddClientIDToOpenIDConnectProvider",
	}
	for header,value in pairs(AddClientIDToOpenIDConnectProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddClientIDToOpenIDConnectProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddClientIDToOpenIDConnectProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddClientIDToOpenIDConnectProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddClientIDToOpenIDConnectProviderSync(AddClientIDToOpenIDConnectProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddClientIDToOpenIDConnectProviderAsync(AddClientIDToOpenIDConnectProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVirtualMFADevice asynchronously, invoking a callback when done
-- @param DeleteVirtualMFADeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVirtualMFADeviceAsync(DeleteVirtualMFADeviceRequest, cb)
	assert(DeleteVirtualMFADeviceRequest, "You must provide a DeleteVirtualMFADeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteVirtualMFADevice",
	}
	for header,value in pairs(DeleteVirtualMFADeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteVirtualMFADeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVirtualMFADevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVirtualMFADeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVirtualMFADeviceSync(DeleteVirtualMFADeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVirtualMFADeviceAsync(DeleteVirtualMFADeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRolePermissionsBoundary asynchronously, invoking a callback when done
-- @param PutRolePermissionsBoundaryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRolePermissionsBoundaryAsync(PutRolePermissionsBoundaryRequest, cb)
	assert(PutRolePermissionsBoundaryRequest, "You must provide a PutRolePermissionsBoundaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutRolePermissionsBoundary",
	}
	for header,value in pairs(PutRolePermissionsBoundaryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRolePermissionsBoundaryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRolePermissionsBoundary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRolePermissionsBoundaryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutRolePermissionsBoundarySync(PutRolePermissionsBoundaryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRolePermissionsBoundaryAsync(PutRolePermissionsBoundaryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SimulatePrincipalPolicy asynchronously, invoking a callback when done
-- @param SimulatePrincipalPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SimulatePrincipalPolicyAsync(SimulatePrincipalPolicyRequest, cb)
	assert(SimulatePrincipalPolicyRequest, "You must provide a SimulatePrincipalPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SimulatePrincipalPolicy",
	}
	for header,value in pairs(SimulatePrincipalPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SimulatePrincipalPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SimulatePrincipalPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SimulatePrincipalPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SimulatePrincipalPolicySync(SimulatePrincipalPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SimulatePrincipalPolicyAsync(SimulatePrincipalPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAccessKeys asynchronously, invoking a callback when done
-- @param ListAccessKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAccessKeysAsync(ListAccessKeysRequest, cb)
	assert(ListAccessKeysRequest, "You must provide a ListAccessKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAccessKeys",
	}
	for header,value in pairs(ListAccessKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAccessKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAccessKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAccessKeysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAccessKeysSync(ListAccessKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAccessKeysAsync(ListAccessKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSSHPublicKey asynchronously, invoking a callback when done
-- @param GetSSHPublicKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSSHPublicKeyAsync(GetSSHPublicKeyRequest, cb)
	assert(GetSSHPublicKeyRequest, "You must provide a GetSSHPublicKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSSHPublicKey",
	}
	for header,value in pairs(GetSSHPublicKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSSHPublicKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSSHPublicKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSSHPublicKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSSHPublicKeySync(GetSSHPublicKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSSHPublicKeyAsync(GetSSHPublicKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSSHPublicKeys asynchronously, invoking a callback when done
-- @param ListSSHPublicKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSSHPublicKeysAsync(ListSSHPublicKeysRequest, cb)
	assert(ListSSHPublicKeysRequest, "You must provide a ListSSHPublicKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSSHPublicKeys",
	}
	for header,value in pairs(ListSSHPublicKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSSHPublicKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSSHPublicKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSSHPublicKeysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSSHPublicKeysSync(ListSSHPublicKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSSHPublicKeysAsync(ListSSHPublicKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSigningCertificate asynchronously, invoking a callback when done
-- @param DeleteSigningCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSigningCertificateAsync(DeleteSigningCertificateRequest, cb)
	assert(DeleteSigningCertificateRequest, "You must provide a DeleteSigningCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSigningCertificate",
	}
	for header,value in pairs(DeleteSigningCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSigningCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSigningCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSigningCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSigningCertificateSync(DeleteSigningCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSigningCertificateAsync(DeleteSigningCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPolicyVersion asynchronously, invoking a callback when done
-- @param GetPolicyVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPolicyVersionAsync(GetPolicyVersionRequest, cb)
	assert(GetPolicyVersionRequest, "You must provide a GetPolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPolicyVersion",
	}
	for header,value in pairs(GetPolicyVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPolicyVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPolicyVersionSync(GetPolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPolicyVersionAsync(GetPolicyVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRolePolicy asynchronously, invoking a callback when done
-- @param PutRolePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRolePolicyAsync(PutRolePolicyRequest, cb)
	assert(PutRolePolicyRequest, "You must provide a PutRolePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutRolePolicy",
	}
	for header,value in pairs(PutRolePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRolePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRolePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRolePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutRolePolicySync(PutRolePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRolePolicyAsync(PutRolePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetDefaultPolicyVersion asynchronously, invoking a callback when done
-- @param SetDefaultPolicyVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetDefaultPolicyVersionAsync(SetDefaultPolicyVersionRequest, cb)
	assert(SetDefaultPolicyVersionRequest, "You must provide a SetDefaultPolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetDefaultPolicyVersion",
	}
	for header,value in pairs(SetDefaultPolicyVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SetDefaultPolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetDefaultPolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetDefaultPolicyVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SetDefaultPolicyVersionSync(SetDefaultPolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetDefaultPolicyVersionAsync(SetDefaultPolicyVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccessKeyLastUsed asynchronously, invoking a callback when done
-- @param GetAccessKeyLastUsedRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccessKeyLastUsedAsync(GetAccessKeyLastUsedRequest, cb)
	assert(GetAccessKeyLastUsedRequest, "You must provide a GetAccessKeyLastUsedRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccessKeyLastUsed",
	}
	for header,value in pairs(GetAccessKeyLastUsedRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAccessKeyLastUsedRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccessKeyLastUsed synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccessKeyLastUsedRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccessKeyLastUsedSync(GetAccessKeyLastUsedRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccessKeyLastUsedAsync(GetAccessKeyLastUsedRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAccountPasswordPolicy asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAccountPasswordPolicyAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAccountPasswordPolicy",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAccountPasswordPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAccountPasswordPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAccountPasswordPolicyAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMFADevices asynchronously, invoking a callback when done
-- @param ListMFADevicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMFADevicesAsync(ListMFADevicesRequest, cb)
	assert(ListMFADevicesRequest, "You must provide a ListMFADevicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListMFADevices",
	}
	for header,value in pairs(ListMFADevicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListMFADevicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMFADevices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMFADevicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListMFADevicesSync(ListMFADevicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMFADevicesAsync(ListMFADevicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSigningCertificate asynchronously, invoking a callback when done
-- @param UpdateSigningCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSigningCertificateAsync(UpdateSigningCertificateRequest, cb)
	assert(UpdateSigningCertificateRequest, "You must provide a UpdateSigningCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateSigningCertificate",
	}
	for header,value in pairs(UpdateSigningCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSigningCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSigningCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSigningCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSigningCertificateSync(UpdateSigningCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSigningCertificateAsync(UpdateSigningCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachGroupPolicy asynchronously, invoking a callback when done
-- @param DetachGroupPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachGroupPolicyAsync(DetachGroupPolicyRequest, cb)
	assert(DetachGroupPolicyRequest, "You must provide a DetachGroupPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachGroupPolicy",
	}
	for header,value in pairs(DetachGroupPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachGroupPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachGroupPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachGroupPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachGroupPolicySync(DetachGroupPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachGroupPolicyAsync(DetachGroupPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSSHPublicKey asynchronously, invoking a callback when done
-- @param UpdateSSHPublicKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSSHPublicKeyAsync(UpdateSSHPublicKeyRequest, cb)
	assert(UpdateSSHPublicKeyRequest, "You must provide a UpdateSSHPublicKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateSSHPublicKey",
	}
	for header,value in pairs(UpdateSSHPublicKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSSHPublicKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSSHPublicKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSSHPublicKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSSHPublicKeySync(UpdateSSHPublicKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSSHPublicKeyAsync(UpdateSSHPublicKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInstanceProfile asynchronously, invoking a callback when done
-- @param GetInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetInstanceProfileAsync(GetInstanceProfileRequest, cb)
	assert(GetInstanceProfileRequest, "You must provide a GetInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetInstanceProfile",
	}
	for header,value in pairs(GetInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetInstanceProfileSync(GetInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInstanceProfileAsync(GetInstanceProfileRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUser",
	}
	for header,value in pairs(DeleteUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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

--- Call GetOpenIDConnectProvider asynchronously, invoking a callback when done
-- @param GetOpenIDConnectProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetOpenIDConnectProviderAsync(GetOpenIDConnectProviderRequest, cb)
	assert(GetOpenIDConnectProviderRequest, "You must provide a GetOpenIDConnectProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetOpenIDConnectProvider",
	}
	for header,value in pairs(GetOpenIDConnectProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetOpenIDConnectProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetOpenIDConnectProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetOpenIDConnectProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetOpenIDConnectProviderSync(GetOpenIDConnectProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetOpenIDConnectProviderAsync(GetOpenIDConnectProviderRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".ListUsers",
	}
	for header,value in pairs(ListUsersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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

--- Call DeleteLoginProfile asynchronously, invoking a callback when done
-- @param DeleteLoginProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLoginProfileAsync(DeleteLoginProfileRequest, cb)
	assert(DeleteLoginProfileRequest, "You must provide a DeleteLoginProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLoginProfile",
	}
	for header,value in pairs(DeleteLoginProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLoginProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoginProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoginProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLoginProfileSync(DeleteLoginProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoginProfileAsync(DeleteLoginProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPolicyVersions asynchronously, invoking a callback when done
-- @param ListPolicyVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPolicyVersionsAsync(ListPolicyVersionsRequest, cb)
	assert(ListPolicyVersionsRequest, "You must provide a ListPolicyVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPolicyVersions",
	}
	for header,value in pairs(ListPolicyVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPolicyVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPolicyVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPolicyVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPolicyVersionsSync(ListPolicyVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPolicyVersionsAsync(ListPolicyVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachGroupPolicy asynchronously, invoking a callback when done
-- @param AttachGroupPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachGroupPolicyAsync(AttachGroupPolicyRequest, cb)
	assert(AttachGroupPolicyRequest, "You must provide a AttachGroupPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachGroupPolicy",
	}
	for header,value in pairs(AttachGroupPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachGroupPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachGroupPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachGroupPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachGroupPolicySync(AttachGroupPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachGroupPolicyAsync(AttachGroupPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteServiceSpecificCredential asynchronously, invoking a callback when done
-- @param DeleteServiceSpecificCredentialRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteServiceSpecificCredentialAsync(DeleteServiceSpecificCredentialRequest, cb)
	assert(DeleteServiceSpecificCredentialRequest, "You must provide a DeleteServiceSpecificCredentialRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteServiceSpecificCredential",
	}
	for header,value in pairs(DeleteServiceSpecificCredentialRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteServiceSpecificCredentialRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteServiceSpecificCredential synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteServiceSpecificCredentialRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteServiceSpecificCredentialSync(DeleteServiceSpecificCredentialRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteServiceSpecificCredentialAsync(DeleteServiceSpecificCredentialRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePolicy asynchronously, invoking a callback when done
-- @param CreatePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePolicyAsync(CreatePolicyRequest, cb)
	assert(CreatePolicyRequest, "You must provide a CreatePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePolicy",
	}
	for header,value in pairs(CreatePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePolicySync(CreatePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePolicyAsync(CreatePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateOpenIDConnectProvider asynchronously, invoking a callback when done
-- @param CreateOpenIDConnectProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateOpenIDConnectProviderAsync(CreateOpenIDConnectProviderRequest, cb)
	assert(CreateOpenIDConnectProviderRequest, "You must provide a CreateOpenIDConnectProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateOpenIDConnectProvider",
	}
	for header,value in pairs(CreateOpenIDConnectProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateOpenIDConnectProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateOpenIDConnectProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateOpenIDConnectProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateOpenIDConnectProviderSync(CreateOpenIDConnectProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateOpenIDConnectProviderAsync(CreateOpenIDConnectProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachUserPolicy asynchronously, invoking a callback when done
-- @param DetachUserPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachUserPolicyAsync(DetachUserPolicyRequest, cb)
	assert(DetachUserPolicyRequest, "You must provide a DetachUserPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DetachUserPolicy",
	}
	for header,value in pairs(DetachUserPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachUserPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachUserPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachUserPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachUserPolicySync(DetachUserPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachUserPolicyAsync(DetachUserPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroupsForUser asynchronously, invoking a callback when done
-- @param ListGroupsForUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGroupsForUserAsync(ListGroupsForUserRequest, cb)
	assert(ListGroupsForUserRequest, "You must provide a ListGroupsForUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGroupsForUser",
	}
	for header,value in pairs(ListGroupsForUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGroupsForUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroupsForUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupsForUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListGroupsForUserSync(ListGroupsForUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupsForUserAsync(ListGroupsForUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCredentialReport asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCredentialReportAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCredentialReport",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCredentialReport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.GetCredentialReportSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCredentialReportAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAccountAlias asynchronously, invoking a callback when done
-- @param CreateAccountAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAccountAliasAsync(CreateAccountAliasRequest, cb)
	assert(CreateAccountAliasRequest, "You must provide a CreateAccountAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateAccountAlias",
	}
	for header,value in pairs(CreateAccountAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAccountAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAccountAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAccountAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAccountAliasSync(CreateAccountAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAccountAliasAsync(CreateAccountAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountAuthorizationDetails asynchronously, invoking a callback when done
-- @param GetAccountAuthorizationDetailsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountAuthorizationDetailsAsync(GetAccountAuthorizationDetailsRequest, cb)
	assert(GetAccountAuthorizationDetailsRequest, "You must provide a GetAccountAuthorizationDetailsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccountAuthorizationDetails",
	}
	for header,value in pairs(GetAccountAuthorizationDetailsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAccountAuthorizationDetailsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountAuthorizationDetails synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAccountAuthorizationDetailsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountAuthorizationDetailsSync(GetAccountAuthorizationDetailsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountAuthorizationDetailsAsync(GetAccountAuthorizationDetailsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSAMLProvider asynchronously, invoking a callback when done
-- @param GetSAMLProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSAMLProviderAsync(GetSAMLProviderRequest, cb)
	assert(GetSAMLProviderRequest, "You must provide a GetSAMLProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSAMLProvider",
	}
	for header,value in pairs(GetSAMLProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSAMLProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSAMLProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSAMLProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSAMLProviderSync(GetSAMLProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSAMLProviderAsync(GetSAMLProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRole asynchronously, invoking a callback when done
-- @param CreateRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRoleAsync(CreateRoleRequest, cb)
	assert(CreateRoleRequest, "You must provide a CreateRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateRole",
	}
	for header,value in pairs(CreateRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRoleSync(CreateRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRoleAsync(CreateRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAttachedRolePolicies asynchronously, invoking a callback when done
-- @param ListAttachedRolePoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAttachedRolePoliciesAsync(ListAttachedRolePoliciesRequest, cb)
	assert(ListAttachedRolePoliciesRequest, "You must provide a ListAttachedRolePoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListAttachedRolePolicies",
	}
	for header,value in pairs(ListAttachedRolePoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAttachedRolePoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAttachedRolePolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAttachedRolePoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAttachedRolePoliciesSync(ListAttachedRolePoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAttachedRolePoliciesAsync(ListAttachedRolePoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableMFADevice asynchronously, invoking a callback when done
-- @param EnableMFADeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableMFADeviceAsync(EnableMFADeviceRequest, cb)
	assert(EnableMFADeviceRequest, "You must provide a EnableMFADeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EnableMFADevice",
	}
	for header,value in pairs(EnableMFADeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableMFADeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableMFADevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableMFADeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableMFADeviceSync(EnableMFADeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableMFADeviceAsync(EnableMFADeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSAMLProvider asynchronously, invoking a callback when done
-- @param DeleteSAMLProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSAMLProviderAsync(DeleteSAMLProviderRequest, cb)
	assert(DeleteSAMLProviderRequest, "You must provide a DeleteSAMLProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSAMLProvider",
	}
	for header,value in pairs(DeleteSAMLProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSAMLProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSAMLProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSAMLProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSAMLProviderSync(DeleteSAMLProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSAMLProviderAsync(DeleteSAMLProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListUserPolicies asynchronously, invoking a callback when done
-- @param ListUserPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUserPoliciesAsync(ListUserPoliciesRequest, cb)
	assert(ListUserPoliciesRequest, "You must provide a ListUserPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListUserPolicies",
	}
	for header,value in pairs(ListUserPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListUserPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUserPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUserPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUserPoliciesSync(ListUserPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserPoliciesAsync(ListUserPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRolePolicies asynchronously, invoking a callback when done
-- @param ListRolePoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRolePoliciesAsync(ListRolePoliciesRequest, cb)
	assert(ListRolePoliciesRequest, "You must provide a ListRolePoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListRolePolicies",
	}
	for header,value in pairs(ListRolePoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRolePoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRolePolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRolePoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRolePoliciesSync(ListRolePoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRolePoliciesAsync(ListRolePoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutGroupPolicy asynchronously, invoking a callback when done
-- @param PutGroupPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutGroupPolicyAsync(PutGroupPolicyRequest, cb)
	assert(PutGroupPolicyRequest, "You must provide a PutGroupPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutGroupPolicy",
	}
	for header,value in pairs(PutGroupPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutGroupPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutGroupPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutGroupPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutGroupPolicySync(PutGroupPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutGroupPolicyAsync(PutGroupPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UploadSigningCertificate asynchronously, invoking a callback when done
-- @param UploadSigningCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UploadSigningCertificateAsync(UploadSigningCertificateRequest, cb)
	assert(UploadSigningCertificateRequest, "You must provide a UploadSigningCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UploadSigningCertificate",
	}
	for header,value in pairs(UploadSigningCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UploadSigningCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UploadSigningCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UploadSigningCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UploadSigningCertificateSync(UploadSigningCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UploadSigningCertificateAsync(UploadSigningCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserPermissionsBoundary asynchronously, invoking a callback when done
-- @param DeleteUserPermissionsBoundaryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserPermissionsBoundaryAsync(DeleteUserPermissionsBoundaryRequest, cb)
	assert(DeleteUserPermissionsBoundaryRequest, "You must provide a DeleteUserPermissionsBoundaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUserPermissionsBoundary",
	}
	for header,value in pairs(DeleteUserPermissionsBoundaryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserPermissionsBoundaryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserPermissionsBoundary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserPermissionsBoundaryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserPermissionsBoundarySync(DeleteUserPermissionsBoundaryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserPermissionsBoundaryAsync(DeleteUserPermissionsBoundaryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GenerateCredentialReport asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GenerateCredentialReportAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GenerateCredentialReport",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GenerateCredentialReport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.GenerateCredentialReportSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GenerateCredentialReportAsync(function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".ChangePassword",
	}
	for header,value in pairs(ChangePasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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

--- Call ListEntitiesForPolicy asynchronously, invoking a callback when done
-- @param ListEntitiesForPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListEntitiesForPolicyAsync(ListEntitiesForPolicyRequest, cb)
	assert(ListEntitiesForPolicyRequest, "You must provide a ListEntitiesForPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListEntitiesForPolicy",
	}
	for header,value in pairs(ListEntitiesForPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListEntitiesForPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEntitiesForPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEntitiesForPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListEntitiesForPolicySync(ListEntitiesForPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEntitiesForPolicyAsync(ListEntitiesForPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutUserPermissionsBoundary asynchronously, invoking a callback when done
-- @param PutUserPermissionsBoundaryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutUserPermissionsBoundaryAsync(PutUserPermissionsBoundaryRequest, cb)
	assert(PutUserPermissionsBoundaryRequest, "You must provide a PutUserPermissionsBoundaryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutUserPermissionsBoundary",
	}
	for header,value in pairs(PutUserPermissionsBoundaryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutUserPermissionsBoundaryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutUserPermissionsBoundary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutUserPermissionsBoundaryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutUserPermissionsBoundarySync(PutUserPermissionsBoundaryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutUserPermissionsBoundaryAsync(PutUserPermissionsBoundaryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoginProfile asynchronously, invoking a callback when done
-- @param GetLoginProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLoginProfileAsync(GetLoginProfileRequest, cb)
	assert(GetLoginProfileRequest, "You must provide a GetLoginProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetLoginProfile",
	}
	for header,value in pairs(GetLoginProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLoginProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoginProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoginProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLoginProfileSync(GetLoginProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoginProfileAsync(GetLoginProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateVirtualMFADevice asynchronously, invoking a callback when done
-- @param CreateVirtualMFADeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateVirtualMFADeviceAsync(CreateVirtualMFADeviceRequest, cb)
	assert(CreateVirtualMFADeviceRequest, "You must provide a CreateVirtualMFADeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateVirtualMFADevice",
	}
	for header,value in pairs(CreateVirtualMFADeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateVirtualMFADeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateVirtualMFADevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateVirtualMFADeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateVirtualMFADeviceSync(CreateVirtualMFADeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateVirtualMFADeviceAsync(CreateVirtualMFADeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetServerCertificate asynchronously, invoking a callback when done
-- @param GetServerCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetServerCertificateAsync(GetServerCertificateRequest, cb)
	assert(GetServerCertificateRequest, "You must provide a GetServerCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetServerCertificate",
	}
	for header,value in pairs(GetServerCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetServerCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetServerCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetServerCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetServerCertificateSync(GetServerCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetServerCertificateAsync(GetServerCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachRolePolicy asynchronously, invoking a callback when done
-- @param AttachRolePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachRolePolicyAsync(AttachRolePolicyRequest, cb)
	assert(AttachRolePolicyRequest, "You must provide a AttachRolePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AttachRolePolicy",
	}
	for header,value in pairs(AttachRolePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachRolePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachRolePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachRolePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachRolePolicySync(AttachRolePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachRolePolicyAsync(AttachRolePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveClientIDFromOpenIDConnectProvider asynchronously, invoking a callback when done
-- @param RemoveClientIDFromOpenIDConnectProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveClientIDFromOpenIDConnectProviderAsync(RemoveClientIDFromOpenIDConnectProviderRequest, cb)
	assert(RemoveClientIDFromOpenIDConnectProviderRequest, "You must provide a RemoveClientIDFromOpenIDConnectProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveClientIDFromOpenIDConnectProvider",
	}
	for header,value in pairs(RemoveClientIDFromOpenIDConnectProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveClientIDFromOpenIDConnectProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveClientIDFromOpenIDConnectProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveClientIDFromOpenIDConnectProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveClientIDFromOpenIDConnectProviderSync(RemoveClientIDFromOpenIDConnectProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveClientIDFromOpenIDConnectProviderAsync(RemoveClientIDFromOpenIDConnectProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAccountPasswordPolicy asynchronously, invoking a callback when done
-- @param UpdateAccountPasswordPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAccountPasswordPolicyAsync(UpdateAccountPasswordPolicyRequest, cb)
	assert(UpdateAccountPasswordPolicyRequest, "You must provide a UpdateAccountPasswordPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAccountPasswordPolicy",
	}
	for header,value in pairs(UpdateAccountPasswordPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAccountPasswordPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAccountPasswordPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAccountPasswordPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAccountPasswordPolicySync(UpdateAccountPasswordPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAccountPasswordPolicyAsync(UpdateAccountPasswordPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRole asynchronously, invoking a callback when done
-- @param GetRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRoleAsync(GetRoleRequest, cb)
	assert(GetRoleRequest, "You must provide a GetRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetRole",
	}
	for header,value in pairs(GetRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRoleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRoleSync(GetRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRoleAsync(GetRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePolicyVersion asynchronously, invoking a callback when done
-- @param DeletePolicyVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePolicyVersionAsync(DeletePolicyVersionRequest, cb)
	assert(DeletePolicyVersionRequest, "You must provide a DeletePolicyVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePolicyVersion",
	}
	for header,value in pairs(DeletePolicyVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePolicyVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePolicyVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePolicyVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePolicyVersionSync(DeletePolicyVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePolicyVersionAsync(DeletePolicyVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPolicies asynchronously, invoking a callback when done
-- @param ListPoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPoliciesAsync(ListPoliciesRequest, cb)
	assert(ListPoliciesRequest, "You must provide a ListPoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPolicies",
	}
	for header,value in pairs(ListPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPoliciesSync(ListPoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPoliciesAsync(ListPoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutUserPolicy asynchronously, invoking a callback when done
-- @param PutUserPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutUserPolicyAsync(PutUserPolicyRequest, cb)
	assert(PutUserPolicyRequest, "You must provide a PutUserPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutUserPolicy",
	}
	for header,value in pairs(PutUserPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutUserPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutUserPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutUserPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutUserPolicySync(PutUserPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutUserPolicyAsync(PutUserPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResyncMFADevice asynchronously, invoking a callback when done
-- @param ResyncMFADeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResyncMFADeviceAsync(ResyncMFADeviceRequest, cb)
	assert(ResyncMFADeviceRequest, "You must provide a ResyncMFADeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ResyncMFADevice",
	}
	for header,value in pairs(ResyncMFADeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResyncMFADeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResyncMFADevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResyncMFADeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResyncMFADeviceSync(ResyncMFADeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResyncMFADeviceAsync(ResyncMFADeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteServerCertificate asynchronously, invoking a callback when done
-- @param DeleteServerCertificateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteServerCertificateAsync(DeleteServerCertificateRequest, cb)
	assert(DeleteServerCertificateRequest, "You must provide a DeleteServerCertificateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteServerCertificate",
	}
	for header,value in pairs(DeleteServerCertificateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteServerCertificateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteServerCertificate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteServerCertificateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteServerCertificateSync(DeleteServerCertificateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteServerCertificateAsync(DeleteServerCertificateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAccountPasswordPolicy asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAccountPasswordPolicyAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAccountPasswordPolicy",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAccountPasswordPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.GetAccountPasswordPolicySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAccountPasswordPolicyAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInstanceProfile asynchronously, invoking a callback when done
-- @param CreateInstanceProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateInstanceProfileAsync(CreateInstanceProfileRequest, cb)
	assert(CreateInstanceProfileRequest, "You must provide a CreateInstanceProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateInstanceProfile",
	}
	for header,value in pairs(CreateInstanceProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateInstanceProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInstanceProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInstanceProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateInstanceProfileSync(CreateInstanceProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInstanceProfileAsync(CreateInstanceProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteOpenIDConnectProvider asynchronously, invoking a callback when done
-- @param DeleteOpenIDConnectProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteOpenIDConnectProviderAsync(DeleteOpenIDConnectProviderRequest, cb)
	assert(DeleteOpenIDConnectProviderRequest, "You must provide a DeleteOpenIDConnectProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteOpenIDConnectProvider",
	}
	for header,value in pairs(DeleteOpenIDConnectProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteOpenIDConnectProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteOpenIDConnectProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteOpenIDConnectProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteOpenIDConnectProviderSync(DeleteOpenIDConnectProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteOpenIDConnectProviderAsync(DeleteOpenIDConnectProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGroupPolicy asynchronously, invoking a callback when done
-- @param DeleteGroupPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGroupPolicyAsync(DeleteGroupPolicyRequest, cb)
	assert(DeleteGroupPolicyRequest, "You must provide a DeleteGroupPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteGroupPolicy",
	}
	for header,value in pairs(DeleteGroupPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteGroupPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGroupPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGroupPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGroupPolicySync(DeleteGroupPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGroupPolicyAsync(DeleteGroupPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
