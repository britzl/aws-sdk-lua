--- GENERATED CODE - DO NOT MODIFY
-- Amazon WorkSpaces (workspaces-2015-04-08)

local M = {}

M.metadata = {
	api_version = "2015-04-08",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "workspaces",
	service_abbreviation = "",
	service_full_name = "Amazon WorkSpaces",
	signature_version = "v4",
	target_prefix = "WorkspacesService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "workspaces-2015-04-08",
}

local keys = {}
local asserts = {}

keys.DefaultWorkspaceCreationProperties = { ["EnableInternetAccess"] = true, ["EnableWorkDocs"] = true, ["DefaultOu"] = true, ["CustomSecurityGroupId"] = true, ["UserEnabledAsLocalAdministrator"] = true, nil }

function asserts.AssertDefaultWorkspaceCreationProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultWorkspaceCreationProperties to be of type 'table'")
	if struct["EnableInternetAccess"] then asserts.AssertBooleanObject(struct["EnableInternetAccess"]) end
	if struct["EnableWorkDocs"] then asserts.AssertBooleanObject(struct["EnableWorkDocs"]) end
	if struct["DefaultOu"] then asserts.AssertDefaultOu(struct["DefaultOu"]) end
	if struct["CustomSecurityGroupId"] then asserts.AssertSecurityGroupId(struct["CustomSecurityGroupId"]) end
	if struct["UserEnabledAsLocalAdministrator"] then asserts.AssertBooleanObject(struct["UserEnabledAsLocalAdministrator"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefaultWorkspaceCreationProperties[k], "DefaultWorkspaceCreationProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultWorkspaceCreationProperties
-- <p>Information about defaults used to create a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnableInternetAccess [BooleanObject] <p>The public IP address to attach to all WorkSpaces that are created or rebuilt.</p>
-- * EnableWorkDocs [BooleanObject] <p>Indicates whether the directory is enabled for Amazon WorkDocs.</p>
-- * DefaultOu [DefaultOu] <p>The organizational unit (OU) in the directory for the WorkSpace machine accounts.</p>
-- * CustomSecurityGroupId [SecurityGroupId] <p>The identifier of any security groups to apply to WorkSpaces when they are created.</p>
-- * UserEnabledAsLocalAdministrator [BooleanObject] <p>Indicates whether the WorkSpace user is an administrator on the WorkSpace.</p>
-- @return DefaultWorkspaceCreationProperties structure as a key-value pair table
function M.DefaultWorkspaceCreationProperties(args)
	assert(args, "You must provide an argument table when creating DefaultWorkspaceCreationProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnableInternetAccess"] = args["EnableInternetAccess"],
		["EnableWorkDocs"] = args["EnableWorkDocs"],
		["DefaultOu"] = args["DefaultOu"],
		["CustomSecurityGroupId"] = args["CustomSecurityGroupId"],
		["UserEnabledAsLocalAdministrator"] = args["UserEnabledAsLocalAdministrator"],
	}
	asserts.AssertDefaultWorkspaceCreationProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateIpGroupResult = { ["GroupId"] = true, nil }

function asserts.AssertCreateIpGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIpGroupResult to be of type 'table'")
	if struct["GroupId"] then asserts.AssertIpGroupId(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIpGroupResult[k], "CreateIpGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIpGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [IpGroupId] <p>The ID of the group.</p>
-- @return CreateIpGroupResult structure as a key-value pair table
function M.CreateIpGroupResult(args)
	assert(args, "You must provide an argument table when creating CreateIpGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertCreateIpGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RootStorage = { ["Capacity"] = true, nil }

function asserts.AssertRootStorage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RootStorage to be of type 'table'")
	if struct["Capacity"] then asserts.AssertNonEmptyString(struct["Capacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.RootStorage[k], "RootStorage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RootStorage
-- <p>Information about the root volume for a WorkSpace bundle.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Capacity [NonEmptyString] <p>The size of the root volume.</p>
-- @return RootStorage structure as a key-value pair table
function M.RootStorage(args)
	assert(args, "You must provide an argument table when creating RootStorage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Capacity"] = args["Capacity"],
	}
	asserts.AssertRootStorage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsResult = { nil }

function asserts.AssertDeleteTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsResult[k], "DeleteTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTagsResult structure as a key-value pair table
function M.DeleteTagsResult(args)
	assert(args, "You must provide an argument table when creating DeleteTagsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTagsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateWorkspacesResult = { ["FailedRequests"] = true, nil }

function asserts.AssertTerminateWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then asserts.AssertFailedTerminateWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateWorkspacesResult[k], "TerminateWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateWorkspacesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedRequests [FailedTerminateWorkspaceRequests] <p>Information about the WorkSpaces that could not be terminated.</p>
-- @return TerminateWorkspacesResult structure as a key-value pair table
function M.TerminateWorkspacesResult(args)
	assert(args, "You must provide an argument table when creating TerminateWorkspacesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedRequests"] = args["FailedRequests"],
	}
	asserts.AssertTerminateWorkspacesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootWorkspacesResult = { ["FailedRequests"] = true, nil }

function asserts.AssertRebootWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then asserts.AssertFailedRebootWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootWorkspacesResult[k], "RebootWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootWorkspacesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedRequests [FailedRebootWorkspaceRequests] <p>Information about the WorkSpaces that could not be rebooted.</p>
-- @return RebootWorkspacesResult structure as a key-value pair table
function M.RebootWorkspacesResult(args)
	assert(args, "You must provide an argument table when creating RebootWorkspacesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedRequests"] = args["FailedRequests"],
	}
	asserts.AssertRebootWorkspacesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsRequest = { ["ResourceId"] = true, nil }

function asserts.AssertDescribeTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then asserts.AssertNonEmptyString(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsRequest[k], "DescribeTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [NonEmptyString] <p>The ID of the WorkSpace. To find this ID, use <a>DescribeWorkspaces</a>.</p>
-- Required key: ResourceId
-- @return DescribeTagsRequest structure as a key-value pair table
function M.DescribeTagsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertDescribeTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopWorkspacesRequest = { ["StopWorkspaceRequests"] = true, nil }

function asserts.AssertStopWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopWorkspacesRequest to be of type 'table'")
	assert(struct["StopWorkspaceRequests"], "Expected key StopWorkspaceRequests to exist in table")
	if struct["StopWorkspaceRequests"] then asserts.AssertStopWorkspaceRequests(struct["StopWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopWorkspacesRequest[k], "StopWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopWorkspacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StopWorkspaceRequests [StopWorkspaceRequests] <p>The WorkSpaces to stop. You can specify up to 25 WorkSpaces.</p>
-- Required key: StopWorkspaceRequests
-- @return StopWorkspacesRequest structure as a key-value pair table
function M.StopWorkspacesRequest(args)
	assert(args, "You must provide an argument table when creating StopWorkspacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StopWorkspaceRequests"] = args["StopWorkspaceRequests"],
	}
	asserts.AssertStopWorkspacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootWorkspacesRequest = { ["RebootWorkspaceRequests"] = true, nil }

function asserts.AssertRebootWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootWorkspacesRequest to be of type 'table'")
	assert(struct["RebootWorkspaceRequests"], "Expected key RebootWorkspaceRequests to exist in table")
	if struct["RebootWorkspaceRequests"] then asserts.AssertRebootWorkspaceRequests(struct["RebootWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootWorkspacesRequest[k], "RebootWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootWorkspacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RebootWorkspaceRequests [RebootWorkspaceRequests] <p>The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.</p>
-- Required key: RebootWorkspaceRequests
-- @return RebootWorkspacesRequest structure as a key-value pair table
function M.RebootWorkspacesRequest(args)
	assert(args, "You must provide an argument table when creating RebootWorkspacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RebootWorkspaceRequests"] = args["RebootWorkspaceRequests"],
	}
	asserts.AssertRebootWorkspacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeIpGroupsRequest = { ["NextToken"] = true, ["GroupIds"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeIpGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIpGroupsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["GroupIds"] then asserts.AssertIpGroupIdList(struct["GroupIds"]) end
	if struct["MaxResults"] then asserts.AssertLimit(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIpGroupsRequest[k], "DescribeIpGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIpGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>The token for the next set of results. (You received this token from a previous call.)</p>
-- * GroupIds [IpGroupIdList] <p>The IDs of one or more IP access control groups.</p>
-- * MaxResults [Limit] <p>The maximum number of items to return.</p>
-- @return DescribeIpGroupsRequest structure as a key-value pair table
function M.DescribeIpGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeIpGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["GroupIds"] = args["GroupIds"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeIpGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeIpGroupsResult = { ["NextToken"] = true, ["Result"] = true, nil }

function asserts.AssertDescribeIpGroupsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeIpGroupsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["Result"] then asserts.AssertWorkspacesIpGroupsList(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeIpGroupsResult[k], "DescribeIpGroupsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeIpGroupsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>The token to use to retrieve the next set of results, or null if there are no more results available. This token is valid for one day and must be used within that time frame.</p>
-- * Result [WorkspacesIpGroupsList] <p>Information about the IP access control groups.</p>
-- @return DescribeIpGroupsResult structure as a key-value pair table
function M.DescribeIpGroupsResult(args)
	assert(args, "You must provide an argument table when creating DescribeIpGroupsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Result"] = args["Result"],
	}
	asserts.AssertDescribeIpGroupsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTagsRequest = { ["ResourceId"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceId"] then asserts.AssertNonEmptyString(struct["ResourceId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTagsRequest[k], "CreateTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [NonEmptyString] <p>The ID of the WorkSpace. To find this ID, use <a>DescribeWorkspaces</a>.</p>
-- * Tags [TagList] <p>The tags. Each WorkSpace can have a maximum of 50 tags.</p>
-- Required key: ResourceId
-- Required key: Tags
-- @return CreateTagsRequest structure as a key-value pair table
function M.CreateTagsRequest(args)
	assert(args, "You must provide an argument table when creating CreateTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Information about a tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of the tag.</p>
-- * Key [TagKey] <p>The key of the tag.</p>
-- Required key: Key
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WorkspacesIpGroup = { ["groupName"] = true, ["groupDesc"] = true, ["groupId"] = true, ["userRules"] = true, nil }

function asserts.AssertWorkspacesIpGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspacesIpGroup to be of type 'table'")
	if struct["groupName"] then asserts.AssertIpGroupName(struct["groupName"]) end
	if struct["groupDesc"] then asserts.AssertIpGroupDesc(struct["groupDesc"]) end
	if struct["groupId"] then asserts.AssertIpGroupId(struct["groupId"]) end
	if struct["userRules"] then asserts.AssertIpRuleList(struct["userRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkspacesIpGroup[k], "WorkspacesIpGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspacesIpGroup
-- <p>Information about an IP access control group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * groupName [IpGroupName] <p>The name of the group.</p>
-- * groupDesc [IpGroupDesc] <p>The description of the group.</p>
-- * groupId [IpGroupId] <p>The ID of the group.</p>
-- * userRules [IpRuleList] <p>The rules.</p>
-- @return WorkspacesIpGroup structure as a key-value pair table
function M.WorkspacesIpGroup(args)
	assert(args, "You must provide an argument table when creating WorkspacesIpGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["groupName"] = args["groupName"],
		["groupDesc"] = args["groupDesc"],
		["groupId"] = args["groupId"],
		["userRules"] = args["userRules"],
	}
	asserts.AssertWorkspacesIpGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteIpGroupRequest = { ["GroupId"] = true, nil }

function asserts.AssertDeleteIpGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIpGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.AssertIpGroupId(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIpGroupRequest[k], "DeleteIpGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIpGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [IpGroupId] <p>The ID of the IP access control group.</p>
-- Required key: GroupId
-- @return DeleteIpGroupRequest structure as a key-value pair table
function M.DeleteIpGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteIpGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertDeleteIpGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeWorkspacesRequest = { ["UserName"] = true, ["DirectoryId"] = true, ["Limit"] = true, ["WorkspaceIds"] = true, ["NextToken"] = true, ["BundleId"] = true, nil }

function asserts.AssertDescribeWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspacesRequest to be of type 'table'")
	if struct["UserName"] then asserts.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["WorkspaceIds"] then asserts.AssertWorkspaceIdList(struct["WorkspaceIds"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["BundleId"] then asserts.AssertBundleId(struct["BundleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkspacesRequest[k], "DescribeWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [UserName] <p>The name of the directory user. You must specify this parameter with <code>DirectoryId</code>.</p>
-- * DirectoryId [DirectoryId] <p>The ID of the directory. In addition, you can optionally specify a specific directory user (see <code>UserName</code>). This parameter cannot be combined with any other filter.</p>
-- * Limit [Limit] <p>The maximum number of items to return.</p>
-- * WorkspaceIds [WorkspaceIdList] <p>The IDs of the WorkSpaces. This parameter cannot be combined with any other filter.</p> <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>
-- * NextToken [PaginationToken] <p>The token for the next set of results. (You received this token from a previous call.)</p>
-- * BundleId [BundleId] <p>The ID of the bundle. All WorkSpaces that are created from this bundle are retrieved. This parameter cannot be combined with any other filter.</p>
-- @return DescribeWorkspacesRequest structure as a key-value pair table
function M.DescribeWorkspacesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeWorkspacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["DirectoryId"] = args["DirectoryId"],
		["Limit"] = args["Limit"],
		["WorkspaceIds"] = args["WorkspaceIds"],
		["NextToken"] = args["NextToken"],
		["BundleId"] = args["BundleId"],
	}
	asserts.AssertDescribeWorkspacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyWorkspacePropertiesRequest = { ["WorkspaceId"] = true, ["WorkspaceProperties"] = true, nil }

function asserts.AssertModifyWorkspacePropertiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyWorkspacePropertiesRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	assert(struct["WorkspaceProperties"], "Expected key WorkspaceProperties to exist in table")
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["WorkspaceProperties"] then asserts.AssertWorkspaceProperties(struct["WorkspaceProperties"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyWorkspacePropertiesRequest[k], "ModifyWorkspacePropertiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyWorkspacePropertiesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- * WorkspaceProperties [WorkspaceProperties] <p>The properties of the WorkSpace.</p>
-- Required key: WorkspaceId
-- Required key: WorkspaceProperties
-- @return ModifyWorkspacePropertiesRequest structure as a key-value pair table
function M.ModifyWorkspacePropertiesRequest(args)
	assert(args, "You must provide an argument table when creating ModifyWorkspacePropertiesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkspaceId"] = args["WorkspaceId"],
		["WorkspaceProperties"] = args["WorkspaceProperties"],
	}
	asserts.AssertModifyWorkspacePropertiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateIpGroupsResult = { nil }

function asserts.AssertDisassociateIpGroupsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateIpGroupsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateIpGroupsResult[k], "DisassociateIpGroupsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateIpGroupsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateIpGroupsResult structure as a key-value pair table
function M.DisassociateIpGroupsResult(args)
	assert(args, "You must provide an argument table when creating DisassociateIpGroupsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateIpGroupsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteIpGroupResult = { nil }

function asserts.AssertDeleteIpGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIpGroupResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteIpGroupResult[k], "DeleteIpGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIpGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteIpGroupResult structure as a key-value pair table
function M.DeleteIpGroupResult(args)
	assert(args, "You must provide an argument table when creating DeleteIpGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteIpGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeWorkspaceBundlesResult = { ["NextToken"] = true, ["Bundles"] = true, nil }

function asserts.AssertDescribeWorkspaceBundlesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspaceBundlesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["Bundles"] then asserts.AssertBundleList(struct["Bundles"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkspaceBundlesResult[k], "DescribeWorkspaceBundlesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspaceBundlesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>The token to use to retrieve the next set of results, or null if there are no more results available. This token is valid for one day and must be used within that time frame.</p>
-- * Bundles [BundleList] <p>Information about the bundles.</p>
-- @return DescribeWorkspaceBundlesResult structure as a key-value pair table
function M.DescribeWorkspaceBundlesResult(args)
	assert(args, "You must provide an argument table when creating DescribeWorkspaceBundlesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Bundles"] = args["Bundles"],
	}
	asserts.AssertDescribeWorkspaceBundlesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IpRuleItem = { ["ipRule"] = true, ["ruleDesc"] = true, nil }

function asserts.AssertIpRuleItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IpRuleItem to be of type 'table'")
	if struct["ipRule"] then asserts.AssertIpRule(struct["ipRule"]) end
	if struct["ruleDesc"] then asserts.AssertIpRuleDesc(struct["ruleDesc"]) end
	for k,_ in pairs(struct) do
		assert(keys.IpRuleItem[k], "IpRuleItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IpRuleItem
-- <p>Information about a rule for an IP access control group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ipRule [IpRule] <p>The IP address range, in CIDR notation.</p>
-- * ruleDesc [IpRuleDesc] <p>The description.</p>
-- @return IpRuleItem structure as a key-value pair table
function M.IpRuleItem(args)
	assert(args, "You must provide an argument table when creating IpRuleItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ipRule"] = args["ipRule"],
		["ruleDesc"] = args["ruleDesc"],
	}
	asserts.AssertIpRuleItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyWorkspaceStateRequest = { ["WorkspaceId"] = true, ["WorkspaceState"] = true, nil }

function asserts.AssertModifyWorkspaceStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyWorkspaceStateRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	assert(struct["WorkspaceState"], "Expected key WorkspaceState to exist in table")
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["WorkspaceState"] then asserts.AssertTargetWorkspaceState(struct["WorkspaceState"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyWorkspaceStateRequest[k], "ModifyWorkspaceStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyWorkspaceStateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- * WorkspaceState [TargetWorkspaceState] <p>The WorkSpace state.</p>
-- Required key: WorkspaceId
-- Required key: WorkspaceState
-- @return ModifyWorkspaceStateRequest structure as a key-value pair table
function M.ModifyWorkspaceStateRequest(args)
	assert(args, "You must provide an argument table when creating ModifyWorkspaceStateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkspaceId"] = args["WorkspaceId"],
		["WorkspaceState"] = args["WorkspaceState"],
	}
	asserts.AssertModifyWorkspaceStateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Workspace = { ["UserName"] = true, ["DirectoryId"] = true, ["ComputerName"] = true, ["VolumeEncryptionKey"] = true, ["UserVolumeEncryptionEnabled"] = true, ["ModificationStates"] = true, ["ErrorMessage"] = true, ["WorkspaceProperties"] = true, ["ErrorCode"] = true, ["State"] = true, ["WorkspaceId"] = true, ["SubnetId"] = true, ["RootVolumeEncryptionEnabled"] = true, ["IpAddress"] = true, ["BundleId"] = true, nil }

function asserts.AssertWorkspace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Workspace to be of type 'table'")
	if struct["UserName"] then asserts.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["ComputerName"] then asserts.AssertComputerName(struct["ComputerName"]) end
	if struct["VolumeEncryptionKey"] then asserts.AssertVolumeEncryptionKey(struct["VolumeEncryptionKey"]) end
	if struct["UserVolumeEncryptionEnabled"] then asserts.AssertBooleanObject(struct["UserVolumeEncryptionEnabled"]) end
	if struct["ModificationStates"] then asserts.AssertModificationStateList(struct["ModificationStates"]) end
	if struct["ErrorMessage"] then asserts.AssertDescription(struct["ErrorMessage"]) end
	if struct["WorkspaceProperties"] then asserts.AssertWorkspaceProperties(struct["WorkspaceProperties"]) end
	if struct["ErrorCode"] then asserts.AssertWorkspaceErrorCode(struct["ErrorCode"]) end
	if struct["State"] then asserts.AssertWorkspaceState(struct["State"]) end
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["SubnetId"] then asserts.AssertSubnetId(struct["SubnetId"]) end
	if struct["RootVolumeEncryptionEnabled"] then asserts.AssertBooleanObject(struct["RootVolumeEncryptionEnabled"]) end
	if struct["IpAddress"] then asserts.AssertIpAddress(struct["IpAddress"]) end
	if struct["BundleId"] then asserts.AssertBundleId(struct["BundleId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Workspace[k], "Workspace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Workspace
-- <p>Information about a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [UserName] <p>The user for the WorkSpace.</p>
-- * DirectoryId [DirectoryId] <p>The identifier of the AWS Directory Service directory for the WorkSpace.</p>
-- * ComputerName [ComputerName] <p>The name of the WorkSpace, as seen by the operating system.</p>
-- * VolumeEncryptionKey [VolumeEncryptionKey] <p>The KMS key used to encrypt data stored on your WorkSpace.</p>
-- * UserVolumeEncryptionEnabled [BooleanObject] <p>Indicates whether the data stored on the user volume is encrypted.</p>
-- * ModificationStates [ModificationStateList] <p>The modification states of the WorkSpace.</p>
-- * ErrorMessage [Description] <p>If the WorkSpace could not be created, contains a textual error message that describes the failure.</p>
-- * WorkspaceProperties [WorkspaceProperties] <p>The properties of the WorkSpace.</p>
-- * ErrorCode [WorkspaceErrorCode] <p>If the WorkSpace could not be created, contains the error code.</p>
-- * State [WorkspaceState] <p>The operational state of the WorkSpace.</p>
-- * WorkspaceId [WorkspaceId] <p>The identifier of the WorkSpace.</p>
-- * SubnetId [SubnetId] <p>The identifier of the subnet for the WorkSpace.</p>
-- * RootVolumeEncryptionEnabled [BooleanObject] <p>Indicates whether the data stored on the root volume is encrypted.</p>
-- * IpAddress [IpAddress] <p>The IP address of the WorkSpace.</p>
-- * BundleId [BundleId] <p>The identifier of the bundle used to create the WorkSpace.</p>
-- @return Workspace structure as a key-value pair table
function M.Workspace(args)
	assert(args, "You must provide an argument table when creating Workspace")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["DirectoryId"] = args["DirectoryId"],
		["ComputerName"] = args["ComputerName"],
		["VolumeEncryptionKey"] = args["VolumeEncryptionKey"],
		["UserVolumeEncryptionEnabled"] = args["UserVolumeEncryptionEnabled"],
		["ModificationStates"] = args["ModificationStates"],
		["ErrorMessage"] = args["ErrorMessage"],
		["WorkspaceProperties"] = args["WorkspaceProperties"],
		["ErrorCode"] = args["ErrorCode"],
		["State"] = args["State"],
		["WorkspaceId"] = args["WorkspaceId"],
		["SubnetId"] = args["SubnetId"],
		["RootVolumeEncryptionEnabled"] = args["RootVolumeEncryptionEnabled"],
		["IpAddress"] = args["IpAddress"],
		["BundleId"] = args["BundleId"],
	}
	asserts.AssertWorkspace(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateIpGroupsResult = { nil }

function asserts.AssertAssociateIpGroupsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateIpGroupsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateIpGroupsResult[k], "AssociateIpGroupsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateIpGroupsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateIpGroupsResult structure as a key-value pair table
function M.AssociateIpGroupsResult(args)
	assert(args, "You must provide an argument table when creating AssociateIpGroupsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateIpGroupsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyWorkspacePropertiesResult = { nil }

function asserts.AssertModifyWorkspacePropertiesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyWorkspacePropertiesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ModifyWorkspacePropertiesResult[k], "ModifyWorkspacePropertiesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyWorkspacePropertiesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ModifyWorkspacePropertiesResult structure as a key-value pair table
function M.ModifyWorkspacePropertiesResult(args)
	assert(args, "You must provide an argument table when creating ModifyWorkspacePropertiesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertModifyWorkspacePropertiesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartWorkspacesResult = { ["FailedRequests"] = true, nil }

function asserts.AssertStartWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then asserts.AssertFailedStartWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartWorkspacesResult[k], "StartWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartWorkspacesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedRequests [FailedStartWorkspaceRequests] <p>Information about the WorkSpaces that could not be started.</p>
-- @return StartWorkspacesResult structure as a key-value pair table
function M.StartWorkspacesResult(args)
	assert(args, "You must provide an argument table when creating StartWorkspacesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedRequests"] = args["FailedRequests"],
	}
	asserts.AssertStartWorkspacesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizeIpRulesResult = { nil }

function asserts.AssertAuthorizeIpRulesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeIpRulesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeIpRulesResult[k], "AuthorizeIpRulesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeIpRulesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AuthorizeIpRulesResult structure as a key-value pair table
function M.AuthorizeIpRulesResult(args)
	assert(args, "You must provide an argument table when creating AuthorizeIpRulesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAuthorizeIpRulesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeWorkspacesResult = { ["NextToken"] = true, ["Workspaces"] = true, nil }

function asserts.AssertDescribeWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspacesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["Workspaces"] then asserts.AssertWorkspaceList(struct["Workspaces"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkspacesResult[k], "DescribeWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspacesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>The token to use to retrieve the next set of results, or null if there are no more results available. This token is valid for one day and must be used within that time frame.</p>
-- * Workspaces [WorkspaceList] <p>Information about the WorkSpaces.</p> <p>Because <a>CreateWorkspaces</a> is an asynchronous operation, some of the returned information could be incomplete.</p>
-- @return DescribeWorkspacesResult structure as a key-value pair table
function M.DescribeWorkspacesResult(args)
	assert(args, "You must provide an argument table when creating DescribeWorkspacesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Workspaces"] = args["Workspaces"],
	}
	asserts.AssertDescribeWorkspacesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeIpRulesResult = { nil }

function asserts.AssertRevokeIpRulesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeIpRulesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RevokeIpRulesResult[k], "RevokeIpRulesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeIpRulesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RevokeIpRulesResult structure as a key-value pair table
function M.RevokeIpRulesResult(args)
	assert(args, "You must provide an argument table when creating RevokeIpRulesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRevokeIpRulesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ComputeType = { ["Name"] = true, nil }

function asserts.AssertComputeType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeType to be of type 'table'")
	if struct["Name"] then asserts.AssertCompute(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ComputeType[k], "ComputeType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeType
-- <p>Information about the compute type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [Compute] <p>The compute type.</p>
-- @return ComputeType structure as a key-value pair table
function M.ComputeType(args)
	assert(args, "You must provide an argument table when creating ComputeType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertComputeType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WorkspaceRequest = { ["UserName"] = true, ["DirectoryId"] = true, ["VolumeEncryptionKey"] = true, ["Tags"] = true, ["WorkspaceProperties"] = true, ["BundleId"] = true, ["UserVolumeEncryptionEnabled"] = true, ["RootVolumeEncryptionEnabled"] = true, nil }

function asserts.AssertWorkspaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["BundleId"], "Expected key BundleId to exist in table")
	if struct["UserName"] then asserts.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["VolumeEncryptionKey"] then asserts.AssertVolumeEncryptionKey(struct["VolumeEncryptionKey"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["WorkspaceProperties"] then asserts.AssertWorkspaceProperties(struct["WorkspaceProperties"]) end
	if struct["BundleId"] then asserts.AssertBundleId(struct["BundleId"]) end
	if struct["UserVolumeEncryptionEnabled"] then asserts.AssertBooleanObject(struct["UserVolumeEncryptionEnabled"]) end
	if struct["RootVolumeEncryptionEnabled"] then asserts.AssertBooleanObject(struct["RootVolumeEncryptionEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkspaceRequest[k], "WorkspaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceRequest
-- <p>Information used to create a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserName [UserName] <p>The username of the user for the WorkSpace. This username must exist in the AWS Directory Service directory for the WorkSpace.</p>
-- * DirectoryId [DirectoryId] <p>The identifier of the AWS Directory Service directory for the WorkSpace. You can use <a>DescribeWorkspaceDirectories</a> to list the available directories.</p>
-- * VolumeEncryptionKey [VolumeEncryptionKey] <p>The KMS key used to encrypt data stored on your WorkSpace.</p>
-- * Tags [TagList] <p>The tags for the WorkSpace.</p>
-- * WorkspaceProperties [WorkspaceProperties] <p>The WorkSpace properties.</p>
-- * BundleId [BundleId] <p>The identifier of the bundle for the WorkSpace. You can use <a>DescribeWorkspaceBundles</a> to list the available bundles.</p>
-- * UserVolumeEncryptionEnabled [BooleanObject] <p>Indicates whether the data stored on the user volume is encrypted.</p>
-- * RootVolumeEncryptionEnabled [BooleanObject] <p>Indicates whether the data stored on the root volume is encrypted.</p>
-- Required key: DirectoryId
-- Required key: UserName
-- Required key: BundleId
-- @return WorkspaceRequest structure as a key-value pair table
function M.WorkspaceRequest(args)
	assert(args, "You must provide an argument table when creating WorkspaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserName"] = args["UserName"],
		["DirectoryId"] = args["DirectoryId"],
		["VolumeEncryptionKey"] = args["VolumeEncryptionKey"],
		["Tags"] = args["Tags"],
		["WorkspaceProperties"] = args["WorkspaceProperties"],
		["BundleId"] = args["BundleId"],
		["UserVolumeEncryptionEnabled"] = args["UserVolumeEncryptionEnabled"],
		["RootVolumeEncryptionEnabled"] = args["RootVolumeEncryptionEnabled"],
	}
	asserts.AssertWorkspaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModificationState = { ["State"] = true, ["Resource"] = true, nil }

function asserts.AssertModificationState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModificationState to be of type 'table'")
	if struct["State"] then asserts.AssertModificationStateEnum(struct["State"]) end
	if struct["Resource"] then asserts.AssertModificationResourceEnum(struct["Resource"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModificationState[k], "ModificationState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModificationState
-- <p>Information about a WorkSpace modification.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [ModificationStateEnum] <p>The modification state.</p>
-- * Resource [ModificationResourceEnum] <p>The resource.</p>
-- @return ModificationState structure as a key-value pair table
function M.ModificationState(args)
	assert(args, "You must provide an argument table when creating ModificationState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["Resource"] = args["Resource"],
	}
	asserts.AssertModificationState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateRequest = { ["WorkspaceId"] = true, nil }

function asserts.AssertTerminateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateRequest[k], "TerminateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateRequest
-- <p>Information used to terminate a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- Required key: WorkspaceId
-- @return TerminateRequest structure as a key-value pair table
function M.TerminateRequest(args)
	assert(args, "You must provide an argument table when creating TerminateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkspaceId"] = args["WorkspaceId"],
	}
	asserts.AssertTerminateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailedWorkspaceChangeRequest = { ["ErrorCode"] = true, ["WorkspaceId"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertFailedWorkspaceChangeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedWorkspaceChangeRequest to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorType(struct["ErrorCode"]) end
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["ErrorMessage"] then asserts.AssertDescription(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedWorkspaceChangeRequest[k], "FailedWorkspaceChangeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedWorkspaceChangeRequest
-- <p>Information about a WorkSpace that could not be rebooted (<a>RebootWorkspaces</a>), rebuilt (<a>RebuildWorkspaces</a>), terminated (<a>TerminateWorkspaces</a>), started (<a>StartWorkspaces</a>), or stopped (<a>StopWorkspaces</a>).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorType] <p>The error code.</p>
-- * WorkspaceId [WorkspaceId] <p>The identifier of the WorkSpace.</p>
-- * ErrorMessage [Description] <p>The textual error message.</p>
-- @return FailedWorkspaceChangeRequest structure as a key-value pair table
function M.FailedWorkspaceChangeRequest(args)
	assert(args, "You must provide an argument table when creating FailedWorkspaceChangeRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["WorkspaceId"] = args["WorkspaceId"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertFailedWorkspaceChangeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTagsRequest = { ["ResourceId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertDeleteTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceId"] then asserts.AssertNonEmptyString(struct["ResourceId"]) end
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTagsRequest[k], "DeleteTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [NonEmptyString] <p>The ID of the WorkSpace. To find this ID, use <a>DescribeWorkspaces</a>.</p>
-- * TagKeys [TagKeyList] <p>The tag keys.</p>
-- Required key: ResourceId
-- Required key: TagKeys
-- @return DeleteTagsRequest structure as a key-value pair table
function M.DeleteTagsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertDeleteTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeWorkspaceDirectoriesRequest = { ["DirectoryIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeWorkspaceDirectoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspaceDirectoriesRequest to be of type 'table'")
	if struct["DirectoryIds"] then asserts.AssertDirectoryIdList(struct["DirectoryIds"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkspaceDirectoriesRequest[k], "DescribeWorkspaceDirectoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspaceDirectoriesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryIds [DirectoryIdList] <p>The identifiers of the directories. If the value is null, all directories are retrieved.</p>
-- * NextToken [PaginationToken] <p>The token for the next set of results. (You received this token from a previous call.)</p>
-- @return DescribeWorkspaceDirectoriesRequest structure as a key-value pair table
function M.DescribeWorkspaceDirectoriesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeWorkspaceDirectoriesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryIds"] = args["DirectoryIds"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeWorkspaceDirectoriesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeWorkspacesConnectionStatusRequest = { ["NextToken"] = true, ["WorkspaceIds"] = true, nil }

function asserts.AssertDescribeWorkspacesConnectionStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspacesConnectionStatusRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["WorkspaceIds"] then asserts.AssertWorkspaceIdList(struct["WorkspaceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkspacesConnectionStatusRequest[k], "DescribeWorkspacesConnectionStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspacesConnectionStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [PaginationToken] <p>The token for the next set of results. (You received this token from a previous call.)</p>
-- * WorkspaceIds [WorkspaceIdList] <p>The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.</p>
-- @return DescribeWorkspacesConnectionStatusRequest structure as a key-value pair table
function M.DescribeWorkspacesConnectionStatusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeWorkspacesConnectionStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["WorkspaceIds"] = args["WorkspaceIds"],
	}
	asserts.AssertDescribeWorkspacesConnectionStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserStorage = { ["Capacity"] = true, nil }

function asserts.AssertUserStorage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserStorage to be of type 'table'")
	if struct["Capacity"] then asserts.AssertNonEmptyString(struct["Capacity"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserStorage[k], "UserStorage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserStorage
-- <p>Information about the user storage for a WorkSpace bundle.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Capacity [NonEmptyString] <p>The size of the user storage.</p>
-- @return UserStorage structure as a key-value pair table
function M.UserStorage(args)
	assert(args, "You must provide an argument table when creating UserStorage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Capacity"] = args["Capacity"],
	}
	asserts.AssertUserStorage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTagsResult = { ["TagList"] = true, nil }

function asserts.AssertDescribeTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsResult to be of type 'table'")
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTagsResult[k], "DescribeTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p>The tags.</p>
-- @return DescribeTagsResult structure as a key-value pair table
function M.DescribeTagsResult(args)
	assert(args, "You must provide an argument table when creating DescribeTagsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagList"] = args["TagList"],
	}
	asserts.AssertDescribeTagsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRulesOfIpGroupRequest = { ["GroupId"] = true, ["UserRules"] = true, nil }

function asserts.AssertUpdateRulesOfIpGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRulesOfIpGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["UserRules"], "Expected key UserRules to exist in table")
	if struct["GroupId"] then asserts.AssertIpGroupId(struct["GroupId"]) end
	if struct["UserRules"] then asserts.AssertIpRuleList(struct["UserRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRulesOfIpGroupRequest[k], "UpdateRulesOfIpGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRulesOfIpGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [IpGroupId] <p>The ID of the group.</p>
-- * UserRules [IpRuleList] <p>One or more rules.</p>
-- Required key: GroupId
-- Required key: UserRules
-- @return UpdateRulesOfIpGroupRequest structure as a key-value pair table
function M.UpdateRulesOfIpGroupRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRulesOfIpGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
		["UserRules"] = args["UserRules"],
	}
	asserts.AssertUpdateRulesOfIpGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopRequest = { ["WorkspaceId"] = true, nil }

function asserts.AssertStopRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRequest to be of type 'table'")
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopRequest[k], "StopRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRequest
-- <p>Information used to stop a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- @return StopRequest structure as a key-value pair table
function M.StopRequest(args)
	assert(args, "You must provide an argument table when creating StopRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkspaceId"] = args["WorkspaceId"],
	}
	asserts.AssertStopRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeWorkspaceBundlesRequest = { ["Owner"] = true, ["NextToken"] = true, ["BundleIds"] = true, nil }

function asserts.AssertDescribeWorkspaceBundlesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspaceBundlesRequest to be of type 'table'")
	if struct["Owner"] then asserts.AssertBundleOwner(struct["Owner"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	if struct["BundleIds"] then asserts.AssertBundleIdList(struct["BundleIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkspaceBundlesRequest[k], "DescribeWorkspaceBundlesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspaceBundlesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [BundleOwner] <p>The owner of the bundles. This parameter cannot be combined with any other filter.</p> <p>Specify <code>AMAZON</code> to describe the bundles provided by AWS or null to describe the bundles that belong to your account.</p>
-- * NextToken [PaginationToken] <p>The token for the next set of results. (You received this token from a previous call.)</p>
-- * BundleIds [BundleIdList] <p>The IDs of the bundles. This parameter cannot be combined with any other filter.</p>
-- @return DescribeWorkspaceBundlesRequest structure as a key-value pair table
function M.DescribeWorkspaceBundlesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeWorkspaceBundlesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["NextToken"] = args["NextToken"],
		["BundleIds"] = args["BundleIds"],
	}
	asserts.AssertDescribeWorkspaceBundlesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WorkspaceProperties = { ["UserVolumeSizeGib"] = true, ["RunningModeAutoStopTimeoutInMinutes"] = true, ["RunningMode"] = true, ["RootVolumeSizeGib"] = true, ["ComputeTypeName"] = true, nil }

function asserts.AssertWorkspaceProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceProperties to be of type 'table'")
	if struct["UserVolumeSizeGib"] then asserts.AssertUserVolumeSizeGib(struct["UserVolumeSizeGib"]) end
	if struct["RunningModeAutoStopTimeoutInMinutes"] then asserts.AssertRunningModeAutoStopTimeoutInMinutes(struct["RunningModeAutoStopTimeoutInMinutes"]) end
	if struct["RunningMode"] then asserts.AssertRunningMode(struct["RunningMode"]) end
	if struct["RootVolumeSizeGib"] then asserts.AssertRootVolumeSizeGib(struct["RootVolumeSizeGib"]) end
	if struct["ComputeTypeName"] then asserts.AssertCompute(struct["ComputeTypeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkspaceProperties[k], "WorkspaceProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceProperties
-- <p>Information about a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserVolumeSizeGib [UserVolumeSizeGib] <p>The size of the user storage.</p>
-- * RunningModeAutoStopTimeoutInMinutes [RunningModeAutoStopTimeoutInMinutes] <p>The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60 minute intervals.</p>
-- * RunningMode [RunningMode] <p>The running mode. For more information, see <a href="http://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html">Manage the WorkSpace Running Mode</a>.</p>
-- * RootVolumeSizeGib [RootVolumeSizeGib] <p>The size of the root volume.</p>
-- * ComputeTypeName [Compute] <p>The compute type. For more information, see <a href="http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles">Amazon WorkSpaces Bundles</a>.</p>
-- @return WorkspaceProperties structure as a key-value pair table
function M.WorkspaceProperties(args)
	assert(args, "You must provide an argument table when creating WorkspaceProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserVolumeSizeGib"] = args["UserVolumeSizeGib"],
		["RunningModeAutoStopTimeoutInMinutes"] = args["RunningModeAutoStopTimeoutInMinutes"],
		["RunningMode"] = args["RunningMode"],
		["RootVolumeSizeGib"] = args["RootVolumeSizeGib"],
		["ComputeTypeName"] = args["ComputeTypeName"],
	}
	asserts.AssertWorkspaceProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopWorkspacesResult = { ["FailedRequests"] = true, nil }

function asserts.AssertStopWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then asserts.AssertFailedStopWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopWorkspacesResult[k], "StopWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopWorkspacesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedRequests [FailedStopWorkspaceRequests] <p>Information about the WorkSpaces that could not be stopped.</p>
-- @return StopWorkspacesResult structure as a key-value pair table
function M.StopWorkspacesResult(args)
	assert(args, "You must provide an argument table when creating StopWorkspacesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedRequests"] = args["FailedRequests"],
	}
	asserts.AssertStopWorkspacesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartWorkspacesRequest = { ["StartWorkspaceRequests"] = true, nil }

function asserts.AssertStartWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartWorkspacesRequest to be of type 'table'")
	assert(struct["StartWorkspaceRequests"], "Expected key StartWorkspaceRequests to exist in table")
	if struct["StartWorkspaceRequests"] then asserts.AssertStartWorkspaceRequests(struct["StartWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartWorkspacesRequest[k], "StartWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartWorkspacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StartWorkspaceRequests [StartWorkspaceRequests] <p>The WorkSpaces to start. You can specify up to 25 WorkSpaces.</p>
-- Required key: StartWorkspaceRequests
-- @return StartWorkspacesRequest structure as a key-value pair table
function M.StartWorkspacesRequest(args)
	assert(args, "You must provide an argument table when creating StartWorkspacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StartWorkspaceRequests"] = args["StartWorkspaceRequests"],
	}
	asserts.AssertStartWorkspacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTagsResult = { nil }

function asserts.AssertCreateTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateTagsResult[k], "CreateTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateTagsResult structure as a key-value pair table
function M.CreateTagsResult(args)
	assert(args, "You must provide an argument table when creating CreateTagsResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateTagsResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TerminateWorkspacesRequest = { ["TerminateWorkspaceRequests"] = true, nil }

function asserts.AssertTerminateWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateWorkspacesRequest to be of type 'table'")
	assert(struct["TerminateWorkspaceRequests"], "Expected key TerminateWorkspaceRequests to exist in table")
	if struct["TerminateWorkspaceRequests"] then asserts.AssertTerminateWorkspaceRequests(struct["TerminateWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateWorkspacesRequest[k], "TerminateWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateWorkspacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TerminateWorkspaceRequests [TerminateWorkspaceRequests] <p>The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.</p>
-- Required key: TerminateWorkspaceRequests
-- @return TerminateWorkspacesRequest structure as a key-value pair table
function M.TerminateWorkspacesRequest(args)
	assert(args, "You must provide an argument table when creating TerminateWorkspacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TerminateWorkspaceRequests"] = args["TerminateWorkspaceRequests"],
	}
	asserts.AssertTerminateWorkspacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WorkspaceDirectory = { ["CustomerUserName"] = true, ["DirectoryId"] = true, ["DirectoryName"] = true, ["ipGroupIds"] = true, ["SubnetIds"] = true, ["WorkspaceCreationProperties"] = true, ["Alias"] = true, ["State"] = true, ["DirectoryType"] = true, ["RegistrationCode"] = true, ["IamRoleId"] = true, ["DnsIpAddresses"] = true, ["WorkspaceSecurityGroupId"] = true, nil }

function asserts.AssertWorkspaceDirectory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceDirectory to be of type 'table'")
	if struct["CustomerUserName"] then asserts.AssertUserName(struct["CustomerUserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["DirectoryName"] then asserts.AssertDirectoryName(struct["DirectoryName"]) end
	if struct["ipGroupIds"] then asserts.AssertIpGroupIdList(struct["ipGroupIds"]) end
	if struct["SubnetIds"] then asserts.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["WorkspaceCreationProperties"] then asserts.AssertDefaultWorkspaceCreationProperties(struct["WorkspaceCreationProperties"]) end
	if struct["Alias"] then asserts.AssertAlias(struct["Alias"]) end
	if struct["State"] then asserts.AssertWorkspaceDirectoryState(struct["State"]) end
	if struct["DirectoryType"] then asserts.AssertWorkspaceDirectoryType(struct["DirectoryType"]) end
	if struct["RegistrationCode"] then asserts.AssertRegistrationCode(struct["RegistrationCode"]) end
	if struct["IamRoleId"] then asserts.AssertARN(struct["IamRoleId"]) end
	if struct["DnsIpAddresses"] then asserts.AssertDnsIpAddresses(struct["DnsIpAddresses"]) end
	if struct["WorkspaceSecurityGroupId"] then asserts.AssertSecurityGroupId(struct["WorkspaceSecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkspaceDirectory[k], "WorkspaceDirectory contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceDirectory
-- <p>Information about an AWS Directory Service directory for use with Amazon WorkSpaces.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CustomerUserName [UserName] <p>The user name for the service account.</p>
-- * DirectoryId [DirectoryId] <p>The directory identifier.</p>
-- * DirectoryName [DirectoryName] <p>The name of the directory.</p>
-- * ipGroupIds [IpGroupIdList] <p>The identifiers of the IP access control groups associated with the directory.</p>
-- * SubnetIds [SubnetIds] <p>The identifiers of the subnets used with the directory.</p>
-- * WorkspaceCreationProperties [DefaultWorkspaceCreationProperties] <p>The default creation properties for all WorkSpaces in the directory.</p>
-- * Alias [Alias] <p>The directory alias.</p>
-- * State [WorkspaceDirectoryState] <p>The state of the directory's registration with Amazon WorkSpaces</p>
-- * DirectoryType [WorkspaceDirectoryType] <p>The directory type.</p>
-- * RegistrationCode [RegistrationCode] <p>The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.</p>
-- * IamRoleId [ARN] <p>The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.</p>
-- * DnsIpAddresses [DnsIpAddresses] <p>The IP addresses of the DNS servers for the directory.</p>
-- * WorkspaceSecurityGroupId [SecurityGroupId] <p>The identifier of the security group that is assigned to new WorkSpaces.</p>
-- @return WorkspaceDirectory structure as a key-value pair table
function M.WorkspaceDirectory(args)
	assert(args, "You must provide an argument table when creating WorkspaceDirectory")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CustomerUserName"] = args["CustomerUserName"],
		["DirectoryId"] = args["DirectoryId"],
		["DirectoryName"] = args["DirectoryName"],
		["ipGroupIds"] = args["ipGroupIds"],
		["SubnetIds"] = args["SubnetIds"],
		["WorkspaceCreationProperties"] = args["WorkspaceCreationProperties"],
		["Alias"] = args["Alias"],
		["State"] = args["State"],
		["DirectoryType"] = args["DirectoryType"],
		["RegistrationCode"] = args["RegistrationCode"],
		["IamRoleId"] = args["IamRoleId"],
		["DnsIpAddresses"] = args["DnsIpAddresses"],
		["WorkspaceSecurityGroupId"] = args["WorkspaceSecurityGroupId"],
	}
	asserts.AssertWorkspaceDirectory(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeWorkspaceDirectoriesResult = { ["Directories"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeWorkspaceDirectoriesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspaceDirectoriesResult to be of type 'table'")
	if struct["Directories"] then asserts.AssertDirectoryList(struct["Directories"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkspaceDirectoriesResult[k], "DescribeWorkspaceDirectoriesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspaceDirectoriesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Directories [DirectoryList] <p>Information about the directories.</p>
-- * NextToken [PaginationToken] <p>The token to use to retrieve the next set of results, or null if there are no more results available. This token is valid for one day and must be used within that time frame.</p>
-- @return DescribeWorkspaceDirectoriesResult structure as a key-value pair table
function M.DescribeWorkspaceDirectoriesResult(args)
	assert(args, "You must provide an argument table when creating DescribeWorkspaceDirectoriesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Directories"] = args["Directories"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeWorkspaceDirectoriesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRulesOfIpGroupResult = { nil }

function asserts.AssertUpdateRulesOfIpGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRulesOfIpGroupResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateRulesOfIpGroupResult[k], "UpdateRulesOfIpGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRulesOfIpGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateRulesOfIpGroupResult structure as a key-value pair table
function M.UpdateRulesOfIpGroupResult(args)
	assert(args, "You must provide an argument table when creating UpdateRulesOfIpGroupResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateRulesOfIpGroupResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateIpGroupsRequest = { ["DirectoryId"] = true, ["GroupIds"] = true, nil }

function asserts.AssertAssociateIpGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateIpGroupsRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["GroupIds"], "Expected key GroupIds to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["GroupIds"] then asserts.AssertIpGroupIdList(struct["GroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateIpGroupsRequest[k], "AssociateIpGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateIpGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The ID of the directory.</p>
-- * GroupIds [IpGroupIdList] <p>The IDs of one or more IP access control groups.</p>
-- Required key: DirectoryId
-- Required key: GroupIds
-- @return AssociateIpGroupsRequest structure as a key-value pair table
function M.AssociateIpGroupsRequest(args)
	assert(args, "You must provide an argument table when creating AssociateIpGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["GroupIds"] = args["GroupIds"],
	}
	asserts.AssertAssociateIpGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateIpGroupRequest = { ["GroupName"] = true, ["GroupDesc"] = true, ["UserRules"] = true, nil }

function asserts.AssertCreateIpGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIpGroupRequest to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then asserts.AssertIpGroupName(struct["GroupName"]) end
	if struct["GroupDesc"] then asserts.AssertIpGroupDesc(struct["GroupDesc"]) end
	if struct["UserRules"] then asserts.AssertIpRuleList(struct["UserRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIpGroupRequest[k], "CreateIpGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIpGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [IpGroupName] <p>The name of the group.</p>
-- * GroupDesc [IpGroupDesc] <p>The description of the group.</p>
-- * UserRules [IpRuleList] <p>The rules to add to the group.</p>
-- Required key: GroupName
-- @return CreateIpGroupRequest structure as a key-value pair table
function M.CreateIpGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateIpGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["GroupDesc"] = args["GroupDesc"],
		["UserRules"] = args["UserRules"],
	}
	asserts.AssertCreateIpGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateWorkspacesRequest = { ["Workspaces"] = true, nil }

function asserts.AssertCreateWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWorkspacesRequest to be of type 'table'")
	assert(struct["Workspaces"], "Expected key Workspaces to exist in table")
	if struct["Workspaces"] then asserts.AssertWorkspaceRequestList(struct["Workspaces"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateWorkspacesRequest[k], "CreateWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWorkspacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Workspaces [WorkspaceRequestList] <p>The WorkSpaces to create. You can specify up to 25 WorkSpaces.</p>
-- Required key: Workspaces
-- @return CreateWorkspacesRequest structure as a key-value pair table
function M.CreateWorkspacesRequest(args)
	assert(args, "You must provide an argument table when creating CreateWorkspacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Workspaces"] = args["Workspaces"],
	}
	asserts.AssertCreateWorkspacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeIpRulesRequest = { ["GroupId"] = true, ["UserRules"] = true, nil }

function asserts.AssertRevokeIpRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeIpRulesRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["UserRules"], "Expected key UserRules to exist in table")
	if struct["GroupId"] then asserts.AssertIpGroupId(struct["GroupId"]) end
	if struct["UserRules"] then asserts.AssertIpRevokedRuleList(struct["UserRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeIpRulesRequest[k], "RevokeIpRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeIpRulesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [IpGroupId] <p>The ID of the group.</p>
-- * UserRules [IpRevokedRuleList] <p>The rules to remove from the group.</p>
-- Required key: GroupId
-- Required key: UserRules
-- @return RevokeIpRulesRequest structure as a key-value pair table
function M.RevokeIpRulesRequest(args)
	assert(args, "You must provide an argument table when creating RevokeIpRulesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
		["UserRules"] = args["UserRules"],
	}
	asserts.AssertRevokeIpRulesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeWorkspacesConnectionStatusResult = { ["WorkspacesConnectionStatus"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeWorkspacesConnectionStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspacesConnectionStatusResult to be of type 'table'")
	if struct["WorkspacesConnectionStatus"] then asserts.AssertWorkspaceConnectionStatusList(struct["WorkspacesConnectionStatus"]) end
	if struct["NextToken"] then asserts.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkspacesConnectionStatusResult[k], "DescribeWorkspacesConnectionStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspacesConnectionStatusResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkspacesConnectionStatus [WorkspaceConnectionStatusList] <p>Information about the connection status of the WorkSpace.</p>
-- * NextToken [PaginationToken] <p>The token to use to retrieve the next set of results, or null if there are no more results available.</p>
-- @return DescribeWorkspacesConnectionStatusResult structure as a key-value pair table
function M.DescribeWorkspacesConnectionStatusResult(args)
	assert(args, "You must provide an argument table when creating DescribeWorkspacesConnectionStatusResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkspacesConnectionStatus"] = args["WorkspacesConnectionStatus"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeWorkspacesConnectionStatusResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebootRequest = { ["WorkspaceId"] = true, nil }

function asserts.AssertRebootRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebootRequest[k], "RebootRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootRequest
-- <p>Information used to reboot a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- Required key: WorkspaceId
-- @return RebootRequest structure as a key-value pair table
function M.RebootRequest(args)
	assert(args, "You must provide an argument table when creating RebootRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkspaceId"] = args["WorkspaceId"],
	}
	asserts.AssertRebootRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AuthorizeIpRulesRequest = { ["GroupId"] = true, ["UserRules"] = true, nil }

function asserts.AssertAuthorizeIpRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizeIpRulesRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["UserRules"], "Expected key UserRules to exist in table")
	if struct["GroupId"] then asserts.AssertIpGroupId(struct["GroupId"]) end
	if struct["UserRules"] then asserts.AssertIpRuleList(struct["UserRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizeIpRulesRequest[k], "AuthorizeIpRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizeIpRulesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [IpGroupId] <p>The ID of the group.</p>
-- * UserRules [IpRuleList] <p>The rules to add to the group.</p>
-- Required key: GroupId
-- Required key: UserRules
-- @return AuthorizeIpRulesRequest structure as a key-value pair table
function M.AuthorizeIpRulesRequest(args)
	assert(args, "You must provide an argument table when creating AuthorizeIpRulesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
		["UserRules"] = args["UserRules"],
	}
	asserts.AssertAuthorizeIpRulesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateWorkspacesResult = { ["PendingRequests"] = true, ["FailedRequests"] = true, nil }

function asserts.AssertCreateWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWorkspacesResult to be of type 'table'")
	if struct["PendingRequests"] then asserts.AssertWorkspaceList(struct["PendingRequests"]) end
	if struct["FailedRequests"] then asserts.AssertFailedCreateWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateWorkspacesResult[k], "CreateWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWorkspacesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PendingRequests [WorkspaceList] <p>Information about the WorkSpaces that were created.</p> <p>Because this operation is asynchronous, the identifier returned is not immediately available for use with other operations. For example, if you call <a>DescribeWorkspaces</a> before the WorkSpace is created, the information returned can be incomplete.</p>
-- * FailedRequests [FailedCreateWorkspaceRequests] <p>Information about the WorkSpaces that could not be created.</p>
-- @return CreateWorkspacesResult structure as a key-value pair table
function M.CreateWorkspacesResult(args)
	assert(args, "You must provide an argument table when creating CreateWorkspacesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PendingRequests"] = args["PendingRequests"],
		["FailedRequests"] = args["FailedRequests"],
	}
	asserts.AssertCreateWorkspacesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebuildRequest = { ["WorkspaceId"] = true, nil }

function asserts.AssertRebuildRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebuildRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebuildRequest[k], "RebuildRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebuildRequest
-- <p>Information used to rebuild a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- Required key: WorkspaceId
-- @return RebuildRequest structure as a key-value pair table
function M.RebuildRequest(args)
	assert(args, "You must provide an argument table when creating RebuildRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkspaceId"] = args["WorkspaceId"],
	}
	asserts.AssertRebuildRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateIpGroupsRequest = { ["DirectoryId"] = true, ["GroupIds"] = true, nil }

function asserts.AssertDisassociateIpGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateIpGroupsRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["GroupIds"], "Expected key GroupIds to exist in table")
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["GroupIds"] then asserts.AssertIpGroupIdList(struct["GroupIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateIpGroupsRequest[k], "DisassociateIpGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateIpGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DirectoryId [DirectoryId] <p>The ID of the directory.</p>
-- * GroupIds [IpGroupIdList] <p>The IDs of one or more IP access control groups.</p>
-- Required key: DirectoryId
-- Required key: GroupIds
-- @return DisassociateIpGroupsRequest structure as a key-value pair table
function M.DisassociateIpGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateIpGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DirectoryId"] = args["DirectoryId"],
		["GroupIds"] = args["GroupIds"],
	}
	asserts.AssertDisassociateIpGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartRequest = { ["WorkspaceId"] = true, nil }

function asserts.AssertStartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartRequest to be of type 'table'")
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartRequest[k], "StartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartRequest
-- <p>Information used to start a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- @return StartRequest structure as a key-value pair table
function M.StartRequest(args)
	assert(args, "You must provide an argument table when creating StartRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WorkspaceId"] = args["WorkspaceId"],
	}
	asserts.AssertStartRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ModifyWorkspaceStateResult = { nil }

function asserts.AssertModifyWorkspaceStateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyWorkspaceStateResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ModifyWorkspaceStateResult[k], "ModifyWorkspaceStateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyWorkspaceStateResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ModifyWorkspaceStateResult structure as a key-value pair table
function M.ModifyWorkspaceStateResult(args)
	assert(args, "You must provide an argument table when creating ModifyWorkspaceStateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertModifyWorkspaceStateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WorkspaceBundle = { ["ComputeType"] = true, ["Description"] = true, ["RootStorage"] = true, ["BundleId"] = true, ["Owner"] = true, ["UserStorage"] = true, ["Name"] = true, nil }

function asserts.AssertWorkspaceBundle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceBundle to be of type 'table'")
	if struct["ComputeType"] then asserts.AssertComputeType(struct["ComputeType"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["RootStorage"] then asserts.AssertRootStorage(struct["RootStorage"]) end
	if struct["BundleId"] then asserts.AssertBundleId(struct["BundleId"]) end
	if struct["Owner"] then asserts.AssertBundleOwner(struct["Owner"]) end
	if struct["UserStorage"] then asserts.AssertUserStorage(struct["UserStorage"]) end
	if struct["Name"] then asserts.AssertNonEmptyString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkspaceBundle[k], "WorkspaceBundle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceBundle
-- <p>Information about a WorkSpace bundle.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComputeType [ComputeType] <p>The compute type. For more information, see <a href="http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles">Amazon WorkSpaces Bundles</a>.</p>
-- * Description [Description] <p>A description.</p>
-- * RootStorage [RootStorage] <p>The size of the root volume.</p>
-- * BundleId [BundleId] <p>The bundle identifier.</p>
-- * Owner [BundleOwner] <p>The owner of the bundle. This is the account identifier of the owner, or <code>AMAZON</code> if the bundle is provided by AWS.</p>
-- * UserStorage [UserStorage] <p>The size of the user storage.</p>
-- * Name [NonEmptyString] <p>The name of the bundle.</p>
-- @return WorkspaceBundle structure as a key-value pair table
function M.WorkspaceBundle(args)
	assert(args, "You must provide an argument table when creating WorkspaceBundle")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComputeType"] = args["ComputeType"],
		["Description"] = args["Description"],
		["RootStorage"] = args["RootStorage"],
		["BundleId"] = args["BundleId"],
		["Owner"] = args["Owner"],
		["UserStorage"] = args["UserStorage"],
		["Name"] = args["Name"],
	}
	asserts.AssertWorkspaceBundle(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WorkspaceConnectionStatus = { ["ConnectionState"] = true, ["ConnectionStateCheckTimestamp"] = true, ["WorkspaceId"] = true, ["LastKnownUserConnectionTimestamp"] = true, nil }

function asserts.AssertWorkspaceConnectionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceConnectionStatus to be of type 'table'")
	if struct["ConnectionState"] then asserts.AssertConnectionState(struct["ConnectionState"]) end
	if struct["ConnectionStateCheckTimestamp"] then asserts.AssertTimestamp(struct["ConnectionStateCheckTimestamp"]) end
	if struct["WorkspaceId"] then asserts.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["LastKnownUserConnectionTimestamp"] then asserts.AssertTimestamp(struct["LastKnownUserConnectionTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkspaceConnectionStatus[k], "WorkspaceConnectionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceConnectionStatus
-- <p>Describes the connection status of a WorkSpace.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionState [ConnectionState] <p>The connection state of the WorkSpace. The connection state is unknown if the WorkSpace is stopped.</p>
-- * ConnectionStateCheckTimestamp [Timestamp] <p>The timestamp of the connection state check.</p>
-- * WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- * LastKnownUserConnectionTimestamp [Timestamp] <p>The timestamp of the last known user connection.</p>
-- @return WorkspaceConnectionStatus structure as a key-value pair table
function M.WorkspaceConnectionStatus(args)
	assert(args, "You must provide an argument table when creating WorkspaceConnectionStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionState"] = args["ConnectionState"],
		["ConnectionStateCheckTimestamp"] = args["ConnectionStateCheckTimestamp"],
		["WorkspaceId"] = args["WorkspaceId"],
		["LastKnownUserConnectionTimestamp"] = args["LastKnownUserConnectionTimestamp"],
	}
	asserts.AssertWorkspaceConnectionStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebuildWorkspacesResult = { ["FailedRequests"] = true, nil }

function asserts.AssertRebuildWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebuildWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then asserts.AssertFailedRebuildWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebuildWorkspacesResult[k], "RebuildWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebuildWorkspacesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedRequests [FailedRebuildWorkspaceRequests] <p>Information about the WorkSpace if it could not be rebuilt.</p>
-- @return RebuildWorkspacesResult structure as a key-value pair table
function M.RebuildWorkspacesResult(args)
	assert(args, "You must provide an argument table when creating RebuildWorkspacesResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedRequests"] = args["FailedRequests"],
	}
	asserts.AssertRebuildWorkspacesResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RebuildWorkspacesRequest = { ["RebuildWorkspaceRequests"] = true, nil }

function asserts.AssertRebuildWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebuildWorkspacesRequest to be of type 'table'")
	assert(struct["RebuildWorkspaceRequests"], "Expected key RebuildWorkspaceRequests to exist in table")
	if struct["RebuildWorkspaceRequests"] then asserts.AssertRebuildWorkspaceRequests(struct["RebuildWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(keys.RebuildWorkspacesRequest[k], "RebuildWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebuildWorkspacesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RebuildWorkspaceRequests [RebuildWorkspaceRequests] <p>The WorkSpace to rebuild. You can specify a single WorkSpace.</p>
-- Required key: RebuildWorkspaceRequests
-- @return RebuildWorkspacesRequest structure as a key-value pair table
function M.RebuildWorkspacesRequest(args)
	assert(args, "You must provide an argument table when creating RebuildWorkspacesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RebuildWorkspaceRequests"] = args["RebuildWorkspaceRequests"],
	}
	asserts.AssertRebuildWorkspacesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FailedCreateWorkspaceRequest = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["WorkspaceRequest"] = true, nil }

function asserts.AssertFailedCreateWorkspaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedCreateWorkspaceRequest to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorType(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertDescription(struct["ErrorMessage"]) end
	if struct["WorkspaceRequest"] then asserts.AssertWorkspaceRequest(struct["WorkspaceRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedCreateWorkspaceRequest[k], "FailedCreateWorkspaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedCreateWorkspaceRequest
-- <p>Information about a WorkSpace that could not be created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorType] <p>The error code.</p>
-- * ErrorMessage [Description] <p>The textual error message.</p>
-- * WorkspaceRequest [WorkspaceRequest] <p>Information about the WorkSpace.</p>
-- @return FailedCreateWorkspaceRequest structure as a key-value pair table
function M.FailedCreateWorkspaceRequest(args)
	assert(args, "You must provide an argument table when creating FailedCreateWorkspaceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["WorkspaceRequest"] = args["WorkspaceRequest"],
	}
	asserts.AssertFailedCreateWorkspaceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected UserName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserName(str)
	asserts.AssertUserName(str)
	return str
end

function asserts.AssertWorkspaceErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceErrorCode to be of type 'string'")
end

--  
function M.WorkspaceErrorCode(str)
	asserts.AssertWorkspaceErrorCode(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 127, "Expected string to be max 127 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertWorkspaceState(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceState to be of type 'string'")
end

--  
function M.WorkspaceState(str)
	asserts.AssertWorkspaceState(str)
	return str
end

function asserts.AssertDefaultOu(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultOu to be of type 'string'")
end

--  
function M.DefaultOu(str)
	asserts.AssertDefaultOu(str)
	return str
end

function asserts.AssertRunningMode(str)
	assert(str)
	assert(type(str) == "string", "Expected RunningMode to be of type 'string'")
end

--  
function M.RunningMode(str)
	asserts.AssertRunningMode(str)
	return str
end

function asserts.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonEmptyString(str)
	asserts.AssertNonEmptyString(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertRegistrationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationCode to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RegistrationCode(str)
	asserts.AssertRegistrationCode(str)
	return str
end

function asserts.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
end

--  
function M.SubnetId(str)
	asserts.AssertSubnetId(str)
	return str
end

function asserts.AssertIpRuleDesc(str)
	assert(str)
	assert(type(str) == "string", "Expected IpRuleDesc to be of type 'string'")
end

--  
function M.IpRuleDesc(str)
	asserts.AssertIpRuleDesc(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertVolumeEncryptionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeEncryptionKey to be of type 'string'")
end

--  
function M.VolumeEncryptionKey(str)
	asserts.AssertVolumeEncryptionKey(str)
	return str
end

function asserts.AssertDirectoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryName to be of type 'string'")
end

--  
function M.DirectoryName(str)
	asserts.AssertDirectoryName(str)
	return str
end

function asserts.AssertAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected Alias to be of type 'string'")
end

--  
function M.Alias(str)
	asserts.AssertAlias(str)
	return str
end

function asserts.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
end

--  
function M.SecurityGroupId(str)
	asserts.AssertSecurityGroupId(str)
	return str
end

function asserts.AssertModificationStateEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ModificationStateEnum to be of type 'string'")
end

--  
function M.ModificationStateEnum(str)
	asserts.AssertModificationStateEnum(str)
	return str
end

function asserts.AssertDirectoryId(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryId to be of type 'string'")
end

--  
function M.DirectoryId(str)
	asserts.AssertDirectoryId(str)
	return str
end

function asserts.AssertWorkspaceDirectoryType(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceDirectoryType to be of type 'string'")
end

--  
function M.WorkspaceDirectoryType(str)
	asserts.AssertWorkspaceDirectoryType(str)
	return str
end

function asserts.AssertIpGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected IpGroupName to be of type 'string'")
end

--  
function M.IpGroupName(str)
	asserts.AssertIpGroupName(str)
	return str
end

function asserts.AssertTargetWorkspaceState(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetWorkspaceState to be of type 'string'")
end

--  
function M.TargetWorkspaceState(str)
	asserts.AssertTargetWorkspaceState(str)
	return str
end

function asserts.AssertComputerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputerName to be of type 'string'")
end

--  
function M.ComputerName(str)
	asserts.AssertComputerName(str)
	return str
end

function asserts.AssertCompute(str)
	assert(str)
	assert(type(str) == "string", "Expected Compute to be of type 'string'")
end

--  
function M.Compute(str)
	asserts.AssertCompute(str)
	return str
end

function asserts.AssertModificationResourceEnum(str)
	assert(str)
	assert(type(str) == "string", "Expected ModificationResourceEnum to be of type 'string'")
end

--  
function M.ModificationResourceEnum(str)
	asserts.AssertModificationResourceEnum(str)
	return str
end

function asserts.AssertWorkspaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceId to be of type 'string'")
end

--  
function M.WorkspaceId(str)
	asserts.AssertWorkspaceId(str)
	return str
end

function asserts.AssertErrorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorType to be of type 'string'")
end

--  
function M.ErrorType(str)
	asserts.AssertErrorType(str)
	return str
end

function asserts.AssertBundleOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleOwner to be of type 'string'")
end

--  
function M.BundleOwner(str)
	asserts.AssertBundleOwner(str)
	return str
end

function asserts.AssertWorkspaceDirectoryState(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceDirectoryState to be of type 'string'")
end

--  
function M.WorkspaceDirectoryState(str)
	asserts.AssertWorkspaceDirectoryState(str)
	return str
end

function asserts.AssertIpGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected IpGroupId to be of type 'string'")
end

--  
function M.IpGroupId(str)
	asserts.AssertIpGroupId(str)
	return str
end

function asserts.AssertIpGroupDesc(str)
	assert(str)
	assert(type(str) == "string", "Expected IpGroupDesc to be of type 'string'")
end

--  
function M.IpGroupDesc(str)
	asserts.AssertIpGroupDesc(str)
	return str
end

function asserts.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	asserts.AssertIpAddress(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertConnectionState(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionState to be of type 'string'")
end

--  
function M.ConnectionState(str)
	asserts.AssertConnectionState(str)
	return str
end

function asserts.AssertBundleId(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleId to be of type 'string'")
end

--  
function M.BundleId(str)
	asserts.AssertBundleId(str)
	return str
end

function asserts.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
end

--  
function M.ARN(str)
	asserts.AssertARN(str)
	return str
end

function asserts.AssertIpRule(str)
	assert(str)
	assert(type(str) == "string", "Expected IpRule to be of type 'string'")
end

--  
function M.IpRule(str)
	asserts.AssertIpRule(str)
	return str
end

function asserts.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 25, "Expected integer to be max 25")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Limit(integer)
	asserts.AssertLimit(integer)
	return integer
end

function asserts.AssertRootVolumeSizeGib(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RootVolumeSizeGib to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RootVolumeSizeGib(integer)
	asserts.AssertRootVolumeSizeGib(integer)
	return integer
end

function asserts.AssertRunningModeAutoStopTimeoutInMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RunningModeAutoStopTimeoutInMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RunningModeAutoStopTimeoutInMinutes(integer)
	asserts.AssertRunningModeAutoStopTimeoutInMinutes(integer)
	return integer
end

function asserts.AssertUserVolumeSizeGib(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected UserVolumeSizeGib to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.UserVolumeSizeGib(integer)
	asserts.AssertUserVolumeSizeGib(integer)
	return integer
end

function asserts.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	asserts.AssertBooleanObject(boolean)
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

function asserts.AssertDirectoryIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDirectoryId(v)
	end
end

--  
-- List of DirectoryId objects
function M.DirectoryIdList(list)
	asserts.AssertDirectoryIdList(list)
	return list
end

function asserts.AssertTerminateWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected TerminateWorkspaceRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTerminateRequest(v)
	end
end

--  
-- List of TerminateRequest objects
function M.TerminateWorkspaceRequests(list)
	asserts.AssertTerminateWorkspaceRequests(list)
	return list
end

function asserts.AssertBundleIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected BundleIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertBundleId(v)
	end
end

--  
-- List of BundleId objects
function M.BundleIdList(list)
	asserts.AssertBundleIdList(list)
	return list
end

function asserts.AssertBundleList(list)
	assert(list)
	assert(type(list) == "table", "Expected BundleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWorkspaceBundle(v)
	end
end

--  
-- List of WorkspaceBundle objects
function M.BundleList(list)
	asserts.AssertBundleList(list)
	return list
end

function asserts.AssertStopWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected StopWorkspaceRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertStopRequest(v)
	end
end

--  
-- List of StopRequest objects
function M.StopWorkspaceRequests(list)
	asserts.AssertStopWorkspaceRequests(list)
	return list
end

function asserts.AssertIpRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected IpRuleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpRuleItem(v)
	end
end

--  
-- List of IpRuleItem objects
function M.IpRuleList(list)
	asserts.AssertIpRuleList(list)
	return list
end

function asserts.AssertWorkspaceList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspaceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWorkspace(v)
	end
end

--  
-- List of Workspace objects
function M.WorkspaceList(list)
	asserts.AssertWorkspaceList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertSubnetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.SubnetIds(list)
	asserts.AssertSubnetIds(list)
	return list
end

function asserts.AssertStartWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected StartWorkspaceRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertStartRequest(v)
	end
end

--  
-- List of StartRequest objects
function M.StartWorkspaceRequests(list)
	asserts.AssertStartWorkspaceRequests(list)
	return list
end

function asserts.AssertDnsIpAddresses(list)
	assert(list)
	assert(type(list) == "table", "Expected DnsIpAddresses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpAddress(v)
	end
end

--  
-- List of IpAddress objects
function M.DnsIpAddresses(list)
	asserts.AssertDnsIpAddresses(list)
	return list
end

function asserts.AssertIpRevokedRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected IpRevokedRuleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpRule(v)
	end
end

--  
-- List of IpRule objects
function M.IpRevokedRuleList(list)
	asserts.AssertIpRevokedRuleList(list)
	return list
end

function asserts.AssertDirectoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWorkspaceDirectory(v)
	end
end

--  
-- List of WorkspaceDirectory objects
function M.DirectoryList(list)
	asserts.AssertDirectoryList(list)
	return list
end

function asserts.AssertWorkspaceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspaceIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertWorkspaceId(v)
	end
end

--  
-- List of WorkspaceId objects
function M.WorkspaceIdList(list)
	asserts.AssertWorkspaceIdList(list)
	return list
end

function asserts.AssertFailedStopWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedStopWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedStopWorkspaceRequests(list)
	asserts.AssertFailedStopWorkspaceRequests(list)
	return list
end

function asserts.AssertRebootWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected RebootWorkspaceRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRebootRequest(v)
	end
end

--  
-- List of RebootRequest objects
function M.RebootWorkspaceRequests(list)
	asserts.AssertRebootWorkspaceRequests(list)
	return list
end

function asserts.AssertFailedRebootWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedRebootWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedRebootWorkspaceRequests(list)
	asserts.AssertFailedRebootWorkspaceRequests(list)
	return list
end

function asserts.AssertWorkspaceConnectionStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspaceConnectionStatusList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWorkspaceConnectionStatus(v)
	end
end

--  
-- List of WorkspaceConnectionStatus objects
function M.WorkspaceConnectionStatusList(list)
	asserts.AssertWorkspaceConnectionStatusList(list)
	return list
end

function asserts.AssertWorkspaceRequestList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspaceRequestList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertWorkspaceRequest(v)
	end
end

--  
-- List of WorkspaceRequest objects
function M.WorkspaceRequestList(list)
	asserts.AssertWorkspaceRequestList(list)
	return list
end

function asserts.AssertIpGroupIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected IpGroupIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIpGroupId(v)
	end
end

--  
-- List of IpGroupId objects
function M.IpGroupIdList(list)
	asserts.AssertIpGroupIdList(list)
	return list
end

function asserts.AssertFailedStartWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedStartWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedStartWorkspaceRequests(list)
	asserts.AssertFailedStartWorkspaceRequests(list)
	return list
end

function asserts.AssertFailedTerminateWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedTerminateWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedTerminateWorkspaceRequests(list)
	asserts.AssertFailedTerminateWorkspaceRequests(list)
	return list
end

function asserts.AssertModificationStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected ModificationStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertModificationState(v)
	end
end

--  
-- List of ModificationState objects
function M.ModificationStateList(list)
	asserts.AssertModificationStateList(list)
	return list
end

function asserts.AssertFailedCreateWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedCreateWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedCreateWorkspaceRequest(v)
	end
end

--  
-- List of FailedCreateWorkspaceRequest objects
function M.FailedCreateWorkspaceRequests(list)
	asserts.AssertFailedCreateWorkspaceRequests(list)
	return list
end

function asserts.AssertWorkspacesIpGroupsList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspacesIpGroupsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWorkspacesIpGroup(v)
	end
end

--  
-- List of WorkspacesIpGroup objects
function M.WorkspacesIpGroupsList(list)
	asserts.AssertWorkspacesIpGroupsList(list)
	return list
end

function asserts.AssertFailedRebuildWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedRebuildWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedRebuildWorkspaceRequests(list)
	asserts.AssertFailedRebuildWorkspaceRequests(list)
	return list
end

function asserts.AssertRebuildWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected RebuildWorkspaceRequests to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRebuildRequest(v)
	end
end

--  
-- List of RebuildRequest objects
function M.RebuildWorkspaceRequests(list)
	asserts.AssertRebuildWorkspaceRequests(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "workspaces.amazonaws.com"
		end
	end
	local ss = { "workspaces" }
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
--- Call DeleteTags asynchronously, invoking a callback when done
-- @param DeleteTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTagsAsync(DeleteTagsRequest, cb)
	assert(DeleteTagsRequest, "You must provide a DeleteTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DeleteTags",
	}
	for header,value in pairs(DeleteTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTagsSync(DeleteTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTagsAsync(DeleteTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateWorkspaces asynchronously, invoking a callback when done
-- @param TerminateWorkspacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TerminateWorkspacesAsync(TerminateWorkspacesRequest, cb)
	assert(TerminateWorkspacesRequest, "You must provide a TerminateWorkspacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.TerminateWorkspaces",
	}
	for header,value in pairs(TerminateWorkspacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TerminateWorkspacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TerminateWorkspaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TerminateWorkspacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TerminateWorkspacesSync(TerminateWorkspacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateWorkspacesAsync(TerminateWorkspacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkspaceBundles asynchronously, invoking a callback when done
-- @param DescribeWorkspaceBundlesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeWorkspaceBundlesAsync(DescribeWorkspaceBundlesRequest, cb)
	assert(DescribeWorkspaceBundlesRequest, "You must provide a DescribeWorkspaceBundlesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeWorkspaceBundles",
	}
	for header,value in pairs(DescribeWorkspaceBundlesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeWorkspaceBundlesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkspaceBundles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkspaceBundlesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeWorkspaceBundlesSync(DescribeWorkspaceBundlesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkspaceBundlesAsync(DescribeWorkspaceBundlesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeIpGroups asynchronously, invoking a callback when done
-- @param DescribeIpGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeIpGroupsAsync(DescribeIpGroupsRequest, cb)
	assert(DescribeIpGroupsRequest, "You must provide a DescribeIpGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeIpGroups",
	}
	for header,value in pairs(DescribeIpGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeIpGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeIpGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeIpGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeIpGroupsSync(DescribeIpGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeIpGroupsAsync(DescribeIpGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebootWorkspaces asynchronously, invoking a callback when done
-- @param RebootWorkspacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebootWorkspacesAsync(RebootWorkspacesRequest, cb)
	assert(RebootWorkspacesRequest, "You must provide a RebootWorkspacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.RebootWorkspaces",
	}
	for header,value in pairs(RebootWorkspacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RebootWorkspacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebootWorkspaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebootWorkspacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RebootWorkspacesSync(RebootWorkspacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebootWorkspacesAsync(RebootWorkspacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateWorkspaces asynchronously, invoking a callback when done
-- @param CreateWorkspacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateWorkspacesAsync(CreateWorkspacesRequest, cb)
	assert(CreateWorkspacesRequest, "You must provide a CreateWorkspacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.CreateWorkspaces",
	}
	for header,value in pairs(CreateWorkspacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateWorkspacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateWorkspaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateWorkspacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateWorkspacesSync(CreateWorkspacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateWorkspacesAsync(CreateWorkspacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyWorkspaceState asynchronously, invoking a callback when done
-- @param ModifyWorkspaceStateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyWorkspaceStateAsync(ModifyWorkspaceStateRequest, cb)
	assert(ModifyWorkspaceStateRequest, "You must provide a ModifyWorkspaceStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.ModifyWorkspaceState",
	}
	for header,value in pairs(ModifyWorkspaceStateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyWorkspaceStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyWorkspaceState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyWorkspaceStateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyWorkspaceStateSync(ModifyWorkspaceStateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyWorkspaceStateAsync(ModifyWorkspaceStateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRulesOfIpGroup asynchronously, invoking a callback when done
-- @param UpdateRulesOfIpGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRulesOfIpGroupAsync(UpdateRulesOfIpGroupRequest, cb)
	assert(UpdateRulesOfIpGroupRequest, "You must provide a UpdateRulesOfIpGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.UpdateRulesOfIpGroup",
	}
	for header,value in pairs(UpdateRulesOfIpGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRulesOfIpGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRulesOfIpGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRulesOfIpGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRulesOfIpGroupSync(UpdateRulesOfIpGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRulesOfIpGroupAsync(UpdateRulesOfIpGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyWorkspaceProperties asynchronously, invoking a callback when done
-- @param ModifyWorkspacePropertiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ModifyWorkspacePropertiesAsync(ModifyWorkspacePropertiesRequest, cb)
	assert(ModifyWorkspacePropertiesRequest, "You must provide a ModifyWorkspacePropertiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.ModifyWorkspaceProperties",
	}
	for header,value in pairs(ModifyWorkspacePropertiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyWorkspacePropertiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyWorkspaceProperties synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyWorkspacePropertiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ModifyWorkspacePropertiesSync(ModifyWorkspacePropertiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyWorkspacePropertiesAsync(ModifyWorkspacePropertiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIpGroup asynchronously, invoking a callback when done
-- @param DeleteIpGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteIpGroupAsync(DeleteIpGroupRequest, cb)
	assert(DeleteIpGroupRequest, "You must provide a DeleteIpGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DeleteIpGroup",
	}
	for header,value in pairs(DeleteIpGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteIpGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIpGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIpGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteIpGroupSync(DeleteIpGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIpGroupAsync(DeleteIpGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkspaces asynchronously, invoking a callback when done
-- @param DescribeWorkspacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeWorkspacesAsync(DescribeWorkspacesRequest, cb)
	assert(DescribeWorkspacesRequest, "You must provide a DescribeWorkspacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeWorkspaces",
	}
	for header,value in pairs(DescribeWorkspacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeWorkspacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkspaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkspacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeWorkspacesSync(DescribeWorkspacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkspacesAsync(DescribeWorkspacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateIpGroups asynchronously, invoking a callback when done
-- @param DisassociateIpGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateIpGroupsAsync(DisassociateIpGroupsRequest, cb)
	assert(DisassociateIpGroupsRequest, "You must provide a DisassociateIpGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DisassociateIpGroups",
	}
	for header,value in pairs(DisassociateIpGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateIpGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateIpGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateIpGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateIpGroupsSync(DisassociateIpGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateIpGroupsAsync(DisassociateIpGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeIpRules asynchronously, invoking a callback when done
-- @param RevokeIpRulesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RevokeIpRulesAsync(RevokeIpRulesRequest, cb)
	assert(RevokeIpRulesRequest, "You must provide a RevokeIpRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.RevokeIpRules",
	}
	for header,value in pairs(RevokeIpRulesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeIpRulesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeIpRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeIpRulesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RevokeIpRulesSync(RevokeIpRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeIpRulesAsync(RevokeIpRulesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopWorkspaces asynchronously, invoking a callback when done
-- @param StopWorkspacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopWorkspacesAsync(StopWorkspacesRequest, cb)
	assert(StopWorkspacesRequest, "You must provide a StopWorkspacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.StopWorkspaces",
	}
	for header,value in pairs(StopWorkspacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopWorkspacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopWorkspaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopWorkspacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopWorkspacesSync(StopWorkspacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopWorkspacesAsync(StopWorkspacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartWorkspaces asynchronously, invoking a callback when done
-- @param StartWorkspacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartWorkspacesAsync(StartWorkspacesRequest, cb)
	assert(StartWorkspacesRequest, "You must provide a StartWorkspacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.StartWorkspaces",
	}
	for header,value in pairs(StartWorkspacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartWorkspacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartWorkspaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartWorkspacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartWorkspacesSync(StartWorkspacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartWorkspacesAsync(StartWorkspacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RebuildWorkspaces asynchronously, invoking a callback when done
-- @param RebuildWorkspacesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RebuildWorkspacesAsync(RebuildWorkspacesRequest, cb)
	assert(RebuildWorkspacesRequest, "You must provide a RebuildWorkspacesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.RebuildWorkspaces",
	}
	for header,value in pairs(RebuildWorkspacesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RebuildWorkspacesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RebuildWorkspaces synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RebuildWorkspacesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RebuildWorkspacesSync(RebuildWorkspacesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RebuildWorkspacesAsync(RebuildWorkspacesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTags asynchronously, invoking a callback when done
-- @param DescribeTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeTags",
	}
	for header,value in pairs(DescribeTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTagsSync(DescribeTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTagsAsync(DescribeTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateIpGroup asynchronously, invoking a callback when done
-- @param CreateIpGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateIpGroupAsync(CreateIpGroupRequest, cb)
	assert(CreateIpGroupRequest, "You must provide a CreateIpGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.CreateIpGroup",
	}
	for header,value in pairs(CreateIpGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateIpGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateIpGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateIpGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateIpGroupSync(CreateIpGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateIpGroupAsync(CreateIpGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTags asynchronously, invoking a callback when done
-- @param CreateTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTagsAsync(CreateTagsRequest, cb)
	assert(CreateTagsRequest, "You must provide a CreateTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.CreateTags",
	}
	for header,value in pairs(CreateTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTagsSync(CreateTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTagsAsync(CreateTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkspaceDirectories asynchronously, invoking a callback when done
-- @param DescribeWorkspaceDirectoriesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeWorkspaceDirectoriesAsync(DescribeWorkspaceDirectoriesRequest, cb)
	assert(DescribeWorkspaceDirectoriesRequest, "You must provide a DescribeWorkspaceDirectoriesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeWorkspaceDirectories",
	}
	for header,value in pairs(DescribeWorkspaceDirectoriesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeWorkspaceDirectoriesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkspaceDirectories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkspaceDirectoriesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeWorkspaceDirectoriesSync(DescribeWorkspaceDirectoriesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkspaceDirectoriesAsync(DescribeWorkspaceDirectoriesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkspacesConnectionStatus asynchronously, invoking a callback when done
-- @param DescribeWorkspacesConnectionStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeWorkspacesConnectionStatusAsync(DescribeWorkspacesConnectionStatusRequest, cb)
	assert(DescribeWorkspacesConnectionStatusRequest, "You must provide a DescribeWorkspacesConnectionStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeWorkspacesConnectionStatus",
	}
	for header,value in pairs(DescribeWorkspacesConnectionStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeWorkspacesConnectionStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkspacesConnectionStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkspacesConnectionStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeWorkspacesConnectionStatusSync(DescribeWorkspacesConnectionStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkspacesConnectionStatusAsync(DescribeWorkspacesConnectionStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateIpGroups asynchronously, invoking a callback when done
-- @param AssociateIpGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateIpGroupsAsync(AssociateIpGroupsRequest, cb)
	assert(AssociateIpGroupsRequest, "You must provide a AssociateIpGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.AssociateIpGroups",
	}
	for header,value in pairs(AssociateIpGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateIpGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateIpGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateIpGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateIpGroupsSync(AssociateIpGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateIpGroupsAsync(AssociateIpGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AuthorizeIpRules asynchronously, invoking a callback when done
-- @param AuthorizeIpRulesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AuthorizeIpRulesAsync(AuthorizeIpRulesRequest, cb)
	assert(AuthorizeIpRulesRequest, "You must provide a AuthorizeIpRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "WorkspacesService.AuthorizeIpRules",
	}
	for header,value in pairs(AuthorizeIpRulesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AuthorizeIpRulesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AuthorizeIpRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AuthorizeIpRulesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AuthorizeIpRulesSync(AuthorizeIpRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AuthorizeIpRulesAsync(AuthorizeIpRulesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
