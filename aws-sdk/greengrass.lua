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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupCertificateAuthorityId [__string] Id of the certificate authority for the group.
-- * GroupCertificateAuthorityArn [__string] Arn of the certificate authority for the group.
-- @return GroupCertificateAuthorityProperties structure as a key-value pair table
function M.GroupCertificateAuthorityProperties(args)
	assert(args, "You must provide an argument table when creating GroupCertificateAuthorityProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupCertificateAuthorityId"] = args["GroupCertificateAuthorityId"],
		["GroupCertificateAuthorityArn"] = args["GroupCertificateAuthorityArn"],
	}
	asserts.AssertGroupCertificateAuthorityProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return GetGroupCertificateConfigurationRequest structure as a key-value pair table
function M.GetGroupCertificateConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetGroupCertificateConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertGetGroupCertificateConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionDefinitionId [__string] subscription definition Id
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required key: SubscriptionDefinitionId
-- @return ListSubscriptionDefinitionVersionsRequest structure as a key-value pair table
function M.ListSubscriptionDefinitionVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListSubscriptionDefinitionVersionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{SubscriptionDefinitionId}"] = args["SubscriptionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionDefinitionId"] = args["SubscriptionDefinitionId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSubscriptionDefinitionVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorDetails [ErrorDetails] Error Details
-- * Message [__string] Message
-- @return BadRequestException structure as a key-value pair table
function M.BadRequestException(args)
	assert(args, "You must provide an argument table when creating BadRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorDetails"] = args["ErrorDetails"],
		["Message"] = args["Message"],
	}
	asserts.AssertBadRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [__string] Role arn you wish to associate with this account.
-- @return AssociateServiceRoleToAccountRequest structure as a key-value pair table
function M.AssociateServiceRoleToAccountRequest(args)
	assert(args, "You must provide an argument table when creating AssociateServiceRoleToAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
	}
	asserts.AssertAssociateServiceRoleToAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- @return ListGroupsRequest structure as a key-value pair table
function M.ListGroupsRequest(args)
	assert(args, "You must provide an argument table when creating ListGroupsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definitions [ListOfDefinitionInformation] Definitions
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @return ListCoreDefinitionsResponse structure as a key-value pair table
function M.ListCoreDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating ListCoreDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definitions"] = args["Definitions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListCoreDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * InitialVersion [DeviceDefinitionVersion] Information on the initial version
-- * Name [__string] name of the device definition
-- @return CreateDeviceDefinitionRequest structure as a key-value pair table
function M.CreateDeviceDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating CreateDeviceDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["AmznClientToken"] = args["AmznClientToken"],
		["InitialVersion"] = args["InitialVersion"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateDeviceDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorDetails [ErrorDetails] Error Details
-- * Message [__string] Message
-- @return InternalServerErrorException structure as a key-value pair table
function M.InternalServerErrorException(args)
	assert(args, "You must provide an argument table when creating InternalServerErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorDetails"] = args["ErrorDetails"],
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServerErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetServiceRoleForAccountRequest structure as a key-value pair table
function M.GetServiceRoleForAccountRequest(args)
	assert(args, "You must provide an argument table when creating GetServiceRoleForAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetServiceRoleForAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceDefinitionId [__string] device definition Id
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required key: DeviceDefinitionId
-- @return ListDeviceDefinitionVersionsRequest structure as a key-value pair table
function M.ListDeviceDefinitionVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListDeviceDefinitionVersionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{DeviceDefinitionId}"] = args["DeviceDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceDefinitionId"] = args["DeviceDefinitionId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDeviceDefinitionVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * InitialVersion [LoggerDefinitionVersion] Information on the initial version
-- * Name [__string] name of the logger definition
-- @return CreateLoggerDefinitionRequest structure as a key-value pair table
function M.CreateLoggerDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating CreateLoggerDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["AmznClientToken"] = args["AmznClientToken"],
		["InitialVersion"] = args["InitialVersion"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateLoggerDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * InitialVersion [SubscriptionDefinitionVersion] Information on the initial version
-- * Name [__string] name of the subscription definition
-- @return CreateSubscriptionDefinitionRequest structure as a key-value pair table
function M.CreateSubscriptionDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating CreateSubscriptionDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["AmznClientToken"] = args["AmznClientToken"],
		["InitialVersion"] = args["InitialVersion"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSubscriptionDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Versions [ListOfVersionInformation] Versions
-- @return ListCoreDefinitionVersionsResponse structure as a key-value pair table
function M.ListCoreDefinitionVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListCoreDefinitionVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListCoreDefinitionVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definitions [ListOfDefinitionInformation] Definitions
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @return ListLoggerDefinitionsResponse structure as a key-value pair table
function M.ListLoggerDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating ListLoggerDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definitions"] = args["Definitions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListLoggerDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return GetLoggerDefinitionResponse structure as a key-value pair table
function M.GetLoggerDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating GetLoggerDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetLoggerDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definition [GroupVersion] Information on the definition
-- * Version [__string] Unique Id for a version of the Group.
-- * CreationTimestamp [__string] Timestamp when the group version was created.
-- * Id [__string] Id of the group version.
-- * Arn [__string] Arn of the group version.
-- @return GetGroupVersionResponse structure as a key-value pair table
function M.GetGroupVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetGroupVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definition"] = args["Definition"],
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetGroupVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * InitialVersion [GroupVersion] Information on the initial version
-- * Name [__string] name of the group
-- @return CreateGroupRequest structure as a key-value pair table
function M.CreateGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["AmznClientToken"] = args["AmznClientToken"],
		["InitialVersion"] = args["InitialVersion"],
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return GetGroupRequest structure as a key-value pair table
function M.GetGroupRequest(args)
	assert(args, "You must provide an argument table when creating GetGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertGetGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateSubscriptionDefinitionResponse structure as a key-value pair table
function M.UpdateSubscriptionDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSubscriptionDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateSubscriptionDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociatedAt [__string] Time when the service role was associated to the account.
-- @return AssociateServiceRoleToAccountResponse structure as a key-value pair table
function M.AssociateServiceRoleToAccountResponse(args)
	assert(args, "You must provide an argument table when creating AssociateServiceRoleToAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssociatedAt"] = args["AssociatedAt"],
	}
	asserts.AssertAssociateServiceRoleToAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Loggers [ListOfLogger] List of loggers.
-- * LoggerDefinitionId [__string] logger definition Id
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- Required key: LoggerDefinitionId
-- @return CreateLoggerDefinitionVersionRequest structure as a key-value pair table
function M.CreateLoggerDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreateLoggerDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{LoggerDefinitionId}"] = args["LoggerDefinitionId"],
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["Loggers"] = args["Loggers"],
		["LoggerDefinitionId"] = args["LoggerDefinitionId"],
		["AmznClientToken"] = args["AmznClientToken"],
	}
	asserts.AssertCreateLoggerDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggerDefinitionId [__string] logger definition Id
-- Required key: LoggerDefinitionId
-- @return DeleteLoggerDefinitionRequest structure as a key-value pair table
function M.DeleteLoggerDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLoggerDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{LoggerDefinitionId}"] = args["LoggerDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggerDefinitionId"] = args["LoggerDefinitionId"],
	}
	asserts.AssertDeleteLoggerDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required key: GroupId
-- @return ListGroupVersionsRequest structure as a key-value pair table
function M.ListGroupVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListGroupVersionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["GroupId"] = args["GroupId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListGroupVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PemEncodedCertificate [__string] PEM encoded certificate for the group.
-- * GroupCertificateAuthorityId [__string] Id of the certificate authority for the group.
-- * GroupCertificateAuthorityArn [__string] Arn of the certificate authority for the group.
-- @return GetGroupCertificateAuthorityResponse structure as a key-value pair table
function M.GetGroupCertificateAuthorityResponse(args)
	assert(args, "You must provide an argument table when creating GetGroupCertificateAuthorityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PemEncodedCertificate"] = args["PemEncodedCertificate"],
		["GroupCertificateAuthorityId"] = args["GroupCertificateAuthorityId"],
		["GroupCertificateAuthorityArn"] = args["GroupCertificateAuthorityArn"],
	}
	asserts.AssertGetGroupCertificateAuthorityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return CreateDeviceDefinitionResponse structure as a key-value pair table
function M.CreateDeviceDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating CreateDeviceDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateDeviceDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteFunctionDefinitionResponse structure as a key-value pair table
function M.DeleteFunctionDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteFunctionDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteFunctionDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * InitialVersion [CoreDefinitionVersion] Information on the initial version
-- * Name [__string] name of the core definition
-- @return CreateCoreDefinitionRequest structure as a key-value pair table
function M.CreateCoreDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating CreateCoreDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["AmznClientToken"] = args["AmznClientToken"],
		["InitialVersion"] = args["InitialVersion"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateCoreDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisassociatedAt [__string] Time when the service role was disassociated from the account.
-- @return DisassociateServiceRoleFromAccountResponse structure as a key-value pair table
function M.DisassociateServiceRoleFromAccountResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateServiceRoleFromAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisassociatedAt"] = args["DisassociatedAt"],
	}
	asserts.AssertDisassociateServiceRoleFromAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Devices [ListOfDevice] Devices in the definition version.
-- @return DeviceDefinitionVersion structure as a key-value pair table
function M.DeviceDefinitionVersion(args)
	assert(args, "You must provide an argument table when creating DeviceDefinitionVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Devices"] = args["Devices"],
	}
	asserts.AssertDeviceDefinitionVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionDefinitionId [__string] the unique Id of the lambda definition
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required key: FunctionDefinitionId
-- @return ListFunctionDefinitionVersionsRequest structure as a key-value pair table
function M.ListFunctionDefinitionVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListFunctionDefinitionVersionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{FunctionDefinitionId}"] = args["FunctionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionDefinitionId"] = args["FunctionDefinitionId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListFunctionDefinitionVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DisassociatedAt [__string] Time when the role was disassociated from the group.
-- @return DisassociateRoleFromGroupResponse structure as a key-value pair table
function M.DisassociateRoleFromGroupResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateRoleFromGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DisassociatedAt"] = args["DisassociatedAt"],
	}
	asserts.AssertDisassociateRoleFromGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Loggers [ListOfLogger] List of loggers.
-- @return LoggerDefinitionVersion structure as a key-value pair table
function M.LoggerDefinitionVersion(args)
	assert(args, "You must provide an argument table when creating LoggerDefinitionVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Loggers"] = args["Loggers"],
	}
	asserts.AssertLoggerDefinitionVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionDefinitionId [__string] the unique Id of the lambda definition
-- * Functions [ListOfFunction] Lambda functions in this function definition version.
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- Required key: FunctionDefinitionId
-- @return CreateFunctionDefinitionVersionRequest structure as a key-value pair table
function M.CreateFunctionDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreateFunctionDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionDefinitionId}"] = args["FunctionDefinitionId"],
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["FunctionDefinitionId"] = args["FunctionDefinitionId"],
		["Functions"] = args["Functions"],
		["AmznClientToken"] = args["AmznClientToken"],
	}
	asserts.AssertCreateFunctionDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDeviceDefinitionResponse structure as a key-value pair table
function M.DeleteDeviceDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDeviceDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDeviceDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] Unique Id of a version.
-- * CreationTimestamp [__string] Timestamp of when the version was created.
-- * Id [__string] Id of the resource container.
-- * Arn [__string] Arn of the version.
-- @return CreateDeviceDefinitionVersionResponse structure as a key-value pair table
function M.CreateDeviceDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating CreateDeviceDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateDeviceDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggerDefinitionId [__string] logger definition Id
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required key: LoggerDefinitionId
-- @return ListLoggerDefinitionVersionsRequest structure as a key-value pair table
function M.ListLoggerDefinitionVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListLoggerDefinitionVersionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{LoggerDefinitionId}"] = args["LoggerDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggerDefinitionId"] = args["LoggerDefinitionId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListLoggerDefinitionVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return DefinitionInformation structure as a key-value pair table
function M.DefinitionInformation(args)
	assert(args, "You must provide an argument table when creating DefinitionInformation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertDefinitionInformation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorDetails [ErrorDetails] Error Details
-- * Message [__string] Message
-- @return GeneralError structure as a key-value pair table
function M.GeneralError(args)
	assert(args, "You must provide an argument table when creating GeneralError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorDetails"] = args["ErrorDetails"],
		["Message"] = args["Message"],
	}
	asserts.AssertGeneralError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return GetCoreDefinitionResponse structure as a key-value pair table
function M.GetCoreDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating GetCoreDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetCoreDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionDefinitionId [__string] subscription definition Id
-- Required key: SubscriptionDefinitionId
-- @return GetSubscriptionDefinitionRequest structure as a key-value pair table
function M.GetSubscriptionDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating GetSubscriptionDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{SubscriptionDefinitionId}"] = args["SubscriptionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionDefinitionId"] = args["SubscriptionDefinitionId"],
	}
	asserts.AssertGetSubscriptionDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateFunctionDefinitionResponse structure as a key-value pair table
function M.UpdateFunctionDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateFunctionDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateFunctionDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionDefinitionId [__string] subscription definition Id
-- * Name [__string] name of the definition
-- Required key: SubscriptionDefinitionId
-- @return UpdateSubscriptionDefinitionRequest structure as a key-value pair table
function M.UpdateSubscriptionDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSubscriptionDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{SubscriptionDefinitionId}"] = args["SubscriptionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionDefinitionId"] = args["SubscriptionDefinitionId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateSubscriptionDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeploymentId [__string] Id of the deployment if you wish to redeploy a previous deployment.
-- * DeploymentType [DeploymentType] Type of deployment
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * GroupVersionId [__string] Group Version you wish to deploy.
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return CreateDeploymentRequest structure as a key-value pair table
function M.CreateDeploymentRequest(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["DeploymentId"] = args["DeploymentId"],
		["DeploymentType"] = args["DeploymentType"],
		["AmznClientToken"] = args["AmznClientToken"],
		["GroupVersionId"] = args["GroupVersionId"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertCreateDeploymentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectivityInfo [ListOfConnectivityInfo] Connectivity info array
-- * Message [__string] Response Text
-- @return GetConnectivityInfoResponse structure as a key-value pair table
function M.GetConnectivityInfoResponse(args)
	assert(args, "You must provide an argument table when creating GetConnectivityInfoResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectivityInfo"] = args["ConnectivityInfo"],
		["Message"] = args["Message"],
	}
	asserts.AssertGetConnectivityInfoResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * CoreDefinitionId [__string] core definition Id
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required key: CoreDefinitionId
-- @return ListCoreDefinitionVersionsRequest structure as a key-value pair table
function M.ListCoreDefinitionVersionsRequest(args)
	assert(args, "You must provide an argument table when creating ListCoreDefinitionVersionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{CoreDefinitionId}"] = args["CoreDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["CoreDefinitionId"] = args["CoreDefinitionId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListCoreDefinitionVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceDefinitionId [__string] device definition Id
-- Required key: DeviceDefinitionId
-- @return DeleteDeviceDefinitionRequest structure as a key-value pair table
function M.DeleteDeviceDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDeviceDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DeviceDefinitionId}"] = args["DeviceDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceDefinitionId"] = args["DeviceDefinitionId"],
	}
	asserts.AssertDeleteDeviceDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateCoreDefinitionResponse structure as a key-value pair table
function M.UpdateCoreDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateCoreDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateCoreDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateLoggerDefinitionResponse structure as a key-value pair table
function M.UpdateLoggerDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateLoggerDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateLoggerDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Functions [ListOfFunction] Lambda functions in this function definition version.
-- @return FunctionDefinitionVersion structure as a key-value pair table
function M.FunctionDefinitionVersion(args)
	assert(args, "You must provide an argument table when creating FunctionDefinitionVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Functions"] = args["Functions"],
	}
	asserts.AssertFunctionDefinitionVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return CreateSubscriptionDefinitionResponse structure as a key-value pair table
function M.CreateSubscriptionDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating CreateSubscriptionDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateSubscriptionDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceDefinitionId [__string] device definition Id
-- Required key: DeviceDefinitionId
-- @return GetDeviceDefinitionRequest structure as a key-value pair table
function M.GetDeviceDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating GetDeviceDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DeviceDefinitionId}"] = args["DeviceDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceDefinitionId"] = args["DeviceDefinitionId"],
	}
	asserts.AssertGetDeviceDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subscriptions [ListOfSubscription] Subscriptions in the version.
-- @return SubscriptionDefinitionVersion structure as a key-value pair table
function M.SubscriptionDefinitionVersion(args)
	assert(args, "You must provide an argument table when creating SubscriptionDefinitionVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subscriptions"] = args["Subscriptions"],
	}
	asserts.AssertSubscriptionDefinitionVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cores [ListOfCore] Cores in the definition version.
-- @return CoreDefinitionVersion structure as a key-value pair table
function M.CoreDefinitionVersion(args)
	assert(args, "You must provide an argument table when creating CoreDefinitionVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cores"] = args["Cores"],
	}
	asserts.AssertCoreDefinitionVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpdatedAt [__string] Last time the deployment status was updated.
-- * DeploymentStatus [__string] Status of the deployment.
-- * ErrorMessage [__string] Error Message
-- @return GetDeploymentStatusResponse structure as a key-value pair table
function M.GetDeploymentStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetDeploymentStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UpdatedAt"] = args["UpdatedAt"],
		["DeploymentStatus"] = args["DeploymentStatus"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertGetDeploymentStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociatedAt [__string] Time when the role was associated for the group.
-- * RoleArn [__string] Arn of the role that is associated with the group.
-- @return GetAssociatedRoleResponse structure as a key-value pair table
function M.GetAssociatedRoleResponse(args)
	assert(args, "You must provide an argument table when creating GetAssociatedRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssociatedAt"] = args["AssociatedAt"],
		["RoleArn"] = args["RoleArn"],
	}
	asserts.AssertGetAssociatedRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return DeleteGroupRequest structure as a key-value pair table
function M.DeleteGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteSubscriptionDefinitionResponse structure as a key-value pair table
function M.DeleteSubscriptionDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSubscriptionDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteSubscriptionDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- Required key: GroupId
-- @return ListDeploymentsRequest structure as a key-value pair table
function M.ListDeploymentsRequest(args)
	assert(args, "You must provide an argument table when creating ListDeploymentsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["GroupId"] = args["GroupId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDeploymentsRequest(all_args)
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
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Groups"] then asserts.AssertListOfGroupInformation(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGroupsResponse[k], "ListGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Groups [ListOfGroupInformation] Groups
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- * Name [__string] name of the definition
-- Required key: GroupId
-- @return UpdateGroupRequest structure as a key-value pair table
function M.UpdateGroupRequest(args)
	assert(args, "You must provide an argument table when creating UpdateGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metadata [__string] Metadata for this endpoint.
-- * PortNumber [__integer] Port of the GGC. Usually 8883.
-- * HostAddress [__string] Endpoint for the GGC. Can be an IP address or DNS.
-- * Id [__string] Element Id for this entry in the list.
-- @return ConnectivityInfo structure as a key-value pair table
function M.ConnectivityInfo(args)
	assert(args, "You must provide an argument table when creating ConnectivityInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metadata"] = args["Metadata"],
		["PortNumber"] = args["PortNumber"],
		["HostAddress"] = args["HostAddress"],
		["Id"] = args["Id"],
	}
	asserts.AssertConnectivityInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetailedErrorCode [__string] Detailed Error Code
-- * DetailedErrorMessage [__string] Detailed Error Message
-- @return ErrorDetail structure as a key-value pair table
function M.ErrorDetail(args)
	assert(args, "You must provide an argument table when creating ErrorDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DetailedErrorCode"] = args["DetailedErrorCode"],
		["DetailedErrorMessage"] = args["DetailedErrorMessage"],
	}
	asserts.AssertErrorDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CoreDefinitionId [__string] core definition Id
-- Required key: CoreDefinitionId
-- @return DeleteCoreDefinitionRequest structure as a key-value pair table
function M.DeleteCoreDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCoreDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{CoreDefinitionId}"] = args["CoreDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["CoreDefinitionId"] = args["CoreDefinitionId"],
	}
	asserts.AssertDeleteCoreDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definition [DeviceDefinitionVersion] Device definition version
-- * Version [__string] Version of the device definition version.
-- * CreationTimestamp [__string] Timestamp of when the device definition version was created.
-- * Id [__string] Id of the device definition the version belongs to.
-- * Arn [__string] Arn of the device definition version.
-- @return GetDeviceDefinitionVersionResponse structure as a key-value pair table
function M.GetDeviceDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetDeviceDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definition"] = args["Definition"],
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetDeviceDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the group.
-- * Name [__string] Name of a group.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the group.
-- * LatestVersion [__string] Last version of the group.
-- * CreationTimestamp [__string] Timestamp of when the group was created.
-- * Id [__string] Id of a group.
-- * Arn [__string] Arn of a group.
-- @return GroupInformation structure as a key-value pair table
function M.GroupInformation(args)
	assert(args, "You must provide an argument table when creating GroupInformation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGroupInformation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return CreateGroupCertificateAuthorityRequest structure as a key-value pair table
function M.CreateGroupCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating CreateGroupCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["AmznClientToken"] = args["AmznClientToken"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertCreateGroupCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source [__string] Source of the subscription. Can be a thing arn, lambda arn or word 'cloud'
-- * Target [__string] Where the message is sent to. Can be a thing arn, lambda arn or word 'cloud'.
-- * Id [__string] Element Id for this entry in the list.
-- * Subject [__string] Subject of the message.
-- @return Subscription structure as a key-value pair table
function M.Subscription(args)
	assert(args, "You must provide an argument table when creating Subscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Source"] = args["Source"],
		["Target"] = args["Target"],
		["Id"] = args["Id"],
		["Subject"] = args["Subject"],
	}
	asserts.AssertSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definition [SubscriptionDefinitionVersion] Information on the definition
-- * Version [__string] Version of the subscription definition version.
-- * CreationTimestamp [__string] Timestamp of when the subscription definition version was created.
-- * Id [__string] Id of the subscription definition the version belongs to.
-- * Arn [__string] Arn of the subscription definition version.
-- @return GetSubscriptionDefinitionVersionResponse structure as a key-value pair table
function M.GetSubscriptionDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetSubscriptionDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definition"] = args["Definition"],
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetSubscriptionDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CoreDefinitionId [__string] core definition Id
-- * CoreDefinitionVersionId [__string] core definition version Id
-- Required key: CoreDefinitionId
-- Required key: CoreDefinitionVersionId
-- @return GetCoreDefinitionVersionRequest structure as a key-value pair table
function M.GetCoreDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetCoreDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{CoreDefinitionId}"] = args["CoreDefinitionId"],
        ["{CoreDefinitionVersionId}"] = args["CoreDefinitionVersionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["CoreDefinitionId"] = args["CoreDefinitionId"],
		["CoreDefinitionVersionId"] = args["CoreDefinitionVersionId"],
	}
	asserts.AssertGetCoreDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateServiceRoleFromAccountRequest structure as a key-value pair table
function M.DisassociateServiceRoleFromAccountRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateServiceRoleFromAccountRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateServiceRoleFromAccountRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionDefinitionVersionId [__string] subscription definition version Id
-- * SubscriptionDefinitionId [__string] subscription definition Id
-- Required key: SubscriptionDefinitionId
-- Required key: SubscriptionDefinitionVersionId
-- @return GetSubscriptionDefinitionVersionRequest structure as a key-value pair table
function M.GetSubscriptionDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetSubscriptionDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{SubscriptionDefinitionVersionId}"] = args["SubscriptionDefinitionVersionId"],
        ["{SubscriptionDefinitionId}"] = args["SubscriptionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionDefinitionVersionId"] = args["SubscriptionDefinitionVersionId"],
		["SubscriptionDefinitionId"] = args["SubscriptionDefinitionId"],
	}
	asserts.AssertGetSubscriptionDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Versions [ListOfVersionInformation] Versions
-- @return ListFunctionDefinitionVersionsResponse structure as a key-value pair table
function M.ListFunctionDefinitionVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListFunctionDefinitionVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListFunctionDefinitionVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeploymentId [__string] Id of the deployment.
-- * DeploymentArn [__string] Arn of the deployment.
-- @return CreateDeploymentResponse structure as a key-value pair table
function M.CreateDeploymentResponse(args)
	assert(args, "You must provide an argument table when creating CreateDeploymentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeploymentId"] = args["DeploymentId"],
		["DeploymentArn"] = args["DeploymentArn"],
	}
	asserts.AssertCreateDeploymentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionDefinitionId [__string] the unique Id of the lambda definition
-- * Name [__string] name of the definition
-- Required key: FunctionDefinitionId
-- @return UpdateFunctionDefinitionRequest structure as a key-value pair table
function M.UpdateFunctionDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateFunctionDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionDefinitionId}"] = args["FunctionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionDefinitionId"] = args["FunctionDefinitionId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateFunctionDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] Unique Id of a version.
-- * CreationTimestamp [__string] Timestamp of when the version was created.
-- * Id [__string] Id of the resource container.
-- * Arn [__string] Arn of the version.
-- @return CreateLoggerDefinitionVersionResponse structure as a key-value pair table
function M.CreateLoggerDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating CreateLoggerDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateLoggerDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteCoreDefinitionResponse structure as a key-value pair table
function M.DeleteCoreDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteCoreDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteCoreDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceDefinitionId [__string] device definition Id
-- * DeviceDefinitionVersionId [__string] device definition version Id
-- Required key: DeviceDefinitionVersionId
-- Required key: DeviceDefinitionId
-- @return GetDeviceDefinitionVersionRequest structure as a key-value pair table
function M.GetDeviceDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetDeviceDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DeviceDefinitionId}"] = args["DeviceDefinitionId"],
        ["{DeviceDefinitionVersionId}"] = args["DeviceDefinitionVersionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceDefinitionId"] = args["DeviceDefinitionId"],
		["DeviceDefinitionVersionId"] = args["DeviceDefinitionVersionId"],
	}
	asserts.AssertGetDeviceDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definitions [ListOfDefinitionInformation] Definitions
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @return ListDefinitionsResponse structure as a key-value pair table
function M.ListDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating ListDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definitions"] = args["Definitions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return CreateCoreDefinitionResponse structure as a key-value pair table
function M.CreateCoreDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating CreateCoreDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateCoreDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggerDefinitionId [__string] logger definition Id
-- * Name [__string] name of the definition
-- Required key: LoggerDefinitionId
-- @return UpdateLoggerDefinitionRequest structure as a key-value pair table
function M.UpdateLoggerDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateLoggerDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{LoggerDefinitionId}"] = args["LoggerDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggerDefinitionId"] = args["LoggerDefinitionId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateLoggerDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return GetDeviceDefinitionResponse structure as a key-value pair table
function M.GetDeviceDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating GetDeviceDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetDeviceDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionDefinitionId [__string] the unique Id of the lambda definition
-- * FunctionDefinitionVersionId [__string] Function definition version Id
-- Required key: FunctionDefinitionId
-- Required key: FunctionDefinitionVersionId
-- @return GetFunctionDefinitionVersionRequest structure as a key-value pair table
function M.GetFunctionDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetFunctionDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionDefinitionId}"] = args["FunctionDefinitionId"],
        ["{FunctionDefinitionVersionId}"] = args["FunctionDefinitionVersionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionDefinitionId"] = args["FunctionDefinitionId"],
		["FunctionDefinitionVersionId"] = args["FunctionDefinitionVersionId"],
	}
	asserts.AssertGetFunctionDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definitions [ListOfDefinitionInformation] Definitions
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @return ListSubscriptionDefinitionsResponse structure as a key-value pair table
function M.ListSubscriptionDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating ListSubscriptionDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definitions"] = args["Definitions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListSubscriptionDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ThingName [__string] Thing Name
-- Required key: ThingName
-- @return GetConnectivityInfoRequest structure as a key-value pair table
function M.GetConnectivityInfoRequest(args)
	assert(args, "You must provide an argument table when creating GetConnectivityInfoRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ThingName}"] = args["ThingName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ThingName"] = args["ThingName"],
	}
	asserts.AssertGetConnectivityInfoRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExecArgs [__string] Execution Arguments
-- * Executable [__string] Executable
-- * MemorySize [__integer] The memory size, in KB, you configured for the function.
-- * Environment [FunctionConfigurationEnvironment] Environment of the function configuration
-- * Pinned [__boolean] Whether the function is pinned or not. Pinned means the function is long-lived and starts when the core starts.
-- * Timeout [__integer] The function execution time at which Lambda should terminate the function. This timeout still applies to pinned lambdas for each request.
-- @return FunctionConfiguration structure as a key-value pair table
function M.FunctionConfiguration(args)
	assert(args, "You must provide an argument table when creating FunctionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExecArgs"] = args["ExecArgs"],
		["Executable"] = args["Executable"],
		["MemorySize"] = args["MemorySize"],
		["Environment"] = args["Environment"],
		["Pinned"] = args["Pinned"],
		["Timeout"] = args["Timeout"],
	}
	asserts.AssertFunctionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definitions [ListOfDefinitionInformation] Definitions
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @return ListFunctionDefinitionsResponse structure as a key-value pair table
function M.ListFunctionDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating ListFunctionDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definitions"] = args["Definitions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListFunctionDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return Empty structure as a key-value pair table
function M.Empty(args)
	assert(args, "You must provide an argument table when creating Empty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEmpty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [__string] Certificate arn of the core.
-- * ThingArn [__string] Thing arn of the core.
-- * SyncShadow [__boolean] If true, the local shadow value automatically syncs with the cloud's shadow state.
-- * Id [__string] Element Id for this entry in the list.
-- @return Core structure as a key-value pair table
function M.Core(args)
	assert(args, "You must provide an argument table when creating Core")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
		["ThingArn"] = args["ThingArn"],
		["SyncShadow"] = args["SyncShadow"],
		["Id"] = args["Id"],
	}
	asserts.AssertCore(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionDefinitionId [__string] the unique Id of the lambda definition
-- Required key: FunctionDefinitionId
-- @return GetFunctionDefinitionRequest structure as a key-value pair table
function M.GetFunctionDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating GetFunctionDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionDefinitionId}"] = args["FunctionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionDefinitionId"] = args["FunctionDefinitionId"],
	}
	asserts.AssertGetFunctionDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] Unique Id of a version.
-- * CreationTimestamp [__string] Timestamp of when the version was created.
-- * Id [__string] Id of the resource container.
-- * Arn [__string] Arn of the version.
-- @return CreateCoreDefinitionVersionResponse structure as a key-value pair table
function M.CreateCoreDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating CreateCoreDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateCoreDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- * GroupId [__string] Id of the group the certificate configuration belongs to.
-- * CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
-- @return UpdateGroupCertificateConfigurationResponse structure as a key-value pair table
function M.UpdateGroupCertificateConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating UpdateGroupCertificateConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateExpiryInMilliseconds"] = args["CertificateExpiryInMilliseconds"],
		["GroupId"] = args["GroupId"],
		["CertificateAuthorityExpiryInMilliseconds"] = args["CertificateAuthorityExpiryInMilliseconds"],
	}
	asserts.AssertUpdateGroupCertificateConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return GetGroupResponse structure as a key-value pair table
function M.GetGroupResponse(args)
	assert(args, "You must provide an argument table when creating GetGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggerDefinitionId [__string] logger definition Id
-- * LoggerDefinitionVersionId [__string] logger definition version Id
-- Required key: LoggerDefinitionVersionId
-- Required key: LoggerDefinitionId
-- @return GetLoggerDefinitionVersionRequest structure as a key-value pair table
function M.GetLoggerDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetLoggerDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{LoggerDefinitionId}"] = args["LoggerDefinitionId"],
        ["{LoggerDefinitionVersionId}"] = args["LoggerDefinitionVersionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggerDefinitionId"] = args["LoggerDefinitionId"],
		["LoggerDefinitionVersionId"] = args["LoggerDefinitionVersionId"],
	}
	asserts.AssertGetLoggerDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- @return ListLoggerDefinitionsRequest structure as a key-value pair table
function M.ListLoggerDefinitionsRequest(args)
	assert(args, "You must provide an argument table when creating ListLoggerDefinitionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListLoggerDefinitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateArn [__string] Certificate arn of the device.
-- * ThingArn [__string] Thing arn of the device.
-- * SyncShadow [__boolean] If true, the local shadow value automatically syncs with the cloud's shadow state.
-- * Id [__string] Element Id for this entry in the list.
-- @return Device structure as a key-value pair table
function M.Device(args)
	assert(args, "You must provide an argument table when creating Device")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateArn"] = args["CertificateArn"],
		["ThingArn"] = args["ThingArn"],
		["SyncShadow"] = args["SyncShadow"],
		["Id"] = args["Id"],
	}
	asserts.AssertDevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return GetFunctionDefinitionResponse structure as a key-value pair table
function M.GetFunctionDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating GetFunctionDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetFunctionDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateAuthorityId [__string] certificate authority Id
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: CertificateAuthorityId
-- Required key: GroupId
-- @return GetGroupCertificateAuthorityRequest structure as a key-value pair table
function M.GetGroupCertificateAuthorityRequest(args)
	assert(args, "You must provide an argument table when creating GetGroupCertificateAuthorityRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{CertificateAuthorityId}"] = args["CertificateAuthorityId"],
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateAuthorityId"] = args["CertificateAuthorityId"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertGetGroupCertificateAuthorityRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Versions [ListOfVersionInformation] Versions
-- @return ListSubscriptionDefinitionVersionsResponse structure as a key-value pair table
function M.ListSubscriptionDefinitionVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListSubscriptionDefinitionVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListSubscriptionDefinitionVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CoreDefinitionId [__string] core definition Id
-- * Name [__string] name of the definition
-- Required key: CoreDefinitionId
-- @return UpdateCoreDefinitionRequest structure as a key-value pair table
function M.UpdateCoreDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateCoreDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{CoreDefinitionId}"] = args["CoreDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["CoreDefinitionId"] = args["CoreDefinitionId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateCoreDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definition [CoreDefinitionVersion] Information on definition
-- * Version [__string] Version of the core definition version.
-- * CreationTimestamp [__string] Timestamp of when the core definition version was created.
-- * Id [__string] Id of the core definition the version belongs to.
-- * Arn [__string] Arn of the core definition version.
-- @return GetCoreDefinitionVersionResponse structure as a key-value pair table
function M.GetCoreDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetCoreDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definition"] = args["Definition"],
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetCoreDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return DisassociateRoleFromGroupRequest structure as a key-value pair table
function M.DisassociateRoleFromGroupRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateRoleFromGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertDisassociateRoleFromGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- @return ListDeviceDefinitionsRequest structure as a key-value pair table
function M.ListDeviceDefinitionsRequest(args)
	assert(args, "You must provide an argument table when creating ListDeviceDefinitionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDeviceDefinitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] Unique Id of a version.
-- * CreationTimestamp [__string] Timestamp of when the version was created.
-- * Id [__string] Id of the resource container.
-- * Arn [__string] Arn of the version.
-- @return CreateSubscriptionDefinitionVersionResponse structure as a key-value pair table
function M.CreateSubscriptionDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating CreateSubscriptionDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateSubscriptionDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateGroupResponse structure as a key-value pair table
function M.UpdateGroupResponse(args)
	assert(args, "You must provide an argument table when creating UpdateGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectivityInfo [ListOfConnectivityInfo] Connectivity info array
-- * ThingName [__string] Thing Name
-- Required key: ThingName
-- @return UpdateConnectivityInfoRequest structure as a key-value pair table
function M.UpdateConnectivityInfoRequest(args)
	assert(args, "You must provide an argument table when creating UpdateConnectivityInfoRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ThingName}"] = args["ThingName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectivityInfo"] = args["ConnectivityInfo"],
		["ThingName"] = args["ThingName"],
	}
	asserts.AssertUpdateConnectivityInfoRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionDefinitionId [__string] subscription definition Id
-- Required key: SubscriptionDefinitionId
-- @return DeleteSubscriptionDefinitionRequest structure as a key-value pair table
function M.DeleteSubscriptionDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSubscriptionDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{SubscriptionDefinitionId}"] = args["SubscriptionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionDefinitionId"] = args["SubscriptionDefinitionId"],
	}
	asserts.AssertDeleteSubscriptionDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] Unique Id of a version.
-- * CreationTimestamp [__string] Timestamp of when the version was created.
-- * Id [__string] Id of the resource container.
-- * Arn [__string] Arn of the version.
-- @return VersionInformation structure as a key-value pair table
function M.VersionInformation(args)
	assert(args, "You must provide an argument table when creating VersionInformation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertVersionInformation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- * GroupId [__string] Id of the group the certificate configuration belongs to.
-- * CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
-- @return GroupCertificateConfiguration structure as a key-value pair table
function M.GroupCertificateConfiguration(args)
	assert(args, "You must provide an argument table when creating GroupCertificateConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateExpiryInMilliseconds"] = args["CertificateExpiryInMilliseconds"],
		["GroupId"] = args["GroupId"],
		["CertificateAuthorityExpiryInMilliseconds"] = args["CertificateAuthorityExpiryInMilliseconds"],
	}
	asserts.AssertGroupCertificateConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return GetAssociatedRoleRequest structure as a key-value pair table
function M.GetAssociatedRoleRequest(args)
	assert(args, "You must provide an argument table when creating GetAssociatedRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertGetAssociatedRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CoreDefinitionId [__string] core definition Id
-- Required key: CoreDefinitionId
-- @return GetCoreDefinitionRequest structure as a key-value pair table
function M.GetCoreDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating GetCoreDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{CoreDefinitionId}"] = args["CoreDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["CoreDefinitionId"] = args["CoreDefinitionId"],
	}
	asserts.AssertGetCoreDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- @return ListSubscriptionDefinitionsRequest structure as a key-value pair table
function M.ListSubscriptionDefinitionsRequest(args)
	assert(args, "You must provide an argument table when creating ListSubscriptionDefinitionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSubscriptionDefinitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionDefinitionId [__string] subscription definition Id
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * Subscriptions [ListOfSubscription] Subscriptions in the version.
-- Required key: SubscriptionDefinitionId
-- @return CreateSubscriptionDefinitionVersionRequest structure as a key-value pair table
function M.CreateSubscriptionDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreateSubscriptionDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{SubscriptionDefinitionId}"] = args["SubscriptionDefinitionId"],
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["SubscriptionDefinitionId"] = args["SubscriptionDefinitionId"],
		["AmznClientToken"] = args["AmznClientToken"],
		["Subscriptions"] = args["Subscriptions"],
	}
	asserts.AssertCreateSubscriptionDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cores [ListOfCore] Cores in the definition version.
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * CoreDefinitionId [__string] core definition Id
-- Required key: CoreDefinitionId
-- @return CreateCoreDefinitionVersionRequest structure as a key-value pair table
function M.CreateCoreDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreateCoreDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{CoreDefinitionId}"] = args["CoreDefinitionId"],
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["Cores"] = args["Cores"],
		["AmznClientToken"] = args["AmznClientToken"],
		["CoreDefinitionId"] = args["CoreDefinitionId"],
	}
	asserts.AssertCreateCoreDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * InitialVersion [FunctionDefinitionVersion] Information on the initial version
-- * Name [__string] name of the function definition
-- @return CreateFunctionDefinitionRequest structure as a key-value pair table
function M.CreateFunctionDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating CreateFunctionDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["AmznClientToken"] = args["AmznClientToken"],
		["InitialVersion"] = args["InitialVersion"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateFunctionDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [__string] Role arn you wish to associate with this group.
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return AssociateRoleToGroupRequest structure as a key-value pair table
function M.AssociateRoleToGroupRequest(args)
	assert(args, "You must provide an argument table when creating AssociateRoleToGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertAssociateRoleToGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return GetSubscriptionDefinitionResponse structure as a key-value pair table
function M.GetSubscriptionDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating GetSubscriptionDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetSubscriptionDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Versions [ListOfVersionInformation] Versions
-- @return ListGroupVersionsResponse structure as a key-value pair table
function M.ListGroupVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListGroupVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListGroupVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- @return ListCoreDefinitionsRequest structure as a key-value pair table
function M.ListCoreDefinitionsRequest(args)
	assert(args, "You must provide an argument table when creating ListCoreDefinitionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListCoreDefinitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupCertificateAuthorities [ListOfGroupCertificateAuthorityProperties] List of certificate authorities associated with the group.
-- @return ListGroupCertificateAuthoritiesResponse structure as a key-value pair table
function M.ListGroupCertificateAuthoritiesResponse(args)
	assert(args, "You must provide an argument table when creating ListGroupCertificateAuthoritiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupCertificateAuthorities"] = args["GroupCertificateAuthorities"],
	}
	asserts.AssertListGroupCertificateAuthoritiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [LoggerType] The type which will be use for log output
-- * Space [__integer] Amount of hardware space, in KB, to use if file system is used for logging purposes.
-- * Component [LoggerComponent] The component that will be subject to logs
-- * Id [__string] Element Id for this entry in the list.
-- * Level [LoggerLevel] The level of the logs
-- @return Logger structure as a key-value pair table
function M.Logger(args)
	assert(args, "You must provide an argument table when creating Logger")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Space"] = args["Space"],
		["Component"] = args["Component"],
		["Id"] = args["Id"],
		["Level"] = args["Level"],
	}
	asserts.AssertLogger(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return UpdateGroupCertificateConfigurationRequest structure as a key-value pair table
function M.UpdateGroupCertificateConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateGroupCertificateConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateExpiryInMilliseconds"] = args["CertificateExpiryInMilliseconds"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertUpdateGroupCertificateConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definition [FunctionDefinitionVersion] 
-- * Version [__string] Version of the function definition version.
-- * CreationTimestamp [__string] Timestamp when the funtion definition version was created.
-- * Id [__string] Id of the function definition the version belongs to.
-- * Arn [__string] Arn of the function definition version.
-- @return GetFunctionDefinitionVersionResponse structure as a key-value pair table
function M.GetFunctionDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetFunctionDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definition"] = args["Definition"],
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetFunctionDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return ListGroupCertificateAuthoritiesRequest structure as a key-value pair table
function M.ListGroupCertificateAuthoritiesRequest(args)
	assert(args, "You must provide an argument table when creating ListGroupCertificateAuthoritiesRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertListGroupCertificateAuthoritiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definitions [ListOfDefinitionInformation] Definitions
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- @return ListDeviceDefinitionsResponse structure as a key-value pair table
function M.ListDeviceDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating ListDeviceDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definitions"] = args["Definitions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDeviceDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] Unique Id of a version.
-- * CreationTimestamp [__string] Timestamp of when the version was created.
-- * Id [__string] Id of the resource container.
-- * Arn [__string] Arn of the version.
-- @return CreateFunctionDefinitionVersionResponse structure as a key-value pair table
function M.CreateFunctionDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating CreateFunctionDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateFunctionDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] Unique Id of a version.
-- * CreationTimestamp [__string] Timestamp of when the version was created.
-- * Id [__string] Id of the resource container.
-- * Arn [__string] Arn of the version.
-- @return CreateGroupVersionResponse structure as a key-value pair table
function M.CreateGroupVersionResponse(args)
	assert(args, "You must provide an argument table when creating CreateGroupVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateGroupVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Versions [ListOfVersionInformation] Versions
-- @return ListVersionsResponse structure as a key-value pair table
function M.ListVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceDefinitionId [__string] device definition Id
-- * Name [__string] name of the definition
-- Required key: DeviceDefinitionId
-- @return UpdateDeviceDefinitionRequest structure as a key-value pair table
function M.UpdateDeviceDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DeviceDefinitionId}"] = args["DeviceDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceDefinitionId"] = args["DeviceDefinitionId"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateDeviceDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CoreDefinitionVersionArn [__string] Core definition version arn for this group.
-- * LoggerDefinitionVersionArn [__string] Logger definitionv ersion arn for this group.
-- * FunctionDefinitionVersionArn [__string] Function definition version arn for this group.
-- * DeviceDefinitionVersionArn [__string] Device definition version arn for this group.
-- * SubscriptionDefinitionVersionArn [__string] Subscription definition version arn for this group.
-- @return GroupVersion structure as a key-value pair table
function M.GroupVersion(args)
	assert(args, "You must provide an argument table when creating GroupVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CoreDefinitionVersionArn"] = args["CoreDefinitionVersionArn"],
		["LoggerDefinitionVersionArn"] = args["LoggerDefinitionVersionArn"],
		["FunctionDefinitionVersionArn"] = args["FunctionDefinitionVersionArn"],
		["DeviceDefinitionVersionArn"] = args["DeviceDefinitionVersionArn"],
		["SubscriptionDefinitionVersionArn"] = args["SubscriptionDefinitionVersionArn"],
	}
	asserts.AssertGroupVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLoggerDefinitionResponse structure as a key-value pair table
function M.DeleteLoggerDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteLoggerDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLoggerDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionDefinitionId [__string] the unique Id of the lambda definition
-- Required key: FunctionDefinitionId
-- @return DeleteFunctionDefinitionRequest structure as a key-value pair table
function M.DeleteFunctionDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteFunctionDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{FunctionDefinitionId}"] = args["FunctionDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionDefinitionId"] = args["FunctionDefinitionId"],
	}
	asserts.AssertDeleteFunctionDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeploymentId [__string] Id of the deployment.
-- * DeploymentArn [__string] Arn of the deployment.
-- * GroupArn [__string] Arn of the group for this deployment.
-- * CreatedAt [__string] Timestamp when the deployment was created.
-- @return Deployment structure as a key-value pair table
function M.Deployment(args)
	assert(args, "You must provide an argument table when creating Deployment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeploymentId"] = args["DeploymentId"],
		["DeploymentArn"] = args["DeploymentArn"],
		["GroupArn"] = args["GroupArn"],
		["CreatedAt"] = args["CreatedAt"],
	}
	asserts.AssertDeployment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CertificateExpiryInMilliseconds [__string] Amount of time when the certificate expires in milliseconds.
-- * GroupId [__string] Id of the group the certificate configuration belongs to.
-- * CertificateAuthorityExpiryInMilliseconds [__string] Amount of time when the certificate authority expires in milliseconds.
-- @return GetGroupCertificateConfigurationResponse structure as a key-value pair table
function M.GetGroupCertificateConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating GetGroupCertificateConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CertificateExpiryInMilliseconds"] = args["CertificateExpiryInMilliseconds"],
		["GroupId"] = args["GroupId"],
		["CertificateAuthorityExpiryInMilliseconds"] = args["CertificateAuthorityExpiryInMilliseconds"],
	}
	asserts.AssertGetGroupCertificateConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupCertificateAuthorityArn [__string] Arn of the group certificate authority.
-- @return CreateGroupCertificateAuthorityResponse structure as a key-value pair table
function M.CreateGroupCertificateAuthorityResponse(args)
	assert(args, "You must provide an argument table when creating CreateGroupCertificateAuthorityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupCertificateAuthorityArn"] = args["GroupCertificateAuthorityArn"],
	}
	asserts.AssertCreateGroupCertificateAuthorityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeploymentId [__string] the deployment Id
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- Required key: DeploymentId
-- @return GetDeploymentStatusRequest structure as a key-value pair table
function M.GetDeploymentStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetDeploymentStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DeploymentId}"] = args["DeploymentId"],
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["DeploymentId"] = args["DeploymentId"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertGetDeploymentStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Variables [MapOf__string] Environment variables for the lambda function.
-- @return FunctionConfigurationEnvironment structure as a key-value pair table
function M.FunctionConfigurationEnvironment(args)
	assert(args, "You must provide an argument table when creating FunctionConfigurationEnvironment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Variables"] = args["Variables"],
	}
	asserts.AssertFunctionConfigurationEnvironment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionConfiguration [FunctionConfiguration] Configuration of the function
-- * Id [__string] Id of the function in this version.
-- * FunctionArn [__string] Arn of the Lambda function.
-- @return Function structure as a key-value pair table
function M.Function(args)
	assert(args, "You must provide an argument table when creating Function")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionConfiguration"] = args["FunctionConfiguration"],
		["Id"] = args["Id"],
		["FunctionArn"] = args["FunctionArn"],
	}
	asserts.AssertFunction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * DeviceDefinitionVersionArn [__string] Device definition version arn for this group.
-- * SubscriptionDefinitionVersionArn [__string] Subscription definition version arn for this group.
-- * FunctionDefinitionVersionArn [__string] Function definition version arn for this group.
-- * CoreDefinitionVersionArn [__string] Core definition version arn for this group.
-- * LoggerDefinitionVersionArn [__string] Logger definitionv ersion arn for this group.
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- Required key: GroupId
-- @return CreateGroupVersionRequest structure as a key-value pair table
function M.CreateGroupVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreateGroupVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["AmznClientToken"] = args["AmznClientToken"],
		["DeviceDefinitionVersionArn"] = args["DeviceDefinitionVersionArn"],
		["SubscriptionDefinitionVersionArn"] = args["SubscriptionDefinitionVersionArn"],
		["FunctionDefinitionVersionArn"] = args["FunctionDefinitionVersionArn"],
		["CoreDefinitionVersionArn"] = args["CoreDefinitionVersionArn"],
		["LoggerDefinitionVersionArn"] = args["LoggerDefinitionVersionArn"],
		["GroupId"] = args["GroupId"],
	}
	asserts.AssertCreateGroupVersionRequest(all_args)
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return CreateFunctionDefinitionResponse structure as a key-value pair table
function M.CreateFunctionDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating CreateFunctionDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateFunctionDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociatedAt [__string] Time the role arn was associated to your group.
-- @return AssociateRoleToGroupResponse structure as a key-value pair table
function M.AssociateRoleToGroupResponse(args)
	assert(args, "You must provide an argument table when creating AssociateRoleToGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssociatedAt"] = args["AssociatedAt"],
	}
	asserts.AssertAssociateRoleToGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
-- @return CreateLoggerDefinitionResponse structure as a key-value pair table
function M.CreateLoggerDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating CreateLoggerDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateLoggerDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] Response Text
-- * Version [__string] New Version
-- @return UpdateConnectivityInfoResponse structure as a key-value pair table
function M.UpdateConnectivityInfoResponse(args)
	assert(args, "You must provide an argument table when creating UpdateConnectivityInfoResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["Version"] = args["Version"],
	}
	asserts.AssertUpdateConnectivityInfoResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceDefinitionId [__string] device definition Id
-- * AmznClientToken [__string] The client token used to request idempotent operations.
-- * Devices [ListOfDevice] Devices in the definition version.
-- Required key: DeviceDefinitionId
-- @return CreateDeviceDefinitionVersionRequest structure as a key-value pair table
function M.CreateDeviceDefinitionVersionRequest(args)
	assert(args, "You must provide an argument table when creating CreateDeviceDefinitionVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{DeviceDefinitionId}"] = args["DeviceDefinitionId"],
    }
    local header_args = { 
        ["X-Amzn-Client-Token"] = args["AmznClientToken"],
    }
	local all_args = { 
		["DeviceDefinitionId"] = args["DeviceDefinitionId"],
		["AmznClientToken"] = args["AmznClientToken"],
		["Devices"] = args["Devices"],
	}
	asserts.AssertCreateDeviceDefinitionVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Definition [LoggerDefinitionVersion] Information on definition
-- * Version [__string] Version of the logger definition version.
-- * CreationTimestamp [__string] Timestamp of when the logger definition version was created.
-- * Id [__string] Id of the logger definition the version belongs to.
-- * Arn [__string] Arn of the logger definition version.
-- @return GetLoggerDefinitionVersionResponse structure as a key-value pair table
function M.GetLoggerDefinitionVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetLoggerDefinitionVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Definition"] = args["Definition"],
		["Version"] = args["Version"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertGetLoggerDefinitionVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDeviceDefinitionResponse structure as a key-value pair table
function M.UpdateDeviceDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDeviceDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Specifies the pagination token used when iterating through a paginated request
-- * MaxResults [__string] Specifies the maximum number of list results to be returned in this page
-- @return ListFunctionDefinitionsRequest structure as a key-value pair table
function M.ListFunctionDefinitionsRequest(args)
	assert(args, "You must provide an argument table when creating ListFunctionDefinitionsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListFunctionDefinitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Versions [ListOfVersionInformation] Versions
-- @return ListLoggerDefinitionVersionsResponse structure as a key-value pair table
function M.ListLoggerDefinitionVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListLoggerDefinitionVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListLoggerDefinitionVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociatedAt [__string] Time when the service role was associated to the account.
-- * RoleArn [__string] Role arn which is associated to the account.
-- @return GetServiceRoleForAccountResponse structure as a key-value pair table
function M.GetServiceRoleForAccountResponse(args)
	assert(args, "You must provide an argument table when creating GetServiceRoleForAccountResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AssociatedAt"] = args["AssociatedAt"],
		["RoleArn"] = args["RoleArn"],
	}
	asserts.AssertGetServiceRoleForAccountResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggerDefinitionId [__string] logger definition Id
-- Required key: LoggerDefinitionId
-- @return GetLoggerDefinitionRequest structure as a key-value pair table
function M.GetLoggerDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating GetLoggerDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{LoggerDefinitionId}"] = args["LoggerDefinitionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["LoggerDefinitionId"] = args["LoggerDefinitionId"],
	}
	asserts.AssertGetLoggerDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GroupId [__string] The unique Id of the AWS Greengrass Group
-- * GroupVersionId [__string] Group version Id
-- Required key: GroupVersionId
-- Required key: GroupId
-- @return GetGroupVersionRequest structure as a key-value pair table
function M.GetGroupVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetGroupVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{GroupId}"] = args["GroupId"],
        ["{GroupVersionId}"] = args["GroupVersionId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["GroupId"] = args["GroupId"],
		["GroupVersionId"] = args["GroupVersionId"],
	}
	asserts.AssertGetGroupVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Deployments [Deployments] Information on deployments
-- @return ListDeploymentsResponse structure as a key-value pair table
function M.ListDeploymentsResponse(args)
	assert(args, "You must provide an argument table when creating ListDeploymentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Deployments"] = args["Deployments"],
	}
	asserts.AssertListDeploymentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] The token for the next set of results, or ''null'' if there are no additional results.
-- * Versions [ListOfVersionInformation] Versions
-- @return ListDeviceDefinitionVersionsResponse structure as a key-value pair table
function M.ListDeviceDefinitionVersionsResponse(args)
	assert(args, "You must provide an argument table when creating ListDeviceDefinitionVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Versions"] = args["Versions"],
	}
	asserts.AssertListDeviceDefinitionVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestVersionArn [__string] Latest version arn of the definition.
-- * Name [__string] Name of the definition.
-- * LastUpdatedTimestamp [__string] Last updated timestamp of the definition.
-- * LatestVersion [__string] Last version of the definition.
-- * CreationTimestamp [__string] Timestamp of when the definition was created.
-- * Id [__string] Id of the definition.
-- * Arn [__string] Arn of the definition.
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
		["LatestVersionArn"] = args["LatestVersionArn"],
		["Name"] = args["Name"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["LatestVersion"] = args["LatestVersion"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call GetDeviceDefinitionVersion asynchronously, invoking a callback when done
-- @param GetDeviceDefinitionVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeviceDefinitionVersionAsync(GetDeviceDefinitionVersionRequest, cb)
	assert(GetDeviceDefinitionVersionRequest, "You must provide a GetDeviceDefinitionVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDeviceDefinitionVersion",
	}
	for header,value in pairs(GetDeviceDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}", GetDeviceDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeviceDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetDeviceDefinitionVersionSync(GetDeviceDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceDefinitionVersionAsync(GetDeviceDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDeviceDefinitionVersions",
	}
	for header,value in pairs(ListDeviceDefinitionVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/devices/{DeviceDefinitionId}/versions", ListDeviceDefinitionVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeviceDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeviceDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListDeviceDefinitionVersionsSync(ListDeviceDefinitionVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeviceDefinitionVersionsAsync(ListDeviceDefinitionVersionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AssociateRoleToGroup",
	}
	for header,value in pairs(AssociateRoleToGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/role", AssociateRoleToGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateRoleToGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateRoleToGroupRequest
-- @return response
-- @return error_message
function M.AssociateRoleToGroupSync(AssociateRoleToGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateRoleToGroupAsync(AssociateRoleToGroupRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSubscriptionDefinitionVersions",
	}
	for header,value in pairs(ListSubscriptionDefinitionVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", ListSubscriptionDefinitionVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSubscriptionDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSubscriptionDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListSubscriptionDefinitionVersionsSync(ListSubscriptionDefinitionVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscriptionDefinitionVersionsAsync(ListSubscriptionDefinitionVersionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListCoreDefinitions",
	}
	for header,value in pairs(ListCoreDefinitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/cores", ListCoreDefinitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCoreDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCoreDefinitionsRequest
-- @return response
-- @return error_message
function M.ListCoreDefinitionsSync(ListCoreDefinitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCoreDefinitionsAsync(ListCoreDefinitionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGroupVersions",
	}
	for header,value in pairs(ListGroupVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/versions", ListGroupVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroupVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupVersionsRequest
-- @return response
-- @return error_message
function M.ListGroupVersionsSync(ListGroupVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupVersionsAsync(ListGroupVersionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateCoreDefinition",
	}
	for header,value in pairs(UpdateCoreDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/cores/{CoreDefinitionId}", UpdateCoreDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCoreDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCoreDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateCoreDefinitionSync(UpdateCoreDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCoreDefinitionAsync(UpdateCoreDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCoreDefinition",
	}
	for header,value in pairs(CreateCoreDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/cores", CreateCoreDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCoreDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCoreDefinitionRequest
-- @return response
-- @return error_message
function M.CreateCoreDefinitionSync(CreateCoreDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCoreDefinitionAsync(CreateCoreDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSubscriptionDefinition",
	}
	for header,value in pairs(GetSubscriptionDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", GetSubscriptionDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSubscriptionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSubscriptionDefinitionRequest
-- @return response
-- @return error_message
function M.GetSubscriptionDefinitionSync(GetSubscriptionDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSubscriptionDefinitionAsync(GetSubscriptionDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDeploymentStatus",
	}
	for header,value in pairs(GetDeploymentStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/deployments/{DeploymentId}/status", GetDeploymentStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeploymentStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeploymentStatusRequest
-- @return response
-- @return error_message
function M.GetDeploymentStatusSync(GetDeploymentStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeploymentStatusAsync(GetDeploymentStatusRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDeviceDefinitions",
	}
	for header,value in pairs(ListDeviceDefinitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/devices", ListDeviceDefinitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeviceDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeviceDefinitionsRequest
-- @return response
-- @return error_message
function M.ListDeviceDefinitionsSync(ListDeviceDefinitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeviceDefinitionsAsync(ListDeviceDefinitionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateGroup",
	}
	for header,value in pairs(CreateGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups", CreateGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGroupRequest
-- @return response
-- @return error_message
function M.CreateGroupSync(CreateGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupAsync(CreateGroupRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGroupCertificateAuthority",
	}
	for header,value in pairs(GetGroupCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/certificateauthorities/{CertificateAuthorityId}", GetGroupCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGroupCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupCertificateAuthorityRequest
-- @return response
-- @return error_message
function M.GetGroupCertificateAuthoritySync(GetGroupCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupCertificateAuthorityAsync(GetGroupCertificateAuthorityRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDeployment",
	}
	for header,value in pairs(CreateDeploymentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/deployments", CreateDeploymentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeployment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeploymentRequest
-- @return response
-- @return error_message
function M.CreateDeploymentSync(CreateDeploymentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeploymentAsync(CreateDeploymentRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSubscriptionDefinitions",
	}
	for header,value in pairs(ListSubscriptionDefinitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/subscriptions", ListSubscriptionDefinitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSubscriptionDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSubscriptionDefinitionsRequest
-- @return response
-- @return error_message
function M.ListSubscriptionDefinitionsSync(ListSubscriptionDefinitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscriptionDefinitionsAsync(ListSubscriptionDefinitionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDeviceDefinition",
	}
	for header,value in pairs(UpdateDeviceDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/devices/{DeviceDefinitionId}", UpdateDeviceDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDeviceDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDeviceDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateDeviceDefinitionSync(UpdateDeviceDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeviceDefinitionAsync(UpdateDeviceDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListLoggerDefinitionVersions",
	}
	for header,value in pairs(ListLoggerDefinitionVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", ListLoggerDefinitionVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListLoggerDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLoggerDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListLoggerDefinitionVersionsSync(ListLoggerDefinitionVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLoggerDefinitionVersionsAsync(ListLoggerDefinitionVersionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDeviceDefinition",
	}
	for header,value in pairs(CreateDeviceDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/devices", CreateDeviceDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeviceDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeviceDefinitionRequest
-- @return response
-- @return error_message
function M.CreateDeviceDefinitionSync(CreateDeviceDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeviceDefinitionAsync(CreateDeviceDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AssociateServiceRoleToAccount",
	}
	for header,value in pairs(AssociateServiceRoleToAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/servicerole", AssociateServiceRoleToAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateServiceRoleToAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateServiceRoleToAccountRequest
-- @return response
-- @return error_message
function M.AssociateServiceRoleToAccountSync(AssociateServiceRoleToAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateServiceRoleToAccountAsync(AssociateServiceRoleToAccountRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteGroup",
	}
	for header,value in pairs(DeleteGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}", DeleteGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGroupRequest
-- @return response
-- @return error_message
function M.DeleteGroupSync(DeleteGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGroupAsync(DeleteGroupRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDeviceDefinitionVersion",
	}
	for header,value in pairs(CreateDeviceDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/devices/{DeviceDefinitionId}/versions", CreateDeviceDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDeviceDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDeviceDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateDeviceDefinitionVersionSync(CreateDeviceDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDeviceDefinitionVersionAsync(CreateDeviceDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCoreDefinition",
	}
	for header,value in pairs(GetCoreDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/cores/{CoreDefinitionId}", GetCoreDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCoreDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCoreDefinitionRequest
-- @return response
-- @return error_message
function M.GetCoreDefinitionSync(GetCoreDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCoreDefinitionAsync(GetCoreDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSubscriptionDefinitionVersion",
	}
	for header,value in pairs(GetSubscriptionDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}", GetSubscriptionDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSubscriptionDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSubscriptionDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetSubscriptionDefinitionVersionSync(GetSubscriptionDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSubscriptionDefinitionVersionAsync(GetSubscriptionDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFunctionDefinitionVersions",
	}
	for header,value in pairs(ListFunctionDefinitionVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/functions/{FunctionDefinitionId}/versions", ListFunctionDefinitionVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFunctionDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFunctionDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListFunctionDefinitionVersionsSync(ListFunctionDefinitionVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFunctionDefinitionVersionsAsync(ListFunctionDefinitionVersionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFunctionDefinition",
	}
	for header,value in pairs(GetFunctionDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/functions/{FunctionDefinitionId}", GetFunctionDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFunctionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFunctionDefinitionRequest
-- @return response
-- @return error_message
function M.GetFunctionDefinitionSync(GetFunctionDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFunctionDefinitionAsync(GetFunctionDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGroup",
	}
	for header,value in pairs(GetGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}", GetGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupRequest
-- @return response
-- @return error_message
function M.GetGroupSync(GetGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupAsync(GetGroupRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateGroup",
	}
	for header,value in pairs(UpdateGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}", UpdateGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGroupRequest
-- @return response
-- @return error_message
function M.UpdateGroupSync(UpdateGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGroupAsync(UpdateGroupRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCoreDefinition",
	}
	for header,value in pairs(DeleteCoreDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/cores/{CoreDefinitionId}", DeleteCoreDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCoreDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCoreDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteCoreDefinitionSync(DeleteCoreDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCoreDefinitionAsync(DeleteCoreDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateGroupVersion",
	}
	for header,value in pairs(CreateGroupVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/versions", CreateGroupVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGroupVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGroupVersionRequest
-- @return response
-- @return error_message
function M.CreateGroupVersionSync(CreateGroupVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupVersionAsync(CreateGroupVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLoggerDefinitionVersion",
	}
	for header,value in pairs(CreateLoggerDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/loggers/{LoggerDefinitionId}/versions", CreateLoggerDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoggerDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoggerDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateLoggerDefinitionVersionSync(CreateLoggerDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoggerDefinitionVersionAsync(CreateLoggerDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDeviceDefinition",
	}
	for header,value in pairs(GetDeviceDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/devices/{DeviceDefinitionId}", GetDeviceDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeviceDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceDefinitionRequest
-- @return response
-- @return error_message
function M.GetDeviceDefinitionSync(GetDeviceDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceDefinitionAsync(GetDeviceDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetFunctionDefinitionVersion",
	}
	for header,value in pairs(GetFunctionDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}", GetFunctionDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetFunctionDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetFunctionDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetFunctionDefinitionVersionSync(GetFunctionDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetFunctionDefinitionVersionAsync(GetFunctionDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetLoggerDefinitionVersion",
	}
	for header,value in pairs(GetLoggerDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/loggers/{LoggerDefinitionId}/versions/{LoggerDefinitionVersionId}", GetLoggerDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoggerDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoggerDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetLoggerDefinitionVersionSync(GetLoggerDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoggerDefinitionVersionAsync(GetLoggerDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCoreDefinitionVersion",
	}
	for header,value in pairs(CreateCoreDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/cores/{CoreDefinitionId}/versions", CreateCoreDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCoreDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCoreDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateCoreDefinitionVersionSync(CreateCoreDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCoreDefinitionVersionAsync(CreateCoreDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListCoreDefinitionVersions",
	}
	for header,value in pairs(ListCoreDefinitionVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/cores/{CoreDefinitionId}/versions", ListCoreDefinitionVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCoreDefinitionVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCoreDefinitionVersionsRequest
-- @return response
-- @return error_message
function M.ListCoreDefinitionVersionsSync(ListCoreDefinitionVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCoreDefinitionVersionsAsync(ListCoreDefinitionVersionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateGroupCertificateConfiguration",
	}
	for header,value in pairs(UpdateGroupCertificateConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", UpdateGroupCertificateConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGroupCertificateConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGroupCertificateConfigurationRequest
-- @return response
-- @return error_message
function M.UpdateGroupCertificateConfigurationSync(UpdateGroupCertificateConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGroupCertificateConfigurationAsync(UpdateGroupCertificateConfigurationRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateGroupCertificateAuthority",
	}
	for header,value in pairs(CreateGroupCertificateAuthorityRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/certificateauthorities", CreateGroupCertificateAuthorityRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGroupCertificateAuthority synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGroupCertificateAuthorityRequest
-- @return response
-- @return error_message
function M.CreateGroupCertificateAuthoritySync(CreateGroupCertificateAuthorityRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGroupCertificateAuthorityAsync(CreateGroupCertificateAuthorityRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetServiceRoleForAccount",
	}
	for header,value in pairs(GetServiceRoleForAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/servicerole", GetServiceRoleForAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetServiceRoleForAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetServiceRoleForAccountRequest
-- @return response
-- @return error_message
function M.GetServiceRoleForAccountSync(GetServiceRoleForAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetServiceRoleForAccountAsync(GetServiceRoleForAccountRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateConnectivityInfo",
	}
	for header,value in pairs(UpdateConnectivityInfoRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/things/{ThingName}/connectivityInfo", UpdateConnectivityInfoRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConnectivityInfo synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConnectivityInfoRequest
-- @return response
-- @return error_message
function M.UpdateConnectivityInfoSync(UpdateConnectivityInfoRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConnectivityInfoAsync(UpdateConnectivityInfoRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisassociateRoleFromGroup",
	}
	for header,value in pairs(DisassociateRoleFromGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/role", DisassociateRoleFromGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateRoleFromGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateRoleFromGroupRequest
-- @return response
-- @return error_message
function M.DisassociateRoleFromGroupSync(DisassociateRoleFromGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateRoleFromGroupAsync(DisassociateRoleFromGroupRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateLoggerDefinition",
	}
	for header,value in pairs(CreateLoggerDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/loggers", CreateLoggerDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLoggerDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLoggerDefinitionRequest
-- @return response
-- @return error_message
function M.CreateLoggerDefinitionSync(CreateLoggerDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLoggerDefinitionAsync(CreateLoggerDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGroupCertificateAuthorities",
	}
	for header,value in pairs(ListGroupCertificateAuthoritiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/certificateauthorities", ListGroupCertificateAuthoritiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroupCertificateAuthorities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupCertificateAuthoritiesRequest
-- @return response
-- @return error_message
function M.ListGroupCertificateAuthoritiesSync(ListGroupCertificateAuthoritiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupCertificateAuthoritiesAsync(ListGroupCertificateAuthoritiesRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateSubscriptionDefinition",
	}
	for header,value in pairs(UpdateSubscriptionDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", UpdateSubscriptionDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSubscriptionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSubscriptionDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateSubscriptionDefinitionSync(UpdateSubscriptionDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSubscriptionDefinitionAsync(UpdateSubscriptionDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSubscriptionDefinition",
	}
	for header,value in pairs(DeleteSubscriptionDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}", DeleteSubscriptionDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSubscriptionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSubscriptionDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteSubscriptionDefinitionSync(DeleteSubscriptionDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSubscriptionDefinitionAsync(DeleteSubscriptionDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFunctionDefinitionVersion",
	}
	for header,value in pairs(CreateFunctionDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/functions/{FunctionDefinitionId}/versions", CreateFunctionDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFunctionDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFunctionDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateFunctionDefinitionVersionSync(CreateFunctionDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFunctionDefinitionVersionAsync(CreateFunctionDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDeployments",
	}
	for header,value in pairs(ListDeploymentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/deployments", ListDeploymentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeployments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeploymentsRequest
-- @return response
-- @return error_message
function M.ListDeploymentsSync(ListDeploymentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeploymentsAsync(ListDeploymentsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGroupVersion",
	}
	for header,value in pairs(GetGroupVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/versions/{GroupVersionId}", GetGroupVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGroupVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupVersionRequest
-- @return response
-- @return error_message
function M.GetGroupVersionSync(GetGroupVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupVersionAsync(GetGroupVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisassociateServiceRoleFromAccount",
	}
	for header,value in pairs(DisassociateServiceRoleFromAccountRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/greengrass/servicerole", DisassociateServiceRoleFromAccountRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateServiceRoleFromAccount synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateServiceRoleFromAccountRequest
-- @return response
-- @return error_message
function M.DisassociateServiceRoleFromAccountSync(DisassociateServiceRoleFromAccountRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateServiceRoleFromAccountAsync(DisassociateServiceRoleFromAccountRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCoreDefinitionVersion",
	}
	for header,value in pairs(GetCoreDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}", GetCoreDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCoreDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCoreDefinitionVersionRequest
-- @return response
-- @return error_message
function M.GetCoreDefinitionVersionSync(GetCoreDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCoreDefinitionVersionAsync(GetCoreDefinitionVersionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFunctionDefinitions",
	}
	for header,value in pairs(ListFunctionDefinitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/functions", ListFunctionDefinitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFunctionDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFunctionDefinitionsRequest
-- @return response
-- @return error_message
function M.ListFunctionDefinitionsSync(ListFunctionDefinitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFunctionDefinitionsAsync(ListFunctionDefinitionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGroupCertificateConfiguration",
	}
	for header,value in pairs(GetGroupCertificateConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/certificateauthorities/configuration/expiry", GetGroupCertificateConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGroupCertificateConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGroupCertificateConfigurationRequest
-- @return response
-- @return error_message
function M.GetGroupCertificateConfigurationSync(GetGroupCertificateConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGroupCertificateConfigurationAsync(GetGroupCertificateConfigurationRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteFunctionDefinition",
	}
	for header,value in pairs(DeleteFunctionDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/functions/{FunctionDefinitionId}", DeleteFunctionDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteFunctionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteFunctionDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteFunctionDefinitionSync(DeleteFunctionDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteFunctionDefinitionAsync(DeleteFunctionDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAssociatedRole",
	}
	for header,value in pairs(GetAssociatedRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups/{GroupId}/role", GetAssociatedRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAssociatedRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAssociatedRoleRequest
-- @return response
-- @return error_message
function M.GetAssociatedRoleSync(GetAssociatedRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAssociatedRoleAsync(GetAssociatedRoleRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateLoggerDefinition",
	}
	for header,value in pairs(UpdateLoggerDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/loggers/{LoggerDefinitionId}", UpdateLoggerDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateLoggerDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateLoggerDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateLoggerDefinitionSync(UpdateLoggerDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateLoggerDefinitionAsync(UpdateLoggerDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateFunctionDefinition",
	}
	for header,value in pairs(CreateFunctionDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/functions", CreateFunctionDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateFunctionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateFunctionDefinitionRequest
-- @return response
-- @return error_message
function M.CreateFunctionDefinitionSync(CreateFunctionDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateFunctionDefinitionAsync(CreateFunctionDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetLoggerDefinition",
	}
	for header,value in pairs(GetLoggerDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/loggers/{LoggerDefinitionId}", GetLoggerDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLoggerDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLoggerDefinitionRequest
-- @return response
-- @return error_message
function M.GetLoggerDefinitionSync(GetLoggerDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLoggerDefinitionAsync(GetLoggerDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateFunctionDefinition",
	}
	for header,value in pairs(UpdateFunctionDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/functions/{FunctionDefinitionId}", UpdateFunctionDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateFunctionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateFunctionDefinitionRequest
-- @return response
-- @return error_message
function M.UpdateFunctionDefinitionSync(UpdateFunctionDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateFunctionDefinitionAsync(UpdateFunctionDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListLoggerDefinitions",
	}
	for header,value in pairs(ListLoggerDefinitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/loggers", ListLoggerDefinitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListLoggerDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLoggerDefinitionsRequest
-- @return response
-- @return error_message
function M.ListLoggerDefinitionsSync(ListLoggerDefinitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLoggerDefinitionsAsync(ListLoggerDefinitionsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSubscriptionDefinition",
	}
	for header,value in pairs(CreateSubscriptionDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/subscriptions", CreateSubscriptionDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSubscriptionDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSubscriptionDefinitionRequest
-- @return response
-- @return error_message
function M.CreateSubscriptionDefinitionSync(CreateSubscriptionDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubscriptionDefinitionAsync(CreateSubscriptionDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetConnectivityInfo",
	}
	for header,value in pairs(GetConnectivityInfoRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/things/{ThingName}/connectivityInfo", GetConnectivityInfoRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetConnectivityInfo synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetConnectivityInfoRequest
-- @return response
-- @return error_message
function M.GetConnectivityInfoSync(GetConnectivityInfoRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConnectivityInfoAsync(GetConnectivityInfoRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGroups",
	}
	for header,value in pairs(ListGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/greengrass/groups", ListGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGroupsRequest
-- @return response
-- @return error_message
function M.ListGroupsSync(ListGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGroupsAsync(ListGroupsRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLoggerDefinition",
	}
	for header,value in pairs(DeleteLoggerDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/loggers/{LoggerDefinitionId}", DeleteLoggerDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLoggerDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLoggerDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteLoggerDefinitionSync(DeleteLoggerDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLoggerDefinitionAsync(DeleteLoggerDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDeviceDefinition",
	}
	for header,value in pairs(DeleteDeviceDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/devices/{DeviceDefinitionId}", DeleteDeviceDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDeviceDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeviceDefinitionRequest
-- @return response
-- @return error_message
function M.DeleteDeviceDefinitionSync(DeleteDeviceDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeviceDefinitionAsync(DeleteDeviceDefinitionRequest, function(response, error_message)
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
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSubscriptionDefinitionVersion",
	}
	for header,value in pairs(CreateSubscriptionDefinitionVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions", CreateSubscriptionDefinitionVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSubscriptionDefinitionVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSubscriptionDefinitionVersionRequest
-- @return response
-- @return error_message
function M.CreateSubscriptionDefinitionVersionSync(CreateSubscriptionDefinitionVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubscriptionDefinitionVersionAsync(CreateSubscriptionDefinitionVersionRequest, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
