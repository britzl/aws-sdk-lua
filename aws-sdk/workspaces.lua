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
-- <p>Contains default WorkSpace creation information.</p>
-- @param _EnableInternetAccess [BooleanObject] <p>A public IP address will be attached to all WorkSpaces that are created or rebuilt.</p>
-- @param _EnableWorkDocs [BooleanObject] <p>Specifies if the directory is enabled for Amazon WorkDocs.</p>
-- @param _DefaultOu [DefaultOu] <p>The organizational unit (OU) in the directory that the WorkSpace machine accounts are placed in.</p>
-- @param _CustomSecurityGroupId [SecurityGroupId] <p>The identifier of any custom security groups that are applied to the WorkSpaces when they are created.</p>
-- @param _UserEnabledAsLocalAdministrator [BooleanObject] <p>The WorkSpace user is an administrator on the WorkSpace.</p>
function M.DefaultWorkspaceCreationProperties(_EnableInternetAccess, _EnableWorkDocs, _DefaultOu, _CustomSecurityGroupId, _UserEnabledAsLocalAdministrator, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultWorkspaceCreationProperties")
	local t = { 
		["EnableInternetAccess"] = _EnableInternetAccess,
		["EnableWorkDocs"] = _EnableWorkDocs,
		["DefaultOu"] = _DefaultOu,
		["CustomSecurityGroupId"] = _CustomSecurityGroupId,
		["UserEnabledAsLocalAdministrator"] = _UserEnabledAsLocalAdministrator,
	}
	asserts.AssertDefaultWorkspaceCreationProperties(t)
	return t
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
-- <p>The result of the <a>DeleteTags</a> operation.</p>
function M.DeleteTagsResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsResult")
	local t = { 
	}
	asserts.AssertDeleteTagsResult(t)
	return t
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
-- <p>Contains the results of the <a>TerminateWorkspaces</a> operation.</p>
-- @param _FailedRequests [FailedTerminateWorkspaceRequests] <p>An array of structures representing any WorkSpaces that could not be terminated.</p>
function M.TerminateWorkspacesResult(_FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateWorkspacesResult")
	local t = { 
		["FailedRequests"] = _FailedRequests,
	}
	asserts.AssertTerminateWorkspacesResult(t)
	return t
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
-- <p>Contains the results of the <a>RebootWorkspaces</a> operation.</p>
-- @param _FailedRequests [FailedRebootWorkspaceRequests] <p>An array of structures representing any WorkSpaces that could not be rebooted.</p>
function M.RebootWorkspacesResult(_FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootWorkspacesResult")
	local t = { 
		["FailedRequests"] = _FailedRequests,
	}
	asserts.AssertRebootWorkspacesResult(t)
	return t
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
-- <p>The request of the <a>DescribeTags</a> operation.</p>
-- @param _ResourceId [NonEmptyString] <p>The resource ID of the request.</p>
-- Required parameter: ResourceId
function M.DescribeTagsRequest(_ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsRequest")
	local t = { 
		["ResourceId"] = _ResourceId,
	}
	asserts.AssertDescribeTagsRequest(t)
	return t
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
-- @param _StopWorkspaceRequests [StopWorkspaceRequests] <p>The requests.</p>
-- Required parameter: StopWorkspaceRequests
function M.StopWorkspacesRequest(_StopWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopWorkspacesRequest")
	local t = { 
		["StopWorkspaceRequests"] = _StopWorkspaceRequests,
	}
	asserts.AssertStopWorkspacesRequest(t)
	return t
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
-- <p>Contains the inputs for the <a>RebootWorkspaces</a> operation.</p>
-- @param _RebootWorkspaceRequests [RebootWorkspaceRequests] <p>An array of structures that specify the WorkSpaces to reboot.</p>
-- Required parameter: RebootWorkspaceRequests
function M.RebootWorkspacesRequest(_RebootWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootWorkspacesRequest")
	local t = { 
		["RebootWorkspaceRequests"] = _RebootWorkspaceRequests,
	}
	asserts.AssertRebootWorkspacesRequest(t)
	return t
end

keys.ResourceUnavailableException = { ["ResourceId"] = true, ["message"] = true, nil }

function asserts.AssertResourceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceUnavailableException to be of type 'table'")
	if struct["ResourceId"] then asserts.AssertNonEmptyString(struct["ResourceId"]) end
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceUnavailableException[k], "ResourceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceUnavailableException
-- <p>The specified resource is not available.</p>
-- @param _ResourceId [NonEmptyString] <p>The identifier of the resource that is not available.</p>
-- @param _message [ExceptionMessage] <p>The exception error message.</p>
function M.ResourceUnavailableException(_ResourceId, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceUnavailableException")
	local t = { 
		["ResourceId"] = _ResourceId,
		["message"] = _message,
	}
	asserts.AssertResourceUnavailableException(t)
	return t
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
-- <p>The request of the <a>CreateTags</a> operation.</p>
-- @param _ResourceId [NonEmptyString] <p>The resource ID of the request.</p>
-- @param _Tags [TagList] <p>The tags of the request.</p>
-- Required parameter: ResourceId
-- Required parameter: Tags
function M.CreateTagsRequest(_ResourceId, _Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsRequest")
	local t = { 
		["ResourceId"] = _ResourceId,
		["Tags"] = _Tags,
	}
	asserts.AssertCreateTagsRequest(t)
	return t
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
-- <p>Describes the tag of the WorkSpace.</p>
-- @param _Value [TagValue] <p>The value of the tag.</p>
-- @param _Key [TagKey] <p>The key of the tag.</p>
-- Required parameter: Key
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.OperationInProgressException = { ["message"] = true, nil }

function asserts.AssertOperationInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationInProgressException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationInProgressException[k], "OperationInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationInProgressException
-- <p>The properties of this WorkSpace are currently being modified. Try again in a moment.</p>
-- @param _message [ExceptionMessage] 
function M.OperationInProgressException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationInProgressException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertOperationInProgressException(t)
	return t
end

keys.ResourceLimitExceededException = { ["message"] = true, nil }

function asserts.AssertResourceLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceLimitExceededException[k], "ResourceLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceLimitExceededException
-- <p>Your resource limits have been exceeded.</p>
-- @param _message [ExceptionMessage] <p>The exception error message.</p>
function M.ResourceLimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceLimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceLimitExceededException(t)
	return t
end

keys.InvalidResourceStateException = { ["message"] = true, nil }

function asserts.AssertInvalidResourceStateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceStateException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidResourceStateException[k], "InvalidResourceStateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceStateException
-- <p>The state of the WorkSpace is not valid for this operation.</p>
-- @param _message [ExceptionMessage] 
function M.InvalidResourceStateException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceStateException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidResourceStateException(t)
	return t
end

keys.WorkspaceDirectory = { ["CustomerUserName"] = true, ["DirectoryId"] = true, ["DirectoryName"] = true, ["SubnetIds"] = true, ["WorkspaceCreationProperties"] = true, ["Alias"] = true, ["State"] = true, ["DirectoryType"] = true, ["RegistrationCode"] = true, ["IamRoleId"] = true, ["DnsIpAddresses"] = true, ["WorkspaceSecurityGroupId"] = true, nil }

function asserts.AssertWorkspaceDirectory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceDirectory to be of type 'table'")
	if struct["CustomerUserName"] then asserts.AssertUserName(struct["CustomerUserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["DirectoryName"] then asserts.AssertDirectoryName(struct["DirectoryName"]) end
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
-- <p>Contains information about an AWS Directory Service directory for use with Amazon WorkSpaces.</p>
-- @param _CustomerUserName [UserName] <p>The user name for the service account.</p>
-- @param _DirectoryId [DirectoryId] <p>The directory identifier.</p>
-- @param _DirectoryName [DirectoryName] <p>The name of the directory.</p>
-- @param _SubnetIds [SubnetIds] <p>An array of strings that contains the identifiers of the subnets used with the directory.</p>
-- @param _WorkspaceCreationProperties [DefaultWorkspaceCreationProperties] <p>A structure that specifies the default creation properties for all WorkSpaces in the directory.</p>
-- @param _Alias [Alias] <p>The directory alias.</p>
-- @param _State [WorkspaceDirectoryState] <p>The state of the directory's registration with Amazon WorkSpaces</p>
-- @param _DirectoryType [WorkspaceDirectoryType] <p>The directory type.</p>
-- @param _RegistrationCode [RegistrationCode] <p>The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.</p>
-- @param _IamRoleId [ARN] <p>The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.</p>
-- @param _DnsIpAddresses [DnsIpAddresses] <p>An array of strings that contains the IP addresses of the DNS servers for the directory.</p>
-- @param _WorkspaceSecurityGroupId [SecurityGroupId] <p>The identifier of the security group that is assigned to new WorkSpaces.</p>
function M.WorkspaceDirectory(_CustomerUserName, _DirectoryId, _DirectoryName, _SubnetIds, _WorkspaceCreationProperties, _Alias, _State, _DirectoryType, _RegistrationCode, _IamRoleId, _DnsIpAddresses, _WorkspaceSecurityGroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceDirectory")
	local t = { 
		["CustomerUserName"] = _CustomerUserName,
		["DirectoryId"] = _DirectoryId,
		["DirectoryName"] = _DirectoryName,
		["SubnetIds"] = _SubnetIds,
		["WorkspaceCreationProperties"] = _WorkspaceCreationProperties,
		["Alias"] = _Alias,
		["State"] = _State,
		["DirectoryType"] = _DirectoryType,
		["RegistrationCode"] = _RegistrationCode,
		["IamRoleId"] = _IamRoleId,
		["DnsIpAddresses"] = _DnsIpAddresses,
		["WorkspaceSecurityGroupId"] = _WorkspaceSecurityGroupId,
	}
	asserts.AssertWorkspaceDirectory(t)
	return t
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
-- <p>Contains the inputs for the <a>DescribeWorkspaces</a> operation.</p>
-- @param _UserName [UserName] <p>Used with the <code>DirectoryId</code> parameter to specify the directory user for whom to obtain the WorkSpace.</p>
-- @param _DirectoryId [DirectoryId] <p>Specifies the directory identifier to which to limit the WorkSpaces. Optionally, you can specify a specific directory user with the <code>UserName</code> parameter. This parameter cannot be combined with any other filter parameter.</p>
-- @param _Limit [Limit] <p>The maximum number of items to return.</p>
-- @param _WorkspaceIds [WorkspaceIdList] <p>An array of strings that contain the identifiers of the WorkSpaces for which to retrieve information. This parameter cannot be combined with any other filter parameter.</p> <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>
-- @param _NextToken [PaginationToken] <p>The <code>NextToken</code> value from a previous call to this operation. Pass null if this is the first call.</p>
-- @param _BundleId [BundleId] <p>The identifier of a bundle to obtain the WorkSpaces for. All WorkSpaces that are created from this bundle will be retrieved. This parameter cannot be combined with any other filter parameter.</p>
function M.DescribeWorkspacesRequest(_UserName, _DirectoryId, _Limit, _WorkspaceIds, _NextToken, _BundleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspacesRequest")
	local t = { 
		["UserName"] = _UserName,
		["DirectoryId"] = _DirectoryId,
		["Limit"] = _Limit,
		["WorkspaceIds"] = _WorkspaceIds,
		["NextToken"] = _NextToken,
		["BundleId"] = _BundleId,
	}
	asserts.AssertDescribeWorkspacesRequest(t)
	return t
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
-- @param _WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- @param _WorkspaceProperties [WorkspaceProperties] <p>The WorkSpace properties of the request.</p>
-- Required parameter: WorkspaceId
-- Required parameter: WorkspaceProperties
function M.ModifyWorkspacePropertiesRequest(_WorkspaceId, _WorkspaceProperties, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyWorkspacePropertiesRequest")
	local t = { 
		["WorkspaceId"] = _WorkspaceId,
		["WorkspaceProperties"] = _WorkspaceProperties,
	}
	asserts.AssertModifyWorkspacePropertiesRequest(t)
	return t
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
-- @param _ConnectionState [ConnectionState] <p>The connection state of the WorkSpace. Returns UNKOWN if the WorkSpace is in a Stopped state.</p>
-- @param _ConnectionStateCheckTimestamp [Timestamp] <p>The timestamp of the connection state check.</p>
-- @param _WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
-- @param _LastKnownUserConnectionTimestamp [Timestamp] <p>The timestamp of the last known user connection.</p>
function M.WorkspaceConnectionStatus(_ConnectionState, _ConnectionStateCheckTimestamp, _WorkspaceId, _LastKnownUserConnectionTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceConnectionStatus")
	local t = { 
		["ConnectionState"] = _ConnectionState,
		["ConnectionStateCheckTimestamp"] = _ConnectionStateCheckTimestamp,
		["WorkspaceId"] = _WorkspaceId,
		["LastKnownUserConnectionTimestamp"] = _LastKnownUserConnectionTimestamp,
	}
	asserts.AssertWorkspaceConnectionStatus(t)
	return t
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
-- <p>Contains the results of the <a>DescribeWorkspaceBundles</a> operation.</p>
-- @param _NextToken [PaginationToken] <p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to this operation to retrieve the next set of items. This token is valid for one day and must be used within that time frame.</p>
-- @param _Bundles [BundleList] <p>An array of structures that contain information about the bundles.</p>
function M.DescribeWorkspaceBundlesResult(_NextToken, _Bundles, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspaceBundlesResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Bundles"] = _Bundles,
	}
	asserts.AssertDescribeWorkspaceBundlesResult(t)
	return t
end

keys.Workspace = { ["UserName"] = true, ["DirectoryId"] = true, ["ComputerName"] = true, ["VolumeEncryptionKey"] = true, ["UserVolumeEncryptionEnabled"] = true, ["ErrorMessage"] = true, ["WorkspaceProperties"] = true, ["ErrorCode"] = true, ["State"] = true, ["WorkspaceId"] = true, ["SubnetId"] = true, ["RootVolumeEncryptionEnabled"] = true, ["IpAddress"] = true, ["BundleId"] = true, nil }

function asserts.AssertWorkspace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Workspace to be of type 'table'")
	if struct["UserName"] then asserts.AssertUserName(struct["UserName"]) end
	if struct["DirectoryId"] then asserts.AssertDirectoryId(struct["DirectoryId"]) end
	if struct["ComputerName"] then asserts.AssertComputerName(struct["ComputerName"]) end
	if struct["VolumeEncryptionKey"] then asserts.AssertVolumeEncryptionKey(struct["VolumeEncryptionKey"]) end
	if struct["UserVolumeEncryptionEnabled"] then asserts.AssertBooleanObject(struct["UserVolumeEncryptionEnabled"]) end
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
-- <p>Contains information about a WorkSpace.</p>
-- @param _UserName [UserName] <p>The user that the WorkSpace is assigned to.</p>
-- @param _DirectoryId [DirectoryId] <p>The identifier of the AWS Directory Service directory that the WorkSpace belongs to.</p>
-- @param _ComputerName [ComputerName] <p>The name of the WorkSpace as seen by the operating system.</p>
-- @param _VolumeEncryptionKey [VolumeEncryptionKey] <p>The KMS key used to encrypt data stored on your WorkSpace.</p>
-- @param _UserVolumeEncryptionEnabled [BooleanObject] <p>Specifies whether the data stored on the user volume, or D: drive, is encrypted.</p>
-- @param _ErrorMessage [Description] <p>If the WorkSpace could not be created, this contains a textual error message that describes the failure.</p>
-- @param _WorkspaceProperties [WorkspaceProperties] 
-- @param _ErrorCode [WorkspaceErrorCode] <p>If the WorkSpace could not be created, this contains the error code.</p>
-- @param _State [WorkspaceState] <p>The operational state of the WorkSpace.</p>
-- @param _WorkspaceId [WorkspaceId] <p>The identifier of the WorkSpace.</p>
-- @param _SubnetId [SubnetId] <p>The identifier of the subnet that the WorkSpace is in.</p>
-- @param _RootVolumeEncryptionEnabled [BooleanObject] <p>Specifies whether the data stored on the root volume, or C: drive, is encrypted.</p>
-- @param _IpAddress [IpAddress] <p>The IP address of the WorkSpace.</p>
-- @param _BundleId [BundleId] <p>The identifier of the bundle that the WorkSpace was created from.</p>
function M.Workspace(_UserName, _DirectoryId, _ComputerName, _VolumeEncryptionKey, _UserVolumeEncryptionEnabled, _ErrorMessage, _WorkspaceProperties, _ErrorCode, _State, _WorkspaceId, _SubnetId, _RootVolumeEncryptionEnabled, _IpAddress, _BundleId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Workspace")
	local t = { 
		["UserName"] = _UserName,
		["DirectoryId"] = _DirectoryId,
		["ComputerName"] = _ComputerName,
		["VolumeEncryptionKey"] = _VolumeEncryptionKey,
		["UserVolumeEncryptionEnabled"] = _UserVolumeEncryptionEnabled,
		["ErrorMessage"] = _ErrorMessage,
		["WorkspaceProperties"] = _WorkspaceProperties,
		["ErrorCode"] = _ErrorCode,
		["State"] = _State,
		["WorkspaceId"] = _WorkspaceId,
		["SubnetId"] = _SubnetId,
		["RootVolumeEncryptionEnabled"] = _RootVolumeEncryptionEnabled,
		["IpAddress"] = _IpAddress,
		["BundleId"] = _BundleId,
	}
	asserts.AssertWorkspace(t)
	return t
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
-- <p>Contains information about a WorkSpace that could not be rebooted (<a>RebootWorkspaces</a>), rebuilt (<a>RebuildWorkspaces</a>), terminated (<a>TerminateWorkspaces</a>), started (<a>StartWorkspaces</a>), or stopped (<a>StopWorkspaces</a>).</p>
-- @param _ErrorCode [ErrorType] <p>The error code.</p>
-- @param _WorkspaceId [WorkspaceId] <p>The identifier of the WorkSpace.</p>
-- @param _ErrorMessage [Description] <p>The textual error message.</p>
function M.FailedWorkspaceChangeRequest(_ErrorCode, _WorkspaceId, _ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedWorkspaceChangeRequest")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["WorkspaceId"] = _WorkspaceId,
		["ErrorMessage"] = _ErrorMessage,
	}
	asserts.AssertFailedWorkspaceChangeRequest(t)
	return t
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
function M.ModifyWorkspacePropertiesResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyWorkspacePropertiesResult")
	local t = { 
	}
	asserts.AssertModifyWorkspacePropertiesResult(t)
	return t
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
-- @param _StartWorkspaceRequests [StartWorkspaceRequests] <p>The requests.</p>
-- Required parameter: StartWorkspaceRequests
function M.StartWorkspacesRequest(_StartWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartWorkspacesRequest")
	local t = { 
		["StartWorkspaceRequests"] = _StartWorkspaceRequests,
	}
	asserts.AssertStartWorkspacesRequest(t)
	return t
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
-- @param _FailedRequests [FailedStartWorkspaceRequests] <p>The failed requests.</p>
function M.StartWorkspacesResult(_FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartWorkspacesResult")
	local t = { 
		["FailedRequests"] = _FailedRequests,
	}
	asserts.AssertStartWorkspacesResult(t)
	return t
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
-- <p>Contains the results for the <a>DescribeWorkspaces</a> operation.</p>
-- @param _NextToken [PaginationToken] <p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to this operation to retrieve the next set of items. This token is valid for one day and must be used within that time frame.</p>
-- @param _Workspaces [WorkspaceList] <p>An array of structures that contain the information about the WorkSpaces.</p> <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, some of this information may be incomplete for a newly-created WorkSpace.</p>
function M.DescribeWorkspacesResult(_NextToken, _Workspaces, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspacesResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Workspaces"] = _Workspaces,
	}
	asserts.AssertDescribeWorkspacesResult(t)
	return t
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
-- <p>Contains information about a WorkSpace creation request.</p>
-- @param _UserName [UserName] <p>The username that the WorkSpace is assigned to. This username must exist in the AWS Directory Service directory specified by the <code>DirectoryId</code> member.</p>
-- @param _DirectoryId [DirectoryId] <p>The identifier of the AWS Directory Service directory to create the WorkSpace in. You can use the <a>DescribeWorkspaceDirectories</a> operation to obtain a list of the directories that are available.</p>
-- @param _VolumeEncryptionKey [VolumeEncryptionKey] <p>The KMS key used to encrypt data stored on your WorkSpace.</p>
-- @param _Tags [TagList] <p>The tags of the WorkSpace request.</p>
-- @param _WorkspaceProperties [WorkspaceProperties] 
-- @param _BundleId [BundleId] <p>The identifier of the bundle to create the WorkSpace from. You can use the <a>DescribeWorkspaceBundles</a> operation to obtain a list of the bundles that are available.</p>
-- @param _UserVolumeEncryptionEnabled [BooleanObject] <p>Specifies whether the data stored on the user volume, or D: drive, is encrypted.</p>
-- @param _RootVolumeEncryptionEnabled [BooleanObject] <p>Specifies whether the data stored on the root volume, or C: drive, is encrypted.</p>
-- Required parameter: DirectoryId
-- Required parameter: UserName
-- Required parameter: BundleId
function M.WorkspaceRequest(_UserName, _DirectoryId, _VolumeEncryptionKey, _Tags, _WorkspaceProperties, _BundleId, _UserVolumeEncryptionEnabled, _RootVolumeEncryptionEnabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceRequest")
	local t = { 
		["UserName"] = _UserName,
		["DirectoryId"] = _DirectoryId,
		["VolumeEncryptionKey"] = _VolumeEncryptionKey,
		["Tags"] = _Tags,
		["WorkspaceProperties"] = _WorkspaceProperties,
		["BundleId"] = _BundleId,
		["UserVolumeEncryptionEnabled"] = _UserVolumeEncryptionEnabled,
		["RootVolumeEncryptionEnabled"] = _RootVolumeEncryptionEnabled,
	}
	asserts.AssertWorkspaceRequest(t)
	return t
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
-- <p>Contains information about the compute type of a WorkSpace bundle.</p>
-- @param _Name [Compute] <p>The name of the compute type for the bundle.</p>
function M.ComputeType(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ComputeType")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertComputeType(t)
	return t
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
-- <p>Contains information used with the <a>TerminateWorkspaces</a> operation to terminate a WorkSpace.</p>
-- @param _WorkspaceId [WorkspaceId] <p>The identifier of the WorkSpace to terminate.</p>
-- Required parameter: WorkspaceId
function M.TerminateRequest(_WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateRequest")
	local t = { 
		["WorkspaceId"] = _WorkspaceId,
	}
	asserts.AssertTerminateRequest(t)
	return t
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
-- <p>The request of the <a>DeleteTags</a> operation.</p>
-- @param _ResourceId [NonEmptyString] <p>The resource ID of the request.</p>
-- @param _TagKeys [TagKeyList] <p>The tag keys of the request.</p>
-- Required parameter: ResourceId
-- Required parameter: TagKeys
function M.DeleteTagsRequest(_ResourceId, _TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTagsRequest")
	local t = { 
		["ResourceId"] = _ResourceId,
		["TagKeys"] = _TagKeys,
	}
	asserts.AssertDeleteTagsRequest(t)
	return t
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
-- <p>Contains the inputs for the <a>DescribeWorkspaceDirectories</a> operation.</p>
-- @param _DirectoryIds [DirectoryIdList] <p>An array of strings that contains the directory identifiers to retrieve information for. If this member is null, all directories are retrieved.</p>
-- @param _NextToken [PaginationToken] <p>The <code>NextToken</code> value from a previous call to this operation. Pass null if this is the first call.</p>
function M.DescribeWorkspaceDirectoriesRequest(_DirectoryIds, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspaceDirectoriesRequest")
	local t = { 
		["DirectoryIds"] = _DirectoryIds,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeWorkspaceDirectoriesRequest(t)
	return t
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
-- @param _NextToken [PaginationToken] <p>The next token of the request.</p>
-- @param _WorkspaceIds [WorkspaceIdList] <p>An array of strings that contain the identifiers of the WorkSpaces.</p>
function M.DescribeWorkspacesConnectionStatusRequest(_NextToken, _WorkspaceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspacesConnectionStatusRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["WorkspaceIds"] = _WorkspaceIds,
	}
	asserts.AssertDescribeWorkspacesConnectionStatusRequest(t)
	return t
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
-- <p>Contains information about the user storage for a WorkSpace bundle.</p>
-- @param _Capacity [NonEmptyString] <p>The amount of user storage for the bundle.</p>
function M.UserStorage(_Capacity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UserStorage")
	local t = { 
		["Capacity"] = _Capacity,
	}
	asserts.AssertUserStorage(t)
	return t
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
-- <p>The result of the <a>DescribeTags</a> operation.</p>
-- @param _TagList [TagList] <p>The list of tags.</p>
function M.DescribeTagsResult(_TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTagsResult")
	local t = { 
		["TagList"] = _TagList,
	}
	asserts.AssertDescribeTagsResult(t)
	return t
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
-- <p>Describes the stop request.</p>
-- @param _WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
function M.StopRequest(_WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopRequest")
	local t = { 
		["WorkspaceId"] = _WorkspaceId,
	}
	asserts.AssertStopRequest(t)
	return t
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
-- <p>Contains the inputs for the <a>DescribeWorkspaceBundles</a> operation.</p>
-- @param _Owner [BundleOwner] <p>The owner of the bundles to retrieve. This parameter cannot be combined with any other filter parameter.</p> <p>This contains one of the following values:</p> <ul> <li> <p>null- Retrieves the bundles that belong to the account making the call.</p> </li> <li> <p> <code>AMAZON</code>- Retrieves the bundles that are provided by AWS.</p> </li> </ul>
-- @param _NextToken [PaginationToken] <p>The <code>NextToken</code> value from a previous call to this operation. Pass null if this is the first call.</p>
-- @param _BundleIds [BundleIdList] <p>An array of strings that contains the identifiers of the bundles to retrieve. This parameter cannot be combined with any other filter parameter.</p>
function M.DescribeWorkspaceBundlesRequest(_Owner, _NextToken, _BundleIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspaceBundlesRequest")
	local t = { 
		["Owner"] = _Owner,
		["NextToken"] = _NextToken,
		["BundleIds"] = _BundleIds,
	}
	asserts.AssertDescribeWorkspaceBundlesRequest(t)
	return t
end

keys.WorkspaceProperties = { ["RunningModeAutoStopTimeoutInMinutes"] = true, ["RunningMode"] = true, nil }

function asserts.AssertWorkspaceProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceProperties to be of type 'table'")
	if struct["RunningModeAutoStopTimeoutInMinutes"] then asserts.AssertRunningModeAutoStopTimeoutInMinutes(struct["RunningModeAutoStopTimeoutInMinutes"]) end
	if struct["RunningMode"] then asserts.AssertRunningMode(struct["RunningMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkspaceProperties[k], "WorkspaceProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceProperties
-- <p>Describes the properties of a WorkSpace.</p>
-- @param _RunningModeAutoStopTimeoutInMinutes [RunningModeAutoStopTimeoutInMinutes] <p>The time after a user logs off when WorkSpaces are automatically stopped. Configured in 60 minute intervals.</p>
-- @param _RunningMode [RunningMode] <p>The running mode of the WorkSpace. AlwaysOn WorkSpaces are billed monthly. AutoStop WorkSpaces are billed by the hour and stopped when no longer being used in order to save on costs.</p>
function M.WorkspaceProperties(_RunningModeAutoStopTimeoutInMinutes, _RunningMode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceProperties")
	local t = { 
		["RunningModeAutoStopTimeoutInMinutes"] = _RunningModeAutoStopTimeoutInMinutes,
		["RunningMode"] = _RunningMode,
	}
	asserts.AssertWorkspaceProperties(t)
	return t
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
-- @param _FailedRequests [FailedStopWorkspaceRequests] <p>The failed requests.</p>
function M.StopWorkspacesResult(_FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopWorkspacesResult")
	local t = { 
		["FailedRequests"] = _FailedRequests,
	}
	asserts.AssertStopWorkspacesResult(t)
	return t
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
-- <p>The result of the <a>CreateTags</a> operation.</p>
function M.CreateTagsResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTagsResult")
	local t = { 
	}
	asserts.AssertCreateTagsResult(t)
	return t
end

keys.UnsupportedWorkspaceConfigurationException = { ["message"] = true, nil }

function asserts.AssertUnsupportedWorkspaceConfigurationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedWorkspaceConfigurationException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedWorkspaceConfigurationException[k], "UnsupportedWorkspaceConfigurationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedWorkspaceConfigurationException
-- <p>The configuration of this WorkSpace is not supported for this operation. For more information, see the <a href="http://docs.aws.amazon.com/workspaces/latest/adminguide/">Amazon WorkSpaces Administration Guide</a>. </p>
-- @param _message [ExceptionMessage] 
function M.UnsupportedWorkspaceConfigurationException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedWorkspaceConfigurationException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnsupportedWorkspaceConfigurationException(t)
	return t
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
-- <p>Contains the inputs for the <a>TerminateWorkspaces</a> operation.</p>
-- @param _TerminateWorkspaceRequests [TerminateWorkspaceRequests] <p>An array of structures that specify the WorkSpaces to terminate.</p>
-- Required parameter: TerminateWorkspaceRequests
function M.TerminateWorkspacesRequest(_TerminateWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateWorkspacesRequest")
	local t = { 
		["TerminateWorkspaceRequests"] = _TerminateWorkspaceRequests,
	}
	asserts.AssertTerminateWorkspacesRequest(t)
	return t
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
-- <p>Contains the results of the <a>DescribeWorkspaceDirectories</a> operation.</p>
-- @param _Directories [DirectoryList] <p>An array of structures that contain information about the directories.</p>
-- @param _NextToken [PaginationToken] <p>If not null, more results are available. Pass this value for the <code>NextToken</code> parameter in a subsequent call to this operation to retrieve the next set of items. This token is valid for one day and must be used within that time frame.</p>
function M.DescribeWorkspaceDirectoriesResult(_Directories, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspaceDirectoriesResult")
	local t = { 
		["Directories"] = _Directories,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeWorkspaceDirectoriesResult(t)
	return t
end

keys.ResourceNotFoundException = { ["ResourceId"] = true, ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["ResourceId"] then asserts.AssertNonEmptyString(struct["ResourceId"]) end
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The resource could not be found.</p>
-- @param _ResourceId [NonEmptyString] <p>The resource could not be found.</p>
-- @param _message [ExceptionMessage] <p>The resource could not be found.</p>
function M.ResourceNotFoundException(_ResourceId, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["ResourceId"] = _ResourceId,
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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
-- <p>Contains the inputs for the <a>CreateWorkspaces</a> operation.</p>
-- @param _Workspaces [WorkspaceRequestList] <p>An array of structures that specify the WorkSpaces to create.</p>
-- Required parameter: Workspaces
function M.CreateWorkspacesRequest(_Workspaces, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWorkspacesRequest")
	local t = { 
		["Workspaces"] = _Workspaces,
	}
	asserts.AssertCreateWorkspacesRequest(t)
	return t
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
-- @param _WorkspacesConnectionStatus [WorkspaceConnectionStatusList] <p>The connection status of the WorkSpace.</p>
-- @param _NextToken [PaginationToken] <p>The next token of the result.</p>
function M.DescribeWorkspacesConnectionStatusResult(_WorkspacesConnectionStatus, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkspacesConnectionStatusResult")
	local t = { 
		["WorkspacesConnectionStatus"] = _WorkspacesConnectionStatus,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeWorkspacesConnectionStatusResult(t)
	return t
end

keys.AccessDeniedException = { ["message"] = true, nil }

function asserts.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedException[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>The user is not authorized to access a resource.</p>
-- @param _message [ExceptionMessage] 
function M.AccessDeniedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAccessDeniedException(t)
	return t
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
-- <p>Contains information used with the <a>RebootWorkspaces</a> operation to reboot a WorkSpace.</p>
-- @param _WorkspaceId [WorkspaceId] <p>The identifier of the WorkSpace to reboot.</p>
-- Required parameter: WorkspaceId
function M.RebootRequest(_WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebootRequest")
	local t = { 
		["WorkspaceId"] = _WorkspaceId,
	}
	asserts.AssertRebootRequest(t)
	return t
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
-- <p>Contains the result of the <a>CreateWorkspaces</a> operation.</p>
-- @param _PendingRequests [WorkspaceList] <p>An array of structures that represent the WorkSpaces that were created.</p> <p>Because this operation is asynchronous, the identifier in <code>WorkspaceId</code> is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information will be returned.</p>
-- @param _FailedRequests [FailedCreateWorkspaceRequests] <p>An array of structures that represent the WorkSpaces that could not be created.</p>
function M.CreateWorkspacesResult(_PendingRequests, _FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateWorkspacesResult")
	local t = { 
		["PendingRequests"] = _PendingRequests,
		["FailedRequests"] = _FailedRequests,
	}
	asserts.AssertCreateWorkspacesResult(t)
	return t
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
-- <p>Contains information used with the <a>RebuildWorkspaces</a> operation to rebuild a WorkSpace.</p>
-- @param _WorkspaceId [WorkspaceId] <p>The identifier of the WorkSpace to rebuild.</p>
-- Required parameter: WorkspaceId
function M.RebuildRequest(_WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebuildRequest")
	local t = { 
		["WorkspaceId"] = _WorkspaceId,
	}
	asserts.AssertRebuildRequest(t)
	return t
end

keys.WorkspaceBundle = { ["ComputeType"] = true, ["Description"] = true, ["BundleId"] = true, ["Owner"] = true, ["UserStorage"] = true, ["Name"] = true, nil }

function asserts.AssertWorkspaceBundle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkspaceBundle to be of type 'table'")
	if struct["ComputeType"] then asserts.AssertComputeType(struct["ComputeType"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["BundleId"] then asserts.AssertBundleId(struct["BundleId"]) end
	if struct["Owner"] then asserts.AssertBundleOwner(struct["Owner"]) end
	if struct["UserStorage"] then asserts.AssertUserStorage(struct["UserStorage"]) end
	if struct["Name"] then asserts.AssertNonEmptyString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkspaceBundle[k], "WorkspaceBundle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkspaceBundle
-- <p>Contains information about a WorkSpace bundle.</p>
-- @param _ComputeType [ComputeType] <p>A <a>ComputeType</a> object that specifies the compute type for the bundle.</p>
-- @param _Description [Description] <p>The bundle description.</p>
-- @param _BundleId [BundleId] <p>The bundle identifier.</p>
-- @param _Owner [BundleOwner] <p>The owner of the bundle. This contains the owner's account identifier, or <code>AMAZON</code> if the bundle is provided by AWS.</p>
-- @param _UserStorage [UserStorage] <p>A <a>UserStorage</a> object that specifies the amount of user storage that the bundle contains.</p>
-- @param _Name [NonEmptyString] <p>The name of the bundle.</p>
function M.WorkspaceBundle(_ComputeType, _Description, _BundleId, _Owner, _UserStorage, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkspaceBundle")
	local t = { 
		["ComputeType"] = _ComputeType,
		["Description"] = _Description,
		["BundleId"] = _BundleId,
		["Owner"] = _Owner,
		["UserStorage"] = _UserStorage,
		["Name"] = _Name,
	}
	asserts.AssertWorkspaceBundle(t)
	return t
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
-- <p>Contains the results of the <a>RebuildWorkspaces</a> operation.</p>
-- @param _FailedRequests [FailedRebuildWorkspaceRequests] <p>An array of structures representing any WorkSpaces that could not be rebuilt.</p>
function M.RebuildWorkspacesResult(_FailedRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebuildWorkspacesResult")
	local t = { 
		["FailedRequests"] = _FailedRequests,
	}
	asserts.AssertRebuildWorkspacesResult(t)
	return t
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
-- <p>Contains the inputs for the <a>RebuildWorkspaces</a> operation.</p>
-- @param _RebuildWorkspaceRequests [RebuildWorkspaceRequests] <p>An array of structures that specify the WorkSpaces to rebuild.</p>
-- Required parameter: RebuildWorkspaceRequests
function M.RebuildWorkspacesRequest(_RebuildWorkspaceRequests, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RebuildWorkspacesRequest")
	local t = { 
		["RebuildWorkspaceRequests"] = _RebuildWorkspaceRequests,
	}
	asserts.AssertRebuildWorkspacesRequest(t)
	return t
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
-- <p>Describes the start request.</p>
-- @param _WorkspaceId [WorkspaceId] <p>The ID of the WorkSpace.</p>
function M.StartRequest(_WorkspaceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartRequest")
	local t = { 
		["WorkspaceId"] = _WorkspaceId,
	}
	asserts.AssertStartRequest(t)
	return t
end

keys.InvalidParameterValuesException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterValuesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValuesException to be of type 'table'")
	if struct["message"] then asserts.AssertExceptionMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValuesException[k], "InvalidParameterValuesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValuesException
-- <p>One or more parameter values are not valid.</p>
-- @param _message [ExceptionMessage] <p>The exception error message.</p>
function M.InvalidParameterValuesException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValuesException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterValuesException(t)
	return t
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
-- <p>Contains information about a WorkSpace that could not be created.</p>
-- @param _ErrorCode [ErrorType] <p>The error code.</p>
-- @param _ErrorMessage [Description] <p>The textual error message.</p>
-- @param _WorkspaceRequest [WorkspaceRequest] <p>A <a>FailedCreateWorkspaceRequest$WorkspaceRequest</a> object that contains the information about the WorkSpace that could not be created.</p>
function M.FailedCreateWorkspaceRequest(_ErrorCode, _ErrorMessage, _WorkspaceRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedCreateWorkspaceRequest")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
		["WorkspaceRequest"] = _WorkspaceRequest,
	}
	asserts.AssertFailedCreateWorkspaceRequest(t)
	return t
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

function asserts.AssertSecurityGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected SecurityGroupId to be of type 'string'")
end

--  
function M.SecurityGroupId(str)
	asserts.AssertSecurityGroupId(str)
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

function asserts.AssertWorkspaceId(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkspaceId to be of type 'string'")
end

--  
function M.WorkspaceId(str)
	asserts.AssertWorkspaceId(str)
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

function asserts.AssertIpAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IpAddress to be of type 'string'")
end

--  
function M.IpAddress(str)
	asserts.AssertIpAddress(str)
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

function asserts.AssertAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected Alias to be of type 'string'")
end

--  
function M.Alias(str)
	asserts.AssertAlias(str)
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

function asserts.AssertRunningModeAutoStopTimeoutInMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RunningModeAutoStopTimeoutInMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RunningModeAutoStopTimeoutInMinutes(integer)
	asserts.AssertRunningModeAutoStopTimeoutInMinutes(integer)
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
