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

local keys = {}
local asserts = {}

keys.GroupCertificateAuthorityProperties = { ["GroupCertificateAuthorityId"] = true, ["GroupCertificateAuthorityArn"] = true, nil }

function asserts.AssertGroupCertificateAuthorityProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupCertificateAuthorityProperties to be of type 'table'")
	if struct["GroupCertificateAuthorityId"] then asserts.Assert__string(struct["GroupCertificateAuthorityId"]) end
	if struct["GroupCertificateAuthorityArn"] then asserts.Assert__string(struct["GroupCertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupCertificateAuthorityProperties[k], "GroupCertificateAuthorityProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupCertificateAuthorityProperties
-- Information on group certificate authority properties
-- @param _GroupCertificateAuthorityId [__string] Id of the certificate authority for the group.
-- @param _GroupCertificateAuthorityArn [__string] Arn of the certificate authority for the group.
function M.GroupCertificateAuthorityProperties(_GroupCertificateAuthorityId, _GroupCertificateAuthorityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupCertificateAuthorityProperties")
	local t = { 
		["GroupCertificateAuthorityId"] = _GroupCertificateAuthorityId,
		["GroupCertificateAuthorityArn"] = _GroupCertificateAuthorityArn,
	}
	asserts.AssertGroupCertificateAuthorityProperties(t)
	return t
end

keys.GetGroupCertificateConfigurationRequest = { ["GroupId"] = true, nil }

function asserts.AssertGetGroupCertificateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupCertificateConfigurationRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupCertificateConfigurationRequest[k], "GetGroupCertificateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupCertificateConfigurationRequest
--  
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.GetGroupCertificateConfigurationRequest(_GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupCertificateConfigurationRequest")
	local t = { 
		["GroupId"] = _GroupId,
	}
	asserts.AssertGetGroupCertificateConfigurationRequest(t)
	return t
end

keys.ListSubscriptionDefinitionVersionsRequest = { ["SubscriptionDefinitionId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSubscriptionDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionDefinitionVersionsRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then asserts.Assert__string(struct["SubscriptionDefinitionId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscriptionDefinitionVersionsRequest[k], "ListSubscriptionDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionDefinitionVersionsRequest
--  
-- @param _SubscriptionDefinitionId [__string] subscription definition Id
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: SubscriptionDefinitionId
function M.ListSubscriptionDefinitionVersionsRequest(_SubscriptionDefinitionId, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionDefinitionVersionsRequest")
	local t = { 
		["SubscriptionDefinitionId"] = _SubscriptionDefinitionId,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListSubscriptionDefinitionVersionsRequest(t)
	return t
end

keys.BadRequestException = { ["ErrorDetails"] = true, ["Message"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["ErrorDetails"] then asserts.AssertErrorDetails(struct["ErrorDetails"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- General Error
-- @param _ErrorDetails [ErrorDetails] Error Details
-- @param _Message [__string] Message
function M.BadRequestException(_ErrorDetails, _Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequestException")
	local t = { 
		["ErrorDetails"] = _ErrorDetails,
		["Message"] = _Message,
	}
	asserts.AssertBadRequestException(t)
	return t
end

keys.AssociateServiceRoleToAccountRequest = { ["RoleArn"] = true, nil }

function asserts.AssertAssociateServiceRoleToAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateServiceRoleToAccountRequest to be of type 'table'")
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateServiceRoleToAccountRequest[k], "AssociateServiceRoleToAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateServiceRoleToAccountRequest
--  
-- @param _RoleArn [__string] Role arn you wish to associate with this account.
function M.AssociateServiceRoleToAccountRequest(_RoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateServiceRoleToAccountRequest")
	local t = { 
		["RoleArn"] = _RoleArn,
	}
	asserts.AssertAssociateServiceRoleToAccountRequest(t)
	return t
end

keys.ListGroupsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsRequest[k], "ListGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListGroupsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListGroupsRequest(t)
	return t
end

keys.ListCoreDefinitionsResponse = { ["Definitions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListCoreDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCoreDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then asserts.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCoreDefinitionsResponse[k], "ListCoreDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCoreDefinitionsResponse
--  
-- @param _Definitions [ListOfDefinitionInformation] Definitions
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListCoreDefinitionsResponse(_Definitions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCoreDefinitionsResponse")
	local t = { 
		["Definitions"] = _Definitions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListCoreDefinitionsResponse(t)
	return t
end

keys.CreateDeviceDefinitionRequest = { ["AmznClientToken"] = true, ["InitialVersion"] = true, ["Name"] = true, nil }

function asserts.AssertCreateDeviceDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeviceDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then asserts.AssertDeviceDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeviceDefinitionRequest[k], "CreateDeviceDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeviceDefinitionRequest
--  
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _InitialVersion [DeviceDefinitionVersion] Information on the initial version
-- @param _Name [__string] name of the device definition
function M.CreateDeviceDefinitionRequest(_AmznClientToken, _InitialVersion, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeviceDefinitionRequest")
	local t = { 
		["AmznClientToken"] = _AmznClientToken,
		["InitialVersion"] = _InitialVersion,
		["Name"] = _Name,
	}
	asserts.AssertCreateDeviceDefinitionRequest(t)
	return t
end

keys.InternalServerErrorException = { ["ErrorDetails"] = true, ["Message"] = true, nil }

function asserts.AssertInternalServerErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerErrorException to be of type 'table'")
	if struct["ErrorDetails"] then asserts.AssertErrorDetails(struct["ErrorDetails"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerErrorException[k], "InternalServerErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerErrorException
-- General Error
-- @param _ErrorDetails [ErrorDetails] Error Details
-- @param _Message [__string] Message
function M.InternalServerErrorException(_ErrorDetails, _Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerErrorException")
	local t = { 
		["ErrorDetails"] = _ErrorDetails,
		["Message"] = _Message,
	}
	asserts.AssertInternalServerErrorException(t)
	return t
end

keys.GetServiceRoleForAccountRequest = { nil }

function asserts.AssertGetServiceRoleForAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceRoleForAccountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetServiceRoleForAccountRequest[k], "GetServiceRoleForAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceRoleForAccountRequest
--  
function M.GetServiceRoleForAccountRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServiceRoleForAccountRequest")
	local t = { 
	}
	asserts.AssertGetServiceRoleForAccountRequest(t)
	return t
end

keys.ListDeviceDefinitionVersionsRequest = { ["DeviceDefinitionId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDeviceDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceDefinitionVersionsRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then asserts.Assert__string(struct["DeviceDefinitionId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceDefinitionVersionsRequest[k], "ListDeviceDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceDefinitionVersionsRequest
--  
-- @param _DeviceDefinitionId [__string] device definition Id
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: DeviceDefinitionId
function M.ListDeviceDefinitionVersionsRequest(_DeviceDefinitionId, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeviceDefinitionVersionsRequest")
	local t = { 
		["DeviceDefinitionId"] = _DeviceDefinitionId,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListDeviceDefinitionVersionsRequest(t)
	return t
end

keys.CreateLoggerDefinitionRequest = { ["AmznClientToken"] = true, ["InitialVersion"] = true, ["Name"] = true, nil }

function asserts.AssertCreateLoggerDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoggerDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then asserts.AssertLoggerDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoggerDefinitionRequest[k], "CreateLoggerDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoggerDefinitionRequest
--  
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _InitialVersion [LoggerDefinitionVersion] Information on the initial version
-- @param _Name [__string] name of the logger definition
function M.CreateLoggerDefinitionRequest(_AmznClientToken, _InitialVersion, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoggerDefinitionRequest")
	local t = { 
		["AmznClientToken"] = _AmznClientToken,
		["InitialVersion"] = _InitialVersion,
		["Name"] = _Name,
	}
	asserts.AssertCreateLoggerDefinitionRequest(t)
	return t
end

keys.CreateSubscriptionDefinitionRequest = { ["AmznClientToken"] = true, ["InitialVersion"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSubscriptionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then asserts.AssertSubscriptionDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriptionDefinitionRequest[k], "CreateSubscriptionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionDefinitionRequest
--  
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _InitialVersion [SubscriptionDefinitionVersion] Information on the initial version
-- @param _Name [__string] name of the subscription definition
function M.CreateSubscriptionDefinitionRequest(_AmznClientToken, _InitialVersion, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionDefinitionRequest")
	local t = { 
		["AmznClientToken"] = _AmznClientToken,
		["InitialVersion"] = _InitialVersion,
		["Name"] = _Name,
	}
	asserts.AssertCreateSubscriptionDefinitionRequest(t)
	return t
end

keys.ListCoreDefinitionVersionsResponse = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertListCoreDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCoreDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCoreDefinitionVersionsResponse[k], "ListCoreDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCoreDefinitionVersionsResponse
--  
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Versions [ListOfVersionInformation] Versions
function M.ListCoreDefinitionVersionsResponse(_NextToken, _Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCoreDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Versions"] = _Versions,
	}
	asserts.AssertListCoreDefinitionVersionsResponse(t)
	return t
end

keys.ListLoggerDefinitionsResponse = { ["Definitions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListLoggerDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggerDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then asserts.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLoggerDefinitionsResponse[k], "ListLoggerDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggerDefinitionsResponse
--  
-- @param _Definitions [ListOfDefinitionInformation] Definitions
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListLoggerDefinitionsResponse(_Definitions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLoggerDefinitionsResponse")
	local t = { 
		["Definitions"] = _Definitions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListLoggerDefinitionsResponse(t)
	return t
end

keys.GetLoggerDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetLoggerDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggerDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoggerDefinitionResponse[k], "GetLoggerDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggerDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.GetLoggerDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggerDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetLoggerDefinitionResponse(t)
	return t
end

keys.GetGroupVersionResponse = { ["Definition"] = true, ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetGroupVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupVersionResponse to be of type 'table'")
	if struct["Definition"] then asserts.AssertGroupVersion(struct["Definition"]) end
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupVersionResponse[k], "GetGroupVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupVersionResponse
--  
-- @param _Definition [GroupVersion] Information on the definition
-- @param _Version [__string] Unique Id for a version of the Group.
-- @param _CreationTimestamp [__string] Timestamp when the group version was created.
-- @param _Id [__string] Id of the group version.
-- @param _Arn [__string] Arn of the group version.
function M.GetGroupVersionResponse(_Definition, _Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupVersionResponse")
	local t = { 
		["Definition"] = _Definition,
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetGroupVersionResponse(t)
	return t
end

keys.CreateGroupRequest = { ["AmznClientToken"] = true, ["InitialVersion"] = true, ["Name"] = true, nil }

function asserts.AssertCreateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupRequest to be of type 'table'")
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then asserts.AssertGroupVersion(struct["InitialVersion"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupRequest[k], "CreateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupRequest
--  
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _InitialVersion [GroupVersion] Information on the initial version
-- @param _Name [__string] name of the group
function M.CreateGroupRequest(_AmznClientToken, _InitialVersion, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupRequest")
	local t = { 
		["AmznClientToken"] = _AmznClientToken,
		["InitialVersion"] = _InitialVersion,
		["Name"] = _Name,
	}
	asserts.AssertCreateGroupRequest(t)
	return t
end

keys.GetGroupRequest = { ["GroupId"] = true, nil }

function asserts.AssertGetGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupRequest[k], "GetGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupRequest
--  
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.GetGroupRequest(_GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupRequest")
	local t = { 
		["GroupId"] = _GroupId,
	}
	asserts.AssertGetGroupRequest(t)
	return t
end

keys.UpdateSubscriptionDefinitionResponse = { nil }

function asserts.AssertUpdateSubscriptionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriptionDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateSubscriptionDefinitionResponse[k], "UpdateSubscriptionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriptionDefinitionResponse
--  
function M.UpdateSubscriptionDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubscriptionDefinitionResponse")
	local t = { 
	}
	asserts.AssertUpdateSubscriptionDefinitionResponse(t)
	return t
end

keys.AssociateServiceRoleToAccountResponse = { ["AssociatedAt"] = true, nil }

function asserts.AssertAssociateServiceRoleToAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateServiceRoleToAccountResponse to be of type 'table'")
	if struct["AssociatedAt"] then asserts.Assert__string(struct["AssociatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateServiceRoleToAccountResponse[k], "AssociateServiceRoleToAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateServiceRoleToAccountResponse
--  
-- @param _AssociatedAt [__string] Time when the service role was associated to the account.
function M.AssociateServiceRoleToAccountResponse(_AssociatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateServiceRoleToAccountResponse")
	local t = { 
		["AssociatedAt"] = _AssociatedAt,
	}
	asserts.AssertAssociateServiceRoleToAccountResponse(t)
	return t
end

keys.CreateLoggerDefinitionVersionRequest = { ["Loggers"] = true, ["LoggerDefinitionId"] = true, ["AmznClientToken"] = true, nil }

function asserts.AssertCreateLoggerDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoggerDefinitionVersionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["Loggers"] then asserts.AssertListOfLogger(struct["Loggers"]) end
	if struct["LoggerDefinitionId"] then asserts.Assert__string(struct["LoggerDefinitionId"]) end
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoggerDefinitionVersionRequest[k], "CreateLoggerDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoggerDefinitionVersionRequest
--  
-- @param _Loggers [ListOfLogger] List of loggers.
-- @param _LoggerDefinitionId [__string] logger definition Id
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- Required parameter: LoggerDefinitionId
function M.CreateLoggerDefinitionVersionRequest(_Loggers, _LoggerDefinitionId, _AmznClientToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoggerDefinitionVersionRequest")
	local t = { 
		["Loggers"] = _Loggers,
		["LoggerDefinitionId"] = _LoggerDefinitionId,
		["AmznClientToken"] = _AmznClientToken,
	}
	asserts.AssertCreateLoggerDefinitionVersionRequest(t)
	return t
end

keys.DeleteLoggerDefinitionRequest = { ["LoggerDefinitionId"] = true, nil }

function asserts.AssertDeleteLoggerDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoggerDefinitionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then asserts.Assert__string(struct["LoggerDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoggerDefinitionRequest[k], "DeleteLoggerDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoggerDefinitionRequest
--  
-- @param _LoggerDefinitionId [__string] logger definition Id
-- Required parameter: LoggerDefinitionId
function M.DeleteLoggerDefinitionRequest(_LoggerDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLoggerDefinitionRequest")
	local t = { 
		["LoggerDefinitionId"] = _LoggerDefinitionId,
	}
	asserts.AssertDeleteLoggerDefinitionRequest(t)
	return t
end

keys.ListGroupVersionsRequest = { ["NextToken"] = true, ["GroupId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListGroupVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupVersionsRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupVersionsRequest[k], "ListGroupVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupVersionsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: GroupId
function M.ListGroupVersionsRequest(_NextToken, _GroupId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupVersionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["GroupId"] = _GroupId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListGroupVersionsRequest(t)
	return t
end

keys.GetGroupCertificateAuthorityResponse = { ["PemEncodedCertificate"] = true, ["GroupCertificateAuthorityId"] = true, ["GroupCertificateAuthorityArn"] = true, nil }

function asserts.AssertGetGroupCertificateAuthorityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupCertificateAuthorityResponse to be of type 'table'")
	if struct["PemEncodedCertificate"] then asserts.Assert__string(struct["PemEncodedCertificate"]) end
	if struct["GroupCertificateAuthorityId"] then asserts.Assert__string(struct["GroupCertificateAuthorityId"]) end
	if struct["GroupCertificateAuthorityArn"] then asserts.Assert__string(struct["GroupCertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupCertificateAuthorityResponse[k], "GetGroupCertificateAuthorityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupCertificateAuthorityResponse
--  
-- @param _PemEncodedCertificate [__string] PEM encoded certificate for the group.
-- @param _GroupCertificateAuthorityId [__string] Id of the certificate authority for the group.
-- @param _GroupCertificateAuthorityArn [__string] Arn of the certificate authority for the group.
function M.GetGroupCertificateAuthorityResponse(_PemEncodedCertificate, _GroupCertificateAuthorityId, _GroupCertificateAuthorityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupCertificateAuthorityResponse")
	local t = { 
		["PemEncodedCertificate"] = _PemEncodedCertificate,
		["GroupCertificateAuthorityId"] = _GroupCertificateAuthorityId,
		["GroupCertificateAuthorityArn"] = _GroupCertificateAuthorityArn,
	}
	asserts.AssertGetGroupCertificateAuthorityResponse(t)
	return t
end

keys.CreateDeviceDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateDeviceDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeviceDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeviceDefinitionResponse[k], "CreateDeviceDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeviceDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.CreateDeviceDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeviceDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateDeviceDefinitionResponse(t)
	return t
end

keys.DeleteFunctionDefinitionResponse = { nil }

function asserts.AssertDeleteFunctionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFunctionDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteFunctionDefinitionResponse[k], "DeleteFunctionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFunctionDefinitionResponse
--  
function M.DeleteFunctionDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFunctionDefinitionResponse")
	local t = { 
	}
	asserts.AssertDeleteFunctionDefinitionResponse(t)
	return t
end

keys.CreateCoreDefinitionRequest = { ["AmznClientToken"] = true, ["InitialVersion"] = true, ["Name"] = true, nil }

function asserts.AssertCreateCoreDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCoreDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then asserts.AssertCoreDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCoreDefinitionRequest[k], "CreateCoreDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCoreDefinitionRequest
-- Information on the core definition request
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _InitialVersion [CoreDefinitionVersion] Information on the initial version
-- @param _Name [__string] name of the core definition
function M.CreateCoreDefinitionRequest(_AmznClientToken, _InitialVersion, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCoreDefinitionRequest")
	local t = { 
		["AmznClientToken"] = _AmznClientToken,
		["InitialVersion"] = _InitialVersion,
		["Name"] = _Name,
	}
	asserts.AssertCreateCoreDefinitionRequest(t)
	return t
end

keys.DisassociateServiceRoleFromAccountResponse = { ["DisassociatedAt"] = true, nil }

function asserts.AssertDisassociateServiceRoleFromAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateServiceRoleFromAccountResponse to be of type 'table'")
	if struct["DisassociatedAt"] then asserts.Assert__string(struct["DisassociatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateServiceRoleFromAccountResponse[k], "DisassociateServiceRoleFromAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateServiceRoleFromAccountResponse
--  
-- @param _DisassociatedAt [__string] Time when the service role was disassociated from the account.
function M.DisassociateServiceRoleFromAccountResponse(_DisassociatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateServiceRoleFromAccountResponse")
	local t = { 
		["DisassociatedAt"] = _DisassociatedAt,
	}
	asserts.AssertDisassociateServiceRoleFromAccountResponse(t)
	return t
end

keys.DeviceDefinitionVersion = { ["Devices"] = true, nil }

function asserts.AssertDeviceDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceDefinitionVersion to be of type 'table'")
	if struct["Devices"] then asserts.AssertListOfDevice(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceDefinitionVersion[k], "DeviceDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceDefinitionVersion
-- Information on device definition version
-- @param _Devices [ListOfDevice] Devices in the definition version.
function M.DeviceDefinitionVersion(_Devices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeviceDefinitionVersion")
	local t = { 
		["Devices"] = _Devices,
	}
	asserts.AssertDeviceDefinitionVersion(t)
	return t
end

keys.ListFunctionDefinitionVersionsRequest = { ["FunctionDefinitionId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListFunctionDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionDefinitionVersionsRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then asserts.Assert__string(struct["FunctionDefinitionId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFunctionDefinitionVersionsRequest[k], "ListFunctionDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionDefinitionVersionsRequest
--  
-- @param _FunctionDefinitionId [__string] the unique Id of the lambda definition
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: FunctionDefinitionId
function M.ListFunctionDefinitionVersionsRequest(_FunctionDefinitionId, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionDefinitionVersionsRequest")
	local t = { 
		["FunctionDefinitionId"] = _FunctionDefinitionId,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListFunctionDefinitionVersionsRequest(t)
	return t
end

keys.DisassociateRoleFromGroupResponse = { ["DisassociatedAt"] = true, nil }

function asserts.AssertDisassociateRoleFromGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateRoleFromGroupResponse to be of type 'table'")
	if struct["DisassociatedAt"] then asserts.Assert__string(struct["DisassociatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateRoleFromGroupResponse[k], "DisassociateRoleFromGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateRoleFromGroupResponse
--  
-- @param _DisassociatedAt [__string] Time when the role was disassociated from the group.
function M.DisassociateRoleFromGroupResponse(_DisassociatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateRoleFromGroupResponse")
	local t = { 
		["DisassociatedAt"] = _DisassociatedAt,
	}
	asserts.AssertDisassociateRoleFromGroupResponse(t)
	return t
end

keys.LoggerDefinitionVersion = { ["Loggers"] = true, nil }

function asserts.AssertLoggerDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggerDefinitionVersion to be of type 'table'")
	if struct["Loggers"] then asserts.AssertListOfLogger(struct["Loggers"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggerDefinitionVersion[k], "LoggerDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggerDefinitionVersion
-- Information on logger definition version
-- @param _Loggers [ListOfLogger] List of loggers.
function M.LoggerDefinitionVersion(_Loggers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggerDefinitionVersion")
	local t = { 
		["Loggers"] = _Loggers,
	}
	asserts.AssertLoggerDefinitionVersion(t)
	return t
end

keys.CreateFunctionDefinitionVersionRequest = { ["FunctionDefinitionId"] = true, ["Functions"] = true, ["AmznClientToken"] = true, nil }

function asserts.AssertCreateFunctionDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionDefinitionVersionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then asserts.Assert__string(struct["FunctionDefinitionId"]) end
	if struct["Functions"] then asserts.AssertListOfFunction(struct["Functions"]) end
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFunctionDefinitionVersionRequest[k], "CreateFunctionDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionDefinitionVersionRequest
-- Function definition version
-- @param _FunctionDefinitionId [__string] the unique Id of the lambda definition
-- @param _Functions [ListOfFunction] Lambda functions in this function definition version.
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- Required parameter: FunctionDefinitionId
function M.CreateFunctionDefinitionVersionRequest(_FunctionDefinitionId, _Functions, _AmznClientToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionDefinitionVersionRequest")
	local t = { 
		["FunctionDefinitionId"] = _FunctionDefinitionId,
		["Functions"] = _Functions,
		["AmznClientToken"] = _AmznClientToken,
	}
	asserts.AssertCreateFunctionDefinitionVersionRequest(t)
	return t
end

keys.DeleteDeviceDefinitionResponse = { nil }

function asserts.AssertDeleteDeviceDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeviceDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeviceDefinitionResponse[k], "DeleteDeviceDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeviceDefinitionResponse
--  
function M.DeleteDeviceDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeviceDefinitionResponse")
	local t = { 
	}
	asserts.AssertDeleteDeviceDefinitionResponse(t)
	return t
end

keys.CreateDeviceDefinitionVersionResponse = { ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateDeviceDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeviceDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeviceDefinitionVersionResponse[k], "CreateDeviceDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeviceDefinitionVersionResponse
--  
-- @param _Version [__string] Unique Id of a version.
-- @param _CreationTimestamp [__string] Timestamp of when the version was created.
-- @param _Id [__string] Id of the resource container.
-- @param _Arn [__string] Arn of the version.
function M.CreateDeviceDefinitionVersionResponse(_Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeviceDefinitionVersionResponse")
	local t = { 
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateDeviceDefinitionVersionResponse(t)
	return t
end

keys.ListLoggerDefinitionVersionsRequest = { ["LoggerDefinitionId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListLoggerDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggerDefinitionVersionsRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then asserts.Assert__string(struct["LoggerDefinitionId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLoggerDefinitionVersionsRequest[k], "ListLoggerDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggerDefinitionVersionsRequest
--  
-- @param _LoggerDefinitionId [__string] logger definition Id
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: LoggerDefinitionId
function M.ListLoggerDefinitionVersionsRequest(_LoggerDefinitionId, _NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLoggerDefinitionVersionsRequest")
	local t = { 
		["LoggerDefinitionId"] = _LoggerDefinitionId,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListLoggerDefinitionVersionsRequest(t)
	return t
end

keys.DefinitionInformation = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertDefinitionInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefinitionInformation to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefinitionInformation[k], "DefinitionInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefinitionInformation
-- Information on the Definition
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.DefinitionInformation(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefinitionInformation")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertDefinitionInformation(t)
	return t
end

keys.GeneralError = { ["ErrorDetails"] = true, ["Message"] = true, nil }

function asserts.AssertGeneralError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GeneralError to be of type 'table'")
	if struct["ErrorDetails"] then asserts.AssertErrorDetails(struct["ErrorDetails"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.GeneralError[k], "GeneralError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GeneralError
-- General Error
-- @param _ErrorDetails [ErrorDetails] Error Details
-- @param _Message [__string] Message
function M.GeneralError(_ErrorDetails, _Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GeneralError")
	local t = { 
		["ErrorDetails"] = _ErrorDetails,
		["Message"] = _Message,
	}
	asserts.AssertGeneralError(t)
	return t
end

keys.GetCoreDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetCoreDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCoreDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCoreDefinitionResponse[k], "GetCoreDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCoreDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.GetCoreDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCoreDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetCoreDefinitionResponse(t)
	return t
end

keys.GetSubscriptionDefinitionRequest = { ["SubscriptionDefinitionId"] = true, nil }

function asserts.AssertGetSubscriptionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionDefinitionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then asserts.Assert__string(struct["SubscriptionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSubscriptionDefinitionRequest[k], "GetSubscriptionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionDefinitionRequest
--  
-- @param _SubscriptionDefinitionId [__string] subscription definition Id
-- Required parameter: SubscriptionDefinitionId
function M.GetSubscriptionDefinitionRequest(_SubscriptionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionDefinitionRequest")
	local t = { 
		["SubscriptionDefinitionId"] = _SubscriptionDefinitionId,
	}
	asserts.AssertGetSubscriptionDefinitionRequest(t)
	return t
end

keys.UpdateFunctionDefinitionResponse = { nil }

function asserts.AssertUpdateFunctionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateFunctionDefinitionResponse[k], "UpdateFunctionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionDefinitionResponse
--  
function M.UpdateFunctionDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFunctionDefinitionResponse")
	local t = { 
	}
	asserts.AssertUpdateFunctionDefinitionResponse(t)
	return t
end

keys.UpdateSubscriptionDefinitionRequest = { ["SubscriptionDefinitionId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateSubscriptionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriptionDefinitionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then asserts.Assert__string(struct["SubscriptionDefinitionId"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSubscriptionDefinitionRequest[k], "UpdateSubscriptionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriptionDefinitionRequest
--  
-- @param _SubscriptionDefinitionId [__string] subscription definition Id
-- @param _Name [__string] name of the definition
-- Required parameter: SubscriptionDefinitionId
function M.UpdateSubscriptionDefinitionRequest(_SubscriptionDefinitionId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubscriptionDefinitionRequest")
	local t = { 
		["SubscriptionDefinitionId"] = _SubscriptionDefinitionId,
		["Name"] = _Name,
	}
	asserts.AssertUpdateSubscriptionDefinitionRequest(t)
	return t
end

keys.CreateDeploymentRequest = { ["DeploymentId"] = true, ["DeploymentType"] = true, ["AmznClientToken"] = true, ["GroupVersionId"] = true, ["GroupId"] = true, nil }

function asserts.AssertCreateDeploymentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["DeploymentId"] then asserts.Assert__string(struct["DeploymentId"]) end
	if struct["DeploymentType"] then asserts.AssertDeploymentType(struct["DeploymentType"]) end
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["GroupVersionId"] then asserts.Assert__string(struct["GroupVersionId"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentRequest[k], "CreateDeploymentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentRequest
--  
-- @param _DeploymentId [__string] Id of the deployment if you wish to redeploy a previous deployment.
-- @param _DeploymentType [DeploymentType] Type of deployment
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _GroupVersionId [__string] Group Version you wish to deploy.
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.CreateDeploymentRequest(_DeploymentId, _DeploymentType, _AmznClientToken, _GroupVersionId, _GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentRequest")
	local t = { 
		["DeploymentId"] = _DeploymentId,
		["DeploymentType"] = _DeploymentType,
		["AmznClientToken"] = _AmznClientToken,
		["GroupVersionId"] = _GroupVersionId,
		["GroupId"] = _GroupId,
	}
	asserts.AssertCreateDeploymentRequest(t)
	return t
end

keys.GetConnectivityInfoResponse = { ["ConnectivityInfo"] = true, ["Message"] = true, nil }

function asserts.AssertGetConnectivityInfoResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectivityInfoResponse to be of type 'table'")
	if struct["ConnectivityInfo"] then asserts.AssertListOfConnectivityInfo(struct["ConnectivityInfo"]) end
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectivityInfoResponse[k], "GetConnectivityInfoResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectivityInfoResponse
--  
-- @param _ConnectivityInfo [ListOfConnectivityInfo] Connectivity info array
-- @param _Message [__string] Response Text
function M.GetConnectivityInfoResponse(_ConnectivityInfo, _Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConnectivityInfoResponse")
	local t = { 
		["ConnectivityInfo"] = _ConnectivityInfo,
		["Message"] = _Message,
	}
	asserts.AssertGetConnectivityInfoResponse(t)
	return t
end

keys.ListCoreDefinitionVersionsRequest = { ["NextToken"] = true, ["CoreDefinitionId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListCoreDefinitionVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCoreDefinitionVersionsRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["CoreDefinitionId"] then asserts.Assert__string(struct["CoreDefinitionId"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCoreDefinitionVersionsRequest[k], "ListCoreDefinitionVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCoreDefinitionVersionsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _CoreDefinitionId [__string] core definition Id
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: CoreDefinitionId
function M.ListCoreDefinitionVersionsRequest(_NextToken, _CoreDefinitionId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCoreDefinitionVersionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["CoreDefinitionId"] = _CoreDefinitionId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListCoreDefinitionVersionsRequest(t)
	return t
end

keys.DeleteDeviceDefinitionRequest = { ["DeviceDefinitionId"] = true, nil }

function asserts.AssertDeleteDeviceDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeviceDefinitionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then asserts.Assert__string(struct["DeviceDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeviceDefinitionRequest[k], "DeleteDeviceDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeviceDefinitionRequest
--  
-- @param _DeviceDefinitionId [__string] device definition Id
-- Required parameter: DeviceDefinitionId
function M.DeleteDeviceDefinitionRequest(_DeviceDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDeviceDefinitionRequest")
	local t = { 
		["DeviceDefinitionId"] = _DeviceDefinitionId,
	}
	asserts.AssertDeleteDeviceDefinitionRequest(t)
	return t
end

keys.UpdateCoreDefinitionResponse = { nil }

function asserts.AssertUpdateCoreDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCoreDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateCoreDefinitionResponse[k], "UpdateCoreDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCoreDefinitionResponse
--  
function M.UpdateCoreDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCoreDefinitionResponse")
	local t = { 
	}
	asserts.AssertUpdateCoreDefinitionResponse(t)
	return t
end

keys.UpdateLoggerDefinitionResponse = { nil }

function asserts.AssertUpdateLoggerDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLoggerDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateLoggerDefinitionResponse[k], "UpdateLoggerDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLoggerDefinitionResponse
--  
function M.UpdateLoggerDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLoggerDefinitionResponse")
	local t = { 
	}
	asserts.AssertUpdateLoggerDefinitionResponse(t)
	return t
end

keys.FunctionDefinitionVersion = { ["Functions"] = true, nil }

function asserts.AssertFunctionDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionDefinitionVersion to be of type 'table'")
	if struct["Functions"] then asserts.AssertListOfFunction(struct["Functions"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionDefinitionVersion[k], "FunctionDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionDefinitionVersion
-- Information on the function definition version
-- @param _Functions [ListOfFunction] Lambda functions in this function definition version.
function M.FunctionDefinitionVersion(_Functions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionDefinitionVersion")
	local t = { 
		["Functions"] = _Functions,
	}
	asserts.AssertFunctionDefinitionVersion(t)
	return t
end

keys.CreateSubscriptionDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateSubscriptionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriptionDefinitionResponse[k], "CreateSubscriptionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.CreateSubscriptionDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateSubscriptionDefinitionResponse(t)
	return t
end

keys.GetDeviceDefinitionRequest = { ["DeviceDefinitionId"] = true, nil }

function asserts.AssertGetDeviceDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceDefinitionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then asserts.Assert__string(struct["DeviceDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceDefinitionRequest[k], "GetDeviceDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceDefinitionRequest
--  
-- @param _DeviceDefinitionId [__string] device definition Id
-- Required parameter: DeviceDefinitionId
function M.GetDeviceDefinitionRequest(_DeviceDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceDefinitionRequest")
	local t = { 
		["DeviceDefinitionId"] = _DeviceDefinitionId,
	}
	asserts.AssertGetDeviceDefinitionRequest(t)
	return t
end

keys.SubscriptionDefinitionVersion = { ["Subscriptions"] = true, nil }

function asserts.AssertSubscriptionDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionDefinitionVersion to be of type 'table'")
	if struct["Subscriptions"] then asserts.AssertListOfSubscription(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionDefinitionVersion[k], "SubscriptionDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionDefinitionVersion
-- Information on subscription definition version
-- @param _Subscriptions [ListOfSubscription] Subscriptions in the version.
function M.SubscriptionDefinitionVersion(_Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionDefinitionVersion")
	local t = { 
		["Subscriptions"] = _Subscriptions,
	}
	asserts.AssertSubscriptionDefinitionVersion(t)
	return t
end

keys.CoreDefinitionVersion = { ["Cores"] = true, nil }

function asserts.AssertCoreDefinitionVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CoreDefinitionVersion to be of type 'table'")
	if struct["Cores"] then asserts.AssertListOfCore(struct["Cores"]) end
	for k,_ in pairs(struct) do
		assert(keys.CoreDefinitionVersion[k], "CoreDefinitionVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CoreDefinitionVersion
-- Information on core definition version
-- @param _Cores [ListOfCore] Cores in the definition version.
function M.CoreDefinitionVersion(_Cores, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CoreDefinitionVersion")
	local t = { 
		["Cores"] = _Cores,
	}
	asserts.AssertCoreDefinitionVersion(t)
	return t
end

keys.GetDeploymentStatusResponse = { ["UpdatedAt"] = true, ["DeploymentStatus"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertGetDeploymentStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentStatusResponse to be of type 'table'")
	if struct["UpdatedAt"] then asserts.Assert__string(struct["UpdatedAt"]) end
	if struct["DeploymentStatus"] then asserts.Assert__string(struct["DeploymentStatus"]) end
	if struct["ErrorMessage"] then asserts.Assert__string(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentStatusResponse[k], "GetDeploymentStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentStatusResponse
--  
-- @param _UpdatedAt [__string] Last time the deployment status was updated.
-- @param _DeploymentStatus [__string] Status of the deployment.
-- @param _ErrorMessage [__string] Error Message
function M.GetDeploymentStatusResponse(_UpdatedAt, _DeploymentStatus, _ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentStatusResponse")
	local t = { 
		["UpdatedAt"] = _UpdatedAt,
		["DeploymentStatus"] = _DeploymentStatus,
		["ErrorMessage"] = _ErrorMessage,
	}
	asserts.AssertGetDeploymentStatusResponse(t)
	return t
end

keys.GetAssociatedRoleResponse = { ["AssociatedAt"] = true, ["RoleArn"] = true, nil }

function asserts.AssertGetAssociatedRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssociatedRoleResponse to be of type 'table'")
	if struct["AssociatedAt"] then asserts.Assert__string(struct["AssociatedAt"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAssociatedRoleResponse[k], "GetAssociatedRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssociatedRoleResponse
--  
-- @param _AssociatedAt [__string] Time when the role was associated for the group.
-- @param _RoleArn [__string] Arn of the role that is associated with the group.
function M.GetAssociatedRoleResponse(_AssociatedAt, _RoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssociatedRoleResponse")
	local t = { 
		["AssociatedAt"] = _AssociatedAt,
		["RoleArn"] = _RoleArn,
	}
	asserts.AssertGetAssociatedRoleResponse(t)
	return t
end

keys.DeleteGroupRequest = { ["GroupId"] = true, nil }

function asserts.AssertDeleteGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGroupRequest[k], "DeleteGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGroupRequest
--  
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.DeleteGroupRequest(_GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupRequest")
	local t = { 
		["GroupId"] = _GroupId,
	}
	asserts.AssertDeleteGroupRequest(t)
	return t
end

keys.DeleteSubscriptionDefinitionResponse = { nil }

function asserts.AssertDeleteSubscriptionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriptionDefinitionResponse[k], "DeleteSubscriptionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionDefinitionResponse
--  
function M.DeleteSubscriptionDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionDefinitionResponse")
	local t = { 
	}
	asserts.AssertDeleteSubscriptionDefinitionResponse(t)
	return t
end

keys.ListDeploymentsRequest = { ["NextToken"] = true, ["GroupId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDeploymentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentsRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentsRequest[k], "ListDeploymentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required parameter: GroupId
function M.ListDeploymentsRequest(_NextToken, _GroupId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["GroupId"] = _GroupId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListDeploymentsRequest(t)
	return t
end

keys.ListGroupsResponse = { ["NextToken"] = true, ["Groups"] = true, nil }

function asserts.AssertListGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Groups"] then asserts.AssertListOfGroupInformation(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsResponse[k], "ListGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsResponse
--  
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Groups [ListOfGroupInformation] Groups
function M.ListGroupsResponse(_NextToken, _Groups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Groups"] = _Groups,
	}
	asserts.AssertListGroupsResponse(t)
	return t
end

keys.UpdateGroupRequest = { ["GroupId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupRequest[k], "UpdateGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupRequest
--  
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- @param _Name [__string] name of the definition
-- Required parameter: GroupId
function M.UpdateGroupRequest(_GroupId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupRequest")
	local t = { 
		["GroupId"] = _GroupId,
		["Name"] = _Name,
	}
	asserts.AssertUpdateGroupRequest(t)
	return t
end

keys.ConnectivityInfo = { ["Metadata"] = true, ["PortNumber"] = true, ["HostAddress"] = true, ["Id"] = true, nil }

function asserts.AssertConnectivityInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectivityInfo to be of type 'table'")
	if struct["Metadata"] then asserts.Assert__string(struct["Metadata"]) end
	if struct["PortNumber"] then asserts.Assert__integer(struct["PortNumber"]) end
	if struct["HostAddress"] then asserts.Assert__string(struct["HostAddress"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConnectivityInfo[k], "ConnectivityInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectivityInfo
-- Connectivity Info
-- @param _Metadata [__string] Metadata for this endpoint.
-- @param _PortNumber [__integer] Port of the GGC. Usually 8883.
-- @param _HostAddress [__string] Endpoint for the GGC. Can be an IP address or DNS.
-- @param _Id [__string] Element Id for this entry in the list.
function M.ConnectivityInfo(_Metadata, _PortNumber, _HostAddress, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConnectivityInfo")
	local t = { 
		["Metadata"] = _Metadata,
		["PortNumber"] = _PortNumber,
		["HostAddress"] = _HostAddress,
		["Id"] = _Id,
	}
	asserts.AssertConnectivityInfo(t)
	return t
end

keys.ErrorDetail = { ["DetailedErrorCode"] = true, ["DetailedErrorMessage"] = true, nil }

function asserts.AssertErrorDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorDetail to be of type 'table'")
	if struct["DetailedErrorCode"] then asserts.Assert__string(struct["DetailedErrorCode"]) end
	if struct["DetailedErrorMessage"] then asserts.Assert__string(struct["DetailedErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ErrorDetail[k], "ErrorDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorDetail
-- ErrorDetail
-- @param _DetailedErrorCode [__string] Detailed Error Code
-- @param _DetailedErrorMessage [__string] Detailed Error Message
function M.ErrorDetail(_DetailedErrorCode, _DetailedErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ErrorDetail")
	local t = { 
		["DetailedErrorCode"] = _DetailedErrorCode,
		["DetailedErrorMessage"] = _DetailedErrorMessage,
	}
	asserts.AssertErrorDetail(t)
	return t
end

keys.DeleteCoreDefinitionRequest = { ["CoreDefinitionId"] = true, nil }

function asserts.AssertDeleteCoreDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCoreDefinitionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["CoreDefinitionId"] then asserts.Assert__string(struct["CoreDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCoreDefinitionRequest[k], "DeleteCoreDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCoreDefinitionRequest
--  
-- @param _CoreDefinitionId [__string] core definition Id
-- Required parameter: CoreDefinitionId
function M.DeleteCoreDefinitionRequest(_CoreDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCoreDefinitionRequest")
	local t = { 
		["CoreDefinitionId"] = _CoreDefinitionId,
	}
	asserts.AssertDeleteCoreDefinitionRequest(t)
	return t
end

keys.GetDeviceDefinitionVersionResponse = { ["Definition"] = true, ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetDeviceDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then asserts.AssertDeviceDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceDefinitionVersionResponse[k], "GetDeviceDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceDefinitionVersionResponse
--  
-- @param _Definition [DeviceDefinitionVersion] Device definition version
-- @param _Version [__string] Version of the device definition version.
-- @param _CreationTimestamp [__string] Timestamp of when the device definition version was created.
-- @param _Id [__string] Id of the device definition the version belongs to.
-- @param _Arn [__string] Arn of the device definition version.
function M.GetDeviceDefinitionVersionResponse(_Definition, _Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceDefinitionVersionResponse")
	local t = { 
		["Definition"] = _Definition,
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetDeviceDefinitionVersionResponse(t)
	return t
end

keys.GroupInformation = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGroupInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupInformation to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupInformation[k], "GroupInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupInformation
-- Information of a group
-- @param _LatestVersionArn [__string] Latest version arn of the group.
-- @param _Name [__string] Name of a group.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the group.
-- @param _LatestVersion [__string] Last version of the group.
-- @param _CreationTimestamp [__string] Timestamp of when the group was created.
-- @param _Id [__string] Id of a group.
-- @param _Arn [__string] Arn of a group.
function M.GroupInformation(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupInformation")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGroupInformation(t)
	return t
end

keys.CreateGroupCertificateAuthorityRequest = { ["AmznClientToken"] = true, ["GroupId"] = true, nil }

function asserts.AssertCreateGroupCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupCertificateAuthorityRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupCertificateAuthorityRequest[k], "CreateGroupCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupCertificateAuthorityRequest
--  
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.CreateGroupCertificateAuthorityRequest(_AmznClientToken, _GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupCertificateAuthorityRequest")
	local t = { 
		["AmznClientToken"] = _AmznClientToken,
		["GroupId"] = _GroupId,
	}
	asserts.AssertCreateGroupCertificateAuthorityRequest(t)
	return t
end

keys.Subscription = { ["Source"] = true, ["Target"] = true, ["Id"] = true, ["Subject"] = true, nil }

function asserts.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["Source"] then asserts.Assert__string(struct["Source"]) end
	if struct["Target"] then asserts.Assert__string(struct["Target"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Subject"] then asserts.Assert__string(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subscription[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- Information on subscription
-- @param _Source [__string] Source of the subscription. Can be a thing arn, lambda arn or word 'cloud'
-- @param _Target [__string] Where the message is sent to. Can be a thing arn, lambda arn or word 'cloud'.
-- @param _Id [__string] Element Id for this entry in the list.
-- @param _Subject [__string] Subject of the message.
function M.Subscription(_Source, _Target, _Id, _Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["Source"] = _Source,
		["Target"] = _Target,
		["Id"] = _Id,
		["Subject"] = _Subject,
	}
	asserts.AssertSubscription(t)
	return t
end

keys.GetSubscriptionDefinitionVersionResponse = { ["Definition"] = true, ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetSubscriptionDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then asserts.AssertSubscriptionDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSubscriptionDefinitionVersionResponse[k], "GetSubscriptionDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionDefinitionVersionResponse
--  
-- @param _Definition [SubscriptionDefinitionVersion] Information on the definition
-- @param _Version [__string] Version of the subscription definition version.
-- @param _CreationTimestamp [__string] Timestamp of when the subscription definition version was created.
-- @param _Id [__string] Id of the subscription definition the version belongs to.
-- @param _Arn [__string] Arn of the subscription definition version.
function M.GetSubscriptionDefinitionVersionResponse(_Definition, _Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionDefinitionVersionResponse")
	local t = { 
		["Definition"] = _Definition,
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetSubscriptionDefinitionVersionResponse(t)
	return t
end

keys.GetCoreDefinitionVersionRequest = { ["CoreDefinitionId"] = true, ["CoreDefinitionVersionId"] = true, nil }

function asserts.AssertGetCoreDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCoreDefinitionVersionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	assert(struct["CoreDefinitionVersionId"], "Expected key CoreDefinitionVersionId to exist in table")
	if struct["CoreDefinitionId"] then asserts.Assert__string(struct["CoreDefinitionId"]) end
	if struct["CoreDefinitionVersionId"] then asserts.Assert__string(struct["CoreDefinitionVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCoreDefinitionVersionRequest[k], "GetCoreDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCoreDefinitionVersionRequest
--  
-- @param _CoreDefinitionId [__string] core definition Id
-- @param _CoreDefinitionVersionId [__string] core definition version Id
-- Required parameter: CoreDefinitionId
-- Required parameter: CoreDefinitionVersionId
function M.GetCoreDefinitionVersionRequest(_CoreDefinitionId, _CoreDefinitionVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCoreDefinitionVersionRequest")
	local t = { 
		["CoreDefinitionId"] = _CoreDefinitionId,
		["CoreDefinitionVersionId"] = _CoreDefinitionVersionId,
	}
	asserts.AssertGetCoreDefinitionVersionRequest(t)
	return t
end

keys.DisassociateServiceRoleFromAccountRequest = { nil }

function asserts.AssertDisassociateServiceRoleFromAccountRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateServiceRoleFromAccountRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateServiceRoleFromAccountRequest[k], "DisassociateServiceRoleFromAccountRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateServiceRoleFromAccountRequest
--  
function M.DisassociateServiceRoleFromAccountRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateServiceRoleFromAccountRequest")
	local t = { 
	}
	asserts.AssertDisassociateServiceRoleFromAccountRequest(t)
	return t
end

keys.GetSubscriptionDefinitionVersionRequest = { ["SubscriptionDefinitionVersionId"] = true, ["SubscriptionDefinitionId"] = true, nil }

function asserts.AssertGetSubscriptionDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionDefinitionVersionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	assert(struct["SubscriptionDefinitionVersionId"], "Expected key SubscriptionDefinitionVersionId to exist in table")
	if struct["SubscriptionDefinitionVersionId"] then asserts.Assert__string(struct["SubscriptionDefinitionVersionId"]) end
	if struct["SubscriptionDefinitionId"] then asserts.Assert__string(struct["SubscriptionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSubscriptionDefinitionVersionRequest[k], "GetSubscriptionDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionDefinitionVersionRequest
--  
-- @param _SubscriptionDefinitionVersionId [__string] subscription definition version Id
-- @param _SubscriptionDefinitionId [__string] subscription definition Id
-- Required parameter: SubscriptionDefinitionId
-- Required parameter: SubscriptionDefinitionVersionId
function M.GetSubscriptionDefinitionVersionRequest(_SubscriptionDefinitionVersionId, _SubscriptionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionDefinitionVersionRequest")
	local t = { 
		["SubscriptionDefinitionVersionId"] = _SubscriptionDefinitionVersionId,
		["SubscriptionDefinitionId"] = _SubscriptionDefinitionId,
	}
	asserts.AssertGetSubscriptionDefinitionVersionRequest(t)
	return t
end

keys.ListFunctionDefinitionVersionsResponse = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertListFunctionDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFunctionDefinitionVersionsResponse[k], "ListFunctionDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionDefinitionVersionsResponse
--  
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Versions [ListOfVersionInformation] Versions
function M.ListFunctionDefinitionVersionsResponse(_NextToken, _Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Versions"] = _Versions,
	}
	asserts.AssertListFunctionDefinitionVersionsResponse(t)
	return t
end

keys.CreateDeploymentResponse = { ["DeploymentId"] = true, ["DeploymentArn"] = true, nil }

function asserts.AssertCreateDeploymentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeploymentResponse to be of type 'table'")
	if struct["DeploymentId"] then asserts.Assert__string(struct["DeploymentId"]) end
	if struct["DeploymentArn"] then asserts.Assert__string(struct["DeploymentArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeploymentResponse[k], "CreateDeploymentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeploymentResponse
--  
-- @param _DeploymentId [__string] Id of the deployment.
-- @param _DeploymentArn [__string] Arn of the deployment.
function M.CreateDeploymentResponse(_DeploymentId, _DeploymentArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeploymentResponse")
	local t = { 
		["DeploymentId"] = _DeploymentId,
		["DeploymentArn"] = _DeploymentArn,
	}
	asserts.AssertCreateDeploymentResponse(t)
	return t
end

keys.UpdateFunctionDefinitionRequest = { ["FunctionDefinitionId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateFunctionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateFunctionDefinitionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then asserts.Assert__string(struct["FunctionDefinitionId"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateFunctionDefinitionRequest[k], "UpdateFunctionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateFunctionDefinitionRequest
--  
-- @param _FunctionDefinitionId [__string] the unique Id of the lambda definition
-- @param _Name [__string] name of the definition
-- Required parameter: FunctionDefinitionId
function M.UpdateFunctionDefinitionRequest(_FunctionDefinitionId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateFunctionDefinitionRequest")
	local t = { 
		["FunctionDefinitionId"] = _FunctionDefinitionId,
		["Name"] = _Name,
	}
	asserts.AssertUpdateFunctionDefinitionRequest(t)
	return t
end

keys.CreateLoggerDefinitionVersionResponse = { ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateLoggerDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoggerDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoggerDefinitionVersionResponse[k], "CreateLoggerDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoggerDefinitionVersionResponse
--  
-- @param _Version [__string] Unique Id of a version.
-- @param _CreationTimestamp [__string] Timestamp of when the version was created.
-- @param _Id [__string] Id of the resource container.
-- @param _Arn [__string] Arn of the version.
function M.CreateLoggerDefinitionVersionResponse(_Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoggerDefinitionVersionResponse")
	local t = { 
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateLoggerDefinitionVersionResponse(t)
	return t
end

keys.DeleteCoreDefinitionResponse = { nil }

function asserts.AssertDeleteCoreDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCoreDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteCoreDefinitionResponse[k], "DeleteCoreDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCoreDefinitionResponse
--  
function M.DeleteCoreDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCoreDefinitionResponse")
	local t = { 
	}
	asserts.AssertDeleteCoreDefinitionResponse(t)
	return t
end

keys.GetDeviceDefinitionVersionRequest = { ["DeviceDefinitionId"] = true, ["DeviceDefinitionVersionId"] = true, nil }

function asserts.AssertGetDeviceDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceDefinitionVersionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionVersionId"], "Expected key DeviceDefinitionVersionId to exist in table")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then asserts.Assert__string(struct["DeviceDefinitionId"]) end
	if struct["DeviceDefinitionVersionId"] then asserts.Assert__string(struct["DeviceDefinitionVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceDefinitionVersionRequest[k], "GetDeviceDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceDefinitionVersionRequest
--  
-- @param _DeviceDefinitionId [__string] device definition Id
-- @param _DeviceDefinitionVersionId [__string] device definition version Id
-- Required parameter: DeviceDefinitionVersionId
-- Required parameter: DeviceDefinitionId
function M.GetDeviceDefinitionVersionRequest(_DeviceDefinitionId, _DeviceDefinitionVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceDefinitionVersionRequest")
	local t = { 
		["DeviceDefinitionId"] = _DeviceDefinitionId,
		["DeviceDefinitionVersionId"] = _DeviceDefinitionVersionId,
	}
	asserts.AssertGetDeviceDefinitionVersionRequest(t)
	return t
end

keys.ListDefinitionsResponse = { ["Definitions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then asserts.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDefinitionsResponse[k], "ListDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDefinitionsResponse
-- List of definition response
-- @param _Definitions [ListOfDefinitionInformation] Definitions
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListDefinitionsResponse(_Definitions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDefinitionsResponse")
	local t = { 
		["Definitions"] = _Definitions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListDefinitionsResponse(t)
	return t
end

keys.CreateCoreDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateCoreDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCoreDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCoreDefinitionResponse[k], "CreateCoreDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCoreDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.CreateCoreDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCoreDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateCoreDefinitionResponse(t)
	return t
end

keys.UpdateLoggerDefinitionRequest = { ["LoggerDefinitionId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateLoggerDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateLoggerDefinitionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then asserts.Assert__string(struct["LoggerDefinitionId"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateLoggerDefinitionRequest[k], "UpdateLoggerDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateLoggerDefinitionRequest
--  
-- @param _LoggerDefinitionId [__string] logger definition Id
-- @param _Name [__string] name of the definition
-- Required parameter: LoggerDefinitionId
function M.UpdateLoggerDefinitionRequest(_LoggerDefinitionId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateLoggerDefinitionRequest")
	local t = { 
		["LoggerDefinitionId"] = _LoggerDefinitionId,
		["Name"] = _Name,
	}
	asserts.AssertUpdateLoggerDefinitionRequest(t)
	return t
end

keys.GetDeviceDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetDeviceDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceDefinitionResponse[k], "GetDeviceDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.GetDeviceDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeviceDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetDeviceDefinitionResponse(t)
	return t
end

keys.GetFunctionDefinitionVersionRequest = { ["FunctionDefinitionId"] = true, ["FunctionDefinitionVersionId"] = true, nil }

function asserts.AssertGetFunctionDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionDefinitionVersionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	assert(struct["FunctionDefinitionVersionId"], "Expected key FunctionDefinitionVersionId to exist in table")
	if struct["FunctionDefinitionId"] then asserts.Assert__string(struct["FunctionDefinitionId"]) end
	if struct["FunctionDefinitionVersionId"] then asserts.Assert__string(struct["FunctionDefinitionVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionDefinitionVersionRequest[k], "GetFunctionDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionDefinitionVersionRequest
--  
-- @param _FunctionDefinitionId [__string] the unique Id of the lambda definition
-- @param _FunctionDefinitionVersionId [__string] Function definition version Id
-- Required parameter: FunctionDefinitionId
-- Required parameter: FunctionDefinitionVersionId
function M.GetFunctionDefinitionVersionRequest(_FunctionDefinitionId, _FunctionDefinitionVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionDefinitionVersionRequest")
	local t = { 
		["FunctionDefinitionId"] = _FunctionDefinitionId,
		["FunctionDefinitionVersionId"] = _FunctionDefinitionVersionId,
	}
	asserts.AssertGetFunctionDefinitionVersionRequest(t)
	return t
end

keys.ListSubscriptionDefinitionsResponse = { ["Definitions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListSubscriptionDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then asserts.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscriptionDefinitionsResponse[k], "ListSubscriptionDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionDefinitionsResponse
--  
-- @param _Definitions [ListOfDefinitionInformation] Definitions
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListSubscriptionDefinitionsResponse(_Definitions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionDefinitionsResponse")
	local t = { 
		["Definitions"] = _Definitions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListSubscriptionDefinitionsResponse(t)
	return t
end

keys.GetConnectivityInfoRequest = { ["ThingName"] = true, nil }

function asserts.AssertGetConnectivityInfoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectivityInfoRequest to be of type 'table'")
	assert(struct["ThingName"], "Expected key ThingName to exist in table")
	if struct["ThingName"] then asserts.Assert__string(struct["ThingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectivityInfoRequest[k], "GetConnectivityInfoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectivityInfoRequest
--  
-- @param _ThingName [__string] Thing Name
-- Required parameter: ThingName
function M.GetConnectivityInfoRequest(_ThingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetConnectivityInfoRequest")
	local t = { 
		["ThingName"] = _ThingName,
	}
	asserts.AssertGetConnectivityInfoRequest(t)
	return t
end

keys.FunctionConfiguration = { ["ExecArgs"] = true, ["Executable"] = true, ["MemorySize"] = true, ["Environment"] = true, ["Pinned"] = true, ["Timeout"] = true, nil }

function asserts.AssertFunctionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionConfiguration to be of type 'table'")
	if struct["ExecArgs"] then asserts.Assert__string(struct["ExecArgs"]) end
	if struct["Executable"] then asserts.Assert__string(struct["Executable"]) end
	if struct["MemorySize"] then asserts.Assert__integer(struct["MemorySize"]) end
	if struct["Environment"] then asserts.AssertFunctionConfigurationEnvironment(struct["Environment"]) end
	if struct["Pinned"] then asserts.Assert__boolean(struct["Pinned"]) end
	if struct["Timeout"] then asserts.Assert__integer(struct["Timeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionConfiguration[k], "FunctionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionConfiguration
-- Configuration of the function
-- @param _ExecArgs [__string] Execution Arguments
-- @param _Executable [__string] Executable
-- @param _MemorySize [__integer] The memory size, in KB, you configured for the function.
-- @param _Environment [FunctionConfigurationEnvironment] Environment of the function configuration
-- @param _Pinned [__boolean] Whether the function is pinned or not. Pinned means the function is long-lived and starts when the core starts.
-- @param _Timeout [__integer] The function execution time at which Lambda should terminate the function. This timeout still applies to pinned lambdas for each request.
function M.FunctionConfiguration(_ExecArgs, _Executable, _MemorySize, _Environment, _Pinned, _Timeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionConfiguration")
	local t = { 
		["ExecArgs"] = _ExecArgs,
		["Executable"] = _Executable,
		["MemorySize"] = _MemorySize,
		["Environment"] = _Environment,
		["Pinned"] = _Pinned,
		["Timeout"] = _Timeout,
	}
	asserts.AssertFunctionConfiguration(t)
	return t
end

keys.ListFunctionDefinitionsResponse = { ["Definitions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListFunctionDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then asserts.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFunctionDefinitionsResponse[k], "ListFunctionDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionDefinitionsResponse
--  
-- @param _Definitions [ListOfDefinitionInformation] Definitions
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListFunctionDefinitionsResponse(_Definitions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionDefinitionsResponse")
	local t = { 
		["Definitions"] = _Definitions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListFunctionDefinitionsResponse(t)
	return t
end

keys.Empty = { nil }

function asserts.AssertEmpty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Empty to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.Empty[k], "Empty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Empty
-- Empty
function M.Empty(...)
	assert(select("#", ...) == 0, "Too many arguments when creating Empty")
	local t = { 
	}
	asserts.AssertEmpty(t)
	return t
end

keys.Core = { ["CertificateArn"] = true, ["ThingArn"] = true, ["SyncShadow"] = true, ["Id"] = true, nil }

function asserts.AssertCore(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Core to be of type 'table'")
	if struct["CertificateArn"] then asserts.Assert__string(struct["CertificateArn"]) end
	if struct["ThingArn"] then asserts.Assert__string(struct["ThingArn"]) end
	if struct["SyncShadow"] then asserts.Assert__boolean(struct["SyncShadow"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Core[k], "Core contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Core
-- Information on the core
-- @param _CertificateArn [__string] Certificate arn of the core.
-- @param _ThingArn [__string] Thing arn of the core.
-- @param _SyncShadow [__boolean] If true, the local shadow value automatically syncs with the cloud's shadow state.
-- @param _Id [__string] Element Id for this entry in the list.
function M.Core(_CertificateArn, _ThingArn, _SyncShadow, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Core")
	local t = { 
		["CertificateArn"] = _CertificateArn,
		["ThingArn"] = _ThingArn,
		["SyncShadow"] = _SyncShadow,
		["Id"] = _Id,
	}
	asserts.AssertCore(t)
	return t
end

keys.GetFunctionDefinitionRequest = { ["FunctionDefinitionId"] = true, nil }

function asserts.AssertGetFunctionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionDefinitionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then asserts.Assert__string(struct["FunctionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionDefinitionRequest[k], "GetFunctionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionDefinitionRequest
--  
-- @param _FunctionDefinitionId [__string] the unique Id of the lambda definition
-- Required parameter: FunctionDefinitionId
function M.GetFunctionDefinitionRequest(_FunctionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionDefinitionRequest")
	local t = { 
		["FunctionDefinitionId"] = _FunctionDefinitionId,
	}
	asserts.AssertGetFunctionDefinitionRequest(t)
	return t
end

keys.CreateCoreDefinitionVersionResponse = { ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateCoreDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCoreDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCoreDefinitionVersionResponse[k], "CreateCoreDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCoreDefinitionVersionResponse
--  
-- @param _Version [__string] Unique Id of a version.
-- @param _CreationTimestamp [__string] Timestamp of when the version was created.
-- @param _Id [__string] Id of the resource container.
-- @param _Arn [__string] Arn of the version.
function M.CreateCoreDefinitionVersionResponse(_Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCoreDefinitionVersionResponse")
	local t = { 
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateCoreDefinitionVersionResponse(t)
	return t
end

keys.UpdateGroupCertificateConfigurationResponse = { ["CertificateExpiryInMilliseconds"] = true, ["GroupId"] = true, ["CertificateAuthorityExpiryInMilliseconds"] = true, nil }

function asserts.AssertUpdateGroupCertificateConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupCertificateConfigurationResponse to be of type 'table'")
	if struct["CertificateExpiryInMilliseconds"] then asserts.Assert__string(struct["CertificateExpiryInMilliseconds"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	if struct["CertificateAuthorityExpiryInMilliseconds"] then asserts.Assert__string(struct["CertificateAuthorityExpiryInMilliseconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupCertificateConfigurationResponse[k], "UpdateGroupCertificateConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupCertificateConfigurationResponse
--  
-- @param _CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- @param _GroupId [__string] Id of the group the certificate configuration belongs to.
-- @param _CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
function M.UpdateGroupCertificateConfigurationResponse(_CertificateExpiryInMilliseconds, _GroupId, _CertificateAuthorityExpiryInMilliseconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupCertificateConfigurationResponse")
	local t = { 
		["CertificateExpiryInMilliseconds"] = _CertificateExpiryInMilliseconds,
		["GroupId"] = _GroupId,
		["CertificateAuthorityExpiryInMilliseconds"] = _CertificateAuthorityExpiryInMilliseconds,
	}
	asserts.AssertUpdateGroupCertificateConfigurationResponse(t)
	return t
end

keys.GetGroupResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupResponse[k], "GetGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.GetGroupResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetGroupResponse(t)
	return t
end

keys.GetLoggerDefinitionVersionRequest = { ["LoggerDefinitionId"] = true, ["LoggerDefinitionVersionId"] = true, nil }

function asserts.AssertGetLoggerDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggerDefinitionVersionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionVersionId"], "Expected key LoggerDefinitionVersionId to exist in table")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then asserts.Assert__string(struct["LoggerDefinitionId"]) end
	if struct["LoggerDefinitionVersionId"] then asserts.Assert__string(struct["LoggerDefinitionVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoggerDefinitionVersionRequest[k], "GetLoggerDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggerDefinitionVersionRequest
--  
-- @param _LoggerDefinitionId [__string] logger definition Id
-- @param _LoggerDefinitionVersionId [__string] logger definition version Id
-- Required parameter: LoggerDefinitionVersionId
-- Required parameter: LoggerDefinitionId
function M.GetLoggerDefinitionVersionRequest(_LoggerDefinitionId, _LoggerDefinitionVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggerDefinitionVersionRequest")
	local t = { 
		["LoggerDefinitionId"] = _LoggerDefinitionId,
		["LoggerDefinitionVersionId"] = _LoggerDefinitionVersionId,
	}
	asserts.AssertGetLoggerDefinitionVersionRequest(t)
	return t
end

keys.ListLoggerDefinitionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListLoggerDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggerDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLoggerDefinitionsRequest[k], "ListLoggerDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggerDefinitionsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListLoggerDefinitionsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLoggerDefinitionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListLoggerDefinitionsRequest(t)
	return t
end

keys.Device = { ["CertificateArn"] = true, ["ThingArn"] = true, ["SyncShadow"] = true, ["Id"] = true, nil }

function asserts.AssertDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Device to be of type 'table'")
	if struct["CertificateArn"] then asserts.Assert__string(struct["CertificateArn"]) end
	if struct["ThingArn"] then asserts.Assert__string(struct["ThingArn"]) end
	if struct["SyncShadow"] then asserts.Assert__boolean(struct["SyncShadow"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Device[k], "Device contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Device
-- Information on a Device
-- @param _CertificateArn [__string] Certificate arn of the device.
-- @param _ThingArn [__string] Thing arn of the device.
-- @param _SyncShadow [__boolean] If true, the local shadow value automatically syncs with the cloud's shadow state.
-- @param _Id [__string] Element Id for this entry in the list.
function M.Device(_CertificateArn, _ThingArn, _SyncShadow, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Device")
	local t = { 
		["CertificateArn"] = _CertificateArn,
		["ThingArn"] = _ThingArn,
		["SyncShadow"] = _SyncShadow,
		["Id"] = _Id,
	}
	asserts.AssertDevice(t)
	return t
end

keys.GetFunctionDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetFunctionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionDefinitionResponse[k], "GetFunctionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.GetFunctionDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetFunctionDefinitionResponse(t)
	return t
end

keys.GetGroupCertificateAuthorityRequest = { ["CertificateAuthorityId"] = true, ["GroupId"] = true, nil }

function asserts.AssertGetGroupCertificateAuthorityRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupCertificateAuthorityRequest to be of type 'table'")
	assert(struct["CertificateAuthorityId"], "Expected key CertificateAuthorityId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["CertificateAuthorityId"] then asserts.Assert__string(struct["CertificateAuthorityId"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupCertificateAuthorityRequest[k], "GetGroupCertificateAuthorityRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupCertificateAuthorityRequest
--  
-- @param _CertificateAuthorityId [__string] certificate authority Id
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: CertificateAuthorityId
-- Required parameter: GroupId
function M.GetGroupCertificateAuthorityRequest(_CertificateAuthorityId, _GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupCertificateAuthorityRequest")
	local t = { 
		["CertificateAuthorityId"] = _CertificateAuthorityId,
		["GroupId"] = _GroupId,
	}
	asserts.AssertGetGroupCertificateAuthorityRequest(t)
	return t
end

keys.ListSubscriptionDefinitionVersionsResponse = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertListSubscriptionDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscriptionDefinitionVersionsResponse[k], "ListSubscriptionDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionDefinitionVersionsResponse
--  
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Versions [ListOfVersionInformation] Versions
function M.ListSubscriptionDefinitionVersionsResponse(_NextToken, _Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Versions"] = _Versions,
	}
	asserts.AssertListSubscriptionDefinitionVersionsResponse(t)
	return t
end

keys.UpdateCoreDefinitionRequest = { ["CoreDefinitionId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateCoreDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCoreDefinitionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["CoreDefinitionId"] then asserts.Assert__string(struct["CoreDefinitionId"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCoreDefinitionRequest[k], "UpdateCoreDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCoreDefinitionRequest
--  
-- @param _CoreDefinitionId [__string] core definition Id
-- @param _Name [__string] name of the definition
-- Required parameter: CoreDefinitionId
function M.UpdateCoreDefinitionRequest(_CoreDefinitionId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCoreDefinitionRequest")
	local t = { 
		["CoreDefinitionId"] = _CoreDefinitionId,
		["Name"] = _Name,
	}
	asserts.AssertUpdateCoreDefinitionRequest(t)
	return t
end

keys.GetCoreDefinitionVersionResponse = { ["Definition"] = true, ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetCoreDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCoreDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then asserts.AssertCoreDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCoreDefinitionVersionResponse[k], "GetCoreDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCoreDefinitionVersionResponse
--  
-- @param _Definition [CoreDefinitionVersion] Information on definition
-- @param _Version [__string] Version of the core definition version.
-- @param _CreationTimestamp [__string] Timestamp of when the core definition version was created.
-- @param _Id [__string] Id of the core definition the version belongs to.
-- @param _Arn [__string] Arn of the core definition version.
function M.GetCoreDefinitionVersionResponse(_Definition, _Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCoreDefinitionVersionResponse")
	local t = { 
		["Definition"] = _Definition,
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetCoreDefinitionVersionResponse(t)
	return t
end

keys.DisassociateRoleFromGroupRequest = { ["GroupId"] = true, nil }

function asserts.AssertDisassociateRoleFromGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateRoleFromGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateRoleFromGroupRequest[k], "DisassociateRoleFromGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateRoleFromGroupRequest
--  
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.DisassociateRoleFromGroupRequest(_GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisassociateRoleFromGroupRequest")
	local t = { 
		["GroupId"] = _GroupId,
	}
	asserts.AssertDisassociateRoleFromGroupRequest(t)
	return t
end

keys.ListDeviceDefinitionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDeviceDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceDefinitionsRequest[k], "ListDeviceDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceDefinitionsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListDeviceDefinitionsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeviceDefinitionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListDeviceDefinitionsRequest(t)
	return t
end

keys.CreateSubscriptionDefinitionVersionResponse = { ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateSubscriptionDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriptionDefinitionVersionResponse[k], "CreateSubscriptionDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionDefinitionVersionResponse
--  
-- @param _Version [__string] Unique Id of a version.
-- @param _CreationTimestamp [__string] Timestamp of when the version was created.
-- @param _Id [__string] Id of the resource container.
-- @param _Arn [__string] Arn of the version.
function M.CreateSubscriptionDefinitionVersionResponse(_Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionDefinitionVersionResponse")
	local t = { 
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateSubscriptionDefinitionVersionResponse(t)
	return t
end

keys.UpdateGroupResponse = { nil }

function asserts.AssertUpdateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupResponse[k], "UpdateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupResponse
--  
function M.UpdateGroupResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupResponse")
	local t = { 
	}
	asserts.AssertUpdateGroupResponse(t)
	return t
end

keys.UpdateConnectivityInfoRequest = { ["ConnectivityInfo"] = true, ["ThingName"] = true, nil }

function asserts.AssertUpdateConnectivityInfoRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConnectivityInfoRequest to be of type 'table'")
	assert(struct["ThingName"], "Expected key ThingName to exist in table")
	if struct["ConnectivityInfo"] then asserts.AssertListOfConnectivityInfo(struct["ConnectivityInfo"]) end
	if struct["ThingName"] then asserts.Assert__string(struct["ThingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConnectivityInfoRequest[k], "UpdateConnectivityInfoRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConnectivityInfoRequest
-- connectivity info request
-- @param _ConnectivityInfo [ListOfConnectivityInfo] Connectivity info array
-- @param _ThingName [__string] Thing Name
-- Required parameter: ThingName
function M.UpdateConnectivityInfoRequest(_ConnectivityInfo, _ThingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConnectivityInfoRequest")
	local t = { 
		["ConnectivityInfo"] = _ConnectivityInfo,
		["ThingName"] = _ThingName,
	}
	asserts.AssertUpdateConnectivityInfoRequest(t)
	return t
end

keys.DeleteSubscriptionDefinitionRequest = { ["SubscriptionDefinitionId"] = true, nil }

function asserts.AssertDeleteSubscriptionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionDefinitionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then asserts.Assert__string(struct["SubscriptionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriptionDefinitionRequest[k], "DeleteSubscriptionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionDefinitionRequest
--  
-- @param _SubscriptionDefinitionId [__string] subscription definition Id
-- Required parameter: SubscriptionDefinitionId
function M.DeleteSubscriptionDefinitionRequest(_SubscriptionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionDefinitionRequest")
	local t = { 
		["SubscriptionDefinitionId"] = _SubscriptionDefinitionId,
	}
	asserts.AssertDeleteSubscriptionDefinitionRequest(t)
	return t
end

keys.VersionInformation = { ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertVersionInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionInformation to be of type 'table'")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersionInformation[k], "VersionInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionInformation
-- Information on the version
-- @param _Version [__string] Unique Id of a version.
-- @param _CreationTimestamp [__string] Timestamp of when the version was created.
-- @param _Id [__string] Id of the resource container.
-- @param _Arn [__string] Arn of the version.
function M.VersionInformation(_Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VersionInformation")
	local t = { 
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertVersionInformation(t)
	return t
end

keys.GroupCertificateConfiguration = { ["CertificateExpiryInMilliseconds"] = true, ["GroupId"] = true, ["CertificateAuthorityExpiryInMilliseconds"] = true, nil }

function asserts.AssertGroupCertificateConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupCertificateConfiguration to be of type 'table'")
	if struct["CertificateExpiryInMilliseconds"] then asserts.Assert__string(struct["CertificateExpiryInMilliseconds"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	if struct["CertificateAuthorityExpiryInMilliseconds"] then asserts.Assert__string(struct["CertificateAuthorityExpiryInMilliseconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupCertificateConfiguration[k], "GroupCertificateConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupCertificateConfiguration
-- Information on the group certificate configuration
-- @param _CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- @param _GroupId [__string] Id of the group the certificate configuration belongs to.
-- @param _CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
function M.GroupCertificateConfiguration(_CertificateExpiryInMilliseconds, _GroupId, _CertificateAuthorityExpiryInMilliseconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupCertificateConfiguration")
	local t = { 
		["CertificateExpiryInMilliseconds"] = _CertificateExpiryInMilliseconds,
		["GroupId"] = _GroupId,
		["CertificateAuthorityExpiryInMilliseconds"] = _CertificateAuthorityExpiryInMilliseconds,
	}
	asserts.AssertGroupCertificateConfiguration(t)
	return t
end

keys.GetAssociatedRoleRequest = { ["GroupId"] = true, nil }

function asserts.AssertGetAssociatedRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssociatedRoleRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAssociatedRoleRequest[k], "GetAssociatedRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssociatedRoleRequest
--  
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.GetAssociatedRoleRequest(_GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssociatedRoleRequest")
	local t = { 
		["GroupId"] = _GroupId,
	}
	asserts.AssertGetAssociatedRoleRequest(t)
	return t
end

keys.GetCoreDefinitionRequest = { ["CoreDefinitionId"] = true, nil }

function asserts.AssertGetCoreDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCoreDefinitionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["CoreDefinitionId"] then asserts.Assert__string(struct["CoreDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCoreDefinitionRequest[k], "GetCoreDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCoreDefinitionRequest
--  
-- @param _CoreDefinitionId [__string] core definition Id
-- Required parameter: CoreDefinitionId
function M.GetCoreDefinitionRequest(_CoreDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCoreDefinitionRequest")
	local t = { 
		["CoreDefinitionId"] = _CoreDefinitionId,
	}
	asserts.AssertGetCoreDefinitionRequest(t)
	return t
end

keys.ListSubscriptionDefinitionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSubscriptionDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscriptionDefinitionsRequest[k], "ListSubscriptionDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionDefinitionsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListSubscriptionDefinitionsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionDefinitionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListSubscriptionDefinitionsRequest(t)
	return t
end

keys.CreateSubscriptionDefinitionVersionRequest = { ["SubscriptionDefinitionId"] = true, ["AmznClientToken"] = true, ["Subscriptions"] = true, nil }

function asserts.AssertCreateSubscriptionDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriptionDefinitionVersionRequest to be of type 'table'")
	assert(struct["SubscriptionDefinitionId"], "Expected key SubscriptionDefinitionId to exist in table")
	if struct["SubscriptionDefinitionId"] then asserts.Assert__string(struct["SubscriptionDefinitionId"]) end
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["Subscriptions"] then asserts.AssertListOfSubscription(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriptionDefinitionVersionRequest[k], "CreateSubscriptionDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriptionDefinitionVersionRequest
--  
-- @param _SubscriptionDefinitionId [__string] subscription definition Id
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _Subscriptions [ListOfSubscription] Subscriptions in the version.
-- Required parameter: SubscriptionDefinitionId
function M.CreateSubscriptionDefinitionVersionRequest(_SubscriptionDefinitionId, _AmznClientToken, _Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriptionDefinitionVersionRequest")
	local t = { 
		["SubscriptionDefinitionId"] = _SubscriptionDefinitionId,
		["AmznClientToken"] = _AmznClientToken,
		["Subscriptions"] = _Subscriptions,
	}
	asserts.AssertCreateSubscriptionDefinitionVersionRequest(t)
	return t
end

keys.CreateCoreDefinitionVersionRequest = { ["Cores"] = true, ["AmznClientToken"] = true, ["CoreDefinitionId"] = true, nil }

function asserts.AssertCreateCoreDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCoreDefinitionVersionRequest to be of type 'table'")
	assert(struct["CoreDefinitionId"], "Expected key CoreDefinitionId to exist in table")
	if struct["Cores"] then asserts.AssertListOfCore(struct["Cores"]) end
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["CoreDefinitionId"] then asserts.Assert__string(struct["CoreDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCoreDefinitionVersionRequest[k], "CreateCoreDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCoreDefinitionVersionRequest
--  
-- @param _Cores [ListOfCore] Cores in the definition version.
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _CoreDefinitionId [__string] core definition Id
-- Required parameter: CoreDefinitionId
function M.CreateCoreDefinitionVersionRequest(_Cores, _AmznClientToken, _CoreDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCoreDefinitionVersionRequest")
	local t = { 
		["Cores"] = _Cores,
		["AmznClientToken"] = _AmznClientToken,
		["CoreDefinitionId"] = _CoreDefinitionId,
	}
	asserts.AssertCreateCoreDefinitionVersionRequest(t)
	return t
end

keys.CreateFunctionDefinitionRequest = { ["AmznClientToken"] = true, ["InitialVersion"] = true, ["Name"] = true, nil }

function asserts.AssertCreateFunctionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionDefinitionRequest to be of type 'table'")
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["InitialVersion"] then asserts.AssertFunctionDefinitionVersion(struct["InitialVersion"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFunctionDefinitionRequest[k], "CreateFunctionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionDefinitionRequest
--  
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _InitialVersion [FunctionDefinitionVersion] Information on the initial version
-- @param _Name [__string] name of the function definition
function M.CreateFunctionDefinitionRequest(_AmznClientToken, _InitialVersion, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionDefinitionRequest")
	local t = { 
		["AmznClientToken"] = _AmznClientToken,
		["InitialVersion"] = _InitialVersion,
		["Name"] = _Name,
	}
	asserts.AssertCreateFunctionDefinitionRequest(t)
	return t
end

keys.AssociateRoleToGroupRequest = { ["RoleArn"] = true, ["GroupId"] = true, nil }

function asserts.AssertAssociateRoleToGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateRoleToGroupRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateRoleToGroupRequest[k], "AssociateRoleToGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateRoleToGroupRequest
--  
-- @param _RoleArn [__string] Role arn you wish to associate with this group.
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.AssociateRoleToGroupRequest(_RoleArn, _GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateRoleToGroupRequest")
	local t = { 
		["RoleArn"] = _RoleArn,
		["GroupId"] = _GroupId,
	}
	asserts.AssertAssociateRoleToGroupRequest(t)
	return t
end

keys.GetSubscriptionDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetSubscriptionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSubscriptionDefinitionResponse[k], "GetSubscriptionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.GetSubscriptionDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetSubscriptionDefinitionResponse(t)
	return t
end

keys.ListGroupVersionsResponse = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertListGroupVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupVersionsResponse[k], "ListGroupVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupVersionsResponse
--  
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Versions [ListOfVersionInformation] Versions
function M.ListGroupVersionsResponse(_NextToken, _Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupVersionsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Versions"] = _Versions,
	}
	asserts.AssertListGroupVersionsResponse(t)
	return t
end

keys.ListCoreDefinitionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListCoreDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCoreDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCoreDefinitionsRequest[k], "ListCoreDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCoreDefinitionsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListCoreDefinitionsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCoreDefinitionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListCoreDefinitionsRequest(t)
	return t
end

keys.ListGroupCertificateAuthoritiesResponse = { ["GroupCertificateAuthorities"] = true, nil }

function asserts.AssertListGroupCertificateAuthoritiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupCertificateAuthoritiesResponse to be of type 'table'")
	if struct["GroupCertificateAuthorities"] then asserts.AssertListOfGroupCertificateAuthorityProperties(struct["GroupCertificateAuthorities"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupCertificateAuthoritiesResponse[k], "ListGroupCertificateAuthoritiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupCertificateAuthoritiesResponse
--  
-- @param _GroupCertificateAuthorities [ListOfGroupCertificateAuthorityProperties] List of certificate authorities associated with the group.
function M.ListGroupCertificateAuthoritiesResponse(_GroupCertificateAuthorities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupCertificateAuthoritiesResponse")
	local t = { 
		["GroupCertificateAuthorities"] = _GroupCertificateAuthorities,
	}
	asserts.AssertListGroupCertificateAuthoritiesResponse(t)
	return t
end

keys.Logger = { ["Type"] = true, ["Space"] = true, ["Component"] = true, ["Id"] = true, ["Level"] = true, nil }

function asserts.AssertLogger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Logger to be of type 'table'")
	if struct["Type"] then asserts.AssertLoggerType(struct["Type"]) end
	if struct["Space"] then asserts.Assert__integer(struct["Space"]) end
	if struct["Component"] then asserts.AssertLoggerComponent(struct["Component"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Level"] then asserts.AssertLoggerLevel(struct["Level"]) end
	for k,_ in pairs(struct) do
		assert(keys.Logger[k], "Logger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Logger
-- Information on the Logger
-- @param _Type [LoggerType] The type which will be use for log output
-- @param _Space [__integer] Amount of hardware space, in KB, to use if file system is used for logging purposes.
-- @param _Component [LoggerComponent] The component that will be subject to logs
-- @param _Id [__string] Element Id for this entry in the list.
-- @param _Level [LoggerLevel] The level of the logs
function M.Logger(_Type, _Space, _Component, _Id, _Level, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Logger")
	local t = { 
		["Type"] = _Type,
		["Space"] = _Space,
		["Component"] = _Component,
		["Id"] = _Id,
		["Level"] = _Level,
	}
	asserts.AssertLogger(t)
	return t
end

keys.UpdateGroupCertificateConfigurationRequest = { ["CertificateExpiryInMilliseconds"] = true, ["GroupId"] = true, nil }

function asserts.AssertUpdateGroupCertificateConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGroupCertificateConfigurationRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["CertificateExpiryInMilliseconds"] then asserts.Assert__string(struct["CertificateExpiryInMilliseconds"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGroupCertificateConfigurationRequest[k], "UpdateGroupCertificateConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGroupCertificateConfigurationRequest
--  
-- @param _CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.UpdateGroupCertificateConfigurationRequest(_CertificateExpiryInMilliseconds, _GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGroupCertificateConfigurationRequest")
	local t = { 
		["CertificateExpiryInMilliseconds"] = _CertificateExpiryInMilliseconds,
		["GroupId"] = _GroupId,
	}
	asserts.AssertUpdateGroupCertificateConfigurationRequest(t)
	return t
end

keys.GetFunctionDefinitionVersionResponse = { ["Definition"] = true, ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetFunctionDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetFunctionDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then asserts.AssertFunctionDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetFunctionDefinitionVersionResponse[k], "GetFunctionDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetFunctionDefinitionVersionResponse
--  
-- @param _Definition [FunctionDefinitionVersion] 
-- @param _Version [__string] Version of the function definition version.
-- @param _CreationTimestamp [__string] Timestamp when the funtion definition version was created.
-- @param _Id [__string] Id of the function definition the version belongs to.
-- @param _Arn [__string] Arn of the function definition version.
function M.GetFunctionDefinitionVersionResponse(_Definition, _Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetFunctionDefinitionVersionResponse")
	local t = { 
		["Definition"] = _Definition,
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetFunctionDefinitionVersionResponse(t)
	return t
end

keys.ListGroupCertificateAuthoritiesRequest = { ["GroupId"] = true, nil }

function asserts.AssertListGroupCertificateAuthoritiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGroupCertificateAuthoritiesRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupCertificateAuthoritiesRequest[k], "ListGroupCertificateAuthoritiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupCertificateAuthoritiesRequest
--  
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.ListGroupCertificateAuthoritiesRequest(_GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListGroupCertificateAuthoritiesRequest")
	local t = { 
		["GroupId"] = _GroupId,
	}
	asserts.AssertListGroupCertificateAuthoritiesRequest(t)
	return t
end

keys.ListDeviceDefinitionsResponse = { ["Definitions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDeviceDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceDefinitionsResponse to be of type 'table'")
	if struct["Definitions"] then asserts.AssertListOfDefinitionInformation(struct["Definitions"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceDefinitionsResponse[k], "ListDeviceDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceDefinitionsResponse
--  
-- @param _Definitions [ListOfDefinitionInformation] Definitions
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
function M.ListDeviceDefinitionsResponse(_Definitions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeviceDefinitionsResponse")
	local t = { 
		["Definitions"] = _Definitions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListDeviceDefinitionsResponse(t)
	return t
end

keys.CreateFunctionDefinitionVersionResponse = { ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateFunctionDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionDefinitionVersionResponse to be of type 'table'")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFunctionDefinitionVersionResponse[k], "CreateFunctionDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionDefinitionVersionResponse
--  
-- @param _Version [__string] Unique Id of a version.
-- @param _CreationTimestamp [__string] Timestamp of when the version was created.
-- @param _Id [__string] Id of the resource container.
-- @param _Arn [__string] Arn of the version.
function M.CreateFunctionDefinitionVersionResponse(_Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionDefinitionVersionResponse")
	local t = { 
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateFunctionDefinitionVersionResponse(t)
	return t
end

keys.CreateGroupVersionResponse = { ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateGroupVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupVersionResponse to be of type 'table'")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupVersionResponse[k], "CreateGroupVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupVersionResponse
--  
-- @param _Version [__string] Unique Id of a version.
-- @param _CreationTimestamp [__string] Timestamp of when the version was created.
-- @param _Id [__string] Id of the resource container.
-- @param _Arn [__string] Arn of the version.
function M.CreateGroupVersionResponse(_Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupVersionResponse")
	local t = { 
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateGroupVersionResponse(t)
	return t
end

keys.ListVersionsResponse = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertListVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVersionsResponse[k], "ListVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVersionsResponse
-- List of versions response
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Versions [ListOfVersionInformation] Versions
function M.ListVersionsResponse(_NextToken, _Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListVersionsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Versions"] = _Versions,
	}
	asserts.AssertListVersionsResponse(t)
	return t
end

keys.UpdateDeviceDefinitionRequest = { ["DeviceDefinitionId"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateDeviceDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceDefinitionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then asserts.Assert__string(struct["DeviceDefinitionId"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceDefinitionRequest[k], "UpdateDeviceDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceDefinitionRequest
--  
-- @param _DeviceDefinitionId [__string] device definition Id
-- @param _Name [__string] name of the definition
-- Required parameter: DeviceDefinitionId
function M.UpdateDeviceDefinitionRequest(_DeviceDefinitionId, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeviceDefinitionRequest")
	local t = { 
		["DeviceDefinitionId"] = _DeviceDefinitionId,
		["Name"] = _Name,
	}
	asserts.AssertUpdateDeviceDefinitionRequest(t)
	return t
end

keys.GroupVersion = { ["CoreDefinitionVersionArn"] = true, ["LoggerDefinitionVersionArn"] = true, ["FunctionDefinitionVersionArn"] = true, ["DeviceDefinitionVersionArn"] = true, ["SubscriptionDefinitionVersionArn"] = true, nil }

function asserts.AssertGroupVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GroupVersion to be of type 'table'")
	if struct["CoreDefinitionVersionArn"] then asserts.Assert__string(struct["CoreDefinitionVersionArn"]) end
	if struct["LoggerDefinitionVersionArn"] then asserts.Assert__string(struct["LoggerDefinitionVersionArn"]) end
	if struct["FunctionDefinitionVersionArn"] then asserts.Assert__string(struct["FunctionDefinitionVersionArn"]) end
	if struct["DeviceDefinitionVersionArn"] then asserts.Assert__string(struct["DeviceDefinitionVersionArn"]) end
	if struct["SubscriptionDefinitionVersionArn"] then asserts.Assert__string(struct["SubscriptionDefinitionVersionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GroupVersion[k], "GroupVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GroupVersion
-- Information on group version
-- @param _CoreDefinitionVersionArn [__string] Core definition version arn for this group.
-- @param _LoggerDefinitionVersionArn [__string] Logger definitionv ersion arn for this group.
-- @param _FunctionDefinitionVersionArn [__string] Function definition version arn for this group.
-- @param _DeviceDefinitionVersionArn [__string] Device definition version arn for this group.
-- @param _SubscriptionDefinitionVersionArn [__string] Subscription definition version arn for this group.
function M.GroupVersion(_CoreDefinitionVersionArn, _LoggerDefinitionVersionArn, _FunctionDefinitionVersionArn, _DeviceDefinitionVersionArn, _SubscriptionDefinitionVersionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GroupVersion")
	local t = { 
		["CoreDefinitionVersionArn"] = _CoreDefinitionVersionArn,
		["LoggerDefinitionVersionArn"] = _LoggerDefinitionVersionArn,
		["FunctionDefinitionVersionArn"] = _FunctionDefinitionVersionArn,
		["DeviceDefinitionVersionArn"] = _DeviceDefinitionVersionArn,
		["SubscriptionDefinitionVersionArn"] = _SubscriptionDefinitionVersionArn,
	}
	asserts.AssertGroupVersion(t)
	return t
end

keys.DeleteLoggerDefinitionResponse = { nil }

function asserts.AssertDeleteLoggerDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLoggerDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLoggerDefinitionResponse[k], "DeleteLoggerDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLoggerDefinitionResponse
--  
function M.DeleteLoggerDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLoggerDefinitionResponse")
	local t = { 
	}
	asserts.AssertDeleteLoggerDefinitionResponse(t)
	return t
end

keys.DeleteFunctionDefinitionRequest = { ["FunctionDefinitionId"] = true, nil }

function asserts.AssertDeleteFunctionDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteFunctionDefinitionRequest to be of type 'table'")
	assert(struct["FunctionDefinitionId"], "Expected key FunctionDefinitionId to exist in table")
	if struct["FunctionDefinitionId"] then asserts.Assert__string(struct["FunctionDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteFunctionDefinitionRequest[k], "DeleteFunctionDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteFunctionDefinitionRequest
--  
-- @param _FunctionDefinitionId [__string] the unique Id of the lambda definition
-- Required parameter: FunctionDefinitionId
function M.DeleteFunctionDefinitionRequest(_FunctionDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteFunctionDefinitionRequest")
	local t = { 
		["FunctionDefinitionId"] = _FunctionDefinitionId,
	}
	asserts.AssertDeleteFunctionDefinitionRequest(t)
	return t
end

keys.Deployment = { ["DeploymentId"] = true, ["DeploymentArn"] = true, ["GroupArn"] = true, ["CreatedAt"] = true, nil }

function asserts.AssertDeployment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deployment to be of type 'table'")
	if struct["DeploymentId"] then asserts.Assert__string(struct["DeploymentId"]) end
	if struct["DeploymentArn"] then asserts.Assert__string(struct["DeploymentArn"]) end
	if struct["GroupArn"] then asserts.Assert__string(struct["GroupArn"]) end
	if struct["CreatedAt"] then asserts.Assert__string(struct["CreatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.Deployment[k], "Deployment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deployment
-- Information on the deployment
-- @param _DeploymentId [__string] Id of the deployment.
-- @param _DeploymentArn [__string] Arn of the deployment.
-- @param _GroupArn [__string] Arn of the group for this deployment.
-- @param _CreatedAt [__string] Timestamp when the deployment was created.
function M.Deployment(_DeploymentId, _DeploymentArn, _GroupArn, _CreatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Deployment")
	local t = { 
		["DeploymentId"] = _DeploymentId,
		["DeploymentArn"] = _DeploymentArn,
		["GroupArn"] = _GroupArn,
		["CreatedAt"] = _CreatedAt,
	}
	asserts.AssertDeployment(t)
	return t
end

keys.GetGroupCertificateConfigurationResponse = { ["CertificateExpiryInMilliseconds"] = true, ["GroupId"] = true, ["CertificateAuthorityExpiryInMilliseconds"] = true, nil }

function asserts.AssertGetGroupCertificateConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupCertificateConfigurationResponse to be of type 'table'")
	if struct["CertificateExpiryInMilliseconds"] then asserts.Assert__string(struct["CertificateExpiryInMilliseconds"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	if struct["CertificateAuthorityExpiryInMilliseconds"] then asserts.Assert__string(struct["CertificateAuthorityExpiryInMilliseconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupCertificateConfigurationResponse[k], "GetGroupCertificateConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupCertificateConfigurationResponse
--  
-- @param _CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- @param _GroupId [__string] Id of the group the certificate configuration belongs to.
-- @param _CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
function M.GetGroupCertificateConfigurationResponse(_CertificateExpiryInMilliseconds, _GroupId, _CertificateAuthorityExpiryInMilliseconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupCertificateConfigurationResponse")
	local t = { 
		["CertificateExpiryInMilliseconds"] = _CertificateExpiryInMilliseconds,
		["GroupId"] = _GroupId,
		["CertificateAuthorityExpiryInMilliseconds"] = _CertificateAuthorityExpiryInMilliseconds,
	}
	asserts.AssertGetGroupCertificateConfigurationResponse(t)
	return t
end

keys.CreateGroupCertificateAuthorityResponse = { ["GroupCertificateAuthorityArn"] = true, nil }

function asserts.AssertCreateGroupCertificateAuthorityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupCertificateAuthorityResponse to be of type 'table'")
	if struct["GroupCertificateAuthorityArn"] then asserts.Assert__string(struct["GroupCertificateAuthorityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupCertificateAuthorityResponse[k], "CreateGroupCertificateAuthorityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupCertificateAuthorityResponse
--  
-- @param _GroupCertificateAuthorityArn [__string] Arn of the group certificate authority.
function M.CreateGroupCertificateAuthorityResponse(_GroupCertificateAuthorityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupCertificateAuthorityResponse")
	local t = { 
		["GroupCertificateAuthorityArn"] = _GroupCertificateAuthorityArn,
	}
	asserts.AssertCreateGroupCertificateAuthorityResponse(t)
	return t
end

keys.GetDeploymentStatusRequest = { ["DeploymentId"] = true, ["GroupId"] = true, nil }

function asserts.AssertGetDeploymentStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeploymentStatusRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	assert(struct["DeploymentId"], "Expected key DeploymentId to exist in table")
	if struct["DeploymentId"] then asserts.Assert__string(struct["DeploymentId"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeploymentStatusRequest[k], "GetDeploymentStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeploymentStatusRequest
--  
-- @param _DeploymentId [__string] the deployment Id
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
-- Required parameter: DeploymentId
function M.GetDeploymentStatusRequest(_DeploymentId, _GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeploymentStatusRequest")
	local t = { 
		["DeploymentId"] = _DeploymentId,
		["GroupId"] = _GroupId,
	}
	asserts.AssertGetDeploymentStatusRequest(t)
	return t
end

keys.FunctionConfigurationEnvironment = { ["Variables"] = true, nil }

function asserts.AssertFunctionConfigurationEnvironment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FunctionConfigurationEnvironment to be of type 'table'")
	if struct["Variables"] then asserts.AssertMapOf__string(struct["Variables"]) end
	for k,_ in pairs(struct) do
		assert(keys.FunctionConfigurationEnvironment[k], "FunctionConfigurationEnvironment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FunctionConfigurationEnvironment
-- Environment of the function configuration
-- @param _Variables [MapOf__string] Environment variables for the lambda function.
function M.FunctionConfigurationEnvironment(_Variables, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FunctionConfigurationEnvironment")
	local t = { 
		["Variables"] = _Variables,
	}
	asserts.AssertFunctionConfigurationEnvironment(t)
	return t
end

keys.Function = { ["FunctionConfiguration"] = true, ["Id"] = true, ["FunctionArn"] = true, nil }

function asserts.AssertFunction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Function to be of type 'table'")
	if struct["FunctionConfiguration"] then asserts.AssertFunctionConfiguration(struct["FunctionConfiguration"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["FunctionArn"] then asserts.Assert__string(struct["FunctionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Function[k], "Function contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Function
-- Information on function
-- @param _FunctionConfiguration [FunctionConfiguration] Configuration of the function
-- @param _Id [__string] Id of the function in this version.
-- @param _FunctionArn [__string] Arn of the Lambda function.
function M.Function(_FunctionConfiguration, _Id, _FunctionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Function")
	local t = { 
		["FunctionConfiguration"] = _FunctionConfiguration,
		["Id"] = _Id,
		["FunctionArn"] = _FunctionArn,
	}
	asserts.AssertFunction(t)
	return t
end

keys.CreateGroupVersionRequest = { ["AmznClientToken"] = true, ["DeviceDefinitionVersionArn"] = true, ["SubscriptionDefinitionVersionArn"] = true, ["FunctionDefinitionVersionArn"] = true, ["CoreDefinitionVersionArn"] = true, ["LoggerDefinitionVersionArn"] = true, ["GroupId"] = true, nil }

function asserts.AssertCreateGroupVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupVersionRequest to be of type 'table'")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["DeviceDefinitionVersionArn"] then asserts.Assert__string(struct["DeviceDefinitionVersionArn"]) end
	if struct["SubscriptionDefinitionVersionArn"] then asserts.Assert__string(struct["SubscriptionDefinitionVersionArn"]) end
	if struct["FunctionDefinitionVersionArn"] then asserts.Assert__string(struct["FunctionDefinitionVersionArn"]) end
	if struct["CoreDefinitionVersionArn"] then asserts.Assert__string(struct["CoreDefinitionVersionArn"]) end
	if struct["LoggerDefinitionVersionArn"] then asserts.Assert__string(struct["LoggerDefinitionVersionArn"]) end
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupVersionRequest[k], "CreateGroupVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupVersionRequest
--  
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _DeviceDefinitionVersionArn [__string] Device definition version arn for this group.
-- @param _SubscriptionDefinitionVersionArn [__string] Subscription definition version arn for this group.
-- @param _FunctionDefinitionVersionArn [__string] Function definition version arn for this group.
-- @param _CoreDefinitionVersionArn [__string] Core definition version arn for this group.
-- @param _LoggerDefinitionVersionArn [__string] Logger definitionv ersion arn for this group.
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required parameter: GroupId
function M.CreateGroupVersionRequest(_AmznClientToken, _DeviceDefinitionVersionArn, _SubscriptionDefinitionVersionArn, _FunctionDefinitionVersionArn, _CoreDefinitionVersionArn, _LoggerDefinitionVersionArn, _GroupId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupVersionRequest")
	local t = { 
		["AmznClientToken"] = _AmznClientToken,
		["DeviceDefinitionVersionArn"] = _DeviceDefinitionVersionArn,
		["SubscriptionDefinitionVersionArn"] = _SubscriptionDefinitionVersionArn,
		["FunctionDefinitionVersionArn"] = _FunctionDefinitionVersionArn,
		["CoreDefinitionVersionArn"] = _CoreDefinitionVersionArn,
		["LoggerDefinitionVersionArn"] = _LoggerDefinitionVersionArn,
		["GroupId"] = _GroupId,
	}
	asserts.AssertCreateGroupVersionRequest(t)
	return t
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
function M.DeleteGroupResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGroupResponse")
	local t = { 
	}
	asserts.AssertDeleteGroupResponse(t)
	return t
end

keys.CreateFunctionDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateFunctionDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateFunctionDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateFunctionDefinitionResponse[k], "CreateFunctionDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateFunctionDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.CreateFunctionDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateFunctionDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateFunctionDefinitionResponse(t)
	return t
end

keys.AssociateRoleToGroupResponse = { ["AssociatedAt"] = true, nil }

function asserts.AssertAssociateRoleToGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateRoleToGroupResponse to be of type 'table'")
	if struct["AssociatedAt"] then asserts.Assert__string(struct["AssociatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateRoleToGroupResponse[k], "AssociateRoleToGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateRoleToGroupResponse
--  
-- @param _AssociatedAt [__string] Time the role arn was associated to your group.
function M.AssociateRoleToGroupResponse(_AssociatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociateRoleToGroupResponse")
	local t = { 
		["AssociatedAt"] = _AssociatedAt,
	}
	asserts.AssertAssociateRoleToGroupResponse(t)
	return t
end

keys.CreateLoggerDefinitionResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateLoggerDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLoggerDefinitionResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLoggerDefinitionResponse[k], "CreateLoggerDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLoggerDefinitionResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.CreateLoggerDefinitionResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLoggerDefinitionResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateLoggerDefinitionResponse(t)
	return t
end

keys.UpdateConnectivityInfoResponse = { ["Message"] = true, ["Version"] = true, nil }

function asserts.AssertUpdateConnectivityInfoResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConnectivityInfoResponse to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConnectivityInfoResponse[k], "UpdateConnectivityInfoResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConnectivityInfoResponse
--  
-- @param _Message [__string] Response Text
-- @param _Version [__string] New Version
function M.UpdateConnectivityInfoResponse(_Message, _Version, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateConnectivityInfoResponse")
	local t = { 
		["Message"] = _Message,
		["Version"] = _Version,
	}
	asserts.AssertUpdateConnectivityInfoResponse(t)
	return t
end

keys.CreateDeviceDefinitionVersionRequest = { ["DeviceDefinitionId"] = true, ["AmznClientToken"] = true, ["Devices"] = true, nil }

function asserts.AssertCreateDeviceDefinitionVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDeviceDefinitionVersionRequest to be of type 'table'")
	assert(struct["DeviceDefinitionId"], "Expected key DeviceDefinitionId to exist in table")
	if struct["DeviceDefinitionId"] then asserts.Assert__string(struct["DeviceDefinitionId"]) end
	if struct["AmznClientToken"] then asserts.Assert__string(struct["AmznClientToken"]) end
	if struct["Devices"] then asserts.AssertListOfDevice(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDeviceDefinitionVersionRequest[k], "CreateDeviceDefinitionVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDeviceDefinitionVersionRequest
--  
-- @param _DeviceDefinitionId [__string] device definition Id
-- @param _AmznClientToken [__string] The client token used to request idempotent operations.
-- @param _Devices [ListOfDevice] Devices in the definition version.
-- Required parameter: DeviceDefinitionId
function M.CreateDeviceDefinitionVersionRequest(_DeviceDefinitionId, _AmznClientToken, _Devices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDeviceDefinitionVersionRequest")
	local t = { 
		["DeviceDefinitionId"] = _DeviceDefinitionId,
		["AmznClientToken"] = _AmznClientToken,
		["Devices"] = _Devices,
	}
	asserts.AssertCreateDeviceDefinitionVersionRequest(t)
	return t
end

keys.GetLoggerDefinitionVersionResponse = { ["Definition"] = true, ["Version"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertGetLoggerDefinitionVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggerDefinitionVersionResponse to be of type 'table'")
	if struct["Definition"] then asserts.AssertLoggerDefinitionVersion(struct["Definition"]) end
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoggerDefinitionVersionResponse[k], "GetLoggerDefinitionVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggerDefinitionVersionResponse
--  
-- @param _Definition [LoggerDefinitionVersion] Information on definition
-- @param _Version [__string] Version of the logger definition version.
-- @param _CreationTimestamp [__string] Timestamp of when the logger definition version was created.
-- @param _Id [__string] Id of the logger definition the version belongs to.
-- @param _Arn [__string] Arn of the logger definition version.
function M.GetLoggerDefinitionVersionResponse(_Definition, _Version, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggerDefinitionVersionResponse")
	local t = { 
		["Definition"] = _Definition,
		["Version"] = _Version,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertGetLoggerDefinitionVersionResponse(t)
	return t
end

keys.UpdateDeviceDefinitionResponse = { nil }

function asserts.AssertUpdateDeviceDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceDefinitionResponse[k], "UpdateDeviceDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceDefinitionResponse
--  
function M.UpdateDeviceDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDeviceDefinitionResponse")
	local t = { 
	}
	asserts.AssertUpdateDeviceDefinitionResponse(t)
	return t
end

keys.ListFunctionDefinitionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListFunctionDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFunctionDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__string(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFunctionDefinitionsRequest[k], "ListFunctionDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFunctionDefinitionsRequest
--  
-- @param _NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- @param _MaxResults [__string] Specifies the maximum number of list results to be returned in this page
function M.ListFunctionDefinitionsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFunctionDefinitionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListFunctionDefinitionsRequest(t)
	return t
end

keys.ListLoggerDefinitionVersionsResponse = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertListLoggerDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLoggerDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLoggerDefinitionVersionsResponse[k], "ListLoggerDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLoggerDefinitionVersionsResponse
--  
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Versions [ListOfVersionInformation] Versions
function M.ListLoggerDefinitionVersionsResponse(_NextToken, _Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLoggerDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Versions"] = _Versions,
	}
	asserts.AssertListLoggerDefinitionVersionsResponse(t)
	return t
end

keys.GetServiceRoleForAccountResponse = { ["AssociatedAt"] = true, ["RoleArn"] = true, nil }

function asserts.AssertGetServiceRoleForAccountResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceRoleForAccountResponse to be of type 'table'")
	if struct["AssociatedAt"] then asserts.Assert__string(struct["AssociatedAt"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServiceRoleForAccountResponse[k], "GetServiceRoleForAccountResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceRoleForAccountResponse
--  
-- @param _AssociatedAt [__string] Time when the service role was associated to the account.
-- @param _RoleArn [__string] Role arn which is associated to the account.
function M.GetServiceRoleForAccountResponse(_AssociatedAt, _RoleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServiceRoleForAccountResponse")
	local t = { 
		["AssociatedAt"] = _AssociatedAt,
		["RoleArn"] = _RoleArn,
	}
	asserts.AssertGetServiceRoleForAccountResponse(t)
	return t
end

keys.GetLoggerDefinitionRequest = { ["LoggerDefinitionId"] = true, nil }

function asserts.AssertGetLoggerDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLoggerDefinitionRequest to be of type 'table'")
	assert(struct["LoggerDefinitionId"], "Expected key LoggerDefinitionId to exist in table")
	if struct["LoggerDefinitionId"] then asserts.Assert__string(struct["LoggerDefinitionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLoggerDefinitionRequest[k], "GetLoggerDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLoggerDefinitionRequest
--  
-- @param _LoggerDefinitionId [__string] logger definition Id
-- Required parameter: LoggerDefinitionId
function M.GetLoggerDefinitionRequest(_LoggerDefinitionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLoggerDefinitionRequest")
	local t = { 
		["LoggerDefinitionId"] = _LoggerDefinitionId,
	}
	asserts.AssertGetLoggerDefinitionRequest(t)
	return t
end

keys.GetGroupVersionRequest = { ["GroupId"] = true, ["GroupVersionId"] = true, nil }

function asserts.AssertGetGroupVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGroupVersionRequest to be of type 'table'")
	assert(struct["GroupVersionId"], "Expected key GroupVersionId to exist in table")
	assert(struct["GroupId"], "Expected key GroupId to exist in table")
	if struct["GroupId"] then asserts.Assert__string(struct["GroupId"]) end
	if struct["GroupVersionId"] then asserts.Assert__string(struct["GroupVersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGroupVersionRequest[k], "GetGroupVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGroupVersionRequest
--  
-- @param _GroupId [__string] The unique Id of the AWS Greengrass Group
-- @param _GroupVersionId [__string] Group version Id
-- Required parameter: GroupVersionId
-- Required parameter: GroupId
function M.GetGroupVersionRequest(_GroupId, _GroupVersionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGroupVersionRequest")
	local t = { 
		["GroupId"] = _GroupId,
		["GroupVersionId"] = _GroupVersionId,
	}
	asserts.AssertGetGroupVersionRequest(t)
	return t
end

keys.ListDeploymentsResponse = { ["NextToken"] = true, ["Deployments"] = true, nil }

function asserts.AssertListDeploymentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeploymentsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Deployments"] then asserts.AssertDeployments(struct["Deployments"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeploymentsResponse[k], "ListDeploymentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeploymentsResponse
--  
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Deployments [Deployments] Information on deployments
function M.ListDeploymentsResponse(_NextToken, _Deployments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeploymentsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Deployments"] = _Deployments,
	}
	asserts.AssertListDeploymentsResponse(t)
	return t
end

keys.ListDeviceDefinitionVersionsResponse = { ["NextToken"] = true, ["Versions"] = true, nil }

function asserts.AssertListDeviceDefinitionVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceDefinitionVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Versions"] then asserts.AssertListOfVersionInformation(struct["Versions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceDefinitionVersionsResponse[k], "ListDeviceDefinitionVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceDefinitionVersionsResponse
--  
-- @param _NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @param _Versions [ListOfVersionInformation] Versions
function M.ListDeviceDefinitionVersionsResponse(_NextToken, _Versions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDeviceDefinitionVersionsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Versions"] = _Versions,
	}
	asserts.AssertListDeviceDefinitionVersionsResponse(t)
	return t
end

keys.CreateGroupResponse = { ["LatestVersionArn"] = true, ["Name"] = true, ["LastUpdatedTimestamp"] = true, ["LatestVersion"] = true, ["CreationTimestamp"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGroupResponse to be of type 'table'")
	if struct["LatestVersionArn"] then asserts.Assert__string(struct["LatestVersionArn"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LastUpdatedTimestamp"] then asserts.Assert__string(struct["LastUpdatedTimestamp"]) end
	if struct["LatestVersion"] then asserts.Assert__string(struct["LatestVersion"]) end
	if struct["CreationTimestamp"] then asserts.Assert__string(struct["CreationTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGroupResponse[k], "CreateGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGroupResponse
--  
-- @param _LatestVersionArn [__string] Latest version arn of the definition.
-- @param _Name [__string] Name of the definition.
-- @param _LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- @param _LatestVersion [__string] Last version of the definition.
-- @param _CreationTimestamp [__string] Timestamp of when the definition was created.
-- @param _Id [__string] Id of the definition.
-- @param _Arn [__string] Arn of the definition.
function M.CreateGroupResponse(_LatestVersionArn, _Name, _LastUpdatedTimestamp, _LatestVersion, _CreationTimestamp, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateGroupResponse")
	local t = { 
		["LatestVersionArn"] = _LatestVersionArn,
		["Name"] = _Name,
		["LastUpdatedTimestamp"] = _LastUpdatedTimestamp,
		["LatestVersion"] = _LatestVersion,
		["CreationTimestamp"] = _CreationTimestamp,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertCreateGroupResponse(t)
	return t
end

function asserts.AssertLoggerLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected LoggerLevel to be of type 'string'")
end

--  
function M.LoggerLevel(str)
	asserts.AssertLoggerLevel(str)
	return str
end

function asserts.AssertLoggerComponent(str)
	assert(str)
	assert(type(str) == "string", "Expected LoggerComponent to be of type 'string'")
end

--  
function M.LoggerComponent(str)
	asserts.AssertLoggerComponent(str)
	return str
end

function asserts.AssertDeploymentType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeploymentType to be of type 'string'")
end

--  
function M.DeploymentType(str)
	asserts.AssertDeploymentType(str)
	return str
end

function asserts.Assert__string(str)
	assert(str)
	assert(type(str) == "string", "Expected __string to be of type 'string'")
end

--  
function M.__string(str)
	asserts.Assert__string(str)
	return str
end

function asserts.AssertLoggerType(str)
	assert(str)
	assert(type(str) == "string", "Expected LoggerType to be of type 'string'")
end

--  
function M.LoggerType(str)
	asserts.AssertLoggerType(str)
	return str
end

function asserts.Assert__double(double)
	assert(double)
	assert(type(double) == "number", "Expected __double to be of type 'number'")
end

function M.__double(double)
	asserts.Assert__double(double)
	return double
end

function asserts.Assert__integer(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.__integer(integer)
	asserts.Assert__integer(integer)
	return integer
end

function asserts.Assert__boolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected __boolean to be of type 'boolean'")
end

function M.__boolean(boolean)
	asserts.Assert__boolean(boolean)
	return boolean
end

function asserts.AssertMapOf__string(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOf__string to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.Assert__string(v)
	end
end

function M.MapOf__string(map)
	asserts.AssertMapOf__string(map)
	return map
end

function asserts.Assert__timestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestamp to be of type 'string'")
end

function M.__timestamp(timestamp)
	asserts.Assert__timestamp(timestamp)
	return timestamp
end

function asserts.AssertListOfLogger(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfLogger to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLogger(v)
	end
end

--  
-- List of Logger objects
function M.ListOfLogger(list)
	asserts.AssertListOfLogger(list)
	return list
end

function asserts.AssertDeployments(list)
	assert(list)
	assert(type(list) == "table", "Expected Deployments to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeployment(v)
	end
end

--  
-- List of Deployment objects
function M.Deployments(list)
	asserts.AssertDeployments(list)
	return list
end

function asserts.AssertListOfCore(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfCore to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCore(v)
	end
end

--  
-- List of Core objects
function M.ListOfCore(list)
	asserts.AssertListOfCore(list)
	return list
end

function asserts.AssertListOfFunction(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfFunction to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFunction(v)
	end
end

--  
-- List of Function objects
function M.ListOfFunction(list)
	asserts.AssertListOfFunction(list)
	return list
end

function asserts.AssertListOfGroupInformation(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfGroupInformation to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroupInformation(v)
	end
end

--  
-- List of GroupInformation objects
function M.ListOfGroupInformation(list)
	asserts.AssertListOfGroupInformation(list)
	return list
end

function asserts.AssertErrorDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ErrorDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertErrorDetail(v)
	end
end

-- Error Details
-- List of ErrorDetail objects
function M.ErrorDetails(list)
	asserts.AssertErrorDetails(list)
	return list
end

function asserts.AssertListOfDefinitionInformation(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDefinitionInformation to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDefinitionInformation(v)
	end
end

--  
-- List of DefinitionInformation objects
function M.ListOfDefinitionInformation(list)
	asserts.AssertListOfDefinitionInformation(list)
	return list
end

function asserts.AssertListOfDevice(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfDevice to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDevice(v)
	end
end

--  
-- List of Device objects
function M.ListOfDevice(list)
	asserts.AssertListOfDevice(list)
	return list
end

function asserts.AssertListOfConnectivityInfo(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfConnectivityInfo to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConnectivityInfo(v)
	end
end

--  
-- List of ConnectivityInfo objects
function M.ListOfConnectivityInfo(list)
	asserts.AssertListOfConnectivityInfo(list)
	return list
end

function asserts.AssertListOfSubscription(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSubscription to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubscription(v)
	end
end

--  
-- List of Subscription objects
function M.ListOfSubscription(list)
	asserts.AssertListOfSubscription(list)
	return list
end

function asserts.AssertListOfVersionInformation(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfVersionInformation to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVersionInformation(v)
	end
end

--  
-- List of VersionInformation objects
function M.ListOfVersionInformation(list)
	asserts.AssertListOfVersionInformation(list)
	return list
end

function asserts.AssertListOfGroupCertificateAuthorityProperties(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfGroupCertificateAuthorityProperties to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGroupCertificateAuthorityProperties(v)
	end
end

--  
-- List of GroupCertificateAuthorityProperties objects
function M.ListOfGroupCertificateAuthorityProperties(list)
	asserts.AssertListOfGroupCertificateAuthorityProperties(list)
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
--- Call GetDeviceDefinitionVersion asynchronously, invoking a callback when done
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

--- Call GetDeviceDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetDeviceDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeviceDefinitionVersions asynchronously, invoking a callback when done
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

--- Call ListDeviceDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeviceDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListDeviceDefinitionVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeviceDefinitionVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateRoleToGroup asynchronously, invoking a callback when done
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

--- Call AssociateRoleToGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateRoleToGroupRequest
-- @return response
-- @return error_message
function M.AssociateRoleToGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateRoleToGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSubscriptionDefinitionVersions asynchronously, invoking a callback when done
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

--- Call ListSubscriptionDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSubscriptionDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListSubscriptionDefinitionVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscriptionDefinitionVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCoreDefinitions asynchronously, invoking a callback when done
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

--- Call ListCoreDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCoreDefinitionsRequest
-- @return response
-- @return error_message
function M.ListCoreDefinitionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCoreDefinitionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroupVersions asynchronously, invoking a callback when done
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

--- Call ListGroupVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupVersionsRequest
-- @return response
-- @return error_message
function M.ListGroupVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCoreDefinition asynchronously, invoking a callback when done
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

--- Call UpdateCoreDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCoreDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateCoreDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCoreDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCoreDefinition asynchronously, invoking a callback when done
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

--- Call CreateCoreDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCoreDefinitionRequest
-- @return response
-- @return error_message
function M.CreateCoreDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCoreDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSubscriptionDefinition asynchronously, invoking a callback when done
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

--- Call GetSubscriptionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSubscriptionDefinitionRequest
-- @return response
-- @return error_message
function M.GetSubscriptionDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSubscriptionDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeploymentStatus asynchronously, invoking a callback when done
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

--- Call GetDeploymentStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeploymentStatusRequest
-- @return response
-- @return error_message
function M.GetDeploymentStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeviceDefinitions asynchronously, invoking a callback when done
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

--- Call ListDeviceDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeviceDefinitionsRequest
-- @return response
-- @return error_message
function M.ListDeviceDefinitionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeviceDefinitionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGroup asynchronously, invoking a callback when done
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

--- Call CreateGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGroupRequest
-- @return response
-- @return error_message
function M.CreateGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroupCertificateAuthority asynchronously, invoking a callback when done
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

--- Call GetGroupCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupCertificateAuthorityRequest
-- @return response
-- @return error_message
function M.GetGroupCertificateAuthoritySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupCertificateAuthorityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeployment asynchronously, invoking a callback when done
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

--- Call CreateDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeploymentRequest
-- @return response
-- @return error_message
function M.CreateDeploymentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSubscriptionDefinitions asynchronously, invoking a callback when done
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

--- Call ListSubscriptionDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSubscriptionDefinitionsRequest
-- @return response
-- @return error_message
function M.ListSubscriptionDefinitionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscriptionDefinitionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDeviceDefinition asynchronously, invoking a callback when done
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

--- Call UpdateDeviceDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDeviceDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateDeviceDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeviceDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLoggerDefinitionVersions asynchronously, invoking a callback when done
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

--- Call ListLoggerDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLoggerDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListLoggerDefinitionVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLoggerDefinitionVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeviceDefinition asynchronously, invoking a callback when done
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

--- Call CreateDeviceDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeviceDefinitionRequest
-- @return response
-- @return error_message
function M.CreateDeviceDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeviceDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateServiceRoleToAccount asynchronously, invoking a callback when done
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

--- Call AssociateServiceRoleToAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateServiceRoleToAccountRequest
-- @return response
-- @return error_message
function M.AssociateServiceRoleToAccountSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateServiceRoleToAccountAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGroup asynchronously, invoking a callback when done
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

--- Call DeleteGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGroupRequest
-- @return response
-- @return error_message
function M.DeleteGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDeviceDefinitionVersion asynchronously, invoking a callback when done
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

--- Call CreateDeviceDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeviceDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateDeviceDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeviceDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCoreDefinition asynchronously, invoking a callback when done
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

--- Call GetCoreDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCoreDefinitionRequest
-- @return response
-- @return error_message
function M.GetCoreDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCoreDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSubscriptionDefinitionVersion asynchronously, invoking a callback when done
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

--- Call GetSubscriptionDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSubscriptionDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetSubscriptionDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSubscriptionDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFunctionDefinitionVersions asynchronously, invoking a callback when done
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

--- Call ListFunctionDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFunctionDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListFunctionDefinitionVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFunctionDefinitionVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFunctionDefinition asynchronously, invoking a callback when done
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

--- Call GetFunctionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFunctionDefinitionRequest
-- @return response
-- @return error_message
function M.GetFunctionDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFunctionDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroup asynchronously, invoking a callback when done
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

--- Call GetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupRequest
-- @return response
-- @return error_message
function M.GetGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGroup asynchronously, invoking a callback when done
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

--- Call UpdateGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGroupRequest
-- @return response
-- @return error_message
function M.UpdateGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCoreDefinition asynchronously, invoking a callback when done
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

--- Call DeleteCoreDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCoreDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteCoreDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCoreDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGroupVersion asynchronously, invoking a callback when done
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

--- Call CreateGroupVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGroupVersionRequest
-- @return response
-- @return error_message
function M.CreateGroupVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLoggerDefinitionVersion asynchronously, invoking a callback when done
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

--- Call CreateLoggerDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoggerDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateLoggerDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoggerDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeviceDefinition asynchronously, invoking a callback when done
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

--- Call GetDeviceDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceDefinitionRequest
-- @return response
-- @return error_message
function M.GetDeviceDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetFunctionDefinitionVersion asynchronously, invoking a callback when done
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

--- Call GetFunctionDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFunctionDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetFunctionDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFunctionDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoggerDefinitionVersion asynchronously, invoking a callback when done
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

--- Call GetLoggerDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoggerDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetLoggerDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoggerDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCoreDefinitionVersion asynchronously, invoking a callback when done
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

--- Call CreateCoreDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCoreDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateCoreDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCoreDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCoreDefinitionVersions asynchronously, invoking a callback when done
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

--- Call ListCoreDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCoreDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListCoreDefinitionVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCoreDefinitionVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGroupCertificateConfiguration asynchronously, invoking a callback when done
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

--- Call UpdateGroupCertificateConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGroupCertificateConfigurationRequest
-- @return response
-- @return error_message
function M.UpdateGroupCertificateConfigurationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGroupCertificateConfigurationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGroupCertificateAuthority asynchronously, invoking a callback when done
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

--- Call CreateGroupCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGroupCertificateAuthorityRequest
-- @return response
-- @return error_message
function M.CreateGroupCertificateAuthoritySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupCertificateAuthorityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetServiceRoleForAccount asynchronously, invoking a callback when done
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

--- Call GetServiceRoleForAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetServiceRoleForAccountRequest
-- @return response
-- @return error_message
function M.GetServiceRoleForAccountSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetServiceRoleForAccountAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConnectivityInfo asynchronously, invoking a callback when done
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

--- Call UpdateConnectivityInfo synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConnectivityInfoRequest
-- @return response
-- @return error_message
function M.UpdateConnectivityInfoSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConnectivityInfoAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateRoleFromGroup asynchronously, invoking a callback when done
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

--- Call DisassociateRoleFromGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateRoleFromGroupRequest
-- @return response
-- @return error_message
function M.DisassociateRoleFromGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateRoleFromGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLoggerDefinition asynchronously, invoking a callback when done
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

--- Call CreateLoggerDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoggerDefinitionRequest
-- @return response
-- @return error_message
function M.CreateLoggerDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoggerDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroupCertificateAuthorities asynchronously, invoking a callback when done
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

--- Call ListGroupCertificateAuthorities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupCertificateAuthoritiesRequest
-- @return response
-- @return error_message
function M.ListGroupCertificateAuthoritiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupCertificateAuthoritiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSubscriptionDefinition asynchronously, invoking a callback when done
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

--- Call UpdateSubscriptionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSubscriptionDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateSubscriptionDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSubscriptionDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSubscriptionDefinition asynchronously, invoking a callback when done
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

--- Call DeleteSubscriptionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSubscriptionDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteSubscriptionDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSubscriptionDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFunctionDefinitionVersion asynchronously, invoking a callback when done
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

--- Call CreateFunctionDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFunctionDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateFunctionDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFunctionDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeployments asynchronously, invoking a callback when done
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

--- Call ListDeployments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeploymentsRequest
-- @return response
-- @return error_message
function M.ListDeploymentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeploymentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroupVersion asynchronously, invoking a callback when done
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

--- Call GetGroupVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupVersionRequest
-- @return response
-- @return error_message
function M.GetGroupVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateServiceRoleFromAccount asynchronously, invoking a callback when done
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

--- Call DisassociateServiceRoleFromAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateServiceRoleFromAccountRequest
-- @return response
-- @return error_message
function M.DisassociateServiceRoleFromAccountSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateServiceRoleFromAccountAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCoreDefinitionVersion asynchronously, invoking a callback when done
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

--- Call GetCoreDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCoreDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetCoreDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCoreDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFunctionDefinitions asynchronously, invoking a callback when done
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

--- Call ListFunctionDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFunctionDefinitionsRequest
-- @return response
-- @return error_message
function M.ListFunctionDefinitionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFunctionDefinitionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGroupCertificateConfiguration asynchronously, invoking a callback when done
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

--- Call GetGroupCertificateConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupCertificateConfigurationRequest
-- @return response
-- @return error_message
function M.GetGroupCertificateConfigurationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupCertificateConfigurationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteFunctionDefinition asynchronously, invoking a callback when done
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

--- Call DeleteFunctionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFunctionDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteFunctionDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFunctionDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAssociatedRole asynchronously, invoking a callback when done
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

--- Call GetAssociatedRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAssociatedRoleRequest
-- @return response
-- @return error_message
function M.GetAssociatedRoleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAssociatedRoleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateLoggerDefinition asynchronously, invoking a callback when done
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

--- Call UpdateLoggerDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateLoggerDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateLoggerDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLoggerDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateFunctionDefinition asynchronously, invoking a callback when done
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

--- Call CreateFunctionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFunctionDefinitionRequest
-- @return response
-- @return error_message
function M.CreateFunctionDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFunctionDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLoggerDefinition asynchronously, invoking a callback when done
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

--- Call GetLoggerDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoggerDefinitionRequest
-- @return response
-- @return error_message
function M.GetLoggerDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoggerDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateFunctionDefinition asynchronously, invoking a callback when done
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

--- Call UpdateFunctionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFunctionDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateFunctionDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFunctionDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLoggerDefinitions asynchronously, invoking a callback when done
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

--- Call ListLoggerDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLoggerDefinitionsRequest
-- @return response
-- @return error_message
function M.ListLoggerDefinitionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLoggerDefinitionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSubscriptionDefinition asynchronously, invoking a callback when done
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

--- Call CreateSubscriptionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSubscriptionDefinitionRequest
-- @return response
-- @return error_message
function M.CreateSubscriptionDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubscriptionDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetConnectivityInfo asynchronously, invoking a callback when done
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

--- Call GetConnectivityInfo synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetConnectivityInfoRequest
-- @return response
-- @return error_message
function M.GetConnectivityInfoSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConnectivityInfoAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGroups asynchronously, invoking a callback when done
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

--- Call ListGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupsRequest
-- @return response
-- @return error_message
function M.ListGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLoggerDefinition asynchronously, invoking a callback when done
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

--- Call DeleteLoggerDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoggerDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteLoggerDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoggerDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDeviceDefinition asynchronously, invoking a callback when done
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

--- Call DeleteDeviceDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeviceDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteDeviceDefinitionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeviceDefinitionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSubscriptionDefinitionVersion asynchronously, invoking a callback when done
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

--- Call CreateSubscriptionDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSubscriptionDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateSubscriptionDefinitionVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubscriptionDefinitionVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
