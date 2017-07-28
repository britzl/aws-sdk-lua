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
	timestamp_format = "unixTimestamp",
	global_endpoint = "",
	uid = "organizations-2016-11-28",
}

local keys = {}
local asserts = {}

keys.DuplicateOrganizationalUnitException = { ["Message"] = true, nil }

function asserts.AssertDuplicateOrganizationalUnitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateOrganizationalUnitException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateOrganizationalUnitException[k], "DuplicateOrganizationalUnitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateOrganizationalUnitException
-- <p>An organizational unit (OU) with the same name already exists.</p>
-- @param _Message [ExceptionMessage] 
function M.DuplicateOrganizationalUnitException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateOrganizationalUnitException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDuplicateOrganizationalUnitException(t)
	return t
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
-- @param _OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the organizational unit that you want to delete. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required parameter: OrganizationalUnitId
function M.DeleteOrganizationalUnitRequest(_OrganizationalUnitId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteOrganizationalUnitRequest")
	local t = { 
		["OrganizationalUnitId"] = _OrganizationalUnitId,
	}
	asserts.AssertDeleteOrganizationalUnitRequest(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _CreateAccountStatuses [CreateAccountStatuses] <p>A list of objects with details about the requests. Certain elements, such as the accountId number, are present in the output only after the account has been successfully created.</p>
function M.ListCreateAccountStatusResponse(_NextToken, _CreateAccountStatuses, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCreateAccountStatusResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["CreateAccountStatuses"] = _CreateAccountStatuses,
	}
	asserts.AssertListCreateAccountStatusResponse(t)
	return t
end

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
-- @param _Id [HandshakeId] <p>The unique identifier (ID) of a handshake. The originating account creates the ID when it initiates the handshake.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- @param _State [HandshakeState] <p>The current state of the handshake. Use the state to trace the flow of the handshake through the process from its creation to its acceptance. The meaning of each of the valid values is as follows:</p> <ul> <li> <p> <b>REQUESTED</b>: This handshake was sent to multiple recipients (applicable to only some handshake types) and not all recipients have responded yet. The request stays in this state until all recipients respond.</p> </li> <li> <p> <b>OPEN</b>: This handshake was sent to multiple recipients (applicable to only some policy types) and all recipients have responded, allowing the originator to complete the handshake action.</p> </li> <li> <p> <b>CANCELED</b>: This handshake is no longer active because it was canceled by the originating account.</p> </li> <li> <p> <b>ACCEPTED</b>: This handshake is complete because it has been accepted by the recipient.</p> </li> <li> <p> <b>DECLINED</b>: This handshake is no longer active because it was declined by the recipient account.</p> </li> <li> <p> <b>EXPIRED</b>: This handshake is no longer active because the originator did not receive a response of any kind from the recipient before the expiration time (15 days).</p> </li> </ul>
-- @param _Resources [HandshakeResources] <p>Additional information that is needed to process the handshake.</p>
-- @param _Parties [HandshakeParties] <p>Information about the two accounts that are participating in the handshake.</p>
-- @param _Action [ActionType] <p>The type of handshake, indicating what action occurs when the recipient accepts the handshake.</p>
-- @param _RequestedTimestamp [Timestamp] <p>The date and time that the handshake request was made.</p>
-- @param _ExpirationTimestamp [Timestamp] <p>The date and time that the handshake expires. If the recipient of the handshake request fails to respond before the specified date and time, the handshake becomes inactive and is no longer valid.</p>
-- @param _Arn [HandshakeArn] <p>The Amazon Resource Name (ARN) of a handshake.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.Handshake(_Id, _State, _Resources, _Parties, _Action, _RequestedTimestamp, _ExpirationTimestamp, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Handshake")
	local t = { 
		["Id"] = _Id,
		["State"] = _State,
		["Resources"] = _Resources,
		["Parties"] = _Parties,
		["Action"] = _Action,
		["RequestedTimestamp"] = _RequestedTimestamp,
		["ExpirationTimestamp"] = _ExpirationTimestamp,
		["Arn"] = _Arn,
	}
	asserts.AssertHandshake(t)
	return t
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
-- @param _Root [Root] <p>A structure that shows the root with the updated list of enabled policy types.</p>
function M.EnablePolicyTypeResponse(_Root, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnablePolicyTypeResponse")
	local t = { 
		["Root"] = _Root,
	}
	asserts.AssertEnablePolicyTypeResponse(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _Targets [PolicyTargets] <p>A list of structures, each of which contains details about one of the entities to which the specified policy is attached.</p>
function M.ListTargetsForPolicyResponse(_NextToken, _Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTargetsForPolicyResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Targets"] = _Targets,
	}
	asserts.AssertListTargetsForPolicyResponse(t)
	return t
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
-- @param _Status [PolicyTypeStatus] <p>The status of the policy type as it relates to the associated root. To attach a policy of the specified type to a root or to an OU or account in that root, it must be available in the organization and enabled for that root.</p>
-- @param _Type [PolicyType] <p>The name of the policy type.</p>
function M.PolicyTypeSummary(_Status, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTypeSummary")
	local t = { 
		["Status"] = _Status,
		["Type"] = _Type,
	}
	asserts.AssertPolicyTypeSummary(t)
	return t
end

keys.ParentNotFoundException = { ["Message"] = true, nil }

function asserts.AssertParentNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParentNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParentNotFoundException[k], "ParentNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParentNotFoundException
-- <p>We can't find a root or organizational unit (OU) with the ParentId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.ParentNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParentNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertParentNotFoundException(t)
	return t
end

keys.AccountNotFoundException = { ["Message"] = true, nil }

function asserts.AssertAccountNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountNotFoundException[k], "AccountNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountNotFoundException
-- <p> We can't find an AWS account with the AccountId that you specified, or the account whose credentials you used to make this request is not a member of an organization.</p>
-- @param _Message [ExceptionMessage] 
function M.AccountNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertAccountNotFoundException(t)
	return t
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
-- @param _Type [ParentType] <p>The type of the parent entity.</p>
-- @param _Id [ParentId] <p>The unique identifier (ID) of the parent entity.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
function M.Parent(_Type, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parent")
	local t = { 
		["Type"] = _Type,
		["Id"] = _Id,
	}
	asserts.AssertParent(t)
	return t
end

keys.PolicyNotFoundException = { ["Message"] = true, nil }

function asserts.AssertPolicyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyNotFoundException[k], "PolicyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyNotFoundException
-- <p>We can't find a policy with the PolicyId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.PolicyNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertPolicyNotFoundException(t)
	return t
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
-- @param _Organization [Organization] <p>A structure that contains details about the newly created organization.</p>
function M.CreateOrganizationResponse(_Organization, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrganizationResponse")
	local t = { 
		["Organization"] = _Organization,
	}
	asserts.AssertCreateOrganizationResponse(t)
	return t
end

keys.DestinationParentNotFoundException = { ["Message"] = true, nil }

function asserts.AssertDestinationParentNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DestinationParentNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DestinationParentNotFoundException[k], "DestinationParentNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DestinationParentNotFoundException
-- <p>We can't find the destination container (a root or OU) with the ParentId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.DestinationParentNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DestinationParentNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDestinationParentNotFoundException(t)
	return t
end

keys.SourceParentNotFoundException = { ["Message"] = true, nil }

function asserts.AssertSourceParentNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SourceParentNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SourceParentNotFoundException[k], "SourceParentNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SourceParentNotFoundException
-- <p>We can't find a source root or OU with the ParentId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.SourceParentNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SourceParentNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertSourceParentNotFoundException(t)
	return t
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
-- @param _TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, OU, or account that you want to attach the policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param _PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to attach to the target. You can get the ID for the policy by calling the <a>ListPolicies</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required parameter: PolicyId
-- Required parameter: TargetId
function M.AttachPolicyRequest(_TargetId, _PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttachPolicyRequest")
	local t = { 
		["TargetId"] = _TargetId,
		["PolicyId"] = _PolicyId,
	}
	asserts.AssertAttachPolicyRequest(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _Accounts [Accounts] <p>A list of the accounts in the specified root or OU.</p>
function M.ListAccountsForParentResponse(_NextToken, _Accounts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountsForParentResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Accounts"] = _Accounts,
	}
	asserts.AssertListAccountsForParentResponse(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _Children [Children] <p>The list of children of the specified parent container.</p>
function M.ListChildrenResponse(_NextToken, _Children, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListChildrenResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Children"] = _Children,
	}
	asserts.AssertListChildrenResponse(t)
	return t
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
-- @param _OrganizationalUnit [OrganizationalUnit] <p>A structure that contains the details about the specified OU, including its new name.</p>
function M.UpdateOrganizationalUnitResponse(_OrganizationalUnit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateOrganizationalUnitResponse")
	local t = { 
		["OrganizationalUnit"] = _OrganizationalUnit,
	}
	asserts.AssertUpdateOrganizationalUnitResponse(t)
	return t
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
-- @param _Handshake [Handshake] <p>A structure that contains details about the handshake that you canceled.</p>
function M.CancelHandshakeResponse(_Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelHandshakeResponse")
	local t = { 
		["Handshake"] = _Handshake,
	}
	asserts.AssertCancelHandshakeResponse(t)
	return t
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
-- @param _Status [AccountStatus] <p>The status of the account in the organization.</p>
-- @param _Name [AccountName] <p>The friendly name of the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @param _Email [Email] <p>The email address associated with the AWS account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for this parameter is a string of characters that represents a standard Internet email address.</p>
-- @param _JoinedMethod [AccountJoinedMethod] <p>The method by which the account joined the organization.</p>
-- @param _JoinedTimestamp [Timestamp] <p>The date the account became a part of the organization.</p>
-- @param _Id [AccountId] <p>The unique identifier (ID) of the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- @param _Arn [AccountArn] <p>The Amazon Resource Name (ARN) of the account.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.Account(_Status, _Name, _Email, _JoinedMethod, _JoinedTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Account")
	local t = { 
		["Status"] = _Status,
		["Name"] = _Name,
		["Email"] = _Email,
		["JoinedMethod"] = _JoinedMethod,
		["JoinedTimestamp"] = _JoinedTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertAccount(t)
	return t
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
-- @param _Organization [Organization] <p>A structure that contains information about the organization.</p>
function M.DescribeOrganizationResponse(_Organization, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrganizationResponse")
	local t = { 
		["Organization"] = _Organization,
	}
	asserts.AssertDescribeOrganizationResponse(t)
	return t
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
-- @param _RoleName [RoleName] <p>(Optional)</p> <p>The name of an IAM role that Organizations automatically preconfigures in the new member account. This role trusts the master account, allowing users in the master account to assume the role, as permitted by the master account administrator. The role has administrator permissions in the new member account.</p> <p>If you do not specify this parameter, the role name defaults to <code>OrganizationAccountAccessRole</code>.</p> <p>For more information about how to use this role to access the member account, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Accessing and Administering the Member Accounts in Your Organization</a> in the <i>AWS Organizations User Guide</i>, and steps 2 and 3 in <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">Tutorial: Delegate Access Across AWS Accounts Using IAM Roles</a> in the <i>IAM User Guide</i>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of characters that can consist of uppercase letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
-- @param _Email [Email] <p>The email address of the owner to assign to the new member account. This email address must not already be associated with another AWS account.</p>
-- @param _IamUserAccessToBilling [IAMUserAccessToBilling] <p>If set to <code>ALLOW</code>, the new account enables IAM users to access account billing information <i>if</i> they have the required permissions. If set to <code>DENY</code>, then only the root user of the new account can access account billing information. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> <p>If you do not specify this parameter, the value defaults to ALLOW, and IAM users and roles with the required permissions can access billing information for the new account.</p>
-- @param _AccountName [AccountName] <p>The friendly name of the member account.</p>
-- Required parameter: Email
-- Required parameter: AccountName
function M.CreateAccountRequest(_RoleName, _Email, _IamUserAccessToBilling, _AccountName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountRequest")
	local t = { 
		["RoleName"] = _RoleName,
		["Email"] = _Email,
		["IamUserAccessToBilling"] = _IamUserAccessToBilling,
		["AccountName"] = _AccountName,
	}
	asserts.AssertCreateAccountRequest(t)
	return t
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
-- @param _Root [Root] <p>A structure that shows the root with the updated list of enabled policy types.</p>
function M.DisablePolicyTypeResponse(_Root, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisablePolicyTypeResponse")
	local t = { 
		["Root"] = _Root,
	}
	asserts.AssertDisablePolicyTypeResponse(t)
	return t
end

keys.PolicyTypeNotEnabledException = { ["Message"] = true, nil }

function asserts.AssertPolicyTypeNotEnabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeNotEnabledException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyTypeNotEnabledException[k], "PolicyTypeNotEnabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeNotEnabledException
-- <p>The specified policy type is not currently enabled in this root. You cannot attach policies of the specified type to entities in a root until you enable that type in the root. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _Message [ExceptionMessage] 
function M.PolicyTypeNotEnabledException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTypeNotEnabledException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertPolicyTypeNotEnabledException(t)
	return t
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
-- @param _OrganizationalUnit [OrganizationalUnit] <p>A structure that contains details about the specified OU.</p>
function M.DescribeOrganizationalUnitResponse(_OrganizationalUnit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrganizationalUnitResponse")
	local t = { 
		["OrganizationalUnit"] = _OrganizationalUnit,
	}
	asserts.AssertDescribeOrganizationalUnitResponse(t)
	return t
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
-- @param _AvailablePolicyTypes [PolicyTypes] <p>A list of policy types that are enabled for this organization. For example, if your organization has all features enabled, then service control policies (SCPs) are included in the list.</p>
-- @param _MasterAccountId [AccountId] <p>The unique identifier (ID) of the master account of an organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- @param _MasterAccountArn [AccountArn] <p>The Amazon Resource Name (ARN) of the account that is designated as the master account for the organization.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _FeatureSet [OrganizationFeatureSet] <p>Specifies the functionality that currently is available to the organization. If set to "ALL", then all features are enabled and policies can be applied to accounts in the organization. If set to "CONSOLIDATED_BILLING", then only consolidated billing functionality is available. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _MasterAccountEmail [Email] <p>The email address that is associated with the AWS account that is designated as the master account for the organization.</p>
-- @param _Id [OrganizationId] <p>The unique identifier (ID) of an organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organization ID string requires "o-" followed by from 10 to 32 lower-case letters or digits.</p>
-- @param _Arn [OrganizationArn] <p>The Amazon Resource Name (ARN) of an organization.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.Organization(_AvailablePolicyTypes, _MasterAccountId, _MasterAccountArn, _FeatureSet, _MasterAccountEmail, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Organization")
	local t = { 
		["AvailablePolicyTypes"] = _AvailablePolicyTypes,
		["MasterAccountId"] = _MasterAccountId,
		["MasterAccountArn"] = _MasterAccountArn,
		["FeatureSet"] = _FeatureSet,
		["MasterAccountEmail"] = _MasterAccountEmail,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertOrganization(t)
	return t
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
-- @param _HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to cancel. You can get the ID from the <a>ListHandshakesForOrganization</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: HandshakeId
function M.CancelHandshakeRequest(_HandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelHandshakeRequest")
	local t = { 
		["HandshakeId"] = _HandshakeId,
	}
	asserts.AssertCancelHandshakeRequest(t)
	return t
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
-- @param _DestinationParentId [ParentId] <p>The unique identifier (ID) of the root or organizational unit that you want to move the account to.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param _SourceParentId [ParentId] <p>The unique identifier (ID) of the root or organizational unit that you want to move the account from.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param _AccountId [AccountId] <p>The unique identifier (ID) of the account that you want to move.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required parameter: AccountId
-- Required parameter: SourceParentId
-- Required parameter: DestinationParentId
function M.MoveAccountRequest(_DestinationParentId, _SourceParentId, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MoveAccountRequest")
	local t = { 
		["DestinationParentId"] = _DestinationParentId,
		["SourceParentId"] = _SourceParentId,
		["AccountId"] = _AccountId,
	}
	asserts.AssertMoveAccountRequest(t)
	return t
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
-- @param _Filter [PolicyType] <p>Specifies the type of policy that you want to include in the response.</p>
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required parameter: Filter
function M.ListPoliciesRequest(_Filter, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesRequest")
	local t = { 
		["Filter"] = _Filter,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListPoliciesRequest(t)
	return t
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
-- @param _Type [HandshakeResourceType] <p>The type of information being passed, specifying how the value is to be interpreted by the other party:</p> <ul> <li> <p> <code>ACCOUNT</code> - Specifies an AWS account ID number.</p> </li> <li> <p> <code>ORGANIZATION</code> - Specifies an organization ID number.</p> </li> <li> <p> <code>EMAIL</code> - Specifies the email address that is associated with the account that receives the handshake. </p> </li> <li> <p> <code>OWNER_EMAIL</code> - Specifies the email address associated with the master account. Included as information about an organization. </p> </li> <li> <p> <code>OWNER_NAME</code> - Specifies the name associated with the master account. Included as information about an organization. </p> </li> <li> <p> <code>NOTES</code> - Additional text provided by the handshake initiator and intended for the recipient to read.</p> </li> </ul>
-- @param _Resources [HandshakeResources] <p>When needed, contains an additional array of <code>HandshakeResource</code> objects.</p>
-- @param _Value [HandshakeResourceValue] <p>The information that is passed to the other party in the handshake. The format of the value string must match the requirements of the specified type.</p>
function M.HandshakeResource(_Type, _Resources, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeResource")
	local t = { 
		["Type"] = _Type,
		["Resources"] = _Resources,
		["Value"] = _Value,
	}
	asserts.AssertHandshakeResource(t)
	return t
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
-- @param _Handshake [Handshake] <p>A structure that contains information about the specified handshake.</p>
function M.DescribeHandshakeResponse(_Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHandshakeResponse")
	local t = { 
		["Handshake"] = _Handshake,
	}
	asserts.AssertDescribeHandshakeResponse(t)
	return t
end

keys.InvalidInputException = { ["Message"] = true, ["Reason"] = true, nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["Reason"] then asserts.AssertInvalidInputExceptionReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The requested operation failed because you provided invalid values for one or more of the request parameters. This exception includes a reason that contains additional information about the violated limit:</p> <ul> <li> <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account, organization, or email) as a party.</p> </li> <li> <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid ARN for the organization.</p> </li> <li> <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p> </li> <li> <p>INVALID_ENUM: You specified a value that is not valid for that parameter.</p> </li> <li> <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid characters.</p> </li> <li> <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least one invalid value.</p> </li> <li> <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than allowed.</p> </li> <li> <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value than allowed.</p> </li> <li> <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than allowed.</p> </li> <li> <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value than allowed.</p> </li> <li> <p>IMMUTABLE_POLICY: You specified a policy that is managed by AWS and cannot be modified.</p> </li> <li> <p>INVALID_PATTERN: You provided a value that doesn't match the required pattern.</p> </li> <li> <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match the required pattern.</p> </li> <li> <p>INPUT_REQUIRED: You must include a value for all required parameters.</p> </li> <li> <p>INVALID_PAGINATION_TOKEN: Get the value for the NextToken parameter from the response to a previous call of the operation.</p> </li> <li> <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the operation.</p> </li> <li> <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between entities in the same root.</p> </li> </ul>
-- @param _Message [ExceptionMessage] 
-- @param _Reason [InvalidInputExceptionReason] 
function M.InvalidInputException(_Message, _Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["Message"] = _Message,
		["Reason"] = _Reason,
	}
	asserts.AssertInvalidInputException(t)
	return t
end

keys.HandshakeParty = { ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertHandshakeParty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeParty to be of type 'table'")
	if struct["Type"] then asserts.AssertHandshakePartyType(struct["Type"]) end
	if struct["Id"] then asserts.AssertHandshakePartyId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.HandshakeParty[k], "HandshakeParty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeParty
-- <p>Identifies a participant in a handshake.</p>
-- @param _Type [HandshakePartyType] <p>The type of party.</p>
-- @param _Id [HandshakePartyId] <p>The unique identifier (ID) for the party.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
function M.HandshakeParty(_Type, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeParty")
	local t = { 
		["Type"] = _Type,
		["Id"] = _Id,
	}
	asserts.AssertHandshakeParty(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _Policies [Policies] <p>A list of policies that match the filter criteria in the request. The output list does not include the policy contents. To see the content for a policy, see <a>DescribePolicy</a>.</p>
function M.ListPoliciesResponse(_NextToken, _Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Policies"] = _Policies,
	}
	asserts.AssertListPoliciesResponse(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _Roots [Roots] <p>A list of roots that are defined in an organization.</p>
function M.ListRootsResponse(_NextToken, _Roots, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRootsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Roots"] = _Roots,
	}
	asserts.AssertListRootsResponse(t)
	return t
end

keys.ConcurrentModificationException = { ["Message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>The target of the operation is currently being modified by a different request. Try again later.</p>
-- @param _Message [ExceptionMessage] 
function M.ConcurrentModificationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertConcurrentModificationException(t)
	return t
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
-- @param _Policy [Policy] <p>A structure that contains details about the specified policy.</p>
function M.DescribePolicyResponse(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePolicyResponse")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertDescribePolicyResponse(t)
	return t
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
-- @param _Handshake [Handshake] <p>A structure that contains details about the declined handshake. The state is updated to show the value <code>DECLINED</code>.</p>
function M.DeclineHandshakeResponse(_Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeclineHandshakeResponse")
	local t = { 
		["Handshake"] = _Handshake,
	}
	asserts.AssertDeclineHandshakeResponse(t)
	return t
end

keys.MalformedPolicyDocumentException = { ["Message"] = true, nil }

function asserts.AssertMalformedPolicyDocumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MalformedPolicyDocumentException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MalformedPolicyDocumentException[k], "MalformedPolicyDocumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MalformedPolicyDocumentException
-- <p>The provided policy document does not meet the requirements of the specified policy type. For example, the syntax might be incorrect. For details about service control policy syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _Message [ExceptionMessage] 
function M.MalformedPolicyDocumentException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MalformedPolicyDocumentException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertMalformedPolicyDocumentException(t)
	return t
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
-- @param _Handshake [Handshake] <p>A structure that contains details about the handshake created to support this request to enable all features in the organization.</p>
function M.EnableAllFeaturesResponse(_Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableAllFeaturesResponse")
	local t = { 
		["Handshake"] = _Handshake,
	}
	asserts.AssertEnableAllFeaturesResponse(t)
	return t
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
-- @param _RootId [RootId] <p>The unique identifier (ID) of the root in which you want to enable a policy type. You can get the ID from the <a>ListRoots</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- @param _PolicyType [PolicyType] <p>The policy type that you want to enable.</p>
-- Required parameter: RootId
-- Required parameter: PolicyType
function M.EnablePolicyTypeRequest(_RootId, _PolicyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnablePolicyTypeRequest")
	local t = { 
		["RootId"] = _RootId,
		["PolicyType"] = _PolicyType,
	}
	asserts.AssertEnablePolicyTypeRequest(t)
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
--  
-- @param _Policy [Policy] <p>A structure that contains details about the newly created policy.</p>
function M.CreatePolicyResponse(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyResponse")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertCreatePolicyResponse(t)
	return t
end

keys.TargetNotFoundException = { ["Message"] = true, nil }

function asserts.AssertTargetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TargetNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TargetNotFoundException[k], "TargetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TargetNotFoundException
-- <p>We can't find a root, OU, or account with the TargetId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.TargetNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TargetNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertTargetNotFoundException(t)
	return t
end

keys.HandshakeConstraintViolationException = { ["Message"] = true, ["Reason"] = true, nil }

function asserts.AssertHandshakeConstraintViolationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeConstraintViolationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["Reason"] then asserts.AssertHandshakeConstraintViolationExceptionReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.HandshakeConstraintViolationException[k], "HandshakeConstraintViolationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeConstraintViolationException
-- <p>The requested operation would violate the constraint identified in the reason code.</p> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. <b>Note</b>: deleted and closed accounts still count toward your limit.</p> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the invited account is already a member of an organization.</p> </li> <li> <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid because the organization has already enabled all features.</p> </li> <li> <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You cannot issue new invitations to join an organization while it is in the process of enabling all features. You can resume inviting accounts after you finalize the process when all accounts have agreed to the change.</p> </li> <li> <p>PAYMENT_INSTRUMENT_REQUIRED: You cannot complete the operation with an account that does not have a payment instrument, such as a credit card, associated with it.</p> </li> <li> <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the account is from a different marketplace than the accounts in the organization. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be from the same marketplace.</p> </li> <li> <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change the membership of an account too quickly after its previous change.</p> </li> </ul>
-- @param _Message [ExceptionMessage] 
-- @param _Reason [HandshakeConstraintViolationExceptionReason] 
function M.HandshakeConstraintViolationException(_Message, _Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeConstraintViolationException")
	local t = { 
		["Message"] = _Message,
		["Reason"] = _Reason,
	}
	asserts.AssertHandshakeConstraintViolationException(t)
	return t
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
-- @param _CreateAccountRequestId [CreateAccountRequestId] <p>Specifies the <code>operationId</code> that uniquely identifies the request. You can get the ID from the response to an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an create account request ID string requires "car-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: CreateAccountRequestId
function M.DescribeCreateAccountStatusRequest(_CreateAccountRequestId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCreateAccountStatusRequest")
	local t = { 
		["CreateAccountRequestId"] = _CreateAccountRequestId,
	}
	asserts.AssertDescribeCreateAccountStatusRequest(t)
	return t
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
-- @param _PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to delete. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required parameter: PolicyId
function M.DeletePolicyRequest(_PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePolicyRequest")
	local t = { 
		["PolicyId"] = _PolicyId,
	}
	asserts.AssertDeletePolicyRequest(t)
	return t
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
-- @param _Handshakes [Handshakes] <p>A list of <a>Handshake</a> objects with details about each of the handshakes that is associated with the specified account.</p>
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
function M.ListHandshakesForAccountResponse(_Handshakes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHandshakesForAccountResponse")
	local t = { 
		["Handshakes"] = _Handshakes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListHandshakesForAccountResponse(t)
	return t
end

keys.TooManyRequestsException = { ["Message"] = true, ["Type"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["Type"] then asserts.AssertExceptionType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>You've sent too many requests in too short a period of time. The limit helps protect against denial-of-service attacks. Try again later.</p>
-- @param _Message [ExceptionMessage] 
-- @param _Type [ExceptionType] 
function M.TooManyRequestsException(_Message, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["Message"] = _Message,
		["Type"] = _Type,
	}
	asserts.AssertTooManyRequestsException(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _Accounts [Accounts] <p>A list of objects in the organization.</p>
function M.ListAccountsResponse(_NextToken, _Accounts, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Accounts"] = _Accounts,
	}
	asserts.AssertListAccountsResponse(t)
	return t
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
-- @param _Handshake [Handshake] <p>A structure that contains details about the handshake that is created to support this invitation request.</p>
function M.InviteAccountToOrganizationResponse(_Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InviteAccountToOrganizationResponse")
	local t = { 
		["Handshake"] = _Handshake,
	}
	asserts.AssertInviteAccountToOrganizationResponse(t)
	return t
end

keys.ServiceException = { ["Message"] = true, nil }

function asserts.AssertServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceException[k], "ServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceException
-- <p>AWS Organizations can't complete your request because of an internal service error. Try again later.</p>
-- @param _Message [ExceptionMessage] 
function M.ServiceException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertServiceException(t)
	return t
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
-- @param _AwsManaged [AwsManagedPolicy] <p>A boolean value that indicates whether the specified policy is an AWS managed policy. If true, then you can attach the policy to roots, OUs, or accounts, but you cannot edit it.</p>
-- @param _Description [PolicyDescription] <p>The description of the policy.</p>
-- @param _Type [PolicyType] <p>The type of policy.</p>
-- @param _Id [PolicyId] <p>The unique identifier (ID) of the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- @param _Arn [PolicyArn] <p>The Amazon Resource Name (ARN) of the policy.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _Name [PolicyName] <p>The friendly name of the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
function M.PolicySummary(_AwsManaged, _Description, _Type, _Id, _Arn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicySummary")
	local t = { 
		["AwsManaged"] = _AwsManaged,
		["Description"] = _Description,
		["Type"] = _Type,
		["Id"] = _Id,
		["Arn"] = _Arn,
		["Name"] = _Name,
	}
	asserts.AssertPolicySummary(t)
	return t
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
-- @param _HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to accept.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: HandshakeId
function M.AcceptHandshakeRequest(_HandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptHandshakeRequest")
	local t = { 
		["HandshakeId"] = _HandshakeId,
	}
	asserts.AssertAcceptHandshakeRequest(t)
	return t
end

keys.RootNotFoundException = { ["Message"] = true, nil }

function asserts.AssertRootNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RootNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RootNotFoundException[k], "RootNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RootNotFoundException
-- <p>We can't find a root with the RootId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.RootNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RootNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertRootNotFoundException(t)
	return t
end

keys.DuplicateAccountException = { ["Message"] = true, nil }

function asserts.AssertDuplicateAccountException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateAccountException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateAccountException[k], "DuplicateAccountException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateAccountException
-- <p>That account is already present in the specified destination.</p>
-- @param _Message [ExceptionMessage] 
function M.DuplicateAccountException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateAccountException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDuplicateAccountException(t)
	return t
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
-- @param _ChildType [ChildType] <p>Filters the output to include only the specified child type.</p>
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @param _ParentId [ParentId] <p>The unique identifier (ID) for the parent root or OU whose children you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required parameter: ParentId
-- Required parameter: ChildType
function M.ListChildrenRequest(_ChildType, _NextToken, _MaxResults, _ParentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListChildrenRequest")
	local t = { 
		["ChildType"] = _ChildType,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["ParentId"] = _ParentId,
	}
	asserts.AssertListChildrenRequest(t)
	return t
end

keys.PolicyTypeNotAvailableForOrganizationException = { ["Message"] = true, nil }

function asserts.AssertPolicyTypeNotAvailableForOrganizationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeNotAvailableForOrganizationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyTypeNotAvailableForOrganizationException[k], "PolicyTypeNotAvailableForOrganizationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeNotAvailableForOrganizationException
-- <p>You can't use the specified policy type with the feature set currently enabled for this organization. For example, you can enable service control policies (SCPs) only after you enable all features in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root">Enabling and Disabling a Policy Type on a Root</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _Message [ExceptionMessage] 
function M.PolicyTypeNotAvailableForOrganizationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTypeNotAvailableForOrganizationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertPolicyTypeNotAvailableForOrganizationException(t)
	return t
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
-- @param _Filter [HandshakeFilter] <p>Filters the handshakes that you want included in the response. The default is all types. Use the <code>ActionType</code> element to limit the output to only a specified type, such as <code>INVITE</code>, <code>ENABLE-FULL-CONTROL</code>, or <code>APPROVE-FULL-CONTROL</code>. Alternatively, for the <code>ENABLE-FULL-CONTROL</code> handshake that generates a separate child handshake for each member account, you can specify <code>ParentHandshakeId</code> to see only the handshakes that were generated by that parent request.</p>
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListHandshakesForAccountRequest(_Filter, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHandshakesForAccountRequest")
	local t = { 
		["Filter"] = _Filter,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListHandshakesForAccountRequest(t)
	return t
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
-- @param _Filter [PolicyType] <p>The type of policy that you want to include in the returned list.</p>
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, organizational unit, or account whose policies you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required parameter: TargetId
-- Required parameter: Filter
function M.ListPoliciesForTargetRequest(_Filter, _NextToken, _TargetId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesForTargetRequest")
	local t = { 
		["Filter"] = _Filter,
		["NextToken"] = _NextToken,
		["TargetId"] = _TargetId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListPoliciesForTargetRequest(t)
	return t
end

keys.MasterCannotLeaveOrganizationException = { ["Message"] = true, nil }

function asserts.AssertMasterCannotLeaveOrganizationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MasterCannotLeaveOrganizationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MasterCannotLeaveOrganizationException[k], "MasterCannotLeaveOrganizationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MasterCannotLeaveOrganizationException
-- <p>You can't remove a master account from an organization. If you want the master account to become a member account in another organization, you must first delete the current organization of the master account.</p>
-- @param _Message [ExceptionMessage] 
function M.MasterCannotLeaveOrganizationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MasterCannotLeaveOrganizationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertMasterCannotLeaveOrganizationException(t)
	return t
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
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListRootsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRootsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListRootsRequest(t)
	return t
end

keys.OrganizationalUnitNotEmptyException = { ["Message"] = true, nil }

function asserts.AssertOrganizationalUnitNotEmptyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationalUnitNotEmptyException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationalUnitNotEmptyException[k], "OrganizationalUnitNotEmptyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationalUnitNotEmptyException
-- <p>The specified organizational unit (OU) is not empty. Move all accounts to another root or to other OUs, remove all child OUs, and then try the operation again.</p>
-- @param _Message [ExceptionMessage] 
function M.OrganizationalUnitNotEmptyException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationalUnitNotEmptyException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertOrganizationalUnitNotEmptyException(t)
	return t
end

keys.AWSOrganizationsNotInUseException = { ["Message"] = true, nil }

function asserts.AssertAWSOrganizationsNotInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AWSOrganizationsNotInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AWSOrganizationsNotInUseException[k], "AWSOrganizationsNotInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AWSOrganizationsNotInUseException
-- <p>Your account is not a member of an organization. To make this request, you must use the credentials of an account that belongs to an organization.</p>
-- @param _Message [ExceptionMessage] 
function M.AWSOrganizationsNotInUseException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AWSOrganizationsNotInUseException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertAWSOrganizationsNotInUseException(t)
	return t
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
-- @param _TargetId [PolicyTargetId] <p>The unique identifier (ID) of the root, OU, or account from which you want to detach the policy. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param _PolicyId [PolicyId] <p>The unique identifier (ID) of the policy you want to detach. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required parameter: PolicyId
-- Required parameter: TargetId
function M.DetachPolicyRequest(_TargetId, _PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetachPolicyRequest")
	local t = { 
		["TargetId"] = _TargetId,
		["PolicyId"] = _PolicyId,
	}
	asserts.AssertDetachPolicyRequest(t)
	return t
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
-- @param _Notes [HandshakeNotes] <p>Additional information that you want to include in the generated email to the recipient account owner.</p>
-- @param _Target [HandshakeParty] <p>The identifier (ID) of the AWS account that you want to invite to join your organization. This is a JSON object that contains the following elements: </p> <p> <code>{ "Type": "ACCOUNT", "Id": "&lt;<i> <b>account id number</b> </i>&gt;" }</code> </p> <p>If you use the AWS CLI, you can submit this as a single string, similar to the following example:</p> <p> <code>--target id=123456789012,type=ACCOUNT</code> </p> <p>If you specify <code>"Type": "ACCOUNT"</code>, then you must provide the AWS account ID number as the <code>Id</code>. If you specify <code>"Type": "EMAIL"</code>, then you must specify the email address that is associated with the account.</p> <p> <code>--target id=bill@example.com,type=EMAIL</code> </p>
-- Required parameter: Target
function M.InviteAccountToOrganizationRequest(_Notes, _Target, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InviteAccountToOrganizationRequest")
	local t = { 
		["Notes"] = _Notes,
		["Target"] = _Target,
	}
	asserts.AssertInviteAccountToOrganizationRequest(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _Parents [Parents] <p>A list of parents for the specified child account or OU.</p>
function M.ListParentsResponse(_NextToken, _Parents, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListParentsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Parents"] = _Parents,
	}
	asserts.AssertListParentsResponse(t)
	return t
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
-- @param _RootId [RootId] <p>The unique identifier (ID) of the root in which you want to disable a policy type. You can get the ID from the <a>ListPolicies</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- @param _PolicyType [PolicyType] <p>The policy type that you want to disable in this root.</p>
-- Required parameter: RootId
-- Required parameter: PolicyType
function M.DisablePolicyTypeRequest(_RootId, _PolicyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisablePolicyTypeRequest")
	local t = { 
		["RootId"] = _RootId,
		["PolicyType"] = _PolicyType,
	}
	asserts.AssertDisablePolicyTypeRequest(t)
	return t
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
-- @param _AccountId [AccountId] <p>The unique identifier (ID) of the AWS account that you want information about. You can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required parameter: AccountId
function M.DescribeAccountRequest(_AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountRequest")
	local t = { 
		["AccountId"] = _AccountId,
	}
	asserts.AssertDescribeAccountRequest(t)
	return t
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
-- @param _FeatureSet [OrganizationFeatureSet] <p>Specifies the feature set supported by the new organization. Each feature set supports different levels of functionality.</p> <ul> <li> <p> <i>CONSOLIDATED_BILLING</i>: All member accounts have their bills consolidated to and paid by the master account. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only">Consolidated Billing</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p> <i>ALL</i>: In addition to all the features supported by the consolidated billing feature set, the master account can also apply any type of policy to any member account in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all">All features</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul>
function M.CreateOrganizationRequest(_FeatureSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrganizationRequest")
	local t = { 
		["FeatureSet"] = _FeatureSet,
	}
	asserts.AssertCreateOrganizationRequest(t)
	return t
end

keys.PolicyTypeAlreadyEnabledException = { ["Message"] = true, nil }

function asserts.AssertPolicyTypeAlreadyEnabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyTypeAlreadyEnabledException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyTypeAlreadyEnabledException[k], "PolicyTypeAlreadyEnabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyTypeAlreadyEnabledException
-- <p>The specified policy type is already enabled in the specified root.</p>
-- @param _Message [ExceptionMessage] 
function M.PolicyTypeAlreadyEnabledException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTypeAlreadyEnabledException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertPolicyTypeAlreadyEnabledException(t)
	return t
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
-- @param _States [CreateAccountStates] <p>A list of one or more states that you want included in the response. If this parameter is not present, then all requests are included in the response.</p>
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListCreateAccountStatusRequest(_States, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCreateAccountStatusRequest")
	local t = { 
		["States"] = _States,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListCreateAccountStatusRequest(t)
	return t
end

keys.ConstraintViolationException = { ["Message"] = true, ["Reason"] = true, nil }

function asserts.AssertConstraintViolationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConstraintViolationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	if struct["Reason"] then asserts.AssertConstraintViolationExceptionReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConstraintViolationException[k], "ConstraintViolationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConstraintViolationException
-- <p>Performing this operation violates a minimum or maximum value limit. For example, attempting to removing the last SCP from an OU or root, inviting or creating too many accounts to the organization, or attaching too many policies to an account, OU, or root. This exception includes a reason that contains additional information about the violated limit:</p> <p/> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. If you need more accounts, contact AWS Support to request an increase in your limit. </p> <p>Or, The number of invitations that you tried to send would cause you to exceed the limit of accounts in your organization. Send fewer invitations, or contact AWS Support to request an increase in the number of accounts.</p> <p> <b>Note</b>: deleted and closed accounts still count toward your limit.</p> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of organizational units you can have in an organization.</p> </li> <li> <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an organizational unit tree that is too many levels deep.</p> </li> <li> <p>POLICY_NUMBER_LIMIT_EXCEEDED. You attempted to exceed the number of policies that you can have in an organization.</p> </li> <li> <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number of policies of a certain type that can be attached to an entity at one time.</p> </li> <li> <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy from an entity that would cause the entity to have fewer than the minimum number of policies of a certain type required.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first agree to the End-User License Agreement (EULA).</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first complete phone verification.</p> </li> <li> <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with this account, you first must associate a payment instrument, such as a credit card, with the account.</p> </li> <li> <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with this member account, you first must associate a payment instrument, such as a credit card, with the account.</p> </li> <li> <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of accounts that you can create in one day.</p> </li> <li> <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in this organization, you first must migrate the organization's master account to the marketplace that corresponds to the master account's address. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be associated with the same marketplace.</p> </li> </ul>
-- @param _Message [ExceptionMessage] 
-- @param _Reason [ConstraintViolationExceptionReason] 
function M.ConstraintViolationException(_Message, _Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConstraintViolationException")
	local t = { 
		["Message"] = _Message,
		["Reason"] = _Reason,
	}
	asserts.AssertConstraintViolationException(t)
	return t
end

keys.PolicyInUseException = { ["Message"] = true, nil }

function asserts.AssertPolicyInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyInUseException[k], "PolicyInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyInUseException
-- <p>The policy is attached to one or more entities. You must detach it from all roots, organizational units (OUs), and accounts before performing this operation.</p>
-- @param _Message [ExceptionMessage] 
function M.PolicyInUseException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyInUseException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertPolicyInUseException(t)
	return t
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
-- @param _Type [ChildType] <p>The type of this child entity.</p>
-- @param _Id [ChildId] <p>The unique identifier (ID) of this child entity.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the following:</p> <ul> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
function M.Child(_Type, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Child")
	local t = { 
		["Type"] = _Type,
		["Id"] = _Id,
	}
	asserts.AssertChild(t)
	return t
end

keys.InvalidHandshakeTransitionException = { ["Message"] = true, nil }

function asserts.AssertInvalidHandshakeTransitionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHandshakeTransitionException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidHandshakeTransitionException[k], "InvalidHandshakeTransitionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHandshakeTransitionException
-- <p>You can't perform the operation on the handshake in its current state. For example, you can't cancel a handshake that was already accepted, or accept a handshake that was already declined.</p>
-- @param _Message [ExceptionMessage] 
function M.InvalidHandshakeTransitionException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHandshakeTransitionException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidHandshakeTransitionException(t)
	return t
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
-- @param _Type [TargetType] <p>The type of the policy target.</p>
-- @param _TargetId [PolicyTargetId] <p>The unique identifier (ID) of the policy target.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- @param _Name [TargetName] <p>The friendly name of the policy target.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @param _Arn [GenericArn] <p>The Amazon Resource Name (ARN) of the policy target.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
function M.PolicyTargetSummary(_Type, _TargetId, _Name, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyTargetSummary")
	local t = { 
		["Type"] = _Type,
		["TargetId"] = _TargetId,
		["Name"] = _Name,
		["Arn"] = _Arn,
	}
	asserts.AssertPolicyTargetSummary(t)
	return t
end

keys.CreateAccountStatusNotFoundException = { ["Message"] = true, nil }

function asserts.AssertCreateAccountStatusNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAccountStatusNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAccountStatusNotFoundException[k], "CreateAccountStatusNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAccountStatusNotFoundException
-- <p>We can't find an create account request with the CreateAccountRequestId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.CreateAccountStatusNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountStatusNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertCreateAccountStatusNotFoundException(t)
	return t
end

keys.OrganizationNotEmptyException = { ["Message"] = true, nil }

function asserts.AssertOrganizationNotEmptyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationNotEmptyException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationNotEmptyException[k], "OrganizationNotEmptyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationNotEmptyException
-- <p>The organization isn't empty. To delete an organization, you must first remove all accounts except the master account, delete all organizational units (OUs), and delete all policies.</p>
-- @param _Message [ExceptionMessage] 
function M.OrganizationNotEmptyException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationNotEmptyException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertOrganizationNotEmptyException(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _Policies [Policies] <p>The list of policies that match the criteria in the request.</p>
function M.ListPoliciesForTargetResponse(_NextToken, _Policies, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPoliciesForTargetResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Policies"] = _Policies,
	}
	asserts.AssertListPoliciesForTargetResponse(t)
	return t
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
-- @param _Name [OrganizationalUnitName] <p>The new name that you want to assign to the OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- @param _OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required parameter: OrganizationalUnitId
function M.UpdateOrganizationalUnitRequest(_Name, _OrganizationalUnitId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateOrganizationalUnitRequest")
	local t = { 
		["Name"] = _Name,
		["OrganizationalUnitId"] = _OrganizationalUnitId,
	}
	asserts.AssertUpdateOrganizationalUnitRequest(t)
	return t
end

keys.PolicyNotAttachedException = { ["Message"] = true, nil }

function asserts.AssertPolicyNotAttachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PolicyNotAttachedException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PolicyNotAttachedException[k], "PolicyNotAttachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PolicyNotAttachedException
-- <p>The policy isn't attached to the specified target in the specified root.</p>
-- @param _Message [ExceptionMessage] 
function M.PolicyNotAttachedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PolicyNotAttachedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertPolicyNotAttachedException(t)
	return t
end

keys.HandshakeAlreadyInStateException = { ["Message"] = true, nil }

function asserts.AssertHandshakeAlreadyInStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeAlreadyInStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HandshakeAlreadyInStateException[k], "HandshakeAlreadyInStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeAlreadyInStateException
-- <p>The specified handshake is already in the requested state. For example, you can't accept a handshake that was already accepted.</p>
-- @param _Message [ExceptionMessage] 
function M.HandshakeAlreadyInStateException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeAlreadyInStateException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertHandshakeAlreadyInStateException(t)
	return t
end

keys.DuplicatePolicyException = { ["Message"] = true, nil }

function asserts.AssertDuplicatePolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicatePolicyException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicatePolicyException[k], "DuplicatePolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicatePolicyException
-- <p>A policy with the same name already exists.</p>
-- @param _Message [ExceptionMessage] 
function M.DuplicatePolicyException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicatePolicyException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDuplicatePolicyException(t)
	return t
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
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
-- @param _OrganizationalUnits [OrganizationalUnits] <p>A list of the OUs in the specified root or parent OU.</p>
function M.ListOrganizationalUnitsForParentResponse(_NextToken, _OrganizationalUnits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOrganizationalUnitsForParentResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["OrganizationalUnits"] = _OrganizationalUnits,
	}
	asserts.AssertListOrganizationalUnitsForParentResponse(t)
	return t
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
-- @param _Policy [Policy] <p>A structure that contains details about the updated policy, showing the requested changes.</p>
function M.UpdatePolicyResponse(_Policy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePolicyResponse")
	local t = { 
		["Policy"] = _Policy,
	}
	asserts.AssertUpdatePolicyResponse(t)
	return t
end

keys.DuplicateHandshakeException = { ["Message"] = true, nil }

function asserts.AssertDuplicateHandshakeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateHandshakeException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateHandshakeException[k], "DuplicateHandshakeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateHandshakeException
-- <p>A handshake with the same action and target already exists. For example, if you invited an account to join your organization, the invited account might already have a pending invitation from this organization. If you intend to resend an invitation to an account, ensure that existing handshakes that might be considered duplicates are canceled or declined.</p>
-- @param _Message [ExceptionMessage] 
function M.DuplicateHandshakeException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateHandshakeException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDuplicateHandshakeException(t)
	return t
end

keys.FinalizingOrganizationException = { ["Message"] = true, nil }

function asserts.AssertFinalizingOrganizationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FinalizingOrganizationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FinalizingOrganizationException[k], "FinalizingOrganizationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FinalizingOrganizationException
-- <p>AWS Organizations could not finalize the creation of your organization. Try again later. If this persists, contact AWS customer support.</p>
-- @param _Message [ExceptionMessage] 
function M.FinalizingOrganizationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FinalizingOrganizationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertFinalizingOrganizationException(t)
	return t
end

keys.AlreadyInOrganizationException = { ["Message"] = true, nil }

function asserts.AssertAlreadyInOrganizationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyInOrganizationException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlreadyInOrganizationException[k], "AlreadyInOrganizationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyInOrganizationException
-- <p>This account is already a member of an organization. An account can belong to only one organization at a time.</p>
-- @param _Message [ExceptionMessage] 
function M.AlreadyInOrganizationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyInOrganizationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertAlreadyInOrganizationException(t)
	return t
end

keys.OrganizationalUnitNotFoundException = { ["Message"] = true, nil }

function asserts.AssertOrganizationalUnitNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationalUnitNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationalUnitNotFoundException[k], "OrganizationalUnitNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationalUnitNotFoundException
-- <p>We can't find an organizational unit (OU) with the OrganizationalUnitId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.OrganizationalUnitNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationalUnitNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertOrganizationalUnitNotFoundException(t)
	return t
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
-- @param _CreateAccountStatus [CreateAccountStatus] <p>A structure that contains the current status of an account creation request.</p>
function M.DescribeCreateAccountStatusResponse(_CreateAccountStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCreateAccountStatusResponse")
	local t = { 
		["CreateAccountStatus"] = _CreateAccountStatus,
	}
	asserts.AssertDescribeCreateAccountStatusResponse(t)
	return t
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
-- @param _OrganizationalUnit [OrganizationalUnit] <p>A structure that contains details about the newly created OU.</p>
function M.CreateOrganizationalUnitResponse(_OrganizationalUnit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrganizationalUnitResponse")
	local t = { 
		["OrganizationalUnit"] = _OrganizationalUnit,
	}
	asserts.AssertCreateOrganizationalUnitResponse(t)
	return t
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
-- @param _Content [PolicyContent] <p>The policy content to add to the new policy. For example, if you create a <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">service control policy</a> (SCP), this string must be JSON text that specifies the permissions that admins in attached accounts can delegate to their users, groups, and roles. For more information about the SCP syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _Type [PolicyType] <p>The type of policy to create.</p> <note> <p>In the current release, the only type of policy that you can create is a service control policy (SCP).</p> </note>
-- @param _Description [PolicyDescription] <p>An optional description to assign to the policy.</p>
-- @param _Name [PolicyName] <p>The friendly name to assign to the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- Required parameter: Content
-- Required parameter: Description
-- Required parameter: Name
-- Required parameter: Type
function M.CreatePolicyRequest(_Content, _Type, _Description, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePolicyRequest")
	local t = { 
		["Content"] = _Content,
		["Type"] = _Type,
		["Description"] = _Description,
		["Name"] = _Name,
	}
	asserts.AssertCreatePolicyRequest(t)
	return t
end

keys.ChildNotFoundException = { ["Message"] = true, nil }

function asserts.AssertChildNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChildNotFoundException[k], "ChildNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildNotFoundException
-- <p>We can't find an organizational unit (OU) or AWS account with the ChildId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.ChildNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertChildNotFoundException(t)
	return t
end

keys.DuplicatePolicyAttachmentException = { ["Message"] = true, nil }

function asserts.AssertDuplicatePolicyAttachmentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicatePolicyAttachmentException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicatePolicyAttachmentException[k], "DuplicatePolicyAttachmentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicatePolicyAttachmentException
-- <p>The selected policy is already attached to the specified target.</p>
-- @param _Message [ExceptionMessage] 
function M.DuplicatePolicyAttachmentException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicatePolicyAttachmentException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDuplicatePolicyAttachmentException(t)
	return t
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
-- @param _AccountId [AccountId] <p>The unique identifier (ID) of the member account that you want to remove from the organization.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
-- Required parameter: AccountId
function M.RemoveAccountFromOrganizationRequest(_AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAccountFromOrganizationRequest")
	local t = { 
		["AccountId"] = _AccountId,
	}
	asserts.AssertRemoveAccountFromOrganizationRequest(t)
	return t
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
-- @param _Name [OrganizationalUnitName] <p>The friendly name to assign to the new OU.</p>
-- @param _ParentId [ParentId] <p>The unique identifier (ID) of the parent root or OU in which you want to create the new OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required parameter: ParentId
-- Required parameter: Name
function M.CreateOrganizationalUnitRequest(_Name, _ParentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateOrganizationalUnitRequest")
	local t = { 
		["Name"] = _Name,
		["ParentId"] = _ParentId,
	}
	asserts.AssertCreateOrganizationalUnitRequest(t)
	return t
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
function M.EnableAllFeaturesRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableAllFeaturesRequest")
	local t = { 
	}
	asserts.AssertEnableAllFeaturesRequest(t)
	return t
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
-- @param _Content [PolicyContent] <p>The text content of the policy.</p>
-- @param _PolicySummary [PolicySummary] <p>A structure that contains additional details about the policy.</p>
function M.Policy(_Content, _PolicySummary, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Policy")
	local t = { 
		["Content"] = _Content,
		["PolicySummary"] = _PolicySummary,
	}
	asserts.AssertPolicy(t)
	return t
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
-- @param _Handshakes [Handshakes] <p>A list of <a>Handshake</a> objects with details about each of the handshakes that are associated with an organization.</p>
-- @param _NextToken [NextToken] <p>If present, this value indicates that there is more output available than is included in the current response. Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
function M.ListHandshakesForOrganizationResponse(_Handshakes, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHandshakesForOrganizationResponse")
	local t = { 
		["Handshakes"] = _Handshakes,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListHandshakesForOrganizationResponse(t)
	return t
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
-- @param _Account [Account] <p>A structure that contains information about the requested account.</p>
function M.DescribeAccountResponse(_Account, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountResponse")
	local t = { 
		["Account"] = _Account,
	}
	asserts.AssertDescribeAccountResponse(t)
	return t
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
-- @param _ActionType [ActionType] <p>Specifies the type of handshake action.</p> <p>If you specify <code>ActionType</code>, you cannot also specify <code>ParentHandshakeId</code>.</p>
-- @param _ParentHandshakeId [HandshakeId] <p>Specifies the parent handshake. Only used for handshake types that are a child of another type.</p> <p>If you specify <code>ParentHandshakeId</code>, you cannot also specify <code>ActionType</code>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
function M.HandshakeFilter(_ActionType, _ParentHandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeFilter")
	local t = { 
		["ActionType"] = _ActionType,
		["ParentHandshakeId"] = _ParentHandshakeId,
	}
	asserts.AssertHandshakeFilter(t)
	return t
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
-- @param _CreateAccountStatus [CreateAccountStatus] <p>A structure that contains details about the request to create an account. This response structure might not be fully populated when you first receive it because account creation is an asynchronous process. You can pass the returned CreateAccountStatus ID as a parameter to <code> <a>DescribeCreateAccountStatus</a> </code> to get status about the progress of the request at later times. </p>
function M.CreateAccountResponse(_CreateAccountStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountResponse")
	local t = { 
		["CreateAccountStatus"] = _CreateAccountStatus,
	}
	asserts.AssertCreateAccountResponse(t)
	return t
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
-- @param _Handshake [Handshake] <p>A structure that contains details about the accepted handshake.</p>
function M.AcceptHandshakeResponse(_Handshake, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AcceptHandshakeResponse")
	local t = { 
		["Handshake"] = _Handshake,
	}
	asserts.AssertAcceptHandshakeResponse(t)
	return t
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
-- @param _Filter [HandshakeFilter] <p>A filter of the handshakes that you want included in the response. The default is all types. Use the <code>ActionType</code> element to limit the output to only a specified type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake for each member account, you can specify the <code>ParentHandshakeId</code> to see only the handshakes that were generated by that parent request.</p>
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListHandshakesForOrganizationRequest(_Filter, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListHandshakesForOrganizationRequest")
	local t = { 
		["Filter"] = _Filter,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListHandshakesForOrganizationRequest(t)
	return t
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
-- @param _OrganizationalUnitId [OrganizationalUnitId] <p>The unique identifier (ID) of the organizational unit that you want details about. You can get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- Required parameter: OrganizationalUnitId
function M.DescribeOrganizationalUnitRequest(_OrganizationalUnitId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeOrganizationalUnitRequest")
	local t = { 
		["OrganizationalUnitId"] = _OrganizationalUnitId,
	}
	asserts.AssertDescribeOrganizationalUnitRequest(t)
	return t
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
-- @param _PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want details about. You can get the ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a> operations.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- Required parameter: PolicyId
function M.DescribePolicyRequest(_PolicyId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePolicyRequest")
	local t = { 
		["PolicyId"] = _PolicyId,
	}
	asserts.AssertDescribePolicyRequest(t)
	return t
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
-- @param _HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want to decline. You can get the ID from the <a>ListHandshakesForAccount</a> operation.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: HandshakeId
function M.DeclineHandshakeRequest(_HandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeclineHandshakeRequest")
	local t = { 
		["HandshakeId"] = _HandshakeId,
	}
	asserts.AssertDeclineHandshakeRequest(t)
	return t
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
-- @param _HandshakeId [HandshakeId] <p>The unique identifier (ID) of the handshake that you want information about. You can get the ID from the original call to <a>InviteAccountToOrganization</a>, or from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for handshake ID string requires "h-" followed by from 8 to 32 lower-case letters or digits.</p>
-- Required parameter: HandshakeId
function M.DescribeHandshakeRequest(_HandshakeId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeHandshakeRequest")
	local t = { 
		["HandshakeId"] = _HandshakeId,
	}
	asserts.AssertDescribeHandshakeRequest(t)
	return t
end

keys.AccessDeniedException = { ["Message"] = true, nil }

function asserts.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedException[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p>
-- @param _Message [ExceptionMessage] 
function M.AccessDeniedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertAccessDeniedException(t)
	return t
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
-- @param _FailureReason [CreateAccountFailureReason] <p>If the request failed, a description of the reason for the failure.</p> <ul> <li> <p>ACCOUNT_LIMIT_EXCEEDED: The account could not be created because you have reached the limit on the number of accounts in your organization.</p> </li> <li> <p>EMAIL_ALREADY_EXISTS: The account could not be created because another AWS account with that email address already exists.</p> </li> <li> <p>INVALID_ADDRESS: The account could not be created because the address you provided is not valid.</p> </li> <li> <p>INVALID_EMAIL: The account could not be created because the email address you provided is not valid.</p> </li> <li> <p>INTERNAL_FAILURE: The account could not be created because of an internal failure. Try again later. If the problem persists, contact Customer Support.</p> </li> </ul>
-- @param _AccountName [AccountName] <p>The account name given to the account when it was created.</p>
-- @param _State [CreateAccountState] <p>The status of the request.</p>
-- @param _RequestedTimestamp [Timestamp] <p>The date and time that the request was made for the account creation.</p>
-- @param _CompletedTimestamp [Timestamp] <p>The date and time that the account was created and the request completed.</p>
-- @param _Id [CreateAccountRequestId] <p>The unique identifier (ID) that references this request. You get this value from the response of the initial <a>CreateAccount</a> request to create the account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an create account request ID string requires "car-" followed by from 8 to 32 lower-case letters or digits.</p>
-- @param _AccountId [AccountId] <p>If the account was created successfully, the unique identifier (ID) of the new account.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12 digits.</p>
function M.CreateAccountStatus(_FailureReason, _AccountName, _State, _RequestedTimestamp, _CompletedTimestamp, _Id, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAccountStatus")
	local t = { 
		["FailureReason"] = _FailureReason,
		["AccountName"] = _AccountName,
		["State"] = _State,
		["RequestedTimestamp"] = _RequestedTimestamp,
		["CompletedTimestamp"] = _CompletedTimestamp,
		["Id"] = _Id,
		["AccountId"] = _AccountId,
	}
	asserts.AssertCreateAccountStatus(t)
	return t
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
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _PolicyId [PolicyId] <p>The unique identifier (ID) of the policy for which you want to know its attachments.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- Required parameter: PolicyId
function M.ListTargetsForPolicyRequest(_NextToken, _PolicyId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTargetsForPolicyRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["PolicyId"] = _PolicyId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListTargetsForPolicyRequest(t)
	return t
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
-- @param _PolicyTypes [PolicyTypes] <p>The types of policies that are currently enabled for the root and therefore can be attached to the root or to its OUs or accounts.</p>
-- @param _Id [RootId] <p>The unique identifier (ID) for the root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by from 4 to 32 lower-case letters or digits.</p>
-- @param _Arn [RootArn] <p>The Amazon Resource Name (ARN) of the root.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _Name [RootName] <p>The friendly name of the root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
function M.Root(_PolicyTypes, _Id, _Arn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Root")
	local t = { 
		["PolicyTypes"] = _PolicyTypes,
		["Id"] = _Id,
		["Arn"] = _Arn,
		["Name"] = _Name,
	}
	asserts.AssertRoot(t)
	return t
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
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @param _ChildId [ChildId] <p>The unique identifier (ID) of the OU or account whose parent containers you want to list. Do not specify a root.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the following:</p> <ul> <li> <p>Account: a string that consists of exactly 12 digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required parameter: ChildId
function M.ListParentsRequest(_NextToken, _MaxResults, _ChildId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListParentsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["ChildId"] = _ChildId,
	}
	asserts.AssertListParentsRequest(t)
	return t
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
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @param _ParentId [ParentId] <p>The unique identifier (ID) for the parent root or organization unit (OU) whose accounts you want to list.</p>
-- Required parameter: ParentId
function M.ListAccountsForParentRequest(_NextToken, _MaxResults, _ParentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountsForParentRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["ParentId"] = _ParentId,
	}
	asserts.AssertListAccountsForParentRequest(t)
	return t
end

keys.HandshakeNotFoundException = { ["Message"] = true, nil }

function asserts.AssertHandshakeNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HandshakeNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertExceptionMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HandshakeNotFoundException[k], "HandshakeNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HandshakeNotFoundException
-- <p>We can't find a handshake with the HandshakeId that you specified.</p>
-- @param _Message [ExceptionMessage] 
function M.HandshakeNotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HandshakeNotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertHandshakeNotFoundException(t)
	return t
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
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
-- @param _ParentId [ParentId] <p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the following:</p> <ul> <li> <p>Root: a string that begins with "r-" followed by from 4 to 32 lower-case letters or digits.</p> </li> <li> <p>Organizational unit (OU): a string that begins with "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that the OU is in) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p> </li> </ul>
-- Required parameter: ParentId
function M.ListOrganizationalUnitsForParentRequest(_NextToken, _MaxResults, _ParentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOrganizationalUnitsForParentRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["ParentId"] = _ParentId,
	}
	asserts.AssertListOrganizationalUnitsForParentRequest(t)
	return t
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
-- @param _NextToken [NextToken] <p>Use this parameter if you receive a <code>NextToken</code> response in a previous request that indicates that there is more output available. Set it to the value of the previous call's <code>NextToken</code> response to indicate where the output should continue from.</p>
-- @param _MaxResults [MaxResults] <p>(Optional) Use this to limit the number of results you want included in the response. If you do not include this parameter, it defaults to a value that is specific to the operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> response element is present and has a value (is not null). Include that value as the <code>NextToken</code> request parameter in the next call to the operation to get the next part of the results. Note that Organizations might return fewer results than the maximum even when there are more results available. You should check <code>NextToken</code> after every operation to ensure that you receive all of the results.</p>
function M.ListAccountsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAccountsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListAccountsRequest(t)
	return t
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
-- @param _Id [OrganizationalUnitId] <p>The unique identifier (ID) associated with this OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires "ou-" followed by from 4 to 32 lower-case letters or digits (the ID of the root that contains the OU) followed by a second "-" dash and from 8 to 32 additional lower-case letters or digits.</p>
-- @param _Arn [OrganizationalUnitArn] <p>The Amazon Resource Name (ARN) of this OU.</p> <p>For more information about ARNs in Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_permissions.html#orgs-permissions-arns">ARN Formats Supported by Organizations</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _Name [OrganizationalUnitName] <p>The friendly name of this OU.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
function M.OrganizationalUnit(_Id, _Arn, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OrganizationalUnit")
	local t = { 
		["Id"] = _Id,
		["Arn"] = _Arn,
		["Name"] = _Name,
	}
	asserts.AssertOrganizationalUnit(t)
	return t
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
-- @param _Content [PolicyContent] <p>If provided, the new content for the policy. The text must be correctly formatted JSON that complies with the syntax for the policy's type. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
-- @param _Description [PolicyDescription] <p>If provided, the new description for the policy.</p>
-- @param _PolicyId [PolicyId] <p>The unique identifier (ID) of the policy that you want to update.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed by from 8 to 128 lower-case letters or digits.</p>
-- @param _Name [PolicyName] <p>If provided, the new name for the policy.</p> <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that is used to validate this parameter is a string of any of the characters in the ASCII character range.</p>
-- Required parameter: PolicyId
function M.UpdatePolicyRequest(_Content, _Description, _PolicyId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePolicyRequest")
	local t = { 
		["Content"] = _Content,
		["Description"] = _Description,
		["PolicyId"] = _PolicyId,
		["Name"] = _Name,
	}
	asserts.AssertUpdatePolicyRequest(t)
	return t
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

function asserts.AssertHandshakeConstraintViolationExceptionReason(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeConstraintViolationExceptionReason to be of type 'string'")
end

--  
function M.HandshakeConstraintViolationExceptionReason(str)
	asserts.AssertHandshakeConstraintViolationExceptionReason(str)
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

function asserts.AssertExceptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionType to be of type 'string'")
end

--  
function M.ExceptionType(str)
	asserts.AssertExceptionType(str)
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

function asserts.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	asserts.AssertExceptionMessage(str)
	return str
end

function asserts.AssertInvalidInputExceptionReason(str)
	assert(str)
	assert(type(str) == "string", "Expected InvalidInputExceptionReason to be of type 'string'")
end

--  
function M.InvalidInputExceptionReason(str)
	asserts.AssertInvalidInputExceptionReason(str)
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

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
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

function asserts.AssertCreateAccountFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected CreateAccountFailureReason to be of type 'string'")
end

--  
function M.CreateAccountFailureReason(str)
	asserts.AssertCreateAccountFailureReason(str)
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

function asserts.AssertHandshakeArn(str)
	assert(str)
	assert(type(str) == "string", "Expected HandshakeArn to be of type 'string'")
end

--  
function M.HandshakeArn(str)
	asserts.AssertHandshakeArn(str)
	return str
end

function asserts.AssertConstraintViolationExceptionReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ConstraintViolationExceptionReason to be of type 'string'")
end

--  
function M.ConstraintViolationExceptionReason(str)
	asserts.AssertConstraintViolationExceptionReason(str)
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeclineHandshake
-- @param DeclineHandshakeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeclineHandshakeAsync(DeclineHandshakeRequest, cb)
	assert(DeclineHandshakeRequest, "You must provide a DeclineHandshakeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeclineHandshake",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeclineHandshakeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisablePolicyType
-- @param DisablePolicyTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisablePolicyTypeAsync(DisablePolicyTypeRequest, cb)
	assert(DisablePolicyTypeRequest, "You must provide a DisablePolicyTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DisablePolicyType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisablePolicyTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCreateAccountStatus
-- @param DescribeCreateAccountStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCreateAccountStatusAsync(DescribeCreateAccountStatusRequest, cb)
	assert(DescribeCreateAccountStatusRequest, "You must provide a DescribeCreateAccountStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeCreateAccountStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeCreateAccountStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListOrganizationalUnitsForParent
-- @param ListOrganizationalUnitsForParentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListOrganizationalUnitsForParentAsync(ListOrganizationalUnitsForParentRequest, cb)
	assert(ListOrganizationalUnitsForParentRequest, "You must provide a ListOrganizationalUnitsForParentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListOrganizationalUnitsForParent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOrganizationalUnitsForParentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOrganizationalUnit
-- @param DescribeOrganizationalUnitRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrganizationalUnitAsync(DescribeOrganizationalUnitRequest, cb)
	assert(DescribeOrganizationalUnitRequest, "You must provide a DescribeOrganizationalUnitRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeOrganizationalUnit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeOrganizationalUnitRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AcceptHandshake
-- @param AcceptHandshakeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AcceptHandshakeAsync(AcceptHandshakeRequest, cb)
	assert(AcceptHandshakeRequest, "You must provide a AcceptHandshakeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.AcceptHandshake",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AcceptHandshakeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteOrganizationalUnit
-- @param DeleteOrganizationalUnitRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteOrganizationalUnitAsync(DeleteOrganizationalUnitRequest, cb)
	assert(DeleteOrganizationalUnitRequest, "You must provide a DeleteOrganizationalUnitRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeleteOrganizationalUnit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteOrganizationalUnitRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeletePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DetachPolicy
-- @param DetachPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DetachPolicyAsync(DetachPolicyRequest, cb)
	assert(DetachPolicyRequest, "You must provide a DetachPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DetachPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DetachPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHandshakesForAccount
-- @param ListHandshakesForAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHandshakesForAccountAsync(ListHandshakesForAccountRequest, cb)
	assert(ListHandshakesForAccountRequest, "You must provide a ListHandshakesForAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListHandshakesForAccount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListHandshakesForAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveAccountFromOrganization
-- @param RemoveAccountFromOrganizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveAccountFromOrganizationAsync(RemoveAccountFromOrganizationRequest, cb)
	assert(RemoveAccountFromOrganizationRequest, "You must provide a RemoveAccountFromOrganizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.RemoveAccountFromOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveAccountFromOrganizationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnableAllFeatures
-- @param EnableAllFeaturesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableAllFeaturesAsync(EnableAllFeaturesRequest, cb)
	assert(EnableAllFeaturesRequest, "You must provide a EnableAllFeaturesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.EnableAllFeatures",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableAllFeaturesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteOrganization
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteOrganizationAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DeleteOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPoliciesForTarget
-- @param ListPoliciesForTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPoliciesForTargetAsync(ListPoliciesForTargetRequest, cb)
	assert(ListPoliciesForTargetRequest, "You must provide a ListPoliciesForTargetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListPoliciesForTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPoliciesForTargetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePolicy
-- @param DescribePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePolicyAsync(DescribePolicyRequest, cb)
	assert(DescribePolicyRequest, "You must provide a DescribePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCreateAccountStatus
-- @param ListCreateAccountStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCreateAccountStatusAsync(ListCreateAccountStatusRequest, cb)
	assert(ListCreateAccountStatusRequest, "You must provide a ListCreateAccountStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListCreateAccountStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListCreateAccountStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAccount
-- @param CreateAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAccountAsync(CreateAccountRequest, cb)
	assert(CreateAccountRequest, "You must provide a CreateAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateAccount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelHandshake
-- @param CancelHandshakeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelHandshakeAsync(CancelHandshakeRequest, cb)
	assert(CancelHandshakeRequest, "You must provide a CancelHandshakeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CancelHandshake",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelHandshakeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAccounts
-- @param ListAccountsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAccountsAsync(ListAccountsRequest, cb)
	assert(ListAccountsRequest, "You must provide a ListAccountsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListAccounts",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAccountsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AttachPolicy
-- @param AttachPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AttachPolicyAsync(AttachPolicyRequest, cb)
	assert(AttachPolicyRequest, "You must provide a AttachPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.AttachPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AttachPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- MoveAccount
-- @param MoveAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.MoveAccountAsync(MoveAccountRequest, cb)
	assert(MoveAccountRequest, "You must provide a MoveAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.MoveAccount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", MoveAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeOrganization
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeOrganizationAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListChildren
-- @param ListChildrenRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListChildrenAsync(ListChildrenRequest, cb)
	assert(ListChildrenRequest, "You must provide a ListChildrenRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListChildren",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListChildrenRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateOrganization
-- @param CreateOrganizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOrganizationAsync(CreateOrganizationRequest, cb)
	assert(CreateOrganizationRequest, "You must provide a CreateOrganizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateOrganizationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdatePolicy
-- @param UpdatePolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePolicyAsync(UpdatePolicyRequest, cb)
	assert(UpdatePolicyRequest, "You must provide a UpdatePolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.UpdatePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdatePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- LeaveOrganization
-- @param cb Callback function accepting two args: response, error_message
function M.LeaveOrganizationAsync(cb)
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.LeaveOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", {}, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateOrganizationalUnit
-- @param CreateOrganizationalUnitRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateOrganizationalUnitAsync(CreateOrganizationalUnitRequest, cb)
	assert(CreateOrganizationalUnitRequest, "You must provide a CreateOrganizationalUnitRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreateOrganizationalUnit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateOrganizationalUnitRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EnablePolicyType
-- @param EnablePolicyTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnablePolicyTypeAsync(EnablePolicyTypeRequest, cb)
	assert(EnablePolicyTypeRequest, "You must provide a EnablePolicyTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.EnablePolicyType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnablePolicyTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAccount
-- @param DescribeAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountAsync(DescribeAccountRequest, cb)
	assert(DescribeAccountRequest, "You must provide a DescribeAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeAccount",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- InviteAccountToOrganization
-- @param InviteAccountToOrganizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.InviteAccountToOrganizationAsync(InviteAccountToOrganizationRequest, cb)
	assert(InviteAccountToOrganizationRequest, "You must provide a InviteAccountToOrganizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.InviteAccountToOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", InviteAccountToOrganizationRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListPolicies",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPoliciesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAccountsForParent
-- @param ListAccountsForParentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAccountsForParentAsync(ListAccountsForParentRequest, cb)
	assert(ListAccountsForParentRequest, "You must provide a ListAccountsForParentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListAccountsForParent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAccountsForParentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeHandshake
-- @param DescribeHandshakeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeHandshakeAsync(DescribeHandshakeRequest, cb)
	assert(DescribeHandshakeRequest, "You must provide a DescribeHandshakeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.DescribeHandshake",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeHandshakeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListParents
-- @param ListParentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListParentsAsync(ListParentsRequest, cb)
	assert(ListParentsRequest, "You must provide a ListParentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListParents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListParentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateOrganizationalUnit
-- @param UpdateOrganizationalUnitRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateOrganizationalUnitAsync(UpdateOrganizationalUnitRequest, cb)
	assert(UpdateOrganizationalUnitRequest, "You must provide a UpdateOrganizationalUnitRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.UpdateOrganizationalUnit",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateOrganizationalUnitRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListHandshakesForOrganization
-- @param ListHandshakesForOrganizationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListHandshakesForOrganizationAsync(ListHandshakesForOrganizationRequest, cb)
	assert(ListHandshakesForOrganizationRequest, "You must provide a ListHandshakesForOrganizationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListHandshakesForOrganization",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListHandshakesForOrganizationRequest, headers, M.metadata, cb)
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
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.CreatePolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTargetsForPolicy
-- @param ListTargetsForPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTargetsForPolicyAsync(ListTargetsForPolicyRequest, cb)
	assert(ListTargetsForPolicyRequest, "You must provide a ListTargetsForPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListTargetsForPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTargetsForPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRoots
-- @param ListRootsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRootsAsync(ListRootsRequest, cb)
	assert(ListRootsRequest, "You must provide a ListRootsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrganizationsV20161128.ListRoots",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRootsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
