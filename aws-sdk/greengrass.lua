--- GENERATED CODE - DO NOT MODIFY
-- AWS Greengrass (greengrass-2017-06-07)

local M = {}

M.metadata = {
	api_version = "2017-06-07",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "greengrass",
	service_abbreviation = "",
	service_full_name = "AWS Greengrass",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "greengrass-2017-06-07",
}

local GroupCertificateAuthorityProperties_keys = { "GroupCertificateAuthorityId" = true, "GroupCertificateAuthorityArn" = true, nil }

function M.AssertGroupCertificateAuthorityProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupCertificateAuthorityProperties to be of type 'table'")
	if struct["GroupCertificateAuthorityId"] then M.Assert__string(struct["GroupCertificateAuthorityId"]) end
	if struct["GroupCertificateAuthorityArn"] then M.Assert__string(struct["GroupCertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(GroupCertificateAuthorityProperties_keys[k], "GroupCertificateAuthorityProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupCertificateAuthorityProperties
-- Information on group certificate authority properties
-- @param GroupCertificateAuthorityId [__string] Id of the certificate authority for the group.
-- @param GroupCertificateAuthorityArn [__string] Arn of the certificate authority for the group.
function M.GroupCertificateAuthorityProperties(GroupCertificateAuthorityId, GroupCertificateAuthorityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupCertificateAuthorityProperties")
	local t = { 
		["GroupCertificateAuthorityId"] = GroupCertificateAuthorityId,
		["GroupCertificateAuthorityArn"] = GroupCertificateAuthorityArn,
	}
	M.AssertGroupCertificateAuthorityProperties(t)
	return t
end

local GetGroupCertificateConfigurationRequest_keys = { "GroupId" = true, nil }

function M.AssertGetGroupCertificateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupCertificateConfigurationRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupCertificateConfigurationRequest_keys[k], "GetGroupCertificateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupCertificateConfigurationRequest
--  
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.GetGroupCertificateConfigurationRequest(GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupCertificateConfigurationRequest")
	local t = { 
		["GroupId"] = GroupId,
	}
	M.AssertGetGroupCertificateConfigurationRequest(t)
	return t
end

local ListSubscriptionDefinitionVersionsRequest_keys = { "SubscriptionDefinitionId" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListSubscriptionDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionDefinitionVersionsRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then M.Assert__string(struct["SubscriptionDefinitionId"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListSubscriptionDefinitionVersionsRequest_keys[k], "ListSubscriptionDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionDefinitionVersionsRequest
--  
-- @param SubscriptionDefinitionId [__string] subscription definition Id
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: SubscriptionDefinitionId
function M.ListSubscriptionDefinitionVersionsRequest(SubscriptionDefinitionId, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionDefinitionVersionsRequest")
	local t = { 
		["SubscriptionDefinitionId"] = SubscriptionDefinitionId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListSubscriptionDefinitionVersionsRequest(t)
	return t
end

local BadRequestException_keys = { "ErrorDetails" = true, "Message" = true, nil }

function M.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["ErrorDetails"] then M.AssertErrorDetails(struct["ErrorDetails"]) end
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(BadRequestException_keys[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- General Error
-- @param ErrorDetails [ErrorDetails] Error Details
-- @param Message [__string] Message
function M.BadRequestException(ErrorDetails, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequestException")
	local t = { 
		["ErrorDetails"] = ErrorDetails,
		["Message"] = Message,
	}
	M.AssertBadRequestException(t)
	return t
end

local AssociateServiceRoleToAccountRequest_keys = { "RoleArn" = true, nil }

function M.AssertAssociateServiceRoleToAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateServiceRoleToAccountRequest to be of type 'table'")
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(AssociateServiceRoleToAccountRequest_keys[k], "AssociateServiceRoleToAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateServiceRoleToAccountRequest
--  
-- @param RoleArn [__string] Role arn you wish to associate with this account.
function M.AssociateServiceRoleToAccountRequest(RoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateServiceRoleToAccountRequest")
	local t = { 
		["RoleArn"] = RoleArn,
	}
	M.AssertAssociateServiceRoleToAccountRequest(t)
	return t
end

local ListGroupsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsRequest to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupsRequest_keys[k], "ListGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListGroupsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListGroupsRequest(t)
	return t
end

local ListCoreDefinitionsResponse_keys = { "Definitions" = true, "NextToken" = true, nil }

function M.AssertListCoreDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCoreDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then M.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListCoreDefinitionsResponse_keys[k], "ListCoreDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCoreDefinitionsResponse
--  
-- @param Definitions [ListOfDefinitionInformation] Definitions
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListCoreDefinitionsResponse(Definitions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCoreDefinitionsResponse")
	local t = { 
		["Definitions"] = Definitions,
		["NextToken"] = NextToken,
	}
	M.AssertListCoreDefinitionsResponse(t)
	return t
end

local CreateDeviceDefinitionRequest_keys = { "AmznClientToken" = true, "InitialVersion" = true, "Name" = true, nil }

function M.AssertCreateDeviceDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeviceDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then M.AssertDeviceDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeviceDefinitionRequest_keys[k], "CreateDeviceDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeviceDefinitionRequest
--  
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param InitialVersion [DeviceDefinitionVersion] Information on the initial version
-- @param Name [__string] name of the device definition
function M.CreateDeviceDefinitionRequest(AmznClientToken, InitialVersion, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeviceDefinitionRequest")
	local t = { 
		["AmznClientToken"] = AmznClientToken,
		["InitialVersion"] = InitialVersion,
		["Name"] = Name,
	}
	M.AssertCreateDeviceDefinitionRequest(t)
	return t
end

local InternalServerErrorException_keys = { "ErrorDetails" = true, "Message" = true, nil }

function M.AssertInternalServerErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerErrorException to be of type 'table'")
	if struct["ErrorDetails"] then M.AssertErrorDetails(struct["ErrorDetails"]) end
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerErrorException_keys[k], "InternalServerErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerErrorException
-- General Error
-- @param ErrorDetails [ErrorDetails] Error Details
-- @param Message [__string] Message
function M.InternalServerErrorException(ErrorDetails, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerErrorException")
	local t = { 
		["ErrorDetails"] = ErrorDetails,
		["Message"] = Message,
	}
	M.AssertInternalServerErrorException(t)
	return t
end

local GetServiceRoleForAccountRequest_keys = { nil }

function M.AssertGetServiceRoleForAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceRoleForAccountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetServiceRoleForAccountRequest_keys[k], "GetServiceRoleForAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceRoleForAccountRequest
--  
function M.GetServiceRoleForAccountRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServiceRoleForAccountRequest")
	local t = { 
	}
	M.AssertGetServiceRoleForAccountRequest(t)
	return t
end

local ListDeviceDefinitionVersionsRequest_keys = { "DeviceDefinitionId" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListDeviceDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceDefinitionVersionsRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then M.Assert__string(struct["DeviceDefinitionId"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListDeviceDefinitionVersionsRequest_keys[k], "ListDeviceDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceDefinitionVersionsRequest
--  
-- @param DeviceDefinitionId [__string] device definition Id
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: DeviceDefinitionId
function M.ListDeviceDefinitionVersionsRequest(DeviceDefinitionId, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeviceDefinitionVersionsRequest")
	local t = { 
		["DeviceDefinitionId"] = DeviceDefinitionId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListDeviceDefinitionVersionsRequest(t)
	return t
end

local CreateLoggerDefinitionRequest_keys = { "AmznClientToken" = true, "InitialVersion" = true, "Name" = true, nil }

function M.AssertCreateLoggerDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoggerDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then M.AssertLoggerDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateLoggerDefinitionRequest_keys[k], "CreateLoggerDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoggerDefinitionRequest
--  
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param InitialVersion [LoggerDefinitionVersion] Information on the initial version
-- @param Name [__string] name of the logger definition
function M.CreateLoggerDefinitionRequest(AmznClientToken, InitialVersion, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoggerDefinitionRequest")
	local t = { 
		["AmznClientToken"] = AmznClientToken,
		["InitialVersion"] = InitialVersion,
		["Name"] = Name,
	}
	M.AssertCreateLoggerDefinitionRequest(t)
	return t
end

local CreateSubscriptionDefinitionRequest_keys = { "AmznClientToken" = true, "InitialVersion" = true, "Name" = true, nil }

function M.AssertCreateSubscriptionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then M.AssertSubscriptionDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSubscriptionDefinitionRequest_keys[k], "CreateSubscriptionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionDefinitionRequest
--  
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param InitialVersion [SubscriptionDefinitionVersion] Information on the initial version
-- @param Name [__string] name of the subscription definition
function M.CreateSubscriptionDefinitionRequest(AmznClientToken, InitialVersion, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionDefinitionRequest")
	local t = { 
		["AmznClientToken"] = AmznClientToken,
		["InitialVersion"] = InitialVersion,
		["Name"] = Name,
	}
	M.AssertCreateSubscriptionDefinitionRequest(t)
	return t
end

local ListCoreDefinitionVersionsResponse_keys = { "NextToken" = true, "Versions" = true, nil }

function M.AssertListCoreDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCoreDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then M.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListCoreDefinitionVersionsResponse_keys[k], "ListCoreDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCoreDefinitionVersionsResponse
--  
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Versions [ListOfVersionInformation] Versions
function M.ListCoreDefinitionVersionsResponse(NextToken, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCoreDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Versions"] = Versions,
	}
	M.AssertListCoreDefinitionVersionsResponse(t)
	return t
end

local ListLoggerDefinitionsResponse_keys = { "Definitions" = true, "NextToken" = true, nil }

function M.AssertListLoggerDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggerDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then M.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListLoggerDefinitionsResponse_keys[k], "ListLoggerDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggerDefinitionsResponse
--  
-- @param Definitions [ListOfDefinitionInformation] Definitions
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListLoggerDefinitionsResponse(Definitions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLoggerDefinitionsResponse")
	local t = { 
		["Definitions"] = Definitions,
		["NextToken"] = NextToken,
	}
	M.AssertListLoggerDefinitionsResponse(t)
	return t
end

local GetLoggerDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetLoggerDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggerDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetLoggerDefinitionResponse_keys[k], "GetLoggerDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggerDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.GetLoggerDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggerDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetLoggerDefinitionResponse(t)
	return t
end

local GetGroupVersionResponse_keys = { "Definition" = true, "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetGroupVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupVersionResponse to be of type 'table'")
	if struct["Definition"] then M.AssertGroupVersion(struct["Definition"]) end
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupVersionResponse_keys[k], "GetGroupVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupVersionResponse
--  
-- @param Definition [GroupVersion] Information on the definition
-- @param Version [__string] Unique Id for a version of the Group.
-- @param CreationTimestamp [__string] Timestamp when the group version was created.
-- @param Id [__string] Id of the group version.
-- @param Arn [__string] Arn of the group version.
function M.GetGroupVersionResponse(Definition, Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupVersionResponse")
	local t = { 
		["Definition"] = Definition,
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetGroupVersionResponse(t)
	return t
end

local CreateGroupRequest_keys = { "AmznClientToken" = true, "InitialVersion" = true, "Name" = true, nil }

function M.AssertCreateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupRequest to be of type 'table'")
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then M.AssertGroupVersion(struct["InitialVersion"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupRequest_keys[k], "CreateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupRequest
--  
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param InitialVersion [GroupVersion] Information on the initial version
-- @param Name [__string] name of the group
function M.CreateGroupRequest(AmznClientToken, InitialVersion, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupRequest")
	local t = { 
		["AmznClientToken"] = AmznClientToken,
		["InitialVersion"] = InitialVersion,
		["Name"] = Name,
	}
	M.AssertCreateGroupRequest(t)
	return t
end

local GetGroupRequest_keys = { "GroupId" = true, nil }

function M.AssertGetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupRequest_keys[k], "GetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupRequest
--  
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.GetGroupRequest(GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupRequest")
	local t = { 
		["GroupId"] = GroupId,
	}
	M.AssertGetGroupRequest(t)
	return t
end

local UpdateSubscriptionDefinitionResponse_keys = { nil }

function M.AssertUpdateSubscriptionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriptionDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateSubscriptionDefinitionResponse_keys[k], "UpdateSubscriptionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriptionDefinitionResponse
--  
function M.UpdateSubscriptionDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubscriptionDefinitionResponse")
	local t = { 
	}
	M.AssertUpdateSubscriptionDefinitionResponse(t)
	return t
end

local AssociateServiceRoleToAccountResponse_keys = { "AssociatedAt" = true, nil }

function M.AssertAssociateServiceRoleToAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateServiceRoleToAccountResponse to be of type 'table'")
	if struct["AssociatedAt"] then M.Assert__string(struct["AssociatedAt"]) end
	for k,_ in pairs(struct) do
		assert(AssociateServiceRoleToAccountResponse_keys[k], "AssociateServiceRoleToAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateServiceRoleToAccountResponse
--  
-- @param AssociatedAt [__string] Time when the service role was associated to the account.
function M.AssociateServiceRoleToAccountResponse(AssociatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateServiceRoleToAccountResponse")
	local t = { 
		["AssociatedAt"] = AssociatedAt,
	}
	M.AssertAssociateServiceRoleToAccountResponse(t)
	return t
end

local CreateLoggerDefinitionVersionRequest_keys = { "Loggers" = true, "LoggerDefinitionId" = true, "AmznClientToken" = true, nil }

function M.AssertCreateLoggerDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoggerDefinitionVersionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["Loggers"] then M.AssertListOfLogger(struct["Loggers"]) end
	if struct["LoggerDefinitionId"] then M.Assert__string(struct["LoggerDefinitionId"]) end
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateLoggerDefinitionVersionRequest_keys[k], "CreateLoggerDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoggerDefinitionVersionRequest
--  
-- @param Loggers [ListOfLogger] List of loggers.
-- @param LoggerDefinitionId [__string] logger definition Id
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- Required parameter: LoggerDefinitionId
function M.CreateLoggerDefinitionVersionRequest(Loggers, LoggerDefinitionId, AmznClientToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoggerDefinitionVersionRequest")
	local t = { 
		["Loggers"] = Loggers,
		["LoggerDefinitionId"] = LoggerDefinitionId,
		["AmznClientToken"] = AmznClientToken,
	}
	M.AssertCreateLoggerDefinitionVersionRequest(t)
	return t
end

local DeleteLoggerDefinitionRequest_keys = { "LoggerDefinitionId" = true, nil }

function M.AssertDeleteLoggerDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoggerDefinitionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then M.Assert__string(struct["LoggerDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLoggerDefinitionRequest_keys[k], "DeleteLoggerDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoggerDefinitionRequest
--  
-- @param LoggerDefinitionId [__string] logger definition Id
-- Required parameter: LoggerDefinitionId
function M.DeleteLoggerDefinitionRequest(LoggerDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLoggerDefinitionRequest")
	local t = { 
		["LoggerDefinitionId"] = LoggerDefinitionId,
	}
	M.AssertDeleteLoggerDefinitionRequest(t)
	return t
end

local ListGroupVersionsRequest_keys = { "NextToken" = true, "GroupId" = true, "MaxResults" = true, nil }

function M.AssertListGroupVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupVersionsRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupVersionsRequest_keys[k], "ListGroupVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupVersionsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: GroupId
function M.ListGroupVersionsRequest(NextToken, GroupId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupVersionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["GroupId"] = GroupId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListGroupVersionsRequest(t)
	return t
end

local GetGroupCertificateAuthorityResponse_keys = { "PemEncodedCertificate" = true, "GroupCertificateAuthorityId" = true, "GroupCertificateAuthorityArn" = true, nil }

function M.AssertGetGroupCertificateAuthorityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupCertificateAuthorityResponse to be of type 'table'")
	if struct["PemEncodedCertificate"] then M.Assert__string(struct["PemEncodedCertificate"]) end
	if struct["GroupCertificateAuthorityId"] then M.Assert__string(struct["GroupCertificateAuthorityId"]) end
	if struct["GroupCertificateAuthorityArn"] then M.Assert__string(struct["GroupCertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupCertificateAuthorityResponse_keys[k], "GetGroupCertificateAuthorityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupCertificateAuthorityResponse
--  
-- @param PemEncodedCertificate [__string] PEM encoded certificate for the group.
-- @param GroupCertificateAuthorityId [__string] Id of the certificate authority for the group.
-- @param GroupCertificateAuthorityArn [__string] Arn of the certificate authority for the group.
function M.GetGroupCertificateAuthorityResponse(PemEncodedCertificate, GroupCertificateAuthorityId, GroupCertificateAuthorityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupCertificateAuthorityResponse")
	local t = { 
		["PemEncodedCertificate"] = PemEncodedCertificate,
		["GroupCertificateAuthorityId"] = GroupCertificateAuthorityId,
		["GroupCertificateAuthorityArn"] = GroupCertificateAuthorityArn,
	}
	M.AssertGetGroupCertificateAuthorityResponse(t)
	return t
end

local CreateDeviceDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateDeviceDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeviceDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeviceDefinitionResponse_keys[k], "CreateDeviceDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeviceDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.CreateDeviceDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeviceDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateDeviceDefinitionResponse(t)
	return t
end

local DeleteFunctionDefinitionResponse_keys = { nil }

function M.AssertDeleteFunctionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFunctionDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteFunctionDefinitionResponse_keys[k], "DeleteFunctionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFunctionDefinitionResponse
--  
function M.DeleteFunctionDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFunctionDefinitionResponse")
	local t = { 
	}
	M.AssertDeleteFunctionDefinitionResponse(t)
	return t
end

local CreateCoreDefinitionRequest_keys = { "AmznClientToken" = true, "InitialVersion" = true, "Name" = true, nil }

function M.AssertCreateCoreDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCoreDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then M.AssertCoreDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateCoreDefinitionRequest_keys[k], "CreateCoreDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCoreDefinitionRequest
-- Information on the core definition request
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param InitialVersion [CoreDefinitionVersion] Information on the initial version
-- @param Name [__string] name of the core definition
function M.CreateCoreDefinitionRequest(AmznClientToken, InitialVersion, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCoreDefinitionRequest")
	local t = { 
		["AmznClientToken"] = AmznClientToken,
		["InitialVersion"] = InitialVersion,
		["Name"] = Name,
	}
	M.AssertCreateCoreDefinitionRequest(t)
	return t
end

local DisassociateServiceRoleFromAccountResponse_keys = { "DisassociatedAt" = true, nil }

function M.AssertDisassociateServiceRoleFromAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateServiceRoleFromAccountResponse to be of type 'table'")
	if struct["DisassociatedAt"] then M.Assert__string(struct["DisassociatedAt"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateServiceRoleFromAccountResponse_keys[k], "DisassociateServiceRoleFromAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateServiceRoleFromAccountResponse
--  
-- @param DisassociatedAt [__string] Time when the service role was disassociated from the account.
function M.DisassociateServiceRoleFromAccountResponse(DisassociatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateServiceRoleFromAccountResponse")
	local t = { 
		["DisassociatedAt"] = DisassociatedAt,
	}
	M.AssertDisassociateServiceRoleFromAccountResponse(t)
	return t
end

local DeviceDefinitionVersion_keys = { "Devices" = true, nil }

function M.AssertDeviceDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceDefinitionVersion to be of type 'table'")
	if struct["Devices"] then M.AssertListOfDevice(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(DeviceDefinitionVersion_keys[k], "DeviceDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceDefinitionVersion
-- Information on device definition version
-- @param Devices [ListOfDevice] Devices in the definition version.
function M.DeviceDefinitionVersion(Devices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeviceDefinitionVersion")
	local t = { 
		["Devices"] = Devices,
	}
	M.AssertDeviceDefinitionVersion(t)
	return t
end

local ListFunctionDefinitionVersionsRequest_keys = { "FunctionDefinitionId" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListFunctionDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionDefinitionVersionsRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then M.Assert__string(struct["FunctionDefinitionId"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListFunctionDefinitionVersionsRequest_keys[k], "ListFunctionDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionDefinitionVersionsRequest
--  
-- @param FunctionDefinitionId [__string] the unique Id of the lambda definition
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: FunctionDefinitionId
function M.ListFunctionDefinitionVersionsRequest(FunctionDefinitionId, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionDefinitionVersionsRequest")
	local t = { 
		["FunctionDefinitionId"] = FunctionDefinitionId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListFunctionDefinitionVersionsRequest(t)
	return t
end

local DisassociateRoleFromGroupResponse_keys = { "DisassociatedAt" = true, nil }

function M.AssertDisassociateRoleFromGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateRoleFromGroupResponse to be of type 'table'")
	if struct["DisassociatedAt"] then M.Assert__string(struct["DisassociatedAt"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateRoleFromGroupResponse_keys[k], "DisassociateRoleFromGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateRoleFromGroupResponse
--  
-- @param DisassociatedAt [__string] Time when the role was disassociated from the group.
function M.DisassociateRoleFromGroupResponse(DisassociatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateRoleFromGroupResponse")
	local t = { 
		["DisassociatedAt"] = DisassociatedAt,
	}
	M.AssertDisassociateRoleFromGroupResponse(t)
	return t
end

local LoggerDefinitionVersion_keys = { "Loggers" = true, nil }

function M.AssertLoggerDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggerDefinitionVersion to be of type 'table'")
	if struct["Loggers"] then M.AssertListOfLogger(struct["Loggers"]) end
	for k,_ in pairs(struct) do
		assert(LoggerDefinitionVersion_keys[k], "LoggerDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggerDefinitionVersion
-- Information on logger definition version
-- @param Loggers [ListOfLogger] List of loggers.
function M.LoggerDefinitionVersion(Loggers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggerDefinitionVersion")
	local t = { 
		["Loggers"] = Loggers,
	}
	M.AssertLoggerDefinitionVersion(t)
	return t
end

local CreateFunctionDefinitionVersionRequest_keys = { "FunctionDefinitionId" = true, "Functions" = true, "AmznClientToken" = true, nil }

function M.AssertCreateFunctionDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionDefinitionVersionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then M.Assert__string(struct["FunctionDefinitionId"]) end
	if struct["Functions"] then M.AssertListOfFunction(struct["Functions"]) end
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	for k,_ in pairs(struct) do
		assert(CreateFunctionDefinitionVersionRequest_keys[k], "CreateFunctionDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionDefinitionVersionRequest
-- Function definition version
-- @param FunctionDefinitionId [__string] the unique Id of the lambda definition
-- @param Functions [ListOfFunction] Lambda functions in this function definition version.
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- Required parameter: FunctionDefinitionId
function M.CreateFunctionDefinitionVersionRequest(FunctionDefinitionId, Functions, AmznClientToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionDefinitionVersionRequest")
	local t = { 
		["FunctionDefinitionId"] = FunctionDefinitionId,
		["Functions"] = Functions,
		["AmznClientToken"] = AmznClientToken,
	}
	M.AssertCreateFunctionDefinitionVersionRequest(t)
	return t
end

local DeleteDeviceDefinitionResponse_keys = { nil }

function M.AssertDeleteDeviceDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeviceDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteDeviceDefinitionResponse_keys[k], "DeleteDeviceDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeviceDefinitionResponse
--  
function M.DeleteDeviceDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeviceDefinitionResponse")
	local t = { 
	}
	M.AssertDeleteDeviceDefinitionResponse(t)
	return t
end

local CreateDeviceDefinitionVersionResponse_keys = { "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateDeviceDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeviceDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeviceDefinitionVersionResponse_keys[k], "CreateDeviceDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeviceDefinitionVersionResponse
--  
-- @param Version [__string] Unique Id of a version.
-- @param CreationTimestamp [__string] Timestamp of when the version was created.
-- @param Id [__string] Id of the resource container.
-- @param Arn [__string] Arn of the version.
function M.CreateDeviceDefinitionVersionResponse(Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeviceDefinitionVersionResponse")
	local t = { 
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateDeviceDefinitionVersionResponse(t)
	return t
end

local ListLoggerDefinitionVersionsRequest_keys = { "LoggerDefinitionId" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListLoggerDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggerDefinitionVersionsRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then M.Assert__string(struct["LoggerDefinitionId"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListLoggerDefinitionVersionsRequest_keys[k], "ListLoggerDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggerDefinitionVersionsRequest
--  
-- @param LoggerDefinitionId [__string] logger definition Id
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: LoggerDefinitionId
function M.ListLoggerDefinitionVersionsRequest(LoggerDefinitionId, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLoggerDefinitionVersionsRequest")
	local t = { 
		["LoggerDefinitionId"] = LoggerDefinitionId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListLoggerDefinitionVersionsRequest(t)
	return t
end

local DefinitionInformation_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertDefinitionInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefinitionInformation to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(DefinitionInformation_keys[k], "DefinitionInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefinitionInformation
-- Information on the Definition
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.DefinitionInformation(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefinitionInformation")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertDefinitionInformation(t)
	return t
end

local GeneralError_keys = { "ErrorDetails" = true, "Message" = true, nil }

function M.AssertGeneralError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeneralError to be of type 'table'")
	if struct["ErrorDetails"] then M.AssertErrorDetails(struct["ErrorDetails"]) end
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(GeneralError_keys[k], "GeneralError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeneralError
-- General Error
-- @param ErrorDetails [ErrorDetails] Error Details
-- @param Message [__string] Message
function M.GeneralError(ErrorDetails, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GeneralError")
	local t = { 
		["ErrorDetails"] = ErrorDetails,
		["Message"] = Message,
	}
	M.AssertGeneralError(t)
	return t
end

local GetCoreDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetCoreDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCoreDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetCoreDefinitionResponse_keys[k], "GetCoreDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCoreDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.GetCoreDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCoreDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetCoreDefinitionResponse(t)
	return t
end

local GetSubscriptionDefinitionRequest_keys = { "SubscriptionDefinitionId" = true, nil }

function M.AssertGetSubscriptionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionDefinitionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then M.Assert__string(struct["SubscriptionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(GetSubscriptionDefinitionRequest_keys[k], "GetSubscriptionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionDefinitionRequest
--  
-- @param SubscriptionDefinitionId [__string] subscription definition Id
-- Required parameter: SubscriptionDefinitionId
function M.GetSubscriptionDefinitionRequest(SubscriptionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionDefinitionRequest")
	local t = { 
		["SubscriptionDefinitionId"] = SubscriptionDefinitionId,
	}
	M.AssertGetSubscriptionDefinitionRequest(t)
	return t
end

local UpdateFunctionDefinitionResponse_keys = { nil }

function M.AssertUpdateFunctionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateFunctionDefinitionResponse_keys[k], "UpdateFunctionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionDefinitionResponse
--  
function M.UpdateFunctionDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFunctionDefinitionResponse")
	local t = { 
	}
	M.AssertUpdateFunctionDefinitionResponse(t)
	return t
end

local UpdateSubscriptionDefinitionRequest_keys = { "SubscriptionDefinitionId" = true, "Name" = true, nil }

function M.AssertUpdateSubscriptionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriptionDefinitionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then M.Assert__string(struct["SubscriptionDefinitionId"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSubscriptionDefinitionRequest_keys[k], "UpdateSubscriptionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriptionDefinitionRequest
--  
-- @param SubscriptionDefinitionId [__string] subscription definition Id
-- @param Name [__string] name of the definition
-- Required parameter: SubscriptionDefinitionId
function M.UpdateSubscriptionDefinitionRequest(SubscriptionDefinitionId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubscriptionDefinitionRequest")
	local t = { 
		["SubscriptionDefinitionId"] = SubscriptionDefinitionId,
		["Name"] = Name,
	}
	M.AssertUpdateSubscriptionDefinitionRequest(t)
	return t
end

local CreateDeploymentRequest_keys = { "DeploymentId" = true, "DeploymentType" = true, "AmznClientToken" = true, "GroupVersionId" = true, "GroupId" = true, nil }

function M.AssertCreateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["DeploymentId"] then M.Assert__string(struct["DeploymentId"]) end
	if struct["DeploymentType"] then M.AssertDeploymentType(struct["DeploymentType"]) end
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["GroupVersionId"] then M.Assert__string(struct["GroupVersionId"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentRequest_keys[k], "CreateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentRequest
--  
-- @param DeploymentId [__string] Id of the deployment if you wish to redeploy a previous deployment.
-- @param DeploymentType [DeploymentType] Type of deployment
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param GroupVersionId [__string] Group Version you wish to deploy.
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.CreateDeploymentRequest(DeploymentId, DeploymentType, AmznClientToken, GroupVersionId, GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentRequest")
	local t = { 
		["DeploymentId"] = DeploymentId,
		["DeploymentType"] = DeploymentType,
		["AmznClientToken"] = AmznClientToken,
		["GroupVersionId"] = GroupVersionId,
		["GroupId"] = GroupId,
	}
	M.AssertCreateDeploymentRequest(t)
	return t
end

local GetConnectivityInfoResponse_keys = { "ConnectivityInfo" = true, "Message" = true, nil }

function M.AssertGetConnectivityInfoResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectivityInfoResponse to be of type 'table'")
	if struct["ConnectivityInfo"] then M.AssertListOfConnectivityInfo(struct["ConnectivityInfo"]) end
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(GetConnectivityInfoResponse_keys[k], "GetConnectivityInfoResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectivityInfoResponse
--  
-- @param ConnectivityInfo [ListOfConnectivityInfo] Connectivity info array
-- @param Message [__string] Response Text
function M.GetConnectivityInfoResponse(ConnectivityInfo, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConnectivityInfoResponse")
	local t = { 
		["ConnectivityInfo"] = ConnectivityInfo,
		["Message"] = Message,
	}
	M.AssertGetConnectivityInfoResponse(t)
	return t
end

local ListCoreDefinitionVersionsRequest_keys = { "NextToken" = true, "CoreDefinitionId" = true, "MaxResults" = true, nil }

function M.AssertListCoreDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCoreDefinitionVersionsRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["CoreDefinitionId"] then M.Assert__string(struct["CoreDefinitionId"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListCoreDefinitionVersionsRequest_keys[k], "ListCoreDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCoreDefinitionVersionsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param CoreDefinitionId [__string] core definition Id
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: CoreDefinitionId
function M.ListCoreDefinitionVersionsRequest(NextToken, CoreDefinitionId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCoreDefinitionVersionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["CoreDefinitionId"] = CoreDefinitionId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListCoreDefinitionVersionsRequest(t)
	return t
end

local DeleteDeviceDefinitionRequest_keys = { "DeviceDefinitionId" = true, nil }

function M.AssertDeleteDeviceDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeviceDefinitionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then M.Assert__string(struct["DeviceDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDeviceDefinitionRequest_keys[k], "DeleteDeviceDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeviceDefinitionRequest
--  
-- @param DeviceDefinitionId [__string] device definition Id
-- Required parameter: DeviceDefinitionId
function M.DeleteDeviceDefinitionRequest(DeviceDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeviceDefinitionRequest")
	local t = { 
		["DeviceDefinitionId"] = DeviceDefinitionId,
	}
	M.AssertDeleteDeviceDefinitionRequest(t)
	return t
end

local UpdateCoreDefinitionResponse_keys = { nil }

function M.AssertUpdateCoreDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCoreDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateCoreDefinitionResponse_keys[k], "UpdateCoreDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCoreDefinitionResponse
--  
function M.UpdateCoreDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCoreDefinitionResponse")
	local t = { 
	}
	M.AssertUpdateCoreDefinitionResponse(t)
	return t
end

local UpdateLoggerDefinitionResponse_keys = { nil }

function M.AssertUpdateLoggerDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLoggerDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateLoggerDefinitionResponse_keys[k], "UpdateLoggerDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLoggerDefinitionResponse
--  
function M.UpdateLoggerDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLoggerDefinitionResponse")
	local t = { 
	}
	M.AssertUpdateLoggerDefinitionResponse(t)
	return t
end

local FunctionDefinitionVersion_keys = { "Functions" = true, nil }

function M.AssertFunctionDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionDefinitionVersion to be of type 'table'")
	if struct["Functions"] then M.AssertListOfFunction(struct["Functions"]) end
	for k,_ in pairs(struct) do
		assert(FunctionDefinitionVersion_keys[k], "FunctionDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionDefinitionVersion
-- Information on the function definition version
-- @param Functions [ListOfFunction] Lambda functions in this function definition version.
function M.FunctionDefinitionVersion(Functions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionDefinitionVersion")
	local t = { 
		["Functions"] = Functions,
	}
	M.AssertFunctionDefinitionVersion(t)
	return t
end

local CreateSubscriptionDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateSubscriptionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateSubscriptionDefinitionResponse_keys[k], "CreateSubscriptionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.CreateSubscriptionDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateSubscriptionDefinitionResponse(t)
	return t
end

local GetDeviceDefinitionRequest_keys = { "DeviceDefinitionId" = true, nil }

function M.AssertGetDeviceDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceDefinitionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then M.Assert__string(struct["DeviceDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(GetDeviceDefinitionRequest_keys[k], "GetDeviceDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceDefinitionRequest
--  
-- @param DeviceDefinitionId [__string] device definition Id
-- Required parameter: DeviceDefinitionId
function M.GetDeviceDefinitionRequest(DeviceDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceDefinitionRequest")
	local t = { 
		["DeviceDefinitionId"] = DeviceDefinitionId,
	}
	M.AssertGetDeviceDefinitionRequest(t)
	return t
end

local SubscriptionDefinitionVersion_keys = { "Subscriptions" = true, nil }

function M.AssertSubscriptionDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionDefinitionVersion to be of type 'table'")
	if struct["Subscriptions"] then M.AssertListOfSubscription(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(SubscriptionDefinitionVersion_keys[k], "SubscriptionDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionDefinitionVersion
-- Information on subscription definition version
-- @param Subscriptions [ListOfSubscription] Subscriptions in the version.
function M.SubscriptionDefinitionVersion(Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionDefinitionVersion")
	local t = { 
		["Subscriptions"] = Subscriptions,
	}
	M.AssertSubscriptionDefinitionVersion(t)
	return t
end

local CoreDefinitionVersion_keys = { "Cores" = true, nil }

function M.AssertCoreDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CoreDefinitionVersion to be of type 'table'")
	if struct["Cores"] then M.AssertListOfCore(struct["Cores"]) end
	for k,_ in pairs(struct) do
		assert(CoreDefinitionVersion_keys[k], "CoreDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CoreDefinitionVersion
-- Information on core definition version
-- @param Cores [ListOfCore] Cores in the definition version.
function M.CoreDefinitionVersion(Cores, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CoreDefinitionVersion")
	local t = { 
		["Cores"] = Cores,
	}
	M.AssertCoreDefinitionVersion(t)
	return t
end

local GetDeploymentStatusResponse_keys = { "UpdatedAt" = true, "DeploymentStatus" = true, "ErrorMessage" = true, nil }

function M.AssertGetDeploymentStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentStatusResponse to be of type 'table'")
	if struct["UpdatedAt"] then M.Assert__string(struct["UpdatedAt"]) end
	if struct["DeploymentStatus"] then M.Assert__string(struct["DeploymentStatus"]) end
	if struct["ErrorMessage"] then M.Assert__string(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentStatusResponse_keys[k], "GetDeploymentStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentStatusResponse
--  
-- @param UpdatedAt [__string] Last time the deployment status was updated.
-- @param DeploymentStatus [__string] Status of the deployment.
-- @param ErrorMessage [__string] Error Message
function M.GetDeploymentStatusResponse(UpdatedAt, DeploymentStatus, ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentStatusResponse")
	local t = { 
		["UpdatedAt"] = UpdatedAt,
		["DeploymentStatus"] = DeploymentStatus,
		["ErrorMessage"] = ErrorMessage,
	}
	M.AssertGetDeploymentStatusResponse(t)
	return t
end

local GetAssociatedRoleResponse_keys = { "AssociatedAt" = true, "RoleArn" = true, nil }

function M.AssertGetAssociatedRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssociatedRoleResponse to be of type 'table'")
	if struct["AssociatedAt"] then M.Assert__string(struct["AssociatedAt"]) end
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(GetAssociatedRoleResponse_keys[k], "GetAssociatedRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssociatedRoleResponse
--  
-- @param AssociatedAt [__string] Time when the role was associated for the group.
-- @param RoleArn [__string] Arn of the role that is associated with the group.
function M.GetAssociatedRoleResponse(AssociatedAt, RoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssociatedRoleResponse")
	local t = { 
		["AssociatedAt"] = AssociatedAt,
		["RoleArn"] = RoleArn,
	}
	M.AssertGetAssociatedRoleResponse(t)
	return t
end

local DeleteGroupRequest_keys = { "GroupId" = true, nil }

function M.AssertDeleteGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGroupRequest_keys[k], "DeleteGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupRequest
--  
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.DeleteGroupRequest(GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupRequest")
	local t = { 
		["GroupId"] = GroupId,
	}
	M.AssertDeleteGroupRequest(t)
	return t
end

local DeleteSubscriptionDefinitionResponse_keys = { nil }

function M.AssertDeleteSubscriptionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteSubscriptionDefinitionResponse_keys[k], "DeleteSubscriptionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionDefinitionResponse
--  
function M.DeleteSubscriptionDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionDefinitionResponse")
	local t = { 
	}
	M.AssertDeleteSubscriptionDefinitionResponse(t)
	return t
end

local ListDeploymentsRequest_keys = { "NextToken" = true, "GroupId" = true, "MaxResults" = true, nil }

function M.AssertListDeploymentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentsRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentsRequest_keys[k], "ListDeploymentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: GroupId
function M.ListDeploymentsRequest(NextToken, GroupId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["GroupId"] = GroupId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListDeploymentsRequest(t)
	return t
end

local ListGroupsResponse_keys = { "NextToken" = true, "Groups" = true, nil }

function M.AssertListGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Groups"] then M.AssertListOfGroupInformation(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupsResponse_keys[k], "ListGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsResponse
--  
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Groups [ListOfGroupInformation] Groups
function M.ListGroupsResponse(NextToken, Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Groups"] = Groups,
	}
	M.AssertListGroupsResponse(t)
	return t
end

local UpdateGroupRequest_keys = { "GroupId" = true, "Name" = true, nil }

function M.AssertUpdateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGroupRequest_keys[k], "UpdateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupRequest
--  
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- @param Name [__string] name of the definition
-- Required parameter: GroupId
function M.UpdateGroupRequest(GroupId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupRequest")
	local t = { 
		["GroupId"] = GroupId,
		["Name"] = Name,
	}
	M.AssertUpdateGroupRequest(t)
	return t
end

local ConnectivityInfo_keys = { "Metadata" = true, "PortNumber" = true, "HostAddress" = true, "Id" = true, nil }

function M.AssertConnectivityInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectivityInfo to be of type 'table'")
	if struct["Metadata"] then M.Assert__string(struct["Metadata"]) end
	if struct["PortNumber"] then M.Assert__integer(struct["PortNumber"]) end
	if struct["HostAddress"] then M.Assert__string(struct["HostAddress"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ConnectivityInfo_keys[k], "ConnectivityInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectivityInfo
-- Connectivity Info
-- @param Metadata [__string] Metadata for this endpoint.
-- @param PortNumber [__integer] Port of the GGC. Usually 8883.
-- @param HostAddress [__string] Endpoint for the GGC. Can be an IP address or DNS.
-- @param Id [__string] Element Id for this entry in the list.
function M.ConnectivityInfo(Metadata, PortNumber, HostAddress, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConnectivityInfo")
	local t = { 
		["Metadata"] = Metadata,
		["PortNumber"] = PortNumber,
		["HostAddress"] = HostAddress,
		["Id"] = Id,
	}
	M.AssertConnectivityInfo(t)
	return t
end

local ErrorDetail_keys = { "DetailedErrorCode" = true, "DetailedErrorMessage" = true, nil }

function M.AssertErrorDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorDetail to be of type 'table'")
	if struct["DetailedErrorCode"] then M.Assert__string(struct["DetailedErrorCode"]) end
	if struct["DetailedErrorMessage"] then M.Assert__string(struct["DetailedErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(ErrorDetail_keys[k], "ErrorDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorDetail
-- ErrorDetail
-- @param DetailedErrorCode [__string] Detailed Error Code
-- @param DetailedErrorMessage [__string] Detailed Error Message
function M.ErrorDetail(DetailedErrorCode, DetailedErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ErrorDetail")
	local t = { 
		["DetailedErrorCode"] = DetailedErrorCode,
		["DetailedErrorMessage"] = DetailedErrorMessage,
	}
	M.AssertErrorDetail(t)
	return t
end

local DeleteCoreDefinitionRequest_keys = { "CoreDefinitionId" = true, nil }

function M.AssertDeleteCoreDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCoreDefinitionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["CoreDefinitionId"] then M.Assert__string(struct["CoreDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCoreDefinitionRequest_keys[k], "DeleteCoreDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCoreDefinitionRequest
--  
-- @param CoreDefinitionId [__string] core definition Id
-- Required parameter: CoreDefinitionId
function M.DeleteCoreDefinitionRequest(CoreDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCoreDefinitionRequest")
	local t = { 
		["CoreDefinitionId"] = CoreDefinitionId,
	}
	M.AssertDeleteCoreDefinitionRequest(t)
	return t
end

local GetDeviceDefinitionVersionResponse_keys = { "Definition" = true, "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetDeviceDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then M.AssertDeviceDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetDeviceDefinitionVersionResponse_keys[k], "GetDeviceDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceDefinitionVersionResponse
--  
-- @param Definition [DeviceDefinitionVersion] Device definition version
-- @param Version [__string] Version of the device definition version.
-- @param CreationTimestamp [__string] Timestamp of when the device definition version was created.
-- @param Id [__string] Id of the device definition the version belongs to.
-- @param Arn [__string] Arn of the device definition version.
function M.GetDeviceDefinitionVersionResponse(Definition, Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceDefinitionVersionResponse")
	local t = { 
		["Definition"] = Definition,
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetDeviceDefinitionVersionResponse(t)
	return t
end

local GroupInformation_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGroupInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupInformation to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GroupInformation_keys[k], "GroupInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupInformation
-- Information of a group
-- @param LatestVersionArn [__string] Latest version arn of the group.
-- @param Name [__string] Name of a group.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the group.
-- @param LatestVersion [__string] Last version of the group.
-- @param CreationTimestamp [__string] Timestamp of when the group was created.
-- @param Id [__string] Id of a group.
-- @param Arn [__string] Arn of a group.
function M.GroupInformation(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupInformation")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGroupInformation(t)
	return t
end

local CreateGroupCertificateAuthorityRequest_keys = { "AmznClientToken" = true, "GroupId" = true, nil }

function M.AssertCreateGroupCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupCertificateAuthorityRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupCertificateAuthorityRequest_keys[k], "CreateGroupCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupCertificateAuthorityRequest
--  
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.CreateGroupCertificateAuthorityRequest(AmznClientToken, GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupCertificateAuthorityRequest")
	local t = { 
		["AmznClientToken"] = AmznClientToken,
		["GroupId"] = GroupId,
	}
	M.AssertCreateGroupCertificateAuthorityRequest(t)
	return t
end

local Subscription_keys = { "Source" = true, "Target" = true, "Id" = true, "Subject" = true, nil }

function M.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["Source"] then M.Assert__string(struct["Source"]) end
	if struct["Target"] then M.Assert__string(struct["Target"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Subject"] then M.Assert__string(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(Subscription_keys[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- Information on subscription
-- @param Source [__string] Source of the subscription. Can be a thing arn, lambda arn or word 'cloud'
-- @param Target [__string] Where the message is sent to. Can be a thing arn, lambda arn or word 'cloud'.
-- @param Id [__string] Element Id for this entry in the list.
-- @param Subject [__string] Subject of the message.
function M.Subscription(Source, Target, Id, Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["Source"] = Source,
		["Target"] = Target,
		["Id"] = Id,
		["Subject"] = Subject,
	}
	M.AssertSubscription(t)
	return t
end

local GetSubscriptionDefinitionVersionResponse_keys = { "Definition" = true, "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetSubscriptionDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then M.AssertSubscriptionDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetSubscriptionDefinitionVersionResponse_keys[k], "GetSubscriptionDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionDefinitionVersionResponse
--  
-- @param Definition [SubscriptionDefinitionVersion] Information on the definition
-- @param Version [__string] Version of the subscription definition version.
-- @param CreationTimestamp [__string] Timestamp of when the subscription definition version was created.
-- @param Id [__string] Id of the subscription definition the version belongs to.
-- @param Arn [__string] Arn of the subscription definition version.
function M.GetSubscriptionDefinitionVersionResponse(Definition, Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionDefinitionVersionResponse")
	local t = { 
		["Definition"] = Definition,
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetSubscriptionDefinitionVersionResponse(t)
	return t
end

local GetCoreDefinitionVersionRequest_keys = { "CoreDefinitionId" = true, "CoreDefinitionVersionId" = true, nil }

function M.AssertGetCoreDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCoreDefinitionVersionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	assert(struct["CoreDefinitionVersionId"], "Expected key CoreDefinitionVersionId to exist in table")
	if struct["CoreDefinitionId"] then M.Assert__string(struct["CoreDefinitionId"]) end
	if struct["CoreDefinitionVersionId"] then M.Assert__string(struct["CoreDefinitionVersionId"]) end
	for k,_ in pairs(struct) do
		assert(GetCoreDefinitionVersionRequest_keys[k], "GetCoreDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCoreDefinitionVersionRequest
--  
-- @param CoreDefinitionId [__string] core definition Id
-- @param CoreDefinitionVersionId [__string] core definition version Id
-- Required parameter: CoreDefinitionId
-- Required parameter: CoreDefinitionVersionId
function M.GetCoreDefinitionVersionRequest(CoreDefinitionId, CoreDefinitionVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCoreDefinitionVersionRequest")
	local t = { 
		["CoreDefinitionId"] = CoreDefinitionId,
		["CoreDefinitionVersionId"] = CoreDefinitionVersionId,
	}
	M.AssertGetCoreDefinitionVersionRequest(t)
	return t
end

local DisassociateServiceRoleFromAccountRequest_keys = { nil }

function M.AssertDisassociateServiceRoleFromAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateServiceRoleFromAccountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DisassociateServiceRoleFromAccountRequest_keys[k], "DisassociateServiceRoleFromAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateServiceRoleFromAccountRequest
--  
function M.DisassociateServiceRoleFromAccountRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateServiceRoleFromAccountRequest")
	local t = { 
	}
	M.AssertDisassociateServiceRoleFromAccountRequest(t)
	return t
end

local GetSubscriptionDefinitionVersionRequest_keys = { "SubscriptionDefinitionVersionId" = true, "SubscriptionDefinitionId" = true, nil }

function M.AssertGetSubscriptionDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionDefinitionVersionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	assert(struct["SubscriptionDefinitionVersionId"], "Expected key SubscriptionDefinitionVersionId to exist in table")
	if struct["SubscriptionDefinitionVersionId"] then M.Assert__string(struct["SubscriptionDefinitionVersionId"]) end
	if struct["SubscriptionDefinitionId"] then M.Assert__string(struct["SubscriptionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(GetSubscriptionDefinitionVersionRequest_keys[k], "GetSubscriptionDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionDefinitionVersionRequest
--  
-- @param SubscriptionDefinitionVersionId [__string] subscription definition version Id
-- @param SubscriptionDefinitionId [__string] subscription definition Id
-- Required parameter: SubscriptionDefinitionId
-- Required parameter: SubscriptionDefinitionVersionId
function M.GetSubscriptionDefinitionVersionRequest(SubscriptionDefinitionVersionId, SubscriptionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionDefinitionVersionRequest")
	local t = { 
		["SubscriptionDefinitionVersionId"] = SubscriptionDefinitionVersionId,
		["SubscriptionDefinitionId"] = SubscriptionDefinitionId,
	}
	M.AssertGetSubscriptionDefinitionVersionRequest(t)
	return t
end

local ListFunctionDefinitionVersionsResponse_keys = { "NextToken" = true, "Versions" = true, nil }

function M.AssertListFunctionDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then M.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListFunctionDefinitionVersionsResponse_keys[k], "ListFunctionDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionDefinitionVersionsResponse
--  
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Versions [ListOfVersionInformation] Versions
function M.ListFunctionDefinitionVersionsResponse(NextToken, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Versions"] = Versions,
	}
	M.AssertListFunctionDefinitionVersionsResponse(t)
	return t
end

local CreateDeploymentResponse_keys = { "DeploymentId" = true, "DeploymentArn" = true, nil }

function M.AssertCreateDeploymentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentResponse to be of type 'table'")
	if struct["DeploymentId"] then M.Assert__string(struct["DeploymentId"]) end
	if struct["DeploymentArn"] then M.Assert__string(struct["DeploymentArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeploymentResponse_keys[k], "CreateDeploymentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentResponse
--  
-- @param DeploymentId [__string] Id of the deployment.
-- @param DeploymentArn [__string] Arn of the deployment.
function M.CreateDeploymentResponse(DeploymentId, DeploymentArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentResponse")
	local t = { 
		["DeploymentId"] = DeploymentId,
		["DeploymentArn"] = DeploymentArn,
	}
	M.AssertCreateDeploymentResponse(t)
	return t
end

local UpdateFunctionDefinitionRequest_keys = { "FunctionDefinitionId" = true, "Name" = true, nil }

function M.AssertUpdateFunctionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionDefinitionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then M.Assert__string(struct["FunctionDefinitionId"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateFunctionDefinitionRequest_keys[k], "UpdateFunctionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionDefinitionRequest
--  
-- @param FunctionDefinitionId [__string] the unique Id of the lambda definition
-- @param Name [__string] name of the definition
-- Required parameter: FunctionDefinitionId
function M.UpdateFunctionDefinitionRequest(FunctionDefinitionId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFunctionDefinitionRequest")
	local t = { 
		["FunctionDefinitionId"] = FunctionDefinitionId,
		["Name"] = Name,
	}
	M.AssertUpdateFunctionDefinitionRequest(t)
	return t
end

local CreateLoggerDefinitionVersionResponse_keys = { "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateLoggerDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoggerDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateLoggerDefinitionVersionResponse_keys[k], "CreateLoggerDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoggerDefinitionVersionResponse
--  
-- @param Version [__string] Unique Id of a version.
-- @param CreationTimestamp [__string] Timestamp of when the version was created.
-- @param Id [__string] Id of the resource container.
-- @param Arn [__string] Arn of the version.
function M.CreateLoggerDefinitionVersionResponse(Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoggerDefinitionVersionResponse")
	local t = { 
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateLoggerDefinitionVersionResponse(t)
	return t
end

local DeleteCoreDefinitionResponse_keys = { nil }

function M.AssertDeleteCoreDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCoreDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteCoreDefinitionResponse_keys[k], "DeleteCoreDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCoreDefinitionResponse
--  
function M.DeleteCoreDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCoreDefinitionResponse")
	local t = { 
	}
	M.AssertDeleteCoreDefinitionResponse(t)
	return t
end

local GetDeviceDefinitionVersionRequest_keys = { "DeviceDefinitionId" = true, "DeviceDefinitionVersionId" = true, nil }

function M.AssertGetDeviceDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceDefinitionVersionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionVersionId"], "Expected key DeviceDefinitionVersionId to exist in table")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then M.Assert__string(struct["DeviceDefinitionId"]) end
	if struct["DeviceDefinitionVersionId"] then M.Assert__string(struct["DeviceDefinitionVersionId"]) end
	for k,_ in pairs(struct) do
		assert(GetDeviceDefinitionVersionRequest_keys[k], "GetDeviceDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceDefinitionVersionRequest
--  
-- @param DeviceDefinitionId [__string] device definition Id
-- @param DeviceDefinitionVersionId [__string] device definition version Id
-- Required parameter: DeviceDefinitionVersionId
-- Required parameter: DeviceDefinitionId
function M.GetDeviceDefinitionVersionRequest(DeviceDefinitionId, DeviceDefinitionVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceDefinitionVersionRequest")
	local t = { 
		["DeviceDefinitionId"] = DeviceDefinitionId,
		["DeviceDefinitionVersionId"] = DeviceDefinitionVersionId,
	}
	M.AssertGetDeviceDefinitionVersionRequest(t)
	return t
end

local ListDefinitionsResponse_keys = { "Definitions" = true, "NextToken" = true, nil }

function M.AssertListDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then M.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDefinitionsResponse_keys[k], "ListDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDefinitionsResponse
-- List of definition response
-- @param Definitions [ListOfDefinitionInformation] Definitions
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListDefinitionsResponse(Definitions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDefinitionsResponse")
	local t = { 
		["Definitions"] = Definitions,
		["NextToken"] = NextToken,
	}
	M.AssertListDefinitionsResponse(t)
	return t
end

local CreateCoreDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateCoreDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCoreDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateCoreDefinitionResponse_keys[k], "CreateCoreDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCoreDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.CreateCoreDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCoreDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateCoreDefinitionResponse(t)
	return t
end

local UpdateLoggerDefinitionRequest_keys = { "LoggerDefinitionId" = true, "Name" = true, nil }

function M.AssertUpdateLoggerDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLoggerDefinitionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then M.Assert__string(struct["LoggerDefinitionId"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateLoggerDefinitionRequest_keys[k], "UpdateLoggerDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLoggerDefinitionRequest
--  
-- @param LoggerDefinitionId [__string] logger definition Id
-- @param Name [__string] name of the definition
-- Required parameter: LoggerDefinitionId
function M.UpdateLoggerDefinitionRequest(LoggerDefinitionId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLoggerDefinitionRequest")
	local t = { 
		["LoggerDefinitionId"] = LoggerDefinitionId,
		["Name"] = Name,
	}
	M.AssertUpdateLoggerDefinitionRequest(t)
	return t
end

local GetDeviceDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetDeviceDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetDeviceDefinitionResponse_keys[k], "GetDeviceDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.GetDeviceDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetDeviceDefinitionResponse(t)
	return t
end

local GetFunctionDefinitionVersionRequest_keys = { "FunctionDefinitionId" = true, "FunctionDefinitionVersionId" = true, nil }

function M.AssertGetFunctionDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionDefinitionVersionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	assert(struct["FunctionDefinitionVersionId"], "Expected key FunctionDefinitionVersionId to exist in table")
	if struct["FunctionDefinitionId"] then M.Assert__string(struct["FunctionDefinitionId"]) end
	if struct["FunctionDefinitionVersionId"] then M.Assert__string(struct["FunctionDefinitionVersionId"]) end
	for k,_ in pairs(struct) do
		assert(GetFunctionDefinitionVersionRequest_keys[k], "GetFunctionDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionDefinitionVersionRequest
--  
-- @param FunctionDefinitionId [__string] the unique Id of the lambda definition
-- @param FunctionDefinitionVersionId [__string] Function definition version Id
-- Required parameter: FunctionDefinitionId
-- Required parameter: FunctionDefinitionVersionId
function M.GetFunctionDefinitionVersionRequest(FunctionDefinitionId, FunctionDefinitionVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionDefinitionVersionRequest")
	local t = { 
		["FunctionDefinitionId"] = FunctionDefinitionId,
		["FunctionDefinitionVersionId"] = FunctionDefinitionVersionId,
	}
	M.AssertGetFunctionDefinitionVersionRequest(t)
	return t
end

local ListSubscriptionDefinitionsResponse_keys = { "Definitions" = true, "NextToken" = true, nil }

function M.AssertListSubscriptionDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then M.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListSubscriptionDefinitionsResponse_keys[k], "ListSubscriptionDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionDefinitionsResponse
--  
-- @param Definitions [ListOfDefinitionInformation] Definitions
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListSubscriptionDefinitionsResponse(Definitions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionDefinitionsResponse")
	local t = { 
		["Definitions"] = Definitions,
		["NextToken"] = NextToken,
	}
	M.AssertListSubscriptionDefinitionsResponse(t)
	return t
end

local GetConnectivityInfoRequest_keys = { "ThingName" = true, nil }

function M.AssertGetConnectivityInfoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectivityInfoRequest to be of type 'table'")
	assert(struct["ThingName"], "Expected key ThingName to exist in table")
	if struct["ThingName"] then M.Assert__string(struct["ThingName"]) end
	for k,_ in pairs(struct) do
		assert(GetConnectivityInfoRequest_keys[k], "GetConnectivityInfoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectivityInfoRequest
--  
-- @param ThingName [__string] Thing Name
-- Required parameter: ThingName
function M.GetConnectivityInfoRequest(ThingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConnectivityInfoRequest")
	local t = { 
		["ThingName"] = ThingName,
	}
	M.AssertGetConnectivityInfoRequest(t)
	return t
end

local FunctionConfiguration_keys = { "ExecArgs" = true, "Executable" = true, "MemorySize" = true, "Environment" = true, "Pinned" = true, "Timeout" = true, nil }

function M.AssertFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionConfiguration to be of type 'table'")
	if struct["ExecArgs"] then M.Assert__string(struct["ExecArgs"]) end
	if struct["Executable"] then M.Assert__string(struct["Executable"]) end
	if struct["MemorySize"] then M.Assert__integer(struct["MemorySize"]) end
	if struct["Environment"] then M.AssertFunctionConfigurationEnvironment(struct["Environment"]) end
	if struct["Pinned"] then M.Assert__boolean(struct["Pinned"]) end
	if struct["Timeout"] then M.Assert__integer(struct["Timeout"]) end
	for k,_ in pairs(struct) do
		assert(FunctionConfiguration_keys[k], "FunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionConfiguration
-- Configuration of the function
-- @param ExecArgs [__string] Execution Arguments
-- @param Executable [__string] Executable
-- @param MemorySize [__integer] The memory size, in KB, you configured for the function.
-- @param Environment [FunctionConfigurationEnvironment] Environment of the function configuration
-- @param Pinned [__boolean] Whether the function is pinned or not. Pinned means the function is long-lived and starts when the core starts.
-- @param Timeout [__integer] The function execution time at which Lambda should terminate the function. This timeout still applies to pinned lambdas for each request.
function M.FunctionConfiguration(ExecArgs, Executable, MemorySize, Environment, Pinned, Timeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionConfiguration")
	local t = { 
		["ExecArgs"] = ExecArgs,
		["Executable"] = Executable,
		["MemorySize"] = MemorySize,
		["Environment"] = Environment,
		["Pinned"] = Pinned,
		["Timeout"] = Timeout,
	}
	M.AssertFunctionConfiguration(t)
	return t
end

local ListFunctionDefinitionsResponse_keys = { "Definitions" = true, "NextToken" = true, nil }

function M.AssertListFunctionDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then M.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListFunctionDefinitionsResponse_keys[k], "ListFunctionDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionDefinitionsResponse
--  
-- @param Definitions [ListOfDefinitionInformation] Definitions
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListFunctionDefinitionsResponse(Definitions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionDefinitionsResponse")
	local t = { 
		["Definitions"] = Definitions,
		["NextToken"] = NextToken,
	}
	M.AssertListFunctionDefinitionsResponse(t)
	return t
end

local Empty_keys = { nil }

function M.AssertEmpty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Empty to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(Empty_keys[k], "Empty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Empty
-- Empty
function M.Empty(...)
	assert(select("#", ...) == 0, "Too many arguments when creating Empty")
	local t = { 
	}
	M.AssertEmpty(t)
	return t
end

local Core_keys = { "CertificateArn" = true, "ThingArn" = true, "SyncShadow" = true, "Id" = true, nil }

function M.AssertCore(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Core to be of type 'table'")
	if struct["CertificateArn"] then M.Assert__string(struct["CertificateArn"]) end
	if struct["ThingArn"] then M.Assert__string(struct["ThingArn"]) end
	if struct["SyncShadow"] then M.Assert__boolean(struct["SyncShadow"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Core_keys[k], "Core contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Core
-- Information on the core
-- @param CertificateArn [__string] Certificate arn of the core.
-- @param ThingArn [__string] Thing arn of the core.
-- @param SyncShadow [__boolean] If true, the local shadow value automatically syncs with the cloud's shadow state.
-- @param Id [__string] Element Id for this entry in the list.
function M.Core(CertificateArn, ThingArn, SyncShadow, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Core")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["ThingArn"] = ThingArn,
		["SyncShadow"] = SyncShadow,
		["Id"] = Id,
	}
	M.AssertCore(t)
	return t
end

local GetFunctionDefinitionRequest_keys = { "FunctionDefinitionId" = true, nil }

function M.AssertGetFunctionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionDefinitionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then M.Assert__string(struct["FunctionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(GetFunctionDefinitionRequest_keys[k], "GetFunctionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionDefinitionRequest
--  
-- @param FunctionDefinitionId [__string] the unique Id of the lambda definition
-- Required parameter: FunctionDefinitionId
function M.GetFunctionDefinitionRequest(FunctionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionDefinitionRequest")
	local t = { 
		["FunctionDefinitionId"] = FunctionDefinitionId,
	}
	M.AssertGetFunctionDefinitionRequest(t)
	return t
end

local CreateCoreDefinitionVersionResponse_keys = { "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateCoreDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCoreDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateCoreDefinitionVersionResponse_keys[k], "CreateCoreDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCoreDefinitionVersionResponse
--  
-- @param Version [__string] Unique Id of a version.
-- @param CreationTimestamp [__string] Timestamp of when the version was created.
-- @param Id [__string] Id of the resource container.
-- @param Arn [__string] Arn of the version.
function M.CreateCoreDefinitionVersionResponse(Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCoreDefinitionVersionResponse")
	local t = { 
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateCoreDefinitionVersionResponse(t)
	return t
end

local UpdateGroupCertificateConfigurationResponse_keys = { "CertificateExpiryInMilliseconds" = true, "GroupId" = true, "CertificateAuthorityExpiryInMilliseconds" = true, nil }

function M.AssertUpdateGroupCertificateConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupCertificateConfigurationResponse to be of type 'table'")
	if struct["CertificateExpiryInMilliseconds"] then M.Assert__string(struct["CertificateExpiryInMilliseconds"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	if struct["CertificateAuthorityExpiryInMilliseconds"] then M.Assert__string(struct["CertificateAuthorityExpiryInMilliseconds"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGroupCertificateConfigurationResponse_keys[k], "UpdateGroupCertificateConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupCertificateConfigurationResponse
--  
-- @param CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- @param GroupId [__string] Id of the group the certificate configuration belongs to.
-- @param CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
function M.UpdateGroupCertificateConfigurationResponse(CertificateExpiryInMilliseconds, GroupId, CertificateAuthorityExpiryInMilliseconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupCertificateConfigurationResponse")
	local t = { 
		["CertificateExpiryInMilliseconds"] = CertificateExpiryInMilliseconds,
		["GroupId"] = GroupId,
		["CertificateAuthorityExpiryInMilliseconds"] = CertificateAuthorityExpiryInMilliseconds,
	}
	M.AssertUpdateGroupCertificateConfigurationResponse(t)
	return t
end

local GetGroupResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupResponse_keys[k], "GetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.GetGroupResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetGroupResponse(t)
	return t
end

local GetLoggerDefinitionVersionRequest_keys = { "LoggerDefinitionId" = true, "LoggerDefinitionVersionId" = true, nil }

function M.AssertGetLoggerDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggerDefinitionVersionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionVersionId"], "Expected key LoggerDefinitionVersionId to exist in table")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then M.Assert__string(struct["LoggerDefinitionId"]) end
	if struct["LoggerDefinitionVersionId"] then M.Assert__string(struct["LoggerDefinitionVersionId"]) end
	for k,_ in pairs(struct) do
		assert(GetLoggerDefinitionVersionRequest_keys[k], "GetLoggerDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggerDefinitionVersionRequest
--  
-- @param LoggerDefinitionId [__string] logger definition Id
-- @param LoggerDefinitionVersionId [__string] logger definition version Id
-- Required parameter: LoggerDefinitionVersionId
-- Required parameter: LoggerDefinitionId
function M.GetLoggerDefinitionVersionRequest(LoggerDefinitionId, LoggerDefinitionVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggerDefinitionVersionRequest")
	local t = { 
		["LoggerDefinitionId"] = LoggerDefinitionId,
		["LoggerDefinitionVersionId"] = LoggerDefinitionVersionId,
	}
	M.AssertGetLoggerDefinitionVersionRequest(t)
	return t
end

local ListLoggerDefinitionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListLoggerDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggerDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListLoggerDefinitionsRequest_keys[k], "ListLoggerDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggerDefinitionsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListLoggerDefinitionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLoggerDefinitionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListLoggerDefinitionsRequest(t)
	return t
end

local Device_keys = { "CertificateArn" = true, "ThingArn" = true, "SyncShadow" = true, "Id" = true, nil }

function M.AssertDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Device to be of type 'table'")
	if struct["CertificateArn"] then M.Assert__string(struct["CertificateArn"]) end
	if struct["ThingArn"] then M.Assert__string(struct["ThingArn"]) end
	if struct["SyncShadow"] then M.Assert__boolean(struct["SyncShadow"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Device_keys[k], "Device contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Device
-- Information on a Device
-- @param CertificateArn [__string] Certificate arn of the device.
-- @param ThingArn [__string] Thing arn of the device.
-- @param SyncShadow [__boolean] If true, the local shadow value automatically syncs with the cloud's shadow state.
-- @param Id [__string] Element Id for this entry in the list.
function M.Device(CertificateArn, ThingArn, SyncShadow, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Device")
	local t = { 
		["CertificateArn"] = CertificateArn,
		["ThingArn"] = ThingArn,
		["SyncShadow"] = SyncShadow,
		["Id"] = Id,
	}
	M.AssertDevice(t)
	return t
end

local GetFunctionDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetFunctionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetFunctionDefinitionResponse_keys[k], "GetFunctionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.GetFunctionDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetFunctionDefinitionResponse(t)
	return t
end

local GetGroupCertificateAuthorityRequest_keys = { "CertificateAuthorityId" = true, "GroupId" = true, nil }

function M.AssertGetGroupCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityId"], "Expected key CertificateAuthorityId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["CertificateAuthorityId"] then M.Assert__string(struct["CertificateAuthorityId"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupCertificateAuthorityRequest_keys[k], "GetGroupCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupCertificateAuthorityRequest
--  
-- @param CertificateAuthorityId [__string] certificate authority Id
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: CertificateAuthorityId
-- Required parameter: GroupId
function M.GetGroupCertificateAuthorityRequest(CertificateAuthorityId, GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupCertificateAuthorityRequest")
	local t = { 
		["CertificateAuthorityId"] = CertificateAuthorityId,
		["GroupId"] = GroupId,
	}
	M.AssertGetGroupCertificateAuthorityRequest(t)
	return t
end

local ListSubscriptionDefinitionVersionsResponse_keys = { "NextToken" = true, "Versions" = true, nil }

function M.AssertListSubscriptionDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then M.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListSubscriptionDefinitionVersionsResponse_keys[k], "ListSubscriptionDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionDefinitionVersionsResponse
--  
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Versions [ListOfVersionInformation] Versions
function M.ListSubscriptionDefinitionVersionsResponse(NextToken, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Versions"] = Versions,
	}
	M.AssertListSubscriptionDefinitionVersionsResponse(t)
	return t
end

local UpdateCoreDefinitionRequest_keys = { "CoreDefinitionId" = true, "Name" = true, nil }

function M.AssertUpdateCoreDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCoreDefinitionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["CoreDefinitionId"] then M.Assert__string(struct["CoreDefinitionId"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateCoreDefinitionRequest_keys[k], "UpdateCoreDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCoreDefinitionRequest
--  
-- @param CoreDefinitionId [__string] core definition Id
-- @param Name [__string] name of the definition
-- Required parameter: CoreDefinitionId
function M.UpdateCoreDefinitionRequest(CoreDefinitionId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCoreDefinitionRequest")
	local t = { 
		["CoreDefinitionId"] = CoreDefinitionId,
		["Name"] = Name,
	}
	M.AssertUpdateCoreDefinitionRequest(t)
	return t
end

local GetCoreDefinitionVersionResponse_keys = { "Definition" = true, "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetCoreDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCoreDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then M.AssertCoreDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetCoreDefinitionVersionResponse_keys[k], "GetCoreDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCoreDefinitionVersionResponse
--  
-- @param Definition [CoreDefinitionVersion] Information on definition
-- @param Version [__string] Version of the core definition version.
-- @param CreationTimestamp [__string] Timestamp of when the core definition version was created.
-- @param Id [__string] Id of the core definition the version belongs to.
-- @param Arn [__string] Arn of the core definition version.
function M.GetCoreDefinitionVersionResponse(Definition, Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCoreDefinitionVersionResponse")
	local t = { 
		["Definition"] = Definition,
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetCoreDefinitionVersionResponse(t)
	return t
end

local DisassociateRoleFromGroupRequest_keys = { "GroupId" = true, nil }

function M.AssertDisassociateRoleFromGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateRoleFromGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(DisassociateRoleFromGroupRequest_keys[k], "DisassociateRoleFromGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateRoleFromGroupRequest
--  
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.DisassociateRoleFromGroupRequest(GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateRoleFromGroupRequest")
	local t = { 
		["GroupId"] = GroupId,
	}
	M.AssertDisassociateRoleFromGroupRequest(t)
	return t
end

local ListDeviceDefinitionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListDeviceDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListDeviceDefinitionsRequest_keys[k], "ListDeviceDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceDefinitionsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListDeviceDefinitionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeviceDefinitionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListDeviceDefinitionsRequest(t)
	return t
end

local CreateSubscriptionDefinitionVersionResponse_keys = { "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateSubscriptionDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateSubscriptionDefinitionVersionResponse_keys[k], "CreateSubscriptionDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionDefinitionVersionResponse
--  
-- @param Version [__string] Unique Id of a version.
-- @param CreationTimestamp [__string] Timestamp of when the version was created.
-- @param Id [__string] Id of the resource container.
-- @param Arn [__string] Arn of the version.
function M.CreateSubscriptionDefinitionVersionResponse(Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionDefinitionVersionResponse")
	local t = { 
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateSubscriptionDefinitionVersionResponse(t)
	return t
end

local UpdateGroupResponse_keys = { nil }

function M.AssertUpdateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateGroupResponse_keys[k], "UpdateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupResponse
--  
function M.UpdateGroupResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupResponse")
	local t = { 
	}
	M.AssertUpdateGroupResponse(t)
	return t
end

local UpdateConnectivityInfoRequest_keys = { "ConnectivityInfo" = true, "ThingName" = true, nil }

function M.AssertUpdateConnectivityInfoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConnectivityInfoRequest to be of type 'table'")
	assert(struct["ThingName"], "Expected key ThingName to exist in table")
	if struct["ConnectivityInfo"] then M.AssertListOfConnectivityInfo(struct["ConnectivityInfo"]) end
	if struct["ThingName"] then M.Assert__string(struct["ThingName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateConnectivityInfoRequest_keys[k], "UpdateConnectivityInfoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConnectivityInfoRequest
-- connectivity info request
-- @param ConnectivityInfo [ListOfConnectivityInfo] Connectivity info array
-- @param ThingName [__string] Thing Name
-- Required parameter: ThingName
function M.UpdateConnectivityInfoRequest(ConnectivityInfo, ThingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConnectivityInfoRequest")
	local t = { 
		["ConnectivityInfo"] = ConnectivityInfo,
		["ThingName"] = ThingName,
	}
	M.AssertUpdateConnectivityInfoRequest(t)
	return t
end

local DeleteSubscriptionDefinitionRequest_keys = { "SubscriptionDefinitionId" = true, nil }

function M.AssertDeleteSubscriptionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionDefinitionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then M.Assert__string(struct["SubscriptionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSubscriptionDefinitionRequest_keys[k], "DeleteSubscriptionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionDefinitionRequest
--  
-- @param SubscriptionDefinitionId [__string] subscription definition Id
-- Required parameter: SubscriptionDefinitionId
function M.DeleteSubscriptionDefinitionRequest(SubscriptionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionDefinitionRequest")
	local t = { 
		["SubscriptionDefinitionId"] = SubscriptionDefinitionId,
	}
	M.AssertDeleteSubscriptionDefinitionRequest(t)
	return t
end

local VersionInformation_keys = { "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertVersionInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionInformation to be of type 'table'")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(VersionInformation_keys[k], "VersionInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionInformation
-- Information on the version
-- @param Version [__string] Unique Id of a version.
-- @param CreationTimestamp [__string] Timestamp of when the version was created.
-- @param Id [__string] Id of the resource container.
-- @param Arn [__string] Arn of the version.
function M.VersionInformation(Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersionInformation")
	local t = { 
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertVersionInformation(t)
	return t
end

local GroupCertificateConfiguration_keys = { "CertificateExpiryInMilliseconds" = true, "GroupId" = true, "CertificateAuthorityExpiryInMilliseconds" = true, nil }

function M.AssertGroupCertificateConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupCertificateConfiguration to be of type 'table'")
	if struct["CertificateExpiryInMilliseconds"] then M.Assert__string(struct["CertificateExpiryInMilliseconds"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	if struct["CertificateAuthorityExpiryInMilliseconds"] then M.Assert__string(struct["CertificateAuthorityExpiryInMilliseconds"]) end
	for k,_ in pairs(struct) do
		assert(GroupCertificateConfiguration_keys[k], "GroupCertificateConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupCertificateConfiguration
-- Information on the group certificate configuration
-- @param CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- @param GroupId [__string] Id of the group the certificate configuration belongs to.
-- @param CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
function M.GroupCertificateConfiguration(CertificateExpiryInMilliseconds, GroupId, CertificateAuthorityExpiryInMilliseconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupCertificateConfiguration")
	local t = { 
		["CertificateExpiryInMilliseconds"] = CertificateExpiryInMilliseconds,
		["GroupId"] = GroupId,
		["CertificateAuthorityExpiryInMilliseconds"] = CertificateAuthorityExpiryInMilliseconds,
	}
	M.AssertGroupCertificateConfiguration(t)
	return t
end

local GetAssociatedRoleRequest_keys = { "GroupId" = true, nil }

function M.AssertGetAssociatedRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssociatedRoleRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(GetAssociatedRoleRequest_keys[k], "GetAssociatedRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssociatedRoleRequest
--  
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.GetAssociatedRoleRequest(GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssociatedRoleRequest")
	local t = { 
		["GroupId"] = GroupId,
	}
	M.AssertGetAssociatedRoleRequest(t)
	return t
end

local GetCoreDefinitionRequest_keys = { "CoreDefinitionId" = true, nil }

function M.AssertGetCoreDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCoreDefinitionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["CoreDefinitionId"] then M.Assert__string(struct["CoreDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(GetCoreDefinitionRequest_keys[k], "GetCoreDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCoreDefinitionRequest
--  
-- @param CoreDefinitionId [__string] core definition Id
-- Required parameter: CoreDefinitionId
function M.GetCoreDefinitionRequest(CoreDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCoreDefinitionRequest")
	local t = { 
		["CoreDefinitionId"] = CoreDefinitionId,
	}
	M.AssertGetCoreDefinitionRequest(t)
	return t
end

local ListSubscriptionDefinitionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListSubscriptionDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListSubscriptionDefinitionsRequest_keys[k], "ListSubscriptionDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionDefinitionsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListSubscriptionDefinitionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionDefinitionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListSubscriptionDefinitionsRequest(t)
	return t
end

local CreateSubscriptionDefinitionVersionRequest_keys = { "SubscriptionDefinitionId" = true, "AmznClientToken" = true, "Subscriptions" = true, nil }

function M.AssertCreateSubscriptionDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionDefinitionVersionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then M.Assert__string(struct["SubscriptionDefinitionId"]) end
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["Subscriptions"] then M.AssertListOfSubscription(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(CreateSubscriptionDefinitionVersionRequest_keys[k], "CreateSubscriptionDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionDefinitionVersionRequest
--  
-- @param SubscriptionDefinitionId [__string] subscription definition Id
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param Subscriptions [ListOfSubscription] Subscriptions in the version.
-- Required parameter: SubscriptionDefinitionId
function M.CreateSubscriptionDefinitionVersionRequest(SubscriptionDefinitionId, AmznClientToken, Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionDefinitionVersionRequest")
	local t = { 
		["SubscriptionDefinitionId"] = SubscriptionDefinitionId,
		["AmznClientToken"] = AmznClientToken,
		["Subscriptions"] = Subscriptions,
	}
	M.AssertCreateSubscriptionDefinitionVersionRequest(t)
	return t
end

local CreateCoreDefinitionVersionRequest_keys = { "Cores" = true, "AmznClientToken" = true, "CoreDefinitionId" = true, nil }

function M.AssertCreateCoreDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCoreDefinitionVersionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["Cores"] then M.AssertListOfCore(struct["Cores"]) end
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["CoreDefinitionId"] then M.Assert__string(struct["CoreDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(CreateCoreDefinitionVersionRequest_keys[k], "CreateCoreDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCoreDefinitionVersionRequest
--  
-- @param Cores [ListOfCore] Cores in the definition version.
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param CoreDefinitionId [__string] core definition Id
-- Required parameter: CoreDefinitionId
function M.CreateCoreDefinitionVersionRequest(Cores, AmznClientToken, CoreDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCoreDefinitionVersionRequest")
	local t = { 
		["Cores"] = Cores,
		["AmznClientToken"] = AmznClientToken,
		["CoreDefinitionId"] = CoreDefinitionId,
	}
	M.AssertCreateCoreDefinitionVersionRequest(t)
	return t
end

local CreateFunctionDefinitionRequest_keys = { "AmznClientToken" = true, "InitialVersion" = true, "Name" = true, nil }

function M.AssertCreateFunctionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then M.AssertFunctionDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateFunctionDefinitionRequest_keys[k], "CreateFunctionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionDefinitionRequest
--  
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param InitialVersion [FunctionDefinitionVersion] Information on the initial version
-- @param Name [__string] name of the function definition
function M.CreateFunctionDefinitionRequest(AmznClientToken, InitialVersion, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionDefinitionRequest")
	local t = { 
		["AmznClientToken"] = AmznClientToken,
		["InitialVersion"] = InitialVersion,
		["Name"] = Name,
	}
	M.AssertCreateFunctionDefinitionRequest(t)
	return t
end

local AssociateRoleToGroupRequest_keys = { "RoleArn" = true, "GroupId" = true, nil }

function M.AssertAssociateRoleToGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateRoleToGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(AssociateRoleToGroupRequest_keys[k], "AssociateRoleToGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateRoleToGroupRequest
--  
-- @param RoleArn [__string] Role arn you wish to associate with this group.
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.AssociateRoleToGroupRequest(RoleArn, GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateRoleToGroupRequest")
	local t = { 
		["RoleArn"] = RoleArn,
		["GroupId"] = GroupId,
	}
	M.AssertAssociateRoleToGroupRequest(t)
	return t
end

local GetSubscriptionDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetSubscriptionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetSubscriptionDefinitionResponse_keys[k], "GetSubscriptionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.GetSubscriptionDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetSubscriptionDefinitionResponse(t)
	return t
end

local ListGroupVersionsResponse_keys = { "NextToken" = true, "Versions" = true, nil }

function M.AssertListGroupVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupVersionsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then M.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupVersionsResponse_keys[k], "ListGroupVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupVersionsResponse
--  
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Versions [ListOfVersionInformation] Versions
function M.ListGroupVersionsResponse(NextToken, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupVersionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Versions"] = Versions,
	}
	M.AssertListGroupVersionsResponse(t)
	return t
end

local ListCoreDefinitionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListCoreDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCoreDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListCoreDefinitionsRequest_keys[k], "ListCoreDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCoreDefinitionsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListCoreDefinitionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCoreDefinitionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListCoreDefinitionsRequest(t)
	return t
end

local ListGroupCertificateAuthoritiesResponse_keys = { "GroupCertificateAuthorities" = true, nil }

function M.AssertListGroupCertificateAuthoritiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupCertificateAuthoritiesResponse to be of type 'table'")
	if struct["GroupCertificateAuthorities"] then M.AssertListOfGroupCertificateAuthorityProperties(struct["GroupCertificateAuthorities"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupCertificateAuthoritiesResponse_keys[k], "ListGroupCertificateAuthoritiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupCertificateAuthoritiesResponse
--  
-- @param GroupCertificateAuthorities [ListOfGroupCertificateAuthorityProperties] List of certificate authorities associated with the group.
function M.ListGroupCertificateAuthoritiesResponse(GroupCertificateAuthorities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupCertificateAuthoritiesResponse")
	local t = { 
		["GroupCertificateAuthorities"] = GroupCertificateAuthorities,
	}
	M.AssertListGroupCertificateAuthoritiesResponse(t)
	return t
end

local Logger_keys = { "Type" = true, "Space" = true, "Component" = true, "Id" = true, "Level" = true, nil }

function M.AssertLogger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Logger to be of type 'table'")
	if struct["Type"] then M.AssertLoggerType(struct["Type"]) end
	if struct["Space"] then M.Assert__integer(struct["Space"]) end
	if struct["Component"] then M.AssertLoggerComponent(struct["Component"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Level"] then M.AssertLoggerLevel(struct["Level"]) end
	for k,_ in pairs(struct) do
		assert(Logger_keys[k], "Logger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Logger
-- Information on the Logger
-- @param Type [LoggerType] The type which will be use for log output
-- @param Space [__integer] Amount of hardware space, in KB, to use if file system is used for logging purposes.
-- @param Component [LoggerComponent] The component that will be subject to logs
-- @param Id [__string] Element Id for this entry in the list.
-- @param Level [LoggerLevel] The level of the logs
function M.Logger(Type, Space, Component, Id, Level, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Logger")
	local t = { 
		["Type"] = Type,
		["Space"] = Space,
		["Component"] = Component,
		["Id"] = Id,
		["Level"] = Level,
	}
	M.AssertLogger(t)
	return t
end

local UpdateGroupCertificateConfigurationRequest_keys = { "CertificateExpiryInMilliseconds" = true, "GroupId" = true, nil }

function M.AssertUpdateGroupCertificateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupCertificateConfigurationRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["CertificateExpiryInMilliseconds"] then M.Assert__string(struct["CertificateExpiryInMilliseconds"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGroupCertificateConfigurationRequest_keys[k], "UpdateGroupCertificateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupCertificateConfigurationRequest
--  
-- @param CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.UpdateGroupCertificateConfigurationRequest(CertificateExpiryInMilliseconds, GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupCertificateConfigurationRequest")
	local t = { 
		["CertificateExpiryInMilliseconds"] = CertificateExpiryInMilliseconds,
		["GroupId"] = GroupId,
	}
	M.AssertUpdateGroupCertificateConfigurationRequest(t)
	return t
end

local GetFunctionDefinitionVersionResponse_keys = { "Definition" = true, "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetFunctionDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then M.AssertFunctionDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetFunctionDefinitionVersionResponse_keys[k], "GetFunctionDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionDefinitionVersionResponse
--  
-- @param Definition [FunctionDefinitionVersion]  
-- @param Version [__string] Version of the function definition version.
-- @param CreationTimestamp [__string] Timestamp when the funtion definition version was created.
-- @param Id [__string] Id of the function definition the version belongs to.
-- @param Arn [__string] Arn of the function definition version.
function M.GetFunctionDefinitionVersionResponse(Definition, Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionDefinitionVersionResponse")
	local t = { 
		["Definition"] = Definition,
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetFunctionDefinitionVersionResponse(t)
	return t
end

local ListGroupCertificateAuthoritiesRequest_keys = { "GroupId" = true, nil }

function M.AssertListGroupCertificateAuthoritiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupCertificateAuthoritiesRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(ListGroupCertificateAuthoritiesRequest_keys[k], "ListGroupCertificateAuthoritiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupCertificateAuthoritiesRequest
--  
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.ListGroupCertificateAuthoritiesRequest(GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupCertificateAuthoritiesRequest")
	local t = { 
		["GroupId"] = GroupId,
	}
	M.AssertListGroupCertificateAuthoritiesRequest(t)
	return t
end

local ListDeviceDefinitionsResponse_keys = { "Definitions" = true, "NextToken" = true, nil }

function M.AssertListDeviceDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then M.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDeviceDefinitionsResponse_keys[k], "ListDeviceDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceDefinitionsResponse
--  
-- @param Definitions [ListOfDefinitionInformation] Definitions
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListDeviceDefinitionsResponse(Definitions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeviceDefinitionsResponse")
	local t = { 
		["Definitions"] = Definitions,
		["NextToken"] = NextToken,
	}
	M.AssertListDeviceDefinitionsResponse(t)
	return t
end

local CreateFunctionDefinitionVersionResponse_keys = { "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateFunctionDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateFunctionDefinitionVersionResponse_keys[k], "CreateFunctionDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionDefinitionVersionResponse
--  
-- @param Version [__string] Unique Id of a version.
-- @param CreationTimestamp [__string] Timestamp of when the version was created.
-- @param Id [__string] Id of the resource container.
-- @param Arn [__string] Arn of the version.
function M.CreateFunctionDefinitionVersionResponse(Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionDefinitionVersionResponse")
	local t = { 
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateFunctionDefinitionVersionResponse(t)
	return t
end

local CreateGroupVersionResponse_keys = { "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateGroupVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupVersionResponse to be of type 'table'")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupVersionResponse_keys[k], "CreateGroupVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupVersionResponse
--  
-- @param Version [__string] Unique Id of a version.
-- @param CreationTimestamp [__string] Timestamp of when the version was created.
-- @param Id [__string] Id of the resource container.
-- @param Arn [__string] Arn of the version.
function M.CreateGroupVersionResponse(Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupVersionResponse")
	local t = { 
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateGroupVersionResponse(t)
	return t
end

local ListVersionsResponse_keys = { "NextToken" = true, "Versions" = true, nil }

function M.AssertListVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVersionsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then M.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListVersionsResponse_keys[k], "ListVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVersionsResponse
-- List of versions response
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Versions [ListOfVersionInformation] Versions
function M.ListVersionsResponse(NextToken, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVersionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Versions"] = Versions,
	}
	M.AssertListVersionsResponse(t)
	return t
end

local UpdateDeviceDefinitionRequest_keys = { "DeviceDefinitionId" = true, "Name" = true, nil }

function M.AssertUpdateDeviceDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceDefinitionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then M.Assert__string(struct["DeviceDefinitionId"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDeviceDefinitionRequest_keys[k], "UpdateDeviceDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceDefinitionRequest
--  
-- @param DeviceDefinitionId [__string] device definition Id
-- @param Name [__string] name of the definition
-- Required parameter: DeviceDefinitionId
function M.UpdateDeviceDefinitionRequest(DeviceDefinitionId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeviceDefinitionRequest")
	local t = { 
		["DeviceDefinitionId"] = DeviceDefinitionId,
		["Name"] = Name,
	}
	M.AssertUpdateDeviceDefinitionRequest(t)
	return t
end

local GroupVersion_keys = { "CoreDefinitionVersionArn" = true, "LoggerDefinitionVersionArn" = true, "FunctionDefinitionVersionArn" = true, "DeviceDefinitionVersionArn" = true, "SubscriptionDefinitionVersionArn" = true, nil }

function M.AssertGroupVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupVersion to be of type 'table'")
	if struct["CoreDefinitionVersionArn"] then M.Assert__string(struct["CoreDefinitionVersionArn"]) end
	if struct["LoggerDefinitionVersionArn"] then M.Assert__string(struct["LoggerDefinitionVersionArn"]) end
	if struct["FunctionDefinitionVersionArn"] then M.Assert__string(struct["FunctionDefinitionVersionArn"]) end
	if struct["DeviceDefinitionVersionArn"] then M.Assert__string(struct["DeviceDefinitionVersionArn"]) end
	if struct["SubscriptionDefinitionVersionArn"] then M.Assert__string(struct["SubscriptionDefinitionVersionArn"]) end
	for k,_ in pairs(struct) do
		assert(GroupVersion_keys[k], "GroupVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupVersion
-- Information on group version
-- @param CoreDefinitionVersionArn [__string] Core definition version arn for this group.
-- @param LoggerDefinitionVersionArn [__string] Logger definitionv ersion arn for this group.
-- @param FunctionDefinitionVersionArn [__string] Function definition version arn for this group.
-- @param DeviceDefinitionVersionArn [__string] Device definition version arn for this group.
-- @param SubscriptionDefinitionVersionArn [__string] Subscription definition version arn for this group.
function M.GroupVersion(CoreDefinitionVersionArn, LoggerDefinitionVersionArn, FunctionDefinitionVersionArn, DeviceDefinitionVersionArn, SubscriptionDefinitionVersionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupVersion")
	local t = { 
		["CoreDefinitionVersionArn"] = CoreDefinitionVersionArn,
		["LoggerDefinitionVersionArn"] = LoggerDefinitionVersionArn,
		["FunctionDefinitionVersionArn"] = FunctionDefinitionVersionArn,
		["DeviceDefinitionVersionArn"] = DeviceDefinitionVersionArn,
		["SubscriptionDefinitionVersionArn"] = SubscriptionDefinitionVersionArn,
	}
	M.AssertGroupVersion(t)
	return t
end

local DeleteLoggerDefinitionResponse_keys = { nil }

function M.AssertDeleteLoggerDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoggerDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteLoggerDefinitionResponse_keys[k], "DeleteLoggerDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoggerDefinitionResponse
--  
function M.DeleteLoggerDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLoggerDefinitionResponse")
	local t = { 
	}
	M.AssertDeleteLoggerDefinitionResponse(t)
	return t
end

local DeleteFunctionDefinitionRequest_keys = { "FunctionDefinitionId" = true, nil }

function M.AssertDeleteFunctionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFunctionDefinitionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then M.Assert__string(struct["FunctionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteFunctionDefinitionRequest_keys[k], "DeleteFunctionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFunctionDefinitionRequest
--  
-- @param FunctionDefinitionId [__string] the unique Id of the lambda definition
-- Required parameter: FunctionDefinitionId
function M.DeleteFunctionDefinitionRequest(FunctionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFunctionDefinitionRequest")
	local t = { 
		["FunctionDefinitionId"] = FunctionDefinitionId,
	}
	M.AssertDeleteFunctionDefinitionRequest(t)
	return t
end

local Deployment_keys = { "DeploymentId" = true, "DeploymentArn" = true, "GroupArn" = true, "CreatedAt" = true, nil }

function M.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["DeploymentId"] then M.Assert__string(struct["DeploymentId"]) end
	if struct["DeploymentArn"] then M.Assert__string(struct["DeploymentArn"]) end
	if struct["GroupArn"] then M.Assert__string(struct["GroupArn"]) end
	if struct["CreatedAt"] then M.Assert__string(struct["CreatedAt"]) end
	for k,_ in pairs(struct) do
		assert(Deployment_keys[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- Information on the deployment
-- @param DeploymentId [__string] Id of the deployment.
-- @param DeploymentArn [__string] Arn of the deployment.
-- @param GroupArn [__string] Arn of the group for this deployment.
-- @param CreatedAt [__string] Timestamp when the deployment was created.
function M.Deployment(DeploymentId, DeploymentArn, GroupArn, CreatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Deployment")
	local t = { 
		["DeploymentId"] = DeploymentId,
		["DeploymentArn"] = DeploymentArn,
		["GroupArn"] = GroupArn,
		["CreatedAt"] = CreatedAt,
	}
	M.AssertDeployment(t)
	return t
end

local GetGroupCertificateConfigurationResponse_keys = { "CertificateExpiryInMilliseconds" = true, "GroupId" = true, "CertificateAuthorityExpiryInMilliseconds" = true, nil }

function M.AssertGetGroupCertificateConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupCertificateConfigurationResponse to be of type 'table'")
	if struct["CertificateExpiryInMilliseconds"] then M.Assert__string(struct["CertificateExpiryInMilliseconds"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	if struct["CertificateAuthorityExpiryInMilliseconds"] then M.Assert__string(struct["CertificateAuthorityExpiryInMilliseconds"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupCertificateConfigurationResponse_keys[k], "GetGroupCertificateConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupCertificateConfigurationResponse
--  
-- @param CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- @param GroupId [__string] Id of the group the certificate configuration belongs to.
-- @param CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
function M.GetGroupCertificateConfigurationResponse(CertificateExpiryInMilliseconds, GroupId, CertificateAuthorityExpiryInMilliseconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupCertificateConfigurationResponse")
	local t = { 
		["CertificateExpiryInMilliseconds"] = CertificateExpiryInMilliseconds,
		["GroupId"] = GroupId,
		["CertificateAuthorityExpiryInMilliseconds"] = CertificateAuthorityExpiryInMilliseconds,
	}
	M.AssertGetGroupCertificateConfigurationResponse(t)
	return t
end

local CreateGroupCertificateAuthorityResponse_keys = { "GroupCertificateAuthorityArn" = true, nil }

function M.AssertCreateGroupCertificateAuthorityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupCertificateAuthorityResponse to be of type 'table'")
	if struct["GroupCertificateAuthorityArn"] then M.Assert__string(struct["GroupCertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupCertificateAuthorityResponse_keys[k], "CreateGroupCertificateAuthorityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupCertificateAuthorityResponse
--  
-- @param GroupCertificateAuthorityArn [__string] Arn of the group certificate authority.
function M.CreateGroupCertificateAuthorityResponse(GroupCertificateAuthorityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupCertificateAuthorityResponse")
	local t = { 
		["GroupCertificateAuthorityArn"] = GroupCertificateAuthorityArn,
	}
	M.AssertCreateGroupCertificateAuthorityResponse(t)
	return t
end

local GetDeploymentStatusRequest_keys = { "DeploymentId" = true, "GroupId" = true, nil }

function M.AssertGetDeploymentStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentStatusRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["DeploymentId"], "Expected key DeploymentId to exist in table")
	if struct["DeploymentId"] then M.Assert__string(struct["DeploymentId"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(GetDeploymentStatusRequest_keys[k], "GetDeploymentStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentStatusRequest
--  
-- @param DeploymentId [__string] the deployment Id
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
-- Required parameter: DeploymentId
function M.GetDeploymentStatusRequest(DeploymentId, GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentStatusRequest")
	local t = { 
		["DeploymentId"] = DeploymentId,
		["GroupId"] = GroupId,
	}
	M.AssertGetDeploymentStatusRequest(t)
	return t
end

local FunctionConfigurationEnvironment_keys = { "Variables" = true, nil }

function M.AssertFunctionConfigurationEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionConfigurationEnvironment to be of type 'table'")
	if struct["Variables"] then M.AssertMapOf__string(struct["Variables"]) end
	for k,_ in pairs(struct) do
		assert(FunctionConfigurationEnvironment_keys[k], "FunctionConfigurationEnvironment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionConfigurationEnvironment
-- Environment of the function configuration
-- @param Variables [MapOf__string] Environment variables for the lambda function.
function M.FunctionConfigurationEnvironment(Variables, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionConfigurationEnvironment")
	local t = { 
		["Variables"] = Variables,
	}
	M.AssertFunctionConfigurationEnvironment(t)
	return t
end

local Function_keys = { "FunctionConfiguration" = true, "Id" = true, "FunctionArn" = true, nil }

function M.AssertFunction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Function to be of type 'table'")
	if struct["FunctionConfiguration"] then M.AssertFunctionConfiguration(struct["FunctionConfiguration"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["FunctionArn"] then M.Assert__string(struct["FunctionArn"]) end
	for k,_ in pairs(struct) do
		assert(Function_keys[k], "Function contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Function
-- Information on function
-- @param FunctionConfiguration [FunctionConfiguration] Configuration of the function
-- @param Id [__string] Id of the function in this version.
-- @param FunctionArn [__string] Arn of the Lambda function.
function M.Function(FunctionConfiguration, Id, FunctionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Function")
	local t = { 
		["FunctionConfiguration"] = FunctionConfiguration,
		["Id"] = Id,
		["FunctionArn"] = FunctionArn,
	}
	M.AssertFunction(t)
	return t
end

local CreateGroupVersionRequest_keys = { "AmznClientToken" = true, "DeviceDefinitionVersionArn" = true, "SubscriptionDefinitionVersionArn" = true, "FunctionDefinitionVersionArn" = true, "CoreDefinitionVersionArn" = true, "LoggerDefinitionVersionArn" = true, "GroupId" = true, nil }

function M.AssertCreateGroupVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupVersionRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["DeviceDefinitionVersionArn"] then M.Assert__string(struct["DeviceDefinitionVersionArn"]) end
	if struct["SubscriptionDefinitionVersionArn"] then M.Assert__string(struct["SubscriptionDefinitionVersionArn"]) end
	if struct["FunctionDefinitionVersionArn"] then M.Assert__string(struct["FunctionDefinitionVersionArn"]) end
	if struct["CoreDefinitionVersionArn"] then M.Assert__string(struct["CoreDefinitionVersionArn"]) end
	if struct["LoggerDefinitionVersionArn"] then M.Assert__string(struct["LoggerDefinitionVersionArn"]) end
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupVersionRequest_keys[k], "CreateGroupVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupVersionRequest
--  
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param DeviceDefinitionVersionArn [__string] Device definition version arn for this group.
-- @param SubscriptionDefinitionVersionArn [__string] Subscription definition version arn for this group.
-- @param FunctionDefinitionVersionArn [__string] Function definition version arn for this group.
-- @param CoreDefinitionVersionArn [__string] Core definition version arn for this group.
-- @param LoggerDefinitionVersionArn [__string] Logger definitionv ersion arn for this group.
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.CreateGroupVersionRequest(AmznClientToken, DeviceDefinitionVersionArn, SubscriptionDefinitionVersionArn, FunctionDefinitionVersionArn, CoreDefinitionVersionArn, LoggerDefinitionVersionArn, GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupVersionRequest")
	local t = { 
		["AmznClientToken"] = AmznClientToken,
		["DeviceDefinitionVersionArn"] = DeviceDefinitionVersionArn,
		["SubscriptionDefinitionVersionArn"] = SubscriptionDefinitionVersionArn,
		["FunctionDefinitionVersionArn"] = FunctionDefinitionVersionArn,
		["CoreDefinitionVersionArn"] = CoreDefinitionVersionArn,
		["LoggerDefinitionVersionArn"] = LoggerDefinitionVersionArn,
		["GroupId"] = GroupId,
	}
	M.AssertCreateGroupVersionRequest(t)
	return t
end

local DeleteGroupResponse_keys = { nil }

function M.AssertDeleteGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteGroupResponse_keys[k], "DeleteGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupResponse
--  
function M.DeleteGroupResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupResponse")
	local t = { 
	}
	M.AssertDeleteGroupResponse(t)
	return t
end

local CreateFunctionDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateFunctionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateFunctionDefinitionResponse_keys[k], "CreateFunctionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.CreateFunctionDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateFunctionDefinitionResponse(t)
	return t
end

local AssociateRoleToGroupResponse_keys = { "AssociatedAt" = true, nil }

function M.AssertAssociateRoleToGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateRoleToGroupResponse to be of type 'table'")
	if struct["AssociatedAt"] then M.Assert__string(struct["AssociatedAt"]) end
	for k,_ in pairs(struct) do
		assert(AssociateRoleToGroupResponse_keys[k], "AssociateRoleToGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateRoleToGroupResponse
--  
-- @param AssociatedAt [__string] Time the role arn was associated to your group.
function M.AssociateRoleToGroupResponse(AssociatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateRoleToGroupResponse")
	local t = { 
		["AssociatedAt"] = AssociatedAt,
	}
	M.AssertAssociateRoleToGroupResponse(t)
	return t
end

local CreateLoggerDefinitionResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateLoggerDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoggerDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateLoggerDefinitionResponse_keys[k], "CreateLoggerDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoggerDefinitionResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.CreateLoggerDefinitionResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoggerDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateLoggerDefinitionResponse(t)
	return t
end

local UpdateConnectivityInfoResponse_keys = { "Message" = true, "Version" = true, nil }

function M.AssertUpdateConnectivityInfoResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConnectivityInfoResponse to be of type 'table'")
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	for k,_ in pairs(struct) do
		assert(UpdateConnectivityInfoResponse_keys[k], "UpdateConnectivityInfoResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConnectivityInfoResponse
--  
-- @param Message [__string] Response Text
-- @param Version [__string] New Version
function M.UpdateConnectivityInfoResponse(Message, Version, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConnectivityInfoResponse")
	local t = { 
		["Message"] = Message,
		["Version"] = Version,
	}
	M.AssertUpdateConnectivityInfoResponse(t)
	return t
end

local CreateDeviceDefinitionVersionRequest_keys = { "DeviceDefinitionId" = true, "AmznClientToken" = true, "Devices" = true, nil }

function M.AssertCreateDeviceDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeviceDefinitionVersionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then M.Assert__string(struct["DeviceDefinitionId"]) end
	if struct["AmznClientToken"] then M.Assert__string(struct["AmznClientToken"]) end
	if struct["Devices"] then M.AssertListOfDevice(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(CreateDeviceDefinitionVersionRequest_keys[k], "CreateDeviceDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeviceDefinitionVersionRequest
--  
-- @param DeviceDefinitionId [__string] device definition Id
-- @param AmznClientToken [__string] The client token used to request idempotent operations.
-- @param Devices [ListOfDevice] Devices in the definition version.
-- Required parameter: DeviceDefinitionId
function M.CreateDeviceDefinitionVersionRequest(DeviceDefinitionId, AmznClientToken, Devices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeviceDefinitionVersionRequest")
	local t = { 
		["DeviceDefinitionId"] = DeviceDefinitionId,
		["AmznClientToken"] = AmznClientToken,
		["Devices"] = Devices,
	}
	M.AssertCreateDeviceDefinitionVersionRequest(t)
	return t
end

local GetLoggerDefinitionVersionResponse_keys = { "Definition" = true, "Version" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertGetLoggerDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggerDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then M.AssertLoggerDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(GetLoggerDefinitionVersionResponse_keys[k], "GetLoggerDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggerDefinitionVersionResponse
--  
-- @param Definition [LoggerDefinitionVersion] Information on definition
-- @param Version [__string] Version of the logger definition version.
-- @param CreationTimestamp [__string] Timestamp of when the logger definition version was created.
-- @param Id [__string] Id of the logger definition the version belongs to.
-- @param Arn [__string] Arn of the logger definition version.
function M.GetLoggerDefinitionVersionResponse(Definition, Version, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggerDefinitionVersionResponse")
	local t = { 
		["Definition"] = Definition,
		["Version"] = Version,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertGetLoggerDefinitionVersionResponse(t)
	return t
end

local UpdateDeviceDefinitionResponse_keys = { nil }

function M.AssertUpdateDeviceDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateDeviceDefinitionResponse_keys[k], "UpdateDeviceDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceDefinitionResponse
--  
function M.UpdateDeviceDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeviceDefinitionResponse")
	local t = { 
	}
	M.AssertUpdateDeviceDefinitionResponse(t)
	return t
end

local ListFunctionDefinitionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListFunctionDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then M.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListFunctionDefinitionsRequest_keys[k], "ListFunctionDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionDefinitionsRequest
--  
-- @param NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListFunctionDefinitionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionDefinitionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListFunctionDefinitionsRequest(t)
	return t
end

local ListLoggerDefinitionVersionsResponse_keys = { "NextToken" = true, "Versions" = true, nil }

function M.AssertListLoggerDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggerDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then M.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListLoggerDefinitionVersionsResponse_keys[k], "ListLoggerDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggerDefinitionVersionsResponse
--  
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Versions [ListOfVersionInformation] Versions
function M.ListLoggerDefinitionVersionsResponse(NextToken, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLoggerDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Versions"] = Versions,
	}
	M.AssertListLoggerDefinitionVersionsResponse(t)
	return t
end

local GetServiceRoleForAccountResponse_keys = { "AssociatedAt" = true, "RoleArn" = true, nil }

function M.AssertGetServiceRoleForAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceRoleForAccountResponse to be of type 'table'")
	if struct["AssociatedAt"] then M.Assert__string(struct["AssociatedAt"]) end
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(GetServiceRoleForAccountResponse_keys[k], "GetServiceRoleForAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceRoleForAccountResponse
--  
-- @param AssociatedAt [__string] Time when the service role was associated to the account.
-- @param RoleArn [__string] Role arn which is associated to the account.
function M.GetServiceRoleForAccountResponse(AssociatedAt, RoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServiceRoleForAccountResponse")
	local t = { 
		["AssociatedAt"] = AssociatedAt,
		["RoleArn"] = RoleArn,
	}
	M.AssertGetServiceRoleForAccountResponse(t)
	return t
end

local GetLoggerDefinitionRequest_keys = { "LoggerDefinitionId" = true, nil }

function M.AssertGetLoggerDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggerDefinitionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then M.Assert__string(struct["LoggerDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(GetLoggerDefinitionRequest_keys[k], "GetLoggerDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggerDefinitionRequest
--  
-- @param LoggerDefinitionId [__string] logger definition Id
-- Required parameter: LoggerDefinitionId
function M.GetLoggerDefinitionRequest(LoggerDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggerDefinitionRequest")
	local t = { 
		["LoggerDefinitionId"] = LoggerDefinitionId,
	}
	M.AssertGetLoggerDefinitionRequest(t)
	return t
end

local GetGroupVersionRequest_keys = { "GroupId" = true, "GroupVersionId" = true, nil }

function M.AssertGetGroupVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupVersionRequest to be of type 'table'")
	assert(struct["GroupVersionId"], "Expected key GroupVersionId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then M.Assert__string(struct["GroupId"]) end
	if struct["GroupVersionId"] then M.Assert__string(struct["GroupVersionId"]) end
	for k,_ in pairs(struct) do
		assert(GetGroupVersionRequest_keys[k], "GetGroupVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupVersionRequest
--  
-- @param GroupId [__string] The unique Id of the AWS Greengrass Group
-- @param GroupVersionId [__string] Group version Id
-- Required parameter: GroupVersionId
-- Required parameter: GroupId
function M.GetGroupVersionRequest(GroupId, GroupVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupVersionRequest")
	local t = { 
		["GroupId"] = GroupId,
		["GroupVersionId"] = GroupVersionId,
	}
	M.AssertGetGroupVersionRequest(t)
	return t
end

local ListDeploymentsResponse_keys = { "NextToken" = true, "Deployments" = true, nil }

function M.AssertListDeploymentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Deployments"] then M.AssertDeployments(struct["Deployments"]) end
	for k,_ in pairs(struct) do
		assert(ListDeploymentsResponse_keys[k], "ListDeploymentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentsResponse
--  
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Deployments [Deployments] Information on deployments
function M.ListDeploymentsResponse(NextToken, Deployments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Deployments"] = Deployments,
	}
	M.AssertListDeploymentsResponse(t)
	return t
end

local ListDeviceDefinitionVersionsResponse_keys = { "NextToken" = true, "Versions" = true, nil }

function M.AssertListDeviceDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then M.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(ListDeviceDefinitionVersionsResponse_keys[k], "ListDeviceDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceDefinitionVersionsResponse
--  
-- @param NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param Versions [ListOfVersionInformation] Versions
function M.ListDeviceDefinitionVersionsResponse(NextToken, Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeviceDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Versions"] = Versions,
	}
	M.AssertListDeviceDefinitionVersionsResponse(t)
	return t
end

local CreateGroupResponse_keys = { "LatestVersionArn" = true, "Name" = true, "LastUpdatedTimestamp" = true, "LatestVersion" = true, "CreationTimestamp" = true, "Id" = true, "Arn" = true, nil }

function M.AssertCreateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupResponse to be of type 'table'")
	if struct["LatestVersionArn"] then M.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then M.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then M.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then M.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Arn"] then M.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(CreateGroupResponse_keys[k], "CreateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupResponse
--  
-- @param LatestVersionArn [__string] Latest version arn of the definition.
-- @param Name [__string] Name of the definition.
-- @param LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param LatestVersion [__string] Last version of the definition.
-- @param CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param Id [__string] Id of the definition.
-- @param Arn [__string] Arn of the definition.
function M.CreateGroupResponse(LatestVersionArn, Name, LastUpdatedTimestamp, LatestVersion, CreationTimestamp, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupResponse")
	local t = { 
		["LatestVersionArn"] = LatestVersionArn,
		["Name"] = Name,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["LatestVersion"] = LatestVersion,
		["CreationTimestamp"] = CreationTimestamp,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertCreateGroupResponse(t)
	return t
end

function M.AssertLoggerLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected LoggerLevel to be of type 'string'")
end

--  
function M.LoggerLevel(str)
	M.AssertLoggerLevel(str)
	return str
end

function M.AssertLoggerComponent(str)
	assert(str)
	assert(type(str) == "string", "Expected LoggerComponent to be of type 'string'")
end

--  
function M.LoggerComponent(str)
	M.AssertLoggerComponent(str)
	return str
end

function M.AssertDeploymentType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentType to be of type 'string'")
end

--  
function M.DeploymentType(str)
	M.AssertDeploymentType(str)
	return str
end

function M.Assert__string(str)
	assert(str)
	assert(type(str) == "string", "Expected __string to be of type 'string'")
end

--  
function M.__string(str)
	M.Assert__string(str)
	return str
end

function M.AssertLoggerType(str)
	assert(str)
	assert(type(str) == "string", "Expected LoggerType to be of type 'string'")
end

--  
function M.LoggerType(str)
	M.AssertLoggerType(str)
	return str
end

function M.Assert__double(double)
	assert(double)
	assert(type(double) == "number", "Expected __double to be of type 'number'")
end

function M.__double(double)
	M.Assert__double(double)
	return double
end

function M.Assert__integer(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.__integer(integer)
	M.Assert__integer(integer)
	return integer
end

function M.Assert__boolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected __boolean to be of type 'boolean'")
end

function M.__boolean(boolean)
	M.Assert__boolean(boolean)
	return boolean
end

function M.AssertMapOf__string(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOf__string to be of type 'table'")
	for k,v in pairs(map) do
		M.Assert__string(k)
		M.Assert__string(v)
	end
end

function M.MapOf__string(map)
	M.AssertMapOf__string(map)
	return map
end

function M.Assert__timestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestamp to be of type 'string'")
end

function M.__timestamp(timestamp)
	M.Assert__timestamp(timestamp)
	return timestamp
end

function M.AssertListOfLogger(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfLogger to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLogger(v)
	end
end

--  
-- List of Logger objects
function M.ListOfLogger(list)
	M.AssertListOfLogger(list)
	return list
end

function M.AssertDeployments(list)
	assert(list)
	assert(type(list) == "table", "Expected Deployments to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDeployment(v)
	end
end

--  
-- List of Deployment objects
function M.Deployments(list)
	M.AssertDeployments(list)
	return list
end

function M.AssertListOfCore(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfCore to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCore(v)
	end
end

--  
-- List of Core objects
function M.ListOfCore(list)
	M.AssertListOfCore(list)
	return list
end

function M.AssertListOfFunction(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfFunction to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFunction(v)
	end
end

--  
-- List of Function objects
function M.ListOfFunction(list)
	M.AssertListOfFunction(list)
	return list
end

function M.AssertListOfGroupInformation(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfGroupInformation to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGroupInformation(v)
	end
end

--  
-- List of GroupInformation objects
function M.ListOfGroupInformation(list)
	M.AssertListOfGroupInformation(list)
	return list
end

function M.AssertErrorDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ErrorDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertErrorDetail(v)
	end
end

-- Error Details
-- List of ErrorDetail objects
function M.ErrorDetails(list)
	M.AssertErrorDetails(list)
	return list
end

function M.AssertListOfDefinitionInformation(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDefinitionInformation to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDefinitionInformation(v)
	end
end

--  
-- List of DefinitionInformation objects
function M.ListOfDefinitionInformation(list)
	M.AssertListOfDefinitionInformation(list)
	return list
end

function M.AssertListOfDevice(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDevice to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDevice(v)
	end
end

--  
-- List of Device objects
function M.ListOfDevice(list)
	M.AssertListOfDevice(list)
	return list
end

function M.AssertListOfConnectivityInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfConnectivityInfo to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertConnectivityInfo(v)
	end
end

--  
-- List of ConnectivityInfo objects
function M.ListOfConnectivityInfo(list)
	M.AssertListOfConnectivityInfo(list)
	return list
end

function M.AssertListOfSubscription(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSubscription to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubscription(v)
	end
end

--  
-- List of Subscription objects
function M.ListOfSubscription(list)
	M.AssertListOfSubscription(list)
	return list
end

function M.AssertListOfVersionInformation(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfVersionInformation to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVersionInformation(v)
	end
end

--  
-- List of VersionInformation objects
function M.ListOfVersionInformation(list)
	M.AssertListOfVersionInformation(list)
	return list
end

function M.AssertListOfGroupCertificateAuthorityProperties(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfGroupCertificateAuthorityProperties to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGroupCertificateAuthorityProperties(v)
	end
end

--  
-- List of GroupCertificateAuthorityProperties objects
function M.ListOfGroupCertificateAuthorityProperties(list)
	M.AssertListOfGroupCertificateAuthorityProperties(list)
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
			return "greengrass.amazonaws.com"
		end
	end
	local ss = { "greengrass" }
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
--- GetDeviceDefinitionVersion
-- @param GetDeviceDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeviceDefinitionVersionAsync(GetDeviceDefinitionVersionRequest, cb)
	assert(GetDeviceDefinitionVersionRequest, "You must provide a GetDeviceDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDeviceDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", GetDeviceDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeviceDefinitionVersions
-- @param ListDeviceDefinitionVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeviceDefinitionVersionsAsync(ListDeviceDefinitionVersionsRequest, cb)
	assert(ListDeviceDefinitionVersionsRequest, "You must provide a ListDeviceDefinitionVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDeviceDefinitionVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/devices/{DeviceDefinitionId}/versions", ListDeviceDefinitionVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateRoleToGroup
-- @param AssociateRoleToGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateRoleToGroupAsync(AssociateRoleToGroupRequest, cb)
	assert(AssociateRoleToGroupRequest, "You must provide a AssociateRoleToGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AssociateRoleToGroup",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/role", AssociateRoleToGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSubscriptionDefinitionVersions
-- @param ListSubscriptionDefinitionVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSubscriptionDefinitionVersionsAsync(ListSubscriptionDefinitionVersionsRequest, cb)
	assert(ListSubscriptionDefinitionVersionsRequest, "You must provide a ListSubscriptionDefinitionVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListSubscriptionDefinitionVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", ListSubscriptionDefinitionVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCoreDefinitions
-- @param ListCoreDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCoreDefinitionsAsync(ListCoreDefinitionsRequest, cb)
	assert(ListCoreDefinitionsRequest, "You must provide a ListCoreDefinitionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListCoreDefinitions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/cores", ListCoreDefinitionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGroupVersions
-- @param ListGroupVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGroupVersionsAsync(ListGroupVersionsRequest, cb)
	assert(ListGroupVersionsRequest, "You must provide a ListGroupVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListGroupVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/versions", ListGroupVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateCoreDefinition
-- @param UpdateCoreDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateCoreDefinitionAsync(UpdateCoreDefinitionRequest, cb)
	assert(UpdateCoreDefinitionRequest, "You must provide a UpdateCoreDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateCoreDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/cores/{CoreDefinitionId}", UpdateCoreDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCoreDefinition
-- @param CreateCoreDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCoreDefinitionAsync(CreateCoreDefinitionRequest, cb)
	assert(CreateCoreDefinitionRequest, "You must provide a CreateCoreDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCoreDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/cores", CreateCoreDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSubscriptionDefinition
-- @param GetSubscriptionDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSubscriptionDefinitionAsync(GetSubscriptionDefinitionRequest, cb)
	assert(GetSubscriptionDefinitionRequest, "You must provide a GetSubscriptionDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSubscriptionDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", GetSubscriptionDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeploymentStatus
-- @param GetDeploymentStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeploymentStatusAsync(GetDeploymentStatusRequest, cb)
	assert(GetDeploymentStatusRequest, "You must provide a GetDeploymentStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDeploymentStatus",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", GetDeploymentStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeviceDefinitions
-- @param ListDeviceDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeviceDefinitionsAsync(ListDeviceDefinitionsRequest, cb)
	assert(ListDeviceDefinitionsRequest, "You must provide a ListDeviceDefinitionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDeviceDefinitions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/devices", ListDeviceDefinitionsRequest, headers, M.metadata, cb)
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
		request_handler(uri .. "/greengrass/groups", CreateGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetGroupCertificateAuthority
-- @param GetGroupCertificateAuthorityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGroupCertificateAuthorityAsync(GetGroupCertificateAuthorityRequest, cb)
	assert(GetGroupCertificateAuthorityRequest, "You must provide a GetGroupCertificateAuthorityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetGroupCertificateAuthority",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", GetGroupCertificateAuthorityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeployment
-- @param CreateDeploymentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeploymentAsync(CreateDeploymentRequest, cb)
	assert(CreateDeploymentRequest, "You must provide a CreateDeploymentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDeployment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/deployments", CreateDeploymentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSubscriptionDefinitions
-- @param ListSubscriptionDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListSubscriptionDefinitionsAsync(ListSubscriptionDefinitionsRequest, cb)
	assert(ListSubscriptionDefinitionsRequest, "You must provide a ListSubscriptionDefinitionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListSubscriptionDefinitions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/subscriptions", ListSubscriptionDefinitionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDeviceDefinition
-- @param UpdateDeviceDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDeviceDefinitionAsync(UpdateDeviceDefinitionRequest, cb)
	assert(UpdateDeviceDefinitionRequest, "You must provide a UpdateDeviceDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateDeviceDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/devices/{DeviceDefinitionId}", UpdateDeviceDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListLoggerDefinitionVersions
-- @param ListLoggerDefinitionVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListLoggerDefinitionVersionsAsync(ListLoggerDefinitionVersionsRequest, cb)
	assert(ListLoggerDefinitionVersionsRequest, "You must provide a ListLoggerDefinitionVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListLoggerDefinitionVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", ListLoggerDefinitionVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeviceDefinition
-- @param CreateDeviceDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeviceDefinitionAsync(CreateDeviceDefinitionRequest, cb)
	assert(CreateDeviceDefinitionRequest, "You must provide a CreateDeviceDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDeviceDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/devices", CreateDeviceDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AssociateServiceRoleToAccount
-- @param AssociateServiceRoleToAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AssociateServiceRoleToAccountAsync(AssociateServiceRoleToAccountRequest, cb)
	assert(AssociateServiceRoleToAccountRequest, "You must provide a AssociateServiceRoleToAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AssociateServiceRoleToAccount",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/servicerole", AssociateServiceRoleToAccountRequest, headers, M.metadata, cb)
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

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}", DeleteGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDeviceDefinitionVersion
-- @param CreateDeviceDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDeviceDefinitionVersionAsync(CreateDeviceDefinitionVersionRequest, cb)
	assert(CreateDeviceDefinitionVersionRequest, "You must provide a CreateDeviceDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateDeviceDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/devices/{DeviceDefinitionId}/versions", CreateDeviceDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCoreDefinition
-- @param GetCoreDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCoreDefinitionAsync(GetCoreDefinitionRequest, cb)
	assert(GetCoreDefinitionRequest, "You must provide a GetCoreDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCoreDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/cores/{CoreDefinitionId}", GetCoreDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSubscriptionDefinitionVersion
-- @param GetSubscriptionDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSubscriptionDefinitionVersionAsync(GetSubscriptionDefinitionVersionRequest, cb)
	assert(GetSubscriptionDefinitionVersionRequest, "You must provide a GetSubscriptionDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSubscriptionDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", GetSubscriptionDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFunctionDefinitionVersions
-- @param ListFunctionDefinitionVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFunctionDefinitionVersionsAsync(ListFunctionDefinitionVersionsRequest, cb)
	assert(ListFunctionDefinitionVersionsRequest, "You must provide a ListFunctionDefinitionVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListFunctionDefinitionVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/functions/{FunctionDefinitionId}/versions", ListFunctionDefinitionVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetFunctionDefinition
-- @param GetFunctionDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFunctionDefinitionAsync(GetFunctionDefinitionRequest, cb)
	assert(GetFunctionDefinitionRequest, "You must provide a GetFunctionDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetFunctionDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/functions/{FunctionDefinitionId}", GetFunctionDefinitionRequest, headers, M.metadata, cb)
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

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}", GetGroupRequest, headers, M.metadata, cb)
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

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}", UpdateGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCoreDefinition
-- @param DeleteCoreDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCoreDefinitionAsync(DeleteCoreDefinitionRequest, cb)
	assert(DeleteCoreDefinitionRequest, "You must provide a DeleteCoreDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCoreDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/cores/{CoreDefinitionId}", DeleteCoreDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateGroupVersion
-- @param CreateGroupVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGroupVersionAsync(CreateGroupVersionRequest, cb)
	assert(CreateGroupVersionRequest, "You must provide a CreateGroupVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateGroupVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/versions", CreateGroupVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLoggerDefinitionVersion
-- @param CreateLoggerDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLoggerDefinitionVersionAsync(CreateLoggerDefinitionVersionRequest, cb)
	assert(CreateLoggerDefinitionVersionRequest, "You must provide a CreateLoggerDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateLoggerDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", CreateLoggerDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeviceDefinition
-- @param GetDeviceDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeviceDefinitionAsync(GetDeviceDefinitionRequest, cb)
	assert(GetDeviceDefinitionRequest, "You must provide a GetDeviceDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetDeviceDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/devices/{DeviceDefinitionId}", GetDeviceDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetFunctionDefinitionVersion
-- @param GetFunctionDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetFunctionDefinitionVersionAsync(GetFunctionDefinitionVersionRequest, cb)
	assert(GetFunctionDefinitionVersionRequest, "You must provide a GetFunctionDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetFunctionDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", GetFunctionDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetLoggerDefinitionVersion
-- @param GetLoggerDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetLoggerDefinitionVersionAsync(GetLoggerDefinitionVersionRequest, cb)
	assert(GetLoggerDefinitionVersionRequest, "You must provide a GetLoggerDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetLoggerDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", GetLoggerDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCoreDefinitionVersion
-- @param CreateCoreDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCoreDefinitionVersionAsync(CreateCoreDefinitionVersionRequest, cb)
	assert(CreateCoreDefinitionVersionRequest, "You must provide a CreateCoreDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCoreDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/cores/{CoreDefinitionId}/versions", CreateCoreDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCoreDefinitionVersions
-- @param ListCoreDefinitionVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCoreDefinitionVersionsAsync(ListCoreDefinitionVersionsRequest, cb)
	assert(ListCoreDefinitionVersionsRequest, "You must provide a ListCoreDefinitionVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListCoreDefinitionVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/cores/{CoreDefinitionId}/versions", ListCoreDefinitionVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateGroupCertificateConfiguration
-- @param UpdateGroupCertificateConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGroupCertificateConfigurationAsync(UpdateGroupCertificateConfigurationRequest, cb)
	assert(UpdateGroupCertificateConfigurationRequest, "You must provide a UpdateGroupCertificateConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateGroupCertificateConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", UpdateGroupCertificateConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateGroupCertificateAuthority
-- @param CreateGroupCertificateAuthorityRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateGroupCertificateAuthorityAsync(CreateGroupCertificateAuthorityRequest, cb)
	assert(CreateGroupCertificateAuthorityRequest, "You must provide a CreateGroupCertificateAuthorityRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateGroupCertificateAuthority",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/certificateauthorities", CreateGroupCertificateAuthorityRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetServiceRoleForAccount
-- @param GetServiceRoleForAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetServiceRoleForAccountAsync(GetServiceRoleForAccountRequest, cb)
	assert(GetServiceRoleForAccountRequest, "You must provide a GetServiceRoleForAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetServiceRoleForAccount",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/servicerole", GetServiceRoleForAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateConnectivityInfo
-- @param UpdateConnectivityInfoRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateConnectivityInfoAsync(UpdateConnectivityInfoRequest, cb)
	assert(UpdateConnectivityInfoRequest, "You must provide a UpdateConnectivityInfoRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateConnectivityInfo",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/things/{ThingName}/connectivityInfo", UpdateConnectivityInfoRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateRoleFromGroup
-- @param DisassociateRoleFromGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateRoleFromGroupAsync(DisassociateRoleFromGroupRequest, cb)
	assert(DisassociateRoleFromGroupRequest, "You must provide a DisassociateRoleFromGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisassociateRoleFromGroup",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/role", DisassociateRoleFromGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLoggerDefinition
-- @param CreateLoggerDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLoggerDefinitionAsync(CreateLoggerDefinitionRequest, cb)
	assert(CreateLoggerDefinitionRequest, "You must provide a CreateLoggerDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateLoggerDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/loggers", CreateLoggerDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListGroupCertificateAuthorities
-- @param ListGroupCertificateAuthoritiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListGroupCertificateAuthoritiesAsync(ListGroupCertificateAuthoritiesRequest, cb)
	assert(ListGroupCertificateAuthoritiesRequest, "You must provide a ListGroupCertificateAuthoritiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListGroupCertificateAuthorities",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/certificateauthorities", ListGroupCertificateAuthoritiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSubscriptionDefinition
-- @param UpdateSubscriptionDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSubscriptionDefinitionAsync(UpdateSubscriptionDefinitionRequest, cb)
	assert(UpdateSubscriptionDefinitionRequest, "You must provide a UpdateSubscriptionDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateSubscriptionDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", UpdateSubscriptionDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSubscriptionDefinition
-- @param DeleteSubscriptionDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSubscriptionDefinitionAsync(DeleteSubscriptionDefinitionRequest, cb)
	assert(DeleteSubscriptionDefinitionRequest, "You must provide a DeleteSubscriptionDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSubscriptionDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", DeleteSubscriptionDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateFunctionDefinitionVersion
-- @param CreateFunctionDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFunctionDefinitionVersionAsync(CreateFunctionDefinitionVersionRequest, cb)
	assert(CreateFunctionDefinitionVersionRequest, "You must provide a CreateFunctionDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateFunctionDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/functions/{FunctionDefinitionId}/versions", CreateFunctionDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDeployments
-- @param ListDeploymentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDeploymentsAsync(ListDeploymentsRequest, cb)
	assert(ListDeploymentsRequest, "You must provide a ListDeploymentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListDeployments",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/deployments", ListDeploymentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetGroupVersion
-- @param GetGroupVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGroupVersionAsync(GetGroupVersionRequest, cb)
	assert(GetGroupVersionRequest, "You must provide a GetGroupVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetGroupVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", GetGroupVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DisassociateServiceRoleFromAccount
-- @param DisassociateServiceRoleFromAccountRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisassociateServiceRoleFromAccountAsync(DisassociateServiceRoleFromAccountRequest, cb)
	assert(DisassociateServiceRoleFromAccountRequest, "You must provide a DisassociateServiceRoleFromAccountRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DisassociateServiceRoleFromAccount",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/greengrass/servicerole", DisassociateServiceRoleFromAccountRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCoreDefinitionVersion
-- @param GetCoreDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCoreDefinitionVersionAsync(GetCoreDefinitionVersionRequest, cb)
	assert(GetCoreDefinitionVersionRequest, "You must provide a GetCoreDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCoreDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", GetCoreDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFunctionDefinitions
-- @param ListFunctionDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFunctionDefinitionsAsync(ListFunctionDefinitionsRequest, cb)
	assert(ListFunctionDefinitionsRequest, "You must provide a ListFunctionDefinitionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListFunctionDefinitions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/functions", ListFunctionDefinitionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetGroupCertificateConfiguration
-- @param GetGroupCertificateConfigurationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGroupCertificateConfigurationAsync(GetGroupCertificateConfigurationRequest, cb)
	assert(GetGroupCertificateConfigurationRequest, "You must provide a GetGroupCertificateConfigurationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetGroupCertificateConfiguration",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", GetGroupCertificateConfigurationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteFunctionDefinition
-- @param DeleteFunctionDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteFunctionDefinitionAsync(DeleteFunctionDefinitionRequest, cb)
	assert(DeleteFunctionDefinitionRequest, "You must provide a DeleteFunctionDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteFunctionDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/functions/{FunctionDefinitionId}", DeleteFunctionDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAssociatedRole
-- @param GetAssociatedRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAssociatedRoleAsync(GetAssociatedRoleRequest, cb)
	assert(GetAssociatedRoleRequest, "You must provide a GetAssociatedRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetAssociatedRole",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups/{GroupId}/role", GetAssociatedRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateLoggerDefinition
-- @param UpdateLoggerDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateLoggerDefinitionAsync(UpdateLoggerDefinitionRequest, cb)
	assert(UpdateLoggerDefinitionRequest, "You must provide a UpdateLoggerDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateLoggerDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/loggers/{LoggerDefinitionId}", UpdateLoggerDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateFunctionDefinition
-- @param CreateFunctionDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateFunctionDefinitionAsync(CreateFunctionDefinitionRequest, cb)
	assert(CreateFunctionDefinitionRequest, "You must provide a CreateFunctionDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateFunctionDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/functions", CreateFunctionDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetLoggerDefinition
-- @param GetLoggerDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetLoggerDefinitionAsync(GetLoggerDefinitionRequest, cb)
	assert(GetLoggerDefinitionRequest, "You must provide a GetLoggerDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetLoggerDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/loggers/{LoggerDefinitionId}", GetLoggerDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateFunctionDefinition
-- @param UpdateFunctionDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateFunctionDefinitionAsync(UpdateFunctionDefinitionRequest, cb)
	assert(UpdateFunctionDefinitionRequest, "You must provide a UpdateFunctionDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateFunctionDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/functions/{FunctionDefinitionId}", UpdateFunctionDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListLoggerDefinitions
-- @param ListLoggerDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListLoggerDefinitionsAsync(ListLoggerDefinitionsRequest, cb)
	assert(ListLoggerDefinitionsRequest, "You must provide a ListLoggerDefinitionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListLoggerDefinitions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/loggers", ListLoggerDefinitionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSubscriptionDefinition
-- @param CreateSubscriptionDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSubscriptionDefinitionAsync(CreateSubscriptionDefinitionRequest, cb)
	assert(CreateSubscriptionDefinitionRequest, "You must provide a CreateSubscriptionDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateSubscriptionDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/subscriptions", CreateSubscriptionDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetConnectivityInfo
-- @param GetConnectivityInfoRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetConnectivityInfoAsync(GetConnectivityInfoRequest, cb)
	assert(GetConnectivityInfoRequest, "You must provide a GetConnectivityInfoRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetConnectivityInfo",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/things/{ThingName}/connectivityInfo", GetConnectivityInfoRequest, headers, M.metadata, cb)
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

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/greengrass/groups", ListGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLoggerDefinition
-- @param DeleteLoggerDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLoggerDefinitionAsync(DeleteLoggerDefinitionRequest, cb)
	assert(DeleteLoggerDefinitionRequest, "You must provide a DeleteLoggerDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteLoggerDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/loggers/{LoggerDefinitionId}", DeleteLoggerDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDeviceDefinition
-- @param DeleteDeviceDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDeviceDefinitionAsync(DeleteDeviceDefinitionRequest, cb)
	assert(DeleteDeviceDefinitionRequest, "You must provide a DeleteDeviceDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteDeviceDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/devices/{DeviceDefinitionId}", DeleteDeviceDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSubscriptionDefinitionVersion
-- @param CreateSubscriptionDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSubscriptionDefinitionVersionAsync(CreateSubscriptionDefinitionVersionRequest, cb)
	assert(CreateSubscriptionDefinitionVersionRequest, "You must provide a CreateSubscriptionDefinitionVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateSubscriptionDefinitionVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", CreateSubscriptionDefinitionVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
