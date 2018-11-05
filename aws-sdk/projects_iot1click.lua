--- GENERATED CODE - DO NOT MODIFY
-- AWS IoT 1-Click Projects Service (iot1click-projects-2018-05-14)

local M = {}

M.metadata = {
	api_version = "2018-05-14",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "projects.iot1click",
	service_abbreviation = "AWS IoT 1-Click Projects",
	service_full_name = "AWS IoT 1-Click Projects Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "iot1click-projects-2018-05-14",
}

local keys = {}
local asserts = {}

keys.DescribeProjectResponse = { ["project"] = true, nil }

function asserts.AssertDescribeProjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectResponse to be of type 'table'")
	assert(struct["project"], "Expected key project to exist in table")
	if struct["project"] then asserts.AssertProjectDescription(struct["project"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProjectResponse[k], "DescribeProjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProjectResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * project [ProjectDescription] <p>An object describing the project.</p>
-- Required key: project
-- @return DescribeProjectResponse structure as a key-value pair table
function M.DescribeProjectResponse(args)
	assert(args, "You must provide an argument table when creating DescribeProjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["project"] = args["project"],
	}
	asserts.AssertDescribeProjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidRequestException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	assert(struct["code"], "Expected key code to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["code"] then asserts.AssertCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] 
-- * code [Code] 
-- Required key: code
-- Required key: message
-- @return InvalidRequestException structure as a key-value pair table
function M.InvalidRequestException(args)
	assert(args, "You must provide an argument table when creating InvalidRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertInvalidRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePlacementRequest = { ["placementName"] = true, ["attributes"] = true, ["projectName"] = true, nil }

function asserts.AssertCreatePlacementRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlacementRequest to be of type 'table'")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	if struct["attributes"] then asserts.AssertPlacementAttributeMap(struct["attributes"]) end
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlacementRequest[k], "CreatePlacementRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlacementRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * placementName [PlacementName] <p>The name of the placement to be created.</p>
-- * attributes [PlacementAttributeMap] <p>Optional user-defined key/value pairs providing contextual data (such as location or function) for the placement.</p>
-- * projectName [ProjectName] <p>The name of the project in which to create the placement.</p>
-- Required key: placementName
-- Required key: projectName
-- @return CreatePlacementRequest structure as a key-value pair table
function M.CreatePlacementRequest(args)
	assert(args, "You must provide an argument table when creating CreatePlacementRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectName}"] = args["projectName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["placementName"] = args["placementName"],
		["attributes"] = args["attributes"],
		["projectName"] = args["projectName"],
	}
	asserts.AssertCreatePlacementRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePlacementRequest = { ["placementName"] = true, ["projectName"] = true, nil }

function asserts.AssertDeletePlacementRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePlacementRequest to be of type 'table'")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePlacementRequest[k], "DeletePlacementRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePlacementRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * placementName [PlacementName] <p>The name of the empty placement to delete.</p>
-- * projectName [ProjectName] <p>The project containing the empty placement to delete.</p>
-- Required key: placementName
-- Required key: projectName
-- @return DeletePlacementRequest structure as a key-value pair table
function M.DeletePlacementRequest(args)
	assert(args, "You must provide an argument table when creating DeletePlacementRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{placementName}"] = args["placementName"],
        ["{projectName}"] = args["projectName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["placementName"] = args["placementName"],
		["projectName"] = args["projectName"],
	}
	asserts.AssertDeletePlacementRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDeviceWithPlacementRequest = { ["projectName"] = true, ["deviceTemplateName"] = true, ["deviceId"] = true, ["placementName"] = true, nil }

function asserts.AssertAssociateDeviceWithPlacementRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDeviceWithPlacementRequest to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	assert(struct["deviceId"], "Expected key deviceId to exist in table")
	assert(struct["deviceTemplateName"], "Expected key deviceTemplateName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["deviceTemplateName"] then asserts.AssertDeviceTemplateName(struct["deviceTemplateName"]) end
	if struct["deviceId"] then asserts.AssertDeviceId(struct["deviceId"]) end
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateDeviceWithPlacementRequest[k], "AssociateDeviceWithPlacementRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDeviceWithPlacementRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project containing the placement in which to associate the device.</p>
-- * deviceTemplateName [DeviceTemplateName] <p>The device template name to associate with the device ID.</p>
-- * deviceId [DeviceId] <p>The ID of the physical device to be associated with the given placement in the project. Note that a mandatory 4 character prefix is required for all <code>deviceId</code> values.</p>
-- * placementName [PlacementName] <p>The name of the placement in which to associate the device.</p>
-- Required key: projectName
-- Required key: placementName
-- Required key: deviceId
-- Required key: deviceTemplateName
-- @return AssociateDeviceWithPlacementRequest structure as a key-value pair table
function M.AssociateDeviceWithPlacementRequest(args)
	assert(args, "You must provide an argument table when creating AssociateDeviceWithPlacementRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectName}"] = args["projectName"],
        ["{deviceTemplateName}"] = args["deviceTemplateName"],
        ["{placementName}"] = args["placementName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["deviceTemplateName"] = args["deviceTemplateName"],
		["deviceId"] = args["deviceId"],
		["placementName"] = args["placementName"],
	}
	asserts.AssertAssociateDeviceWithPlacementRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePlacementRequest = { ["placementName"] = true, ["attributes"] = true, ["projectName"] = true, nil }

function asserts.AssertUpdatePlacementRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePlacementRequest to be of type 'table'")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	if struct["attributes"] then asserts.AssertPlacementAttributeMap(struct["attributes"]) end
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePlacementRequest[k], "UpdatePlacementRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePlacementRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * placementName [PlacementName] <p>The name of the placement to update.</p>
-- * attributes [PlacementAttributeMap] <p>The user-defined object of attributes used to update the placement. The maximum number of key/value pairs is 50.</p>
-- * projectName [ProjectName] <p>The name of the project containing the placement to be updated.</p>
-- Required key: placementName
-- Required key: projectName
-- @return UpdatePlacementRequest structure as a key-value pair table
function M.UpdatePlacementRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePlacementRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{placementName}"] = args["placementName"],
        ["{projectName}"] = args["projectName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["placementName"] = args["placementName"],
		["attributes"] = args["attributes"],
		["projectName"] = args["projectName"],
	}
	asserts.AssertUpdatePlacementRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDeviceFromPlacementRequest = { ["projectName"] = true, ["deviceTemplateName"] = true, ["placementName"] = true, nil }

function asserts.AssertDisassociateDeviceFromPlacementRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDeviceFromPlacementRequest to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	assert(struct["deviceTemplateName"], "Expected key deviceTemplateName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["deviceTemplateName"] then asserts.AssertDeviceTemplateName(struct["deviceTemplateName"]) end
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDeviceFromPlacementRequest[k], "DisassociateDeviceFromPlacementRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDeviceFromPlacementRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project that contains the placement.</p>
-- * deviceTemplateName [DeviceTemplateName] <p>The device ID that should be removed from the placement.</p>
-- * placementName [PlacementName] <p>The name of the placement that the device should be removed from.</p>
-- Required key: projectName
-- Required key: placementName
-- Required key: deviceTemplateName
-- @return DisassociateDeviceFromPlacementRequest structure as a key-value pair table
function M.DisassociateDeviceFromPlacementRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateDeviceFromPlacementRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectName}"] = args["projectName"],
        ["{deviceTemplateName}"] = args["deviceTemplateName"],
        ["{placementName}"] = args["placementName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["deviceTemplateName"] = args["deviceTemplateName"],
		["placementName"] = args["placementName"],
	}
	asserts.AssertDisassociateDeviceFromPlacementRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePlacementRequest = { ["placementName"] = true, ["projectName"] = true, nil }

function asserts.AssertDescribePlacementRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePlacementRequest to be of type 'table'")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePlacementRequest[k], "DescribePlacementRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePlacementRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * placementName [PlacementName] <p>The name of the placement within a project.</p>
-- * projectName [ProjectName] <p>The project containing the placement to be described.</p>
-- Required key: placementName
-- Required key: projectName
-- @return DescribePlacementRequest structure as a key-value pair table
function M.DescribePlacementRequest(args)
	assert(args, "You must provide an argument table when creating DescribePlacementRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{placementName}"] = args["placementName"],
        ["{projectName}"] = args["projectName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["placementName"] = args["placementName"],
		["projectName"] = args["projectName"],
	}
	asserts.AssertDescribePlacementRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePlacementResponse = { nil }

function asserts.AssertDeletePlacementResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePlacementResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePlacementResponse[k], "DeletePlacementResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePlacementResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePlacementResponse structure as a key-value pair table
function M.DeletePlacementResponse(args)
	assert(args, "You must provide an argument table when creating DeletePlacementResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeletePlacementResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectDescription = { ["projectName"] = true, ["updatedDate"] = true, ["description"] = true, ["placementTemplate"] = true, ["createdDate"] = true, nil }

function asserts.AssertProjectDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectDescription to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	assert(struct["createdDate"], "Expected key createdDate to exist in table")
	assert(struct["updatedDate"], "Expected key updatedDate to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["updatedDate"] then asserts.AssertTime(struct["updatedDate"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["placementTemplate"] then asserts.AssertPlacementTemplate(struct["placementTemplate"]) end
	if struct["createdDate"] then asserts.AssertTime(struct["createdDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectDescription[k], "ProjectDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectDescription
-- <p>An object providing detailed information for a particular project associated with an AWS account and region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project for which to obtain information from.</p>
-- * updatedDate [Time] <p>The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>
-- * description [Description] <p>The description of the project.</p>
-- * placementTemplate [PlacementTemplate] <p>An object describing the project's placement specifications.</p>
-- * createdDate [Time] <p>The date when the project was originally created, in UNIX epoch time format.</p>
-- Required key: projectName
-- Required key: createdDate
-- Required key: updatedDate
-- @return ProjectDescription structure as a key-value pair table
function M.ProjectDescription(args)
	assert(args, "You must provide an argument table when creating ProjectDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["updatedDate"] = args["updatedDate"],
		["description"] = args["description"],
		["placementTemplate"] = args["placementTemplate"],
		["createdDate"] = args["createdDate"],
	}
	asserts.AssertProjectDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPlacementsRequest = { ["projectName"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListPlacementsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlacementsRequest to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPlacementsRequest[k], "ListPlacementsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlacementsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The project containing the placements to be listed.</p>
-- * nextToken [NextToken] <p>The token to retrieve the next set of results.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return per request. If not set, a default value of 100 is used.</p>
-- Required key: projectName
-- @return ListPlacementsRequest structure as a key-value pair table
function M.ListPlacementsRequest(args)
	assert(args, "You must provide an argument table when creating ListPlacementsRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
        ["{projectName}"] = args["projectName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListPlacementsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectRequest = { ["projectName"] = true, nil }

function asserts.AssertDeleteProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectRequest to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectRequest[k], "DeleteProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the empty project to delete.</p>
-- Required key: projectName
-- @return DeleteProjectRequest structure as a key-value pair table
function M.DeleteProjectRequest(args)
	assert(args, "You must provide an argument table when creating DeleteProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectName}"] = args["projectName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
	}
	asserts.AssertDeleteProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProjectsRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListProjectsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsRequest[k], "ListProjectsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token to retrieve the next set of results.</p>
-- * maxResults [MaxResults] <p>The maximum number of results to return per request. If not set, a default value of 100 is used.</p>
-- @return ListProjectsRequest structure as a key-value pair table
function M.ListProjectsRequest(args)
	assert(args, "You must provide an argument table when creating ListProjectsRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListProjectsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevicesInPlacementRequest = { ["projectName"] = true, ["placementName"] = true, nil }

function asserts.AssertGetDevicesInPlacementRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicesInPlacementRequest to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevicesInPlacementRequest[k], "GetDevicesInPlacementRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicesInPlacementRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project containing the placement.</p>
-- * placementName [PlacementName] <p>The name of the placement to get the devices from.</p>
-- Required key: projectName
-- Required key: placementName
-- @return GetDevicesInPlacementRequest structure as a key-value pair table
function M.GetDevicesInPlacementRequest(args)
	assert(args, "You must provide an argument table when creating GetDevicesInPlacementRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectName}"] = args["projectName"],
        ["{placementName}"] = args["placementName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["placementName"] = args["placementName"],
	}
	asserts.AssertGetDevicesInPlacementRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlacementDescription = { ["projectName"] = true, ["createdDate"] = true, ["attributes"] = true, ["updatedDate"] = true, ["placementName"] = true, nil }

function asserts.AssertPlacementDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementDescription to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	assert(struct["createdDate"], "Expected key createdDate to exist in table")
	assert(struct["updatedDate"], "Expected key updatedDate to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["createdDate"] then asserts.AssertTime(struct["createdDate"]) end
	if struct["attributes"] then asserts.AssertPlacementAttributeMap(struct["attributes"]) end
	if struct["updatedDate"] then asserts.AssertTime(struct["updatedDate"]) end
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlacementDescription[k], "PlacementDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementDescription
-- <p>An object describing a project's placement.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project containing the placement.</p>
-- * createdDate [Time] <p>The date when the placement was initially created, in UNIX epoch time format.</p>
-- * attributes [PlacementAttributeMap] <p>The user-defined attributes associated with the placement.</p>
-- * updatedDate [Time] <p>The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>
-- * placementName [PlacementName] <p>The name of the placement.</p>
-- Required key: projectName
-- Required key: placementName
-- Required key: attributes
-- Required key: createdDate
-- Required key: updatedDate
-- @return PlacementDescription structure as a key-value pair table
function M.PlacementDescription(args)
	assert(args, "You must provide an argument table when creating PlacementDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["createdDate"] = args["createdDate"],
		["attributes"] = args["attributes"],
		["updatedDate"] = args["updatedDate"],
		["placementName"] = args["placementName"],
	}
	asserts.AssertPlacementDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlacementSummary = { ["projectName"] = true, ["updatedDate"] = true, ["createdDate"] = true, ["placementName"] = true, nil }

function asserts.AssertPlacementSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementSummary to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	assert(struct["placementName"], "Expected key placementName to exist in table")
	assert(struct["createdDate"], "Expected key createdDate to exist in table")
	assert(struct["updatedDate"], "Expected key updatedDate to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["updatedDate"] then asserts.AssertTime(struct["updatedDate"]) end
	if struct["createdDate"] then asserts.AssertTime(struct["createdDate"]) end
	if struct["placementName"] then asserts.AssertPlacementName(struct["placementName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlacementSummary[k], "PlacementSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementSummary
-- <p>An object providing summary information for a particular placement.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project containing the placement.</p>
-- * updatedDate [Time] <p>The date when the placement was last updated, in UNIX epoch time format. If the placement was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>
-- * createdDate [Time] <p>The date when the placement was originally created, in UNIX epoch time format.</p>
-- * placementName [PlacementName] <p>The name of the placement being summarized.</p>
-- Required key: projectName
-- Required key: placementName
-- Required key: createdDate
-- Required key: updatedDate
-- @return PlacementSummary structure as a key-value pair table
function M.PlacementSummary(args)
	assert(args, "You must provide an argument table when creating PlacementSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["updatedDate"] = args["updatedDate"],
		["createdDate"] = args["createdDate"],
		["placementName"] = args["placementName"],
	}
	asserts.AssertPlacementSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectRequest = { ["projectName"] = true, ["description"] = true, ["placementTemplate"] = true, nil }

function asserts.AssertUpdateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectRequest to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["placementTemplate"] then asserts.AssertPlacementTemplate(struct["placementTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectRequest[k], "UpdateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project to be updated.</p>
-- * description [Description] <p>An optional user-defined description for the project.</p>
-- * placementTemplate [PlacementTemplate] <p>An object defining the project update. Once a project has been created, you cannot add device template names to the project. However, for a given <code>placementTemplate</code>, you can update the associated <code>callbackOverrides</code> for the device definition using this API.</p>
-- Required key: projectName
-- @return UpdateProjectRequest structure as a key-value pair table
function M.UpdateProjectRequest(args)
	assert(args, "You must provide an argument table when creating UpdateProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectName}"] = args["projectName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["description"] = args["description"],
		["placementTemplate"] = args["placementTemplate"],
	}
	asserts.AssertUpdateProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalFailureException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	assert(struct["code"], "Expected key code to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["code"] then asserts.AssertCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] 
-- * code [Code] 
-- Required key: code
-- Required key: message
-- @return InternalFailureException structure as a key-value pair table
function M.InternalFailureException(args)
	assert(args, "You must provide an argument table when creating InternalFailureException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertInternalFailureException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDeviceFromPlacementResponse = { nil }

function asserts.AssertDisassociateDeviceFromPlacementResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDeviceFromPlacementResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDeviceFromPlacementResponse[k], "DisassociateDeviceFromPlacementResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDeviceFromPlacementResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateDeviceFromPlacementResponse structure as a key-value pair table
function M.DisassociateDeviceFromPlacementResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateDeviceFromPlacementResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateDeviceFromPlacementResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRequestsException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	assert(struct["code"], "Expected key code to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["code"] then asserts.AssertCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] 
-- * code [Code] 
-- Required key: code
-- Required key: message
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provide an argument table when creating TooManyRequestsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertTooManyRequestsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevicesInPlacementResponse = { ["devices"] = true, nil }

function asserts.AssertGetDevicesInPlacementResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevicesInPlacementResponse to be of type 'table'")
	assert(struct["devices"], "Expected key devices to exist in table")
	if struct["devices"] then asserts.AssertDeviceMap(struct["devices"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevicesInPlacementResponse[k], "GetDevicesInPlacementResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevicesInPlacementResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * devices [DeviceMap] <p>An object containing the devices (zero or more) within the placement.</p>
-- Required key: devices
-- @return GetDevicesInPlacementResponse structure as a key-value pair table
function M.GetDevicesInPlacementResponse(args)
	assert(args, "You must provide an argument table when creating GetDevicesInPlacementResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["devices"] = args["devices"],
	}
	asserts.AssertGetDevicesInPlacementResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectResponse = { nil }

function asserts.AssertCreateProjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectResponse[k], "CreateProjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateProjectResponse structure as a key-value pair table
function M.CreateProjectResponse(args)
	assert(args, "You must provide an argument table when creating CreateProjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateProjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePlacementResponse = { nil }

function asserts.AssertUpdatePlacementResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePlacementResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdatePlacementResponse[k], "UpdatePlacementResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePlacementResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdatePlacementResponse structure as a key-value pair table
function M.UpdatePlacementResponse(args)
	assert(args, "You must provide an argument table when creating UpdatePlacementResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdatePlacementResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePlacementResponse = { nil }

function asserts.AssertCreatePlacementResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlacementResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreatePlacementResponse[k], "CreatePlacementResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlacementResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreatePlacementResponse structure as a key-value pair table
function M.CreatePlacementResponse(args)
	assert(args, "You must provide an argument table when creating CreatePlacementResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreatePlacementResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProjectResponse = { nil }

function asserts.AssertDeleteProjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProjectResponse[k], "DeleteProjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProjectResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProjectResponse structure as a key-value pair table
function M.DeleteProjectResponse(args)
	assert(args, "You must provide an argument table when creating DeleteProjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListProjectsResponse = { ["nextToken"] = true, ["projects"] = true, nil }

function asserts.AssertListProjectsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListProjectsResponse to be of type 'table'")
	assert(struct["projects"], "Expected key projects to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["projects"] then asserts.AssertProjectSummaryList(struct["projects"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListProjectsResponse[k], "ListProjectsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListProjectsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token used to retrieve the next set of results - will be effectively empty if there are no further results.</p>
-- * projects [ProjectSummaryList] <p>An object containing the list of projects.</p>
-- Required key: projects
-- @return ListProjectsResponse structure as a key-value pair table
function M.ListProjectsResponse(args)
	assert(args, "You must provide an argument table when creating ListProjectsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["projects"] = args["projects"],
	}
	asserts.AssertListProjectsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProjectResponse = { nil }

function asserts.AssertUpdateProjectResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProjectResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateProjectResponse[k], "UpdateProjectResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProjectResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateProjectResponse structure as a key-value pair table
function M.UpdateProjectResponse(args)
	assert(args, "You must provide an argument table when creating UpdateProjectResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateProjectResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribePlacementResponse = { ["placement"] = true, nil }

function asserts.AssertDescribePlacementResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePlacementResponse to be of type 'table'")
	assert(struct["placement"], "Expected key placement to exist in table")
	if struct["placement"] then asserts.AssertPlacementDescription(struct["placement"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePlacementResponse[k], "DescribePlacementResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePlacementResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * placement [PlacementDescription] <p>An object describing the placement.</p>
-- Required key: placement
-- @return DescribePlacementResponse structure as a key-value pair table
function M.DescribePlacementResponse(args)
	assert(args, "You must provide an argument table when creating DescribePlacementResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["placement"] = args["placement"],
	}
	asserts.AssertDescribePlacementResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceConflictException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertResourceConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceConflictException to be of type 'table'")
	assert(struct["code"], "Expected key code to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["code"] then asserts.AssertCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceConflictException[k], "ResourceConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceConflictException
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] 
-- * code [Code] 
-- Required key: code
-- Required key: message
-- @return ResourceConflictException structure as a key-value pair table
function M.ResourceConflictException(args)
	assert(args, "You must provide an argument table when creating ResourceConflictException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertResourceConflictException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceTemplate = { ["callbackOverrides"] = true, ["deviceType"] = true, nil }

function asserts.AssertDeviceTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceTemplate to be of type 'table'")
	if struct["callbackOverrides"] then asserts.AssertDeviceCallbackOverrideMap(struct["callbackOverrides"]) end
	if struct["deviceType"] then asserts.AssertDeviceType(struct["deviceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceTemplate[k], "DeviceTemplate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceTemplate
-- <p>An object representing a device for a placement template (see <a>PlacementTemplate</a>).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * callbackOverrides [DeviceCallbackOverrideMap] <p>An optional Lambda function to invoke instead of the default Lambda function provided by the placement template.</p>
-- * deviceType [DeviceType] <p>The device type, which currently must be <code>"button"</code>.</p>
-- @return DeviceTemplate structure as a key-value pair table
function M.DeviceTemplate(args)
	assert(args, "You must provide an argument table when creating DeviceTemplate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["callbackOverrides"] = args["callbackOverrides"],
		["deviceType"] = args["deviceType"],
	}
	asserts.AssertDeviceTemplate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProjectSummary = { ["projectName"] = true, ["updatedDate"] = true, ["createdDate"] = true, nil }

function asserts.AssertProjectSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProjectSummary to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	assert(struct["createdDate"], "Expected key createdDate to exist in table")
	assert(struct["updatedDate"], "Expected key updatedDate to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["updatedDate"] then asserts.AssertTime(struct["updatedDate"]) end
	if struct["createdDate"] then asserts.AssertTime(struct["createdDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProjectSummary[k], "ProjectSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProjectSummary
-- <p>An object providing summary information for a particular project for an associated AWS account and region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project being summarized.</p>
-- * updatedDate [Time] <p>The date when the project was last updated, in UNIX epoch time format. If the project was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the same.</p>
-- * createdDate [Time] <p>The date when the project was originally created, in UNIX epoch time format.</p>
-- Required key: projectName
-- Required key: createdDate
-- Required key: updatedDate
-- @return ProjectSummary structure as a key-value pair table
function M.ProjectSummary(args)
	assert(args, "You must provide an argument table when creating ProjectSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["updatedDate"] = args["updatedDate"],
		["createdDate"] = args["createdDate"],
	}
	asserts.AssertProjectSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceNotFoundException = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	assert(struct["code"], "Expected key code to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["code"] then asserts.AssertCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [Message] 
-- * code [Code] 
-- Required key: code
-- Required key: message
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDeviceWithPlacementResponse = { nil }

function asserts.AssertAssociateDeviceWithPlacementResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDeviceWithPlacementResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateDeviceWithPlacementResponse[k], "AssociateDeviceWithPlacementResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDeviceWithPlacementResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateDeviceWithPlacementResponse structure as a key-value pair table
function M.AssociateDeviceWithPlacementResponse(args)
	assert(args, "You must provide an argument table when creating AssociateDeviceWithPlacementResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateDeviceWithPlacementResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlacementTemplate = { ["deviceTemplates"] = true, ["defaultAttributes"] = true, nil }

function asserts.AssertPlacementTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlacementTemplate to be of type 'table'")
	if struct["deviceTemplates"] then asserts.AssertDeviceTemplateMap(struct["deviceTemplates"]) end
	if struct["defaultAttributes"] then asserts.AssertDefaultPlacementAttributeMap(struct["defaultAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlacementTemplate[k], "PlacementTemplate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlacementTemplate
-- <p>An object defining the template for a placement.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * deviceTemplates [DeviceTemplateMap] <p>An object specifying the <a>DeviceTemplate</a> for all placements using this (<a>PlacementTemplate</a>) template.</p>
-- * defaultAttributes [DefaultPlacementAttributeMap] <p>The default attributes (key/value pairs) to be applied to all placements using this template.</p>
-- @return PlacementTemplate structure as a key-value pair table
function M.PlacementTemplate(args)
	assert(args, "You must provide an argument table when creating PlacementTemplate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["deviceTemplates"] = args["deviceTemplates"],
		["defaultAttributes"] = args["defaultAttributes"],
	}
	asserts.AssertPlacementTemplate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPlacementsResponse = { ["nextToken"] = true, ["placements"] = true, nil }

function asserts.AssertListPlacementsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlacementsResponse to be of type 'table'")
	assert(struct["placements"], "Expected key placements to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["placements"] then asserts.AssertPlacementSummaryList(struct["placements"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPlacementsResponse[k], "ListPlacementsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlacementsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token used to retrieve the next set of results - will be effectively empty if there are no further results.</p>
-- * placements [PlacementSummaryList] <p>An object listing the requested placements.</p>
-- Required key: placements
-- @return ListPlacementsResponse structure as a key-value pair table
function M.ListPlacementsResponse(args)
	assert(args, "You must provide an argument table when creating ListPlacementsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["placements"] = args["placements"],
	}
	asserts.AssertListPlacementsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeProjectRequest = { ["projectName"] = true, nil }

function asserts.AssertDescribeProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeProjectRequest to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeProjectRequest[k], "DescribeProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project to be described.</p>
-- Required key: projectName
-- @return DescribeProjectRequest structure as a key-value pair table
function M.DescribeProjectRequest(args)
	assert(args, "You must provide an argument table when creating DescribeProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{projectName}"] = args["projectName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
	}
	asserts.AssertDescribeProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProjectRequest = { ["projectName"] = true, ["description"] = true, ["placementTemplate"] = true, nil }

function asserts.AssertCreateProjectRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProjectRequest to be of type 'table'")
	assert(struct["projectName"], "Expected key projectName to exist in table")
	if struct["projectName"] then asserts.AssertProjectName(struct["projectName"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["placementTemplate"] then asserts.AssertPlacementTemplate(struct["placementTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProjectRequest[k], "CreateProjectRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProjectRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * projectName [ProjectName] <p>The name of the project to create.</p>
-- * description [Description] <p>An optional description for the project.</p>
-- * placementTemplate [PlacementTemplate] <p>The schema defining the placement to be created. A placement template defines placement default attributes and device templates. You cannot add or remove device templates after the project has been created. However, you can update <code>callbackOverrides</code> for the device templates using the <code>UpdateProject</code> API.</p>
-- Required key: projectName
-- @return CreateProjectRequest structure as a key-value pair table
function M.CreateProjectRequest(args)
	assert(args, "You must provide an argument table when creating CreateProjectRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["projectName"] = args["projectName"],
		["description"] = args["description"],
		["placementTemplate"] = args["placementTemplate"],
	}
	asserts.AssertCreateProjectRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertAttributeDefaultValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeDefaultValue to be of type 'string'")
	assert(#str <= 800, "Expected string to be max 800 characters")
end

--  
function M.AttributeDefaultValue(str)
	asserts.AssertAttributeDefaultValue(str)
	return str
end

function asserts.AssertDeviceTemplateName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceTemplateName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceTemplateName(str)
	asserts.AssertDeviceTemplateName(str)
	return str
end

function asserts.AssertDeviceId(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceId to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceId(str)
	asserts.AssertDeviceId(str)
	return str
end

function asserts.AssertPlacementName(str)
	assert(str)
	assert(type(str) == "string", "Expected PlacementName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PlacementName(str)
	asserts.AssertPlacementName(str)
	return str
end

function asserts.AssertDeviceCallbackKey(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceCallbackKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceCallbackKey(str)
	asserts.AssertDeviceCallbackKey(str)
	return str
end

function asserts.AssertDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.DeviceType(str)
	asserts.AssertDeviceType(str)
	return str
end

function asserts.AssertCode(str)
	assert(str)
	assert(type(str) == "string", "Expected Code to be of type 'string'")
end

--  
function M.Code(str)
	asserts.AssertCode(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 800, "Expected string to be max 800 characters")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertProjectName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProjectName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProjectName(str)
	asserts.AssertProjectName(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertDeviceCallbackValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceCallbackValue to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
end

--  
function M.DeviceCallbackValue(str)
	asserts.AssertDeviceCallbackValue(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 250, "Expected integer to be max 250")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertDefaultPlacementAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DefaultPlacementAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeDefaultValue(v)
	end
end

function M.DefaultPlacementAttributeMap(map)
	asserts.AssertDefaultPlacementAttributeMap(map)
	return map
end

function asserts.AssertDeviceMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DeviceMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDeviceTemplateName(k)
		asserts.AssertDeviceId(v)
	end
end

function M.DeviceMap(map)
	asserts.AssertDeviceMap(map)
	return map
end

function asserts.AssertDeviceCallbackOverrideMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DeviceCallbackOverrideMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDeviceCallbackKey(k)
		asserts.AssertDeviceCallbackValue(v)
	end
end

function M.DeviceCallbackOverrideMap(map)
	asserts.AssertDeviceCallbackOverrideMap(map)
	return map
end

function asserts.AssertPlacementAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected PlacementAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.PlacementAttributeMap(map)
	asserts.AssertPlacementAttributeMap(map)
	return map
end

function asserts.AssertDeviceTemplateMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DeviceTemplateMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertDeviceTemplateName(k)
		asserts.AssertDeviceTemplate(v)
	end
end

function M.DeviceTemplateMap(map)
	asserts.AssertDeviceTemplateMap(map)
	return map
end

function asserts.AssertTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Time to be of type 'string'")
end

function M.Time(timestamp)
	asserts.AssertTime(timestamp)
	return timestamp
end

function asserts.AssertProjectSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProjectSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProjectSummary(v)
	end
end

--  
-- List of ProjectSummary objects
function M.ProjectSummaryList(list)
	asserts.AssertProjectSummaryList(list)
	return list
end

function asserts.AssertPlacementSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlacementSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlacementSummary(v)
	end
end

--  
-- List of PlacementSummary objects
function M.PlacementSummaryList(list)
	asserts.AssertPlacementSummaryList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "projects.iot1click.amazonaws.com"
		end
	end
	local ss = { "projects.iot1click" }
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
--- Call DisassociateDeviceFromPlacement asynchronously, invoking a callback when done
-- @param DisassociateDeviceFromPlacementRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateDeviceFromPlacementAsync(DisassociateDeviceFromPlacementRequest, cb)
	assert(DisassociateDeviceFromPlacementRequest, "You must provide a DisassociateDeviceFromPlacementRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DisassociateDeviceFromPlacement",
	}
	for header,value in pairs(DisassociateDeviceFromPlacementRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", DisassociateDeviceFromPlacementRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateDeviceFromPlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateDeviceFromPlacementRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateDeviceFromPlacementSync(DisassociateDeviceFromPlacementRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateDeviceFromPlacementAsync(DisassociateDeviceFromPlacementRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePlacement asynchronously, invoking a callback when done
-- @param UpdatePlacementRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePlacementAsync(UpdatePlacementRequest, cb)
	assert(UpdatePlacementRequest, "You must provide a UpdatePlacementRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdatePlacement",
	}
	for header,value in pairs(UpdatePlacementRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}/placements/{placementName}", UpdatePlacementRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePlacementRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePlacementSync(UpdatePlacementRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePlacementAsync(UpdatePlacementRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePlacement asynchronously, invoking a callback when done
-- @param DeletePlacementRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePlacementAsync(DeletePlacementRequest, cb)
	assert(DeletePlacementRequest, "You must provide a DeletePlacementRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePlacement",
	}
	for header,value in pairs(DeletePlacementRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}/placements/{placementName}", DeletePlacementRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePlacementRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePlacementSync(DeletePlacementRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePlacementAsync(DeletePlacementRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPlacements asynchronously, invoking a callback when done
-- @param ListPlacementsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPlacementsAsync(ListPlacementsRequest, cb)
	assert(ListPlacementsRequest, "You must provide a ListPlacementsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPlacements",
	}
	for header,value in pairs(ListPlacementsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}/placements", ListPlacementsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPlacements synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPlacementsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPlacementsSync(ListPlacementsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPlacementsAsync(ListPlacementsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProject asynchronously, invoking a callback when done
-- @param CreateProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProjectAsync(CreateProjectRequest, cb)
	assert(CreateProjectRequest, "You must provide a CreateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateProject",
	}
	for header,value in pairs(CreateProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/projects", CreateProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProjectSync(CreateProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProjectAsync(CreateProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListProjects asynchronously, invoking a callback when done
-- @param ListProjectsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListProjectsAsync(ListProjectsRequest, cb)
	assert(ListProjectsRequest, "You must provide a ListProjectsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListProjects",
	}
	for header,value in pairs(ListProjectsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/projects", ListProjectsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListProjects synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListProjectsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListProjectsSync(ListProjectsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListProjectsAsync(ListProjectsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProject asynchronously, invoking a callback when done
-- @param UpdateProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProjectAsync(UpdateProjectRequest, cb)
	assert(UpdateProjectRequest, "You must provide a UpdateProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateProject",
	}
	for header,value in pairs(UpdateProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}", UpdateProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateProjectSync(UpdateProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProjectAsync(UpdateProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevicesInPlacement asynchronously, invoking a callback when done
-- @param GetDevicesInPlacementRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDevicesInPlacementAsync(GetDevicesInPlacementRequest, cb)
	assert(GetDevicesInPlacementRequest, "You must provide a GetDevicesInPlacementRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDevicesInPlacement",
	}
	for header,value in pairs(GetDevicesInPlacementRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}/placements/{placementName}/devices", GetDevicesInPlacementRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDevicesInPlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDevicesInPlacementRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDevicesInPlacementSync(GetDevicesInPlacementRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDevicesInPlacementAsync(GetDevicesInPlacementRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePlacement asynchronously, invoking a callback when done
-- @param DescribePlacementRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribePlacementAsync(DescribePlacementRequest, cb)
	assert(DescribePlacementRequest, "You must provide a DescribePlacementRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribePlacement",
	}
	for header,value in pairs(DescribePlacementRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}/placements/{placementName}", DescribePlacementRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePlacementRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribePlacementSync(DescribePlacementRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePlacementAsync(DescribePlacementRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeProject asynchronously, invoking a callback when done
-- @param DescribeProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeProjectAsync(DescribeProjectRequest, cb)
	assert(DescribeProjectRequest, "You must provide a DescribeProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeProject",
	}
	for header,value in pairs(DescribeProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}", DescribeProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeProjectSync(DescribeProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeProjectAsync(DescribeProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateDeviceWithPlacement asynchronously, invoking a callback when done
-- @param AssociateDeviceWithPlacementRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateDeviceWithPlacementAsync(AssociateDeviceWithPlacementRequest, cb)
	assert(AssociateDeviceWithPlacementRequest, "You must provide a AssociateDeviceWithPlacementRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AssociateDeviceWithPlacement",
	}
	for header,value in pairs(AssociateDeviceWithPlacementRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}/placements/{placementName}/devices/{deviceTemplateName}", AssociateDeviceWithPlacementRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateDeviceWithPlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateDeviceWithPlacementRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateDeviceWithPlacementSync(AssociateDeviceWithPlacementRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateDeviceWithPlacementAsync(AssociateDeviceWithPlacementRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePlacement asynchronously, invoking a callback when done
-- @param CreatePlacementRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePlacementAsync(CreatePlacementRequest, cb)
	assert(CreatePlacementRequest, "You must provide a CreatePlacementRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePlacement",
	}
	for header,value in pairs(CreatePlacementRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}/placements", CreatePlacementRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePlacement synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePlacementRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePlacementSync(CreatePlacementRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePlacementAsync(CreatePlacementRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProject asynchronously, invoking a callback when done
-- @param DeleteProjectRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProjectAsync(DeleteProjectRequest, cb)
	assert(DeleteProjectRequest, "You must provide a DeleteProjectRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteProject",
	}
	for header,value in pairs(DeleteProjectRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/projects/{projectName}", DeleteProjectRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProject synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProjectRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProjectSync(DeleteProjectRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProjectAsync(DeleteProjectRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
