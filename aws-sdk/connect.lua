--- GENERATED CODE - DO NOT MODIFY
-- Amazon Connect Service (connect-2017-08-08)

local M = {}

M.metadata = {
	api_version = "2017-08-08",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "connect",
	service_abbreviation = "Amazon Connect",
	service_full_name = "Amazon Connect Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "connect-2017-08-08",
}

local keys = {}
local asserts = {}

keys.HierarchyGroup = { ["LevelId"] = true, ["HierarchyPath"] = true, ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertHierarchyGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyGroup to be of type 'table'")
	if struct["LevelId"] then asserts.AssertHierarchyLevelId(struct["LevelId"]) end
	if struct["HierarchyPath"] then asserts.AssertHierarchyPath(struct["HierarchyPath"]) end
	if struct["Id"] then asserts.AssertHierarchyGroupId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertARN(struct["Arn"]) end
	if struct["Name"] then asserts.AssertHierarchyGroupName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.HierarchyGroup[k], "HierarchyGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyGroup
-- <p>A <code>HierarchyGroup</code> object that contains information about a hierarchy group in your Amazon Connect instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LevelId [HierarchyLevelId] <p>The identifier for the level in the hierarchy group.</p>
-- * HierarchyPath [HierarchyPath] <p>A <code>HierarchyPath</code> object that contains information about the levels in the hierarchy group.</p>
-- * Id [HierarchyGroupId] <p>The identifier for the hierarchy group.</p>
-- * Arn [ARN] <p>The Amazon Resource Name (ARN) for the hierarchy group.</p>
-- * Name [HierarchyGroupName] <p>The name of the hierarchy group in your instance.</p>
-- @return HierarchyGroup structure as a key-value pair table
function M.HierarchyGroup(args)
	assert(args, "You must provide an argument table when creating HierarchyGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LevelId"] = args["LevelId"],
		["HierarchyPath"] = args["HierarchyPath"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Name"] = args["Name"],
	}
	asserts.AssertHierarchyGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContactAttributesResponse = { nil }

function asserts.AssertUpdateContactAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContactAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateContactAttributesResponse[k], "UpdateContactAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContactAttributesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateContactAttributesResponse structure as a key-value pair table
function M.UpdateContactAttributesResponse(args)
	assert(args, "You must provide an argument table when creating UpdateContactAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateContactAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserHierarchyStructureResponse = { ["HierarchyStructure"] = true, nil }

function asserts.AssertDescribeUserHierarchyStructureResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserHierarchyStructureResponse to be of type 'table'")
	if struct["HierarchyStructure"] then asserts.AssertHierarchyStructure(struct["HierarchyStructure"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserHierarchyStructureResponse[k], "DescribeUserHierarchyStructureResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserHierarchyStructureResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HierarchyStructure [HierarchyStructure] <p>A <code>HierarchyStructure</code> object.</p>
-- @return DescribeUserHierarchyStructureResponse structure as a key-value pair table
function M.DescribeUserHierarchyStructureResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUserHierarchyStructureResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HierarchyStructure"] = args["HierarchyStructure"],
	}
	asserts.AssertDescribeUserHierarchyStructureResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueueReference = { ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertQueueReference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueueReference to be of type 'table'")
	if struct["Id"] then asserts.AssertQueueId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertARN(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueueReference[k], "QueueReference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueueReference
-- <p>A QueueReference object that contains the the QueueId and ARN for the queue resource for which metrics are returned.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [QueueId] <p>The ID of the queue associated with the metrics returned.</p>
-- * Arn [ARN] <p>The Amazon Resource Name (ARN) of queue.</p>
-- @return QueueReference structure as a key-value pair table
function M.QueueReference(args)
	assert(args, "You must provide an argument table when creating QueueReference")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertQueueReference(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopContactRequest = { ["InstanceId"] = true, ["ContactId"] = true, nil }

function asserts.AssertStopContactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopContactRequest to be of type 'table'")
	assert(struct["ContactId"], "Expected key ContactId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["ContactId"] then asserts.AssertContactId(struct["ContactId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopContactRequest[k], "StopContactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopContactRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * ContactId [ContactId] <p>The unique identifier of the contact to end.</p>
-- Required key: ContactId
-- Required key: InstanceId
-- @return StopContactRequest structure as a key-value pair table
function M.StopContactRequest(args)
	assert(args, "You must provide an argument table when creating StopContactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["ContactId"] = args["ContactId"],
	}
	asserts.AssertStopContactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserIdentityInfo = { ["LastName"] = true, ["Email"] = true, ["FirstName"] = true, nil }

function asserts.AssertUserIdentityInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserIdentityInfo to be of type 'table'")
	if struct["LastName"] then asserts.AssertAgentLastName(struct["LastName"]) end
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	if struct["FirstName"] then asserts.AssertAgentFirstName(struct["FirstName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserIdentityInfo[k], "UserIdentityInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserIdentityInfo
-- <p>A <code>UserIdentityInfo</code> object that contains information about the user's identity, including email address, first name, and last name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastName [AgentLastName] <p>The last name used in the user account. This is required if you are using Amazon Connect or SAML for identity management.</p>
-- * Email [Email] <p>The email address added to the user account. If you are using SAML for identity management and include this parameter, an <code>InvalidRequestException</code> is returned.</p>
-- * FirstName [AgentFirstName] <p>The first name used in the user account. This is required if you are using Amazon Connect or SAML for identity management.</p>
-- @return UserIdentityInfo structure as a key-value pair table
function M.UserIdentityInfo(args)
	assert(args, "You must provide an argument table when creating UserIdentityInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastName"] = args["LastName"],
		["Email"] = args["Email"],
		["FirstName"] = args["FirstName"],
	}
	asserts.AssertUserIdentityInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserRequest = { ["InstanceId"] = true, ["UserId"] = true, nil }

function asserts.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserRequest[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * UserId [UserId] <p>The unique identifier of the user to delete.</p>
-- Required key: InstanceId
-- Required key: UserId
-- @return DeleteUserRequest structure as a key-value pair table
function M.DeleteUserRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
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

keys.CurrentMetric = { ["Name"] = true, ["Unit"] = true, nil }

function asserts.AssertCurrentMetric(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CurrentMetric to be of type 'table'")
	if struct["Name"] then asserts.AssertCurrentMetricName(struct["Name"]) end
	if struct["Unit"] then asserts.AssertUnit(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.CurrentMetric[k], "CurrentMetric contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CurrentMetric
-- <p>A <code>CurrentMetric</code> object that contains the Name and Unit for the metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [CurrentMetricName] <p>The name of the metric.</p>
-- * Unit [Unit] <p>The unit for the metric.</p>
-- @return CurrentMetric structure as a key-value pair table
function M.CurrentMetric(args)
	assert(args, "You must provide an argument table when creating CurrentMetric")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertCurrentMetric(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HierarchyStructure = { ["LevelThree"] = true, ["LevelOne"] = true, ["LevelFour"] = true, ["LevelTwo"] = true, ["LevelFive"] = true, nil }

function asserts.AssertHierarchyStructure(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyStructure to be of type 'table'")
	if struct["LevelThree"] then asserts.AssertHierarchyLevel(struct["LevelThree"]) end
	if struct["LevelOne"] then asserts.AssertHierarchyLevel(struct["LevelOne"]) end
	if struct["LevelFour"] then asserts.AssertHierarchyLevel(struct["LevelFour"]) end
	if struct["LevelTwo"] then asserts.AssertHierarchyLevel(struct["LevelTwo"]) end
	if struct["LevelFive"] then asserts.AssertHierarchyLevel(struct["LevelFive"]) end
	for k,_ in pairs(struct) do
		assert(keys.HierarchyStructure[k], "HierarchyStructure contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyStructure
-- <p>A <code>HierarchyStructure</code> object that contains information about the hierarchy group structure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LevelThree [HierarchyLevel] <p>A <code>HierarchyLevel</code> object that contains information about the hierarchy group level.</p>
-- * LevelOne [HierarchyLevel] <p>A <code>HierarchyLevel</code> object that contains information about the hierarchy group level.</p>
-- * LevelFour [HierarchyLevel] <p>A <code>HierarchyLevel</code> object that contains information about the hierarchy group level.</p>
-- * LevelTwo [HierarchyLevel] <p>A <code>HierarchyLevel</code> object that contains information about the hierarchy group level.</p>
-- * LevelFive [HierarchyLevel] <p>A <code>HierarchyLevel</code> object that contains information about the hierarchy group level.</p>
-- @return HierarchyStructure structure as a key-value pair table
function M.HierarchyStructure(args)
	assert(args, "You must provide an argument table when creating HierarchyStructure")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LevelThree"] = args["LevelThree"],
		["LevelOne"] = args["LevelOne"],
		["LevelFour"] = args["LevelFour"],
		["LevelTwo"] = args["LevelTwo"],
		["LevelFive"] = args["LevelFive"],
	}
	asserts.AssertHierarchyStructure(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersResponse = { ["NextToken"] = true, ["UserSummaryList"] = true, nil }

function asserts.AssertListUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["UserSummaryList"] then asserts.AssertUserSummaryList(struct["UserSummaryList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersResponse[k], "ListUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A string returned in the response. Use the value returned in the response as the value of the NextToken in a subsequent request to retrieve the next set of results.</p>
-- * UserSummaryList [UserSummaryList] <p>An array of <code>UserSummary</code> objects that contain information about the users in your instance.</p>
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
		["UserSummaryList"] = args["UserSummaryList"],
	}
	asserts.AssertListUsersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRoutingProfilesResponse = { ["RoutingProfileSummaryList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListRoutingProfilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRoutingProfilesResponse to be of type 'table'")
	if struct["RoutingProfileSummaryList"] then asserts.AssertRoutingProfileSummaryList(struct["RoutingProfileSummaryList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRoutingProfilesResponse[k], "ListRoutingProfilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRoutingProfilesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoutingProfileSummaryList [RoutingProfileSummaryList] <p>An array of <code>RoutingProfileSummary</code> objects that include the ARN, Id, and Name of the routing profile.</p>
-- * NextToken [NextToken] <p>A string returned in the response. Use the value returned in the response as the value of the NextToken in a subsequent request to retrieve the next set of results.</p>
-- @return ListRoutingProfilesResponse structure as a key-value pair table
function M.ListRoutingProfilesResponse(args)
	assert(args, "You must provide an argument table when creating ListRoutingProfilesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoutingProfileSummaryList"] = args["RoutingProfileSummaryList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListRoutingProfilesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserHierarchyGroupResponse = { ["HierarchyGroup"] = true, nil }

function asserts.AssertDescribeUserHierarchyGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserHierarchyGroupResponse to be of type 'table'")
	if struct["HierarchyGroup"] then asserts.AssertHierarchyGroup(struct["HierarchyGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserHierarchyGroupResponse[k], "DescribeUserHierarchyGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserHierarchyGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HierarchyGroup [HierarchyGroup] <p>Returns a <code>HierarchyGroup</code> object.</p>
-- @return DescribeUserHierarchyGroupResponse structure as a key-value pair table
function M.DescribeUserHierarchyGroupResponse(args)
	assert(args, "You must provide an argument table when creating DescribeUserHierarchyGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HierarchyGroup"] = args["HierarchyGroup"],
	}
	asserts.AssertDescribeUserHierarchyGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMetricDataResponse = { ["MetricResults"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetMetricDataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricDataResponse to be of type 'table'")
	if struct["MetricResults"] then asserts.AssertHistoricalMetricResults(struct["MetricResults"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMetricDataResponse[k], "GetMetricDataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricDataResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricResults [HistoricalMetricResults] <p>A list of <code>HistoricalMetricResult</code> objects, organized by <code>Dimensions</code>, which is the ID of the resource specified in the <code>Filters</code> used for the request. The metrics are combined with the metrics included in <code>Collections</code>, which is a list of <code>HisotricalMetricData</code> objects.</p> <p>If no <code>Grouping</code> is specified in the request, <code>Collections</code> includes summary data for the <code>HistoricalMetrics</code>.</p>
-- * NextToken [NextToken] <p>A string returned in the response. Use the value returned in the response as the value of the NextToken in a subsequent request to retrieve the next set of results.</p> <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use the NextToken must use the same request parameters as the request that generated the token. </p>
-- @return GetMetricDataResponse structure as a key-value pair table
function M.GetMetricDataResponse(args)
	assert(args, "You must provide an argument table when creating GetMetricDataResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricResults"] = args["MetricResults"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetMetricDataResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContactAttributesRequest = { ["InstanceId"] = true, ["Attributes"] = true, ["InitialContactId"] = true, nil }

function asserts.AssertUpdateContactAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContactAttributesRequest to be of type 'table'")
	assert(struct["InitialContactId"], "Expected key InitialContactId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	if struct["InitialContactId"] then asserts.AssertContactId(struct["InitialContactId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateContactAttributesRequest[k], "UpdateContactAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContactAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * Attributes [Attributes] <p>The key-value pairs for the attribute to update.</p>
-- * InitialContactId [ContactId] <p>The unique identifier of the contact for which to update attributes. This is the identifier for the contact associated with the first interaction with the contact center.</p>
-- Required key: InitialContactId
-- Required key: InstanceId
-- Required key: Attributes
-- @return UpdateContactAttributesRequest structure as a key-value pair table
function M.UpdateContactAttributesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateContactAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["Attributes"] = args["Attributes"],
		["InitialContactId"] = args["InitialContactId"],
	}
	asserts.AssertUpdateContactAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSecurityProfilesRequest = { ["InstanceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSecurityProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecurityProfilesRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResult1000(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSecurityProfilesRequest[k], "ListSecurityProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecurityProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * NextToken [NextToken] <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
-- * MaxResults [MaxResult1000] <p>The maximum number of security profiles to return.</p>
-- Required key: InstanceId
-- @return ListSecurityProfilesRequest structure as a key-value pair table
function M.ListSecurityProfilesRequest(args)
	assert(args, "You must provide an argument table when creating ListSecurityProfilesRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSecurityProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HierarchyGroupSummary = { ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertHierarchyGroupSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyGroupSummary to be of type 'table'")
	if struct["Id"] then asserts.AssertHierarchyGroupId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertARN(struct["Arn"]) end
	if struct["Name"] then asserts.AssertHierarchyGroupName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.HierarchyGroupSummary[k], "HierarchyGroupSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyGroupSummary
-- <p>A <code>HierarchyGroupSummary</code> object that contains information about the hierarchy group, including ARN, Id, and Name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [HierarchyGroupId] <p>The identifier of the hierarchy group.</p>
-- * Arn [ARN] <p>The ARN for the hierarchy group.</p>
-- * Name [HierarchyGroupName] <p>The name of the hierarchy group.</p>
-- @return HierarchyGroupSummary structure as a key-value pair table
function M.HierarchyGroupSummary(args)
	assert(args, "You must provide an argument table when creating HierarchyGroupSummary")
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
	asserts.AssertHierarchyGroupSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HierarchyPath = { ["LevelThree"] = true, ["LevelOne"] = true, ["LevelFour"] = true, ["LevelTwo"] = true, ["LevelFive"] = true, nil }

function asserts.AssertHierarchyPath(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyPath to be of type 'table'")
	if struct["LevelThree"] then asserts.AssertHierarchyGroupSummary(struct["LevelThree"]) end
	if struct["LevelOne"] then asserts.AssertHierarchyGroupSummary(struct["LevelOne"]) end
	if struct["LevelFour"] then asserts.AssertHierarchyGroupSummary(struct["LevelFour"]) end
	if struct["LevelTwo"] then asserts.AssertHierarchyGroupSummary(struct["LevelTwo"]) end
	if struct["LevelFive"] then asserts.AssertHierarchyGroupSummary(struct["LevelFive"]) end
	for k,_ in pairs(struct) do
		assert(keys.HierarchyPath[k], "HierarchyPath contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyPath
-- <p>A <code>HierarchyPath</code> object that contains information about the levels of the hierarchy group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LevelThree [HierarchyGroupSummary] <p>A <code>HierarchyGroupSummary</code> object that contains information about the level of the hierarchy group, including ARN, Id, and Name.</p>
-- * LevelOne [HierarchyGroupSummary] <p>A <code>HierarchyGroupSummary</code> object that contains information about the level of the hierarchy group, including ARN, Id, and Name.</p>
-- * LevelFour [HierarchyGroupSummary] <p>A <code>HierarchyGroupSummary</code> object that contains information about the level of the hierarchy group, including ARN, Id, and Name.</p>
-- * LevelTwo [HierarchyGroupSummary] <p>A <code>HierarchyGroupSummary</code> object that contains information about the level of the hierarchy group, including ARN, Id, and Name.</p>
-- * LevelFive [HierarchyGroupSummary] <p>A <code>HierarchyGroupSummary</code> object that contains information about the level of the hierarchy group, including ARN, Id, and Name.</p>
-- @return HierarchyPath structure as a key-value pair table
function M.HierarchyPath(args)
	assert(args, "You must provide an argument table when creating HierarchyPath")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LevelThree"] = args["LevelThree"],
		["LevelOne"] = args["LevelOne"],
		["LevelFour"] = args["LevelFour"],
		["LevelTwo"] = args["LevelTwo"],
		["LevelFive"] = args["LevelFive"],
	}
	asserts.AssertHierarchyPath(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserHierarchyGroupsResponse = { ["UserHierarchyGroupSummaryList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListUserHierarchyGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserHierarchyGroupsResponse to be of type 'table'")
	if struct["UserHierarchyGroupSummaryList"] then asserts.AssertHierarchyGroupSummaryList(struct["UserHierarchyGroupSummaryList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserHierarchyGroupsResponse[k], "ListUserHierarchyGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserHierarchyGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserHierarchyGroupSummaryList [HierarchyGroupSummaryList] <p>An array of <code>HierarchyGroupSummary</code> objects.</p>
-- * NextToken [NextToken] <p>A string returned in the response. Use the value returned in the response as the value of the NextToken in a subsequent request to retrieve the next set of results.</p>
-- @return ListUserHierarchyGroupsResponse structure as a key-value pair table
function M.ListUserHierarchyGroupsResponse(args)
	assert(args, "You must provide an argument table when creating ListUserHierarchyGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserHierarchyGroupSummaryList"] = args["UserHierarchyGroupSummaryList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListUserHierarchyGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserResponse = { ["UserId"] = true, ["UserArn"] = true, nil }

function asserts.AssertCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResponse to be of type 'table'")
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	if struct["UserArn"] then asserts.AssertARN(struct["UserArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserResponse[k], "CreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [UserId] <p>The unique identifier for the user account in Amazon Connect</p>
-- * UserArn [ARN] <p>The Amazon Resource Name (ARN) of the user account created.</p>
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
		["UserArn"] = args["UserArn"],
	}
	asserts.AssertCreateUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFederationTokenResponse = { ["Credentials"] = true, nil }

function asserts.AssertGetFederationTokenResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFederationTokenResponse to be of type 'table'")
	if struct["Credentials"] then asserts.AssertCredentials(struct["Credentials"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFederationTokenResponse[k], "GetFederationTokenResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFederationTokenResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Credentials [Credentials] <p>The credentials to use for federation.</p>
-- @return GetFederationTokenResponse structure as a key-value pair table
function M.GetFederationTokenResponse(args)
	assert(args, "You must provide an argument table when creating GetFederationTokenResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Credentials"] = args["Credentials"],
	}
	asserts.AssertGetFederationTokenResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserSummary = { ["Username"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertUserSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserSummary to be of type 'table'")
	if struct["Username"] then asserts.AssertAgentUsername(struct["Username"]) end
	if struct["Id"] then asserts.AssertUserId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertARN(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserSummary[k], "UserSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserSummary
-- <p>A <code>UserSummary</code> object that contains Information about a user, including ARN, Id, and user name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [AgentUsername] <p>The Amazon Connect user name for the user account.</p>
-- * Id [UserId] <p>The identifier for the user account.</p>
-- * Arn [ARN] <p>The ARN for the user account.</p>
-- @return UserSummary structure as a key-value pair table
function M.UserSummary(args)
	assert(args, "You must provide an argument table when creating UserSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUserSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserHierarchyStructureRequest = { ["InstanceId"] = true, nil }

function asserts.AssertDescribeUserHierarchyStructureRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserHierarchyStructureRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserHierarchyStructureRequest[k], "DescribeUserHierarchyStructureRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserHierarchyStructureRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- Required key: InstanceId
-- @return DescribeUserHierarchyStructureRequest structure as a key-value pair table
function M.DescribeUserHierarchyStructureRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserHierarchyStructureRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertDescribeUserHierarchyStructureRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HistoricalMetricData = { ["Metric"] = true, ["Value"] = true, nil }

function asserts.AssertHistoricalMetricData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistoricalMetricData to be of type 'table'")
	if struct["Metric"] then asserts.AssertHistoricalMetric(struct["Metric"]) end
	if struct["Value"] then asserts.AssertValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.HistoricalMetricData[k], "HistoricalMetricData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistoricalMetricData
-- <p>A <code>HistoricalMetricData</code> object than contains a <code>Metric</code> and a <code>Value</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metric [HistoricalMetric] <p>A <code>HistoricalMetric</code> object.</p>
-- * Value [Value] <p>The <code>Value</code> of the metric.</p>
-- @return HistoricalMetricData structure as a key-value pair table
function M.HistoricalMetricData(args)
	assert(args, "You must provide an argument table when creating HistoricalMetricData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metric"] = args["Metric"],
		["Value"] = args["Value"],
	}
	asserts.AssertHistoricalMetricData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetFederationTokenRequest = { ["InstanceId"] = true, nil }

function asserts.AssertGetFederationTokenRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFederationTokenRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFederationTokenRequest[k], "GetFederationTokenRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFederationTokenRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- Required key: InstanceId
-- @return GetFederationTokenRequest structure as a key-value pair table
function M.GetFederationTokenRequest(args)
	assert(args, "You must provide an argument table when creating GetFederationTokenRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertGetFederationTokenRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HistoricalMetricResult = { ["Collections"] = true, ["Dimensions"] = true, nil }

function asserts.AssertHistoricalMetricResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistoricalMetricResult to be of type 'table'")
	if struct["Collections"] then asserts.AssertHistoricalMetricDataCollections(struct["Collections"]) end
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	for k,_ in pairs(struct) do
		assert(keys.HistoricalMetricResult[k], "HistoricalMetricResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistoricalMetricResult
-- <p>The metrics data returned from a <code>GetMetricData</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Collections [HistoricalMetricDataCollections] <p>A list of <code>HistoricalMetricData</code> objects.</p>
-- * Dimensions [Dimensions] <p>The <code>Dimensions</code> for the metrics.</p>
-- @return HistoricalMetricResult structure as a key-value pair table
function M.HistoricalMetricResult(args)
	assert(args, "You must provide an argument table when creating HistoricalMetricResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Collections"] = args["Collections"],
		["Dimensions"] = args["Dimensions"],
	}
	asserts.AssertHistoricalMetricResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserResponse = { ["User"] = true, nil }

function asserts.AssertDescribeUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserResponse to be of type 'table'")
	if struct["User"] then asserts.AssertUser(struct["User"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserResponse[k], "DescribeUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * User [User] <p>A <code>User</code> object that contains information about the user account and configuration settings.</p>
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
		["User"] = args["User"],
	}
	asserts.AssertDescribeUserResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartOutboundVoiceContactRequest = { ["QueueId"] = true, ["InstanceId"] = true, ["DestinationPhoneNumber"] = true, ["SourcePhoneNumber"] = true, ["ContactFlowId"] = true, ["ClientToken"] = true, ["Attributes"] = true, nil }

function asserts.AssertStartOutboundVoiceContactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartOutboundVoiceContactRequest to be of type 'table'")
	assert(struct["DestinationPhoneNumber"], "Expected key DestinationPhoneNumber to exist in table")
	assert(struct["ContactFlowId"], "Expected key ContactFlowId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["QueueId"] then asserts.AssertQueueId(struct["QueueId"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["DestinationPhoneNumber"] then asserts.AssertPhoneNumber(struct["DestinationPhoneNumber"]) end
	if struct["SourcePhoneNumber"] then asserts.AssertPhoneNumber(struct["SourcePhoneNumber"]) end
	if struct["ContactFlowId"] then asserts.AssertContactFlowId(struct["ContactFlowId"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["Attributes"] then asserts.AssertAttributes(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartOutboundVoiceContactRequest[k], "StartOutboundVoiceContactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartOutboundVoiceContactRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueueId [QueueId] <p>The queue to add the call to. If you specify a queue, the phone displayed for caller ID is the phone number specified in the queue. If you do not specify a queue, the queue used will be the queue defined in the contact flow.</p> <p>To find the <code>QueueId</code>, open the queue you want to use in the Amazon Connect Queue editor. The ID for the queue is displayed in the address bar as part of the URL. For example, the queue ID is the set of characters at the end of the URL, after 'queue/' such as <code>queue/aeg40574-2d01-51c3-73d6-bf8624d2168c</code>.</p>
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * DestinationPhoneNumber [PhoneNumber] <p>The phone number of the customer in E.164 format.</p>
-- * SourcePhoneNumber [PhoneNumber] <p>The phone number, in E.164 format, associated with your Amazon Connect instance to use for the outbound call.</p>
-- * ContactFlowId [ContactFlowId] <p>The identifier for the contact flow to connect the outbound call to.</p> <p>To find the <code>ContactFlowId</code>, open the contact flow you want to use in the Amazon Connect contact flow editor. The ID for the contact flow is displayed in the address bar as part of the URL. For example, the contact flow ID is the set of characters at the end of the URL, after 'contact-flow/' such as <code>78ea8fd5-2659-4f2b-b528-699760ccfc1b</code>.</p>
-- * ClientToken [ClientToken] <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. The token is valid for 7 days after creation. If a contact is already started, the contact ID is returned. If the contact is disconnected, a new contact is started.</p>
-- * Attributes [Attributes] <p>Specify a custom key-value pair using an attribute map. The attributes are standard Amazon Connect attributes, and can be accessed in contact flows just like any other contact attributes.</p> <p>There can be up to 32,768 UTF-8 bytes across all key-value pairs. Attribute keys can include only alphanumeric, dash, and underscore characters.</p> <p>For example, if you want play a greeting when the customer answers the call, you can pass the customer name in attributes similar to the following:</p>
-- Required key: DestinationPhoneNumber
-- Required key: ContactFlowId
-- Required key: InstanceId
-- @return StartOutboundVoiceContactRequest structure as a key-value pair table
function M.StartOutboundVoiceContactRequest(args)
	assert(args, "You must provide an argument table when creating StartOutboundVoiceContactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QueueId"] = args["QueueId"],
		["InstanceId"] = args["InstanceId"],
		["DestinationPhoneNumber"] = args["DestinationPhoneNumber"],
		["SourcePhoneNumber"] = args["SourcePhoneNumber"],
		["ContactFlowId"] = args["ContactFlowId"],
		["ClientToken"] = args["ClientToken"],
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertStartOutboundVoiceContactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Dimensions = { ["Queue"] = true, ["Channel"] = true, nil }

function asserts.AssertDimensions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Dimensions to be of type 'table'")
	if struct["Queue"] then asserts.AssertQueueReference(struct["Queue"]) end
	if struct["Channel"] then asserts.AssertChannel(struct["Channel"]) end
	for k,_ in pairs(struct) do
		assert(keys.Dimensions[k], "Dimensions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Dimensions
-- <p>A <code>Dimensions</code> object that includes the Channel and Queue for the metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Queue [QueueReference] <p>A <code>QueueReference</code> object used as one part of dimension for the metrics results.</p>
-- * Channel [Channel] <p>The channel used for grouping and filters. Only VOICE is supported.</p>
-- @return Dimensions structure as a key-value pair table
function M.Dimensions(args)
	assert(args, "You must provide an argument table when creating Dimensions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Queue"] = args["Queue"],
		["Channel"] = args["Channel"],
	}
	asserts.AssertDimensions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserRequest = { ["InstanceId"] = true, ["UserId"] = true, nil }

function asserts.AssertDescribeUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserRequest[k], "DescribeUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * UserId [UserId] <p>Unique identifier for the user account to return.</p>
-- Required key: UserId
-- Required key: InstanceId
-- @return DescribeUserRequest structure as a key-value pair table
function M.DescribeUserRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
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

keys.GetMetricDataRequest = { ["NextToken"] = true, ["StartTime"] = true, ["InstanceId"] = true, ["MaxResults"] = true, ["HistoricalMetrics"] = true, ["Filters"] = true, ["EndTime"] = true, ["Groupings"] = true, nil }

function asserts.AssertGetMetricDataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMetricDataRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	assert(struct["Filters"], "Expected key Filters to exist in table")
	assert(struct["HistoricalMetrics"], "Expected key HistoricalMetrics to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["StartTime"] then asserts.Asserttimestamp(struct["StartTime"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResult100(struct["MaxResults"]) end
	if struct["HistoricalMetrics"] then asserts.AssertHistoricalMetrics(struct["HistoricalMetrics"]) end
	if struct["Filters"] then asserts.AssertFilters(struct["Filters"]) end
	if struct["EndTime"] then asserts.Asserttimestamp(struct["EndTime"]) end
	if struct["Groupings"] then asserts.AssertGroupings(struct["Groupings"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMetricDataRequest[k], "GetMetricDataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMetricDataRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
-- * StartTime [timestamp] <p>The timestamp, in UNIX Epoch time format, at which to start the reporting interval for the retrieval of historical metrics data. The time must be specified using a multiple of 5 minutes, such as 10:05, 10:10, 10:15.</p> <p> <code>StartTime</code> cannot be earlier than 24 hours before the time of the request. Historical metrics are available in Amazon Connect only for 24 hours.</p>
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * MaxResults [MaxResult100] <p>Indicates the maximum number of results to return per page in the response, between 1-100.</p>
-- * HistoricalMetrics [HistoricalMetrics] <p>A list of <code>HistoricalMetric</code> objects that contain the metrics to retrieve with the request.</p> <p>A <code>HistoricalMetric</code> object contains: <code>HistoricalMetricName</code>, <code>Statistic</code>, <code>Threshold</code>, and <code>Unit</code>.</p> <p>For each historical metric you include in the request, you must include a <code>Unit</code> and a <code>Statistic</code>. </p> <p>The following historical metrics are available:</p> <dl> <dt>CONTACTS_QUEUED</dt> <dd> <p>Unit: COUNT</p> <p>Statistic: SUM</p> </dd> <dt>CONTACTS_HANDLED</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_ABANDONED</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_CONSULTED</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_AGENT_HUNG_UP_FIRST</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_HANDLED_INCOMING</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_HANDLED_OUTBOUND</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_HOLD_ABANDONS</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_TRANSFERRED_IN</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_TRANSFERRED_OUT</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_TRANSFERRED_IN_FROM_QUEUE</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_TRANSFERRED_OUT_FROM_QUEUE</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CALLBACK_CONTACTS_HANDLED</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CALLBACK_CONTACTS_HANDLED</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>API_CONTACTS_HANDLED</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>CONTACTS_MISSED</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>OCCUPANCY</dt> <dd> <p>Unit: PERCENT</p> <p>Statistics: AVG</p> </dd> <dt>HANDLE_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistics: AVG</p> </dd> <dt>AFTER_CONTACT_WORK_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistics: AVG</p> </dd> <dt>QUEUED_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistics: MAX</p> </dd> <dt>ABANDON_TIME</dt> <dd> <p>Unit: COUNT</p> <p>Statistics: SUM</p> </dd> <dt>QUEUE_ANSWER_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistics: AVG</p> </dd> <dt>HOLD_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistics: AVG</p> </dd> <dt>INTERACTION_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistics: AVG</p> </dd> <dt>INTERACTION_AND_HOLD_TIME</dt> <dd> <p>Unit: SECONDS</p> <p>Statistics: AVG</p> </dd> <dt>SERVICE_LEVEL</dt> <dd> <p>Unit: PERCENT</p> <p>Statistics: AVG</p> <p>Threshold: Only "Less than" comparisons are supported, with the following service level thresholds: 15, 20, 25, 30, 45, 60, 90, 120, 180, 240, 300, 600</p> </dd> </dl>
-- * Filters [Filters] <p>A <code>Filters</code> object that contains a list of queue IDs or queue ARNs, up to 100, or a list of Channels to use to filter the metrics returned in the response. Metric data is retrieved only for the resources associated with the IDs, ARNs, or Channels included in the filter. You can use both IDs and ARNs together in a request. Only VOICE is supported for Channel.</p> <p>To find the ARN for a queue, open the queue you want to use in the Amazon Connect Queue editor. The ARN for the queue is displayed in the address bar as part of the URL. For example, the queue ARN is the set of characters at the end of the URL, after 'id=' such as <code>arn:aws:connect:us-east-1:270923740243:instance/78fb859d-1b7d-44b1-8aa3-12f0835c5855/queue/1d1a4575-9618-40ab-bbeb-81e45795fe61</code>. The queue ID is also included in the URL, and is the string after 'queue/'.</p>
-- * EndTime [timestamp] <p>The timestamp, in UNIX Epoch time format, at which to end the reporting interval for the retrieval of historical metrics data. The time must be specified using an interval of 5 minutes, such as 11:00, 11:05, 11:10, and must be later than the <code>StartTime</code> timestamp.</p> <p>The time range between <code>StartTime</code> and <code>EndTime</code> must be less than 24 hours.</p>
-- * Groupings [Groupings] <p>The grouping applied to the metrics returned. For example, when results are grouped by queueId, the metrics returned are grouped by queue. The values returned apply to the metrics for each queue rather than aggregated for all queues.</p> <p>The current version supports grouping by Queue</p> <p>If no <code>Grouping</code> is included in the request, a summary of <code>HistoricalMetrics</code> for all queues is returned.</p>
-- Required key: InstanceId
-- Required key: StartTime
-- Required key: EndTime
-- Required key: Filters
-- Required key: HistoricalMetrics
-- @return GetMetricDataRequest structure as a key-value pair table
function M.GetMetricDataRequest(args)
	assert(args, "You must provide an argument table when creating GetMetricDataRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["StartTime"] = args["StartTime"],
		["InstanceId"] = args["InstanceId"],
		["MaxResults"] = args["MaxResults"],
		["HistoricalMetrics"] = args["HistoricalMetrics"],
		["Filters"] = args["Filters"],
		["EndTime"] = args["EndTime"],
		["Groupings"] = args["Groupings"],
	}
	asserts.AssertGetMetricDataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RoutingProfileSummary = { ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertRoutingProfileSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoutingProfileSummary to be of type 'table'")
	if struct["Id"] then asserts.AssertRoutingProfileId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertARN(struct["Arn"]) end
	if struct["Name"] then asserts.AssertRoutingProfileName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.RoutingProfileSummary[k], "RoutingProfileSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoutingProfileSummary
-- <p>A <code>RoutingProfileSummary</code> object that contains information about a routing profile, including ARN, Id, and Name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [RoutingProfileId] <p>The identifier of the routing profile.</p>
-- * Arn [ARN] <p>The ARN of the routing profile.</p>
-- * Name [RoutingProfileName] <p>The name of the routing profile.</p>
-- @return RoutingProfileSummary structure as a key-value pair table
function M.RoutingProfileSummary(args)
	assert(args, "You must provide an argument table when creating RoutingProfileSummary")
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
	asserts.AssertRoutingProfileSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCurrentMetricDataRequest = { ["InstanceId"] = true, ["MaxResults"] = true, ["Filters"] = true, ["NextToken"] = true, ["CurrentMetrics"] = true, ["Groupings"] = true, nil }

function asserts.AssertGetCurrentMetricDataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCurrentMetricDataRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["Filters"], "Expected key Filters to exist in table")
	assert(struct["CurrentMetrics"], "Expected key CurrentMetrics to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["MaxResults"] then asserts.AssertMaxResult100(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertFilters(struct["Filters"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CurrentMetrics"] then asserts.AssertCurrentMetrics(struct["CurrentMetrics"]) end
	if struct["Groupings"] then asserts.AssertGroupings(struct["Groupings"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCurrentMetricDataRequest[k], "GetCurrentMetricDataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCurrentMetricDataRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * MaxResults [MaxResult100] <p> <code>MaxResults</code> indicates the maximum number of results to return per page in the response, between 1 and 100.</p>
-- * Filters [Filters] <p>A <code>Filters</code> object that contains a list of queue IDs or queue ARNs, up to 100, or list of Channels to use to filter the metrics returned in the response. Metric data is retrieved only for the resources associated with the queue IDs, ARNs, or Channels included in the filter. You can include both IDs and ARNs in the same request. To retrieve metrics for all queues, add the queue ID or ARN for each queue in your instance. Only VOICE is supported for Channels.</p> <p>To find the ARN for a queue, open the queue you want to use in the Amazon Connect Queue editor. The ARN for the queue is displayed in the address bar as part of the URL. For example, the queue ARN is the set of characters at the end of the URL, after 'id=' such as <code>arn:aws:connect:us-east-1:270923740243:instance/78fb859d-1b7d-44b1-8aa3-12f0835c5855/queue/1d1a4575-9618-40ab-bbeb-81e45795fe61</code>. The queue ID is also included in the URL, and is the string after 'queue/'.</p>
-- * NextToken [NextToken] <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p> <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use the <a href="">NextToken</a> must use the same request parameters as the request that generated the token.</p>
-- * CurrentMetrics [CurrentMetrics] <p>A list of <code>CurrentMetric</code> objects for the metrics to retrieve. Each <code>CurrentMetric</code> includes a name of a metric to retrieve and the unit to use for it.</p> <p>The following metrics are available:</p> <dl> <dt>AGENTS_AVAILABLE</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_ONLINE</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_ON_CALL</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_STAFFED</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_AFTER_CONTACT_WORK</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_NON_PRODUCTIVE</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>AGENTS_ERROR</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>CONTACTS_IN_QUEUE</dt> <dd> <p>Unit: COUNT</p> </dd> <dt>OLDEST_CONTACT_AGE</dt> <dd> <p>Unit: SECONDS</p> </dd> <dt>CONTACTS_SCHEDULED</dt> <dd> <p>Unit: COUNT</p> </dd> </dl>
-- * Groupings [Groupings] <p>The grouping applied to the metrics returned. For example, when grouped by QUEUE, the metrics returned apply to each queue rather than aggregated for all queues. If you group by CHANNEL, you should include a Channels filter. The only supported channel is VOICE.</p> <p>If no <code>Grouping</code> is included in the request, a summary of <code>CurrentMetrics</code> is returned. </p>
-- Required key: InstanceId
-- Required key: Filters
-- Required key: CurrentMetrics
-- @return GetCurrentMetricDataRequest structure as a key-value pair table
function M.GetCurrentMetricDataRequest(args)
	assert(args, "You must provide an argument table when creating GetCurrentMetricDataRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
		["NextToken"] = args["NextToken"],
		["CurrentMetrics"] = args["CurrentMetrics"],
		["Groupings"] = args["Groupings"],
	}
	asserts.AssertGetCurrentMetricDataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPhoneConfig = { ["DeskPhoneNumber"] = true, ["AutoAccept"] = true, ["PhoneType"] = true, ["AfterContactWorkTimeLimit"] = true, nil }

function asserts.AssertUserPhoneConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPhoneConfig to be of type 'table'")
	assert(struct["PhoneType"], "Expected key PhoneType to exist in table")
	if struct["DeskPhoneNumber"] then asserts.AssertPhoneNumber(struct["DeskPhoneNumber"]) end
	if struct["AutoAccept"] then asserts.AssertAutoAccept(struct["AutoAccept"]) end
	if struct["PhoneType"] then asserts.AssertPhoneType(struct["PhoneType"]) end
	if struct["AfterContactWorkTimeLimit"] then asserts.AssertAfterContactWorkTimeLimit(struct["AfterContactWorkTimeLimit"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPhoneConfig[k], "UserPhoneConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPhoneConfig
-- <p>A <code>UserPhoneConfig</code> object that contains information about the user phone configuration settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeskPhoneNumber [PhoneNumber] <p>The phone number for the user's desk phone.</p>
-- * AutoAccept [AutoAccept] <p>The Auto accept setting for the user, Yes or No.</p>
-- * PhoneType [PhoneType] <p>The phone type selected for the user, either Soft phone or Desk phone.</p>
-- * AfterContactWorkTimeLimit [AfterContactWorkTimeLimit] <p>The After Call Work (ACW) timeout setting, in seconds, for the user.</p>
-- Required key: PhoneType
-- @return UserPhoneConfig structure as a key-value pair table
function M.UserPhoneConfig(args)
	assert(args, "You must provide an argument table when creating UserPhoneConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeskPhoneNumber"] = args["DeskPhoneNumber"],
		["AutoAccept"] = args["AutoAccept"],
		["PhoneType"] = args["PhoneType"],
		["AfterContactWorkTimeLimit"] = args["AfterContactWorkTimeLimit"],
	}
	asserts.AssertUserPhoneConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCurrentMetricDataResponse = { ["MetricResults"] = true, ["NextToken"] = true, ["DataSnapshotTime"] = true, nil }

function asserts.AssertGetCurrentMetricDataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCurrentMetricDataResponse to be of type 'table'")
	if struct["MetricResults"] then asserts.AssertCurrentMetricResults(struct["MetricResults"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["DataSnapshotTime"] then asserts.Asserttimestamp(struct["DataSnapshotTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCurrentMetricDataResponse[k], "GetCurrentMetricDataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCurrentMetricDataResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetricResults [CurrentMetricResults] <p>A list of <code>CurrentMetricResult</code> objects organized by <code>Dimensions</code> combining with <code>CurrentMetricDataCollections</code>.</p> <p> <code>Dimensions</code> is the resourceId specified in the <code>Filters</code> of the request. </p> <p> <code>Collections</code> is a list of <code>CurrentMetricData</code> objects with corresponding values to the <code>CurrentMetrics</code> specified in the request.</p> <p>If no <code>Grouping</code> is specified in the request, <code>Collections</code> is a summary for the <code>CurrentMetric</code> returned.</p>
-- * NextToken [NextToken] <p>A string returned in the response. Use the value returned in the response as the value of the NextToken in a subsequent request to retrieve the next set of results.</p> <p>The token expires after 5 minutes from the time it is created. Subsequent requests that use the NextToken must use the same request parameters as the request that generated the token. </p>
-- * DataSnapshotTime [timestamp] <p>The time at which <code>CurrentMetricData</code> was retrieved and cached for pagination.</p>
-- @return GetCurrentMetricDataResponse structure as a key-value pair table
function M.GetCurrentMetricDataResponse(args)
	assert(args, "You must provide an argument table when creating GetCurrentMetricDataResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetricResults"] = args["MetricResults"],
		["NextToken"] = args["NextToken"],
		["DataSnapshotTime"] = args["DataSnapshotTime"],
	}
	asserts.AssertGetCurrentMetricDataResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.User = { ["Username"] = true, ["IdentityInfo"] = true, ["PhoneConfig"] = true, ["SecurityProfileIds"] = true, ["HierarchyGroupId"] = true, ["DirectoryUserId"] = true, ["RoutingProfileId"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected User to be of type 'table'")
	if struct["Username"] then asserts.AssertAgentUsername(struct["Username"]) end
	if struct["IdentityInfo"] then asserts.AssertUserIdentityInfo(struct["IdentityInfo"]) end
	if struct["PhoneConfig"] then asserts.AssertUserPhoneConfig(struct["PhoneConfig"]) end
	if struct["SecurityProfileIds"] then asserts.AssertSecurityProfileIds(struct["SecurityProfileIds"]) end
	if struct["HierarchyGroupId"] then asserts.AssertHierarchyGroupId(struct["HierarchyGroupId"]) end
	if struct["DirectoryUserId"] then asserts.AssertDirectoryUserId(struct["DirectoryUserId"]) end
	if struct["RoutingProfileId"] then asserts.AssertRoutingProfileId(struct["RoutingProfileId"]) end
	if struct["Id"] then asserts.AssertUserId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertARN(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.User[k], "User contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type User
-- <p>A <code>User</code> object that contains information about a user account in your Amazon Connect instance, including configuration settings.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [AgentUsername] <p>The user name assigned to the user account.</p>
-- * IdentityInfo [UserIdentityInfo] <p>A <code>UserIdentityInfo</code> object.</p>
-- * PhoneConfig [UserPhoneConfig] <p>A <code>UserPhoneConfig</code> object.</p>
-- * SecurityProfileIds [SecurityProfileIds] <p>The identifier(s) for the security profile assigned to the user.</p>
-- * HierarchyGroupId [HierarchyGroupId] <p>The identifier for the hierarchy group assigned to the user.</p>
-- * DirectoryUserId [DirectoryUserId] <p>The directory Id for the user account in the existing directory used for identity management.</p>
-- * RoutingProfileId [RoutingProfileId] <p>The identifier of the routing profile assigned to the user.</p>
-- * Id [UserId] <p>The identifier of the user account.</p>
-- * Arn [ARN] <p>The ARN of the user account.</p>
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
		["Username"] = args["Username"],
		["IdentityInfo"] = args["IdentityInfo"],
		["PhoneConfig"] = args["PhoneConfig"],
		["SecurityProfileIds"] = args["SecurityProfileIds"],
		["HierarchyGroupId"] = args["HierarchyGroupId"],
		["DirectoryUserId"] = args["DirectoryUserId"],
		["RoutingProfileId"] = args["RoutingProfileId"],
		["Id"] = args["Id"],
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

keys.Credentials = { ["RefreshTokenExpiration"] = true, ["RefreshToken"] = true, ["AccessToken"] = true, ["AccessTokenExpiration"] = true, nil }

function asserts.AssertCredentials(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Credentials to be of type 'table'")
	if struct["RefreshTokenExpiration"] then asserts.Asserttimestamp(struct["RefreshTokenExpiration"]) end
	if struct["RefreshToken"] then asserts.AssertSecurityToken(struct["RefreshToken"]) end
	if struct["AccessToken"] then asserts.AssertSecurityToken(struct["AccessToken"]) end
	if struct["AccessTokenExpiration"] then asserts.Asserttimestamp(struct["AccessTokenExpiration"]) end
	for k,_ in pairs(struct) do
		assert(keys.Credentials[k], "Credentials contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Credentials
-- <p>The credentials to use for federation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RefreshTokenExpiration [timestamp] <p>Renews the expiration timer for a generated token.</p>
-- * RefreshToken [SecurityToken] <p>Renews a token generated for a user to access the Amazon Connect instance.</p>
-- * AccessToken [SecurityToken] <p>An access token generated for a federated user to access Amazon Connect</p>
-- * AccessTokenExpiration [timestamp] <p>A token generated with an expiration time for the session a user is logged in to Amazon Connect</p>
-- @return Credentials structure as a key-value pair table
function M.Credentials(args)
	assert(args, "You must provide an argument table when creating Credentials")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RefreshTokenExpiration"] = args["RefreshTokenExpiration"],
		["RefreshToken"] = args["RefreshToken"],
		["AccessToken"] = args["AccessToken"],
		["AccessTokenExpiration"] = args["AccessTokenExpiration"],
	}
	asserts.AssertCredentials(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CurrentMetricData = { ["Metric"] = true, ["Value"] = true, nil }

function asserts.AssertCurrentMetricData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CurrentMetricData to be of type 'table'")
	if struct["Metric"] then asserts.AssertCurrentMetric(struct["Metric"]) end
	if struct["Value"] then asserts.AssertValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.CurrentMetricData[k], "CurrentMetricData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CurrentMetricData
-- <p>A <code>CurrentMetricData</code> object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metric [CurrentMetric] <p>The metric in a <code>CurrentMetricData</code> object.</p>
-- * Value [Value] <p>The value of the metric in the CurrentMetricData object.</p>
-- @return CurrentMetricData structure as a key-value pair table
function M.CurrentMetricData(args)
	assert(args, "You must provide an argument table when creating CurrentMetricData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metric"] = args["Metric"],
		["Value"] = args["Value"],
	}
	asserts.AssertCurrentMetricData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityProfileSummary = { ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertSecurityProfileSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityProfileSummary to be of type 'table'")
	if struct["Id"] then asserts.AssertSecurityProfileId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertARN(struct["Arn"]) end
	if struct["Name"] then asserts.AssertSecurityProfileName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityProfileSummary[k], "SecurityProfileSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityProfileSummary
-- <p>A <code>SecurityProfileSummary</code> object that contains information about a security profile, including ARN, Id, Name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [SecurityProfileId] <p>The identifier of the security profile.</p>
-- * Arn [ARN] <p>The ARN of the security profile.</p>
-- * Name [SecurityProfileName] <p>The name of the security profile.</p>
-- @return SecurityProfileSummary structure as a key-value pair table
function M.SecurityProfileSummary(args)
	assert(args, "You must provide an argument table when creating SecurityProfileSummary")
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
	asserts.AssertSecurityProfileSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CurrentMetricResult = { ["Collections"] = true, ["Dimensions"] = true, nil }

function asserts.AssertCurrentMetricResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CurrentMetricResult to be of type 'table'")
	if struct["Collections"] then asserts.AssertCurrentMetricDataCollections(struct["Collections"]) end
	if struct["Dimensions"] then asserts.AssertDimensions(struct["Dimensions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CurrentMetricResult[k], "CurrentMetricResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CurrentMetricResult
-- <p>A <code>CurrentMetricResult</code> object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Collections [CurrentMetricDataCollections] <p>The <code>Collections</code> for the <code>CurrentMetricResult</code> object.</p>
-- * Dimensions [Dimensions] <p>The <code>Dimensions</code> for the <code>CurrentMetricResult</code> object.</p>
-- @return CurrentMetricResult structure as a key-value pair table
function M.CurrentMetricResult(args)
	assert(args, "You must provide an argument table when creating CurrentMetricResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Collections"] = args["Collections"],
		["Dimensions"] = args["Dimensions"],
	}
	asserts.AssertCurrentMetricResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserRequest = { ["Username"] = true, ["IdentityInfo"] = true, ["PhoneConfig"] = true, ["SecurityProfileIds"] = true, ["InstanceId"] = true, ["DirectoryUserId"] = true, ["RoutingProfileId"] = true, ["Password"] = true, ["HierarchyGroupId"] = true, nil }

function asserts.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["Username"], "Expected key Username to exist in table")
	assert(struct["PhoneConfig"], "Expected key PhoneConfig to exist in table")
	assert(struct["SecurityProfileIds"], "Expected key SecurityProfileIds to exist in table")
	assert(struct["RoutingProfileId"], "Expected key RoutingProfileId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["Username"] then asserts.AssertAgentUsername(struct["Username"]) end
	if struct["IdentityInfo"] then asserts.AssertUserIdentityInfo(struct["IdentityInfo"]) end
	if struct["PhoneConfig"] then asserts.AssertUserPhoneConfig(struct["PhoneConfig"]) end
	if struct["SecurityProfileIds"] then asserts.AssertSecurityProfileIds(struct["SecurityProfileIds"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["DirectoryUserId"] then asserts.AssertDirectoryUserId(struct["DirectoryUserId"]) end
	if struct["RoutingProfileId"] then asserts.AssertRoutingProfileId(struct["RoutingProfileId"]) end
	if struct["Password"] then asserts.AssertPassword(struct["Password"]) end
	if struct["HierarchyGroupId"] then asserts.AssertHierarchyGroupId(struct["HierarchyGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserRequest[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [AgentUsername] <p>The user name in Amazon Connect for the account to create.</p>
-- * IdentityInfo [UserIdentityInfo] <p>Information about the user, including email address, first name, and last name.</p>
-- * PhoneConfig [UserPhoneConfig] <p>Specifies the phone settings for the user, including AfterContactWorkTimeLimit, AutoAccept, DeskPhoneNumber, and PhoneType.</p>
-- * SecurityProfileIds [SecurityProfileIds] <p>The unique identifier of the security profile to assign to the user created.</p>
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * DirectoryUserId [DirectoryUserId] <p>The unique identifier for the user account in the directory service directory used for identity management. If Amazon Connect is unable to access the existing directory, you can use the <code>DirectoryUserId</code> to authenticate users. If you include the parameter, it is assumed that Amazon Connect cannot access the directory. If the parameter is not included, the UserIdentityInfo is used to authenticate users from your existing directory.</p> <p>This parameter is required if you are using an existing directory for identity management in Amazon Connect when Amazon Connect cannot access your directory to authenticate users. If you are using SAML for identity management and include this parameter, an <code>InvalidRequestException</code> is returned.</p>
-- * RoutingProfileId [RoutingProfileId] <p>The unique identifier for the routing profile to assign to the user created.</p>
-- * Password [Password] <p>The password for the user account to create. This is required if you are using Amazon Connect for identity management. If you are using SAML for identity management and include this parameter, an <code>InvalidRequestException</code> is returned.</p>
-- * HierarchyGroupId [HierarchyGroupId] <p>The unique identifier for the hierarchy group to assign to the user created.</p>
-- Required key: Username
-- Required key: PhoneConfig
-- Required key: SecurityProfileIds
-- Required key: RoutingProfileId
-- Required key: InstanceId
-- @return CreateUserRequest structure as a key-value pair table
function M.CreateUserRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["IdentityInfo"] = args["IdentityInfo"],
		["PhoneConfig"] = args["PhoneConfig"],
		["SecurityProfileIds"] = args["SecurityProfileIds"],
		["InstanceId"] = args["InstanceId"],
		["DirectoryUserId"] = args["DirectoryUserId"],
		["RoutingProfileId"] = args["RoutingProfileId"],
		["Password"] = args["Password"],
		["HierarchyGroupId"] = args["HierarchyGroupId"],
	}
	asserts.AssertCreateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRoutingProfilesRequest = { ["InstanceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListRoutingProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRoutingProfilesRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResult1000(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRoutingProfilesRequest[k], "ListRoutingProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRoutingProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * NextToken [NextToken] <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
-- * MaxResults [MaxResult1000] <p>The maximum number of routing profiles to return in the response.</p>
-- Required key: InstanceId
-- @return ListRoutingProfilesRequest structure as a key-value pair table
function M.ListRoutingProfilesRequest(args)
	assert(args, "You must provide an argument table when creating ListRoutingProfilesRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListRoutingProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserIdentityInfoRequest = { ["InstanceId"] = true, ["IdentityInfo"] = true, ["UserId"] = true, nil }

function asserts.AssertUpdateUserIdentityInfoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserIdentityInfoRequest to be of type 'table'")
	assert(struct["IdentityInfo"], "Expected key IdentityInfo to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["IdentityInfo"] then asserts.AssertUserIdentityInfo(struct["IdentityInfo"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserIdentityInfoRequest[k], "UpdateUserIdentityInfoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserIdentityInfoRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * IdentityInfo [UserIdentityInfo] <p>A <code>UserIdentityInfo</code> object.</p>
-- * UserId [UserId] <p>The identifier for the user account to update identity information for.</p>
-- Required key: IdentityInfo
-- Required key: UserId
-- Required key: InstanceId
-- @return UpdateUserIdentityInfoRequest structure as a key-value pair table
function M.UpdateUserIdentityInfoRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserIdentityInfoRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["IdentityInfo"] = args["IdentityInfo"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertUpdateUserIdentityInfoRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUserHierarchyGroupsRequest = { ["InstanceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListUserHierarchyGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUserHierarchyGroupsRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResult1000(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUserHierarchyGroupsRequest[k], "ListUserHierarchyGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUserHierarchyGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * NextToken [NextToken] <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
-- * MaxResults [MaxResult1000] <p>The maximum number of hierarchy groups to return.</p>
-- Required key: InstanceId
-- @return ListUserHierarchyGroupsRequest structure as a key-value pair table
function M.ListUserHierarchyGroupsRequest(args)
	assert(args, "You must provide an argument table when creating ListUserHierarchyGroupsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListUserHierarchyGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserHierarchyRequest = { ["InstanceId"] = true, ["UserId"] = true, ["HierarchyGroupId"] = true, nil }

function asserts.AssertUpdateUserHierarchyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserHierarchyRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	if struct["HierarchyGroupId"] then asserts.AssertHierarchyGroupId(struct["HierarchyGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserHierarchyRequest[k], "UpdateUserHierarchyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserHierarchyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * UserId [UserId] <p>The identifier of the user account to assign the hierarchy group to.</p>
-- * HierarchyGroupId [HierarchyGroupId] <p>The identifier for the hierarchy group to assign to the user.</p>
-- Required key: UserId
-- Required key: InstanceId
-- @return UpdateUserHierarchyRequest structure as a key-value pair table
function M.UpdateUserHierarchyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserHierarchyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["UserId"] = args["UserId"],
		["HierarchyGroupId"] = args["HierarchyGroupId"],
	}
	asserts.AssertUpdateUserHierarchyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeUserHierarchyGroupRequest = { ["InstanceId"] = true, ["HierarchyGroupId"] = true, nil }

function asserts.AssertDescribeUserHierarchyGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeUserHierarchyGroupRequest to be of type 'table'")
	assert(struct["HierarchyGroupId"], "Expected key HierarchyGroupId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["HierarchyGroupId"] then asserts.AssertHierarchyGroupId(struct["HierarchyGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeUserHierarchyGroupRequest[k], "DescribeUserHierarchyGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeUserHierarchyGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * HierarchyGroupId [HierarchyGroupId] <p>The identifier for the hierarchy group to return.</p>
-- Required key: HierarchyGroupId
-- Required key: InstanceId
-- @return DescribeUserHierarchyGroupRequest structure as a key-value pair table
function M.DescribeUserHierarchyGroupRequest(args)
	assert(args, "You must provide an argument table when creating DescribeUserHierarchyGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
        ["{HierarchyGroupId}"] = args["HierarchyGroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["HierarchyGroupId"] = args["HierarchyGroupId"],
	}
	asserts.AssertDescribeUserHierarchyGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSecurityProfilesResponse = { ["SecurityProfileSummaryList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListSecurityProfilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSecurityProfilesResponse to be of type 'table'")
	if struct["SecurityProfileSummaryList"] then asserts.AssertSecurityProfileSummaryList(struct["SecurityProfileSummaryList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSecurityProfilesResponse[k], "ListSecurityProfilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSecurityProfilesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityProfileSummaryList [SecurityProfileSummaryList] <p>An array of <code>SecurityProfileSummary</code> objects.</p>
-- * NextToken [NextToken] <p>A string returned in the response. Use the value returned in the response as the value of the NextToken in a subsequent request to retrieve the next set of results.</p>
-- @return ListSecurityProfilesResponse structure as a key-value pair table
function M.ListSecurityProfilesResponse(args)
	assert(args, "You must provide an argument table when creating ListSecurityProfilesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityProfileSummaryList"] = args["SecurityProfileSummaryList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListSecurityProfilesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserSecurityProfilesRequest = { ["InstanceId"] = true, ["UserId"] = true, ["SecurityProfileIds"] = true, nil }

function asserts.AssertUpdateUserSecurityProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserSecurityProfilesRequest to be of type 'table'")
	assert(struct["SecurityProfileIds"], "Expected key SecurityProfileIds to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	if struct["SecurityProfileIds"] then asserts.AssertSecurityProfileIds(struct["SecurityProfileIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserSecurityProfilesRequest[k], "UpdateUserSecurityProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserSecurityProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * UserId [UserId] <p>The identifier of the user account to assign the security profiles.</p>
-- * SecurityProfileIds [SecurityProfileIds] <p>The identifiers for the security profiles to assign to the user.</p>
-- Required key: SecurityProfileIds
-- Required key: UserId
-- Required key: InstanceId
-- @return UpdateUserSecurityProfilesRequest structure as a key-value pair table
function M.UpdateUserSecurityProfilesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserSecurityProfilesRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["UserId"] = args["UserId"],
		["SecurityProfileIds"] = args["SecurityProfileIds"],
	}
	asserts.AssertUpdateUserSecurityProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserRoutingProfileRequest = { ["InstanceId"] = true, ["RoutingProfileId"] = true, ["UserId"] = true, nil }

function asserts.AssertUpdateUserRoutingProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserRoutingProfileRequest to be of type 'table'")
	assert(struct["RoutingProfileId"], "Expected key RoutingProfileId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["RoutingProfileId"] then asserts.AssertRoutingProfileId(struct["RoutingProfileId"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserRoutingProfileRequest[k], "UpdateUserRoutingProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserRoutingProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * RoutingProfileId [RoutingProfileId] <p>The identifier of the routing profile to assign to the user.</p>
-- * UserId [UserId] <p>The identifier for the user account to assign the routing profile to.</p>
-- Required key: RoutingProfileId
-- Required key: UserId
-- Required key: InstanceId
-- @return UpdateUserRoutingProfileRequest structure as a key-value pair table
function M.UpdateUserRoutingProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserRoutingProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["RoutingProfileId"] = args["RoutingProfileId"],
		["UserId"] = args["UserId"],
	}
	asserts.AssertUpdateUserRoutingProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HierarchyLevel = { ["Id"] = true, ["Arn"] = true, ["Name"] = true, nil }

function asserts.AssertHierarchyLevel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyLevel to be of type 'table'")
	if struct["Id"] then asserts.AssertHierarchyLevelId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertARN(struct["Arn"]) end
	if struct["Name"] then asserts.AssertHierarchyLevelName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.HierarchyLevel[k], "HierarchyLevel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyLevel
-- <p>A <code>HierarchyLevel</code> object that contains information about the levels in a hierarchy group, including ARN, Id, and Name.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [HierarchyLevelId] <p>The identifier for the hierarchy group level.</p>
-- * Arn [ARN] <p>The ARN for the hierarchy group level.</p>
-- * Name [HierarchyLevelName] <p>The name of the hierarchy group level.</p>
-- @return HierarchyLevel structure as a key-value pair table
function M.HierarchyLevel(args)
	assert(args, "You must provide an argument table when creating HierarchyLevel")
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
	asserts.AssertHierarchyLevel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopContactResponse = { nil }

function asserts.AssertStopContactResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopContactResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopContactResponse[k], "StopContactResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopContactResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopContactResponse structure as a key-value pair table
function M.StopContactResponse(args)
	assert(args, "You must provide an argument table when creating StopContactResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStopContactResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartOutboundVoiceContactResponse = { ["ContactId"] = true, nil }

function asserts.AssertStartOutboundVoiceContactResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartOutboundVoiceContactResponse to be of type 'table'")
	if struct["ContactId"] then asserts.AssertContactId(struct["ContactId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartOutboundVoiceContactResponse[k], "StartOutboundVoiceContactResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartOutboundVoiceContactResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContactId [ContactId] <p>The unique identifier of this contact within your Amazon Connect instance.</p>
-- @return StartOutboundVoiceContactResponse structure as a key-value pair table
function M.StartOutboundVoiceContactResponse(args)
	assert(args, "You must provide an argument table when creating StartOutboundVoiceContactResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContactId"] = args["ContactId"],
	}
	asserts.AssertStartOutboundVoiceContactResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserPhoneConfigRequest = { ["InstanceId"] = true, ["UserId"] = true, ["PhoneConfig"] = true, nil }

function asserts.AssertUpdateUserPhoneConfigRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserPhoneConfigRequest to be of type 'table'")
	assert(struct["PhoneConfig"], "Expected key PhoneConfig to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	if struct["PhoneConfig"] then asserts.AssertUserPhoneConfig(struct["PhoneConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserPhoneConfigRequest[k], "UpdateUserPhoneConfigRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserPhoneConfigRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * UserId [UserId] <p>The identifier for the user account to change phone settings for.</p>
-- * PhoneConfig [UserPhoneConfig] <p>A <code>UserPhoneConfig</code> object that contains settings for <code>AfterContactWorkTimeLimit</code>, <code>AutoAccept</code>, <code>DeskPhoneNumber</code>, and <code>PhoneType</code> to assign to the user.</p>
-- Required key: PhoneConfig
-- Required key: UserId
-- Required key: InstanceId
-- @return UpdateUserPhoneConfigRequest structure as a key-value pair table
function M.UpdateUserPhoneConfigRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserPhoneConfigRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
        ["{UserId}"] = args["UserId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
		["UserId"] = args["UserId"],
		["PhoneConfig"] = args["PhoneConfig"],
	}
	asserts.AssertUpdateUserPhoneConfigRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HistoricalMetric = { ["Threshold"] = true, ["Name"] = true, ["Unit"] = true, ["Statistic"] = true, nil }

function asserts.AssertHistoricalMetric(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistoricalMetric to be of type 'table'")
	if struct["Threshold"] then asserts.AssertThreshold(struct["Threshold"]) end
	if struct["Name"] then asserts.AssertHistoricalMetricName(struct["Name"]) end
	if struct["Unit"] then asserts.AssertUnit(struct["Unit"]) end
	if struct["Statistic"] then asserts.AssertStatistic(struct["Statistic"]) end
	for k,_ in pairs(struct) do
		assert(keys.HistoricalMetric[k], "HistoricalMetric contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistoricalMetric
-- <p>A <code>HistoricalMetric</code> object that contains the Name, Unit, Statistic, and Threshold for the metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Threshold [Threshold] <p>The threshold for the metric, used with service level metrics.</p>
-- * Name [HistoricalMetricName] <p>The name of the historical metric.</p>
-- * Unit [Unit] <p>The unit for the metric: COUNT, PERCENT, or SECONDS.</p>
-- * Statistic [Statistic] <p>The statistic for the metric: SUM, MAX, or SUM.</p>
-- @return HistoricalMetric structure as a key-value pair table
function M.HistoricalMetric(args)
	assert(args, "You must provide an argument table when creating HistoricalMetric")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Threshold"] = args["Threshold"],
		["Name"] = args["Name"],
		["Unit"] = args["Unit"],
		["Statistic"] = args["Statistic"],
	}
	asserts.AssertHistoricalMetric(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListUsersRequest = { ["InstanceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListUsersRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResult1000(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListUsersRequest[k], "ListUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListUsersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The identifier for your Amazon Connect instance. To find the ID of your instance, open the AWS console and select Amazon Connect. Select the alias of the instance in the Instance alias column. The instance ID is displayed in the Overview section of your instance settings. For example, the instance ID is the set of characters at the end of the instance ARN, after instance/, such as 10a4c4eb-f57e-4d4c-b602-bf39176ced07.</p>
-- * NextToken [NextToken] <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
-- * MaxResults [MaxResult1000] <p>The maximum number of results to return in the response.</p>
-- Required key: InstanceId
-- @return ListUsersRequest structure as a key-value pair table
function M.ListUsersRequest(args)
	assert(args, "You must provide an argument table when creating ListUsersRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{InstanceId}"] = args["InstanceId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InstanceId"] = args["InstanceId"],
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

keys.Filters = { ["Channels"] = true, ["Queues"] = true, nil }

function asserts.AssertFilters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filters to be of type 'table'")
	if struct["Channels"] then asserts.AssertChannels(struct["Channels"]) end
	if struct["Queues"] then asserts.AssertQueues(struct["Queues"]) end
	for k,_ in pairs(struct) do
		assert(keys.Filters[k], "Filters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filters
-- <p>The filter, either channel or queues, to apply to the metric results retrieved.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channels [Channels] <p>The Channel to use as a filter for the metrics returned. Only VOICE is supported.</p>
-- * Queues [Queues] <p>A list of up to 100 queue IDs or queue ARNs to use to filter the metrics retrieved. You can include both IDs and ARNs in a request.</p>
-- @return Filters structure as a key-value pair table
function M.Filters(args)
	assert(args, "You must provide an argument table when creating Filters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Channels"] = args["Channels"],
		["Queues"] = args["Queues"],
	}
	asserts.AssertFilters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Threshold = { ["Comparison"] = true, ["ThresholdValue"] = true, nil }

function asserts.AssertThreshold(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Threshold to be of type 'table'")
	if struct["Comparison"] then asserts.AssertComparison(struct["Comparison"]) end
	if struct["ThresholdValue"] then asserts.AssertThresholdValue(struct["ThresholdValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Threshold[k], "Threshold contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Threshold
-- <p>A <code>Threshold</code> object that includes a comparison and <code>ThresholdValue</code> to compare to. Used with service level metrics.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comparison [Comparison] <p>The Threshold to use to compare service level metrics to. Only "Less than" (LT) comparisons are supported.</p>
-- * ThresholdValue [ThresholdValue] <p>The value of the threshold to compare the metric to. Only "Less than" (LT) comparisons are supported.</p>
-- @return Threshold structure as a key-value pair table
function M.Threshold(args)
	assert(args, "You must provide an argument table when creating Threshold")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comparison"] = args["Comparison"],
		["ThresholdValue"] = args["ThresholdValue"],
	}
	asserts.AssertThreshold(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertHierarchyGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected HierarchyGroupId to be of type 'string'")
end

--  
function M.HierarchyGroupId(str)
	asserts.AssertHierarchyGroupId(str)
	return str
end

function asserts.AssertHistoricalMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected HistoricalMetricName to be of type 'string'")
end

-- <p>A list of historical metric names.</p>
function M.HistoricalMetricName(str)
	asserts.AssertHistoricalMetricName(str)
	return str
end

function asserts.AssertContactId(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContactId(str)
	asserts.AssertContactId(str)
	return str
end

function asserts.AssertPhoneNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected PhoneNumber to be of type 'string'")
end

--  
function M.PhoneNumber(str)
	asserts.AssertPhoneNumber(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 32767, "Expected string to be max 32767 characters")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertStatistic(str)
	assert(str)
	assert(type(str) == "string", "Expected Statistic to be of type 'string'")
end

--  
function M.Statistic(str)
	asserts.AssertStatistic(str)
	return str
end

function asserts.AssertRoutingProfileName(str)
	assert(str)
	assert(type(str) == "string", "Expected RoutingProfileName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoutingProfileName(str)
	asserts.AssertRoutingProfileName(str)
	return str
end

function asserts.AssertHierarchyLevelName(str)
	assert(str)
	assert(type(str) == "string", "Expected HierarchyLevelName to be of type 'string'")
end

--  
function M.HierarchyLevelName(str)
	asserts.AssertHierarchyLevelName(str)
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
end

--  
function M.Email(str)
	asserts.AssertEmail(str)
	return str
end

function asserts.AssertAgentUsername(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentUsername to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AgentUsername(str)
	asserts.AssertAgentUsername(str)
	return str
end

function asserts.AssertSecurityToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityToken to be of type 'string'")
end

--  
function M.SecurityToken(str)
	asserts.AssertSecurityToken(str)
	return str
end

function asserts.AssertCurrentMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected CurrentMetricName to be of type 'string'")
end

-- <p>A list of current metric names.</p>
function M.CurrentMetricName(str)
	asserts.AssertCurrentMetricName(str)
	return str
end

function asserts.AssertQueueId(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueId to be of type 'string'")
end

--  
function M.QueueId(str)
	asserts.AssertQueueId(str)
	return str
end

function asserts.AssertUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected UserId to be of type 'string'")
end

--  
function M.UserId(str)
	asserts.AssertUserId(str)
	return str
end

function asserts.AssertDirectoryUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryUserId to be of type 'string'")
end

--  
function M.DirectoryUserId(str)
	asserts.AssertDirectoryUserId(str)
	return str
end

function asserts.AssertSecurityProfileId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityProfileId to be of type 'string'")
end

--  
function M.SecurityProfileId(str)
	asserts.AssertSecurityProfileId(str)
	return str
end

function asserts.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.ClientToken(str)
	asserts.AssertClientToken(str)
	return str
end

function asserts.AssertGrouping(str)
	assert(str)
	assert(type(str) == "string", "Expected Grouping to be of type 'string'")
end

--  
function M.Grouping(str)
	asserts.AssertGrouping(str)
	return str
end

function asserts.AssertComparison(str)
	assert(str)
	assert(type(str) == "string", "Expected Comparison to be of type 'string'")
end

--  
function M.Comparison(str)
	asserts.AssertComparison(str)
	return str
end

function asserts.AssertPhoneType(str)
	assert(str)
	assert(type(str) == "string", "Expected PhoneType to be of type 'string'")
end

--  
function M.PhoneType(str)
	asserts.AssertPhoneType(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 32767, "Expected string to be max 32767 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertAgentLastName(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentLastName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AgentLastName(str)
	asserts.AssertAgentLastName(str)
	return str
end

function asserts.AssertUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected Unit to be of type 'string'")
end

--  
function M.Unit(str)
	asserts.AssertUnit(str)
	return str
end

function asserts.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceId(str)
	asserts.AssertInstanceId(str)
	return str
end

function asserts.AssertHierarchyGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected HierarchyGroupName to be of type 'string'")
end

--  
function M.HierarchyGroupName(str)
	asserts.AssertHierarchyGroupName(str)
	return str
end

function asserts.AssertHierarchyLevelId(str)
	assert(str)
	assert(type(str) == "string", "Expected HierarchyLevelId to be of type 'string'")
end

--  
function M.HierarchyLevelId(str)
	asserts.AssertHierarchyLevelId(str)
	return str
end

function asserts.AssertAgentFirstName(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentFirstName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AgentFirstName(str)
	asserts.AssertAgentFirstName(str)
	return str
end

function asserts.AssertContactFlowId(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactFlowId to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.ContactFlowId(str)
	asserts.AssertContactFlowId(str)
	return str
end

function asserts.AssertChannel(str)
	assert(str)
	assert(type(str) == "string", "Expected Channel to be of type 'string'")
end

--  
function M.Channel(str)
	asserts.AssertChannel(str)
	return str
end

function asserts.AssertPassword(str)
	assert(str)
	assert(type(str) == "string", "Expected Password to be of type 'string'")
end

--  
function M.Password(str)
	asserts.AssertPassword(str)
	return str
end

function asserts.AssertSecurityProfileName(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityProfileName to be of type 'string'")
end

--  
function M.SecurityProfileName(str)
	asserts.AssertSecurityProfileName(str)
	return str
end

function asserts.AssertRoutingProfileId(str)
	assert(str)
	assert(type(str) == "string", "Expected RoutingProfileId to be of type 'string'")
end

--  
function M.RoutingProfileId(str)
	asserts.AssertRoutingProfileId(str)
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

function asserts.AssertValue(double)
	assert(double)
	assert(type(double) == "number", "Expected Value to be of type 'number'")
end

function M.Value(double)
	asserts.AssertValue(double)
	return double
end

function asserts.AssertThresholdValue(double)
	assert(double)
	assert(type(double) == "number", "Expected ThresholdValue to be of type 'number'")
end

function M.ThresholdValue(double)
	asserts.AssertThresholdValue(double)
	return double
end

function asserts.AssertMaxResult100(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResult100 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResult100(integer)
	asserts.AssertMaxResult100(integer)
	return integer
end

function asserts.AssertMaxResult1000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResult1000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResult1000(integer)
	asserts.AssertMaxResult1000(integer)
	return integer
end

function asserts.AssertAfterContactWorkTimeLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AfterContactWorkTimeLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AfterContactWorkTimeLimit(integer)
	asserts.AssertAfterContactWorkTimeLimit(integer)
	return integer
end

function asserts.AssertAutoAccept(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected AutoAccept to be of type 'boolean'")
end

function M.AutoAccept(boolean)
	asserts.AssertAutoAccept(boolean)
	return boolean
end

function asserts.AssertAttributes(map)
	assert(map)
	assert(type(map) == "table", "Expected Attributes to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.Attributes(map)
	asserts.AssertAttributes(map)
	return map
end

function asserts.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	asserts.Asserttimestamp(timestamp)
	return timestamp
end

function asserts.AssertSecurityProfileSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityProfileSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecurityProfileSummary(v)
	end
end

--  
-- List of SecurityProfileSummary objects
function M.SecurityProfileSummaryList(list)
	asserts.AssertSecurityProfileSummaryList(list)
	return list
end

function asserts.AssertUserSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserSummary(v)
	end
end

--  
-- List of UserSummary objects
function M.UserSummaryList(list)
	asserts.AssertUserSummaryList(list)
	return list
end

function asserts.AssertGroupings(list)
	assert(list)
	assert(type(list) == "table", "Expected Groupings to be of type ''table")
	assert(#list <= 2, "Expected list to be contain 2 elements")
	for _,v in ipairs(list) do
		asserts.AssertGrouping(v)
	end
end

--  
-- List of Grouping objects
function M.Groupings(list)
	asserts.AssertGroupings(list)
	return list
end

function asserts.AssertChannels(list)
	assert(list)
	assert(type(list) == "table", "Expected Channels to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertChannel(v)
	end
end

--  
-- List of Channel objects
function M.Channels(list)
	asserts.AssertChannels(list)
	return list
end

function asserts.AssertHistoricalMetricDataCollections(list)
	assert(list)
	assert(type(list) == "table", "Expected HistoricalMetricDataCollections to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHistoricalMetricData(v)
	end
end

--  
-- List of HistoricalMetricData objects
function M.HistoricalMetricDataCollections(list)
	asserts.AssertHistoricalMetricDataCollections(list)
	return list
end

function asserts.AssertRoutingProfileSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected RoutingProfileSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRoutingProfileSummary(v)
	end
end

--  
-- List of RoutingProfileSummary objects
function M.RoutingProfileSummaryList(list)
	asserts.AssertRoutingProfileSummaryList(list)
	return list
end

function asserts.AssertCurrentMetricDataCollections(list)
	assert(list)
	assert(type(list) == "table", "Expected CurrentMetricDataCollections to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCurrentMetricData(v)
	end
end

--  
-- List of CurrentMetricData objects
function M.CurrentMetricDataCollections(list)
	asserts.AssertCurrentMetricDataCollections(list)
	return list
end

function asserts.AssertHistoricalMetricResults(list)
	assert(list)
	assert(type(list) == "table", "Expected HistoricalMetricResults to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHistoricalMetricResult(v)
	end
end

--  
-- List of HistoricalMetricResult objects
function M.HistoricalMetricResults(list)
	asserts.AssertHistoricalMetricResults(list)
	return list
end

function asserts.AssertSecurityProfileIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityProfileIds to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSecurityProfileId(v)
	end
end

--  
-- List of SecurityProfileId objects
function M.SecurityProfileIds(list)
	asserts.AssertSecurityProfileIds(list)
	return list
end

function asserts.AssertCurrentMetrics(list)
	assert(list)
	assert(type(list) == "table", "Expected CurrentMetrics to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCurrentMetric(v)
	end
end

--  
-- List of CurrentMetric objects
function M.CurrentMetrics(list)
	asserts.AssertCurrentMetrics(list)
	return list
end

function asserts.AssertHierarchyGroupSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected HierarchyGroupSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHierarchyGroupSummary(v)
	end
end

--  
-- List of HierarchyGroupSummary objects
function M.HierarchyGroupSummaryList(list)
	asserts.AssertHierarchyGroupSummaryList(list)
	return list
end

function asserts.AssertHistoricalMetrics(list)
	assert(list)
	assert(type(list) == "table", "Expected HistoricalMetrics to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHistoricalMetric(v)
	end
end

--  
-- List of HistoricalMetric objects
function M.HistoricalMetrics(list)
	asserts.AssertHistoricalMetrics(list)
	return list
end

function asserts.AssertCurrentMetricResults(list)
	assert(list)
	assert(type(list) == "table", "Expected CurrentMetricResults to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCurrentMetricResult(v)
	end
end

--  
-- List of CurrentMetricResult objects
function M.CurrentMetricResults(list)
	asserts.AssertCurrentMetricResults(list)
	return list
end

function asserts.AssertQueues(list)
	assert(list)
	assert(type(list) == "table", "Expected Queues to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertQueueId(v)
	end
end

--  
-- List of QueueId objects
function M.Queues(list)
	asserts.AssertQueues(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "connect.amazonaws.com"
		end
	end
	local ss = { "connect" }
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
--- Call DescribeUserHierarchyStructure asynchronously, invoking a callback when done
-- @param DescribeUserHierarchyStructureRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserHierarchyStructureAsync(DescribeUserHierarchyStructureRequest, cb)
	assert(DescribeUserHierarchyStructureRequest, "You must provide a DescribeUserHierarchyStructureRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeUserHierarchyStructure",
	}
	for header,value in pairs(DescribeUserHierarchyStructureRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/user-hierarchy-structure/{InstanceId}", DescribeUserHierarchyStructureRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserHierarchyStructure synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserHierarchyStructureRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserHierarchyStructureSync(DescribeUserHierarchyStructureRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserHierarchyStructureAsync(DescribeUserHierarchyStructureRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFederationToken asynchronously, invoking a callback when done
-- @param GetFederationTokenRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetFederationTokenAsync(GetFederationTokenRequest, cb)
	assert(GetFederationTokenRequest, "You must provide a GetFederationTokenRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFederationToken",
	}
	for header,value in pairs(GetFederationTokenRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/user/federate/{InstanceId}", GetFederationTokenRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFederationToken synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFederationTokenRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetFederationTokenSync(GetFederationTokenRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFederationTokenAsync(GetFederationTokenRequest, function(response, error_type, error_message)
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

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/users/{InstanceId}/{UserId}", DeleteUserRequest, headers, settings, cb)
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

--- Call ListRoutingProfiles asynchronously, invoking a callback when done
-- @param ListRoutingProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRoutingProfilesAsync(ListRoutingProfilesRequest, cb)
	assert(ListRoutingProfilesRequest, "You must provide a ListRoutingProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListRoutingProfiles",
	}
	for header,value in pairs(ListRoutingProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/routing-profiles-summary/{InstanceId}", ListRoutingProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRoutingProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRoutingProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRoutingProfilesSync(ListRoutingProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRoutingProfilesAsync(ListRoutingProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSecurityProfiles asynchronously, invoking a callback when done
-- @param ListSecurityProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSecurityProfilesAsync(ListSecurityProfilesRequest, cb)
	assert(ListSecurityProfilesRequest, "You must provide a ListSecurityProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSecurityProfiles",
	}
	for header,value in pairs(ListSecurityProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/security-profiles-summary/{InstanceId}", ListSecurityProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSecurityProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSecurityProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSecurityProfilesSync(ListSecurityProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSecurityProfilesAsync(ListSecurityProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserIdentityInfo asynchronously, invoking a callback when done
-- @param UpdateUserIdentityInfoRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserIdentityInfoAsync(UpdateUserIdentityInfoRequest, cb)
	assert(UpdateUserIdentityInfoRequest, "You must provide a UpdateUserIdentityInfoRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUserIdentityInfo",
	}
	for header,value in pairs(UpdateUserIdentityInfoRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/users/{InstanceId}/{UserId}/identity-info", UpdateUserIdentityInfoRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserIdentityInfo synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserIdentityInfoRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserIdentityInfoSync(UpdateUserIdentityInfoRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserIdentityInfoAsync(UpdateUserIdentityInfoRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartOutboundVoiceContact asynchronously, invoking a callback when done
-- @param StartOutboundVoiceContactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartOutboundVoiceContactAsync(StartOutboundVoiceContactRequest, cb)
	assert(StartOutboundVoiceContactRequest, "You must provide a StartOutboundVoiceContactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartOutboundVoiceContact",
	}
	for header,value in pairs(StartOutboundVoiceContactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/contact/outbound-voice", StartOutboundVoiceContactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartOutboundVoiceContact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartOutboundVoiceContactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartOutboundVoiceContactSync(StartOutboundVoiceContactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartOutboundVoiceContactAsync(StartOutboundVoiceContactRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserHierarchy asynchronously, invoking a callback when done
-- @param UpdateUserHierarchyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserHierarchyAsync(UpdateUserHierarchyRequest, cb)
	assert(UpdateUserHierarchyRequest, "You must provide a UpdateUserHierarchyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUserHierarchy",
	}
	for header,value in pairs(UpdateUserHierarchyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/users/{InstanceId}/{UserId}/hierarchy", UpdateUserHierarchyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserHierarchy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserHierarchyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserHierarchySync(UpdateUserHierarchyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserHierarchyAsync(UpdateUserHierarchyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserSecurityProfiles asynchronously, invoking a callback when done
-- @param UpdateUserSecurityProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserSecurityProfilesAsync(UpdateUserSecurityProfilesRequest, cb)
	assert(UpdateUserSecurityProfilesRequest, "You must provide a UpdateUserSecurityProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUserSecurityProfiles",
	}
	for header,value in pairs(UpdateUserSecurityProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/users/{InstanceId}/{UserId}/security-profiles", UpdateUserSecurityProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserSecurityProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserSecurityProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserSecurityProfilesSync(UpdateUserSecurityProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserSecurityProfilesAsync(UpdateUserSecurityProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeUserHierarchyGroup asynchronously, invoking a callback when done
-- @param DescribeUserHierarchyGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeUserHierarchyGroupAsync(DescribeUserHierarchyGroupRequest, cb)
	assert(DescribeUserHierarchyGroupRequest, "You must provide a DescribeUserHierarchyGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeUserHierarchyGroup",
	}
	for header,value in pairs(DescribeUserHierarchyGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}", DescribeUserHierarchyGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeUserHierarchyGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeUserHierarchyGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeUserHierarchyGroupSync(DescribeUserHierarchyGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeUserHierarchyGroupAsync(DescribeUserHierarchyGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCurrentMetricData asynchronously, invoking a callback when done
-- @param GetCurrentMetricDataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCurrentMetricDataAsync(GetCurrentMetricDataRequest, cb)
	assert(GetCurrentMetricDataRequest, "You must provide a GetCurrentMetricDataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCurrentMetricData",
	}
	for header,value in pairs(GetCurrentMetricDataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/metrics/current/{InstanceId}", GetCurrentMetricDataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCurrentMetricData synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCurrentMetricDataRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCurrentMetricDataSync(GetCurrentMetricDataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCurrentMetricDataAsync(GetCurrentMetricDataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopContact asynchronously, invoking a callback when done
-- @param StopContactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopContactAsync(StopContactRequest, cb)
	assert(StopContactRequest, "You must provide a StopContactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StopContact",
	}
	for header,value in pairs(StopContactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/contact/stop", StopContactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopContact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopContactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopContactSync(StopContactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopContactAsync(StopContactRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeUser",
	}
	for header,value in pairs(DescribeUserRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/users/{InstanceId}/{UserId}", DescribeUserRequest, headers, settings, cb)
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

--- Call UpdateUserPhoneConfig asynchronously, invoking a callback when done
-- @param UpdateUserPhoneConfigRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserPhoneConfigAsync(UpdateUserPhoneConfigRequest, cb)
	assert(UpdateUserPhoneConfigRequest, "You must provide a UpdateUserPhoneConfigRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUserPhoneConfig",
	}
	for header,value in pairs(UpdateUserPhoneConfigRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/users/{InstanceId}/{UserId}/phone-config", UpdateUserPhoneConfigRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserPhoneConfig synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserPhoneConfigRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserPhoneConfigSync(UpdateUserPhoneConfigRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserPhoneConfigAsync(UpdateUserPhoneConfigRequest, function(response, error_type, error_message)
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

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/users-summary/{InstanceId}", ListUsersRequest, headers, settings, cb)
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

--- Call ListUserHierarchyGroups asynchronously, invoking a callback when done
-- @param ListUserHierarchyGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListUserHierarchyGroupsAsync(ListUserHierarchyGroupsRequest, cb)
	assert(ListUserHierarchyGroupsRequest, "You must provide a ListUserHierarchyGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListUserHierarchyGroups",
	}
	for header,value in pairs(ListUserHierarchyGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/user-hierarchy-groups-summary/{InstanceId}", ListUserHierarchyGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListUserHierarchyGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListUserHierarchyGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListUserHierarchyGroupsSync(ListUserHierarchyGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListUserHierarchyGroupsAsync(ListUserHierarchyGroupsRequest, function(response, error_type, error_message)
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

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/users/{InstanceId}", CreateUserRequest, headers, settings, cb)
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

--- Call UpdateContactAttributes asynchronously, invoking a callback when done
-- @param UpdateContactAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateContactAttributesAsync(UpdateContactAttributesRequest, cb)
	assert(UpdateContactAttributesRequest, "You must provide a UpdateContactAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateContactAttributes",
	}
	for header,value in pairs(UpdateContactAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/contact/attributes", UpdateContactAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateContactAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateContactAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateContactAttributesSync(UpdateContactAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateContactAttributesAsync(UpdateContactAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserRoutingProfile asynchronously, invoking a callback when done
-- @param UpdateUserRoutingProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserRoutingProfileAsync(UpdateUserRoutingProfileRequest, cb)
	assert(UpdateUserRoutingProfileRequest, "You must provide a UpdateUserRoutingProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateUserRoutingProfile",
	}
	for header,value in pairs(UpdateUserRoutingProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/users/{InstanceId}/{UserId}/routing-profile", UpdateUserRoutingProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserRoutingProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserRoutingProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserRoutingProfileSync(UpdateUserRoutingProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserRoutingProfileAsync(UpdateUserRoutingProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMetricData asynchronously, invoking a callback when done
-- @param GetMetricDataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMetricDataAsync(GetMetricDataRequest, cb)
	assert(GetMetricDataRequest, "You must provide a GetMetricDataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMetricData",
	}
	for header,value in pairs(GetMetricDataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/metrics/historical/{InstanceId}", GetMetricDataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMetricData synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMetricDataRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetMetricDataSync(GetMetricDataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMetricDataAsync(GetMetricDataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
