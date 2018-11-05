--- GENERATED CODE - DO NOT MODIFY
-- AWS Organizations (organizations-2016-11-28)

local M = {}

M.metadata = {
	api_version = "2016-11-28",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "organizations",
	service_abbreviation = "Organizations",
	service_full_name = "AWS Organizations",
	signature_version = "v4",
	target_prefix = "AWSOrganizationsV20161128",
	timestamp_format = "",
	global_endpoint = "",
	uid = "organizations-2016-11-28",
}

local keys = {}
local asserts = {}

keys.Handshake = { ["Id"] = true, ["State"] = true, ["Resources"] = true, ["Parties"] = true, ["Action"] = true, ["RequestedTimestamp"] = true, ["ExpirationTimestamp"] = true, ["Arn"] = true, nil }

function asserts.AssertHandshake(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Handshake to be of type 'table'")
	if struct["Id"] then asserts.AssertHandshakeId(struct["Id"]) end
	if struct["State"] then asserts.AssertHandshakeState(struct["State"]) end
	if struct["Resources"] then asserts.AssertHandshakeResources(struct["Resources"]) end
	if struct["Parties"] then asserts.AssertHandshakeParties(struct["Parties"]) end
	if struct["Action"] then asserts.AssertActionType(struct["Action"]) end
	if struct["RequestedTimestamp"] then asserts.AssertTimestamp(struct["RequestedTimestamp"]) end
	if struct["ExpirationTimestamp"] then asserts.AssertTimestamp(struct["ExpirationTimestamp"]) end
	if struct["Arn"] then asserts.AssertHandshakeArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Handshake[k], "Handshake contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Handshake
-- <p>Contains information that must be exchanged to securely establish a relationship between two accounts (an <i>originator</i> and a <i>recipient</i>). For example, when a master account (the originator) invites another account (the recipient) to join its organization, the two accounts exchange information as a series of handshake requests and responses.</p> <p> <b>Note:</b> Handshakes that are CANCELED, ACCEPTED, or DECLINED show up in lists for only 30 days after entering that state After that they are deleted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [HandshakeId] <p>The unique identifier (ID) of a handshake. The originating account creates the ID when it initiates the handshake.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- * State [HandshakeState] <p>The current state of the handshake. Use the state to trace the flow of the handshake through the process from its creation to its acceptance. The meaning of each of the valid values is as follows:</p> <ul> <li> <p> <b>REQUESTED</b>: This handshake was sent to multiple recipients (applicable to only some handshake types) and not all recipients have responded yet. The request stays in this state until all recipients respond.</p> </li> <li> <p> <b>OPEN</b>: This handshake was sent to multiple recipients (applicable to only some policy types) and all recipients have responded, allowing the originator to complete the handshake action.</p> </li> <li> <p> <b>CANCELED</b>: This handshake is no longer active because it was canceled by the originating account.</p> </li> <li> <p> <b>ACCEPTED</b>: This handshake is complete because it has been accepted by the recipient.</p> </li> <li> <p> <b>DECLINED</b>: This handshake is no longer active because it was declined by the recipient account.</p> </li> <li> <p> <b>EXPIRED</b>: This handshake is no longer active because the originator did not receive a response of any kind from the recipient before the expiration time (15 days).</p> </li> </ul>
-- * Resources [HandshakeResources] <p>Additional information that is needed to process the handshake.</p>
-- * Parties [HandshakeParties] <p>Information about the two accounts that are participating in the handshake.</p>
-- * Action [ActionType] <p>The type of handshake, indicating what action occurs when the recipient accepts the handshake. The following handshake types are supported:</p> <ul> <li> <p> <b>INVITE</b>: This type of handshake represents a request to join an organization. It is always sent from the master account to only non-member accounts.</p> </li> <li> <p> <b>ENABLE_ALL_FEATURES</b>: This type of handshake represents a request to enable all features in an organization. It is always sent from the master account to only <i>invited</i> member accounts. Created accounts do not receive this because those accounts were created by the organization's master account and approval is inferred.</p> </li> <li> <p> <b>APPROVE_ALL_FEATURES</b>: This type of handshake is sent from the Organizations service when all member accounts have approved the <code>ENABLE_ALL_FEATURES</code> invitation. It is sent only to the master account and signals the master that it can finalize the process to enable all features.</p> </li> </ul>
-- * RequestedTimestamp [Timestamp] <p>The date and time that the handshake request was made.</p>
-- * ExpirationTimestamp [Timestamp] <p>The date and time that the handshake expires. If the recipient of the handshake request fails to respond before the specified date and time, the handshake becomes inactive and is no longer valid.</p>
-- * Arn [HandshakeArn] <p>The Amazon Resource Name (ARN) of a handshake.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @return Handshake structure as a key-value pair table
function M.Handshake(args)
	assert(args, "You must provide an argument table when creating Handshake")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["State"] = args["State"],
		["Resources"] = args["Resources"],
		["Parties"] = args["Parties"],
		["Action"] = args["Action"],
		["RequestedTimestamp"] = args["RequestedTimestamp"],
		["ExpirationTimestamp"] = args["ExpirationTimestamp"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertHandshake(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteOrganizationalUnitRequest = { ["OrganizationalUnitId"] = true, nil }

function asserts.AssertDeleteOrganizationalUnitRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOrganizationalUnitRequest to be of type 'table'")
	assert(struct["OrganizationalUnitId"], "Expected key OrganizationalUnitId to exist in table")
	if struct["OrganizationalUnitId"] then asserts.AssertOrganizationalUnitId(struct["OrganizationalUnitId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteOrganizationalUnitRequest[k], "DeleteOrganizationalUnitRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOrganizationalUnitRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the organizational unit that you want to delete. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required key: OrganizationalUnitId
-- @return DeleteOrganizationalUnitRequest structure as a key-value pair table
function M.DeleteOrganizationalUnitRequest(args)
	assert(args, "You must provide an argument table when creating DeleteOrganizationalUnitRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationalUnitId"] = args["OrganizationalUnitId"],
	}
	asserts.AssertDeleteOrganizationalUnitRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCreateAccountStatusResponse = { ["NextToken"] = true, ["CreateAccountStatuses"] = true, nil }

function asserts.AssertListCreateAccountStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCreateAccountStatusResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CreateAccountStatuses"] then asserts.AssertCreateAccountStatuses(struct["CreateAccountStatuses"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCreateAccountStatusResponse[k], "ListCreateAccountStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCreateAccountStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * CreateAccountStatuses [CreateAccountStatuses] <p>A list of objects with details about the requests. Certain elements, such as the accountId number, are present in the output only after the account has been successfully created.</p>
-- @return ListCreateAccountStatusResponse structure as a key-value pair table
function M.ListCreateAccountStatusResponse(args)
	assert(args, "You must provide an argument table when creating ListCreateAccountStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["CreateAccountStatuses"] = args["CreateAccountStatuses"],
	}
	asserts.AssertListCreateAccountStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnablePolicyTypeResponse = { ["Root"] = true, nil }

function asserts.AssertEnablePolicyTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnablePolicyTypeResponse to be of type 'table'")
	if struct["Root"] then asserts.AssertRoot(struct["Root"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnablePolicyTypeResponse[k], "EnablePolicyTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnablePolicyTypeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Root [Root] <p>A structure that shows the root with the updated list of enabled policy types.</p>
-- @return EnablePolicyTypeResponse structure as a key-value pair table
function M.EnablePolicyTypeResponse(args)
	assert(args, "You must provide an argument table when creating EnablePolicyTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Root"] = args["Root"],
	}
	asserts.AssertEnablePolicyTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTargetsForPolicyResponse = { ["NextToken"] = true, ["Targets"] = true, nil }

function asserts.AssertListTargetsForPolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTargetsForPolicyResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Targets"] then asserts.AssertPolicyTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTargetsForPolicyResponse[k], "ListTargetsForPolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTargetsForPolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * Targets [PolicyTargets] <p>A list of structures, each of which contains details about one of the entities to which the specified policy is attached.</p>
-- @return ListTargetsForPolicyResponse structure as a key-value pair table
function M.ListTargetsForPolicyResponse(args)
	assert(args, "You must provide an argument table when creating ListTargetsForPolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertListTargetsForPolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyTypeSummary = { ["Status"] = true, ["Type"] = true, nil }

function asserts.AssertPolicyTypeSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeSummary to be of type 'table'")
	if struct["Status"] then asserts.AssertPolicyTypeStatus(struct["Status"]) end
	if struct["Type"] then asserts.AssertPolicyType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyTypeSummary[k], "PolicyTypeSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeSummary
-- <p>Contains information about a policy type and its status in the associated root.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [PolicyTypeStatus] <p>The status of the policy type as it relates to the associated root. To attach a policy of the specified type to a root or to an OU or account in that root, it must be available in the organization and enabled for that root.</p>
-- * Type [PolicyType] <p>The name of the policy type.</p>
-- @return PolicyTypeSummary structure as a key-value pair table
function M.PolicyTypeSummary(args)
	assert(args, "You must provide an argument table when creating PolicyTypeSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Type"] = args["Type"],
	}
	asserts.AssertPolicyTypeSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCreateAccountStatusRequest = { ["CreateAccountRequestId"] = true, nil }

function asserts.AssertDescribeCreateAccountStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCreateAccountStatusRequest to be of type 'table'")
	assert(struct["CreateAccountRequestId"], "Expected key CreateAccountRequestId to exist in table")
	if struct["CreateAccountRequestId"] then asserts.AssertCreateAccountRequestId(struct["CreateAccountRequestId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCreateAccountStatusRequest[k], "DescribeCreateAccountStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCreateAccountStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateAccountRequestId [CreateAccountRequestId] <p>Specifies the <code>operationId</code> that uniquely identifies the request. You can get the ID from the response to an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an create account request ID string requires "car-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required key: CreateAccountRequestId
-- @return DescribeCreateAccountStatusRequest structure as a key-value pair table
function M.DescribeCreateAccountStatusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeCreateAccountStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreateAccountRequestId"] = args["CreateAccountRequestId"],
	}
	asserts.AssertDescribeCreateAccountStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Parent = { ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertParent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parent to be of type 'table'")
	if struct["Type"] then asserts.AssertParentType(struct["Type"]) end
	if struct["Id"] then asserts.AssertParentId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parent[k], "Parent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parent
-- <p>Contains information about either a root or an organizational unit (OU) that can contain OUs or accounts in an organization.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [ParentType] <p>The type of the parent entity.</p>
-- * Id [ParentId] <p>The unique identifier (ID) of the parent entity.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @return Parent structure as a key-value pair table
function M.Parent(args)
	assert(args, "You must provide an argument table when creating Parent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertParent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateOrganizationResponse = { ["Organization"] = true, nil }

function asserts.AssertCreateOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrganizationResponse to be of type 'table'")
	if struct["Organization"] then asserts.AssertOrganization(struct["Organization"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOrganizationResponse[k], "CreateOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrganizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Organization [Organization] <p>A structure that contains details about the newly created organization.</p>
-- @return CreateOrganizationResponse structure as a key-value pair table
function M.CreateOrganizationResponse(args)
	assert(args, "You must provide an argument table when creating CreateOrganizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Organization"] = args["Organization"],
	}
	asserts.AssertCreateOrganizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListParentsResponse = { ["NextToken"] = true, ["Parents"] = true, nil }

function asserts.AssertListParentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListParentsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Parents"] then asserts.AssertParents(struct["Parents"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListParentsResponse[k], "ListParentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListParentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * Parents [Parents] <p>A list of parents for the specified child account or OU.</p>
-- @return ListParentsResponse structure as a key-value pair table
function M.ListParentsResponse(args)
	assert(args, "You must provide an argument table when creating ListParentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Parents"] = args["Parents"],
	}
	asserts.AssertListParentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HandshakeFilter = { ["ActionType"] = true, ["ParentHandshakeId"] = true, nil }

function asserts.AssertHandshakeFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeFilter to be of type 'table'")
	if struct["ActionType"] then asserts.AssertActionType(struct["ActionType"]) end
	if struct["ParentHandshakeId"] then asserts.AssertHandshakeId(struct["ParentHandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.HandshakeFilter[k], "HandshakeFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeFilter
-- <p>Specifies the criteria that are used to select the handshakes for the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ActionType [ActionType] <p>Specifies the type of handshake action.</p> <p>If you specify <code>ActionType</code>, you cannot also specify <code>ParentHandshakeId</code>.</p>
-- * ParentHandshakeId [HandshakeId] <p>Specifies the parent handshake. Only used for handshake types that are a child of another type.</p> <p>If you specify <code>ParentHandshakeId</code>, you cannot also specify <code>ActionType</code>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- @return HandshakeFilter structure as a key-value pair table
function M.HandshakeFilter(args)
	assert(args, "You must provide an argument table when creating HandshakeFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ActionType"] = args["ActionType"],
		["ParentHandshakeId"] = args["ParentHandshakeId"],
	}
	asserts.AssertHandshakeFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttachPolicyRequest = { ["TargetId"] = true, ["PolicyId"] = true, nil }

function asserts.AssertAttachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttachPolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	assert(struct["TargetId"], "Expected key TargetId to exist in table")
	if struct["TargetId"] then asserts.AssertPolicyTargetId(struct["TargetId"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttachPolicyRequest[k], "AttachPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttachPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, OU, or account that you want to attach the policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- * PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to attach to the target. You can get the ID for the policy by calling the <a>ListPolicies</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required key: PolicyId
-- Required key: TargetId
-- @return AttachPolicyRequest structure as a key-value pair table
function M.AttachPolicyRequest(args)
	assert(args, "You must provide an argument table when creating AttachPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetId"] = args["TargetId"],
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertAttachPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAccountsForParentResponse = { ["NextToken"] = true, ["Accounts"] = true, nil }

function asserts.AssertListAccountsForParentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsForParentResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Accounts"] then asserts.AssertAccounts(struct["Accounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccountsForParentResponse[k], "ListAccountsForParentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsForParentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * Accounts [Accounts] <p>A list of the accounts in the specified root or OU.</p>
-- @return ListAccountsForParentResponse structure as a key-value pair table
function M.ListAccountsForParentResponse(args)
	assert(args, "You must provide an argument table when creating ListAccountsForParentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Accounts"] = args["Accounts"],
	}
	asserts.AssertListAccountsForParentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListChildrenResponse = { ["NextToken"] = true, ["Children"] = true, nil }

function asserts.AssertListChildrenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChildrenResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Children"] then asserts.AssertChildren(struct["Children"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChildrenResponse[k], "ListChildrenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChildrenResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * Children [Children] <p>The list of children of the specified parent container.</p>
-- @return ListChildrenResponse structure as a key-value pair table
function M.ListChildrenResponse(args)
	assert(args, "You must provide an argument table when creating ListChildrenResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Children"] = args["Children"],
	}
	asserts.AssertListChildrenResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateOrganizationalUnitResponse = { ["OrganizationalUnit"] = true, nil }

function asserts.AssertUpdateOrganizationalUnitResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateOrganizationalUnitResponse to be of type 'table'")
	if struct["OrganizationalUnit"] then asserts.AssertOrganizationalUnit(struct["OrganizationalUnit"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateOrganizationalUnitResponse[k], "UpdateOrganizationalUnitResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateOrganizationalUnitResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationalUnit [OrganizationalUnit] <p>A structure that contains the details about the specified OU, including its new name.</p>
-- @return UpdateOrganizationalUnitResponse structure as a key-value pair table
function M.UpdateOrganizationalUnitResponse(args)
	assert(args, "You must provide an argument table when creating UpdateOrganizationalUnitResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationalUnit"] = args["OrganizationalUnit"],
	}
	asserts.AssertUpdateOrganizationalUnitResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelHandshakeResponse = { ["Handshake"] = true, nil }

function asserts.AssertCancelHandshakeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelHandshakeResponse to be of type 'table'")
	if struct["Handshake"] then asserts.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelHandshakeResponse[k], "CancelHandshakeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelHandshakeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Handshake [Handshake] <p>A structure that contains details about the handshake that you canceled.</p>
-- @return CancelHandshakeResponse structure as a key-value pair table
function M.CancelHandshakeResponse(args)
	assert(args, "You must provide an argument table when creating CancelHandshakeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Handshake"] = args["Handshake"],
	}
	asserts.AssertCancelHandshakeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Account = { ["Status"] = true, ["Name"] = true, ["Email"] = true, ["JoinedMethod"] = true, ["JoinedTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertAccount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Account to be of type 'table'")
	if struct["Status"] then asserts.AssertAccountStatus(struct["Status"]) end
	if struct["Name"] then asserts.AssertAccountName(struct["Name"]) end
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	if struct["JoinedMethod"] then asserts.AssertAccountJoinedMethod(struct["JoinedMethod"]) end
	if struct["JoinedTimestamp"] then asserts.AssertTimestamp(struct["JoinedTimestamp"]) end
	if struct["Id"] then asserts.AssertAccountId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertAccountArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Account[k], "Account contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Account
-- <p>Contains information about an AWS account that is a member of an organization.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [AccountStatus] <p>The status of the account in the organization.</p>
-- * Name [AccountName] <p>The friendly name of the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- * Email [Email] <p>The email address associated with the AWS account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for this parameter is a string of characters that represents a standard Internet email address.</p>
-- * JoinedMethod [AccountJoinedMethod] <p>The method by which the account joined the organization.</p>
-- * JoinedTimestamp [Timestamp] <p>The date the account became a part of the organization.</p>
-- * Id [AccountId] <p>The unique identifier (ID) of the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- * Arn [AccountArn] <p>The Amazon Resource Name (ARN) of the account.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @return Account structure as a key-value pair table
function M.Account(args)
	assert(args, "You must provide an argument table when creating Account")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["Email"] = args["Email"],
		["JoinedMethod"] = args["JoinedMethod"],
		["JoinedTimestamp"] = args["JoinedTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertAccount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrganizationResponse = { ["Organization"] = true, nil }

function asserts.AssertDescribeOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrganizationResponse to be of type 'table'")
	if struct["Organization"] then asserts.AssertOrganization(struct["Organization"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrganizationResponse[k], "DescribeOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrganizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Organization [Organization] <p>A structure that contains information about the organization.</p>
-- @return DescribeOrganizationResponse structure as a key-value pair table
function M.DescribeOrganizationResponse(args)
	assert(args, "You must provide an argument table when creating DescribeOrganizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Organization"] = args["Organization"],
	}
	asserts.AssertDescribeOrganizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAccountRequest = { ["RoleName"] = true, ["Email"] = true, ["IamUserAccessToBilling"] = true, ["AccountName"] = true, nil }

function asserts.AssertCreateAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountRequest to be of type 'table'")
	assert(struct["Email"], "Expected key Email to exist in table")
	assert(struct["AccountName"], "Expected key AccountName to exist in table")
	if struct["RoleName"] then asserts.AssertRoleName(struct["RoleName"]) end
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	if struct["IamUserAccessToBilling"] then asserts.AssertIAMUserAccessToBilling(struct["IamUserAccessToBilling"]) end
	if struct["AccountName"] then asserts.AssertAccountName(struct["AccountName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccountRequest[k], "CreateAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleName [RoleName] <p>(Optional)</p> <p>The name of an IAM role that AWS Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account.</p> <p>If you don't specify this parameter, the role name defaults to <code>OrganizationAccountAccessRole</code>.</p> <p>For more information about how to use this role to access the member account, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Accessing and Administering the Member Accounts in Your Organization</a> in the <i>AWS Organizations User Guide</i>, and steps 2 and 3 in <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">Tutorial: Delegate Access Across AWS Accounts Using IAM Roles</a> in the <i>IAM User Guide</i>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of characters that can consist of uppercase letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
-- * Email [Email] <p>The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account. You must use a valid email address to complete account creation. You can't access the root user of the account or remove an account that was created with an invalid email address.</p>
-- * IamUserAccessToBilling [IAMUserAccessToBilling] <p>If set to <code>ALLOW</code>, the new account enables IAM users to access account billing information <i>if</i> they have the required permissions. If set to <code>DENY</code>, only the root user of the new account can access account billing information. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and IAM users and roles with the required permissions can access billing information for the new account.</p>
-- * AccountName [AccountName] <p>The friendly name of the member account.</p>
-- Required key: Email
-- Required key: AccountName
-- @return CreateAccountRequest structure as a key-value pair table
function M.CreateAccountRequest(args)
	assert(args, "You must provide an argument table when creating CreateAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleName"] = args["RoleName"],
		["Email"] = args["Email"],
		["IamUserAccessToBilling"] = args["IamUserAccessToBilling"],
		["AccountName"] = args["AccountName"],
	}
	asserts.AssertCreateAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisablePolicyTypeResponse = { ["Root"] = true, nil }

function asserts.AssertDisablePolicyTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisablePolicyTypeResponse to be of type 'table'")
	if struct["Root"] then asserts.AssertRoot(struct["Root"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisablePolicyTypeResponse[k], "DisablePolicyTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisablePolicyTypeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Root [Root] <p>A structure that shows the root with the updated list of enabled policy types.</p>
-- @return DisablePolicyTypeResponse structure as a key-value pair table
function M.DisablePolicyTypeResponse(args)
	assert(args, "You must provide an argument table when creating DisablePolicyTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Root"] = args["Root"],
	}
	asserts.AssertDisablePolicyTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrganizationalUnitResponse = { ["OrganizationalUnit"] = true, nil }

function asserts.AssertDescribeOrganizationalUnitResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrganizationalUnitResponse to be of type 'table'")
	if struct["OrganizationalUnit"] then asserts.AssertOrganizationalUnit(struct["OrganizationalUnit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrganizationalUnitResponse[k], "DescribeOrganizationalUnitResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrganizationalUnitResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationalUnit [OrganizationalUnit] <p>A structure that contains details about the specified OU.</p>
-- @return DescribeOrganizationalUnitResponse structure as a key-value pair table
function M.DescribeOrganizationalUnitResponse(args)
	assert(args, "You must provide an argument table when creating DescribeOrganizationalUnitResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationalUnit"] = args["OrganizationalUnit"],
	}
	asserts.AssertDescribeOrganizationalUnitResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Organization = { ["AvailablePolicyTypes"] = true, ["MasterAccountId"] = true, ["MasterAccountArn"] = true, ["FeatureSet"] = true, ["MasterAccountEmail"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertOrganization(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Organization to be of type 'table'")
	if struct["AvailablePolicyTypes"] then asserts.AssertPolicyTypes(struct["AvailablePolicyTypes"]) end
	if struct["MasterAccountId"] then asserts.AssertAccountId(struct["MasterAccountId"]) end
	if struct["MasterAccountArn"] then asserts.AssertAccountArn(struct["MasterAccountArn"]) end
	if struct["FeatureSet"] then asserts.AssertOrganizationFeatureSet(struct["FeatureSet"]) end
	if struct["MasterAccountEmail"] then asserts.AssertEmail(struct["MasterAccountEmail"]) end
	if struct["Id"] then asserts.AssertOrganizationId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertOrganizationArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Organization[k], "Organization contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Organization
-- <p>Contains details about an organization. An organization is a collection of accounts that are centrally managed together using consolidated billing, organized hierarchically with organizational units (OUs), and controlled with policies .</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailablePolicyTypes [PolicyTypes] <p>A list of policy types that are enabled for this organization. For example, if your organization has all features enabled, then service control policies (SCPs) are included in the list.</p> <note> <p>Even if a policy type is shown as available in the organization, you can separately enable and disable them at the root level by using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. Use <a>ListRoots</a> to see the status of a policy type in that root.</p> </note>
-- * MasterAccountId [AccountId] <p>The unique identifier (ID) of the master account of an organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- * MasterAccountArn [AccountArn] <p>The Amazon Resource Name (ARN) of the account that is designated as the master account for the organization.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- * FeatureSet [OrganizationFeatureSet] <p>Specifies the functionality that currently is available to the organization. If set to "ALL", then all features are enabled and policies can be applied to accounts in the organization. If set to "CONSOLIDATED_BILLING", then only consolidated billing functionality is available. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
-- * MasterAccountEmail [Email] <p>The email address that is associated with the AWS account that is designated as the master account for the organization.</p>
-- * Id [OrganizationId] <p>The unique identifier (ID) of an organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organization ID string requires "o-" followed by from 10 to 32 lower-case letters or digits.</p>
-- * Arn [OrganizationArn] <p>The Amazon Resource Name (ARN) of an organization.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @return Organization structure as a key-value pair table
function M.Organization(args)
	assert(args, "You must provide an argument table when creating Organization")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailablePolicyTypes"] = args["AvailablePolicyTypes"],
		["MasterAccountId"] = args["MasterAccountId"],
		["MasterAccountArn"] = args["MasterAccountArn"],
		["FeatureSet"] = args["FeatureSet"],
		["MasterAccountEmail"] = args["MasterAccountEmail"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertOrganization(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelHandshakeRequest = { ["HandshakeId"] = true, nil }

function asserts.AssertCancelHandshakeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelHandshakeRequest to be of type 'table'")
	assert(struct["HandshakeId"], "Expected key HandshakeId to exist in table")
	if struct["HandshakeId"] then asserts.AssertHandshakeId(struct["HandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelHandshakeRequest[k], "CancelHandshakeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelHandshakeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to cancel. You can get the ID from the <a>ListHandshakesForOrganization</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required key: HandshakeId
-- @return CancelHandshakeRequest structure as a key-value pair table
function M.CancelHandshakeRequest(args)
	assert(args, "You must provide an argument table when creating CancelHandshakeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HandshakeId"] = args["HandshakeId"],
	}
	asserts.AssertCancelHandshakeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MoveAccountRequest = { ["DestinationParentId"] = true, ["SourceParentId"] = true, ["AccountId"] = true, nil }

function asserts.AssertMoveAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MoveAccountRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["SourceParentId"], "Expected key SourceParentId to exist in table")
	assert(struct["DestinationParentId"], "Expected key DestinationParentId to exist in table")
	if struct["DestinationParentId"] then asserts.AssertParentId(struct["DestinationParentId"]) end
	if struct["SourceParentId"] then asserts.AssertParentId(struct["SourceParentId"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MoveAccountRequest[k], "MoveAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MoveAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationParentId [ParentId] <p>The unique identifier (ID) of the root or organizational unit that you want to move the account to.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- * SourceParentId [ParentId] <p>The unique identifier (ID) of the root or organizational unit that you want to move the account from.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- * AccountId [AccountId] <p>The unique identifier (ID) of the account that you want to move.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required key: AccountId
-- Required key: SourceParentId
-- Required key: DestinationParentId
-- @return MoveAccountRequest structure as a key-value pair table
function M.MoveAccountRequest(args)
	assert(args, "You must provide an argument table when creating MoveAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationParentId"] = args["DestinationParentId"],
		["SourceParentId"] = args["SourceParentId"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertMoveAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HandshakeResource = { ["Type"] = true, ["Resources"] = true, ["Value"] = true, nil }

function asserts.AssertHandshakeResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeResource to be of type 'table'")
	if struct["Type"] then asserts.AssertHandshakeResourceType(struct["Type"]) end
	if struct["Resources"] then asserts.AssertHandshakeResources(struct["Resources"]) end
	if struct["Value"] then asserts.AssertHandshakeResourceValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.HandshakeResource[k], "HandshakeResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeResource
-- <p>Contains additional data that is needed to process a handshake.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [HandshakeResourceType] <p>The type of information being passed, specifying how the value is to be interpreted by the other party:</p> <ul> <li> <p> <code>ACCOUNT</code> - Specifies an AWS account ID number.</p> </li> <li> <p> <code>ORGANIZATION</code> - Specifies an organization ID number.</p> </li> <li> <p> <code>EMAIL</code> - Specifies the email address that is associated with the account that receives the handshake. </p> </li> <li> <p> <code>OWNER_EMAIL</code> - Specifies the email address associated with the master account. Included as information about an organization. </p> </li> <li> <p> <code>OWNER_NAME</code> - Specifies the name associated with the master account. Included as information about an organization. </p> </li> <li> <p> <code>NOTES</code> - Additional text provided by the handshake initiator and intended for the recipient to read.</p> </li> </ul>
-- * Resources [HandshakeResources] <p>When needed, contains an additional array of <code>HandshakeResource</code> objects.</p>
-- * Value [HandshakeResourceValue] <p>The information that is passed to the other party in the handshake. The format of the value string must match the requirements of the specified type.</p>
-- @return HandshakeResource structure as a key-value pair table
function M.HandshakeResource(args)
	assert(args, "You must provide an argument table when creating HandshakeResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Resources"] = args["Resources"],
		["Value"] = args["Value"],
	}
	asserts.AssertHandshakeResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeHandshakeResponse = { ["Handshake"] = true, nil }

function asserts.AssertDescribeHandshakeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHandshakeResponse to be of type 'table'")
	if struct["Handshake"] then asserts.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHandshakeResponse[k], "DescribeHandshakeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHandshakeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Handshake [Handshake] <p>A structure that contains information about the specified handshake.</p>
-- @return DescribeHandshakeResponse structure as a key-value pair table
function M.DescribeHandshakeResponse(args)
	assert(args, "You must provide an argument table when creating DescribeHandshakeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Handshake"] = args["Handshake"],
	}
	asserts.AssertDescribeHandshakeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HandshakeParty = { ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertHandshakeParty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeParty to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertHandshakePartyType(struct["Type"]) end
	if struct["Id"] then asserts.AssertHandshakePartyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.HandshakeParty[k], "HandshakeParty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeParty
-- <p>Identifies a participant in a handshake.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [HandshakePartyType] <p>The type of party.</p>
-- * Id [HandshakePartyId] <p>The unique identifier (ID) for the party.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required key: Id
-- Required key: Type
-- @return HandshakeParty structure as a key-value pair table
function M.HandshakeParty(args)
	assert(args, "You must provide an argument table when creating HandshakeParty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertHandshakeParty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPoliciesResponse = { ["NextToken"] = true, ["Policies"] = true, nil }

function asserts.AssertListPoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Policies"] then asserts.AssertPolicies(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesResponse[k], "ListPoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * Policies [Policies] <p>A list of policies that match the filter criteria in the request. The output list does not include the policy contents. To see the content for a policy, see <a>DescribePolicy</a>.</p>
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
		["NextToken"] = args["NextToken"],
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

keys.ListRootsResponse = { ["NextToken"] = true, ["Roots"] = true, nil }

function asserts.AssertListRootsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRootsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Roots"] then asserts.AssertRoots(struct["Roots"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRootsResponse[k], "ListRootsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRootsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * Roots [Roots] <p>A list of roots that are defined in an organization.</p>
-- @return ListRootsResponse structure as a key-value pair table
function M.ListRootsResponse(args)
	assert(args, "You must provide an argument table when creating ListRootsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Roots"] = args["Roots"],
	}
	asserts.AssertListRootsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeclineHandshakeRequest = { ["HandshakeId"] = true, nil }

function asserts.AssertDeclineHandshakeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeclineHandshakeRequest to be of type 'table'")
	assert(struct["HandshakeId"], "Expected key HandshakeId to exist in table")
	if struct["HandshakeId"] then asserts.AssertHandshakeId(struct["HandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeclineHandshakeRequest[k], "DeclineHandshakeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeclineHandshakeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to decline. You can get the ID from the <a>ListHandshakesForAccount</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required key: HandshakeId
-- @return DeclineHandshakeRequest structure as a key-value pair table
function M.DeclineHandshakeRequest(args)
	assert(args, "You must provide an argument table when creating DeclineHandshakeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HandshakeId"] = args["HandshakeId"],
	}
	asserts.AssertDeclineHandshakeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertDescribePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePolicyResponse[k], "DescribePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>A structure that contains details about the specified policy.</p>
-- @return DescribePolicyResponse structure as a key-value pair table
function M.DescribePolicyResponse(args)
	assert(args, "You must provide an argument table when creating DescribePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertDescribePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeclineHandshakeResponse = { ["Handshake"] = true, nil }

function asserts.AssertDeclineHandshakeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeclineHandshakeResponse to be of type 'table'")
	if struct["Handshake"] then asserts.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeclineHandshakeResponse[k], "DeclineHandshakeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeclineHandshakeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Handshake [Handshake] <p>A structure that contains details about the declined handshake. The state is updated to show the value <code>DECLINED</code>.</p>
-- @return DeclineHandshakeResponse structure as a key-value pair table
function M.DeclineHandshakeResponse(args)
	assert(args, "You must provide an argument table when creating DeclineHandshakeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Handshake"] = args["Handshake"],
	}
	asserts.AssertDeclineHandshakeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAWSServiceAccessForOrganizationResponse = { ["EnabledServicePrincipals"] = true, ["NextToken"] = true, nil }

function asserts.AssertListAWSServiceAccessForOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAWSServiceAccessForOrganizationResponse to be of type 'table'")
	if struct["EnabledServicePrincipals"] then asserts.AssertEnabledServicePrincipals(struct["EnabledServicePrincipals"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAWSServiceAccessForOrganizationResponse[k], "ListAWSServiceAccessForOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAWSServiceAccessForOrganizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnabledServicePrincipals [EnabledServicePrincipals] <p>A list of the service principals for the services that are enabled to integrate with your organization. Each principal is a structure that includes the name and the date that it was enabled for integration with AWS Organizations.</p>
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @return ListAWSServiceAccessForOrganizationResponse structure as a key-value pair table
function M.ListAWSServiceAccessForOrganizationResponse(args)
	assert(args, "You must provide an argument table when creating ListAWSServiceAccessForOrganizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnabledServicePrincipals"] = args["EnabledServicePrincipals"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListAWSServiceAccessForOrganizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableAllFeaturesResponse = { ["Handshake"] = true, nil }

function asserts.AssertEnableAllFeaturesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAllFeaturesResponse to be of type 'table'")
	if struct["Handshake"] then asserts.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableAllFeaturesResponse[k], "EnableAllFeaturesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAllFeaturesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Handshake [Handshake] <p>A structure that contains details about the handshake created to support this request to enable all features in the organization.</p>
-- @return EnableAllFeaturesResponse structure as a key-value pair table
function M.EnableAllFeaturesResponse(args)
	assert(args, "You must provide an argument table when creating EnableAllFeaturesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Handshake"] = args["Handshake"],
	}
	asserts.AssertEnableAllFeaturesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnablePolicyTypeRequest = { ["RootId"] = true, ["PolicyType"] = true, nil }

function asserts.AssertEnablePolicyTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnablePolicyTypeRequest to be of type 'table'")
	assert(struct["RootId"], "Expected key RootId to exist in table")
	assert(struct["PolicyType"], "Expected key PolicyType to exist in table")
	if struct["RootId"] then asserts.AssertRootId(struct["RootId"]) end
	if struct["PolicyType"] then asserts.AssertPolicyType(struct["PolicyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnablePolicyTypeRequest[k], "EnablePolicyTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnablePolicyTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RootId [RootId] <p>The unique identifier (ID) of the root in which you want to enable a policy type. You can get the ID from the <a>ListRoots</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- * PolicyType [PolicyType] <p>The policy type that you want to enable.</p>
-- Required key: RootId
-- Required key: PolicyType
-- @return EnablePolicyTypeRequest structure as a key-value pair table
function M.EnablePolicyTypeRequest(args)
	assert(args, "You must provide an argument table when creating EnablePolicyTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RootId"] = args["RootId"],
		["PolicyType"] = args["PolicyType"],
	}
	asserts.AssertEnablePolicyTypeRequest(all_args)
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>A structure that contains details about the newly created policy.</p>
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

keys.EnabledServicePrincipal = { ["DateEnabled"] = true, ["ServicePrincipal"] = true, nil }

function asserts.AssertEnabledServicePrincipal(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnabledServicePrincipal to be of type 'table'")
	if struct["DateEnabled"] then asserts.AssertTimestamp(struct["DateEnabled"]) end
	if struct["ServicePrincipal"] then asserts.AssertServicePrincipal(struct["ServicePrincipal"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnabledServicePrincipal[k], "EnabledServicePrincipal contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnabledServicePrincipal
-- <p>A structure that contains details of a service principal that is enabled to integrate with AWS Organizations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DateEnabled [Timestamp] <p>The date that the service principal was enabled for integration with AWS Organizations.</p>
-- * ServicePrincipal [ServicePrincipal] <p>The name of the service principal. This is typically in the form of a URL, such as: <code> <i>servicename</i>.amazonaws.com</code>.</p>
-- @return EnabledServicePrincipal structure as a key-value pair table
function M.EnabledServicePrincipal(args)
	assert(args, "You must provide an argument table when creating EnabledServicePrincipal")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DateEnabled"] = args["DateEnabled"],
		["ServicePrincipal"] = args["ServicePrincipal"],
	}
	asserts.AssertEnabledServicePrincipal(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableAWSServiceAccessRequest = { ["ServicePrincipal"] = true, nil }

function asserts.AssertDisableAWSServiceAccessRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableAWSServiceAccessRequest to be of type 'table'")
	assert(struct["ServicePrincipal"], "Expected key ServicePrincipal to exist in table")
	if struct["ServicePrincipal"] then asserts.AssertServicePrincipal(struct["ServicePrincipal"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableAWSServiceAccessRequest[k], "DisableAWSServiceAccessRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableAWSServiceAccessRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServicePrincipal [ServicePrincipal] <p>The service principal name of the AWS service for which you want to disable integration with your organization. This is typically in the form of a URL, such as <code> <i>service-abbreviation</i>.amazonaws.com</code>.</p>
-- Required key: ServicePrincipal
-- @return DisableAWSServiceAccessRequest structure as a key-value pair table
function M.DisableAWSServiceAccessRequest(args)
	assert(args, "You must provide an argument table when creating DisableAWSServiceAccessRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServicePrincipal"] = args["ServicePrincipal"],
	}
	asserts.AssertDisableAWSServiceAccessRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePolicyRequest = { ["PolicyId"] = true, nil }

function asserts.AssertDeletePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePolicyRequest[k], "DeletePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to delete. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required key: PolicyId
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
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertDeletePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListHandshakesForAccountResponse = { ["Handshakes"] = true, ["NextToken"] = true, nil }

function asserts.AssertListHandshakesForAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHandshakesForAccountResponse to be of type 'table'")
	if struct["Handshakes"] then asserts.AssertHandshakes(struct["Handshakes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHandshakesForAccountResponse[k], "ListHandshakesForAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHandshakesForAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Handshakes [Handshakes] <p>A list of <a>Handshake</a> objects with details about each of the handshakes that is associated with the specified account.</p>
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @return ListHandshakesForAccountResponse structure as a key-value pair table
function M.ListHandshakesForAccountResponse(args)
	assert(args, "You must provide an argument table when creating ListHandshakesForAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Handshakes"] = args["Handshakes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListHandshakesForAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAccountsResponse = { ["NextToken"] = true, ["Accounts"] = true, nil }

function asserts.AssertListAccountsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Accounts"] then asserts.AssertAccounts(struct["Accounts"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccountsResponse[k], "ListAccountsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * Accounts [Accounts] <p>A list of objects in the organization.</p>
-- @return ListAccountsResponse structure as a key-value pair table
function M.ListAccountsResponse(args)
	assert(args, "You must provide an argument table when creating ListAccountsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Accounts"] = args["Accounts"],
	}
	asserts.AssertListAccountsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InviteAccountToOrganizationResponse = { ["Handshake"] = true, nil }

function asserts.AssertInviteAccountToOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InviteAccountToOrganizationResponse to be of type 'table'")
	if struct["Handshake"] then asserts.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(keys.InviteAccountToOrganizationResponse[k], "InviteAccountToOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InviteAccountToOrganizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Handshake [Handshake] <p>A structure that contains details about the handshake that is created to support this invitation request.</p>
-- @return InviteAccountToOrganizationResponse structure as a key-value pair table
function M.InviteAccountToOrganizationResponse(args)
	assert(args, "You must provide an argument table when creating InviteAccountToOrganizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Handshake"] = args["Handshake"],
	}
	asserts.AssertInviteAccountToOrganizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicySummary = { ["AwsManaged"] = true, ["Description"] = true, ["Type"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertPolicySummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicySummary to be of type 'table'")
	if struct["AwsManaged"] then asserts.AssertAwsManagedPolicy(struct["AwsManaged"]) end
	if struct["Description"] then asserts.AssertPolicyDescription(struct["Description"]) end
	if struct["Type"] then asserts.AssertPolicyType(struct["Type"]) end
	if struct["Id"] then asserts.AssertPolicyId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertPolicyArn(struct["Arn"]) end
	if struct["Name"] then asserts.AssertPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicySummary[k], "PolicySummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicySummary
-- <p>Contains information about a policy, but does not include the content. To see the content of a policy, see <a>DescribePolicy</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AwsManaged [AwsManagedPolicy] <p>A boolean value that indicates whether the specified policy is an AWS managed policy. If true, then you can attach the policy to roots, OUs, or accounts, but you cannot edit it.</p>
-- * Description [PolicyDescription] <p>The description of the policy.</p>
-- * Type [PolicyType] <p>The type of policy.</p>
-- * Id [PolicyId] <p>The unique identifier (ID) of the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- * Arn [PolicyArn] <p>The Amazon Resource Name (ARN) of the policy.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- * Name [PolicyName] <p>The friendly name of the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @return PolicySummary structure as a key-value pair table
function M.PolicySummary(args)
	assert(args, "You must provide an argument table when creating PolicySummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AwsManaged"] = args["AwsManaged"],
		["Description"] = args["Description"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertPolicySummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptHandshakeRequest = { ["HandshakeId"] = true, nil }

function asserts.AssertAcceptHandshakeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptHandshakeRequest to be of type 'table'")
	assert(struct["HandshakeId"], "Expected key HandshakeId to exist in table")
	if struct["HandshakeId"] then asserts.AssertHandshakeId(struct["HandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptHandshakeRequest[k], "AcceptHandshakeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptHandshakeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to accept.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required key: HandshakeId
-- @return AcceptHandshakeRequest structure as a key-value pair table
function M.AcceptHandshakeRequest(args)
	assert(args, "You must provide an argument table when creating AcceptHandshakeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HandshakeId"] = args["HandshakeId"],
	}
	asserts.AssertAcceptHandshakeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListHandshakesForAccountRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListHandshakesForAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHandshakesForAccountRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertHandshakeFilter(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHandshakesForAccountRequest[k], "ListHandshakesForAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHandshakesForAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [HandshakeFilter] <p>Filters the handshakes that you want included in the response. The default is all types. Use the <code>ActionType</code> element to limit the output to only a specified type, such as <code>INVITE</code>, <code>ENABLE-FULL-CONTROL</code>, or <code>APPROVE-FULL-CONTROL</code>. Alternatively, for the <code>ENABLE-FULL-CONTROL</code> handshake that generates a separate child handshake for each member account, you can specify <code>ParentHandshakeId</code> to see only the handshakes that were generated by that parent request.</p>
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @return ListHandshakesForAccountRequest structure as a key-value pair table
function M.ListHandshakesForAccountRequest(args)
	assert(args, "You must provide an argument table when creating ListHandshakesForAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListHandshakesForAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPoliciesForTargetRequest = { ["Filter"] = true, ["NextToken"] = true, ["TargetId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListPoliciesForTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesForTargetRequest to be of type 'table'")
	assert(struct["TargetId"], "Expected key TargetId to exist in table")
	assert(struct["Filter"], "Expected key Filter to exist in table")
	if struct["Filter"] then asserts.AssertPolicyType(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["TargetId"] then asserts.AssertPolicyTargetId(struct["TargetId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesForTargetRequest[k], "ListPoliciesForTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesForTargetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [PolicyType] <p>The type of policy that you want to include in the returned list.</p>
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, organizational unit, or account whose policies you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required key: TargetId
-- Required key: Filter
-- @return ListPoliciesForTargetRequest structure as a key-value pair table
function M.ListPoliciesForTargetRequest(args)
	assert(args, "You must provide an argument table when creating ListPoliciesForTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["TargetId"] = args["TargetId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListPoliciesForTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRootsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListRootsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRootsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRootsRequest[k], "ListRootsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRootsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @return ListRootsRequest structure as a key-value pair table
function M.ListRootsRequest(args)
	assert(args, "You must provide an argument table when creating ListRootsRequest")
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
	asserts.AssertListRootsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetachPolicyRequest = { ["TargetId"] = true, ["PolicyId"] = true, nil }

function asserts.AssertDetachPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetachPolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	assert(struct["TargetId"], "Expected key TargetId to exist in table")
	if struct["TargetId"] then asserts.AssertPolicyTargetId(struct["TargetId"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetachPolicyRequest[k], "DetachPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetachPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, OU, or account from which you want to detach the policy. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- * PolicyId [PolicyId] <p>The unique identifier (ID) of the policy you want to detach. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required key: PolicyId
-- Required key: TargetId
-- @return DetachPolicyRequest structure as a key-value pair table
function M.DetachPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DetachPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetId"] = args["TargetId"],
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertDetachPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InviteAccountToOrganizationRequest = { ["Notes"] = true, ["Target"] = true, nil }

function asserts.AssertInviteAccountToOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InviteAccountToOrganizationRequest to be of type 'table'")
	assert(struct["Target"], "Expected key Target to exist in table")
	if struct["Notes"] then asserts.AssertHandshakeNotes(struct["Notes"]) end
	if struct["Target"] then asserts.AssertHandshakeParty(struct["Target"]) end
	for k,_ in pairs(struct) do
		assert(keys.InviteAccountToOrganizationRequest[k], "InviteAccountToOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InviteAccountToOrganizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notes [HandshakeNotes] <p>Additional information that you want to include in the generated email to the recipient account owner.</p>
-- * Target [HandshakeParty] <p>The identifier (ID) of the AWS account that you want to invite to join your organization. This is a JSON object that contains the following elements: </p> <p> <code>{ "Type": "ACCOUNT", "Id": "&lt;<i> <b>account id number</b> </i>&gt;" }</code> </p> <p>If you use the AWS CLI, you can submit this as a single string, similar to the following example:</p> <p> <code>--target Id=123456789012,Type=ACCOUNT</code> </p> <p>If you specify <code>"Type": "ACCOUNT"</code>, then you must provide the AWS account ID number as the <code>Id</code>. If you specify <code>"Type": "EMAIL"</code>, then you must specify the email address that is associated with the account.</p> <p> <code>--target Id=diego@example.com,Type=EMAIL</code> </p>
-- Required key: Target
-- @return InviteAccountToOrganizationRequest structure as a key-value pair table
function M.InviteAccountToOrganizationRequest(args)
	assert(args, "You must provide an argument table when creating InviteAccountToOrganizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notes"] = args["Notes"],
		["Target"] = args["Target"],
	}
	asserts.AssertInviteAccountToOrganizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisablePolicyTypeRequest = { ["RootId"] = true, ["PolicyType"] = true, nil }

function asserts.AssertDisablePolicyTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisablePolicyTypeRequest to be of type 'table'")
	assert(struct["RootId"], "Expected key RootId to exist in table")
	assert(struct["PolicyType"], "Expected key PolicyType to exist in table")
	if struct["RootId"] then asserts.AssertRootId(struct["RootId"]) end
	if struct["PolicyType"] then asserts.AssertPolicyType(struct["PolicyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisablePolicyTypeRequest[k], "DisablePolicyTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisablePolicyTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RootId [RootId] <p>The unique identifier (ID) of the root in which you want to disable a policy type. You can get the ID from the <a>ListRoots</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- * PolicyType [PolicyType] <p>The policy type that you want to disable in this root.</p>
-- Required key: RootId
-- Required key: PolicyType
-- @return DisablePolicyTypeRequest structure as a key-value pair table
function M.DisablePolicyTypeRequest(args)
	assert(args, "You must provide an argument table when creating DisablePolicyTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RootId"] = args["RootId"],
		["PolicyType"] = args["PolicyType"],
	}
	asserts.AssertDisablePolicyTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccountRequest = { ["AccountId"] = true, nil }

function asserts.AssertDescribeAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountRequest[k], "DescribeAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountId [AccountId] <p>The unique identifier (ID) of the AWS account that you want information about. You can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required key: AccountId
-- @return DescribeAccountRequest structure as a key-value pair table
function M.DescribeAccountRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDescribeAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateOrganizationRequest = { ["FeatureSet"] = true, nil }

function asserts.AssertCreateOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrganizationRequest to be of type 'table'")
	if struct["FeatureSet"] then asserts.AssertOrganizationFeatureSet(struct["FeatureSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOrganizationRequest[k], "CreateOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrganizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FeatureSet [OrganizationFeatureSet] <p>Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.</p> <ul> <li> <p> <i>CONSOLIDATED_BILLING</i>: All member accounts have their bills consolidated to and paid by the master account. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only">Consolidated Billing</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p> <i>ALL</i>: In addition to all the features supported by the consolidated billing feature set, the master account can also apply any type of policy to any member account in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all">All features</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul>
-- @return CreateOrganizationRequest structure as a key-value pair table
function M.CreateOrganizationRequest(args)
	assert(args, "You must provide an argument table when creating CreateOrganizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FeatureSet"] = args["FeatureSet"],
	}
	asserts.AssertCreateOrganizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListCreateAccountStatusRequest = { ["States"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListCreateAccountStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCreateAccountStatusRequest to be of type 'table'")
	if struct["States"] then asserts.AssertCreateAccountStates(struct["States"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCreateAccountStatusRequest[k], "ListCreateAccountStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCreateAccountStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * States [CreateAccountStates] <p>A list of one or more states that you want included in the response. If this parameter is not present, then all requests are included in the response.</p>
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @return ListCreateAccountStatusRequest structure as a key-value pair table
function M.ListCreateAccountStatusRequest(args)
	assert(args, "You must provide an argument table when creating ListCreateAccountStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["States"] = args["States"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListCreateAccountStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAccountFromOrganizationRequest = { ["AccountId"] = true, nil }

function asserts.AssertRemoveAccountFromOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAccountFromOrganizationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAccountFromOrganizationRequest[k], "RemoveAccountFromOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAccountFromOrganizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountId [AccountId] <p>The unique identifier (ID) of the member account that you want to remove from the organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required key: AccountId
-- @return RemoveAccountFromOrganizationRequest structure as a key-value pair table
function M.RemoveAccountFromOrganizationRequest(args)
	assert(args, "You must provide an argument table when creating RemoveAccountFromOrganizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertRemoveAccountFromOrganizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Child = { ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertChild(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Child to be of type 'table'")
	if struct["Type"] then asserts.AssertChildType(struct["Type"]) end
	if struct["Id"] then asserts.AssertChildId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Child[k], "Child contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Child
-- <p>Contains a list of child entities, either OUs or accounts.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [ChildType] <p>The type of this child entity.</p>
-- * Id [ChildId] <p>The unique identifier (ID) of this child entity.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the following:</p> <ul> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @return Child structure as a key-value pair table
function M.Child(args)
	assert(args, "You must provide an argument table when creating Child")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertChild(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PolicyTargetSummary = { ["Type"] = true, ["TargetId"] = true, ["Name"] = true, ["Arn"] = true, nil }

function asserts.AssertPolicyTargetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTargetSummary to be of type 'table'")
	if struct["Type"] then asserts.AssertTargetType(struct["Type"]) end
	if struct["TargetId"] then asserts.AssertPolicyTargetId(struct["TargetId"]) end
	if struct["Name"] then asserts.AssertTargetName(struct["Name"]) end
	if struct["Arn"] then asserts.AssertGenericArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyTargetSummary[k], "PolicyTargetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTargetSummary
-- <p>Contains information about a root, OU, or account that a policy is attached to.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [TargetType] <p>The type of the policy target.</p>
-- * TargetId [PolicyTargetId] <p>The unique identifier (ID) of the policy target.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- * Name [TargetName] <p>The friendly name of the policy target.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- * Arn [GenericArn] <p>The Amazon Resource Name (ARN) of the policy target.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @return PolicyTargetSummary structure as a key-value pair table
function M.PolicyTargetSummary(args)
	assert(args, "You must provide an argument table when creating PolicyTargetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["TargetId"] = args["TargetId"],
		["Name"] = args["Name"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertPolicyTargetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListHandshakesForOrganizationRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListHandshakesForOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHandshakesForOrganizationRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertHandshakeFilter(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHandshakesForOrganizationRequest[k], "ListHandshakesForOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHandshakesForOrganizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [HandshakeFilter] <p>A filter of the handshakes that you want included in the response. The default is all types. Use the <code>ActionType</code> element to limit the output to only a specified type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake for each member account, you can specify the <code>ParentHandshakeId</code> to see only the handshakes that were generated by that parent request.</p>
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @return ListHandshakesForOrganizationRequest structure as a key-value pair table
function M.ListHandshakesForOrganizationRequest(args)
	assert(args, "You must provide an argument table when creating ListHandshakesForOrganizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListHandshakesForOrganizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPoliciesForTargetResponse = { ["NextToken"] = true, ["Policies"] = true, nil }

function asserts.AssertListPoliciesForTargetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesForTargetResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Policies"] then asserts.AssertPolicies(struct["Policies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesForTargetResponse[k], "ListPoliciesForTargetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesForTargetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * Policies [Policies] <p>The list of policies that match the criteria in the request.</p>
-- @return ListPoliciesForTargetResponse structure as a key-value pair table
function M.ListPoliciesForTargetResponse(args)
	assert(args, "You must provide an argument table when creating ListPoliciesForTargetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Policies"] = args["Policies"],
	}
	asserts.AssertListPoliciesForTargetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateOrganizationalUnitRequest = { ["Name"] = true, ["OrganizationalUnitId"] = true, nil }

function asserts.AssertUpdateOrganizationalUnitRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateOrganizationalUnitRequest to be of type 'table'")
	assert(struct["OrganizationalUnitId"], "Expected key OrganizationalUnitId to exist in table")
	if struct["Name"] then asserts.AssertOrganizationalUnitName(struct["Name"]) end
	if struct["OrganizationalUnitId"] then asserts.AssertOrganizationalUnitId(struct["OrganizationalUnitId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateOrganizationalUnitRequest[k], "UpdateOrganizationalUnitRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateOrganizationalUnitRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [OrganizationalUnitName] <p>The new name that you want to assign to the OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- * OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required key: OrganizationalUnitId
-- @return UpdateOrganizationalUnitRequest structure as a key-value pair table
function M.UpdateOrganizationalUnitRequest(args)
	assert(args, "You must provide an argument table when creating UpdateOrganizationalUnitRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["OrganizationalUnitId"] = args["OrganizationalUnitId"],
	}
	asserts.AssertUpdateOrganizationalUnitRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOrganizationalUnitsForParentResponse = { ["NextToken"] = true, ["OrganizationalUnits"] = true, nil }

function asserts.AssertListOrganizationalUnitsForParentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOrganizationalUnitsForParentResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["OrganizationalUnits"] then asserts.AssertOrganizationalUnits(struct["OrganizationalUnits"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOrganizationalUnitsForParentResponse[k], "ListOrganizationalUnitsForParentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOrganizationalUnitsForParentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- * OrganizationalUnits [OrganizationalUnits] <p>A list of the OUs in the specified root or parent OU.</p>
-- @return ListOrganizationalUnitsForParentResponse structure as a key-value pair table
function M.ListOrganizationalUnitsForParentResponse(args)
	assert(args, "You must provide an argument table when creating ListOrganizationalUnitsForParentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["OrganizationalUnits"] = args["OrganizationalUnits"],
	}
	asserts.AssertListOrganizationalUnitsForParentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAWSServiceAccessForOrganizationRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListAWSServiceAccessForOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAWSServiceAccessForOrganizationRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAWSServiceAccessForOrganizationRequest[k], "ListAWSServiceAccessForOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAWSServiceAccessForOrganizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @return ListAWSServiceAccessForOrganizationRequest structure as a key-value pair table
function M.ListAWSServiceAccessForOrganizationRequest(args)
	assert(args, "You must provide an argument table when creating ListAWSServiceAccessForOrganizationRequest")
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
	asserts.AssertListAWSServiceAccessForOrganizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePolicyResponse = { ["Policy"] = true, nil }

function asserts.AssertUpdatePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePolicyResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertPolicy(struct["Policy"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePolicyResponse[k], "UpdatePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [Policy] <p>A structure that contains details about the updated policy, showing the requested changes.</p>
-- @return UpdatePolicyResponse structure as a key-value pair table
function M.UpdatePolicyResponse(args)
	assert(args, "You must provide an argument table when creating UpdatePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
	}
	asserts.AssertUpdatePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPoliciesRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListPoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPoliciesRequest to be of type 'table'")
	assert(struct["Filter"], "Expected key Filter to exist in table")
	if struct["Filter"] then asserts.AssertPolicyType(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPoliciesRequest[k], "ListPoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPoliciesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [PolicyType] <p>Specifies the type of policy that you want to include in the response.</p>
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required key: Filter
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
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListPoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeCreateAccountStatusResponse = { ["CreateAccountStatus"] = true, nil }

function asserts.AssertDescribeCreateAccountStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCreateAccountStatusResponse to be of type 'table'")
	if struct["CreateAccountStatus"] then asserts.AssertCreateAccountStatus(struct["CreateAccountStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCreateAccountStatusResponse[k], "DescribeCreateAccountStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCreateAccountStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateAccountStatus [CreateAccountStatus] <p>A structure that contains the current status of an account creation request.</p>
-- @return DescribeCreateAccountStatusResponse structure as a key-value pair table
function M.DescribeCreateAccountStatusResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCreateAccountStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreateAccountStatus"] = args["CreateAccountStatus"],
	}
	asserts.AssertDescribeCreateAccountStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateOrganizationalUnitResponse = { ["OrganizationalUnit"] = true, nil }

function asserts.AssertCreateOrganizationalUnitResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrganizationalUnitResponse to be of type 'table'")
	if struct["OrganizationalUnit"] then asserts.AssertOrganizationalUnit(struct["OrganizationalUnit"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOrganizationalUnitResponse[k], "CreateOrganizationalUnitResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrganizationalUnitResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationalUnit [OrganizationalUnit] <p>A structure that contains details about the newly created OU.</p>
-- @return CreateOrganizationalUnitResponse structure as a key-value pair table
function M.CreateOrganizationalUnitResponse(args)
	assert(args, "You must provide an argument table when creating CreateOrganizationalUnitResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationalUnit"] = args["OrganizationalUnit"],
	}
	asserts.AssertCreateOrganizationalUnitResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePolicyRequest = { ["Content"] = true, ["Type"] = true, ["Description"] = true, ["Name"] = true, nil }

function asserts.AssertCreatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePolicyRequest to be of type 'table'")
	assert(struct["Content"], "Expected key Content to exist in table")
	assert(struct["Description"], "Expected key Description to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Content"] then asserts.AssertPolicyContent(struct["Content"]) end
	if struct["Type"] then asserts.AssertPolicyType(struct["Type"]) end
	if struct["Description"] then asserts.AssertPolicyDescription(struct["Description"]) end
	if struct["Name"] then asserts.AssertPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePolicyRequest[k], "CreatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [PolicyContent] <p>The policy content to add to the new policy. For example, if you create a <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">service control policy</a> (SCP), this string must be JSON text that specifies the permissions that admins in attached accounts can delegate to their users, groups, and roles. For more information about the SCP syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
-- * Type [PolicyType] <p>The type of policy to create.</p> <note> <p>In the current release, the only type of policy that you can create is a service control policy (SCP).</p> </note>
-- * Description [PolicyDescription] <p>An optional description to assign to the policy.</p>
-- * Name [PolicyName] <p>The friendly name to assign to the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- Required key: Content
-- Required key: Description
-- Required key: Name
-- Required key: Type
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
		["Content"] = args["Content"],
		["Type"] = args["Type"],
		["Description"] = args["Description"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreatePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListChildrenRequest = { ["ChildType"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["ParentId"] = true, nil }

function asserts.AssertListChildrenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChildrenRequest to be of type 'table'")
	assert(struct["ParentId"], "Expected key ParentId to exist in table")
	assert(struct["ChildType"], "Expected key ChildType to exist in table")
	if struct["ChildType"] then asserts.AssertChildType(struct["ChildType"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["ParentId"] then asserts.AssertParentId(struct["ParentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChildrenRequest[k], "ListChildrenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChildrenRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChildType [ChildType] <p>Filters the output to include only the specified child type.</p>
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- * ParentId [ParentId] <p>The unique identifier (ID) for the parent root or OU whose children you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required key: ParentId
-- Required key: ChildType
-- @return ListChildrenRequest structure as a key-value pair table
function M.ListChildrenRequest(args)
	assert(args, "You must provide an argument table when creating ListChildrenRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChildType"] = args["ChildType"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["ParentId"] = args["ParentId"],
	}
	asserts.AssertListChildrenRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateOrganizationalUnitRequest = { ["Name"] = true, ["ParentId"] = true, nil }

function asserts.AssertCreateOrganizationalUnitRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOrganizationalUnitRequest to be of type 'table'")
	assert(struct["ParentId"], "Expected key ParentId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertOrganizationalUnitName(struct["Name"]) end
	if struct["ParentId"] then asserts.AssertParentId(struct["ParentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOrganizationalUnitRequest[k], "CreateOrganizationalUnitRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOrganizationalUnitRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [OrganizationalUnitName] <p>The friendly name to assign to the new OU.</p>
-- * ParentId [ParentId] <p>The unique identifier (ID) of the parent root or OU in which you want to create the new OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required key: ParentId
-- Required key: Name
-- @return CreateOrganizationalUnitRequest structure as a key-value pair table
function M.CreateOrganizationalUnitRequest(args)
	assert(args, "You must provide an argument table when creating CreateOrganizationalUnitRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ParentId"] = args["ParentId"],
	}
	asserts.AssertCreateOrganizationalUnitRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableAllFeaturesRequest = { nil }

function asserts.AssertEnableAllFeaturesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAllFeaturesRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EnableAllFeaturesRequest[k], "EnableAllFeaturesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAllFeaturesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EnableAllFeaturesRequest structure as a key-value pair table
function M.EnableAllFeaturesRequest(args)
	assert(args, "You must provide an argument table when creating EnableAllFeaturesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEnableAllFeaturesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Policy = { ["Content"] = true, ["PolicySummary"] = true, nil }

function asserts.AssertPolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Policy to be of type 'table'")
	if struct["Content"] then asserts.AssertPolicyContent(struct["Content"]) end
	if struct["PolicySummary"] then asserts.AssertPolicySummary(struct["PolicySummary"]) end
	for k,_ in pairs(struct) do
		assert(keys.Policy[k], "Policy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Policy
-- <p>Contains rules to be applied to the affected accounts. Policies can be attached directly to accounts, or to roots and OUs to affect all accounts in those hierarchies.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [PolicyContent] <p>The text content of the policy.</p>
-- * PolicySummary [PolicySummary] <p>A structure that contains additional details about the policy.</p>
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
		["Content"] = args["Content"],
		["PolicySummary"] = args["PolicySummary"],
	}
	asserts.AssertPolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListHandshakesForOrganizationResponse = { ["Handshakes"] = true, ["NextToken"] = true, nil }

function asserts.AssertListHandshakesForOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListHandshakesForOrganizationResponse to be of type 'table'")
	if struct["Handshakes"] then asserts.AssertHandshakes(struct["Handshakes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListHandshakesForOrganizationResponse[k], "ListHandshakesForOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListHandshakesForOrganizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Handshakes [Handshakes] <p>A list of <a>Handshake</a> objects with details about each of the handshakes that are associated with an organization.</p>
-- * NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @return ListHandshakesForOrganizationResponse structure as a key-value pair table
function M.ListHandshakesForOrganizationResponse(args)
	assert(args, "You must provide an argument table when creating ListHandshakesForOrganizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Handshakes"] = args["Handshakes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListHandshakesForOrganizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeAccountResponse = { ["Account"] = true, nil }

function asserts.AssertDescribeAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountResponse to be of type 'table'")
	if struct["Account"] then asserts.AssertAccount(struct["Account"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountResponse[k], "DescribeAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Account [Account] <p>A structure that contains information about the requested account.</p>
-- @return DescribeAccountResponse structure as a key-value pair table
function M.DescribeAccountResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Account"] = args["Account"],
	}
	asserts.AssertDescribeAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAccountResponse = { ["CreateAccountStatus"] = true, nil }

function asserts.AssertCreateAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountResponse to be of type 'table'")
	if struct["CreateAccountStatus"] then asserts.AssertCreateAccountStatus(struct["CreateAccountStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccountResponse[k], "CreateAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateAccountStatus [CreateAccountStatus] <p>A structure that contains details about the request to create an account. This response structure might not be fully populated when you first receive it because account creation is an asynchronous process. You can pass the returned <code>CreateAccountStatus</code> ID as a parameter to <a>DescribeCreateAccountStatus</a> to get status about the progress of the request at later times. You can also check the AWS CloudTrail log for the <code>CreateAccountResult</code> event. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html">Monitoring the Activity in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @return CreateAccountResponse structure as a key-value pair table
function M.CreateAccountResponse(args)
	assert(args, "You must provide an argument table when creating CreateAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreateAccountStatus"] = args["CreateAccountStatus"],
	}
	asserts.AssertCreateAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AcceptHandshakeResponse = { ["Handshake"] = true, nil }

function asserts.AssertAcceptHandshakeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AcceptHandshakeResponse to be of type 'table'")
	if struct["Handshake"] then asserts.AssertHandshake(struct["Handshake"]) end
	for k,_ in pairs(struct) do
		assert(keys.AcceptHandshakeResponse[k], "AcceptHandshakeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AcceptHandshakeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Handshake [Handshake] <p>A structure that contains details about the accepted handshake.</p>
-- @return AcceptHandshakeResponse structure as a key-value pair table
function M.AcceptHandshakeResponse(args)
	assert(args, "You must provide an argument table when creating AcceptHandshakeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Handshake"] = args["Handshake"],
	}
	asserts.AssertAcceptHandshakeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrganizationalUnitRequest = { ["OrganizationalUnitId"] = true, nil }

function asserts.AssertDescribeOrganizationalUnitRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrganizationalUnitRequest to be of type 'table'")
	assert(struct["OrganizationalUnitId"], "Expected key OrganizationalUnitId to exist in table")
	if struct["OrganizationalUnitId"] then asserts.AssertOrganizationalUnitId(struct["OrganizationalUnitId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrganizationalUnitRequest[k], "DescribeOrganizationalUnitRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrganizationalUnitRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the organizational unit that you want details about. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required key: OrganizationalUnitId
-- @return DescribeOrganizationalUnitRequest structure as a key-value pair table
function M.DescribeOrganizationalUnitRequest(args)
	assert(args, "You must provide an argument table when creating DescribeOrganizationalUnitRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationalUnitId"] = args["OrganizationalUnitId"],
	}
	asserts.AssertDescribeOrganizationalUnitRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePolicyRequest = { ["PolicyId"] = true, nil }

function asserts.AssertDescribePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePolicyRequest[k], "DescribePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want details about. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required key: PolicyId
-- @return DescribePolicyRequest structure as a key-value pair table
function M.DescribePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DescribePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyId"] = args["PolicyId"],
	}
	asserts.AssertDescribePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableAWSServiceAccessRequest = { ["ServicePrincipal"] = true, nil }

function asserts.AssertEnableAWSServiceAccessRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableAWSServiceAccessRequest to be of type 'table'")
	assert(struct["ServicePrincipal"], "Expected key ServicePrincipal to exist in table")
	if struct["ServicePrincipal"] then asserts.AssertServicePrincipal(struct["ServicePrincipal"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableAWSServiceAccessRequest[k], "EnableAWSServiceAccessRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableAWSServiceAccessRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServicePrincipal [ServicePrincipal] <p>The service principal name of the AWS service for which you want to enable integration with your organization. This is typically in the form of a URL, such as <code> <i>service-abbreviation</i>.amazonaws.com</code>.</p>
-- Required key: ServicePrincipal
-- @return EnableAWSServiceAccessRequest structure as a key-value pair table
function M.EnableAWSServiceAccessRequest(args)
	assert(args, "You must provide an argument table when creating EnableAWSServiceAccessRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServicePrincipal"] = args["ServicePrincipal"],
	}
	asserts.AssertEnableAWSServiceAccessRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeHandshakeRequest = { ["HandshakeId"] = true, nil }

function asserts.AssertDescribeHandshakeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeHandshakeRequest to be of type 'table'")
	assert(struct["HandshakeId"], "Expected key HandshakeId to exist in table")
	if struct["HandshakeId"] then asserts.AssertHandshakeId(struct["HandshakeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeHandshakeRequest[k], "DescribeHandshakeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeHandshakeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want information about. You can get the ID from the original call to <a>InviteAccountToOrganization</a>, or from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required key: HandshakeId
-- @return DescribeHandshakeRequest structure as a key-value pair table
function M.DescribeHandshakeRequest(args)
	assert(args, "You must provide an argument table when creating DescribeHandshakeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HandshakeId"] = args["HandshakeId"],
	}
	asserts.AssertDescribeHandshakeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAccountStatus = { ["FailureReason"] = true, ["AccountName"] = true, ["State"] = true, ["RequestedTimestamp"] = true, ["CompletedTimestamp"] = true, ["Id"] = true, ["AccountId"] = true, nil }

function asserts.AssertCreateAccountStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountStatus to be of type 'table'")
	if struct["FailureReason"] then asserts.AssertCreateAccountFailureReason(struct["FailureReason"]) end
	if struct["AccountName"] then asserts.AssertAccountName(struct["AccountName"]) end
	if struct["State"] then asserts.AssertCreateAccountState(struct["State"]) end
	if struct["RequestedTimestamp"] then asserts.AssertTimestamp(struct["RequestedTimestamp"]) end
	if struct["CompletedTimestamp"] then asserts.AssertTimestamp(struct["CompletedTimestamp"]) end
	if struct["Id"] then asserts.AssertCreateAccountRequestId(struct["Id"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccountStatus[k], "CreateAccountStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountStatus
-- <p>Contains the status about a <a>CreateAccount</a> request to create an AWS account in an organization.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailureReason [CreateAccountFailureReason] <p>If the request failed, a description of the reason for the failure.</p> <ul> <li> <p>ACCOUNT_LIMIT_EXCEEDED: The account could not be created because you have reached the limit on the number of accounts in your organization.</p> </li> <li> <p>EMAIL_ALREADY_EXISTS: The account could not be created because another AWS account with that email address already exists.</p> </li> <li> <p>INVALID_ADDRESS: The account could not be created because the address you provided is not valid.</p> </li> <li> <p>INVALID_EMAIL: The account could not be created because the email address you provided is not valid.</p> </li> <li> <p>INTERNAL_FAILURE: The account could not be created because of an internal failure. Try again later. If the problem persists, contact Customer Support.</p> </li> </ul>
-- * AccountName [AccountName] <p>The account name given to the account when it was created.</p>
-- * State [CreateAccountState] <p>The status of the request.</p>
-- * RequestedTimestamp [Timestamp] <p>The date and time that the request was made for the account creation.</p>
-- * CompletedTimestamp [Timestamp] <p>The date and time that the account was created and the request completed.</p>
-- * Id [CreateAccountRequestId] <p>The unique identifier (ID) that references this request. You get this value from the response of the initial <a>CreateAccount</a> request to create the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an create account request ID string requires "car-" followed by from 8 to 32 lower-case letters or digits.</p>
-- * AccountId [AccountId] <p>If the account was created successfully, the unique identifier (ID) of the new account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- @return CreateAccountStatus structure as a key-value pair table
function M.CreateAccountStatus(args)
	assert(args, "You must provide an argument table when creating CreateAccountStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailureReason"] = args["FailureReason"],
		["AccountName"] = args["AccountName"],
		["State"] = args["State"],
		["RequestedTimestamp"] = args["RequestedTimestamp"],
		["CompletedTimestamp"] = args["CompletedTimestamp"],
		["Id"] = args["Id"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertCreateAccountStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTargetsForPolicyRequest = { ["NextToken"] = true, ["PolicyId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTargetsForPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTargetsForPolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTargetsForPolicyRequest[k], "ListTargetsForPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTargetsForPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * PolicyId [PolicyId] <p>The unique identifier (ID) of the policy for which you want to know its attachments.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required key: PolicyId
-- @return ListTargetsForPolicyRequest structure as a key-value pair table
function M.ListTargetsForPolicyRequest(args)
	assert(args, "You must provide an argument table when creating ListTargetsForPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["PolicyId"] = args["PolicyId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTargetsForPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Root = { ["PolicyTypes"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertRoot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Root to be of type 'table'")
	if struct["PolicyTypes"] then asserts.AssertPolicyTypes(struct["PolicyTypes"]) end
	if struct["Id"] then asserts.AssertRootId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertRootArn(struct["Arn"]) end
	if struct["Name"] then asserts.AssertRootName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Root[k], "Root contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Root
-- <p>Contains details about a root. A root is a top-level parent node in the hierarchy of an organization that can contain organizational units (OUs) and accounts. Every root contains every AWS account in the organization. Each root enables the accounts to be organized in a different way and to have different policy types enabled for use in that root.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyTypes [PolicyTypes] <p>The types of policies that are currently enabled for the root and therefore can be attached to the root or to its OUs or accounts.</p> <note> <p>Even if a policy type is shown as available in the organization, you can separately enable and disable them at the root level by using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. Use <a>DescribeOrganization</a> to see the availability of the policy types in that organization.</p> </note>
-- * Id [RootId] <p>The unique identifier (ID) for the root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- * Arn [RootArn] <p>The Amazon Resource Name (ARN) of the root.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- * Name [RootName] <p>The friendly name of the root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @return Root structure as a key-value pair table
function M.Root(args)
	assert(args, "You must provide an argument table when creating Root")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyTypes"] = args["PolicyTypes"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertRoot(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListParentsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["ChildId"] = true, nil }

function asserts.AssertListParentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListParentsRequest to be of type 'table'")
	assert(struct["ChildId"], "Expected key ChildId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["ChildId"] then asserts.AssertChildId(struct["ChildId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListParentsRequest[k], "ListParentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListParentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- * ChildId [ChildId] <p>The unique identifier (ID) of the OU or account whose parent containers you want to list. Do not specify a root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the following:</p> <ul> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required key: ChildId
-- @return ListParentsRequest structure as a key-value pair table
function M.ListParentsRequest(args)
	assert(args, "You must provide an argument table when creating ListParentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["ChildId"] = args["ChildId"],
	}
	asserts.AssertListParentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAccountsForParentRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["ParentId"] = true, nil }

function asserts.AssertListAccountsForParentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsForParentRequest to be of type 'table'")
	assert(struct["ParentId"], "Expected key ParentId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["ParentId"] then asserts.AssertParentId(struct["ParentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccountsForParentRequest[k], "ListAccountsForParentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsForParentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- * ParentId [ParentId] <p>The unique identifier (ID) for the parent root or organization unit (OU) whose accounts you want to list.</p>
-- Required key: ParentId
-- @return ListAccountsForParentRequest structure as a key-value pair table
function M.ListAccountsForParentRequest(args)
	assert(args, "You must provide an argument table when creating ListAccountsForParentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["ParentId"] = args["ParentId"],
	}
	asserts.AssertListAccountsForParentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOrganizationalUnitsForParentRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["ParentId"] = true, nil }

function asserts.AssertListOrganizationalUnitsForParentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOrganizationalUnitsForParentRequest to be of type 'table'")
	assert(struct["ParentId"], "Expected key ParentId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["ParentId"] then asserts.AssertParentId(struct["ParentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOrganizationalUnitsForParentRequest[k], "ListOrganizationalUnitsForParentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOrganizationalUnitsForParentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- * ParentId [ParentId] <p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required key: ParentId
-- @return ListOrganizationalUnitsForParentRequest structure as a key-value pair table
function M.ListOrganizationalUnitsForParentRequest(args)
	assert(args, "You must provide an argument table when creating ListOrganizationalUnitsForParentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["ParentId"] = args["ParentId"],
	}
	asserts.AssertListOrganizationalUnitsForParentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAccountsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListAccountsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAccountsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAccountsRequest[k], "ListAccountsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAccountsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- * MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included per page in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @return ListAccountsRequest structure as a key-value pair table
function M.ListAccountsRequest(args)
	assert(args, "You must provide an argument table when creating ListAccountsRequest")
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
	asserts.AssertListAccountsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrganizationalUnit = { ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertOrganizationalUnit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationalUnit to be of type 'table'")
	if struct["Id"] then asserts.AssertOrganizationalUnitId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertOrganizationalUnitArn(struct["Arn"]) end
	if struct["Name"] then asserts.AssertOrganizationalUnitName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationalUnit[k], "OrganizationalUnit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationalUnit
-- <p>Contains details about an organizational unit (OU). An OU is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [OrganizationalUnitId] <p>The unique identifier (ID) associated with this OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- * Arn [OrganizationalUnitArn] <p>The Amazon Resource Name (ARN) of this OU.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- * Name [OrganizationalUnitName] <p>The friendly name of this OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @return OrganizationalUnit structure as a key-value pair table
function M.OrganizationalUnit(args)
	assert(args, "You must provide an argument table when creating OrganizationalUnit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertOrganizationalUnit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePolicyRequest = { ["Content"] = true, ["Description"] = true, ["PolicyId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdatePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePolicyRequest to be of type 'table'")
	assert(struct["PolicyId"], "Expected key PolicyId to exist in table")
	if struct["Content"] then asserts.AssertPolicyContent(struct["Content"]) end
	if struct["Description"] then asserts.AssertPolicyDescription(struct["Description"]) end
	if struct["PolicyId"] then asserts.AssertPolicyId(struct["PolicyId"]) end
	if struct["Name"] then asserts.AssertPolicyName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePolicyRequest[k], "UpdatePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [PolicyContent] <p>If provided, the new content for the policy. The text must be correctly formatted JSON that complies with the syntax for the policy's type. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
-- * Description [PolicyDescription] <p>If provided, the new description for the policy.</p>
-- * PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to update.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- * Name [PolicyName] <p>If provided, the new name for the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- Required key: PolicyId
-- @return UpdatePolicyRequest structure as a key-value pair table
function M.UpdatePolicyRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Content"] = args["Content"],
		["Description"] = args["Description"],
		["PolicyId"] = args["PolicyId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdatePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertGenericArn(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericArn to be of type 'string'")
end

--  
function M.GenericArn(str)
	asserts.AssertGenericArn(str)
	return str
end

function asserts.AssertChildType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChildType to be of type 'string'")
end

--  
function M.ChildType(str)
	asserts.AssertChildType(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertPolicyTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyTargetId to be of type 'string'")
end

--  
function M.PolicyTargetId(str)
	asserts.AssertPolicyTargetId(str)
	return str
end

function asserts.AssertCreateAccountRequestId(str)
	assert(str)
	assert(type(str) == "string", "Expected CreateAccountRequestId to be of type 'string'")
end

--  
function M.CreateAccountRequestId(str)
	asserts.AssertCreateAccountRequestId(str)
	return str
end

function asserts.AssertAccountArn(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountArn to be of type 'string'")
end

--  
function M.AccountArn(str)
	asserts.AssertAccountArn(str)
	return str
end

function asserts.AssertActionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActionType to be of type 'string'")
end

--  
function M.ActionType(str)
	asserts.AssertActionType(str)
	return str
end

function asserts.AssertTargetName(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetName(str)
	asserts.AssertTargetName(str)
	return str
end

function asserts.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyName(str)
	asserts.AssertPolicyName(str)
	return str
end

function asserts.AssertHandshakeNotes(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeNotes to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.HandshakeNotes(str)
	asserts.AssertHandshakeNotes(str)
	return str
end

function asserts.AssertPolicyTypeStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyTypeStatus to be of type 'string'")
end

--  
function M.PolicyTypeStatus(str)
	asserts.AssertPolicyTypeStatus(str)
	return str
end

function asserts.AssertOrganizationFeatureSet(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationFeatureSet to be of type 'string'")
end

--  
function M.OrganizationFeatureSet(str)
	asserts.AssertOrganizationFeatureSet(str)
	return str
end

function asserts.AssertHandshakePartyId(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakePartyId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HandshakePartyId(str)
	asserts.AssertHandshakePartyId(str)
	return str
end

function asserts.AssertTargetType(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetType to be of type 'string'")
end

--  
function M.TargetType(str)
	asserts.AssertTargetType(str)
	return str
end

function asserts.AssertPolicyDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDescription to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.PolicyDescription(str)
	asserts.AssertPolicyDescription(str)
	return str
end

function asserts.AssertOrganizationId(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationId to be of type 'string'")
end

--  
function M.OrganizationId(str)
	asserts.AssertOrganizationId(str)
	return str
end

function asserts.AssertPolicyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyArn to be of type 'string'")
end

--  
function M.PolicyArn(str)
	asserts.AssertPolicyArn(str)
	return str
end

function asserts.AssertAccountJoinedMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountJoinedMethod to be of type 'string'")
end

--  
function M.AccountJoinedMethod(str)
	asserts.AssertAccountJoinedMethod(str)
	return str
end

function asserts.AssertPolicyId(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyId to be of type 'string'")
end

--  
function M.PolicyId(str)
	asserts.AssertPolicyId(str)
	return str
end

function asserts.AssertOrganizationalUnitId(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitId to be of type 'string'")
end

--  
function M.OrganizationalUnitId(str)
	asserts.AssertOrganizationalUnitId(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

--  
function M.Email(str)
	asserts.AssertEmail(str)
	return str
end

function asserts.AssertChildId(str)
	assert(str)
	assert(type(str) == "string", "Expected ChildId to be of type 'string'")
end

--  
function M.ChildId(str)
	asserts.AssertChildId(str)
	return str
end

function asserts.AssertParentId(str)
	assert(str)
	assert(type(str) == "string", "Expected ParentId to be of type 'string'")
end

--  
function M.ParentId(str)
	asserts.AssertParentId(str)
	return str
end

function asserts.AssertCreateAccountState(str)
	assert(str)
	assert(type(str) == "string", "Expected CreateAccountState to be of type 'string'")
end

--  
function M.CreateAccountState(str)
	asserts.AssertCreateAccountState(str)
	return str
end

function asserts.AssertHandshakePartyType(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakePartyType to be of type 'string'")
end

--  
function M.HandshakePartyType(str)
	asserts.AssertHandshakePartyType(str)
	return str
end

function asserts.AssertOrganizationalUnitArn(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitArn to be of type 'string'")
end

--  
function M.OrganizationalUnitArn(str)
	asserts.AssertOrganizationalUnitArn(str)
	return str
end

function asserts.AssertPolicyContent(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyContent to be of type 'string'")
	assert(#str <= 1000000, "Expected string to be max 1000000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyContent(str)
	asserts.AssertPolicyContent(str)
	return str
end

function asserts.AssertHandshakeResourceValue(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeResourceValue to be of type 'string'")
end

--  
function M.HandshakeResourceValue(str)
	asserts.AssertHandshakeResourceValue(str)
	return str
end

function asserts.AssertRootId(str)
	assert(str)
	assert(type(str) == "string", "Expected RootId to be of type 'string'")
end

--  
function M.RootId(str)
	asserts.AssertRootId(str)
	return str
end

function asserts.AssertAccountName(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountName to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccountName(str)
	asserts.AssertAccountName(str)
	return str
end

function asserts.AssertHandshakeArn(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeArn to be of type 'string'")
end

--  
function M.HandshakeArn(str)
	asserts.AssertHandshakeArn(str)
	return str
end

function asserts.AssertServicePrincipal(str)
	assert(str)
	assert(type(str) == "string", "Expected ServicePrincipal to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ServicePrincipal(str)
	asserts.AssertServicePrincipal(str)
	return str
end

function asserts.AssertRootName(str)
	assert(str)
	assert(type(str) == "string", "Expected RootName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RootName(str)
	asserts.AssertRootName(str)
	return str
end

function asserts.AssertPolicyType(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyType to be of type 'string'")
end

--  
function M.PolicyType(str)
	asserts.AssertPolicyType(str)
	return str
end

function asserts.AssertOrganizationalUnitName(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationalUnitName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OrganizationalUnitName(str)
	asserts.AssertOrganizationalUnitName(str)
	return str
end

function asserts.AssertHandshakeState(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeState to be of type 'string'")
end

--  
function M.HandshakeState(str)
	asserts.AssertHandshakeState(str)
	return str
end

function asserts.AssertAccountStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountStatus to be of type 'string'")
end

--  
function M.AccountStatus(str)
	asserts.AssertAccountStatus(str)
	return str
end

function asserts.AssertRootArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RootArn to be of type 'string'")
end

--  
function M.RootArn(str)
	asserts.AssertRootArn(str)
	return str
end

function asserts.AssertHandshakeId(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeId to be of type 'string'")
end

--  
function M.HandshakeId(str)
	asserts.AssertHandshakeId(str)
	return str
end

function asserts.AssertRoleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleName to be of type 'string'")
end

--  
function M.RoleName(str)
	asserts.AssertRoleName(str)
	return str
end

function asserts.AssertIAMUserAccessToBilling(str)
	assert(str)
	assert(type(str) == "string", "Expected IAMUserAccessToBilling to be of type 'string'")
end

--  
function M.IAMUserAccessToBilling(str)
	asserts.AssertIAMUserAccessToBilling(str)
	return str
end

function asserts.AssertCreateAccountFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected CreateAccountFailureReason to be of type 'string'")
end

--  
function M.CreateAccountFailureReason(str)
	asserts.AssertCreateAccountFailureReason(str)
	return str
end

function asserts.AssertHandshakeResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeResourceType to be of type 'string'")
end

--  
function M.HandshakeResourceType(str)
	asserts.AssertHandshakeResourceType(str)
	return str
end

function asserts.AssertParentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParentType to be of type 'string'")
end

--  
function M.ParentType(str)
	asserts.AssertParentType(str)
	return str
end

function asserts.AssertOrganizationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationArn to be of type 'string'")
end

--  
function M.OrganizationArn(str)
	asserts.AssertOrganizationArn(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertAwsManagedPolicy(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AwsManagedPolicy to be of type 'boolean'")
end

function M.AwsManagedPolicy(boolean)
	asserts.AssertAwsManagedPolicy(boolean)
	return boolean
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertParents(list)
	assert(list)
	assert(type(list) == "table", "Expected Parents to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParent(v)
	end
end

--  
-- List of Parent objects
function M.Parents(list)
	asserts.AssertParents(list)
	return list
end

function asserts.AssertHandshakeResources(list)
	assert(list)
	assert(type(list) == "table", "Expected HandshakeResources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHandshakeResource(v)
	end
end

--  
-- List of HandshakeResource objects
function M.HandshakeResources(list)
	asserts.AssertHandshakeResources(list)
	return list
end

function asserts.AssertAccounts(list)
	assert(list)
	assert(type(list) == "table", "Expected Accounts to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccount(v)
	end
end

--  
-- List of Account objects
function M.Accounts(list)
	asserts.AssertAccounts(list)
	return list
end

function asserts.AssertPolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected Policies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicySummary(v)
	end
end

--  
-- List of PolicySummary objects
function M.Policies(list)
	asserts.AssertPolicies(list)
	return list
end

function asserts.AssertHandshakeParties(list)
	assert(list)
	assert(type(list) == "table", "Expected HandshakeParties to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHandshakeParty(v)
	end
end

--  
-- List of HandshakeParty objects
function M.HandshakeParties(list)
	asserts.AssertHandshakeParties(list)
	return list
end

function asserts.AssertEnabledServicePrincipals(list)
	assert(list)
	assert(type(list) == "table", "Expected EnabledServicePrincipals to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEnabledServicePrincipal(v)
	end
end

--  
-- List of EnabledServicePrincipal objects
function M.EnabledServicePrincipals(list)
	asserts.AssertEnabledServicePrincipals(list)
	return list
end

function asserts.AssertPolicyTargets(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyTargets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyTargetSummary(v)
	end
end

--  
-- List of PolicyTargetSummary objects
function M.PolicyTargets(list)
	asserts.AssertPolicyTargets(list)
	return list
end

function asserts.AssertChildren(list)
	assert(list)
	assert(type(list) == "table", "Expected Children to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChild(v)
	end
end

--  
-- List of Child objects
function M.Children(list)
	asserts.AssertChildren(list)
	return list
end

function asserts.AssertPolicyTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected PolicyTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPolicyTypeSummary(v)
	end
end

--  
-- List of PolicyTypeSummary objects
function M.PolicyTypes(list)
	asserts.AssertPolicyTypes(list)
	return list
end

function asserts.AssertHandshakes(list)
	assert(list)
	assert(type(list) == "table", "Expected Handshakes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHandshake(v)
	end
end

--  
-- List of Handshake objects
function M.Handshakes(list)
	asserts.AssertHandshakes(list)
	return list
end

function asserts.AssertCreateAccountStates(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateAccountStates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCreateAccountState(v)
	end
end

--  
-- List of CreateAccountState objects
function M.CreateAccountStates(list)
	asserts.AssertCreateAccountStates(list)
	return list
end

function asserts.AssertCreateAccountStatuses(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateAccountStatuses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCreateAccountStatus(v)
	end
end

--  
-- List of CreateAccountStatus objects
function M.CreateAccountStatuses(list)
	asserts.AssertCreateAccountStatuses(list)
	return list
end

function asserts.AssertOrganizationalUnits(list)
	assert(list)
	assert(type(list) == "table", "Expected OrganizationalUnits to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrganizationalUnit(v)
	end
end

--  
-- List of OrganizationalUnit objects
function M.OrganizationalUnits(list)
	asserts.AssertOrganizationalUnits(list)
	return list
end

function asserts.AssertRoots(list)
	assert(list)
	assert(type(list) == "table", "Expected Roots to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRoot(v)
	end
end

--  
-- List of Root objects
function M.Roots(list)
	asserts.AssertRoots(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "organizations.amazonaws.com"
		end
	end
	local ss = { "organizations" }
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
--- Call DeclineHandshake asynchronously, invoking a callback when done
-- @param DeclineHandshakeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeclineHandshakeAsync(DeclineHandshakeRequest, cb)
	assert(DeclineHandshakeRequest, "You must provide a DeclineHandshakeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeclineHandshake",
	}
	for header,value in pairs(DeclineHandshakeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeclineHandshakeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeclineHandshake synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeclineHandshakeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeclineHandshakeSync(DeclineHandshakeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeclineHandshakeAsync(DeclineHandshakeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisablePolicyType asynchronously, invoking a callback when done
-- @param DisablePolicyTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisablePolicyTypeAsync(DisablePolicyTypeRequest, cb)
	assert(DisablePolicyTypeRequest, "You must provide a DisablePolicyTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DisablePolicyType",
	}
	for header,value in pairs(DisablePolicyTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisablePolicyTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisablePolicyType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisablePolicyTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisablePolicyTypeSync(DisablePolicyTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisablePolicyTypeAsync(DisablePolicyTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCreateAccountStatus asynchronously, invoking a callback when done
-- @param DescribeCreateAccountStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCreateAccountStatusAsync(DescribeCreateAccountStatusRequest, cb)
	assert(DescribeCreateAccountStatusRequest, "You must provide a DescribeCreateAccountStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeCreateAccountStatus",
	}
	for header,value in pairs(DescribeCreateAccountStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeCreateAccountStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCreateAccountStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeCreateAccountStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCreateAccountStatusSync(DescribeCreateAccountStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCreateAccountStatusAsync(DescribeCreateAccountStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOrganizationalUnitsForParent asynchronously, invoking a callback when done
-- @param ListOrganizationalUnitsForParentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOrganizationalUnitsForParentAsync(ListOrganizationalUnitsForParentRequest, cb)
	assert(ListOrganizationalUnitsForParentRequest, "You must provide a ListOrganizationalUnitsForParentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListOrganizationalUnitsForParent",
	}
	for header,value in pairs(ListOrganizationalUnitsForParentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOrganizationalUnitsForParentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOrganizationalUnitsForParent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOrganizationalUnitsForParentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOrganizationalUnitsForParentSync(ListOrganizationalUnitsForParentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOrganizationalUnitsForParentAsync(ListOrganizationalUnitsForParentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrganizationalUnit asynchronously, invoking a callback when done
-- @param DescribeOrganizationalUnitRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOrganizationalUnitAsync(DescribeOrganizationalUnitRequest, cb)
	assert(DescribeOrganizationalUnitRequest, "You must provide a DescribeOrganizationalUnitRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeOrganizationalUnit",
	}
	for header,value in pairs(DescribeOrganizationalUnitRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOrganizationalUnitRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOrganizationalUnit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOrganizationalUnitRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeOrganizationalUnitSync(DescribeOrganizationalUnitRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrganizationalUnitAsync(DescribeOrganizationalUnitRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AcceptHandshake asynchronously, invoking a callback when done
-- @param AcceptHandshakeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AcceptHandshakeAsync(AcceptHandshakeRequest, cb)
	assert(AcceptHandshakeRequest, "You must provide a AcceptHandshakeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.AcceptHandshake",
	}
	for header,value in pairs(AcceptHandshakeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AcceptHandshakeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AcceptHandshake synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AcceptHandshakeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AcceptHandshakeSync(AcceptHandshakeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AcceptHandshakeAsync(AcceptHandshakeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteOrganizationalUnit asynchronously, invoking a callback when done
-- @param DeleteOrganizationalUnitRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteOrganizationalUnitAsync(DeleteOrganizationalUnitRequest, cb)
	assert(DeleteOrganizationalUnitRequest, "You must provide a DeleteOrganizationalUnitRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeleteOrganizationalUnit",
	}
	for header,value in pairs(DeleteOrganizationalUnitRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteOrganizationalUnitRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteOrganizationalUnit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteOrganizationalUnitRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteOrganizationalUnitSync(DeleteOrganizationalUnitRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteOrganizationalUnitAsync(DeleteOrganizationalUnitRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeletePolicy",
	}
	for header,value in pairs(DeletePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call EnableAWSServiceAccess asynchronously, invoking a callback when done
-- @param EnableAWSServiceAccessRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableAWSServiceAccessAsync(EnableAWSServiceAccessRequest, cb)
	assert(EnableAWSServiceAccessRequest, "You must provide a EnableAWSServiceAccessRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.EnableAWSServiceAccess",
	}
	for header,value in pairs(EnableAWSServiceAccessRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableAWSServiceAccessRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableAWSServiceAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableAWSServiceAccessRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableAWSServiceAccessSync(EnableAWSServiceAccessRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableAWSServiceAccessAsync(EnableAWSServiceAccessRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DetachPolicy asynchronously, invoking a callback when done
-- @param DetachPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DetachPolicyAsync(DetachPolicyRequest, cb)
	assert(DetachPolicyRequest, "You must provide a DetachPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DetachPolicy",
	}
	for header,value in pairs(DetachPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DetachPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DetachPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DetachPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DetachPolicySync(DetachPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DetachPolicyAsync(DetachPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHandshakesForAccount asynchronously, invoking a callback when done
-- @param ListHandshakesForAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListHandshakesForAccountAsync(ListHandshakesForAccountRequest, cb)
	assert(ListHandshakesForAccountRequest, "You must provide a ListHandshakesForAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListHandshakesForAccount",
	}
	for header,value in pairs(ListHandshakesForAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListHandshakesForAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHandshakesForAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHandshakesForAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListHandshakesForAccountSync(ListHandshakesForAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHandshakesForAccountAsync(ListHandshakesForAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveAccountFromOrganization asynchronously, invoking a callback when done
-- @param RemoveAccountFromOrganizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveAccountFromOrganizationAsync(RemoveAccountFromOrganizationRequest, cb)
	assert(RemoveAccountFromOrganizationRequest, "You must provide a RemoveAccountFromOrganizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.RemoveAccountFromOrganization",
	}
	for header,value in pairs(RemoveAccountFromOrganizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveAccountFromOrganizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveAccountFromOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveAccountFromOrganizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveAccountFromOrganizationSync(RemoveAccountFromOrganizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveAccountFromOrganizationAsync(RemoveAccountFromOrganizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableAllFeatures asynchronously, invoking a callback when done
-- @param EnableAllFeaturesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableAllFeaturesAsync(EnableAllFeaturesRequest, cb)
	assert(EnableAllFeaturesRequest, "You must provide a EnableAllFeaturesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.EnableAllFeatures",
	}
	for header,value in pairs(EnableAllFeaturesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableAllFeaturesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableAllFeatures synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableAllFeaturesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableAllFeaturesSync(EnableAllFeaturesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableAllFeaturesAsync(EnableAllFeaturesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteOrganization asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteOrganizationAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeleteOrganization",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteOrganizationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteOrganizationAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPoliciesForTarget asynchronously, invoking a callback when done
-- @param ListPoliciesForTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPoliciesForTargetAsync(ListPoliciesForTargetRequest, cb)
	assert(ListPoliciesForTargetRequest, "You must provide a ListPoliciesForTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListPoliciesForTarget",
	}
	for header,value in pairs(ListPoliciesForTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPoliciesForTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPoliciesForTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPoliciesForTargetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPoliciesForTargetSync(ListPoliciesForTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPoliciesForTargetAsync(ListPoliciesForTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePolicy asynchronously, invoking a callback when done
-- @param DescribePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePolicyAsync(DescribePolicyRequest, cb)
	assert(DescribePolicyRequest, "You must provide a DescribePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribePolicy",
	}
	for header,value in pairs(DescribePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePolicySync(DescribePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePolicyAsync(DescribePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCreateAccountStatus asynchronously, invoking a callback when done
-- @param ListCreateAccountStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListCreateAccountStatusAsync(ListCreateAccountStatusRequest, cb)
	assert(ListCreateAccountStatusRequest, "You must provide a ListCreateAccountStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListCreateAccountStatus",
	}
	for header,value in pairs(ListCreateAccountStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCreateAccountStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCreateAccountStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCreateAccountStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListCreateAccountStatusSync(ListCreateAccountStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCreateAccountStatusAsync(ListCreateAccountStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAccount asynchronously, invoking a callback when done
-- @param CreateAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAccountAsync(CreateAccountRequest, cb)
	assert(CreateAccountRequest, "You must provide a CreateAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateAccount",
	}
	for header,value in pairs(CreateAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAccountSync(CreateAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAccountAsync(CreateAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelHandshake asynchronously, invoking a callback when done
-- @param CancelHandshakeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelHandshakeAsync(CancelHandshakeRequest, cb)
	assert(CancelHandshakeRequest, "You must provide a CancelHandshakeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CancelHandshake",
	}
	for header,value in pairs(CancelHandshakeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelHandshakeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelHandshake synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelHandshakeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelHandshakeSync(CancelHandshakeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelHandshakeAsync(CancelHandshakeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAccounts asynchronously, invoking a callback when done
-- @param ListAccountsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAccountsAsync(ListAccountsRequest, cb)
	assert(ListAccountsRequest, "You must provide a ListAccountsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListAccounts",
	}
	for header,value in pairs(ListAccountsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAccountsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAccounts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAccountsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAccountsSync(ListAccountsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAccountsAsync(ListAccountsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AttachPolicy asynchronously, invoking a callback when done
-- @param AttachPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AttachPolicyAsync(AttachPolicyRequest, cb)
	assert(AttachPolicyRequest, "You must provide a AttachPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.AttachPolicy",
	}
	for header,value in pairs(AttachPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AttachPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AttachPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AttachPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AttachPolicySync(AttachPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AttachPolicyAsync(AttachPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call MoveAccount asynchronously, invoking a callback when done
-- @param MoveAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.MoveAccountAsync(MoveAccountRequest, cb)
	assert(MoveAccountRequest, "You must provide a MoveAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.MoveAccount",
	}
	for header,value in pairs(MoveAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", MoveAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call MoveAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param MoveAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.MoveAccountSync(MoveAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.MoveAccountAsync(MoveAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrganization asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOrganizationAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeOrganization",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeOrganizationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrganizationAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListChildren asynchronously, invoking a callback when done
-- @param ListChildrenRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListChildrenAsync(ListChildrenRequest, cb)
	assert(ListChildrenRequest, "You must provide a ListChildrenRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListChildren",
	}
	for header,value in pairs(ListChildrenRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListChildrenRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListChildren synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListChildrenRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListChildrenSync(ListChildrenRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListChildrenAsync(ListChildrenRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateOrganization asynchronously, invoking a callback when done
-- @param CreateOrganizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateOrganizationAsync(CreateOrganizationRequest, cb)
	assert(CreateOrganizationRequest, "You must provide a CreateOrganizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateOrganization",
	}
	for header,value in pairs(CreateOrganizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateOrganizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateOrganizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateOrganizationSync(CreateOrganizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateOrganizationAsync(CreateOrganizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePolicy asynchronously, invoking a callback when done
-- @param UpdatePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePolicyAsync(UpdatePolicyRequest, cb)
	assert(UpdatePolicyRequest, "You must provide a UpdatePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.UpdatePolicy",
	}
	for header,value in pairs(UpdatePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePolicySync(UpdatePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePolicyAsync(UpdatePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableAWSServiceAccess asynchronously, invoking a callback when done
-- @param DisableAWSServiceAccessRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableAWSServiceAccessAsync(DisableAWSServiceAccessRequest, cb)
	assert(DisableAWSServiceAccessRequest, "You must provide a DisableAWSServiceAccessRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DisableAWSServiceAccess",
	}
	for header,value in pairs(DisableAWSServiceAccessRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableAWSServiceAccessRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableAWSServiceAccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableAWSServiceAccessRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisableAWSServiceAccessSync(DisableAWSServiceAccessRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableAWSServiceAccessAsync(DisableAWSServiceAccessRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call LeaveOrganization asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.LeaveOrganizationAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.LeaveOrganization",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call LeaveOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.LeaveOrganizationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.LeaveOrganizationAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateOrganizationalUnit asynchronously, invoking a callback when done
-- @param CreateOrganizationalUnitRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateOrganizationalUnitAsync(CreateOrganizationalUnitRequest, cb)
	assert(CreateOrganizationalUnitRequest, "You must provide a CreateOrganizationalUnitRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateOrganizationalUnit",
	}
	for header,value in pairs(CreateOrganizationalUnitRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateOrganizationalUnitRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateOrganizationalUnit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateOrganizationalUnitRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateOrganizationalUnitSync(CreateOrganizationalUnitRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateOrganizationalUnitAsync(CreateOrganizationalUnitRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnablePolicyType asynchronously, invoking a callback when done
-- @param EnablePolicyTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnablePolicyTypeAsync(EnablePolicyTypeRequest, cb)
	assert(EnablePolicyTypeRequest, "You must provide a EnablePolicyTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.EnablePolicyType",
	}
	for header,value in pairs(EnablePolicyTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnablePolicyTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnablePolicyType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnablePolicyTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnablePolicyTypeSync(EnablePolicyTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnablePolicyTypeAsync(EnablePolicyTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccount asynchronously, invoking a callback when done
-- @param DescribeAccountRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAccountAsync(DescribeAccountRequest, cb)
	assert(DescribeAccountRequest, "You must provide a DescribeAccountRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeAccount",
	}
	for header,value in pairs(DescribeAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAccountRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeAccountSync(DescribeAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountAsync(DescribeAccountRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call InviteAccountToOrganization asynchronously, invoking a callback when done
-- @param InviteAccountToOrganizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InviteAccountToOrganizationAsync(InviteAccountToOrganizationRequest, cb)
	assert(InviteAccountToOrganizationRequest, "You must provide a InviteAccountToOrganizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.InviteAccountToOrganization",
	}
	for header,value in pairs(InviteAccountToOrganizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", InviteAccountToOrganizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InviteAccountToOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InviteAccountToOrganizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.InviteAccountToOrganizationSync(InviteAccountToOrganizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InviteAccountToOrganizationAsync(InviteAccountToOrganizationRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListPolicies",
	}
	for header,value in pairs(ListPoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call ListAccountsForParent asynchronously, invoking a callback when done
-- @param ListAccountsForParentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAccountsForParentAsync(ListAccountsForParentRequest, cb)
	assert(ListAccountsForParentRequest, "You must provide a ListAccountsForParentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListAccountsForParent",
	}
	for header,value in pairs(ListAccountsForParentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAccountsForParentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAccountsForParent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAccountsForParentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAccountsForParentSync(ListAccountsForParentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAccountsForParentAsync(ListAccountsForParentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeHandshake asynchronously, invoking a callback when done
-- @param DescribeHandshakeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeHandshakeAsync(DescribeHandshakeRequest, cb)
	assert(DescribeHandshakeRequest, "You must provide a DescribeHandshakeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeHandshake",
	}
	for header,value in pairs(DescribeHandshakeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeHandshakeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeHandshake synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeHandshakeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeHandshakeSync(DescribeHandshakeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeHandshakeAsync(DescribeHandshakeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListParents asynchronously, invoking a callback when done
-- @param ListParentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListParentsAsync(ListParentsRequest, cb)
	assert(ListParentsRequest, "You must provide a ListParentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListParents",
	}
	for header,value in pairs(ListParentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListParentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListParents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListParentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListParentsSync(ListParentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListParentsAsync(ListParentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateOrganizationalUnit asynchronously, invoking a callback when done
-- @param UpdateOrganizationalUnitRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateOrganizationalUnitAsync(UpdateOrganizationalUnitRequest, cb)
	assert(UpdateOrganizationalUnitRequest, "You must provide a UpdateOrganizationalUnitRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.UpdateOrganizationalUnit",
	}
	for header,value in pairs(UpdateOrganizationalUnitRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateOrganizationalUnitRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateOrganizationalUnit synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateOrganizationalUnitRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateOrganizationalUnitSync(UpdateOrganizationalUnitRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateOrganizationalUnitAsync(UpdateOrganizationalUnitRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListHandshakesForOrganization asynchronously, invoking a callback when done
-- @param ListHandshakesForOrganizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListHandshakesForOrganizationAsync(ListHandshakesForOrganizationRequest, cb)
	assert(ListHandshakesForOrganizationRequest, "You must provide a ListHandshakesForOrganizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListHandshakesForOrganization",
	}
	for header,value in pairs(ListHandshakesForOrganizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListHandshakesForOrganizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListHandshakesForOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListHandshakesForOrganizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListHandshakesForOrganizationSync(ListHandshakesForOrganizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListHandshakesForOrganizationAsync(ListHandshakesForOrganizationRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreatePolicy",
	}
	for header,value in pairs(CreatePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call ListTargetsForPolicy asynchronously, invoking a callback when done
-- @param ListTargetsForPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTargetsForPolicyAsync(ListTargetsForPolicyRequest, cb)
	assert(ListTargetsForPolicyRequest, "You must provide a ListTargetsForPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListTargetsForPolicy",
	}
	for header,value in pairs(ListTargetsForPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTargetsForPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTargetsForPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTargetsForPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTargetsForPolicySync(ListTargetsForPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTargetsForPolicyAsync(ListTargetsForPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRoots asynchronously, invoking a callback when done
-- @param ListRootsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRootsAsync(ListRootsRequest, cb)
	assert(ListRootsRequest, "You must provide a ListRootsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListRoots",
	}
	for header,value in pairs(ListRootsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRootsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRoots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRootsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRootsSync(ListRootsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRootsAsync(ListRootsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAWSServiceAccessForOrganization asynchronously, invoking a callback when done
-- @param ListAWSServiceAccessForOrganizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAWSServiceAccessForOrganizationAsync(ListAWSServiceAccessForOrganizationRequest, cb)
	assert(ListAWSServiceAccessForOrganizationRequest, "You must provide a ListAWSServiceAccessForOrganizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListAWSServiceAccessForOrganization",
	}
	for header,value in pairs(ListAWSServiceAccessForOrganizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAWSServiceAccessForOrganizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAWSServiceAccessForOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAWSServiceAccessForOrganizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAWSServiceAccessForOrganizationSync(ListAWSServiceAccessForOrganizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAWSServiceAccessForOrganizationAsync(ListAWSServiceAccessForOrganizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
