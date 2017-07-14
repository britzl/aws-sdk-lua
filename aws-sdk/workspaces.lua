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

local DefaultWorkspaceCreationProperties_keys = { "EnableInternetAccess" = true, "EnableWorkDocs" = true, "DefaultOu" = true, "CustomSecurityGroupId" = true, "UserEnabledAsLocalAdministrator" = true, nil }

function M.AssertDefaultWorkspaceCreationProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultWorkspaceCreationProperties to be of type 'table'")
	if struct["EnableInternetAccess"] then M.AssertBooleanObject(struct["EnableInternetAccess"]) end
	if struct["EnableWorkDocs"] then M.AssertBooleanObject(struct["EnableWorkDocs"]) end
	if struct["DefaultOu"] then M.AssertDefaultOu(struct["DefaultOu"]) end
	if struct["CustomSecurityGroupId"] then M.AssertSecurityGroupId(struct["CustomSecurityGroupId"]) end
	if struct["UserEnabledAsLocalAdministrator"] then M.AssertBooleanObject(struct["UserEnabledAsLocalAdministrator"]) end
	for k,_ in pairs(struct) do
		assert(DefaultWorkspaceCreationProperties_keys[k], "DefaultWorkspaceCreationProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultWorkspaceCreationProperties
-- &lt;p&gt;Contains default WorkSpace creation information.&lt;/p&gt;
-- @param EnableInternetAccess [BooleanObject] &lt;p&gt;A public IP address will be attached to all WorkSpaces that are created or rebuilt.&lt;/p&gt;
-- @param EnableWorkDocs [BooleanObject] &lt;p&gt;Specifies if the directory is enabled for Amazon WorkDocs.&lt;/p&gt;
-- @param DefaultOu [DefaultOu] &lt;p&gt;The organizational unit (OU) in the directory that the WorkSpace machine accounts are placed in.&lt;/p&gt;
-- @param CustomSecurityGroupId [SecurityGroupId] &lt;p&gt;The identifier of any custom security groups that are applied to the WorkSpaces when they are created.&lt;/p&gt;
-- @param UserEnabledAsLocalAdministrator [BooleanObject] &lt;p&gt;The WorkSpace user is an administrator on the WorkSpace.&lt;/p&gt;
function M.DefaultWorkspaceCreationProperties(EnableInternetAccess, EnableWorkDocs, DefaultOu, CustomSecurityGroupId, UserEnabledAsLocalAdministrator, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultWorkspaceCreationProperties")
	local t = { 
		["EnableInternetAccess"] = EnableInternetAccess,
		["EnableWorkDocs"] = EnableWorkDocs,
		["DefaultOu"] = DefaultOu,
		["CustomSecurityGroupId"] = CustomSecurityGroupId,
		["UserEnabledAsLocalAdministrator"] = UserEnabledAsLocalAdministrator,
	}
	M.AssertDefaultWorkspaceCreationProperties(t)
	return t
end

local DeleteTagsResult_keys = { nil }

function M.AssertDeleteTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteTagsResult_keys[k], "DeleteTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsResult
-- &lt;p&gt;The result of the &lt;a&gt;DeleteTags&lt;/a&gt; operation.&lt;/p&gt;
function M.DeleteTagsResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsResult")
	local t = { 
	}
	M.AssertDeleteTagsResult(t)
	return t
end

local TerminateWorkspacesResult_keys = { "FailedRequests" = true, nil }

function M.AssertTerminateWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then M.AssertFailedTerminateWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(TerminateWorkspacesResult_keys[k], "TerminateWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateWorkspacesResult
-- &lt;p&gt;Contains the results of the &lt;a&gt;TerminateWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param FailedRequests [FailedTerminateWorkspaceRequests] &lt;p&gt;An array of structures representing any WorkSpaces that could not be terminated.&lt;/p&gt;
function M.TerminateWorkspacesResult(FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateWorkspacesResult")
	local t = { 
		["FailedRequests"] = FailedRequests,
	}
	M.AssertTerminateWorkspacesResult(t)
	return t
end

local RebootWorkspacesResult_keys = { "FailedRequests" = true, nil }

function M.AssertRebootWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then M.AssertFailedRebootWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(RebootWorkspacesResult_keys[k], "RebootWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootWorkspacesResult
-- &lt;p&gt;Contains the results of the &lt;a&gt;RebootWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param FailedRequests [FailedRebootWorkspaceRequests] &lt;p&gt;An array of structures representing any WorkSpaces that could not be rebooted.&lt;/p&gt;
function M.RebootWorkspacesResult(FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootWorkspacesResult")
	local t = { 
		["FailedRequests"] = FailedRequests,
	}
	M.AssertRebootWorkspacesResult(t)
	return t
end

local DescribeTagsRequest_keys = { "ResourceId" = true, nil }

function M.AssertDescribeTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then M.AssertNonEmptyString(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsRequest_keys[k], "DescribeTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsRequest
-- &lt;p&gt;The request of the &lt;a&gt;DescribeTags&lt;/a&gt; operation.&lt;/p&gt;
-- @param ResourceId [NonEmptyString] &lt;p&gt;The resource ID of the request.&lt;/p&gt;
-- Required parameter: ResourceId
function M.DescribeTagsRequest(ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsRequest")
	local t = { 
		["ResourceId"] = ResourceId,
	}
	M.AssertDescribeTagsRequest(t)
	return t
end

local StopWorkspacesRequest_keys = { "StopWorkspaceRequests" = true, nil }

function M.AssertStopWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopWorkspacesRequest to be of type 'table'")
	assert(struct["StopWorkspaceRequests"], "Expected key StopWorkspaceRequests to exist in table")
	if struct["StopWorkspaceRequests"] then M.AssertStopWorkspaceRequests(struct["StopWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(StopWorkspacesRequest_keys[k], "StopWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopWorkspacesRequest
--  
-- @param StopWorkspaceRequests [StopWorkspaceRequests] &lt;p&gt;The requests.&lt;/p&gt;
-- Required parameter: StopWorkspaceRequests
function M.StopWorkspacesRequest(StopWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopWorkspacesRequest")
	local t = { 
		["StopWorkspaceRequests"] = StopWorkspaceRequests,
	}
	M.AssertStopWorkspacesRequest(t)
	return t
end

local RebootWorkspacesRequest_keys = { "RebootWorkspaceRequests" = true, nil }

function M.AssertRebootWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootWorkspacesRequest to be of type 'table'")
	assert(struct["RebootWorkspaceRequests"], "Expected key RebootWorkspaceRequests to exist in table")
	if struct["RebootWorkspaceRequests"] then M.AssertRebootWorkspaceRequests(struct["RebootWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(RebootWorkspacesRequest_keys[k], "RebootWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootWorkspacesRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;RebootWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param RebootWorkspaceRequests [RebootWorkspaceRequests] &lt;p&gt;An array of structures that specify the WorkSpaces to reboot.&lt;/p&gt;
-- Required parameter: RebootWorkspaceRequests
function M.RebootWorkspacesRequest(RebootWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootWorkspacesRequest")
	local t = { 
		["RebootWorkspaceRequests"] = RebootWorkspaceRequests,
	}
	M.AssertRebootWorkspacesRequest(t)
	return t
end

local ResourceUnavailableException_keys = { "ResourceId" = true, "message" = true, nil }

function M.AssertResourceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceUnavailableException to be of type 'table'")
	if struct["ResourceId"] then M.AssertNonEmptyString(struct["ResourceId"]) end
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceUnavailableException_keys[k], "ResourceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceUnavailableException
-- &lt;p&gt;The specified resource is not available.&lt;/p&gt;
-- @param ResourceId [NonEmptyString] &lt;p&gt;The identifier of the resource that is not available.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The exception error message.&lt;/p&gt;
function M.ResourceUnavailableException(ResourceId, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceUnavailableException")
	local t = { 
		["ResourceId"] = ResourceId,
		["message"] = message,
	}
	M.AssertResourceUnavailableException(t)
	return t
end

local CreateTagsRequest_keys = { "ResourceId" = true, "Tags" = true, nil }

function M.AssertCreateTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceId"] then M.AssertNonEmptyString(struct["ResourceId"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateTagsRequest_keys[k], "CreateTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsRequest
-- &lt;p&gt;The request of the &lt;a&gt;CreateTags&lt;/a&gt; operation.&lt;/p&gt;
-- @param ResourceId [NonEmptyString] &lt;p&gt;The resource ID of the request.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The tags of the request.&lt;/p&gt;
-- Required parameter: ResourceId
-- Required parameter: Tags
function M.CreateTagsRequest(ResourceId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsRequest")
	local t = { 
		["ResourceId"] = ResourceId,
		["Tags"] = Tags,
	}
	M.AssertCreateTagsRequest(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;Describes the tag of the WorkSpace.&lt;/p&gt;
-- @param Value [TagValue] &lt;p&gt;The value of the tag.&lt;/p&gt;
-- @param Key [TagKey] &lt;p&gt;The key of the tag.&lt;/p&gt;
-- Required parameter: Key
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local OperationInProgressException_keys = { "message" = true, nil }

function M.AssertOperationInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationInProgressException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(OperationInProgressException_keys[k], "OperationInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationInProgressException
-- &lt;p&gt;The properties of this WorkSpace are currently being modified. Try again in a moment.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The properties of this WorkSpace are currently being modified. Try again in a moment.&lt;/p&gt;
function M.OperationInProgressException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationInProgressException")
	local t = { 
		["message"] = message,
	}
	M.AssertOperationInProgressException(t)
	return t
end

local ResourceLimitExceededException_keys = { "message" = true, nil }

function M.AssertResourceLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceLimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceLimitExceededException_keys[k], "ResourceLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceLimitExceededException
-- &lt;p&gt;Your resource limits have been exceeded.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The exception error message.&lt;/p&gt;
function M.ResourceLimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceLimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceLimitExceededException(t)
	return t
end

local InvalidResourceStateException_keys = { "message" = true, nil }

function M.AssertInvalidResourceStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceStateException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidResourceStateException_keys[k], "InvalidResourceStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceStateException
-- &lt;p&gt;The state of the WorkSpace is not valid for this operation.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The state of the WorkSpace is not valid for this operation.&lt;/p&gt;
function M.InvalidResourceStateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceStateException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidResourceStateException(t)
	return t
end

local WorkspaceDirectory_keys = { "CustomerUserName" = true, "DirectoryId" = true, "DirectoryName" = true, "SubnetIds" = true, "WorkspaceCreationProperties" = true, "Alias" = true, "State" = true, "DirectoryType" = true, "RegistrationCode" = true, "IamRoleId" = true, "DnsIpAddresses" = true, "WorkspaceSecurityGroupId" = true, nil }

function M.AssertWorkspaceDirectory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceDirectory to be of type 'table'")
	if struct["CustomerUserName"] then M.AssertUserName(struct["CustomerUserName"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["DirectoryName"] then M.AssertDirectoryName(struct["DirectoryName"]) end
	if struct["SubnetIds"] then M.AssertSubnetIds(struct["SubnetIds"]) end
	if struct["WorkspaceCreationProperties"] then M.AssertDefaultWorkspaceCreationProperties(struct["WorkspaceCreationProperties"]) end
	if struct["Alias"] then M.AssertAlias(struct["Alias"]) end
	if struct["State"] then M.AssertWorkspaceDirectoryState(struct["State"]) end
	if struct["DirectoryType"] then M.AssertWorkspaceDirectoryType(struct["DirectoryType"]) end
	if struct["RegistrationCode"] then M.AssertRegistrationCode(struct["RegistrationCode"]) end
	if struct["IamRoleId"] then M.AssertARN(struct["IamRoleId"]) end
	if struct["DnsIpAddresses"] then M.AssertDnsIpAddresses(struct["DnsIpAddresses"]) end
	if struct["WorkspaceSecurityGroupId"] then M.AssertSecurityGroupId(struct["WorkspaceSecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(WorkspaceDirectory_keys[k], "WorkspaceDirectory contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceDirectory
-- &lt;p&gt;Contains information about an AWS Directory Service directory for use with Amazon WorkSpaces.&lt;/p&gt;
-- @param CustomerUserName [UserName] &lt;p&gt;The user name for the service account.&lt;/p&gt;
-- @param DirectoryId [DirectoryId] &lt;p&gt;The directory identifier.&lt;/p&gt;
-- @param DirectoryName [DirectoryName] &lt;p&gt;The name of the directory.&lt;/p&gt;
-- @param SubnetIds [SubnetIds] &lt;p&gt;An array of strings that contains the identifiers of the subnets used with the directory.&lt;/p&gt;
-- @param WorkspaceCreationProperties [DefaultWorkspaceCreationProperties] &lt;p&gt;A structure that specifies the default creation properties for all WorkSpaces in the directory.&lt;/p&gt;
-- @param Alias [Alias] &lt;p&gt;The directory alias.&lt;/p&gt;
-- @param State [WorkspaceDirectoryState] &lt;p&gt;The state of the directory's registration with Amazon WorkSpaces&lt;/p&gt;
-- @param DirectoryType [WorkspaceDirectoryType] &lt;p&gt;The directory type.&lt;/p&gt;
-- @param RegistrationCode [RegistrationCode] &lt;p&gt;The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.&lt;/p&gt;
-- @param IamRoleId [ARN] &lt;p&gt;The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.&lt;/p&gt;
-- @param DnsIpAddresses [DnsIpAddresses] &lt;p&gt;An array of strings that contains the IP addresses of the DNS servers for the directory.&lt;/p&gt;
-- @param WorkspaceSecurityGroupId [SecurityGroupId] &lt;p&gt;The identifier of the security group that is assigned to new WorkSpaces.&lt;/p&gt;
function M.WorkspaceDirectory(CustomerUserName, DirectoryId, DirectoryName, SubnetIds, WorkspaceCreationProperties, Alias, State, DirectoryType, RegistrationCode, IamRoleId, DnsIpAddresses, WorkspaceSecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceDirectory")
	local t = { 
		["CustomerUserName"] = CustomerUserName,
		["DirectoryId"] = DirectoryId,
		["DirectoryName"] = DirectoryName,
		["SubnetIds"] = SubnetIds,
		["WorkspaceCreationProperties"] = WorkspaceCreationProperties,
		["Alias"] = Alias,
		["State"] = State,
		["DirectoryType"] = DirectoryType,
		["RegistrationCode"] = RegistrationCode,
		["IamRoleId"] = IamRoleId,
		["DnsIpAddresses"] = DnsIpAddresses,
		["WorkspaceSecurityGroupId"] = WorkspaceSecurityGroupId,
	}
	M.AssertWorkspaceDirectory(t)
	return t
end

local DescribeWorkspacesRequest_keys = { "UserName" = true, "DirectoryId" = true, "Limit" = true, "WorkspaceIds" = true, "NextToken" = true, "BundleId" = true, nil }

function M.AssertDescribeWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspacesRequest to be of type 'table'")
	if struct["UserName"] then M.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["Limit"] then M.AssertLimit(struct["Limit"]) end
	if struct["WorkspaceIds"] then M.AssertWorkspaceIdList(struct["WorkspaceIds"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["BundleId"] then M.AssertBundleId(struct["BundleId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkspacesRequest_keys[k], "DescribeWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspacesRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;DescribeWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param UserName [UserName] &lt;p&gt;Used with the &lt;code&gt;DirectoryId&lt;/code&gt; parameter to specify the directory user for whom to obtain the WorkSpace.&lt;/p&gt;
-- @param DirectoryId [DirectoryId] &lt;p&gt;Specifies the directory identifier to which to limit the WorkSpaces. Optionally, you can specify a specific directory user with the &lt;code&gt;UserName&lt;/code&gt; parameter. This parameter cannot be combined with any other filter parameter.&lt;/p&gt;
-- @param Limit [Limit] &lt;p&gt;The maximum number of items to return.&lt;/p&gt;
-- @param WorkspaceIds [WorkspaceIdList] &lt;p&gt;An array of strings that contain the identifiers of the WorkSpaces for which to retrieve information. This parameter cannot be combined with any other filter parameter.&lt;/p&gt; &lt;p&gt;Because the &lt;a&gt;CreateWorkspaces&lt;/a&gt; operation is asynchronous, the identifier it returns is not immediately available. If you immediately call &lt;a&gt;DescribeWorkspaces&lt;/a&gt; with this identifier, no information is returned.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; value from a previous call to this operation. Pass null if this is the first call.&lt;/p&gt;
-- @param BundleId [BundleId] &lt;p&gt;The identifier of a bundle to obtain the WorkSpaces for. All WorkSpaces that are created from this bundle will be retrieved. This parameter cannot be combined with any other filter parameter.&lt;/p&gt;
function M.DescribeWorkspacesRequest(UserName, DirectoryId, Limit, WorkspaceIds, NextToken, BundleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspacesRequest")
	local t = { 
		["UserName"] = UserName,
		["DirectoryId"] = DirectoryId,
		["Limit"] = Limit,
		["WorkspaceIds"] = WorkspaceIds,
		["NextToken"] = NextToken,
		["BundleId"] = BundleId,
	}
	M.AssertDescribeWorkspacesRequest(t)
	return t
end

local ModifyWorkspacePropertiesRequest_keys = { "WorkspaceId" = true, "WorkspaceProperties" = true, nil }

function M.AssertModifyWorkspacePropertiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyWorkspacePropertiesRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	assert(struct["WorkspaceProperties"], "Expected key WorkspaceProperties to exist in table")
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["WorkspaceProperties"] then M.AssertWorkspaceProperties(struct["WorkspaceProperties"]) end
	for k,_ in pairs(struct) do
		assert(ModifyWorkspacePropertiesRequest_keys[k], "ModifyWorkspacePropertiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyWorkspacePropertiesRequest
--  
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The ID of the WorkSpace.&lt;/p&gt;
-- @param WorkspaceProperties [WorkspaceProperties] &lt;p&gt;The WorkSpace properties of the request.&lt;/p&gt;
-- Required parameter: WorkspaceId
-- Required parameter: WorkspaceProperties
function M.ModifyWorkspacePropertiesRequest(WorkspaceId, WorkspaceProperties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyWorkspacePropertiesRequest")
	local t = { 
		["WorkspaceId"] = WorkspaceId,
		["WorkspaceProperties"] = WorkspaceProperties,
	}
	M.AssertModifyWorkspacePropertiesRequest(t)
	return t
end

local WorkspaceConnectionStatus_keys = { "ConnectionState" = true, "ConnectionStateCheckTimestamp" = true, "WorkspaceId" = true, "LastKnownUserConnectionTimestamp" = true, nil }

function M.AssertWorkspaceConnectionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceConnectionStatus to be of type 'table'")
	if struct["ConnectionState"] then M.AssertConnectionState(struct["ConnectionState"]) end
	if struct["ConnectionStateCheckTimestamp"] then M.AssertTimestamp(struct["ConnectionStateCheckTimestamp"]) end
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["LastKnownUserConnectionTimestamp"] then M.AssertTimestamp(struct["LastKnownUserConnectionTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(WorkspaceConnectionStatus_keys[k], "WorkspaceConnectionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceConnectionStatus
-- &lt;p&gt;Describes the connection status of a WorkSpace.&lt;/p&gt;
-- @param ConnectionState [ConnectionState] &lt;p&gt;The connection state of the WorkSpace. Returns UNKOWN if the WorkSpace is in a Stopped state.&lt;/p&gt;
-- @param ConnectionStateCheckTimestamp [Timestamp] &lt;p&gt;The timestamp of the connection state check.&lt;/p&gt;
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The ID of the WorkSpace.&lt;/p&gt;
-- @param LastKnownUserConnectionTimestamp [Timestamp] &lt;p&gt;The timestamp of the last known user connection.&lt;/p&gt;
function M.WorkspaceConnectionStatus(ConnectionState, ConnectionStateCheckTimestamp, WorkspaceId, LastKnownUserConnectionTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceConnectionStatus")
	local t = { 
		["ConnectionState"] = ConnectionState,
		["ConnectionStateCheckTimestamp"] = ConnectionStateCheckTimestamp,
		["WorkspaceId"] = WorkspaceId,
		["LastKnownUserConnectionTimestamp"] = LastKnownUserConnectionTimestamp,
	}
	M.AssertWorkspaceConnectionStatus(t)
	return t
end

local DescribeWorkspaceBundlesResult_keys = { "NextToken" = true, "Bundles" = true, nil }

function M.AssertDescribeWorkspaceBundlesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspaceBundlesResult to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["Bundles"] then M.AssertBundleList(struct["Bundles"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkspaceBundlesResult_keys[k], "DescribeWorkspaceBundlesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspaceBundlesResult
-- &lt;p&gt;Contains the results of the &lt;a&gt;DescribeWorkspaceBundles&lt;/a&gt; operation.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;If not null, more results are available. Pass this value for the &lt;code&gt;NextToken&lt;/code&gt; parameter in a subsequent call to this operation to retrieve the next set of items. This token is valid for one day and must be used within that time frame.&lt;/p&gt;
-- @param Bundles [BundleList] &lt;p&gt;An array of structures that contain information about the bundles.&lt;/p&gt;
function M.DescribeWorkspaceBundlesResult(NextToken, Bundles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspaceBundlesResult")
	local t = { 
		["NextToken"] = NextToken,
		["Bundles"] = Bundles,
	}
	M.AssertDescribeWorkspaceBundlesResult(t)
	return t
end

local Workspace_keys = { "UserName" = true, "DirectoryId" = true, "ComputerName" = true, "VolumeEncryptionKey" = true, "UserVolumeEncryptionEnabled" = true, "ErrorMessage" = true, "WorkspaceProperties" = true, "ErrorCode" = true, "State" = true, "WorkspaceId" = true, "SubnetId" = true, "RootVolumeEncryptionEnabled" = true, "IpAddress" = true, "BundleId" = true, nil }

function M.AssertWorkspace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Workspace to be of type 'table'")
	if struct["UserName"] then M.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["ComputerName"] then M.AssertComputerName(struct["ComputerName"]) end
	if struct["VolumeEncryptionKey"] then M.AssertVolumeEncryptionKey(struct["VolumeEncryptionKey"]) end
	if struct["UserVolumeEncryptionEnabled"] then M.AssertBooleanObject(struct["UserVolumeEncryptionEnabled"]) end
	if struct["ErrorMessage"] then M.AssertDescription(struct["ErrorMessage"]) end
	if struct["WorkspaceProperties"] then M.AssertWorkspaceProperties(struct["WorkspaceProperties"]) end
	if struct["ErrorCode"] then M.AssertWorkspaceErrorCode(struct["ErrorCode"]) end
	if struct["State"] then M.AssertWorkspaceState(struct["State"]) end
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["SubnetId"] then M.AssertSubnetId(struct["SubnetId"]) end
	if struct["RootVolumeEncryptionEnabled"] then M.AssertBooleanObject(struct["RootVolumeEncryptionEnabled"]) end
	if struct["IpAddress"] then M.AssertIpAddress(struct["IpAddress"]) end
	if struct["BundleId"] then M.AssertBundleId(struct["BundleId"]) end
	for k,_ in pairs(struct) do
		assert(Workspace_keys[k], "Workspace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Workspace
-- &lt;p&gt;Contains information about a WorkSpace.&lt;/p&gt;
-- @param UserName [UserName] &lt;p&gt;The user that the WorkSpace is assigned to.&lt;/p&gt;
-- @param DirectoryId [DirectoryId] &lt;p&gt;The identifier of the AWS Directory Service directory that the WorkSpace belongs to.&lt;/p&gt;
-- @param ComputerName [ComputerName] &lt;p&gt;The name of the WorkSpace as seen by the operating system.&lt;/p&gt;
-- @param VolumeEncryptionKey [VolumeEncryptionKey] &lt;p&gt;The KMS key used to encrypt data stored on your WorkSpace.&lt;/p&gt;
-- @param UserVolumeEncryptionEnabled [BooleanObject] &lt;p&gt;Specifies whether the data stored on the user volume, or D: drive, is encrypted.&lt;/p&gt;
-- @param ErrorMessage [Description] &lt;p&gt;If the WorkSpace could not be created, this contains a textual error message that describes the failure.&lt;/p&gt;
-- @param WorkspaceProperties [WorkspaceProperties] &lt;p&gt;Contains information about a WorkSpace.&lt;/p&gt;
-- @param ErrorCode [WorkspaceErrorCode] &lt;p&gt;If the WorkSpace could not be created, this contains the error code.&lt;/p&gt;
-- @param State [WorkspaceState] &lt;p&gt;The operational state of the WorkSpace.&lt;/p&gt;
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The identifier of the WorkSpace.&lt;/p&gt;
-- @param SubnetId [SubnetId] &lt;p&gt;The identifier of the subnet that the WorkSpace is in.&lt;/p&gt;
-- @param RootVolumeEncryptionEnabled [BooleanObject] &lt;p&gt;Specifies whether the data stored on the root volume, or C: drive, is encrypted.&lt;/p&gt;
-- @param IpAddress [IpAddress] &lt;p&gt;The IP address of the WorkSpace.&lt;/p&gt;
-- @param BundleId [BundleId] &lt;p&gt;The identifier of the bundle that the WorkSpace was created from.&lt;/p&gt;
function M.Workspace(UserName, DirectoryId, ComputerName, VolumeEncryptionKey, UserVolumeEncryptionEnabled, ErrorMessage, WorkspaceProperties, ErrorCode, State, WorkspaceId, SubnetId, RootVolumeEncryptionEnabled, IpAddress, BundleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Workspace")
	local t = { 
		["UserName"] = UserName,
		["DirectoryId"] = DirectoryId,
		["ComputerName"] = ComputerName,
		["VolumeEncryptionKey"] = VolumeEncryptionKey,
		["UserVolumeEncryptionEnabled"] = UserVolumeEncryptionEnabled,
		["ErrorMessage"] = ErrorMessage,
		["WorkspaceProperties"] = WorkspaceProperties,
		["ErrorCode"] = ErrorCode,
		["State"] = State,
		["WorkspaceId"] = WorkspaceId,
		["SubnetId"] = SubnetId,
		["RootVolumeEncryptionEnabled"] = RootVolumeEncryptionEnabled,
		["IpAddress"] = IpAddress,
		["BundleId"] = BundleId,
	}
	M.AssertWorkspace(t)
	return t
end

local FailedWorkspaceChangeRequest_keys = { "ErrorCode" = true, "WorkspaceId" = true, "ErrorMessage" = true, nil }

function M.AssertFailedWorkspaceChangeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedWorkspaceChangeRequest to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorType(struct["ErrorCode"]) end
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	if struct["ErrorMessage"] then M.AssertDescription(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(FailedWorkspaceChangeRequest_keys[k], "FailedWorkspaceChangeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedWorkspaceChangeRequest
-- &lt;p&gt;Contains information about a WorkSpace that could not be rebooted (&lt;a&gt;RebootWorkspaces&lt;/a&gt;), rebuilt (&lt;a&gt;RebuildWorkspaces&lt;/a&gt;), terminated (&lt;a&gt;TerminateWorkspaces&lt;/a&gt;), started (&lt;a&gt;StartWorkspaces&lt;/a&gt;), or stopped (&lt;a&gt;StopWorkspaces&lt;/a&gt;).&lt;/p&gt;
-- @param ErrorCode [ErrorType] &lt;p&gt;The error code.&lt;/p&gt;
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The identifier of the WorkSpace.&lt;/p&gt;
-- @param ErrorMessage [Description] &lt;p&gt;The textual error message.&lt;/p&gt;
function M.FailedWorkspaceChangeRequest(ErrorCode, WorkspaceId, ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedWorkspaceChangeRequest")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["WorkspaceId"] = WorkspaceId,
		["ErrorMessage"] = ErrorMessage,
	}
	M.AssertFailedWorkspaceChangeRequest(t)
	return t
end

local ModifyWorkspacePropertiesResult_keys = { nil }

function M.AssertModifyWorkspacePropertiesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyWorkspacePropertiesResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ModifyWorkspacePropertiesResult_keys[k], "ModifyWorkspacePropertiesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyWorkspacePropertiesResult
--  
function M.ModifyWorkspacePropertiesResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyWorkspacePropertiesResult")
	local t = { 
	}
	M.AssertModifyWorkspacePropertiesResult(t)
	return t
end

local StartWorkspacesRequest_keys = { "StartWorkspaceRequests" = true, nil }

function M.AssertStartWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartWorkspacesRequest to be of type 'table'")
	assert(struct["StartWorkspaceRequests"], "Expected key StartWorkspaceRequests to exist in table")
	if struct["StartWorkspaceRequests"] then M.AssertStartWorkspaceRequests(struct["StartWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(StartWorkspacesRequest_keys[k], "StartWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartWorkspacesRequest
--  
-- @param StartWorkspaceRequests [StartWorkspaceRequests] &lt;p&gt;The requests.&lt;/p&gt;
-- Required parameter: StartWorkspaceRequests
function M.StartWorkspacesRequest(StartWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartWorkspacesRequest")
	local t = { 
		["StartWorkspaceRequests"] = StartWorkspaceRequests,
	}
	M.AssertStartWorkspacesRequest(t)
	return t
end

local StartWorkspacesResult_keys = { "FailedRequests" = true, nil }

function M.AssertStartWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then M.AssertFailedStartWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(StartWorkspacesResult_keys[k], "StartWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartWorkspacesResult
--  
-- @param FailedRequests [FailedStartWorkspaceRequests] &lt;p&gt;The failed requests.&lt;/p&gt;
function M.StartWorkspacesResult(FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartWorkspacesResult")
	local t = { 
		["FailedRequests"] = FailedRequests,
	}
	M.AssertStartWorkspacesResult(t)
	return t
end

local DescribeWorkspacesResult_keys = { "NextToken" = true, "Workspaces" = true, nil }

function M.AssertDescribeWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspacesResult to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["Workspaces"] then M.AssertWorkspaceList(struct["Workspaces"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkspacesResult_keys[k], "DescribeWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspacesResult
-- &lt;p&gt;Contains the results for the &lt;a&gt;DescribeWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;If not null, more results are available. Pass this value for the &lt;code&gt;NextToken&lt;/code&gt; parameter in a subsequent call to this operation to retrieve the next set of items. This token is valid for one day and must be used within that time frame.&lt;/p&gt;
-- @param Workspaces [WorkspaceList] &lt;p&gt;An array of structures that contain the information about the WorkSpaces.&lt;/p&gt; &lt;p&gt;Because the &lt;a&gt;CreateWorkspaces&lt;/a&gt; operation is asynchronous, some of this information may be incomplete for a newly-created WorkSpace.&lt;/p&gt;
function M.DescribeWorkspacesResult(NextToken, Workspaces, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspacesResult")
	local t = { 
		["NextToken"] = NextToken,
		["Workspaces"] = Workspaces,
	}
	M.AssertDescribeWorkspacesResult(t)
	return t
end

local WorkspaceRequest_keys = { "UserName" = true, "DirectoryId" = true, "VolumeEncryptionKey" = true, "Tags" = true, "WorkspaceProperties" = true, "BundleId" = true, "UserVolumeEncryptionEnabled" = true, "RootVolumeEncryptionEnabled" = true, nil }

function M.AssertWorkspaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceRequest to be of type 'table'")
	assert(struct["DirectoryId"], "Expected key DirectoryId to exist in table")
	assert(struct["UserName"], "Expected key UserName to exist in table")
	assert(struct["BundleId"], "Expected key BundleId to exist in table")
	if struct["UserName"] then M.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then M.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["VolumeEncryptionKey"] then M.AssertVolumeEncryptionKey(struct["VolumeEncryptionKey"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	if struct["WorkspaceProperties"] then M.AssertWorkspaceProperties(struct["WorkspaceProperties"]) end
	if struct["BundleId"] then M.AssertBundleId(struct["BundleId"]) end
	if struct["UserVolumeEncryptionEnabled"] then M.AssertBooleanObject(struct["UserVolumeEncryptionEnabled"]) end
	if struct["RootVolumeEncryptionEnabled"] then M.AssertBooleanObject(struct["RootVolumeEncryptionEnabled"]) end
	for k,_ in pairs(struct) do
		assert(WorkspaceRequest_keys[k], "WorkspaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceRequest
-- &lt;p&gt;Contains information about a WorkSpace creation request.&lt;/p&gt;
-- @param UserName [UserName] &lt;p&gt;The username that the WorkSpace is assigned to. This username must exist in the AWS Directory Service directory specified by the &lt;code&gt;DirectoryId&lt;/code&gt; member.&lt;/p&gt;
-- @param DirectoryId [DirectoryId] &lt;p&gt;The identifier of the AWS Directory Service directory to create the WorkSpace in. You can use the &lt;a&gt;DescribeWorkspaceDirectories&lt;/a&gt; operation to obtain a list of the directories that are available.&lt;/p&gt;
-- @param VolumeEncryptionKey [VolumeEncryptionKey] &lt;p&gt;The KMS key used to encrypt data stored on your WorkSpace.&lt;/p&gt;
-- @param Tags [TagList] &lt;p&gt;The tags of the WorkSpace request.&lt;/p&gt;
-- @param WorkspaceProperties [WorkspaceProperties] &lt;p&gt;Contains information about a WorkSpace creation request.&lt;/p&gt;
-- @param BundleId [BundleId] &lt;p&gt;The identifier of the bundle to create the WorkSpace from. You can use the &lt;a&gt;DescribeWorkspaceBundles&lt;/a&gt; operation to obtain a list of the bundles that are available.&lt;/p&gt;
-- @param UserVolumeEncryptionEnabled [BooleanObject] &lt;p&gt;Specifies whether the data stored on the user volume, or D: drive, is encrypted.&lt;/p&gt;
-- @param RootVolumeEncryptionEnabled [BooleanObject] &lt;p&gt;Specifies whether the data stored on the root volume, or C: drive, is encrypted.&lt;/p&gt;
-- Required parameter: DirectoryId
-- Required parameter: UserName
-- Required parameter: BundleId
function M.WorkspaceRequest(UserName, DirectoryId, VolumeEncryptionKey, Tags, WorkspaceProperties, BundleId, UserVolumeEncryptionEnabled, RootVolumeEncryptionEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceRequest")
	local t = { 
		["UserName"] = UserName,
		["DirectoryId"] = DirectoryId,
		["VolumeEncryptionKey"] = VolumeEncryptionKey,
		["Tags"] = Tags,
		["WorkspaceProperties"] = WorkspaceProperties,
		["BundleId"] = BundleId,
		["UserVolumeEncryptionEnabled"] = UserVolumeEncryptionEnabled,
		["RootVolumeEncryptionEnabled"] = RootVolumeEncryptionEnabled,
	}
	M.AssertWorkspaceRequest(t)
	return t
end

local ComputeType_keys = { "Name" = true, nil }

function M.AssertComputeType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ComputeType to be of type 'table'")
	if struct["Name"] then M.AssertCompute(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ComputeType_keys[k], "ComputeType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ComputeType
-- &lt;p&gt;Contains information about the compute type of a WorkSpace bundle.&lt;/p&gt;
-- @param Name [Compute] &lt;p&gt;The name of the compute type for the bundle.&lt;/p&gt;
function M.ComputeType(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeType")
	local t = { 
		["Name"] = Name,
	}
	M.AssertComputeType(t)
	return t
end

local TerminateRequest_keys = { "WorkspaceId" = true, nil }

function M.AssertTerminateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(TerminateRequest_keys[k], "TerminateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateRequest
-- &lt;p&gt;Contains information used with the &lt;a&gt;TerminateWorkspaces&lt;/a&gt; operation to terminate a WorkSpace.&lt;/p&gt;
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The identifier of the WorkSpace to terminate.&lt;/p&gt;
-- Required parameter: WorkspaceId
function M.TerminateRequest(WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateRequest")
	local t = { 
		["WorkspaceId"] = WorkspaceId,
	}
	M.AssertTerminateRequest(t)
	return t
end

local DeleteTagsRequest_keys = { "ResourceId" = true, "TagKeys" = true, nil }

function M.AssertDeleteTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceId"] then M.AssertNonEmptyString(struct["ResourceId"]) end
	if struct["TagKeys"] then M.AssertTagKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTagsRequest_keys[k], "DeleteTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTagsRequest
-- &lt;p&gt;The request of the &lt;a&gt;DeleteTags&lt;/a&gt; operation.&lt;/p&gt;
-- @param ResourceId [NonEmptyString] &lt;p&gt;The resource ID of the request.&lt;/p&gt;
-- @param TagKeys [TagKeyList] &lt;p&gt;The tag keys of the request.&lt;/p&gt;
-- Required parameter: ResourceId
-- Required parameter: TagKeys
function M.DeleteTagsRequest(ResourceId, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsRequest")
	local t = { 
		["ResourceId"] = ResourceId,
		["TagKeys"] = TagKeys,
	}
	M.AssertDeleteTagsRequest(t)
	return t
end

local DescribeWorkspaceDirectoriesRequest_keys = { "DirectoryIds" = true, "NextToken" = true, nil }

function M.AssertDescribeWorkspaceDirectoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspaceDirectoriesRequest to be of type 'table'")
	if struct["DirectoryIds"] then M.AssertDirectoryIdList(struct["DirectoryIds"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkspaceDirectoriesRequest_keys[k], "DescribeWorkspaceDirectoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspaceDirectoriesRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;DescribeWorkspaceDirectories&lt;/a&gt; operation.&lt;/p&gt;
-- @param DirectoryIds [DirectoryIdList] &lt;p&gt;An array of strings that contains the directory identifiers to retrieve information for. If this member is null, all directories are retrieved.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; value from a previous call to this operation. Pass null if this is the first call.&lt;/p&gt;
function M.DescribeWorkspaceDirectoriesRequest(DirectoryIds, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspaceDirectoriesRequest")
	local t = { 
		["DirectoryIds"] = DirectoryIds,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeWorkspaceDirectoriesRequest(t)
	return t
end

local DescribeWorkspacesConnectionStatusRequest_keys = { "NextToken" = true, "WorkspaceIds" = true, nil }

function M.AssertDescribeWorkspacesConnectionStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspacesConnectionStatusRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["WorkspaceIds"] then M.AssertWorkspaceIdList(struct["WorkspaceIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkspacesConnectionStatusRequest_keys[k], "DescribeWorkspacesConnectionStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspacesConnectionStatusRequest
--  
-- @param NextToken [PaginationToken] &lt;p&gt;The next token of the request.&lt;/p&gt;
-- @param WorkspaceIds [WorkspaceIdList] &lt;p&gt;An array of strings that contain the identifiers of the WorkSpaces.&lt;/p&gt;
function M.DescribeWorkspacesConnectionStatusRequest(NextToken, WorkspaceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspacesConnectionStatusRequest")
	local t = { 
		["NextToken"] = NextToken,
		["WorkspaceIds"] = WorkspaceIds,
	}
	M.AssertDescribeWorkspacesConnectionStatusRequest(t)
	return t
end

local UserStorage_keys = { "Capacity" = true, nil }

function M.AssertUserStorage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserStorage to be of type 'table'")
	if struct["Capacity"] then M.AssertNonEmptyString(struct["Capacity"]) end
	for k,_ in pairs(struct) do
		assert(UserStorage_keys[k], "UserStorage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserStorage
-- &lt;p&gt;Contains information about the user storage for a WorkSpace bundle.&lt;/p&gt;
-- @param Capacity [NonEmptyString] &lt;p&gt;The amount of user storage for the bundle.&lt;/p&gt;
function M.UserStorage(Capacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserStorage")
	local t = { 
		["Capacity"] = Capacity,
	}
	M.AssertUserStorage(t)
	return t
end

local DescribeTagsResult_keys = { "TagList" = true, nil }

function M.AssertDescribeTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTagsResult to be of type 'table'")
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTagsResult_keys[k], "DescribeTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTagsResult
-- &lt;p&gt;The result of the &lt;a&gt;DescribeTags&lt;/a&gt; operation.&lt;/p&gt;
-- @param TagList [TagList] &lt;p&gt;The list of tags.&lt;/p&gt;
function M.DescribeTagsResult(TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsResult")
	local t = { 
		["TagList"] = TagList,
	}
	M.AssertDescribeTagsResult(t)
	return t
end

local StopRequest_keys = { "WorkspaceId" = true, nil }

function M.AssertStopRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopRequest to be of type 'table'")
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(StopRequest_keys[k], "StopRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopRequest
-- &lt;p&gt;Describes the stop request.&lt;/p&gt;
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The ID of the WorkSpace.&lt;/p&gt;
function M.StopRequest(WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopRequest")
	local t = { 
		["WorkspaceId"] = WorkspaceId,
	}
	M.AssertStopRequest(t)
	return t
end

local DescribeWorkspaceBundlesRequest_keys = { "Owner" = true, "NextToken" = true, "BundleIds" = true, nil }

function M.AssertDescribeWorkspaceBundlesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspaceBundlesRequest to be of type 'table'")
	if struct["Owner"] then M.AssertBundleOwner(struct["Owner"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	if struct["BundleIds"] then M.AssertBundleIdList(struct["BundleIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkspaceBundlesRequest_keys[k], "DescribeWorkspaceBundlesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspaceBundlesRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;DescribeWorkspaceBundles&lt;/a&gt; operation.&lt;/p&gt;
-- @param Owner [BundleOwner] &lt;p&gt;The owner of the bundles to retrieve. This parameter cannot be combined with any other filter parameter.&lt;/p&gt; &lt;p&gt;This contains one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;null- Retrieves the bundles that belong to the account making the call.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AMAZON&lt;/code&gt;- Retrieves the bundles that are provided by AWS.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;The &lt;code&gt;NextToken&lt;/code&gt; value from a previous call to this operation. Pass null if this is the first call.&lt;/p&gt;
-- @param BundleIds [BundleIdList] &lt;p&gt;An array of strings that contains the identifiers of the bundles to retrieve. This parameter cannot be combined with any other filter parameter.&lt;/p&gt;
function M.DescribeWorkspaceBundlesRequest(Owner, NextToken, BundleIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspaceBundlesRequest")
	local t = { 
		["Owner"] = Owner,
		["NextToken"] = NextToken,
		["BundleIds"] = BundleIds,
	}
	M.AssertDescribeWorkspaceBundlesRequest(t)
	return t
end

local WorkspaceProperties_keys = { "RunningModeAutoStopTimeoutInMinutes" = true, "RunningMode" = true, nil }

function M.AssertWorkspaceProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceProperties to be of type 'table'")
	if struct["RunningModeAutoStopTimeoutInMinutes"] then M.AssertRunningModeAutoStopTimeoutInMinutes(struct["RunningModeAutoStopTimeoutInMinutes"]) end
	if struct["RunningMode"] then M.AssertRunningMode(struct["RunningMode"]) end
	for k,_ in pairs(struct) do
		assert(WorkspaceProperties_keys[k], "WorkspaceProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceProperties
-- &lt;p&gt;Describes the properties of a WorkSpace.&lt;/p&gt;
-- @param RunningModeAutoStopTimeoutInMinutes [RunningModeAutoStopTimeoutInMinutes] &lt;p&gt;The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60 minute intervals.&lt;/p&gt;
-- @param RunningMode [RunningMode] &lt;p&gt;The running mode of the WorkSpace. AlwaysOn WorkSpaces are billed monthly. AutoStop WorkSpaces are billed by the hour and stopped when no longer being used in order to save on costs.&lt;/p&gt;
function M.WorkspaceProperties(RunningModeAutoStopTimeoutInMinutes, RunningMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceProperties")
	local t = { 
		["RunningModeAutoStopTimeoutInMinutes"] = RunningModeAutoStopTimeoutInMinutes,
		["RunningMode"] = RunningMode,
	}
	M.AssertWorkspaceProperties(t)
	return t
end

local StopWorkspacesResult_keys = { "FailedRequests" = true, nil }

function M.AssertStopWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then M.AssertFailedStopWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(StopWorkspacesResult_keys[k], "StopWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopWorkspacesResult
--  
-- @param FailedRequests [FailedStopWorkspaceRequests] &lt;p&gt;The failed requests.&lt;/p&gt;
function M.StopWorkspacesResult(FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopWorkspacesResult")
	local t = { 
		["FailedRequests"] = FailedRequests,
	}
	M.AssertStopWorkspacesResult(t)
	return t
end

local CreateTagsResult_keys = { nil }

function M.AssertCreateTagsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTagsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateTagsResult_keys[k], "CreateTagsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTagsResult
-- &lt;p&gt;The result of the &lt;a&gt;CreateTags&lt;/a&gt; operation.&lt;/p&gt;
function M.CreateTagsResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsResult")
	local t = { 
	}
	M.AssertCreateTagsResult(t)
	return t
end

local UnsupportedWorkspaceConfigurationException_keys = { "message" = true, nil }

function M.AssertUnsupportedWorkspaceConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedWorkspaceConfigurationException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedWorkspaceConfigurationException_keys[k], "UnsupportedWorkspaceConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedWorkspaceConfigurationException
-- &lt;p&gt;The configuration of this WorkSpace is not supported for this operation. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/workspaces/latest/adminguide/&quot;&gt;Amazon WorkSpaces Administration Guide&lt;/a&gt;. &lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The configuration of this WorkSpace is not supported for this operation. For more information, see the &lt;a href=&quot;http://docs.aws.amazon.com/workspaces/latest/adminguide/&quot;&gt;Amazon WorkSpaces Administration Guide&lt;/a&gt;. &lt;/p&gt;
function M.UnsupportedWorkspaceConfigurationException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedWorkspaceConfigurationException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedWorkspaceConfigurationException(t)
	return t
end

local TerminateWorkspacesRequest_keys = { "TerminateWorkspaceRequests" = true, nil }

function M.AssertTerminateWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateWorkspacesRequest to be of type 'table'")
	assert(struct["TerminateWorkspaceRequests"], "Expected key TerminateWorkspaceRequests to exist in table")
	if struct["TerminateWorkspaceRequests"] then M.AssertTerminateWorkspaceRequests(struct["TerminateWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(TerminateWorkspacesRequest_keys[k], "TerminateWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateWorkspacesRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;TerminateWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param TerminateWorkspaceRequests [TerminateWorkspaceRequests] &lt;p&gt;An array of structures that specify the WorkSpaces to terminate.&lt;/p&gt;
-- Required parameter: TerminateWorkspaceRequests
function M.TerminateWorkspacesRequest(TerminateWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateWorkspacesRequest")
	local t = { 
		["TerminateWorkspaceRequests"] = TerminateWorkspaceRequests,
	}
	M.AssertTerminateWorkspacesRequest(t)
	return t
end

local DescribeWorkspaceDirectoriesResult_keys = { "Directories" = true, "NextToken" = true, nil }

function M.AssertDescribeWorkspaceDirectoriesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspaceDirectoriesResult to be of type 'table'")
	if struct["Directories"] then M.AssertDirectoryList(struct["Directories"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkspaceDirectoriesResult_keys[k], "DescribeWorkspaceDirectoriesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspaceDirectoriesResult
-- &lt;p&gt;Contains the results of the &lt;a&gt;DescribeWorkspaceDirectories&lt;/a&gt; operation.&lt;/p&gt;
-- @param Directories [DirectoryList] &lt;p&gt;An array of structures that contain information about the directories.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;If not null, more results are available. Pass this value for the &lt;code&gt;NextToken&lt;/code&gt; parameter in a subsequent call to this operation to retrieve the next set of items. This token is valid for one day and must be used within that time frame.&lt;/p&gt;
function M.DescribeWorkspaceDirectoriesResult(Directories, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspaceDirectoriesResult")
	local t = { 
		["Directories"] = Directories,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeWorkspaceDirectoriesResult(t)
	return t
end

local ResourceNotFoundException_keys = { "ResourceId" = true, "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["ResourceId"] then M.AssertNonEmptyString(struct["ResourceId"]) end
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;The resource could not be found.&lt;/p&gt;
-- @param ResourceId [NonEmptyString] &lt;p&gt;The resource could not be found.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The resource could not be found.&lt;/p&gt;
function M.ResourceNotFoundException(ResourceId, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["ResourceId"] = ResourceId,
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local CreateWorkspacesRequest_keys = { "Workspaces" = true, nil }

function M.AssertCreateWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWorkspacesRequest to be of type 'table'")
	assert(struct["Workspaces"], "Expected key Workspaces to exist in table")
	if struct["Workspaces"] then M.AssertWorkspaceRequestList(struct["Workspaces"]) end
	for k,_ in pairs(struct) do
		assert(CreateWorkspacesRequest_keys[k], "CreateWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWorkspacesRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;CreateWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param Workspaces [WorkspaceRequestList] &lt;p&gt;An array of structures that specify the WorkSpaces to create.&lt;/p&gt;
-- Required parameter: Workspaces
function M.CreateWorkspacesRequest(Workspaces, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWorkspacesRequest")
	local t = { 
		["Workspaces"] = Workspaces,
	}
	M.AssertCreateWorkspacesRequest(t)
	return t
end

local DescribeWorkspacesConnectionStatusResult_keys = { "WorkspacesConnectionStatus" = true, "NextToken" = true, nil }

function M.AssertDescribeWorkspacesConnectionStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkspacesConnectionStatusResult to be of type 'table'")
	if struct["WorkspacesConnectionStatus"] then M.AssertWorkspaceConnectionStatusList(struct["WorkspacesConnectionStatus"]) end
	if struct["NextToken"] then M.AssertPaginationToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkspacesConnectionStatusResult_keys[k], "DescribeWorkspacesConnectionStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkspacesConnectionStatusResult
--  
-- @param WorkspacesConnectionStatus [WorkspaceConnectionStatusList] &lt;p&gt;The connection status of the WorkSpace.&lt;/p&gt;
-- @param NextToken [PaginationToken] &lt;p&gt;The next token of the result.&lt;/p&gt;
function M.DescribeWorkspacesConnectionStatusResult(WorkspacesConnectionStatus, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspacesConnectionStatusResult")
	local t = { 
		["WorkspacesConnectionStatus"] = WorkspacesConnectionStatus,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeWorkspacesConnectionStatusResult(t)
	return t
end

local AccessDeniedException_keys = { "message" = true, nil }

function M.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AccessDeniedException_keys[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- &lt;p&gt;The user is not authorized to access a resource.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The user is not authorized to access a resource.&lt;/p&gt;
function M.AccessDeniedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["message"] = message,
	}
	M.AssertAccessDeniedException(t)
	return t
end

local RebootRequest_keys = { "WorkspaceId" = true, nil }

function M.AssertRebootRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebootRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(RebootRequest_keys[k], "RebootRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebootRequest
-- &lt;p&gt;Contains information used with the &lt;a&gt;RebootWorkspaces&lt;/a&gt; operation to reboot a WorkSpace.&lt;/p&gt;
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The identifier of the WorkSpace to reboot.&lt;/p&gt;
-- Required parameter: WorkspaceId
function M.RebootRequest(WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootRequest")
	local t = { 
		["WorkspaceId"] = WorkspaceId,
	}
	M.AssertRebootRequest(t)
	return t
end

local CreateWorkspacesResult_keys = { "PendingRequests" = true, "FailedRequests" = true, nil }

function M.AssertCreateWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateWorkspacesResult to be of type 'table'")
	if struct["PendingRequests"] then M.AssertWorkspaceList(struct["PendingRequests"]) end
	if struct["FailedRequests"] then M.AssertFailedCreateWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(CreateWorkspacesResult_keys[k], "CreateWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateWorkspacesResult
-- &lt;p&gt;Contains the result of the &lt;a&gt;CreateWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param PendingRequests [WorkspaceList] &lt;p&gt;An array of structures that represent the WorkSpaces that were created.&lt;/p&gt; &lt;p&gt;Because this operation is asynchronous, the identifier in &lt;code&gt;WorkspaceId&lt;/code&gt; is not immediately available. If you immediately call &lt;a&gt;DescribeWorkspaces&lt;/a&gt; with this identifier, no information will be returned.&lt;/p&gt;
-- @param FailedRequests [FailedCreateWorkspaceRequests] &lt;p&gt;An array of structures that represent the WorkSpaces that could not be created.&lt;/p&gt;
function M.CreateWorkspacesResult(PendingRequests, FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWorkspacesResult")
	local t = { 
		["PendingRequests"] = PendingRequests,
		["FailedRequests"] = FailedRequests,
	}
	M.AssertCreateWorkspacesResult(t)
	return t
end

local RebuildRequest_keys = { "WorkspaceId" = true, nil }

function M.AssertRebuildRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebuildRequest to be of type 'table'")
	assert(struct["WorkspaceId"], "Expected key WorkspaceId to exist in table")
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(RebuildRequest_keys[k], "RebuildRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebuildRequest
-- &lt;p&gt;Contains information used with the &lt;a&gt;RebuildWorkspaces&lt;/a&gt; operation to rebuild a WorkSpace.&lt;/p&gt;
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The identifier of the WorkSpace to rebuild.&lt;/p&gt;
-- Required parameter: WorkspaceId
function M.RebuildRequest(WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebuildRequest")
	local t = { 
		["WorkspaceId"] = WorkspaceId,
	}
	M.AssertRebuildRequest(t)
	return t
end

local WorkspaceBundle_keys = { "ComputeType" = true, "Description" = true, "BundleId" = true, "Owner" = true, "UserStorage" = true, "Name" = true, nil }

function M.AssertWorkspaceBundle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceBundle to be of type 'table'")
	if struct["ComputeType"] then M.AssertComputeType(struct["ComputeType"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["BundleId"] then M.AssertBundleId(struct["BundleId"]) end
	if struct["Owner"] then M.AssertBundleOwner(struct["Owner"]) end
	if struct["UserStorage"] then M.AssertUserStorage(struct["UserStorage"]) end
	if struct["Name"] then M.AssertNonEmptyString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(WorkspaceBundle_keys[k], "WorkspaceBundle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceBundle
-- &lt;p&gt;Contains information about a WorkSpace bundle.&lt;/p&gt;
-- @param ComputeType [ComputeType] &lt;p&gt;A &lt;a&gt;ComputeType&lt;/a&gt; object that specifies the compute type for the bundle.&lt;/p&gt;
-- @param Description [Description] &lt;p&gt;The bundle description.&lt;/p&gt;
-- @param BundleId [BundleId] &lt;p&gt;The bundle identifier.&lt;/p&gt;
-- @param Owner [BundleOwner] &lt;p&gt;The owner of the bundle. This contains the owner's account identifier, or &lt;code&gt;AMAZON&lt;/code&gt; if the bundle is provided by AWS.&lt;/p&gt;
-- @param UserStorage [UserStorage] &lt;p&gt;A &lt;a&gt;UserStorage&lt;/a&gt; object that specifies the amount of user storage that the bundle contains.&lt;/p&gt;
-- @param Name [NonEmptyString] &lt;p&gt;The name of the bundle.&lt;/p&gt;
function M.WorkspaceBundle(ComputeType, Description, BundleId, Owner, UserStorage, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceBundle")
	local t = { 
		["ComputeType"] = ComputeType,
		["Description"] = Description,
		["BundleId"] = BundleId,
		["Owner"] = Owner,
		["UserStorage"] = UserStorage,
		["Name"] = Name,
	}
	M.AssertWorkspaceBundle(t)
	return t
end

local RebuildWorkspacesResult_keys = { "FailedRequests" = true, nil }

function M.AssertRebuildWorkspacesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebuildWorkspacesResult to be of type 'table'")
	if struct["FailedRequests"] then M.AssertFailedRebuildWorkspaceRequests(struct["FailedRequests"]) end
	for k,_ in pairs(struct) do
		assert(RebuildWorkspacesResult_keys[k], "RebuildWorkspacesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebuildWorkspacesResult
-- &lt;p&gt;Contains the results of the &lt;a&gt;RebuildWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param FailedRequests [FailedRebuildWorkspaceRequests] &lt;p&gt;An array of structures representing any WorkSpaces that could not be rebuilt.&lt;/p&gt;
function M.RebuildWorkspacesResult(FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebuildWorkspacesResult")
	local t = { 
		["FailedRequests"] = FailedRequests,
	}
	M.AssertRebuildWorkspacesResult(t)
	return t
end

local RebuildWorkspacesRequest_keys = { "RebuildWorkspaceRequests" = true, nil }

function M.AssertRebuildWorkspacesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RebuildWorkspacesRequest to be of type 'table'")
	assert(struct["RebuildWorkspaceRequests"], "Expected key RebuildWorkspaceRequests to exist in table")
	if struct["RebuildWorkspaceRequests"] then M.AssertRebuildWorkspaceRequests(struct["RebuildWorkspaceRequests"]) end
	for k,_ in pairs(struct) do
		assert(RebuildWorkspacesRequest_keys[k], "RebuildWorkspacesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RebuildWorkspacesRequest
-- &lt;p&gt;Contains the inputs for the &lt;a&gt;RebuildWorkspaces&lt;/a&gt; operation.&lt;/p&gt;
-- @param RebuildWorkspaceRequests [RebuildWorkspaceRequests] &lt;p&gt;An array of structures that specify the WorkSpaces to rebuild.&lt;/p&gt;
-- Required parameter: RebuildWorkspaceRequests
function M.RebuildWorkspacesRequest(RebuildWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebuildWorkspacesRequest")
	local t = { 
		["RebuildWorkspaceRequests"] = RebuildWorkspaceRequests,
	}
	M.AssertRebuildWorkspacesRequest(t)
	return t
end

local StartRequest_keys = { "WorkspaceId" = true, nil }

function M.AssertStartRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartRequest to be of type 'table'")
	if struct["WorkspaceId"] then M.AssertWorkspaceId(struct["WorkspaceId"]) end
	for k,_ in pairs(struct) do
		assert(StartRequest_keys[k], "StartRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartRequest
-- &lt;p&gt;Describes the start request.&lt;/p&gt;
-- @param WorkspaceId [WorkspaceId] &lt;p&gt;The ID of the WorkSpace.&lt;/p&gt;
function M.StartRequest(WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartRequest")
	local t = { 
		["WorkspaceId"] = WorkspaceId,
	}
	M.AssertStartRequest(t)
	return t
end

local InvalidParameterValuesException_keys = { "message" = true, nil }

function M.AssertInvalidParameterValuesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValuesException to be of type 'table'")
	if struct["message"] then M.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterValuesException_keys[k], "InvalidParameterValuesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValuesException
-- &lt;p&gt;One or more parameter values are not valid.&lt;/p&gt;
-- @param message [ExceptionMessage] &lt;p&gt;The exception error message.&lt;/p&gt;
function M.InvalidParameterValuesException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValuesException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterValuesException(t)
	return t
end

local FailedCreateWorkspaceRequest_keys = { "ErrorCode" = true, "ErrorMessage" = true, "WorkspaceRequest" = true, nil }

function M.AssertFailedCreateWorkspaceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedCreateWorkspaceRequest to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorType(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertDescription(struct["ErrorMessage"]) end
	if struct["WorkspaceRequest"] then M.AssertWorkspaceRequest(struct["WorkspaceRequest"]) end
	for k,_ in pairs(struct) do
		assert(FailedCreateWorkspaceRequest_keys[k], "FailedCreateWorkspaceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedCreateWorkspaceRequest
-- &lt;p&gt;Contains information about a WorkSpace that could not be created.&lt;/p&gt;
-- @param ErrorCode [ErrorType] &lt;p&gt;The error code.&lt;/p&gt;
-- @param ErrorMessage [Description] &lt;p&gt;The textual error message.&lt;/p&gt;
-- @param WorkspaceRequest [WorkspaceRequest] &lt;p&gt;A &lt;a&gt;FailedCreateWorkspaceRequest$WorkspaceRequest&lt;/a&gt; object that contains the information about the WorkSpace that could not be created.&lt;/p&gt;
function M.FailedCreateWorkspaceRequest(ErrorCode, ErrorMessage, WorkspaceRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedCreateWorkspaceRequest")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
		["WorkspaceRequest"] = WorkspaceRequest,
	}
	M.AssertFailedCreateWorkspaceRequest(t)
	return t
end

function M.AssertUserName(str)
	assert(str)
	assert(type(str) == "string", "Expected UserName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserName(str)
	M.AssertUserName(str)
	return str
end

function M.AssertWorkspaceErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceErrorCode to be of type 'string'")
end

--  
function M.WorkspaceErrorCode(str)
	M.AssertWorkspaceErrorCode(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 127, "Expected string to be max 127 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertWorkspaceState(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceState to be of type 'string'")
end

--  
function M.WorkspaceState(str)
	M.AssertWorkspaceState(str)
	return str
end

function M.AssertDefaultOu(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultOu to be of type 'string'")
end

--  
function M.DefaultOu(str)
	M.AssertDefaultOu(str)
	return str
end

function M.AssertNonEmptyString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyString to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NonEmptyString(str)
	M.AssertNonEmptyString(str)
	return str
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertRegistrationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationCode to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RegistrationCode(str)
	M.AssertRegistrationCode(str)
	return str
end

function M.AssertSubnetId(str)
	assert(str)
	assert(type(str) == "string", "Expected SubnetId to be of type 'string'")
	assert(str:match("^(subnet-[0-9a-f]{8})$"), "Expected string to match pattern '^(subnet-[0-9a-f]{8})$'")
end

--  
function M.SubnetId(str)
	M.AssertSubnetId(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertVolumeEncryptionKey(str)
	assert(str)
	assert(type(str) == "string", "Expected VolumeEncryptionKey to be of type 'string'")
end

--  
function M.VolumeEncryptionKey(str)
	M.AssertVolumeEncryptionKey(str)
	return str
end

function M.AssertDirectoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryName to be of type 'string'")
end

--  
function M.DirectoryName(str)
	M.AssertDirectoryName(str)
	return str
end

function M.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
	assert(str:match("^(sg-[0-9a-f]{8})$"), "Expected string to match pattern '^(sg-[0-9a-f]{8})$'")
end

--  
function M.SecurityGroupId(str)
	M.AssertSecurityGroupId(str)
	return str
end

function M.AssertDirectoryId(str)
	assert(str)
	assert(type(str) == "string", "Expected DirectoryId to be of type 'string'")
	assert(str:match("^d-[0-9a-f]{8,63}$"), "Expected string to match pattern '^d-[0-9a-f]{8,63}$'")
end

--  
function M.DirectoryId(str)
	M.AssertDirectoryId(str)
	return str
end

function M.AssertWorkspaceDirectoryType(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceDirectoryType to be of type 'string'")
end

--  
function M.WorkspaceDirectoryType(str)
	M.AssertWorkspaceDirectoryType(str)
	return str
end

function M.AssertComputerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputerName to be of type 'string'")
end

--  
function M.ComputerName(str)
	M.AssertComputerName(str)
	return str
end

function M.AssertCompute(str)
	assert(str)
	assert(type(str) == "string", "Expected Compute to be of type 'string'")
end

--  
function M.Compute(str)
	M.AssertCompute(str)
	return str
end

function M.AssertWorkspaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceId to be of type 'string'")
	assert(str:match("^ws-[0-9a-z]{8,63}$"), "Expected string to match pattern '^ws-[0-9a-z]{8,63}$'")
end

--  
function M.WorkspaceId(str)
	M.AssertWorkspaceId(str)
	return str
end

function M.AssertExceptionMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExceptionMessage to be of type 'string'")
end

--  
function M.ExceptionMessage(str)
	M.AssertExceptionMessage(str)
	return str
end

function M.AssertErrorType(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorType to be of type 'string'")
end

--  
function M.ErrorType(str)
	M.AssertErrorType(str)
	return str
end

function M.AssertBundleOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleOwner to be of type 'string'")
end

--  
function M.BundleOwner(str)
	M.AssertBundleOwner(str)
	return str
end

function M.AssertWorkspaceDirectoryState(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceDirectoryState to be of type 'string'")
end

--  
function M.WorkspaceDirectoryState(str)
	M.AssertWorkspaceDirectoryState(str)
	return str
end

function M.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	M.AssertIpAddress(str)
	return str
end

function M.AssertRunningMode(str)
	assert(str)
	assert(type(str) == "string", "Expected RunningMode to be of type 'string'")
end

--  
function M.RunningMode(str)
	M.AssertRunningMode(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertConnectionState(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionState to be of type 'string'")
end

--  
function M.ConnectionState(str)
	M.AssertConnectionState(str)
	return str
end

function M.AssertBundleId(str)
	assert(str)
	assert(type(str) == "string", "Expected BundleId to be of type 'string'")
	assert(str:match("^wsb-[0-9a-z]{8,63}$"), "Expected string to match pattern '^wsb-[0-9a-z]{8,63}$'")
end

--  
function M.BundleId(str)
	M.AssertBundleId(str)
	return str
end

function M.AssertAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected Alias to be of type 'string'")
end

--  
function M.Alias(str)
	M.AssertAlias(str)
	return str
end

function M.AssertARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ARN to be of type 'string'")
	assert(str:match("^arn:aws:[A-Za-z0-9][A-za-z0-9_/.-]{0,62}:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-za-z0-9_/.-]{0,127}$"), "Expected string to match pattern '^arn:aws:[A-Za-z0-9][A-za-z0-9_/.-]{0,62}:[A-za-z0-9_/.-]{0,63}:[A-za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-za-z0-9_/.-]{0,127}$'")
end

--  
function M.ARN(str)
	M.AssertARN(str)
	return str
end

function M.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 25, "Expected integer to be max 25")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Limit(integer)
	M.AssertLimit(integer)
	return integer
end

function M.AssertRunningModeAutoStopTimeoutInMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RunningModeAutoStopTimeoutInMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RunningModeAutoStopTimeoutInMinutes(integer)
	M.AssertRunningModeAutoStopTimeoutInMinutes(integer)
	return integer
end

function M.AssertBooleanObject(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanObject to be of type 'boolean'")
end

function M.BooleanObject(boolean)
	M.AssertBooleanObject(boolean)
	return boolean
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertWorkspaceConnectionStatusList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspaceConnectionStatusList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWorkspaceConnectionStatus(v)
	end
end

--  
-- List of WorkspaceConnectionStatus objects
function M.WorkspaceConnectionStatusList(list)
	M.AssertWorkspaceConnectionStatusList(list)
	return list
end

function M.AssertDirectoryIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertDirectoryId(v)
	end
end

--  
-- List of DirectoryId objects
function M.DirectoryIdList(list)
	M.AssertDirectoryIdList(list)
	return list
end

function M.AssertTerminateWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected TerminateWorkspaceRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTerminateRequest(v)
	end
end

--  
-- List of TerminateRequest objects
function M.TerminateWorkspaceRequests(list)
	M.AssertTerminateWorkspaceRequests(list)
	return list
end

function M.AssertBundleIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected BundleIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertBundleId(v)
	end
end

--  
-- List of BundleId objects
function M.BundleIdList(list)
	M.AssertBundleIdList(list)
	return list
end

function M.AssertBundleList(list)
	assert(list)
	assert(type(list) == "table", "Expected BundleList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWorkspaceBundle(v)
	end
end

--  
-- List of WorkspaceBundle objects
function M.BundleList(list)
	M.AssertBundleList(list)
	return list
end

function M.AssertStopWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected StopWorkspaceRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertStopRequest(v)
	end
end

--  
-- List of StopRequest objects
function M.StopWorkspaceRequests(list)
	M.AssertStopWorkspaceRequests(list)
	return list
end

function M.AssertWorkspaceList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspaceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWorkspace(v)
	end
end

--  
-- List of Workspace objects
function M.WorkspaceList(list)
	M.AssertWorkspaceList(list)
	return list
end

function M.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNonEmptyString(v)
	end
end

--  
-- List of NonEmptyString objects
function M.TagKeyList(list)
	M.AssertTagKeyList(list)
	return list
end

function M.AssertSubnetIds(list)
	assert(list)
	assert(type(list) == "table", "Expected SubnetIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubnetId(v)
	end
end

--  
-- List of SubnetId objects
function M.SubnetIds(list)
	M.AssertSubnetIds(list)
	return list
end

function M.AssertStartWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected StartWorkspaceRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertStartRequest(v)
	end
end

--  
-- List of StartRequest objects
function M.StartWorkspaceRequests(list)
	M.AssertStartWorkspaceRequests(list)
	return list
end

function M.AssertDnsIpAddresses(list)
	assert(list)
	assert(type(list) == "table", "Expected DnsIpAddresses to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIpAddress(v)
	end
end

--  
-- List of IpAddress objects
function M.DnsIpAddresses(list)
	M.AssertDnsIpAddresses(list)
	return list
end

function M.AssertDirectoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected DirectoryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWorkspaceDirectory(v)
	end
end

--  
-- List of WorkspaceDirectory objects
function M.DirectoryList(list)
	M.AssertDirectoryList(list)
	return list
end

function M.AssertWorkspaceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspaceIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertWorkspaceId(v)
	end
end

--  
-- List of WorkspaceId objects
function M.WorkspaceIdList(list)
	M.AssertWorkspaceIdList(list)
	return list
end

function M.AssertFailedStopWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedStopWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedStopWorkspaceRequests(list)
	M.AssertFailedStopWorkspaceRequests(list)
	return list
end

function M.AssertRebootWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected RebootWorkspaceRequests to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertRebootRequest(v)
	end
end

--  
-- List of RebootRequest objects
function M.RebootWorkspaceRequests(list)
	M.AssertRebootWorkspaceRequests(list)
	return list
end

function M.AssertFailedRebootWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedRebootWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedRebootWorkspaceRequests(list)
	M.AssertFailedRebootWorkspaceRequests(list)
	return list
end

function M.AssertWorkspaceRequestList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkspaceRequestList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertWorkspaceRequest(v)
	end
end

--  
-- List of WorkspaceRequest objects
function M.WorkspaceRequestList(list)
	M.AssertWorkspaceRequestList(list)
	return list
end

function M.AssertFailedStartWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedStartWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedStartWorkspaceRequests(list)
	M.AssertFailedStartWorkspaceRequests(list)
	return list
end

function M.AssertFailedTerminateWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedTerminateWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedTerminateWorkspaceRequests(list)
	M.AssertFailedTerminateWorkspaceRequests(list)
	return list
end

function M.AssertFailedCreateWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedCreateWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFailedCreateWorkspaceRequest(v)
	end
end

--  
-- List of FailedCreateWorkspaceRequest objects
function M.FailedCreateWorkspaceRequests(list)
	M.AssertFailedCreateWorkspaceRequests(list)
	return list
end

function M.AssertFailedRebuildWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedRebuildWorkspaceRequests to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFailedWorkspaceChangeRequest(v)
	end
end

--  
-- List of FailedWorkspaceChangeRequest objects
function M.FailedRebuildWorkspaceRequests(list)
	M.AssertFailedRebuildWorkspaceRequests(list)
	return list
end

function M.AssertRebuildWorkspaceRequests(list)
	assert(list)
	assert(type(list) == "table", "Expected RebuildWorkspaceRequests to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertRebuildRequest(v)
	end
end

--  
-- List of RebuildRequest objects
function M.RebuildWorkspaceRequests(list)
	M.AssertRebuildWorkspaceRequests(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeleteTags
-- @param DeleteTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTagsAsync(DeleteTagsRequest, cb)
	assert(DeleteTagsRequest, "You must provide a DeleteTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.DeleteTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeWorkspaces
-- @param DescribeWorkspacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeWorkspacesAsync(DescribeWorkspacesRequest, cb)
	assert(DescribeWorkspacesRequest, "You must provide a DescribeWorkspacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeWorkspaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeWorkspacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TerminateWorkspaces
-- @param TerminateWorkspacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TerminateWorkspacesAsync(TerminateWorkspacesRequest, cb)
	assert(TerminateWorkspacesRequest, "You must provide a TerminateWorkspacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.TerminateWorkspaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TerminateWorkspacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTags
-- @param CreateTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTagsAsync(CreateTagsRequest, cb)
	assert(CreateTagsRequest, "You must provide a CreateTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.CreateTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeWorkspaceBundles
-- @param DescribeWorkspaceBundlesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeWorkspaceBundlesAsync(DescribeWorkspaceBundlesRequest, cb)
	assert(DescribeWorkspaceBundlesRequest, "You must provide a DescribeWorkspaceBundlesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeWorkspaceBundles",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeWorkspaceBundlesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeWorkspaceDirectories
-- @param DescribeWorkspaceDirectoriesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeWorkspaceDirectoriesAsync(DescribeWorkspaceDirectoriesRequest, cb)
	assert(DescribeWorkspaceDirectoriesRequest, "You must provide a DescribeWorkspaceDirectoriesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeWorkspaceDirectories",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeWorkspaceDirectoriesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeWorkspacesConnectionStatus
-- @param DescribeWorkspacesConnectionStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeWorkspacesConnectionStatusAsync(DescribeWorkspacesConnectionStatusRequest, cb)
	assert(DescribeWorkspacesConnectionStatusRequest, "You must provide a DescribeWorkspacesConnectionStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeWorkspacesConnectionStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeWorkspacesConnectionStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RebuildWorkspaces
-- @param RebuildWorkspacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RebuildWorkspacesAsync(RebuildWorkspacesRequest, cb)
	assert(RebuildWorkspacesRequest, "You must provide a RebuildWorkspacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.RebuildWorkspaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RebuildWorkspacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTags
-- @param DescribeTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTagsAsync(DescribeTagsRequest, cb)
	assert(DescribeTagsRequest, "You must provide a DescribeTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.DescribeTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RebootWorkspaces
-- @param RebootWorkspacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RebootWorkspacesAsync(RebootWorkspacesRequest, cb)
	assert(RebootWorkspacesRequest, "You must provide a RebootWorkspacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.RebootWorkspaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RebootWorkspacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateWorkspaces
-- @param CreateWorkspacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateWorkspacesAsync(CreateWorkspacesRequest, cb)
	assert(CreateWorkspacesRequest, "You must provide a CreateWorkspacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.CreateWorkspaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateWorkspacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopWorkspaces
-- @param StopWorkspacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopWorkspacesAsync(StopWorkspacesRequest, cb)
	assert(StopWorkspacesRequest, "You must provide a StopWorkspacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.StopWorkspaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopWorkspacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyWorkspaceProperties
-- @param ModifyWorkspacePropertiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyWorkspacePropertiesAsync(ModifyWorkspacePropertiesRequest, cb)
	assert(ModifyWorkspacePropertiesRequest, "You must provide a ModifyWorkspacePropertiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.ModifyWorkspaceProperties",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyWorkspacePropertiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartWorkspaces
-- @param StartWorkspacesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartWorkspacesAsync(StartWorkspacesRequest, cb)
	assert(StartWorkspacesRequest, "You must provide a StartWorkspacesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "WorkspacesService.StartWorkspaces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartWorkspacesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
