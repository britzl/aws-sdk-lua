--- GENERATED CODE - DO NOT MODIFY
-- AWS Resource Groups (resource-groups-2017-11-27)

local M = {}

M.metadata = {
	api_version = "2017-11-27",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "resource-groups",
	service_abbreviation = "Resource Groups",
	service_full_name = "AWS Resource Groups",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "resource-groups-2017-11-27",
}

local keys = {}
local asserts = {}

keys.SearchResourcesInput = { ["NextToken"] = true, ["ResourceQuery"] = true, ["MaxResults"] = true, nil }

function asserts.AssertSearchResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchResourcesInput to be of type 'table'")
	assert(struct["ResourceQuery"], "Expected key ResourceQuery to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ResourceQuery"] then asserts.AssertResourceQuery(struct["ResourceQuery"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchResourcesInput[k], "SearchResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchResourcesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The NextToken value that is returned in a paginated <code>SearchResources</code> request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.</p>
-- * ResourceQuery [ResourceQuery] <p>The search query, using the same formats that are supported for resource group definition.</p>
-- * MaxResults [MaxResults] <p>The maximum number of group member ARNs returned by <code>SearchResources</code> in paginated output. By default, this number is 50.</p>
-- Required key: ResourceQuery
-- @return SearchResourcesInput structure as a key-value pair table
function M.SearchResourcesInput(args)
	assert(args, "You must provide an argument table when creating SearchResourcesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ResourceQuery"] = args["ResourceQuery"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertSearchResourcesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Group = { ["GroupArn"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Group to be of type 'table'")
	assert(struct["GroupArn"], "Expected key GroupArn to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["GroupArn"] then asserts.AssertGroupArn(struct["GroupArn"]) end
	if struct["Name"] then asserts.AssertGroupName(struct["Name"]) end
	if struct["Description"] then asserts.AssertGroupDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Group[k], "Group contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Group
-- <p>A resource group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupArn [GroupArn] <p>The ARN of a resource group.</p>
-- * Name [GroupName] <p>The name of a resource group.</p>
-- * Description [GroupDescription] <p>The description of the resource group.</p>
-- Required key: GroupArn
-- Required key: Name
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
		["GroupArn"] = args["GroupArn"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagInput = { ["Keys"] = true, ["Arn"] = true, nil }

function asserts.AssertUntagInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagInput to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["Keys"], "Expected key Keys to exist in table")
	if struct["Keys"] then asserts.AssertTagKeyList(struct["Keys"]) end
	if struct["Arn"] then asserts.AssertGroupArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagInput[k], "UntagInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Keys [TagKeyList] <p>The keys of the tags to be removed.</p>
-- * Arn [GroupArn] <p>The ARN of the resource from which to remove tags.</p>
-- Required key: Arn
-- Required key: Keys
-- @return UntagInput structure as a key-value pair table
function M.UntagInput(args)
	assert(args, "You must provide an argument table when creating UntagInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{Arn}"] = args["Arn"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Keys"] = args["Keys"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUntagInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupResourcesOutput = { ["NextToken"] = true, ["ResourceIdentifiers"] = true, nil }

function asserts.AssertListGroupResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupResourcesOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ResourceIdentifiers"] then asserts.AssertResourceIdentifierList(struct["ResourceIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupResourcesOutput[k], "ListGroupResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupResourcesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The NextToken value to include in a subsequent <code>ListGroupResources</code> request, to get more results.</p>
-- * ResourceIdentifiers [ResourceIdentifierList] <p>The ARNs and resource types of resources that are members of the group that you specified.</p>
-- @return ListGroupResourcesOutput structure as a key-value pair table
function M.ListGroupResourcesOutput(args)
	assert(args, "You must provide an argument table when creating ListGroupResourcesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ResourceIdentifiers"] = args["ResourceIdentifiers"],
	}
	asserts.AssertListGroupResourcesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchResourcesOutput = { ["NextToken"] = true, ["ResourceIdentifiers"] = true, nil }

function asserts.AssertSearchResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchResourcesOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ResourceIdentifiers"] then asserts.AssertResourceIdentifierList(struct["ResourceIdentifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchResourcesOutput[k], "SearchResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchResourcesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The NextToken value to include in a subsequent <code>SearchResources</code> request, to get more results.</p>
-- * ResourceIdentifiers [ResourceIdentifierList] <p>The ARNs and resource types of resources that are members of the group that you specified.</p>
-- @return SearchResourcesOutput structure as a key-value pair table
function M.SearchResourcesOutput(args)
	assert(args, "You must provide an argument table when creating SearchResourcesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ResourceIdentifiers"] = args["ResourceIdentifiers"],
	}
	asserts.AssertSearchResourcesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGroupOutput = { ["Group"] = true, nil }

function asserts.AssertGetGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupOutput to be of type 'table'")
	if struct["Group"] then asserts.AssertGroup(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupOutput[k], "GetGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Group [Group] <p>A full description of the resource group.</p>
-- @return GetGroupOutput structure as a key-value pair table
function M.GetGroupOutput(args)
	assert(args, "You must provide an argument table when creating GetGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Group"] = args["Group"],
	}
	asserts.AssertGetGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceQuery = { ["Query"] = true, ["Type"] = true, nil }

function asserts.AssertResourceQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceQuery to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Query"], "Expected key Query to exist in table")
	if struct["Query"] then asserts.AssertQuery(struct["Query"]) end
	if struct["Type"] then asserts.AssertQueryType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceQuery[k], "ResourceQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceQuery
-- <p>The query that is used to define a resource group or a search for resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Query [Query] <p>The query that defines a group or a search.</p>
-- * Type [QueryType] <p>The type of the query. The valid value in this release is <code>TAG_FILTERS_1_0</code>.</p> <p> <i> <code>TAG_FILTERS_1_0:</code> </i> A JSON syntax that lets you specify a collection of simple tag filters for resource types and tags, as supported by the AWS Tagging API GetResources operation. When more than one element is present, only resources that match all filters are part of the result. If a filter specifies more than one value for a key, a resource matches the filter if its tag value matches any of the specified values.</p>
-- Required key: Type
-- Required key: Query
-- @return ResourceQuery structure as a key-value pair table
function M.ResourceQuery(args)
	assert(args, "You must provide an argument table when creating ResourceQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Query"] = args["Query"],
		["Type"] = args["Type"],
	}
	asserts.AssertResourceQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GroupQuery = { ["GroupName"] = true, ["ResourceQuery"] = true, nil }

function asserts.AssertGroupQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupQuery to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["ResourceQuery"], "Expected key ResourceQuery to exist in table")
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	if struct["ResourceQuery"] then asserts.AssertResourceQuery(struct["ResourceQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupQuery[k], "GroupQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupQuery
-- <p>The underlying resource query of a resource group. Resources that match query results are part of the group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupName] <p>The name of a resource group that is associated with a specific resource query.</p>
-- * ResourceQuery [ResourceQuery] <p>The resource query which determines which AWS resources are members of the associated resource group.</p>
-- Required key: GroupName
-- Required key: ResourceQuery
-- @return GroupQuery structure as a key-value pair table
function M.GroupQuery(args)
	assert(args, "You must provide an argument table when creating GroupQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["ResourceQuery"] = args["ResourceQuery"],
	}
	asserts.AssertGroupQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupsOutput = { ["GroupIdentifiers"] = true, ["NextToken"] = true, ["Groups"] = true, nil }

function asserts.AssertListGroupsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsOutput to be of type 'table'")
	if struct["GroupIdentifiers"] then asserts.AssertGroupIdentifierList(struct["GroupIdentifiers"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Groups"] then asserts.AssertGroupList(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsOutput[k], "ListGroupsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupIdentifiers [GroupIdentifierList] <p>A list of GroupIdentifier objects. Each identifier is an object that contains both the GroupName and the GroupArn.</p>
-- * NextToken [NextToken] <p>The NextToken value to include in a subsequent <code>ListGroups</code> request, to get more results.</p>
-- * Groups [GroupList] <p>A list of resource groups.</p>
-- @return ListGroupsOutput structure as a key-value pair table
function M.ListGroupsOutput(args)
	assert(args, "You must provide an argument table when creating ListGroupsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupIdentifiers"] = args["GroupIdentifiers"],
		["NextToken"] = args["NextToken"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertListGroupsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGroupOutput = { ["Group"] = true, nil }

function asserts.AssertDeleteGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupOutput to be of type 'table'")
	if struct["Group"] then asserts.AssertGroup(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGroupOutput[k], "DeleteGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Group [Group] <p>A full description of the deleted resource group.</p>
-- @return DeleteGroupOutput structure as a key-value pair table
function M.DeleteGroupOutput(args)
	assert(args, "You must provide an argument table when creating DeleteGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Group"] = args["Group"],
	}
	asserts.AssertDeleteGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGroupQueryOutput = { ["GroupQuery"] = true, nil }

function asserts.AssertUpdateGroupQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupQueryOutput to be of type 'table'")
	if struct["GroupQuery"] then asserts.AssertGroupQuery(struct["GroupQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupQueryOutput[k], "UpdateGroupQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupQueryOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupQuery [GroupQuery] <p>The resource query associated with the resource group after the update.</p>
-- @return UpdateGroupQueryOutput structure as a key-value pair table
function M.UpdateGroupQueryOutput(args)
	assert(args, "You must provide an argument table when creating UpdateGroupQueryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupQuery"] = args["GroupQuery"],
	}
	asserts.AssertUpdateGroupQueryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGroupInput = { ["GroupName"] = true, nil }

function asserts.AssertDeleteGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupInput to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGroupInput[k], "DeleteGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupName] <p>The name of the resource group to delete.</p>
-- Required key: GroupName
-- @return DeleteGroupInput structure as a key-value pair table
function M.DeleteGroupInput(args)
	assert(args, "You must provide an argument table when creating DeleteGroupInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupName}"] = args["GroupName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
	}
	asserts.AssertDeleteGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagOutput = { ["Keys"] = true, ["Arn"] = true, nil }

function asserts.AssertUntagOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagOutput to be of type 'table'")
	if struct["Keys"] then asserts.AssertTagKeyList(struct["Keys"]) end
	if struct["Arn"] then asserts.AssertGroupArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagOutput[k], "UntagOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Keys [TagKeyList] <p>The keys of tags that have been removed.</p>
-- * Arn [GroupArn] <p>The ARN of the resource from which tags have been removed.</p>
-- @return UntagOutput structure as a key-value pair table
function M.UntagOutput(args)
	assert(args, "You must provide an argument table when creating UntagOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Keys"] = args["Keys"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUntagOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGroupQueryInput = { ["GroupName"] = true, ["ResourceQuery"] = true, nil }

function asserts.AssertUpdateGroupQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupQueryInput to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	assert(struct["ResourceQuery"], "Expected key ResourceQuery to exist in table")
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	if struct["ResourceQuery"] then asserts.AssertResourceQuery(struct["ResourceQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupQueryInput[k], "UpdateGroupQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupQueryInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupName] <p>The name of the resource group for which you want to edit the query.</p>
-- * ResourceQuery [ResourceQuery] <p>The resource query that determines which AWS resources are members of the resource group.</p>
-- Required key: GroupName
-- Required key: ResourceQuery
-- @return UpdateGroupQueryInput structure as a key-value pair table
function M.UpdateGroupQueryInput(args)
	assert(args, "You must provide an argument table when creating UpdateGroupQueryInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupName}"] = args["GroupName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["ResourceQuery"] = args["ResourceQuery"],
	}
	asserts.AssertUpdateGroupQueryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGroupOutput = { ["Group"] = true, nil }

function asserts.AssertUpdateGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupOutput to be of type 'table'")
	if struct["Group"] then asserts.AssertGroup(struct["Group"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupOutput[k], "UpdateGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Group [Group] <p>The full description of the resource group after it has been updated.</p>
-- @return UpdateGroupOutput structure as a key-value pair table
function M.UpdateGroupOutput(args)
	assert(args, "You must provide an argument table when creating UpdateGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Group"] = args["Group"],
	}
	asserts.AssertUpdateGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGroupInput = { ["GroupName"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupInput to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	if struct["Description"] then asserts.AssertGroupDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupInput[k], "UpdateGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupName] <p>The name of the resource group for which you want to update its description.</p>
-- * Description [GroupDescription] <p>The description of the resource group. Descriptions can have a maximum of 511 characters, including letters, numbers, hyphens, underscores, punctuation, and spaces.</p>
-- Required key: GroupName
-- @return UpdateGroupInput structure as a key-value pair table
function M.UpdateGroupInput(args)
	assert(args, "You must provide an argument table when creating UpdateGroupInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupName}"] = args["GroupName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGroupQueryInput = { ["GroupName"] = true, nil }

function asserts.AssertGetGroupQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupQueryInput to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupQueryInput[k], "GetGroupQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupQueryInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupName] <p>The name of the resource group.</p>
-- Required key: GroupName
-- @return GetGroupQueryInput structure as a key-value pair table
function M.GetGroupQueryInput(args)
	assert(args, "You must provide an argument table when creating GetGroupQueryInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupName}"] = args["GroupName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
	}
	asserts.AssertGetGroupQueryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGroupInput = { ["GroupName"] = true, nil }

function asserts.AssertGetGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupInput to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupInput[k], "GetGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupName] <p>The name of the resource group.</p>
-- Required key: GroupName
-- @return GetGroupInput structure as a key-value pair table
function M.GetGroupInput(args)
	assert(args, "You must provide an argument table when creating GetGroupInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupName}"] = args["GroupName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
	}
	asserts.AssertGetGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagInput = { ["Arn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagInput to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Arn"] then asserts.AssertGroupArn(struct["Arn"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagInput[k], "TagInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [GroupArn] <p>The ARN of the resource to which to add tags.</p>
-- * Tags [Tags] <p>The tags to add to the specified resource. A tag is a string-to-string map of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
-- Required key: Arn
-- Required key: Tags
-- @return TagInput structure as a key-value pair table
function M.TagInput(args)
	assert(args, "You must provide an argument table when creating TagInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{Arn}"] = args["Arn"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupResourcesInput = { ["GroupName"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertListGroupResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupResourcesInput to be of type 'table'")
	assert(struct["GroupName"], "Expected key GroupName to exist in table")
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertResourceFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupResourcesInput[k], "ListGroupResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupResourcesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupName] <p>The name of the resource group.</p>
-- * NextToken [NextToken] <p>The NextToken value that is returned in a paginated ListGroupResources request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.</p>
-- * MaxResults [MaxResults] <p>The maximum number of group member ARNs that are returned in a single call by ListGroupResources, in paginated output. By default, this number is 50.</p>
-- * Filters [ResourceFilterList] <p>Filters, formatted as ResourceFilter objects, that you want to apply to a ListGroupResources operation.</p> <ul> <li> <p> <code>resource-type</code> - Filter resources by their type. Specify up to five resource types in the format AWS::ServiceCode::ResourceType. For example, AWS::EC2::Instance, or AWS::S3::Bucket.</p> </li> </ul>
-- Required key: GroupName
-- @return ListGroupResourcesInput structure as a key-value pair table
function M.ListGroupResourcesInput(args)
	assert(args, "You must provide an argument table when creating ListGroupResourcesInput")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{GroupName}"] = args["GroupName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertListGroupResourcesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceIdentifier = { ["ResourceType"] = true, ["ResourceArn"] = true, nil }

function asserts.AssertResourceIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceIdentifier to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["ResourceArn"] then asserts.AssertResourceArn(struct["ResourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceIdentifier[k], "ResourceIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceIdentifier
-- <p>The ARN of a resource, and its resource type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [ResourceType] <p>The resource type of a resource, such as <code>AWS::EC2::Instance</code>.</p>
-- * ResourceArn [ResourceArn] <p>The ARN of a resource.</p>
-- @return ResourceIdentifier structure as a key-value pair table
function M.ResourceIdentifier(args)
	assert(args, "You must provide an argument table when creating ResourceIdentifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceArn"] = args["ResourceArn"],
	}
	asserts.AssertResourceIdentifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGroupsInput = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertListGroupsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertGroupFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsInput[k], "ListGroupsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The NextToken value that is returned in a paginated <code>ListGroups</code> request. To get the next page of results, run the call again, add the NextToken parameter, and specify the NextToken value.</p>
-- * MaxResults [MaxResults] <p>The maximum number of resource group results that are returned by ListGroups in paginated output. By default, this number is 50.</p>
-- * Filters [GroupFilterList] <p>Filters, formatted as GroupFilter objects, that you want to apply to a ListGroups operation.</p> <ul> <li> <p> <code>group-type</code> - Filter groups by resource type. Specify up to five group types in the format AWS::ServiceCode::ResourceType. For example, AWS::EC2::Instance, or AWS::S3::Bucket.</p> </li> </ul>
-- @return ListGroupsInput structure as a key-value pair table
function M.ListGroupsInput(args)
	assert(args, "You must provide an argument table when creating ListGroupsInput")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertListGroupsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTagsOutput = { ["Arn"] = true, ["Tags"] = true, nil }

function asserts.AssertGetTagsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagsOutput to be of type 'table'")
	if struct["Arn"] then asserts.AssertGroupArn(struct["Arn"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagsOutput[k], "GetTagsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [GroupArn] <p>The ARN of the tagged resource.</p>
-- * Tags [Tags] <p>The tags associated with the specified resource.</p>
-- @return GetTagsOutput structure as a key-value pair table
function M.GetTagsOutput(args)
	assert(args, "You must provide an argument table when creating GetTagsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertGetTagsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagOutput = { ["Arn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagOutput to be of type 'table'")
	if struct["Arn"] then asserts.AssertGroupArn(struct["Arn"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagOutput[k], "TagOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [GroupArn] <p>The ARN of the tagged resource.</p>
-- * Tags [Tags] <p>The tags that have been added to the specified resource.</p>
-- @return TagOutput structure as a key-value pair table
function M.TagOutput(args)
	assert(args, "You must provide an argument table when creating TagOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GroupIdentifier = { ["GroupName"] = true, ["GroupArn"] = true, nil }

function asserts.AssertGroupIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupIdentifier to be of type 'table'")
	if struct["GroupName"] then asserts.AssertGroupName(struct["GroupName"]) end
	if struct["GroupArn"] then asserts.AssertGroupArn(struct["GroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupIdentifier[k], "GroupIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupIdentifier
-- <p>The ARN and group name of a group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupName [GroupName] <p>The name of a resource group.</p>
-- * GroupArn [GroupArn] <p>The ARN of a resource group.</p>
-- @return GroupIdentifier structure as a key-value pair table
function M.GroupIdentifier(args)
	assert(args, "You must provide an argument table when creating GroupIdentifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupName"] = args["GroupName"],
		["GroupArn"] = args["GroupArn"],
	}
	asserts.AssertGroupIdentifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGroupQueryOutput = { ["GroupQuery"] = true, nil }

function asserts.AssertGetGroupQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupQueryOutput to be of type 'table'")
	if struct["GroupQuery"] then asserts.AssertGroupQuery(struct["GroupQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupQueryOutput[k], "GetGroupQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupQueryOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupQuery [GroupQuery] <p>The resource query associated with the specified group.</p>
-- @return GetGroupQueryOutput structure as a key-value pair table
function M.GetGroupQueryOutput(args)
	assert(args, "You must provide an argument table when creating GetGroupQueryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupQuery"] = args["GroupQuery"],
	}
	asserts.AssertGetGroupQueryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GroupFilter = { ["Values"] = true, ["Name"] = true, nil }

function asserts.AssertGroupFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertGroupFilterValues(struct["Values"]) end
	if struct["Name"] then asserts.AssertGroupFilterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupFilter[k], "GroupFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupFilter
-- <p>A filter name and value pair that is used to obtain more specific results from a list of groups.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [GroupFilterValues] <p>One or more filter values. Allowed filter values vary by group filter name, and are case-sensitive.</p>
-- * Name [GroupFilterName] <p>The name of the filter. Filter names are case-sensitive.</p>
-- Required key: Name
-- Required key: Values
-- @return GroupFilter structure as a key-value pair table
function M.GroupFilter(args)
	assert(args, "You must provide an argument table when creating GroupFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
	}
	asserts.AssertGroupFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTagsInput = { ["Arn"] = true, nil }

function asserts.AssertGetTagsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTagsInput to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["Arn"] then asserts.AssertGroupArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTagsInput[k], "GetTagsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTagsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [GroupArn] <p>The ARN of the resource for which you want a list of tags. The resource must exist within the account you are using.</p>
-- Required key: Arn
-- @return GetTagsInput structure as a key-value pair table
function M.GetTagsInput(args)
	assert(args, "You must provide an argument table when creating GetTagsInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{Arn}"] = args["Arn"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetTagsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGroupInput = { ["ResourceQuery"] = true, ["Tags"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertCreateGroupInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ResourceQuery"], "Expected key ResourceQuery to exist in table")
	if struct["ResourceQuery"] then asserts.AssertResourceQuery(struct["ResourceQuery"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["Name"] then asserts.AssertGroupName(struct["Name"]) end
	if struct["Description"] then asserts.AssertGroupDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupInput[k], "CreateGroupInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceQuery [ResourceQuery] <p>The resource query that determines which AWS resources are members of this group.</p>
-- * Tags [Tags] <p>The tags to add to the group. A tag is a string-to-string map of key-value pairs. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
-- * Name [GroupName] <p>The name of the group, which is the identifier of the group in other operations. A resource group name cannot be updated after it is created. A resource group name can have a maximum of 128 characters, including letters, numbers, hyphens, dots, and underscores. The name cannot start with <code>AWS</code> or <code>aws</code>; these are reserved. A resource group name must be unique within your account.</p>
-- * Description [GroupDescription] <p>The description of the resource group. Descriptions can have a maximum of 511 characters, including letters, numbers, hyphens, underscores, punctuation, and spaces.</p>
-- Required key: Name
-- Required key: ResourceQuery
-- @return CreateGroupInput structure as a key-value pair table
function M.CreateGroupInput(args)
	assert(args, "You must provide an argument table when creating CreateGroupInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceQuery"] = args["ResourceQuery"],
		["Tags"] = args["Tags"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateGroupInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceFilter = { ["Values"] = true, ["Name"] = true, nil }

function asserts.AssertResourceFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceFilter to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertResourceFilterValues(struct["Values"]) end
	if struct["Name"] then asserts.AssertResourceFilterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceFilter[k], "ResourceFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceFilter
-- <p>A filter name and value pair that is used to obtain more specific results from a list of resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [ResourceFilterValues] <p>One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive.</p>
-- * Name [ResourceFilterName] <p>The name of the filter. Filter names are case-sensitive.</p>
-- Required key: Name
-- Required key: Values
-- @return ResourceFilter structure as a key-value pair table
function M.ResourceFilter(args)
	assert(args, "You must provide an argument table when creating ResourceFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Name"] = args["Name"],
	}
	asserts.AssertResourceFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGroupOutput = { ["Group"] = true, ["ResourceQuery"] = true, ["Tags"] = true, nil }

function asserts.AssertCreateGroupOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupOutput to be of type 'table'")
	if struct["Group"] then asserts.AssertGroup(struct["Group"]) end
	if struct["ResourceQuery"] then asserts.AssertResourceQuery(struct["ResourceQuery"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupOutput[k], "CreateGroupOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Group [Group] <p>A full description of the resource group after it is created.</p>
-- * ResourceQuery [ResourceQuery] <p>The resource query associated with the group.</p>
-- * Tags [Tags] <p>The tags associated with the group.</p>
-- @return CreateGroupOutput structure as a key-value pair table
function M.CreateGroupOutput(args)
	assert(args, "You must provide an argument table when creating CreateGroupOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Group"] = args["Group"],
		["ResourceQuery"] = args["ResourceQuery"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertCreateGroupOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertGroupFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupFilterValue to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GroupFilterValue(str)
	asserts.AssertGroupFilterValue(str)
	return str
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

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertGroupFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupFilterName to be of type 'string'")
end

--  
function M.GroupFilterName(str)
	asserts.AssertGroupFilterName(str)
	return str
end

function asserts.AssertResourceArn(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceArn to be of type 'string'")
end

--  
function M.ResourceArn(str)
	asserts.AssertResourceArn(str)
	return str
end

function asserts.AssertQueryType(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryType to be of type 'string'")
end

--  
function M.QueryType(str)
	asserts.AssertQueryType(str)
	return str
end

function asserts.AssertGroupArn(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupArn to be of type 'string'")
end

--  
function M.GroupArn(str)
	asserts.AssertGroupArn(str)
	return str
end

function asserts.AssertResourceFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceFilterValue to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceFilterValue(str)
	asserts.AssertResourceFilterValue(str)
	return str
end

function asserts.AssertResourceFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceFilterName to be of type 'string'")
end

--  
function M.ResourceFilterName(str)
	asserts.AssertResourceFilterName(str)
	return str
end

function asserts.AssertGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GroupName(str)
	asserts.AssertGroupName(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertGroupDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected GroupDescription to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.GroupDescription(str)
	asserts.AssertGroupDescription(str)
	return str
end

function asserts.AssertQuery(str)
	assert(str)
	assert(type(str) == "string", "Expected Query to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.Query(str)
	asserts.AssertQuery(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.Tags(map)
	asserts.AssertTags(map)
	return map
end

function asserts.AssertGroupFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupFilterValues to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertGroupFilterValue(v)
	end
end

--  
-- List of GroupFilterValue objects
function M.GroupFilterValues(list)
	asserts.AssertGroupFilterValues(list)
	return list
end

function asserts.AssertResourceFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceFilter(v)
	end
end

--  
-- List of ResourceFilter objects
function M.ResourceFilterList(list)
	asserts.AssertResourceFilterList(list)
	return list
end

function asserts.AssertGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroup(v)
	end
end

--  
-- List of Group objects
function M.GroupList(list)
	asserts.AssertGroupList(list)
	return list
end

function asserts.AssertResourceFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceFilterValues to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceFilterValue(v)
	end
end

--  
-- List of ResourceFilterValue objects
function M.ResourceFilterValues(list)
	asserts.AssertResourceFilterValues(list)
	return list
end

function asserts.AssertGroupIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroupIdentifier(v)
	end
end

--  
-- List of GroupIdentifier objects
function M.GroupIdentifierList(list)
	asserts.AssertGroupIdentifierList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end

function asserts.AssertGroupFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected GroupFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroupFilter(v)
	end
end

--  
-- List of GroupFilter objects
function M.GroupFilterList(list)
	asserts.AssertGroupFilterList(list)
	return list
end

function asserts.AssertResourceIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceIdentifier(v)
	end
end

--  
-- List of ResourceIdentifier objects
function M.ResourceIdentifierList(list)
	asserts.AssertResourceIdentifierList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "resource-groups.amazonaws.com"
		end
	end
	local ss = { "resource-groups" }
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
--- Call GetTags asynchronously, invoking a callback when done
-- @param GetTagsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTagsAsync(GetTagsInput, cb)
	assert(GetTagsInput, "You must provide a GetTagsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTags",
	}
	for header,value in pairs(GetTagsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/resources/{Arn}/tags", GetTagsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTagsInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetTagsSync(GetTagsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTagsAsync(GetTagsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroups asynchronously, invoking a callback when done
-- @param ListGroupsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGroupsAsync(ListGroupsInput, cb)
	assert(ListGroupsInput, "You must provide a ListGroupsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGroups",
	}
	for header,value in pairs(ListGroupsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/groups-list", ListGroupsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListGroupsSync(ListGroupsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupsAsync(ListGroupsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGroupQuery asynchronously, invoking a callback when done
-- @param UpdateGroupQueryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGroupQueryAsync(UpdateGroupQueryInput, cb)
	assert(UpdateGroupQueryInput, "You must provide a UpdateGroupQueryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateGroupQuery",
	}
	for header,value in pairs(UpdateGroupQueryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/groups/{GroupName}/query", UpdateGroupQueryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGroupQuery synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGroupQueryInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGroupQuerySync(UpdateGroupQueryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGroupQueryAsync(UpdateGroupQueryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroupResources asynchronously, invoking a callback when done
-- @param ListGroupResourcesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGroupResourcesAsync(ListGroupResourcesInput, cb)
	assert(ListGroupResourcesInput, "You must provide a ListGroupResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGroupResources",
	}
	for header,value in pairs(ListGroupResourcesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/groups/{GroupName}/resource-identifiers-list", ListGroupResourcesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroupResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupResourcesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListGroupResourcesSync(ListGroupResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupResourcesAsync(ListGroupResourcesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGroup asynchronously, invoking a callback when done
-- @param UpdateGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGroupAsync(UpdateGroupInput, cb)
	assert(UpdateGroupInput, "You must provide a UpdateGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateGroup",
	}
	for header,value in pairs(UpdateGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/groups/{GroupName}", UpdateGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGroupSync(UpdateGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGroupAsync(UpdateGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGroup asynchronously, invoking a callback when done
-- @param DeleteGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGroupAsync(DeleteGroupInput, cb)
	assert(DeleteGroupInput, "You must provide a DeleteGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteGroup",
	}
	for header,value in pairs(DeleteGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/groups/{GroupName}", DeleteGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGroupSync(DeleteGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGroupAsync(DeleteGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Tag asynchronously, invoking a callback when done
-- @param TagInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagAsync(TagInput, cb)
	assert(TagInput, "You must provide a TagInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Tag",
	}
	for header,value in pairs(TagInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/resources/{Arn}/tags", TagInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Tag synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagInput
-- @return response
-- @return error_type
-- @return error_message
function M.TagSync(TagInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagAsync(TagInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGroup asynchronously, invoking a callback when done
-- @param CreateGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateGroupAsync(CreateGroupInput, cb)
	assert(CreateGroupInput, "You must provide a CreateGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateGroup",
	}
	for header,value in pairs(CreateGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/groups", CreateGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateGroupSync(CreateGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupAsync(CreateGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroupQuery asynchronously, invoking a callback when done
-- @param GetGroupQueryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGroupQueryAsync(GetGroupQueryInput, cb)
	assert(GetGroupQueryInput, "You must provide a GetGroupQueryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGroupQuery",
	}
	for header,value in pairs(GetGroupQueryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/groups/{GroupName}/query", GetGroupQueryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGroupQuery synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupQueryInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetGroupQuerySync(GetGroupQueryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupQueryAsync(GetGroupQueryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchResources asynchronously, invoking a callback when done
-- @param SearchResourcesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchResourcesAsync(SearchResourcesInput, cb)
	assert(SearchResourcesInput, "You must provide a SearchResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SearchResources",
	}
	for header,value in pairs(SearchResourcesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/resources/search", SearchResourcesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchResourcesInput
-- @return response
-- @return error_type
-- @return error_message
function M.SearchResourcesSync(SearchResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchResourcesAsync(SearchResourcesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroup asynchronously, invoking a callback when done
-- @param GetGroupInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGroupAsync(GetGroupInput, cb)
	assert(GetGroupInput, "You must provide a GetGroupInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGroup",
	}
	for header,value in pairs(GetGroupInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/groups/{GroupName}", GetGroupInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetGroupSync(GetGroupInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupAsync(GetGroupInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Untag asynchronously, invoking a callback when done
-- @param UntagInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagAsync(UntagInput, cb)
	assert(UntagInput, "You must provide a UntagInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Untag",
	}
	for header,value in pairs(UntagInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PATCH")
	if request_handler then
		request_handler(settings.uri, "/resources/{Arn}/tags", UntagInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Untag synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagInput
-- @return response
-- @return error_type
-- @return error_message
function M.UntagSync(UntagInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagAsync(UntagInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
