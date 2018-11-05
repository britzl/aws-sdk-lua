--- GENERATED CODE - DO NOT MODIFY
-- Amazon WorkMail (workmail-2017-10-01)

local M = {}

M.metadata = {
	api_version = "2017-10-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "workmail",
	service_abbreviation = "",
	service_full_name = "Amazon WorkMail",
	signature_version = "v4",
	target_prefix = "WorkMailService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "workmail-2017-10-01",
}

local keys = {}
local asserts = {}

keys.UnsupportedOperationException = { ["Message"] = true, nil }

function asserts.AssertUnsupportedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOperationException[k], "UnsupportedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationException
-- <p>You can't perform a write operation against a read-only directory.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return UnsupportedOperationException structure as a key-value pair table
function M.UnsupportedOperationException(args)
	assert(args, "You must provide an argument table when creating UnsupportedOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertUnsupportedOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupMembersResponse = { ["NextToken"] = true, ["Members"] = true, nil }

function asserts.AssertListGroupMembersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupMembersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Members"] then asserts.AssertMembers(struct["Members"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupMembersResponse[k], "ListGroupMembersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupMembersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
-- * Members [Members] <p>The members associated to the group.</p>
-- @return ListGroupMembersResponse structure as a key-value pair table
function M.ListGroupMembersResponse(args)
	assert(args, "You must provide an argument table when creating ListGroupMembersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Members"] = args["Members"],
	}
	asserts.AssertListGroupMembersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateResourceRequest = { ["OrganizationId"] = true, ["Type"] = true, ["Name"] = true, nil }

function asserts.AssertCreateResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["Type"] then asserts.AssertResourceType(struct["Type"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResourceRequest[k], "CreateResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier associated with the organization for which the resource is created.</p>
-- * Type [ResourceType] <p>The type of the created resource.</p>
-- * Name [ResourceName] <p>The name of the created resource.</p>
-- Required key: OrganizationId
-- Required key: Name
-- Required key: Type
-- @return CreateResourceRequest structure as a key-value pair table
function M.CreateResourceRequest(args)
	assert(args, "You must provide an argument table when creating CreateResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserRequest = { ["OrganizationId"] = true, ["UserId"] = true, nil }

function asserts.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["UserId"] then asserts.AssertWorkMailIdentifier(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserRequest[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The organization that contains the user.</p>
-- * UserId [WorkMailIdentifier] <p>The identifier of the user to be deleted.</p>
-- Required key: OrganizationId
-- Required key: UserId
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
		["OrganizationId"] = args["OrganizationId"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertDeleteUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDelegateFromResourceRequest = { ["OrganizationId"] = true, ["ResourceId"] = true, ["EntityId"] = true, nil }

function asserts.AssertDisassociateDelegateFromResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDelegateFromResourceRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDelegateFromResourceRequest[k], "DisassociateDelegateFromResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDelegateFromResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the resource exists.</p>
-- * ResourceId [ResourceId] <p>The identifier of the resource from which delegates' set members are removed. </p>
-- * EntityId [WorkMailIdentifier] <p>The identifier for the member (user, group) to be removed from the resource's delegates.</p>
-- Required key: OrganizationId
-- Required key: ResourceId
-- Required key: EntityId
-- @return DisassociateDelegateFromResourceRequest structure as a key-value pair table
function M.DisassociateDelegateFromResourceRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateDelegateFromResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["ResourceId"] = args["ResourceId"],
		["EntityId"] = args["EntityId"],
	}
	asserts.AssertDisassociateDelegateFromResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAliasesResponse = { ["NextToken"] = true, ["Aliases"] = true, nil }

function asserts.AssertListAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Aliases"] then asserts.AssertAliases(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesResponse[k], "ListAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.</p>
-- * Aliases [Aliases] <p>The entity's paginated aliases.</p>
-- @return ListAliasesResponse structure as a key-value pair table
function M.ListAliasesResponse(args)
	assert(args, "You must provide an argument table when creating ListAliasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Aliases"] = args["Aliases"],
	}
	asserts.AssertListAliasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserResponse = { nil }

function asserts.AssertDeleteUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserResponse[k], "DeleteUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteUserResponse structure as a key-value pair table
function M.DeleteUserResponse(args)
	assert(args, "You must provide an argument table when creating DeleteUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DirectoryUnavailableException = { ["Message"] = true, nil }

function asserts.AssertDirectoryUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryUnavailableException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryUnavailableException[k], "DirectoryUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryUnavailableException
-- <p>The directory that you are trying to perform operations on isn't available.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return DirectoryUnavailableException structure as a key-value pair table
function M.DirectoryUnavailableException(args)
	assert(args, "You must provide an argument table when creating DirectoryUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDirectoryUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidParameterException = { ["Message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>One or more of the input parameters don't match the service's restrictions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePrimaryEmailAddressResponse = { nil }

function asserts.AssertUpdatePrimaryEmailAddressResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePrimaryEmailAddressResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdatePrimaryEmailAddressResponse[k], "UpdatePrimaryEmailAddressResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePrimaryEmailAddressResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdatePrimaryEmailAddressResponse structure as a key-value pair table
function M.UpdatePrimaryEmailAddressResponse(args)
	assert(args, "You must provide an argument table when creating UpdatePrimaryEmailAddressResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdatePrimaryEmailAddressResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGroupRequest = { ["OrganizationId"] = true, ["Name"] = true, nil }

function asserts.AssertCreateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["Name"] then asserts.AssertGroupName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupRequest[k], "CreateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The organization under which the group is to be created.</p>
-- * Name [GroupName] <p>The name of the group.</p>
-- Required key: OrganizationId
-- Required key: Name
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
		["OrganizationId"] = args["OrganizationId"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersResponse = { ["NextToken"] = true, ["Users"] = true, nil }

function asserts.AssertListUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Users"] then asserts.AssertUsers(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersResponse[k], "ListUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p> The token to use to retrieve the next page of results. This value is `null` when there are no more results to return.</p>
-- * Users [Users] <p>The overview of users for an organization.</p>
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
		["NextToken"] = args["NextToken"],
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

keys.DisassociateMemberFromGroupRequest = { ["OrganizationId"] = true, ["GroupId"] = true, ["MemberId"] = true, nil }

function asserts.AssertDisassociateMemberFromGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateMemberFromGroupRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["MemberId"], "Expected key MemberId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["GroupId"] then asserts.AssertWorkMailIdentifier(struct["GroupId"]) end
	if struct["MemberId"] then asserts.AssertWorkMailIdentifier(struct["MemberId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateMemberFromGroupRequest[k], "DisassociateMemberFromGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateMemberFromGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the group exists.</p>
-- * GroupId [WorkMailIdentifier] <p>The identifier for the group from which members are removed.</p>
-- * MemberId [WorkMailIdentifier] <p>The identifier for the member to be removed to the group.</p>
-- Required key: OrganizationId
-- Required key: GroupId
-- Required key: MemberId
-- @return DisassociateMemberFromGroupRequest structure as a key-value pair table
function M.DisassociateMemberFromGroupRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateMemberFromGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["GroupId"] = args["GroupId"],
		["MemberId"] = args["MemberId"],
	}
	asserts.AssertDisassociateMemberFromGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EntityAlreadyRegisteredException = { ["Message"] = true, nil }

function asserts.AssertEntityAlreadyRegisteredException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAlreadyRegisteredException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityAlreadyRegisteredException[k], "EntityAlreadyRegisteredException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAlreadyRegisteredException
-- <p>The user, group, or resource that you're trying to register is already registered.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return EntityAlreadyRegisteredException structure as a key-value pair table
function M.EntityAlreadyRegisteredException(args)
	assert(args, "You must provide an argument table when creating EntityAlreadyRegisteredException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertEntityAlreadyRegisteredException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrganizationResponse = { ["DirectoryId"] = true, ["OrganizationId"] = true, ["ErrorMessage"] = true, ["DefaultMailDomain"] = true, ["Alias"] = true, ["State"] = true, ["DirectoryType"] = true, ["CompletedDate"] = true, nil }

function asserts.AssertDescribeOrganizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrganizationResponse to be of type 'table'")
	if struct["DirectoryId"] then asserts.AssertString(struct["DirectoryId"]) end
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["ErrorMessage"] then asserts.AssertString(struct["ErrorMessage"]) end
	if struct["DefaultMailDomain"] then asserts.AssertString(struct["DefaultMailDomain"]) end
	if struct["Alias"] then asserts.AssertOrganizationName(struct["Alias"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["DirectoryType"] then asserts.AssertString(struct["DirectoryType"]) end
	if struct["CompletedDate"] then asserts.AssertTimestamp(struct["CompletedDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrganizationResponse[k], "DescribeOrganizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrganizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [String] <p>The identifier for the directory associated with an Amazon WorkMail organization.</p>
-- * OrganizationId [OrganizationId] <p>The identifier of an organization.</p>
-- * ErrorMessage [String] <p>The (optional) error message indicating if unexpected behavior was encountered with regards to the organization.</p>
-- * DefaultMailDomain [String] <p>The default mail domain associated with the organization.</p>
-- * Alias [OrganizationName] <p>The alias for an organization.</p>
-- * State [String] <p>The state of an organization.</p>
-- * DirectoryType [String] <p>The type of directory associated with the Amazon WorkMail organization.</p>
-- * CompletedDate [Timestamp] <p>The date at which the organization became usable in the Amazon WorkMail context, in UNIX epoch time format.</p>
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
		["DirectoryId"] = args["DirectoryId"],
		["OrganizationId"] = args["OrganizationId"],
		["ErrorMessage"] = args["ErrorMessage"],
		["DefaultMailDomain"] = args["DefaultMailDomain"],
		["Alias"] = args["Alias"],
		["State"] = args["State"],
		["DirectoryType"] = args["DirectoryType"],
		["CompletedDate"] = args["CompletedDate"],
	}
	asserts.AssertDescribeOrganizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BookingOptions = { ["AutoDeclineConflictingRequests"] = true, ["AutoDeclineRecurringRequests"] = true, ["AutoAcceptRequests"] = true, nil }

function asserts.AssertBookingOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BookingOptions to be of type 'table'")
	if struct["AutoDeclineConflictingRequests"] then asserts.AssertBoolean(struct["AutoDeclineConflictingRequests"]) end
	if struct["AutoDeclineRecurringRequests"] then asserts.AssertBoolean(struct["AutoDeclineRecurringRequests"]) end
	if struct["AutoAcceptRequests"] then asserts.AssertBoolean(struct["AutoAcceptRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.BookingOptions[k], "BookingOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BookingOptions
-- <p>At least one delegate must be associated to the resource to disable automatic replies from the resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutoDeclineConflictingRequests [Boolean] <p>The resource's ability to automatically decline any conflicting requests.</p>
-- * AutoDeclineRecurringRequests [Boolean] <p>The resource's ability to automatically decline any recurring requests.</p>
-- * AutoAcceptRequests [Boolean] <p>The resource's ability to automatically reply to requests. If disabled, delegates must be associated to the resource.</p>
-- @return BookingOptions structure as a key-value pair table
function M.BookingOptions(args)
	assert(args, "You must provide an argument table when creating BookingOptions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AutoDeclineConflictingRequests"] = args["AutoDeclineConflictingRequests"],
		["AutoDeclineRecurringRequests"] = args["AutoDeclineRecurringRequests"],
		["AutoAcceptRequests"] = args["AutoAcceptRequests"],
	}
	asserts.AssertBookingOptions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EntityNotFoundException = { ["Message"] = true, nil }

function asserts.AssertEntityNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityNotFoundException[k], "EntityNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityNotFoundException
-- <p>The identifier supplied for the entity is valid, but it does not exist in your organization.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return EntityNotFoundException structure as a key-value pair table
function M.EntityNotFoundException(args)
	assert(args, "You must provide an argument table when creating EntityNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertEntityNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDelegateFromResourceResponse = { nil }

function asserts.AssertDisassociateDelegateFromResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDelegateFromResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDelegateFromResourceResponse[k], "DisassociateDelegateFromResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDelegateFromResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateDelegateFromResourceResponse structure as a key-value pair table
function M.DisassociateDelegateFromResourceResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateDelegateFromResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateDelegateFromResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourceDelegatesResponse = { ["NextToken"] = true, ["Delegates"] = true, nil }

function asserts.AssertListResourceDelegatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceDelegatesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Delegates"] then asserts.AssertResourceDelegates(struct["Delegates"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceDelegatesResponse[k], "ListResourceDelegatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceDelegatesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token used to paginate through the delegates associated with a resource. While results are still available, it has an associated value. When the last page is reached, the token is empty. </p>
-- * Delegates [ResourceDelegates] <p>One page of the resource's delegates.</p>
-- @return ListResourceDelegatesResponse structure as a key-value pair table
function M.ListResourceDelegatesResponse(args)
	assert(args, "You must provide an argument table when creating ListResourceDelegatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Delegates"] = args["Delegates"],
	}
	asserts.AssertListResourceDelegatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupsRequest = { ["OrganizationId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsRequest[k], "ListGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the groups exist.</p>
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return in a single call.</p>
-- Required key: OrganizationId
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
		["OrganizationId"] = args["OrganizationId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResourceResponse = { nil }

function asserts.AssertDeleteResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourceResponse[k], "DeleteResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteResourceResponse structure as a key-value pair table
function M.DeleteResourceResponse(args)
	assert(args, "You must provide an argument table when creating DeleteResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MailDomainNotFoundException = { ["Message"] = true, nil }

function asserts.AssertMailDomainNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MailDomainNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MailDomainNotFoundException[k], "MailDomainNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MailDomainNotFoundException
-- <p>For an email or alias to be created in Amazon WorkMail, the included domain must be defined in the organization.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return MailDomainNotFoundException structure as a key-value pair table
function M.MailDomainNotFoundException(args)
	assert(args, "You must provide an argument table when creating MailDomainNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertMailDomainNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrganizationStateException = { ["Message"] = true, nil }

function asserts.AssertOrganizationStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationStateException[k], "OrganizationStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationStateException
-- <p>The organization must have a valid state (Active or Synchronizing) to perform certain operations on the organization or its entities.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return OrganizationStateException structure as a key-value pair table
function M.OrganizationStateException(args)
	assert(args, "You must provide an argument table when creating OrganizationStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertOrganizationStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePrimaryEmailAddressRequest = { ["OrganizationId"] = true, ["EntityId"] = true, ["Email"] = true, nil }

function asserts.AssertUpdatePrimaryEmailAddressRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePrimaryEmailAddressRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	assert(struct["Email"], "Expected key Email to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	if struct["Email"] then asserts.AssertEmailAddress(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePrimaryEmailAddressRequest[k], "UpdatePrimaryEmailAddressRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePrimaryEmailAddressRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The organization that contains the entity to update.</p>
-- * EntityId [WorkMailIdentifier] <p>The entity to update (user, group, or resource).</p>
-- * Email [EmailAddress] <p>The value of the email to be updated as primary.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- Required key: Email
-- @return UpdatePrimaryEmailAddressRequest structure as a key-value pair table
function M.UpdatePrimaryEmailAddressRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePrimaryEmailAddressRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["EntityId"] = args["EntityId"],
		["Email"] = args["Email"],
	}
	asserts.AssertUpdatePrimaryEmailAddressRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDelegateToResourceRequest = { ["OrganizationId"] = true, ["ResourceId"] = true, ["EntityId"] = true, nil }

function asserts.AssertAssociateDelegateToResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDelegateToResourceRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateDelegateToResourceRequest[k], "AssociateDelegateToResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDelegateToResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The organization under which the resource exists.</p>
-- * ResourceId [ResourceId] <p>The resource for which members are associated.</p>
-- * EntityId [WorkMailIdentifier] <p>The member (user or group) to associate to the resource.</p>
-- Required key: OrganizationId
-- Required key: ResourceId
-- Required key: EntityId
-- @return AssociateDelegateToResourceRequest structure as a key-value pair table
function M.AssociateDelegateToResourceRequest(args)
	assert(args, "You must provide an argument table when creating AssociateDelegateToResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["ResourceId"] = args["ResourceId"],
		["EntityId"] = args["EntityId"],
	}
	asserts.AssertAssociateDelegateToResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeGroupResponse = { ["Name"] = true, ["GroupId"] = true, ["State"] = true, ["EnabledDate"] = true, ["DisabledDate"] = true, ["Email"] = true, nil }

function asserts.AssertDescribeGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGroupResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertGroupName(struct["Name"]) end
	if struct["GroupId"] then asserts.AssertWorkMailIdentifier(struct["GroupId"]) end
	if struct["State"] then asserts.AssertEntityState(struct["State"]) end
	if struct["EnabledDate"] then asserts.AssertTimestamp(struct["EnabledDate"]) end
	if struct["DisabledDate"] then asserts.AssertTimestamp(struct["DisabledDate"]) end
	if struct["Email"] then asserts.AssertEmailAddress(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGroupResponse[k], "DescribeGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [GroupName] <p>The name of the described group.</p>
-- * GroupId [WorkMailIdentifier] <p>The identifier of the described group.</p>
-- * State [EntityState] <p>The state of the user: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to Amazon WorkMail).</p>
-- * EnabledDate [Timestamp] <p>The date and time when a user was registered to Amazon WorkMail, in UNIX epoch time format.</p>
-- * DisabledDate [Timestamp] <p>The date and time when a user was deregistered from Amazon WorkMail, in UNIX epoch time format.</p>
-- * Email [EmailAddress] <p>The email of the described group.</p>
-- @return DescribeGroupResponse structure as a key-value pair table
function M.DescribeGroupResponse(args)
	assert(args, "You must provide an argument table when creating DescribeGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["GroupId"] = args["GroupId"],
		["State"] = args["State"],
		["EnabledDate"] = args["EnabledDate"],
		["DisabledDate"] = args["DisabledDate"],
		["Email"] = args["Email"],
	}
	asserts.AssertDescribeGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAliasRequest = { ["OrganizationId"] = true, ["Alias"] = true, ["EntityId"] = true, nil }

function asserts.AssertDeleteAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	assert(struct["Alias"], "Expected key Alias to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["Alias"] then asserts.AssertEmailAddress(struct["Alias"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAliasRequest[k], "DeleteAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the user exists.</p>
-- * Alias [EmailAddress] <p>The aliases to be removed from the user's set of aliases. Duplicate entries in the list are collapsed into single entries (the list is transformed into a set).</p>
-- * EntityId [WorkMailIdentifier] <p>The identifier for the Amazon WorkMail entity to have the aliases removed.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- Required key: Alias
-- @return DeleteAliasRequest structure as a key-value pair table
function M.DeleteAliasRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["Alias"] = args["Alias"],
		["EntityId"] = args["EntityId"],
	}
	asserts.AssertDeleteAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Resource = { ["Name"] = true, ["Email"] = true, ["State"] = true, ["EnabledDate"] = true, ["DisabledDate"] = true, ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["Email"] then asserts.AssertEmailAddress(struct["Email"]) end
	if struct["State"] then asserts.AssertEntityState(struct["State"]) end
	if struct["EnabledDate"] then asserts.AssertTimestamp(struct["EnabledDate"]) end
	if struct["DisabledDate"] then asserts.AssertTimestamp(struct["DisabledDate"]) end
	if struct["Type"] then asserts.AssertResourceType(struct["Type"]) end
	if struct["Id"] then asserts.AssertWorkMailIdentifier(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resource[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p>The overview for a resource containing relevant data regarding it.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceName] <p>The name of the resource.</p>
-- * Email [EmailAddress] <p>The email of the resource.</p>
-- * State [EntityState] <p>The state of the resource, which can be ENABLED, DISABLED, or DELETED.</p>
-- * EnabledDate [Timestamp] <p>The date indicating when the resource was enabled for Amazon WorkMail use.</p>
-- * DisabledDate [Timestamp] <p>The date indicating when the resource was disabled from Amazon WorkMail use.</p>
-- * Type [ResourceType] <p>The type of the resource: equipment or room.</p>
-- * Id [WorkMailIdentifier] <p>The identifier of the resource.</p>
-- @return Resource structure as a key-value pair table
function M.Resource(args)
	assert(args, "You must provide an argument table when creating Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Email"] = args["Email"],
		["State"] = args["State"],
		["EnabledDate"] = args["EnabledDate"],
		["DisabledDate"] = args["DisabledDate"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOrganizationRequest = { ["OrganizationId"] = true, nil }

function asserts.AssertDescribeOrganizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOrganizationRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOrganizationRequest[k], "DescribeOrganizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOrganizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization to be described.</p>
-- Required key: OrganizationId
-- @return DescribeOrganizationRequest structure as a key-value pair table
function M.DescribeOrganizationRequest(args)
	assert(args, "You must provide an argument table when creating DescribeOrganizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
	}
	asserts.AssertDescribeOrganizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserResponse = { ["UserId"] = true, nil }

function asserts.AssertCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResponse to be of type 'table'")
	if struct["UserId"] then asserts.AssertWorkMailIdentifier(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserResponse[k], "CreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [WorkMailIdentifier] <p>The information regarding the newly created user.</p>
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
		["UserId"] = args["UserId"],
	}
	asserts.AssertCreateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGroupRequest = { ["OrganizationId"] = true, ["GroupId"] = true, nil }

function asserts.AssertDeleteGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["GroupId"] then asserts.AssertWorkMailIdentifier(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGroupRequest[k], "DeleteGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The organization that contains the group.</p>
-- * GroupId [WorkMailIdentifier] <p>The identifier of the group to be deleted.</p>
-- Required key: OrganizationId
-- Required key: GroupId
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
		["OrganizationId"] = args["OrganizationId"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertDeleteGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservedNameException = { ["Message"] = true, nil }

function asserts.AssertReservedNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservedNameException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservedNameException[k], "ReservedNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservedNameException
-- <p>This entity name is not allowed in Amazon WorkMail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return ReservedNameException structure as a key-value pair table
function M.ReservedNameException(args)
	assert(args, "You must provide an argument table when creating ReservedNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertReservedNameException(all_args)
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
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Groups"] then asserts.AssertGroups(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsResponse[k], "ListGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.</p>
-- * Groups [Groups] <p>The overview of groups for an organization.</p>
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

keys.RegisterToWorkMailRequest = { ["OrganizationId"] = true, ["EntityId"] = true, ["Email"] = true, nil }

function asserts.AssertRegisterToWorkMailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterToWorkMailRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	assert(struct["Email"], "Expected key Email to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	if struct["Email"] then asserts.AssertEmailAddress(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterToWorkMailRequest[k], "RegisterToWorkMailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterToWorkMailRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the Amazon WorkMail entity exists.</p>
-- * EntityId [WorkMailIdentifier] <p>The identifier for the entity to be updated.</p>
-- * Email [EmailAddress] <p>The email for the entity to be updated.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- Required key: Email
-- @return RegisterToWorkMailRequest structure as a key-value pair table
function M.RegisterToWorkMailRequest(args)
	assert(args, "You must provide an argument table when creating RegisterToWorkMailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["EntityId"] = args["EntityId"],
		["Email"] = args["Email"],
	}
	asserts.AssertRegisterToWorkMailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrganizationNotFoundException = { ["Message"] = true, nil }

function asserts.AssertOrganizationNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationNotFoundException[k], "OrganizationNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationNotFoundException
-- <p>An operation received a valid organization identifier that either doesn't belong or exist in the system.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return OrganizationNotFoundException structure as a key-value pair table
function M.OrganizationNotFoundException(args)
	assert(args, "You must provide an argument table when creating OrganizationNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertOrganizationNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOrganizationsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListOrganizationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOrganizationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOrganizationsRequest[k], "ListOrganizationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOrganizationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return in a single call.</p>
-- @return ListOrganizationsRequest structure as a key-value pair table
function M.ListOrganizationsRequest(args)
	assert(args, "You must provide an argument table when creating ListOrganizationsRequest")
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
	asserts.AssertListOrganizationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Delegate = { ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertDelegate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Delegate to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertMemberType(struct["Type"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Delegate[k], "Delegate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Delegate
-- <p>The name of the attribute, which is one of the values defined in the UserAttribute enumeration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [MemberType] <p>The type of the delegate: user or group.</p>
-- * Id [String] <p>The identifier for the user or group is associated as the resource's delegate.</p>
-- Required key: Id
-- Required key: Type
-- @return Delegate structure as a key-value pair table
function M.Delegate(args)
	assert(args, "You must provide an argument table when creating Delegate")
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
	asserts.AssertDelegate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateResourceResponse = { ["ResourceId"] = true, nil }

function asserts.AssertCreateResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceResponse to be of type 'table'")
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResourceResponse[k], "CreateResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [ResourceId] <p>The identifier of the created resource.</p>
-- @return CreateResourceResponse structure as a key-value pair table
function M.CreateResourceResponse(args)
	assert(args, "You must provide an argument table when creating CreateResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertCreateResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeResourceRequest = { ["OrganizationId"] = true, ["ResourceId"] = true, nil }

function asserts.AssertDescribeResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourceRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourceRequest[k], "DescribeResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier associated with the organization for which the resource is described.</p>
-- * ResourceId [ResourceId] <p>The identifier of the resource to be described.</p>
-- Required key: OrganizationId
-- Required key: ResourceId
-- @return DescribeResourceRequest structure as a key-value pair table
function M.DescribeResourceRequest(args)
	assert(args, "You must provide an argument table when creating DescribeResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertDescribeResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourceDelegatesRequest = { ["OrganizationId"] = true, ["ResourceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListResourceDelegatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourceDelegatesRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["ResourceId"] then asserts.AssertWorkMailIdentifier(struct["ResourceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourceDelegatesRequest[k], "ListResourceDelegatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourceDelegatesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization that contains the resource for which delegates are listed.</p>
-- * ResourceId [WorkMailIdentifier] <p>The identifier for the resource whose delegates are listed.</p>
-- * NextToken [NextToken] <p>The token used to paginate through the delegates associated with a resource.</p>
-- * MaxResults [MaxResults] <p>The number of maximum results in a page.</p>
-- Required key: OrganizationId
-- Required key: ResourceId
-- @return ListResourceDelegatesRequest structure as a key-value pair table
function M.ListResourceDelegatesRequest(args)
	assert(args, "You must provide an argument table when creating ListResourceDelegatesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["ResourceId"] = args["ResourceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListResourceDelegatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMailboxPermissionsResponse = { ["NextToken"] = true, ["Permissions"] = true, nil }

function asserts.AssertListMailboxPermissionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMailboxPermissionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Permissions"] then asserts.AssertPermissions(struct["Permissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMailboxPermissionsResponse[k], "ListMailboxPermissionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMailboxPermissionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.</p>
-- * Permissions [Permissions] <p>One page of the entity's mailbox permissions.</p>
-- @return ListMailboxPermissionsResponse structure as a key-value pair table
function M.ListMailboxPermissionsResponse(args)
	assert(args, "You must provide an argument table when creating ListMailboxPermissionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Permissions"] = args["Permissions"],
	}
	asserts.AssertListMailboxPermissionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterFromWorkMailResponse = { nil }

function asserts.AssertDeregisterFromWorkMailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterFromWorkMailResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeregisterFromWorkMailResponse[k], "DeregisterFromWorkMailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterFromWorkMailResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeregisterFromWorkMailResponse structure as a key-value pair table
function M.DeregisterFromWorkMailResponse(args)
	assert(args, "You must provide an argument table when creating DeregisterFromWorkMailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeregisterFromWorkMailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAliasResponse = { nil }

function asserts.AssertCreateAliasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasResponse[k], "CreateAliasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateAliasResponse structure as a key-value pair table
function M.CreateAliasResponse(args)
	assert(args, "You must provide an argument table when creating CreateAliasResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateAliasResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserResponse = { ["DisplayName"] = true, ["Name"] = true, ["UserId"] = true, ["State"] = true, ["EnabledDate"] = true, ["UserRole"] = true, ["DisabledDate"] = true, ["Email"] = true, nil }

function asserts.AssertDescribeUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserResponse to be of type 'table'")
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertUserName(struct["Name"]) end
	if struct["UserId"] then asserts.AssertWorkMailIdentifier(struct["UserId"]) end
	if struct["State"] then asserts.AssertEntityState(struct["State"]) end
	if struct["EnabledDate"] then asserts.AssertTimestamp(struct["EnabledDate"]) end
	if struct["UserRole"] then asserts.AssertUserRole(struct["UserRole"]) end
	if struct["DisabledDate"] then asserts.AssertTimestamp(struct["DisabledDate"]) end
	if struct["Email"] then asserts.AssertEmailAddress(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserResponse[k], "DescribeUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [String] <p>The display name of the user.</p>
-- * Name [UserName] <p>The name for the user.</p>
-- * UserId [WorkMailIdentifier] <p>The identifier for the described user.</p>
-- * State [EntityState] <p>The state of a user: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to Amazon WorkMail).</p>
-- * EnabledDate [Timestamp] <p>The date and time at which the user was enabled for Amazon WorkMail usage, in UNIX epoch time format.</p>
-- * UserRole [UserRole] <p>In certain cases other entities are modeled as users. If interoperability is enabled, resources are imported into Amazon WorkMail as users. Because different Amazon WorkMail organizations rely on different directory types, administrators can distinguish between a user that is not registered to Amazon WorkMail (is disabled and has a user role) and the administrative users of the directory. The values are USER, RESOURCE, and SYSTEM_USER.</p>
-- * DisabledDate [Timestamp] <p>The date and time at which the user was disabled for Amazon WorkMail usage, in UNIX epoch time format.</p>
-- * Email [EmailAddress] <p>The email of the user.</p>
-- @return DescribeUserResponse structure as a key-value pair table
function M.DescribeUserResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUserResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
		["UserId"] = args["UserId"],
		["State"] = args["State"],
		["EnabledDate"] = args["EnabledDate"],
		["UserRole"] = args["UserRole"],
		["DisabledDate"] = args["DisabledDate"],
		["Email"] = args["Email"],
	}
	asserts.AssertDescribeUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Group = { ["Name"] = true, ["Email"] = true, ["State"] = true, ["EnabledDate"] = true, ["DisabledDate"] = true, ["Id"] = true, nil }

function asserts.AssertGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Group to be of type 'table'")
	if struct["Name"] then asserts.AssertGroupName(struct["Name"]) end
	if struct["Email"] then asserts.AssertEmailAddress(struct["Email"]) end
	if struct["State"] then asserts.AssertEntityState(struct["State"]) end
	if struct["EnabledDate"] then asserts.AssertTimestamp(struct["EnabledDate"]) end
	if struct["DisabledDate"] then asserts.AssertTimestamp(struct["DisabledDate"]) end
	if struct["Id"] then asserts.AssertWorkMailIdentifier(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Group[k], "Group contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Group
-- <p>The representation of an Amazon WorkMail group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [GroupName] <p>The name of the group.</p>
-- * Email [EmailAddress] <p>The email of the group.</p>
-- * State [EntityState] <p>The state of the group, which can be ENABLED, DISABLED, or DELETED.</p>
-- * EnabledDate [Timestamp] <p>The date indicating when the group was enabled for Amazon WorkMail use.</p>
-- * DisabledDate [Timestamp] <p>The date indicating when the group was disabled from Amazon WorkMail use.</p>
-- * Id [WorkMailIdentifier] <p>The identifier of the group.</p>
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
		["Name"] = args["Name"],
		["Email"] = args["Email"],
		["State"] = args["State"],
		["EnabledDate"] = args["EnabledDate"],
		["DisabledDate"] = args["DisabledDate"],
		["Id"] = args["Id"],
	}
	asserts.AssertGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MailDomainStateException = { ["Message"] = true, nil }

function asserts.AssertMailDomainStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MailDomainStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MailDomainStateException[k], "MailDomainStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MailDomainStateException
-- <p>After a domain has been added to the organization, it must be verified. The domain is not yet verified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return MailDomainStateException structure as a key-value pair table
function M.MailDomainStateException(args)
	assert(args, "You must provide an argument table when creating MailDomainStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertMailDomainStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAliasResponse = { nil }

function asserts.AssertDeleteAliasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAliasResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteAliasResponse[k], "DeleteAliasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAliasResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteAliasResponse structure as a key-value pair table
function M.DeleteAliasResponse(args)
	assert(args, "You must provide an argument table when creating DeleteAliasResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteAliasResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserRequest = { ["OrganizationId"] = true, ["UserId"] = true, nil }

function asserts.AssertDescribeUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["UserId"] then asserts.AssertWorkMailIdentifier(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserRequest[k], "DescribeUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the user exists.</p>
-- * UserId [WorkMailIdentifier] <p>The identifier for the user to be described.</p>
-- Required key: OrganizationId
-- Required key: UserId
-- @return DescribeUserRequest structure as a key-value pair table
function M.DescribeUserRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertDescribeUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Member = { ["Name"] = true, ["State"] = true, ["EnabledDate"] = true, ["DisabledDate"] = true, ["Type"] = true, ["Id"] = true, nil }

function asserts.AssertMember(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Member to be of type 'table'")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["State"] then asserts.AssertEntityState(struct["State"]) end
	if struct["EnabledDate"] then asserts.AssertTimestamp(struct["EnabledDate"]) end
	if struct["DisabledDate"] then asserts.AssertTimestamp(struct["DisabledDate"]) end
	if struct["Type"] then asserts.AssertMemberType(struct["Type"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Member[k], "Member contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Member
-- <p>The representation of a group member (user or group).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>The name of the member.</p>
-- * State [EntityState] <p>The state of the member, which can be ENABLED, DISABLED, or DELETED.</p>
-- * EnabledDate [Timestamp] <p>The date indicating when the member was enabled for Amazon WorkMail use.</p>
-- * DisabledDate [Timestamp] <p>The date indicating when the member was disabled from Amazon WorkMail use.</p>
-- * Type [MemberType] <p>A member can be a user or group.</p>
-- * Id [String] <p>The identifier of the member.</p>
-- @return Member structure as a key-value pair table
function M.Member(args)
	assert(args, "You must provide an argument table when creating Member")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["State"] = args["State"],
		["EnabledDate"] = args["EnabledDate"],
		["DisabledDate"] = args["DisabledDate"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
	}
	asserts.AssertMember(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetPasswordRequest = { ["OrganizationId"] = true, ["Password"] = true, ["UserId"] = true, nil }

function asserts.AssertResetPasswordRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetPasswordRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["UserId"] then asserts.AssertWorkMailIdentifier(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetPasswordRequest[k], "ResetPasswordRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetPasswordRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier of the organization that contains the user for which the password is reset.</p>
-- * Password [Password] <p>The new password for the user.</p>
-- * UserId [WorkMailIdentifier] <p>The identifier of the user for whom the password is reset.</p>
-- Required key: OrganizationId
-- Required key: UserId
-- Required key: Password
-- @return ResetPasswordRequest structure as a key-value pair table
function M.ResetPasswordRequest(args)
	assert(args, "You must provide an argument table when creating ResetPasswordRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["Password"] = args["Password"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertResetPasswordRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateMemberToGroupResponse = { nil }

function asserts.AssertAssociateMemberToGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateMemberToGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateMemberToGroupResponse[k], "AssociateMemberToGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateMemberToGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateMemberToGroupResponse structure as a key-value pair table
function M.AssociateMemberToGroupResponse(args)
	assert(args, "You must provide an argument table when creating AssociateMemberToGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateMemberToGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAliasRequest = { ["OrganizationId"] = true, ["Alias"] = true, ["EntityId"] = true, nil }

function asserts.AssertCreateAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAliasRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	assert(struct["Alias"], "Expected key Alias to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["Alias"] then asserts.AssertEmailAddress(struct["Alias"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAliasRequest[k], "CreateAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The organization under which the member exists.</p>
-- * Alias [EmailAddress] <p>The alias to add to the user.</p>
-- * EntityId [WorkMailIdentifier] <p>The alias is added to this Amazon WorkMail entity.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- Required key: Alias
-- @return CreateAliasRequest structure as a key-value pair table
function M.CreateAliasRequest(args)
	assert(args, "You must provide an argument table when creating CreateAliasRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["Alias"] = args["Alias"],
		["EntityId"] = args["EntityId"],
	}
	asserts.AssertCreateAliasRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.User = { ["DisplayName"] = true, ["Name"] = true, ["Email"] = true, ["State"] = true, ["EnabledDate"] = true, ["UserRole"] = true, ["DisabledDate"] = true, ["Id"] = true, nil }

function asserts.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertUserName(struct["Name"]) end
	if struct["Email"] then asserts.AssertEmailAddress(struct["Email"]) end
	if struct["State"] then asserts.AssertEntityState(struct["State"]) end
	if struct["EnabledDate"] then asserts.AssertTimestamp(struct["EnabledDate"]) end
	if struct["UserRole"] then asserts.AssertUserRole(struct["UserRole"]) end
	if struct["DisabledDate"] then asserts.AssertTimestamp(struct["DisabledDate"]) end
	if struct["Id"] then asserts.AssertWorkMailIdentifier(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.User[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- <p>The representation of an Amazon WorkMail user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisplayName [String] <p>The display name of the user.</p>
-- * Name [UserName] <p>The name of the user.</p>
-- * Email [EmailAddress] <p>The email of the user.</p>
-- * State [EntityState] <p>The state of the user, which can be ENABLED, DISABLED, or DELETED.</p>
-- * EnabledDate [Timestamp] <p>The date indicating when the user was enabled for Amazon WorkMail use.</p>
-- * UserRole [UserRole] <p>The role of the user.</p>
-- * DisabledDate [Timestamp] <p>The date indicating when the user was disabled from Amazon WorkMail use.</p>
-- * Id [WorkMailIdentifier] <p>The identifier of the user.</p>
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
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
		["Email"] = args["Email"],
		["State"] = args["State"],
		["EnabledDate"] = args["EnabledDate"],
		["UserRole"] = args["UserRole"],
		["DisabledDate"] = args["DisabledDate"],
		["Id"] = args["Id"],
	}
	asserts.AssertUser(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NameAvailabilityException = { ["Message"] = true, nil }

function asserts.AssertNameAvailabilityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NameAvailabilityException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NameAvailabilityException[k], "NameAvailabilityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NameAvailabilityException
-- <p>The entity (user, group, or user) name isn't unique in Amazon WorkMail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return NameAvailabilityException structure as a key-value pair table
function M.NameAvailabilityException(args)
	assert(args, "You must provide an argument table when creating NameAvailabilityException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertNameAvailabilityException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateMemberToGroupRequest = { ["OrganizationId"] = true, ["GroupId"] = true, ["MemberId"] = true, nil }

function asserts.AssertAssociateMemberToGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateMemberToGroupRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["MemberId"], "Expected key MemberId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["GroupId"] then asserts.AssertWorkMailIdentifier(struct["GroupId"]) end
	if struct["MemberId"] then asserts.AssertWorkMailIdentifier(struct["MemberId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateMemberToGroupRequest[k], "AssociateMemberToGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateMemberToGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The organization under which the group exists.</p>
-- * GroupId [WorkMailIdentifier] <p>The group for which the member is associated.</p>
-- * MemberId [WorkMailIdentifier] <p>The member to associate to the group.</p>
-- Required key: OrganizationId
-- Required key: GroupId
-- Required key: MemberId
-- @return AssociateMemberToGroupRequest structure as a key-value pair table
function M.AssociateMemberToGroupRequest(args)
	assert(args, "You must provide an argument table when creating AssociateMemberToGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["GroupId"] = args["GroupId"],
		["MemberId"] = args["MemberId"],
	}
	asserts.AssertAssociateMemberToGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourcesResponse = { ["NextToken"] = true, ["Resources"] = true, nil }

function asserts.AssertListResourcesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Resources"] then asserts.AssertResources(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourcesResponse[k], "ListResourcesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p> The token used to paginate through all the organization's resources. While results are still available, it has an associated value. When the last page is reached, the token is empty.</p>
-- * Resources [Resources] <p>One page of the organization's resource representation.</p>
-- @return ListResourcesResponse structure as a key-value pair table
function M.ListResourcesResponse(args)
	assert(args, "You must provide an argument table when creating ListResourcesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Resources"] = args["Resources"],
	}
	asserts.AssertListResourcesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteMailboxPermissionsResponse = { nil }

function asserts.AssertDeleteMailboxPermissionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMailboxPermissionsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteMailboxPermissionsResponse[k], "DeleteMailboxPermissionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMailboxPermissionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteMailboxPermissionsResponse structure as a key-value pair table
function M.DeleteMailboxPermissionsResponse(args)
	assert(args, "You must provide an argument table when creating DeleteMailboxPermissionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteMailboxPermissionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidPasswordException = { ["Message"] = true, nil }

function asserts.AssertInvalidPasswordException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPasswordException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidPasswordException[k], "InvalidPasswordException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPasswordException
-- <p>The supplied password doesn't match the minimum security constraints, such as length or use of special characters.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidPasswordException structure as a key-value pair table
function M.InvalidPasswordException(args)
	assert(args, "You must provide an argument table when creating InvalidPasswordException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidPasswordException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeGroupRequest = { ["OrganizationId"] = true, ["GroupId"] = true, nil }

function asserts.AssertDescribeGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeGroupRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["GroupId"] then asserts.AssertWorkMailIdentifier(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeGroupRequest[k], "DescribeGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the group exists.</p>
-- * GroupId [WorkMailIdentifier] <p>The identifier for the group to be described.</p>
-- Required key: OrganizationId
-- Required key: GroupId
-- @return DescribeGroupRequest structure as a key-value pair table
function M.DescribeGroupRequest(args)
	assert(args, "You must provide an argument table when creating DescribeGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertDescribeGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOrganizationsResponse = { ["OrganizationSummaries"] = true, ["NextToken"] = true, nil }

function asserts.AssertListOrganizationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOrganizationsResponse to be of type 'table'")
	if struct["OrganizationSummaries"] then asserts.AssertOrganizationSummaries(struct["OrganizationSummaries"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOrganizationsResponse[k], "ListOrganizationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOrganizationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationSummaries [OrganizationSummaries] <p>The overview of owned organizations presented as a list of organization summaries.</p>
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The value is "null" when there are no more results to return.</p>
-- @return ListOrganizationsResponse structure as a key-value pair table
function M.ListOrganizationsResponse(args)
	assert(args, "You must provide an argument table when creating ListOrganizationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationSummaries"] = args["OrganizationSummaries"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListOrganizationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupMembersRequest = { ["OrganizationId"] = true, ["NextToken"] = true, ["GroupId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListGroupMembersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupMembersRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["GroupId"] then asserts.AssertWorkMailIdentifier(struct["GroupId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupMembersRequest[k], "ListGroupMembersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupMembersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the group exists.</p>
-- * NextToken [NextToken] <p> The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
-- * GroupId [WorkMailIdentifier] <p>The identifier for the group to which the members are associated.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return in a single call.</p>
-- Required key: OrganizationId
-- Required key: GroupId
-- @return ListGroupMembersRequest structure as a key-value pair table
function M.ListGroupMembersRequest(args)
	assert(args, "You must provide an argument table when creating ListGroupMembersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["NextToken"] = args["NextToken"],
		["GroupId"] = args["GroupId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListGroupMembersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmailAddressInUseException = { ["Message"] = true, nil }

function asserts.AssertEmailAddressInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmailAddressInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmailAddressInUseException[k], "EmailAddressInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmailAddressInUseException
-- <p>The email address that you're trying to assign is already created for a different user, group, or resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return EmailAddressInUseException structure as a key-value pair table
function M.EmailAddressInUseException(args)
	assert(args, "You must provide an argument table when creating EmailAddressInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertEmailAddressInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserRequest = { ["OrganizationId"] = true, ["Password"] = true, ["DisplayName"] = true, ["Name"] = true, nil }

function asserts.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DisplayName"], "Expected key DisplayName to exist in table")
	assert(struct["Password"], "Expected key Password to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["DisplayName"] then asserts.AssertString(struct["DisplayName"]) end
	if struct["Name"] then asserts.AssertUserName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserRequest[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier of the organization for which the user is created.</p>
-- * Password [Password] <p>The password for the user to be created.</p>
-- * DisplayName [String] <p>The display name for the user to be created.</p>
-- * Name [UserName] <p>The name for the user to be created.</p>
-- Required key: OrganizationId
-- Required key: Name
-- Required key: DisplayName
-- Required key: Password
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
		["OrganizationId"] = args["OrganizationId"],
		["Password"] = args["Password"],
		["DisplayName"] = args["DisplayName"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateMemberFromGroupResponse = { nil }

function asserts.AssertDisassociateMemberFromGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateMemberFromGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateMemberFromGroupResponse[k], "DisassociateMemberFromGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateMemberFromGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateMemberFromGroupResponse structure as a key-value pair table
function M.DisassociateMemberFromGroupResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateMemberFromGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateMemberFromGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DirectoryServiceAuthenticationFailedException = { ["Message"] = true, nil }

function asserts.AssertDirectoryServiceAuthenticationFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectoryServiceAuthenticationFailedException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectoryServiceAuthenticationFailedException[k], "DirectoryServiceAuthenticationFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectoryServiceAuthenticationFailedException
-- <p>The Directory Service doesn't recognize the credentials supplied by the Amazon WorkMail service.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return DirectoryServiceAuthenticationFailedException structure as a key-value pair table
function M.DirectoryServiceAuthenticationFailedException(args)
	assert(args, "You must provide an argument table when creating DirectoryServiceAuthenticationFailedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDirectoryServiceAuthenticationFailedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutMailboxPermissionsResponse = { nil }

function asserts.AssertPutMailboxPermissionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMailboxPermissionsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutMailboxPermissionsResponse[k], "PutMailboxPermissionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMailboxPermissionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutMailboxPermissionsResponse structure as a key-value pair table
function M.PutMailboxPermissionsResponse(args)
	assert(args, "You must provide an argument table when creating PutMailboxPermissionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutMailboxPermissionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateResourceRequest = { ["OrganizationId"] = true, ["ResourceId"] = true, ["BookingOptions"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateResourceRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["BookingOptions"] then asserts.AssertBookingOptions(struct["BookingOptions"]) end
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateResourceRequest[k], "UpdateResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier associated with the organization for which the resource is updated.</p>
-- * ResourceId [ResourceId] <p>The identifier of the resource to be updated.</p>
-- * BookingOptions [BookingOptions] <p>The resource's booking options to be updated.</p>
-- * Name [ResourceName] <p>The name of the resource to be updated.</p>
-- Required key: OrganizationId
-- Required key: ResourceId
-- @return UpdateResourceRequest structure as a key-value pair table
function M.UpdateResourceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["ResourceId"] = args["ResourceId"],
		["BookingOptions"] = args["BookingOptions"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteMailboxPermissionsRequest = { ["OrganizationId"] = true, ["EntityId"] = true, ["GranteeId"] = true, nil }

function asserts.AssertDeleteMailboxPermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMailboxPermissionsRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	assert(struct["GranteeId"], "Expected key GranteeId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	if struct["GranteeId"] then asserts.AssertWorkMailIdentifier(struct["GranteeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMailboxPermissionsRequest[k], "DeleteMailboxPermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMailboxPermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier of the organization under which the entity (user or group) exists.</p>
-- * EntityId [WorkMailIdentifier] <p>The identifier of the entity (user or group) for which to delete mailbox permissions.</p>
-- * GranteeId [WorkMailIdentifier] <p>The identifier of the entity (user or group) for which to delete granted permissions.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- Required key: GranteeId
-- @return DeleteMailboxPermissionsRequest structure as a key-value pair table
function M.DeleteMailboxPermissionsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteMailboxPermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["EntityId"] = args["EntityId"],
		["GranteeId"] = args["GranteeId"],
	}
	asserts.AssertDeleteMailboxPermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListMailboxPermissionsRequest = { ["OrganizationId"] = true, ["EntityId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListMailboxPermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListMailboxPermissionsRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListMailboxPermissionsRequest[k], "ListMailboxPermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListMailboxPermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier of the organization under which the entity (user or group) exists.</p>
-- * EntityId [WorkMailIdentifier] <p>The identifier of the entity (user or group) for which to list mailbox permissions.</p>
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return in a single call.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- @return ListMailboxPermissionsRequest structure as a key-value pair table
function M.ListMailboxPermissionsRequest(args)
	assert(args, "You must provide an argument table when creating ListMailboxPermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["EntityId"] = args["EntityId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListMailboxPermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetPasswordResponse = { nil }

function asserts.AssertResetPasswordResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetPasswordResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResetPasswordResponse[k], "ResetPasswordResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetPasswordResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ResetPasswordResponse structure as a key-value pair table
function M.ResetPasswordResponse(args)
	assert(args, "You must provide an argument table when creating ResetPasswordResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertResetPasswordResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeregisterFromWorkMailRequest = { ["OrganizationId"] = true, ["EntityId"] = true, nil }

function asserts.AssertDeregisterFromWorkMailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterFromWorkMailRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterFromWorkMailRequest[k], "DeregisterFromWorkMailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterFromWorkMailRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the Amazon WorkMail entity exists.</p>
-- * EntityId [WorkMailIdentifier] <p>The identifier for the entity to be updated.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- @return DeregisterFromWorkMailRequest structure as a key-value pair table
function M.DeregisterFromWorkMailRequest(args)
	assert(args, "You must provide an argument table when creating DeregisterFromWorkMailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["EntityId"] = args["EntityId"],
	}
	asserts.AssertDeregisterFromWorkMailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OrganizationSummary = { ["OrganizationId"] = true, ["Alias"] = true, ["State"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertOrganizationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OrganizationSummary to be of type 'table'")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["Alias"] then asserts.AssertOrganizationName(struct["Alias"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["ErrorMessage"] then asserts.AssertString(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.OrganizationSummary[k], "OrganizationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OrganizationSummary
-- <p>The brief overview associated with an organization.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier associated with the organization.</p>
-- * Alias [OrganizationName] <p>The alias associated with the organization.</p>
-- * State [String] <p>The state associated with the organization.</p>
-- * ErrorMessage [String] <p>The error message associated with the organization. It is only present if unexpected behavior has occurred with regards to the organization. It provides insight or solutions regarding unexpected behavior.</p>
-- @return OrganizationSummary structure as a key-value pair table
function M.OrganizationSummary(args)
	assert(args, "You must provide an argument table when creating OrganizationSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["Alias"] = args["Alias"],
		["State"] = args["State"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertOrganizationSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateResourceResponse = { nil }

function asserts.AssertUpdateResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateResourceResponse[k], "UpdateResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateResourceResponse structure as a key-value pair table
function M.UpdateResourceResponse(args)
	assert(args, "You must provide an argument table when creating UpdateResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDelegateToResourceResponse = { nil }

function asserts.AssertAssociateDelegateToResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDelegateToResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateDelegateToResourceResponse[k], "AssociateDelegateToResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDelegateToResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateDelegateToResourceResponse structure as a key-value pair table
function M.AssociateDelegateToResourceResponse(args)
	assert(args, "You must provide an argument table when creating AssociateDelegateToResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateDelegateToResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResourcesRequest = { ["OrganizationId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListResourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResourcesRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResourcesRequest[k], "ListResourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the resources exist.</p>
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return in a single call.</p>
-- Required key: OrganizationId
-- @return ListResourcesRequest structure as a key-value pair table
function M.ListResourcesRequest(args)
	assert(args, "You must provide an argument table when creating ListResourcesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListResourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResourceRequest = { ["OrganizationId"] = true, ["ResourceId"] = true, nil }

function asserts.AssertDeleteResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourceRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourceRequest[k], "DeleteResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier associated with the organization for which the resource is deleted.</p>
-- * ResourceId [ResourceId] <p>The identifier of the resource to be deleted.</p>
-- Required key: OrganizationId
-- Required key: ResourceId
-- @return DeleteResourceRequest structure as a key-value pair table
function M.DeleteResourceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertDeleteResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeResourceResponse = { ["Name"] = true, ["ResourceId"] = true, ["BookingOptions"] = true, ["State"] = true, ["EnabledDate"] = true, ["DisabledDate"] = true, ["Type"] = true, ["Email"] = true, nil }

function asserts.AssertDescribeResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourceResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertResourceName(struct["Name"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["BookingOptions"] then asserts.AssertBookingOptions(struct["BookingOptions"]) end
	if struct["State"] then asserts.AssertEntityState(struct["State"]) end
	if struct["EnabledDate"] then asserts.AssertTimestamp(struct["EnabledDate"]) end
	if struct["DisabledDate"] then asserts.AssertTimestamp(struct["DisabledDate"]) end
	if struct["Type"] then asserts.AssertResourceType(struct["Type"]) end
	if struct["Email"] then asserts.AssertEmailAddress(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourceResponse[k], "DescribeResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [ResourceName] <p>The name of the described resource.</p>
-- * ResourceId [ResourceId] <p>The identifier of the described resource.</p>
-- * BookingOptions [BookingOptions] <p>The booking options for the described resource.</p>
-- * State [EntityState] <p>The state of the resource: enabled (registered to Amazon WorkMail) or disabled (deregistered or never registered to Amazon WorkMail).</p>
-- * EnabledDate [Timestamp] <p>The date and time when a resource was registered to Amazon WorkMail, in UNIX epoch time format.</p>
-- * DisabledDate [Timestamp] <p>The date and time when a resource was registered from Amazon WorkMail, in UNIX epoch time format.</p>
-- * Type [ResourceType] <p>The type of the described resource.</p>
-- * Email [EmailAddress] <p>The email of the described resource.</p>
-- @return DescribeResourceResponse structure as a key-value pair table
function M.DescribeResourceResponse(args)
	assert(args, "You must provide an argument table when creating DescribeResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["ResourceId"] = args["ResourceId"],
		["BookingOptions"] = args["BookingOptions"],
		["State"] = args["State"],
		["EnabledDate"] = args["EnabledDate"],
		["DisabledDate"] = args["DisabledDate"],
		["Type"] = args["Type"],
		["Email"] = args["Email"],
	}
	asserts.AssertDescribeResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGroupResponse = { nil }

function asserts.AssertDeleteGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteGroupResponse[k], "DeleteGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteGroupResponse structure as a key-value pair table
function M.DeleteGroupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListAliasesRequest = { ["OrganizationId"] = true, ["EntityId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAliasesRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAliasesRequest[k], "ListAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAliasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the entity exists.</p>
-- * EntityId [WorkMailIdentifier] <p>The identifier for the entity for which to list the aliases.</p>
-- * NextToken [NextToken] <p>The token to use to retrieve the next page of results. The first call does not contain any tokens.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return in a single call.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- @return ListAliasesRequest structure as a key-value pair table
function M.ListAliasesRequest(args)
	assert(args, "You must provide an argument table when creating ListAliasesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["EntityId"] = args["EntityId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListAliasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EntityStateException = { ["Message"] = true, nil }

function asserts.AssertEntityStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityStateException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityStateException[k], "EntityStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityStateException
-- <p>You are performing an operation on an entity that isn't in the expected state, such as trying to update a deleted user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return EntityStateException structure as a key-value pair table
function M.EntityStateException(args)
	assert(args, "You must provide an argument table when creating EntityStateException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertEntityStateException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutMailboxPermissionsRequest = { ["OrganizationId"] = true, ["EntityId"] = true, ["GranteeId"] = true, ["PermissionValues"] = true, nil }

function asserts.AssertPutMailboxPermissionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMailboxPermissionsRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	assert(struct["EntityId"], "Expected key EntityId to exist in table")
	assert(struct["GranteeId"], "Expected key GranteeId to exist in table")
	assert(struct["PermissionValues"], "Expected key PermissionValues to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["EntityId"] then asserts.AssertWorkMailIdentifier(struct["EntityId"]) end
	if struct["GranteeId"] then asserts.AssertWorkMailIdentifier(struct["GranteeId"]) end
	if struct["PermissionValues"] then asserts.AssertPermissionValues(struct["PermissionValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutMailboxPermissionsRequest[k], "PutMailboxPermissionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMailboxPermissionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier of the organization under which the entity (user or group) exists.</p>
-- * EntityId [WorkMailIdentifier] <p>The identifier of the entity (user or group) for which to update mailbox permissions.</p>
-- * GranteeId [WorkMailIdentifier] <p>The identifier of the entity (user or group) to which to grant the permissions.</p>
-- * PermissionValues [PermissionValues] <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full access to the mailbox, irrespective of other folder-level permissions set on the mailbox.</p>
-- Required key: OrganizationId
-- Required key: EntityId
-- Required key: GranteeId
-- Required key: PermissionValues
-- @return PutMailboxPermissionsRequest structure as a key-value pair table
function M.PutMailboxPermissionsRequest(args)
	assert(args, "You must provide an argument table when creating PutMailboxPermissionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OrganizationId"] = args["OrganizationId"],
		["EntityId"] = args["EntityId"],
		["GranteeId"] = args["GranteeId"],
		["PermissionValues"] = args["PermissionValues"],
	}
	asserts.AssertPutMailboxPermissionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterToWorkMailResponse = { nil }

function asserts.AssertRegisterToWorkMailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterToWorkMailResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RegisterToWorkMailResponse[k], "RegisterToWorkMailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterToWorkMailResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RegisterToWorkMailResponse structure as a key-value pair table
function M.RegisterToWorkMailResponse(args)
	assert(args, "You must provide an argument table when creating RegisterToWorkMailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRegisterToWorkMailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersRequest = { ["OrganizationId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersRequest to be of type 'table'")
	assert(struct["OrganizationId"], "Expected key OrganizationId to exist in table")
	if struct["OrganizationId"] then asserts.AssertOrganizationId(struct["OrganizationId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersRequest[k], "ListUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OrganizationId [OrganizationId] <p>The identifier for the organization under which the users exist.</p>
-- * NextToken [NextToken] <p>TBD</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to return in a single call.</p>
-- Required key: OrganizationId
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
		["OrganizationId"] = args["OrganizationId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListUsersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidConfigurationException = { ["Message"] = true, nil }

function asserts.AssertInvalidConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidConfigurationException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidConfigurationException[k], "InvalidConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidConfigurationException
-- <p>The configuration for a resource isn't valid. A resource must either be able to auto-respond to requests or have at least one delegate associated that can do it on its behalf.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidConfigurationException structure as a key-value pair table
function M.InvalidConfigurationException(args)
	assert(args, "You must provide an argument table when creating InvalidConfigurationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidConfigurationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Permission = { ["GranteeId"] = true, ["PermissionValues"] = true, ["GranteeType"] = true, nil }

function asserts.AssertPermission(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Permission to be of type 'table'")
	assert(struct["GranteeId"], "Expected key GranteeId to exist in table")
	assert(struct["GranteeType"], "Expected key GranteeType to exist in table")
	assert(struct["PermissionValues"], "Expected key PermissionValues to exist in table")
	if struct["GranteeId"] then asserts.AssertWorkMailIdentifier(struct["GranteeId"]) end
	if struct["PermissionValues"] then asserts.AssertPermissionValues(struct["PermissionValues"]) end
	if struct["GranteeType"] then asserts.AssertMemberType(struct["GranteeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Permission[k], "Permission contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Permission
-- <p>Permission granted to an entity (user, group) to access a certain aspect of another entity's mailbox.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GranteeId [WorkMailIdentifier] <p>The identifier of the entity (user or group) to which the permissions are granted.</p>
-- * PermissionValues [PermissionValues] <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full access to the mailbox, irrespective of other folder-level permissions set on the mailbox.</p>
-- * GranteeType [MemberType] <p>The type of entity (user, group) of the entity referred to in GranteeId.</p>
-- Required key: GranteeId
-- Required key: GranteeType
-- Required key: PermissionValues
-- @return Permission structure as a key-value pair table
function M.Permission(args)
	assert(args, "You must provide an argument table when creating Permission")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GranteeId"] = args["GranteeId"],
		["PermissionValues"] = args["PermissionValues"],
		["GranteeType"] = args["GranteeType"],
	}
	asserts.AssertPermission(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGroupResponse = { ["GroupId"] = true, nil }

function asserts.AssertCreateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupResponse to be of type 'table'")
	if struct["GroupId"] then asserts.AssertWorkMailIdentifier(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupResponse[k], "CreateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [WorkMailIdentifier] <p>The ID of the group.</p>
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
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertCreateGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertOrganizationName(str)
	assert(str)
	assert(type(str) == "string", "Expected OrganizationName to be of type 'string'")
	assert(#str <= 62, "Expected string to be max 62 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OrganizationName(str)
	asserts.AssertOrganizationName(str)
	return str
end

function asserts.AssertMemberType(str)
	assert(str)
	assert(type(str) == "string", "Expected MemberType to be of type 'string'")
end

--  
function M.MemberType(str)
	asserts.AssertMemberType(str)
	return str
end

function asserts.AssertUserRole(str)
	assert(str)
	assert(type(str) == "string", "Expected UserRole to be of type 'string'")
end

--  
function M.UserRole(str)
	asserts.AssertUserRole(str)
	return str
end

function asserts.AssertEntityState(str)
	assert(str)
	assert(type(str) == "string", "Expected EntityState to be of type 'string'")
end

--  
function M.EntityState(str)
	asserts.AssertEntityState(str)
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

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertPermissionType(str)
	assert(str)
	assert(type(str) == "string", "Expected PermissionType to be of type 'string'")
end

--  
function M.PermissionType(str)
	asserts.AssertPermissionType(str)
	return str
end

function asserts.AssertUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected UserName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserName(str)
	asserts.AssertUserName(str)
	return str
end

function asserts.AssertWorkMailIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkMailIdentifier to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

--  
function M.WorkMailIdentifier(str)
	asserts.AssertWorkMailIdentifier(str)
	return str
end

function asserts.AssertEmailAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected EmailAddress to be of type 'string'")
	assert(#str <= 254, "Expected string to be max 254 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EmailAddress(str)
	asserts.AssertEmailAddress(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected Password to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Password(str)
	asserts.AssertPassword(str)
	return str
end

function asserts.AssertGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GroupName(str)
	asserts.AssertGroupName(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
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

function asserts.AssertResources(list)
	assert(list)
	assert(type(list) == "table", "Expected Resources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResource(v)
	end
end

--  
-- List of Resource objects
function M.Resources(list)
	asserts.AssertResources(list)
	return list
end

function asserts.AssertOrganizationSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected OrganizationSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrganizationSummary(v)
	end
end

--  
-- List of OrganizationSummary objects
function M.OrganizationSummaries(list)
	asserts.AssertOrganizationSummaries(list)
	return list
end

function asserts.AssertMembers(list)
	assert(list)
	assert(type(list) == "table", "Expected Members to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMember(v)
	end
end

--  
-- List of Member objects
function M.Members(list)
	asserts.AssertMembers(list)
	return list
end

function asserts.AssertAliases(list)
	assert(list)
	assert(type(list) == "table", "Expected Aliases to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEmailAddress(v)
	end
end

--  
-- List of EmailAddress objects
function M.Aliases(list)
	asserts.AssertAliases(list)
	return list
end

function asserts.AssertGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected Groups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroup(v)
	end
end

--  
-- List of Group objects
function M.Groups(list)
	asserts.AssertGroups(list)
	return list
end

function asserts.AssertPermissions(list)
	assert(list)
	assert(type(list) == "table", "Expected Permissions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPermission(v)
	end
end

--  
-- List of Permission objects
function M.Permissions(list)
	asserts.AssertPermissions(list)
	return list
end

function asserts.AssertResourceDelegates(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceDelegates to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDelegate(v)
	end
end

--  
-- List of Delegate objects
function M.ResourceDelegates(list)
	asserts.AssertResourceDelegates(list)
	return list
end

function asserts.AssertPermissionValues(list)
	assert(list)
	assert(type(list) == "table", "Expected PermissionValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPermissionType(v)
	end
end

--  
-- List of PermissionType objects
function M.PermissionValues(list)
	asserts.AssertPermissionValues(list)
	return list
end

function asserts.AssertUsers(list)
	assert(list)
	assert(type(list) == "table", "Expected Users to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUser(v)
	end
end

--  
-- List of User objects
function M.Users(list)
	asserts.AssertUsers(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "workmail.amazonaws.com"
		end
	end
	local ss = { "workmail" }
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
--- Call ListGroupMembers asynchronously, invoking a callback when done
-- @param ListGroupMembersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGroupMembersAsync(ListGroupMembersRequest, cb)
	assert(ListGroupMembersRequest, "You must provide a ListGroupMembersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ListGroupMembers",
	}
	for header,value in pairs(ListGroupMembersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListGroupMembersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroupMembers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupMembersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListGroupMembersSync(ListGroupMembersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupMembersAsync(ListGroupMembersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePrimaryEmailAddress asynchronously, invoking a callback when done
-- @param UpdatePrimaryEmailAddressRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePrimaryEmailAddressAsync(UpdatePrimaryEmailAddressRequest, cb)
	assert(UpdatePrimaryEmailAddressRequest, "You must provide a UpdatePrimaryEmailAddressRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.UpdatePrimaryEmailAddress",
	}
	for header,value in pairs(UpdatePrimaryEmailAddressRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePrimaryEmailAddressRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePrimaryEmailAddress synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePrimaryEmailAddressRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePrimaryEmailAddressSync(UpdatePrimaryEmailAddressRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePrimaryEmailAddressAsync(UpdatePrimaryEmailAddressRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMailboxPermissions asynchronously, invoking a callback when done
-- @param PutMailboxPermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutMailboxPermissionsAsync(PutMailboxPermissionsRequest, cb)
	assert(PutMailboxPermissionsRequest, "You must provide a PutMailboxPermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.PutMailboxPermissions",
	}
	for header,value in pairs(PutMailboxPermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutMailboxPermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutMailboxPermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutMailboxPermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutMailboxPermissionsSync(PutMailboxPermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMailboxPermissionsAsync(PutMailboxPermissionsRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ListUsers",
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

--- Call DisassociateMemberFromGroup asynchronously, invoking a callback when done
-- @param DisassociateMemberFromGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateMemberFromGroupAsync(DisassociateMemberFromGroupRequest, cb)
	assert(DisassociateMemberFromGroupRequest, "You must provide a DisassociateMemberFromGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DisassociateMemberFromGroup",
	}
	for header,value in pairs(DisassociateMemberFromGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateMemberFromGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateMemberFromGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateMemberFromGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateMemberFromGroupSync(DisassociateMemberFromGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateMemberFromGroupAsync(DisassociateMemberFromGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResource asynchronously, invoking a callback when done
-- @param DescribeResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeResourceAsync(DescribeResourceRequest, cb)
	assert(DescribeResourceRequest, "You must provide a DescribeResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DescribeResource",
	}
	for header,value in pairs(DescribeResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeResourceSync(DescribeResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResourceAsync(DescribeResourceRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.CreateGroup",
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

--- Call ListAliases asynchronously, invoking a callback when done
-- @param ListAliasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAliasesAsync(ListAliasesRequest, cb)
	assert(ListAliasesRequest, "You must provide a ListAliasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ListAliases",
	}
	for header,value in pairs(ListAliasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAliasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAliases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAliasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListAliasesSync(ListAliasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAliasesAsync(ListAliasesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeGroup asynchronously, invoking a callback when done
-- @param DescribeGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeGroupAsync(DescribeGroupRequest, cb)
	assert(DescribeGroupRequest, "You must provide a DescribeGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DescribeGroup",
	}
	for header,value in pairs(DescribeGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeGroupSync(DescribeGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeGroupAsync(DescribeGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetPassword asynchronously, invoking a callback when done
-- @param ResetPasswordRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetPasswordAsync(ResetPasswordRequest, cb)
	assert(ResetPasswordRequest, "You must provide a ResetPasswordRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ResetPassword",
	}
	for header,value in pairs(ResetPasswordRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetPasswordRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetPassword synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetPasswordRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResetPasswordSync(ResetPasswordRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetPasswordAsync(ResetPasswordRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMailboxPermissions asynchronously, invoking a callback when done
-- @param DeleteMailboxPermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteMailboxPermissionsAsync(DeleteMailboxPermissionsRequest, cb)
	assert(DeleteMailboxPermissionsRequest, "You must provide a DeleteMailboxPermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DeleteMailboxPermissions",
	}
	for header,value in pairs(DeleteMailboxPermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteMailboxPermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMailboxPermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMailboxPermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteMailboxPermissionsSync(DeleteMailboxPermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMailboxPermissionsAsync(DeleteMailboxPermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateDelegateFromResource asynchronously, invoking a callback when done
-- @param DisassociateDelegateFromResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateDelegateFromResourceAsync(DisassociateDelegateFromResourceRequest, cb)
	assert(DisassociateDelegateFromResourceRequest, "You must provide a DisassociateDelegateFromResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DisassociateDelegateFromResource",
	}
	for header,value in pairs(DisassociateDelegateFromResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateDelegateFromResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateDelegateFromResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateDelegateFromResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateDelegateFromResourceSync(DisassociateDelegateFromResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateDelegateFromResourceAsync(DisassociateDelegateFromResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOrganizations asynchronously, invoking a callback when done
-- @param ListOrganizationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOrganizationsAsync(ListOrganizationsRequest, cb)
	assert(ListOrganizationsRequest, "You must provide a ListOrganizationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ListOrganizations",
	}
	for header,value in pairs(ListOrganizationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOrganizationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOrganizations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOrganizationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOrganizationsSync(ListOrganizationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOrganizationsAsync(ListOrganizationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterToWorkMail asynchronously, invoking a callback when done
-- @param RegisterToWorkMailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterToWorkMailAsync(RegisterToWorkMailRequest, cb)
	assert(RegisterToWorkMailRequest, "You must provide a RegisterToWorkMailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.RegisterToWorkMail",
	}
	for header,value in pairs(RegisterToWorkMailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterToWorkMailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterToWorkMail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterToWorkMailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterToWorkMailSync(RegisterToWorkMailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterToWorkMailAsync(RegisterToWorkMailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAlias asynchronously, invoking a callback when done
-- @param DeleteAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAliasAsync(DeleteAliasRequest, cb)
	assert(DeleteAliasRequest, "You must provide a DeleteAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DeleteAlias",
	}
	for header,value in pairs(DeleteAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAliasSync(DeleteAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAliasAsync(DeleteAliasRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DeleteGroup",
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

--- Call DescribeUser asynchronously, invoking a callback when done
-- @param DescribeUserRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserAsync(DescribeUserRequest, cb)
	assert(DescribeUserRequest, "You must provide a DescribeUserRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DescribeUser",
	}
	for header,value in pairs(DescribeUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeUserRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUser synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserSync(DescribeUserRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserAsync(DescribeUserRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListMailboxPermissions asynchronously, invoking a callback when done
-- @param ListMailboxPermissionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListMailboxPermissionsAsync(ListMailboxPermissionsRequest, cb)
	assert(ListMailboxPermissionsRequest, "You must provide a ListMailboxPermissionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ListMailboxPermissions",
	}
	for header,value in pairs(ListMailboxPermissionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListMailboxPermissionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListMailboxPermissions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListMailboxPermissionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListMailboxPermissionsSync(ListMailboxPermissionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListMailboxPermissionsAsync(ListMailboxPermissionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateDelegateToResource asynchronously, invoking a callback when done
-- @param AssociateDelegateToResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateDelegateToResourceAsync(AssociateDelegateToResourceRequest, cb)
	assert(AssociateDelegateToResourceRequest, "You must provide a AssociateDelegateToResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.AssociateDelegateToResource",
	}
	for header,value in pairs(AssociateDelegateToResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateDelegateToResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateDelegateToResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateDelegateToResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateDelegateToResourceSync(AssociateDelegateToResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateDelegateToResourceAsync(AssociateDelegateToResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResourceDelegates asynchronously, invoking a callback when done
-- @param ListResourceDelegatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListResourceDelegatesAsync(ListResourceDelegatesRequest, cb)
	assert(ListResourceDelegatesRequest, "You must provide a ListResourceDelegatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ListResourceDelegates",
	}
	for header,value in pairs(ListResourceDelegatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListResourceDelegatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResourceDelegates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResourceDelegatesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListResourceDelegatesSync(ListResourceDelegatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourceDelegatesAsync(ListResourceDelegatesRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ListGroups",
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

--- Call DeregisterFromWorkMail asynchronously, invoking a callback when done
-- @param DeregisterFromWorkMailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeregisterFromWorkMailAsync(DeregisterFromWorkMailRequest, cb)
	assert(DeregisterFromWorkMailRequest, "You must provide a DeregisterFromWorkMailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DeregisterFromWorkMail",
	}
	for header,value in pairs(DeregisterFromWorkMailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterFromWorkMailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterFromWorkMail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterFromWorkMailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeregisterFromWorkMailSync(DeregisterFromWorkMailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterFromWorkMailAsync(DeregisterFromWorkMailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOrganization asynchronously, invoking a callback when done
-- @param DescribeOrganizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOrganizationAsync(DescribeOrganizationRequest, cb)
	assert(DescribeOrganizationRequest, "You must provide a DescribeOrganizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DescribeOrganization",
	}
	for header,value in pairs(DescribeOrganizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeOrganizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOrganization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOrganizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeOrganizationSync(DescribeOrganizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOrganizationAsync(DescribeOrganizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateMemberToGroup asynchronously, invoking a callback when done
-- @param AssociateMemberToGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateMemberToGroupAsync(AssociateMemberToGroupRequest, cb)
	assert(AssociateMemberToGroupRequest, "You must provide a AssociateMemberToGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.AssociateMemberToGroup",
	}
	for header,value in pairs(AssociateMemberToGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateMemberToGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateMemberToGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateMemberToGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateMemberToGroupSync(AssociateMemberToGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateMemberToGroupAsync(AssociateMemberToGroupRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DeleteUser",
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

--- Call CreateAlias asynchronously, invoking a callback when done
-- @param CreateAliasRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAliasAsync(CreateAliasRequest, cb)
	assert(CreateAliasRequest, "You must provide a CreateAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.CreateAlias",
	}
	for header,value in pairs(CreateAliasRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAliasRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAliasSync(CreateAliasRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAliasAsync(CreateAliasRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResources asynchronously, invoking a callback when done
-- @param ListResourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListResourcesAsync(ListResourcesRequest, cb)
	assert(ListResourcesRequest, "You must provide a ListResourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.ListResources",
	}
	for header,value in pairs(ListResourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListResourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListResourcesSync(ListResourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResourcesAsync(ListResourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteResource asynchronously, invoking a callback when done
-- @param DeleteResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteResourceAsync(DeleteResourceRequest, cb)
	assert(DeleteResourceRequest, "You must provide a DeleteResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.DeleteResource",
	}
	for header,value in pairs(DeleteResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteResourceSync(DeleteResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteResourceAsync(DeleteResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateResource asynchronously, invoking a callback when done
-- @param CreateResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateResourceAsync(CreateResourceRequest, cb)
	assert(CreateResourceRequest, "You must provide a CreateResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.CreateResource",
	}
	for header,value in pairs(CreateResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateResourceSync(CreateResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateResourceAsync(CreateResourceRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.CreateUser",
	}
	for header,value in pairs(CreateUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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

--- Call UpdateResource asynchronously, invoking a callback when done
-- @param UpdateResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateResourceAsync(UpdateResourceRequest, cb)
	assert(UpdateResourceRequest, "You must provide a UpdateResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkMailService.UpdateResource",
	}
	for header,value in pairs(UpdateResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateResourceSync(UpdateResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateResourceAsync(UpdateResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
