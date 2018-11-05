--- GENERATED CODE - DO NOT MODIFY
-- Alexa For Business (alexaforbusiness-2017-11-09)

local M = {}

M.metadata = {
	api_version = "2017-11-09",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "a4b",
	service_abbreviation = "",
	service_full_name = "Alexa For Business",
	signature_version = "v4",
	target_prefix = "AlexaForBusiness",
	timestamp_format = "",
	global_endpoint = "",
	uid = "alexaforbusiness-2017-11-09",
}

local keys = {}
local asserts = {}

keys.CreateRoomRequest = { ["Description"] = true, ["Tags"] = true, ["ProviderCalendarId"] = true, ["ProfileArn"] = true, ["RoomName"] = true, ["ClientRequestToken"] = true, nil }

function asserts.AssertCreateRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRoomRequest to be of type 'table'")
	assert(struct["RoomName"], "Expected key RoomName to exist in table")
	if struct["Description"] then asserts.AssertRoomDescription(struct["Description"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["ProviderCalendarId"] then asserts.AssertProviderCalendarId(struct["ProviderCalendarId"]) end
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	if struct["RoomName"] then asserts.AssertRoomName(struct["RoomName"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRoomRequest[k], "CreateRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [RoomDescription] <p>The description for the room.</p>
-- * Tags [TagList] <p>The tags for the room.</p>
-- * ProviderCalendarId [ProviderCalendarId] <p>The calendar ARN for the room.</p>
-- * ProfileArn [Arn] <p>The profile ARN for the room.</p>
-- * RoomName [RoomName] <p>The name for the room.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique, user-specified identifier for this request that ensures idempotency. </p>
-- Required key: RoomName
-- @return CreateRoomRequest structure as a key-value pair table
function M.CreateRoomRequest(args)
	assert(args, "You must provide an argument table when creating CreateRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
		["ProviderCalendarId"] = args["ProviderCalendarId"],
		["ProfileArn"] = args["ProfileArn"],
		["RoomName"] = args["RoomName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertCreateRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceResponse = { ["Device"] = true, nil }

function asserts.AssertGetDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceResponse to be of type 'table'")
	if struct["Device"] then asserts.AssertDevice(struct["Device"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceResponse[k], "GetDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Device [Device] <p>The details of the device requested. Required.</p>
-- @return GetDeviceResponse structure as a key-value pair table
function M.GetDeviceResponse(args)
	assert(args, "You must provide an argument table when creating GetDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Device"] = args["Device"],
	}
	asserts.AssertGetDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSmartHomeAppliancesResponse = { ["NextToken"] = true, ["SmartHomeAppliances"] = true, nil }

function asserts.AssertListSmartHomeAppliancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSmartHomeAppliancesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SmartHomeAppliances"] then asserts.AssertSmartHomeApplianceList(struct["SmartHomeAppliances"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSmartHomeAppliancesResponse[k], "ListSmartHomeAppliancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSmartHomeAppliancesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The tokens used for pagination.</p>
-- * SmartHomeAppliances [SmartHomeApplianceList] <p>The smart home appliances.</p>
-- @return ListSmartHomeAppliancesResponse structure as a key-value pair table
function M.ListSmartHomeAppliancesResponse(args)
	assert(args, "You must provide an argument table when creating ListSmartHomeAppliancesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SmartHomeAppliances"] = args["SmartHomeAppliances"],
	}
	asserts.AssertListSmartHomeAppliancesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateContactWithAddressBookRequest = { ["AddressBookArn"] = true, ["ContactArn"] = true, nil }

function asserts.AssertAssociateContactWithAddressBookRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateContactWithAddressBookRequest to be of type 'table'")
	assert(struct["ContactArn"], "Expected key ContactArn to exist in table")
	assert(struct["AddressBookArn"], "Expected key AddressBookArn to exist in table")
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	if struct["ContactArn"] then asserts.AssertArn(struct["ContactArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateContactWithAddressBookRequest[k], "AssociateContactWithAddressBookRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateContactWithAddressBookRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBookArn [Arn] <p>The ARN of the address book with which to associate the contact.</p>
-- * ContactArn [Arn] <p>The ARN of the contact to associate with an address book.</p>
-- Required key: ContactArn
-- Required key: AddressBookArn
-- @return AssociateContactWithAddressBookRequest structure as a key-value pair table
function M.AssociateContactWithAddressBookRequest(args)
	assert(args, "You must provide an argument table when creating AssociateContactWithAddressBookRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBookArn"] = args["AddressBookArn"],
		["ContactArn"] = args["ContactArn"],
	}
	asserts.AssertAssociateContactWithAddressBookRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProfileData = { ["TemperatureUnit"] = true, ["Address"] = true, ["DistanceUnit"] = true, ["ProfileArn"] = true, ["Timezone"] = true, ["WakeWord"] = true, ["ProfileName"] = true, ["IsDefault"] = true, nil }

function asserts.AssertProfileData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProfileData to be of type 'table'")
	if struct["TemperatureUnit"] then asserts.AssertTemperatureUnit(struct["TemperatureUnit"]) end
	if struct["Address"] then asserts.AssertAddress(struct["Address"]) end
	if struct["DistanceUnit"] then asserts.AssertDistanceUnit(struct["DistanceUnit"]) end
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	if struct["Timezone"] then asserts.AssertTimezone(struct["Timezone"]) end
	if struct["WakeWord"] then asserts.AssertWakeWord(struct["WakeWord"]) end
	if struct["ProfileName"] then asserts.AssertProfileName(struct["ProfileName"]) end
	if struct["IsDefault"] then asserts.AssertBoolean(struct["IsDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProfileData[k], "ProfileData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProfileData
-- <p>The data of a room profile.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemperatureUnit [TemperatureUnit] <p>The temperature unit of a room profile.</p>
-- * Address [Address] <p>The address of a room profile.</p>
-- * DistanceUnit [DistanceUnit] <p>The distance unit of a room profile.</p>
-- * ProfileArn [Arn] <p>The ARN of a room profile.</p>
-- * Timezone [Timezone] <p>The timezone of a room profile.</p>
-- * WakeWord [WakeWord] <p>The wake word of a room profile.</p>
-- * ProfileName [ProfileName] <p>The name of a room profile.</p>
-- * IsDefault [Boolean] <p>Retrieves if the profile data is default or not.</p>
-- @return ProfileData structure as a key-value pair table
function M.ProfileData(args)
	assert(args, "You must provide an argument table when creating ProfileData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemperatureUnit"] = args["TemperatureUnit"],
		["Address"] = args["Address"],
		["DistanceUnit"] = args["DistanceUnit"],
		["ProfileArn"] = args["ProfileArn"],
		["Timezone"] = args["Timezone"],
		["WakeWord"] = args["WakeWord"],
		["ProfileName"] = args["ProfileName"],
		["IsDefault"] = args["IsDefault"],
	}
	asserts.AssertProfileData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Arn"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>. </p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
-- * Arn [Arn] <p>The ARN of the specified resource for which to list tags.</p>
-- Required key: Arn
-- @return ListTagsRequest structure as a key-value pair table
function M.ListTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRoomSkillParameterResponse = { nil }

function asserts.AssertPutRoomSkillParameterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRoomSkillParameterResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutRoomSkillParameterResponse[k], "PutRoomSkillParameterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRoomSkillParameterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutRoomSkillParameterResponse structure as a key-value pair table
function M.PutRoomSkillParameterResponse(args)
	assert(args, "You must provide an argument table when creating PutRoomSkillParameterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutRoomSkillParameterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserRequest = { ["EnrollmentId"] = true, ["UserArn"] = true, nil }

function asserts.AssertDeleteUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserRequest to be of type 'table'")
	assert(struct["EnrollmentId"], "Expected key EnrollmentId to exist in table")
	if struct["EnrollmentId"] then asserts.AssertEnrollmentId(struct["EnrollmentId"]) end
	if struct["UserArn"] then asserts.AssertArn(struct["UserArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserRequest[k], "DeleteUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnrollmentId [EnrollmentId] <p>The ARN of the user's enrollment in the organization. Required.</p>
-- * UserArn [Arn] <p>The ARN of the user to delete in the organization. Required.</p>
-- Required key: EnrollmentId
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
		["EnrollmentId"] = args["EnrollmentId"],
		["UserArn"] = args["UserArn"],
	}
	asserts.AssertDeleteUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateContactRequest = { ["PhoneNumber"] = true, ["LastName"] = true, ["DisplayName"] = true, ["ClientRequestToken"] = true, ["FirstName"] = true, nil }

function asserts.AssertCreateContactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateContactRequest to be of type 'table'")
	assert(struct["FirstName"], "Expected key FirstName to exist in table")
	assert(struct["PhoneNumber"], "Expected key PhoneNumber to exist in table")
	if struct["PhoneNumber"] then asserts.AssertE164PhoneNumber(struct["PhoneNumber"]) end
	if struct["LastName"] then asserts.AssertContactName(struct["LastName"]) end
	if struct["DisplayName"] then asserts.AssertContactName(struct["DisplayName"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["FirstName"] then asserts.AssertContactName(struct["FirstName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateContactRequest[k], "CreateContactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateContactRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PhoneNumber [E164PhoneNumber] <p>The phone number of the contact in E.164 format.</p>
-- * LastName [ContactName] <p>The last name of the contact that is used to call the contact on the device.</p>
-- * DisplayName [ContactName] <p>The name of the contact to display on the console.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique, user-specified identifier for this request that ensures idempotency.</p>
-- * FirstName [ContactName] <p>The first name of the contact that is used to call the contact on the device.</p>
-- Required key: FirstName
-- Required key: PhoneNumber
-- @return CreateContactRequest structure as a key-value pair table
function M.CreateContactRequest(args)
	assert(args, "You must provide an argument table when creating CreateContactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PhoneNumber"] = args["PhoneNumber"],
		["LastName"] = args["LastName"],
		["DisplayName"] = args["DisplayName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["FirstName"] = args["FirstName"],
	}
	asserts.AssertCreateContactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeviceEventsRequest = { ["EventType"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DeviceArn"] = true, nil }

function asserts.AssertListDeviceEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceEventsRequest to be of type 'table'")
	assert(struct["DeviceArn"], "Expected key DeviceArn to exist in table")
	if struct["EventType"] then asserts.AssertDeviceEventType(struct["EventType"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceEventsRequest[k], "ListDeviceEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventType [DeviceEventType] <p>The event type to filter device events. If EventType isn't specified, this returns a list of all device events in reverse chronological order. If EventType is specified, this returns a list of device events for that EventType in reverse chronological order. </p>
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults. When the end of results is reached, the response has a value of null.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. The default value is 50. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved. </p>
-- * DeviceArn [Arn] <p>The ARN of a device.</p>
-- Required key: DeviceArn
-- @return ListDeviceEventsRequest structure as a key-value pair table
function M.ListDeviceEventsRequest(args)
	assert(args, "You must provide an argument table when creating ListDeviceEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventType"] = args["EventType"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DeviceArn"] = args["DeviceArn"],
	}
	asserts.AssertListDeviceEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAddressBookResponse = { nil }

function asserts.AssertDeleteAddressBookResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAddressBookResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteAddressBookResponse[k], "DeleteAddressBookResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAddressBookResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteAddressBookResponse structure as a key-value pair table
function M.DeleteAddressBookResponse(args)
	assert(args, "You must provide an argument table when creating DeleteAddressBookResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteAddressBookResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProfileRequest = { ["ProfileArn"] = true, nil }

function asserts.AssertDeleteProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProfileRequest to be of type 'table'")
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteProfileRequest[k], "DeleteProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProfileArn [Arn] <p>The ARN of the room profile to delete. Required.</p>
-- @return DeleteProfileRequest structure as a key-value pair table
function M.DeleteProfileRequest(args)
	assert(args, "You must provide an argument table when creating DeleteProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProfileArn"] = args["ProfileArn"],
	}
	asserts.AssertDeleteProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteProfileResponse = { nil }

function asserts.AssertDeleteProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteProfileResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteProfileResponse[k], "DeleteProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteProfileResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteProfileResponse structure as a key-value pair table
function M.DeleteProfileResponse(args)
	assert(args, "You must provide an argument table when creating DeleteProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRoomResponse = { nil }

function asserts.AssertDeleteRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRoomResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRoomResponse[k], "DeleteRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteRoomResponse structure as a key-value pair table
function M.DeleteRoomResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SkillGroupData = { ["SkillGroupName"] = true, ["SkillGroupArn"] = true, ["Description"] = true, nil }

function asserts.AssertSkillGroupData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SkillGroupData to be of type 'table'")
	if struct["SkillGroupName"] then asserts.AssertSkillGroupName(struct["SkillGroupName"]) end
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	if struct["Description"] then asserts.AssertSkillGroupDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.SkillGroupData[k], "SkillGroupData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SkillGroupData
-- <p>The attributes of a skill group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupName [SkillGroupName] <p>The skill group name of a skill group.</p>
-- * SkillGroupArn [Arn] <p>The skill group ARN of a skill group.</p>
-- * Description [SkillGroupDescription] <p>The description of a skill group.</p>
-- @return SkillGroupData structure as a key-value pair table
function M.SkillGroupData(args)
	assert(args, "You must provide an argument table when creating SkillGroupData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupName"] = args["SkillGroupName"],
		["SkillGroupArn"] = args["SkillGroupArn"],
		["Description"] = args["Description"],
	}
	asserts.AssertSkillGroupData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateSkillGroupFromRoomRequest = { ["SkillGroupArn"] = true, ["RoomArn"] = true, nil }

function asserts.AssertDisassociateSkillGroupFromRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateSkillGroupFromRoomRequest to be of type 'table'")
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateSkillGroupFromRoomRequest[k], "DisassociateSkillGroupFromRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateSkillGroupFromRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupArn [Arn] <p>The ARN of the skill group to disassociate from a room. Required.</p>
-- * RoomArn [Arn] <p>The ARN of the room from which the skill group is to be disassociated. Required.</p>
-- @return DisassociateSkillGroupFromRoomRequest structure as a key-value pair table
function M.DisassociateSkillGroupFromRoomRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateSkillGroupFromRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupArn"] = args["SkillGroupArn"],
		["RoomArn"] = args["RoomArn"],
	}
	asserts.AssertDisassociateSkillGroupFromRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendInvitationResponse = { nil }

function asserts.AssertSendInvitationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendInvitationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SendInvitationResponse[k], "SendInvitationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendInvitationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SendInvitationResponse structure as a key-value pair table
function M.SendInvitationResponse(args)
	assert(args, "You must provide an argument table when creating SendInvitationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSendInvitationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeviceResponse = { nil }

function asserts.AssertUpdateDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceResponse[k], "UpdateDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDeviceResponse structure as a key-value pair table
function M.UpdateDeviceResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConferenceProviderRequest = { ["PSTNDialIn"] = true, ["MeetingSetting"] = true, ["ConferenceProviderType"] = true, ["IPDialIn"] = true, ["ConferenceProviderArn"] = true, nil }

function asserts.AssertUpdateConferenceProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConferenceProviderRequest to be of type 'table'")
	assert(struct["ConferenceProviderArn"], "Expected key ConferenceProviderArn to exist in table")
	assert(struct["ConferenceProviderType"], "Expected key ConferenceProviderType to exist in table")
	assert(struct["MeetingSetting"], "Expected key MeetingSetting to exist in table")
	if struct["PSTNDialIn"] then asserts.AssertPSTNDialIn(struct["PSTNDialIn"]) end
	if struct["MeetingSetting"] then asserts.AssertMeetingSetting(struct["MeetingSetting"]) end
	if struct["ConferenceProviderType"] then asserts.AssertConferenceProviderType(struct["ConferenceProviderType"]) end
	if struct["IPDialIn"] then asserts.AssertIPDialIn(struct["IPDialIn"]) end
	if struct["ConferenceProviderArn"] then asserts.AssertArn(struct["ConferenceProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConferenceProviderRequest[k], "UpdateConferenceProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConferenceProviderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PSTNDialIn [PSTNDialIn] <p>The information for PSTN conferencing.</p>
-- * MeetingSetting [MeetingSetting] <p>The meeting settings for the conference provider.</p>
-- * ConferenceProviderType [ConferenceProviderType] <p>The type of the conference provider.</p>
-- * IPDialIn [IPDialIn] <p>The IP endpoint and protocol for calling.</p>
-- * ConferenceProviderArn [Arn] <p>The ARN of the conference provider.</p>
-- Required key: ConferenceProviderArn
-- Required key: ConferenceProviderType
-- Required key: MeetingSetting
-- @return UpdateConferenceProviderRequest structure as a key-value pair table
function M.UpdateConferenceProviderRequest(args)
	assert(args, "You must provide an argument table when creating UpdateConferenceProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PSTNDialIn"] = args["PSTNDialIn"],
		["MeetingSetting"] = args["MeetingSetting"],
		["ConferenceProviderType"] = args["ConferenceProviderType"],
		["IPDialIn"] = args["IPDialIn"],
		["ConferenceProviderArn"] = args["ConferenceProviderArn"],
	}
	asserts.AssertUpdateConferenceProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConferencePreferenceRequest = { nil }

function asserts.AssertGetConferencePreferenceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConferencePreferenceRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetConferencePreferenceRequest[k], "GetConferencePreferenceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConferencePreferenceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetConferencePreferenceRequest structure as a key-value pair table
function M.GetConferencePreferenceRequest(args)
	assert(args, "You must provide an argument table when creating GetConferencePreferenceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetConferencePreferenceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSkillGroupResponse = { nil }

function asserts.AssertDeleteSkillGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSkillGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSkillGroupResponse[k], "DeleteSkillGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSkillGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteSkillGroupResponse structure as a key-value pair table
function M.DeleteSkillGroupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSkillGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteSkillGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConferenceProviderResponse = { nil }

function asserts.AssertUpdateConferenceProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConferenceProviderResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateConferenceProviderResponse[k], "UpdateConferenceProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConferenceProviderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateConferenceProviderResponse structure as a key-value pair table
function M.UpdateConferenceProviderResponse(args)
	assert(args, "You must provide an argument table when creating UpdateConferenceProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateConferenceProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForgetSmartHomeAppliancesResponse = { nil }

function asserts.AssertForgetSmartHomeAppliancesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgetSmartHomeAppliancesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ForgetSmartHomeAppliancesResponse[k], "ForgetSmartHomeAppliancesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForgetSmartHomeAppliancesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ForgetSmartHomeAppliancesResponse structure as a key-value pair table
function M.ForgetSmartHomeAppliancesResponse(args)
	assert(args, "You must provide an argument table when creating ForgetSmartHomeAppliancesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertForgetSmartHomeAppliancesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetContactRequest = { ["ContactArn"] = true, nil }

function asserts.AssertGetContactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContactRequest to be of type 'table'")
	assert(struct["ContactArn"], "Expected key ContactArn to exist in table")
	if struct["ContactArn"] then asserts.AssertArn(struct["ContactArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContactRequest[k], "GetContactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContactRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContactArn [Arn] <p>The ARN of the contact for which to request details.</p>
-- Required key: ContactArn
-- @return GetContactRequest structure as a key-value pair table
function M.GetContactRequest(args)
	assert(args, "You must provide an argument table when creating GetContactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContactArn"] = args["ContactArn"],
	}
	asserts.AssertGetContactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDeviceRequest = { ["DeviceName"] = true, ["DeviceArn"] = true, nil }

function asserts.AssertUpdateDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDeviceRequest to be of type 'table'")
	if struct["DeviceName"] then asserts.AssertDeviceName(struct["DeviceName"]) end
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDeviceRequest[k], "UpdateDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDeviceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceName [DeviceName] <p>The updated device name. Required.</p>
-- * DeviceArn [Arn] <p>The ARN of the device to update. Required.</p>
-- @return UpdateDeviceRequest structure as a key-value pair table
function M.UpdateDeviceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceName"] = args["DeviceName"],
		["DeviceArn"] = args["DeviceArn"],
	}
	asserts.AssertUpdateDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAddressBookResponse = { ["AddressBook"] = true, nil }

function asserts.AssertGetAddressBookResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAddressBookResponse to be of type 'table'")
	if struct["AddressBook"] then asserts.AssertAddressBook(struct["AddressBook"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAddressBookResponse[k], "GetAddressBookResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAddressBookResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBook [AddressBook] <p>The details of the requested address book.</p>
-- @return GetAddressBookResponse structure as a key-value pair table
function M.GetAddressBookResponse(args)
	assert(args, "You must provide an argument table when creating GetAddressBookResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBook"] = args["AddressBook"],
	}
	asserts.AssertGetAddressBookResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResolveRoomRequest = { ["UserId"] = true, ["SkillId"] = true, nil }

function asserts.AssertResolveRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveRoomRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	if struct["UserId"] then asserts.AssertUserId(struct["UserId"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResolveRoomRequest[k], "ResolveRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [UserId] <p>The ARN of the user. Required.</p>
-- * SkillId [SkillId] <p>The ARN of the skill that was requested. Required.</p>
-- Required key: UserId
-- Required key: SkillId
-- @return ResolveRoomRequest structure as a key-value pair table
function M.ResolveRoomRequest(args)
	assert(args, "You must provide an argument table when creating ResolveRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserId"] = args["UserId"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertResolveRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApproveSkillResponse = { nil }

function asserts.AssertApproveSkillResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApproveSkillResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ApproveSkillResponse[k], "ApproveSkillResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApproveSkillResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ApproveSkillResponse structure as a key-value pair table
function M.ApproveSkillResponse(args)
	assert(args, "You must provide an argument table when creating ApproveSkillResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertApproveSkillResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRoomSkillParameterRequest = { ["RoomArn"] = true, ["ParameterKey"] = true, ["SkillId"] = true, nil }

function asserts.AssertDeleteRoomSkillParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRoomSkillParameterRequest to be of type 'table'")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	assert(struct["ParameterKey"], "Expected key ParameterKey to exist in table")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["ParameterKey"] then asserts.AssertRoomSkillParameterKey(struct["ParameterKey"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRoomSkillParameterRequest[k], "DeleteRoomSkillParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRoomSkillParameterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The ARN of the room from which to remove the room skill parameter details.</p>
-- * ParameterKey [RoomSkillParameterKey] <p>The room skill parameter key for which to remove details.</p>
-- * SkillId [SkillId] <p>The ID of the skill from which to remove the room skill parameter details.</p>
-- Required key: SkillId
-- Required key: ParameterKey
-- @return DeleteRoomSkillParameterRequest structure as a key-value pair table
function M.DeleteRoomSkillParameterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRoomSkillParameterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
		["ParameterKey"] = args["ParameterKey"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertDeleteRoomSkillParameterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeInvitationRequest = { ["EnrollmentId"] = true, ["UserArn"] = true, nil }

function asserts.AssertRevokeInvitationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeInvitationRequest to be of type 'table'")
	if struct["EnrollmentId"] then asserts.AssertEnrollmentId(struct["EnrollmentId"]) end
	if struct["UserArn"] then asserts.AssertArn(struct["UserArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RevokeInvitationRequest[k], "RevokeInvitationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeInvitationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EnrollmentId [EnrollmentId] <p>The ARN of the enrollment invitation to revoke. Required.</p>
-- * UserArn [Arn] <p>The ARN of the user for whom to revoke an enrollment invitation. Required.</p>
-- @return RevokeInvitationRequest structure as a key-value pair table
function M.RevokeInvitationRequest(args)
	assert(args, "You must provide an argument table when creating RevokeInvitationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EnrollmentId"] = args["EnrollmentId"],
		["UserArn"] = args["UserArn"],
	}
	asserts.AssertRevokeInvitationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDeviceFromRoomResponse = { nil }

function asserts.AssertDisassociateDeviceFromRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDeviceFromRoomResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDeviceFromRoomResponse[k], "DisassociateDeviceFromRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDeviceFromRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateDeviceFromRoomResponse structure as a key-value pair table
function M.DisassociateDeviceFromRoomResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateDeviceFromRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateDeviceFromRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchAddressBooksResponse = { ["TotalCount"] = true, ["AddressBooks"] = true, ["NextToken"] = true, nil }

function asserts.AssertSearchAddressBooksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchAddressBooksResponse to be of type 'table'")
	if struct["TotalCount"] then asserts.AssertTotalCount(struct["TotalCount"]) end
	if struct["AddressBooks"] then asserts.AssertAddressBookDataList(struct["AddressBooks"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchAddressBooksResponse[k], "SearchAddressBooksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchAddressBooksResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalCount [TotalCount] <p>The total number of address books returned.</p>
-- * AddressBooks [AddressBookDataList] <p>The address books that meet the specified set of filter criteria, in sort order.</p>
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- @return SearchAddressBooksResponse structure as a key-value pair table
function M.SearchAddressBooksResponse(args)
	assert(args, "You must provide an argument table when creating SearchAddressBooksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalCount"] = args["TotalCount"],
		["AddressBooks"] = args["AddressBooks"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertSearchAddressBooksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSkillsStoreSkillsByCategoryResponse = { ["SkillsStoreSkills"] = true, ["NextToken"] = true, nil }

function asserts.AssertListSkillsStoreSkillsByCategoryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSkillsStoreSkillsByCategoryResponse to be of type 'table'")
	if struct["SkillsStoreSkills"] then asserts.AssertSkillsStoreSkillList(struct["SkillsStoreSkills"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSkillsStoreSkillsByCategoryResponse[k], "ListSkillsStoreSkillsByCategoryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSkillsStoreSkillsByCategoryResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillsStoreSkills [SkillsStoreSkillList] <p>The skill store skills.</p>
-- * NextToken [NextToken] <p>The tokens used for pagination.</p>
-- @return ListSkillsStoreSkillsByCategoryResponse structure as a key-value pair table
function M.ListSkillsStoreSkillsByCategoryResponse(args)
	assert(args, "You must provide an argument table when creating ListSkillsStoreSkillsByCategoryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillsStoreSkills"] = args["SkillsStoreSkills"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListSkillsStoreSkillsByCategoryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartDeviceSyncResponse = { nil }

function asserts.AssertStartDeviceSyncResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDeviceSyncResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartDeviceSyncResponse[k], "StartDeviceSyncResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDeviceSyncResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartDeviceSyncResponse structure as a key-value pair table
function M.StartDeviceSyncResponse(args)
	assert(args, "You must provide an argument table when creating StartDeviceSyncResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartDeviceSyncResponse(all_args)
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
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A key-value pair that can be associated with a resource. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of a tag. Tag values are case-sensitive and can be null.</p>
-- * Key [TagKey] <p>The key of a tag. Tag keys are case-sensitive. </p>
-- Required key: Key
-- Required key: Value
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

keys.GetContactResponse = { ["Contact"] = true, nil }

function asserts.AssertGetContactResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetContactResponse to be of type 'table'")
	if struct["Contact"] then asserts.AssertContact(struct["Contact"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetContactResponse[k], "GetContactResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetContactResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Contact [Contact] <p>The details of the requested contact.</p>
-- @return GetContactResponse structure as a key-value pair table
function M.GetContactResponse(args)
	assert(args, "You must provide an argument table when creating GetContactResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Contact"] = args["Contact"],
	}
	asserts.AssertGetContactResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSkillGroupResponse = { nil }

function asserts.AssertUpdateSkillGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSkillGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateSkillGroupResponse[k], "UpdateSkillGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSkillGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateSkillGroupResponse structure as a key-value pair table
function M.UpdateSkillGroupResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSkillGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateSkillGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchDevicesResponse = { ["TotalCount"] = true, ["NextToken"] = true, ["Devices"] = true, nil }

function asserts.AssertSearchDevicesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchDevicesResponse to be of type 'table'")
	if struct["TotalCount"] then asserts.AssertTotalCount(struct["TotalCount"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Devices"] then asserts.AssertDeviceDataList(struct["Devices"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchDevicesResponse[k], "SearchDevicesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchDevicesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalCount [TotalCount] <p>The total number of devices returned.</p>
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- * Devices [DeviceDataList] <p>The devices that meet the specified set of filter criteria, in sort order.</p>
-- @return SearchDevicesResponse structure as a key-value pair table
function M.SearchDevicesResponse(args)
	assert(args, "You must provide an argument table when creating SearchDevicesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalCount"] = args["TotalCount"],
		["NextToken"] = args["NextToken"],
		["Devices"] = args["Devices"],
	}
	asserts.AssertSearchDevicesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceData = { ["DeviceName"] = true, ["MacAddress"] = true, ["RoomName"] = true, ["DeviceSerialNumber"] = true, ["DeviceArn"] = true, ["DeviceStatus"] = true, ["SoftwareVersion"] = true, ["DeviceType"] = true, ["RoomArn"] = true, ["DeviceStatusInfo"] = true, nil }

function asserts.AssertDeviceData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceData to be of type 'table'")
	if struct["DeviceName"] then asserts.AssertDeviceName(struct["DeviceName"]) end
	if struct["MacAddress"] then asserts.AssertMacAddress(struct["MacAddress"]) end
	if struct["RoomName"] then asserts.AssertRoomName(struct["RoomName"]) end
	if struct["DeviceSerialNumber"] then asserts.AssertDeviceSerialNumber(struct["DeviceSerialNumber"]) end
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	if struct["DeviceStatus"] then asserts.AssertDeviceStatus(struct["DeviceStatus"]) end
	if struct["SoftwareVersion"] then asserts.AssertSoftwareVersion(struct["SoftwareVersion"]) end
	if struct["DeviceType"] then asserts.AssertDeviceType(struct["DeviceType"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["DeviceStatusInfo"] then asserts.AssertDeviceStatusInfo(struct["DeviceStatusInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceData[k], "DeviceData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceData
-- <p>Device attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceName [DeviceName] <p>The name of a device.</p>
-- * MacAddress [MacAddress] <p>The MAC address of a device.</p>
-- * RoomName [RoomName] <p>The name of the room associated with a device.</p>
-- * DeviceSerialNumber [DeviceSerialNumber] <p>The serial number of a device.</p>
-- * DeviceArn [Arn] <p>The ARN of a device.</p>
-- * DeviceStatus [DeviceStatus] <p>The status of a device.</p>
-- * SoftwareVersion [SoftwareVersion] <p>The software version of a device.</p>
-- * DeviceType [DeviceType] <p>The type of a device.</p>
-- * RoomArn [Arn] <p>The room ARN associated with a device.</p>
-- * DeviceStatusInfo [DeviceStatusInfo] <p>Detailed information about a device's status.</p>
-- @return DeviceData structure as a key-value pair table
function M.DeviceData(args)
	assert(args, "You must provide an argument table when creating DeviceData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceName"] = args["DeviceName"],
		["MacAddress"] = args["MacAddress"],
		["RoomName"] = args["RoomName"],
		["DeviceSerialNumber"] = args["DeviceSerialNumber"],
		["DeviceArn"] = args["DeviceArn"],
		["DeviceStatus"] = args["DeviceStatus"],
		["SoftwareVersion"] = args["SoftwareVersion"],
		["DeviceType"] = args["DeviceType"],
		["RoomArn"] = args["RoomArn"],
		["DeviceStatusInfo"] = args["DeviceStatusInfo"],
	}
	asserts.AssertDeviceData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRoomSkillParameterResponse = { ["RoomSkillParameter"] = true, nil }

function asserts.AssertGetRoomSkillParameterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRoomSkillParameterResponse to be of type 'table'")
	if struct["RoomSkillParameter"] then asserts.AssertRoomSkillParameter(struct["RoomSkillParameter"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRoomSkillParameterResponse[k], "GetRoomSkillParameterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRoomSkillParameterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomSkillParameter [RoomSkillParameter] <p>The details of the room skill parameter requested. Required.</p>
-- @return GetRoomSkillParameterResponse structure as a key-value pair table
function M.GetRoomSkillParameterResponse(args)
	assert(args, "You must provide an argument table when creating GetRoomSkillParameterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomSkillParameter"] = args["RoomSkillParameter"],
	}
	asserts.AssertGetRoomSkillParameterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceEvent = { ["Timestamp"] = true, ["Type"] = true, ["Value"] = true, nil }

function asserts.AssertDeviceEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceEvent to be of type 'table'")
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["Type"] then asserts.AssertDeviceEventType(struct["Type"]) end
	if struct["Value"] then asserts.AssertDeviceEventValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceEvent[k], "DeviceEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceEvent
-- <p>The list of device events.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [Timestamp] <p>The time (in epoch) when the event occurred. </p>
-- * Type [DeviceEventType] <p>The type of device event.</p>
-- * Value [DeviceEventValue] <p>The value of the event.</p>
-- @return DeviceEvent structure as a key-value pair table
function M.DeviceEvent(args)
	assert(args, "You must provide an argument table when creating DeviceEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["Type"] = args["Type"],
		["Value"] = args["Value"],
	}
	asserts.AssertDeviceEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConferenceProvidersResponse = { ["ConferenceProviders"] = true, ["NextToken"] = true, nil }

function asserts.AssertListConferenceProvidersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConferenceProvidersResponse to be of type 'table'")
	if struct["ConferenceProviders"] then asserts.AssertConferenceProvidersList(struct["ConferenceProviders"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConferenceProvidersResponse[k], "ListConferenceProvidersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConferenceProvidersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConferenceProviders [ConferenceProvidersList] <p>The conference providers.</p>
-- * NextToken [NextToken] <p>The tokens used for pagination.</p>
-- @return ListConferenceProvidersResponse structure as a key-value pair table
function M.ListConferenceProvidersResponse(args)
	assert(args, "You must provide an argument table when creating ListConferenceProvidersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConferenceProviders"] = args["ConferenceProviders"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListConferenceProvidersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProfileResponse = { ["ProfileArn"] = true, nil }

function asserts.AssertCreateProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProfileResponse to be of type 'table'")
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProfileResponse[k], "CreateProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProfileResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProfileArn [Arn] <p>The ARN of the newly created room profile in the response.</p>
-- @return CreateProfileResponse structure as a key-value pair table
function M.CreateProfileResponse(args)
	assert(args, "You must provide an argument table when creating CreateProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProfileArn"] = args["ProfileArn"],
	}
	asserts.AssertCreateProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserResponse = { ["UserArn"] = true, nil }

function asserts.AssertCreateUserResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserResponse to be of type 'table'")
	if struct["UserArn"] then asserts.AssertArn(struct["UserArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserResponse[k], "CreateUserResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserArn [Arn] <p>The ARN of the newly created user in the response.</p>
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

keys.UpdateProfileRequest = { ["TemperatureUnit"] = true, ["PSTNEnabled"] = true, ["DistanceUnit"] = true, ["Timezone"] = true, ["ProfileArn"] = true, ["MaxVolumeLimit"] = true, ["SetupModeDisabled"] = true, ["Address"] = true, ["WakeWord"] = true, ["ProfileName"] = true, ["IsDefault"] = true, nil }

function asserts.AssertUpdateProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProfileRequest to be of type 'table'")
	if struct["TemperatureUnit"] then asserts.AssertTemperatureUnit(struct["TemperatureUnit"]) end
	if struct["PSTNEnabled"] then asserts.AssertBoolean(struct["PSTNEnabled"]) end
	if struct["DistanceUnit"] then asserts.AssertDistanceUnit(struct["DistanceUnit"]) end
	if struct["Timezone"] then asserts.AssertTimezone(struct["Timezone"]) end
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	if struct["MaxVolumeLimit"] then asserts.AssertMaxVolumeLimit(struct["MaxVolumeLimit"]) end
	if struct["SetupModeDisabled"] then asserts.AssertBoolean(struct["SetupModeDisabled"]) end
	if struct["Address"] then asserts.AssertAddress(struct["Address"]) end
	if struct["WakeWord"] then asserts.AssertWakeWord(struct["WakeWord"]) end
	if struct["ProfileName"] then asserts.AssertProfileName(struct["ProfileName"]) end
	if struct["IsDefault"] then asserts.AssertBoolean(struct["IsDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateProfileRequest[k], "UpdateProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemperatureUnit [TemperatureUnit] <p>The updated temperature unit for the room profile.</p>
-- * PSTNEnabled [Boolean] <p>Whether the PSTN setting of the room profile is enabled.</p>
-- * DistanceUnit [DistanceUnit] <p>The updated distance unit for the room profile.</p>
-- * Timezone [Timezone] <p>The updated timezone for the room profile.</p>
-- * ProfileArn [Arn] <p>The ARN of the room profile to update. Required.</p>
-- * MaxVolumeLimit [MaxVolumeLimit] <p>The updated maximum volume limit for the room profile.</p>
-- * SetupModeDisabled [Boolean] <p>Whether the setup mode of the profile is enabled.</p>
-- * Address [Address] <p>The updated address for the room profile.</p>
-- * WakeWord [WakeWord] <p>The updated wake word for the room profile.</p>
-- * ProfileName [ProfileName] <p>The updated name for the room profile.</p>
-- * IsDefault [Boolean] <p>Sets the profile as default if selected. If this is missing, no update is done to the default status.</p>
-- @return UpdateProfileRequest structure as a key-value pair table
function M.UpdateProfileRequest(args)
	assert(args, "You must provide an argument table when creating UpdateProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemperatureUnit"] = args["TemperatureUnit"],
		["PSTNEnabled"] = args["PSTNEnabled"],
		["DistanceUnit"] = args["DistanceUnit"],
		["Timezone"] = args["Timezone"],
		["ProfileArn"] = args["ProfileArn"],
		["MaxVolumeLimit"] = args["MaxVolumeLimit"],
		["SetupModeDisabled"] = args["SetupModeDisabled"],
		["Address"] = args["Address"],
		["WakeWord"] = args["WakeWord"],
		["ProfileName"] = args["ProfileName"],
		["IsDefault"] = args["IsDefault"],
	}
	asserts.AssertUpdateProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDeviceRequest = { ["DeviceArn"] = true, nil }

function asserts.AssertDeleteDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeviceRequest to be of type 'table'")
	assert(struct["DeviceArn"], "Expected key DeviceArn to exist in table")
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeviceRequest[k], "DeleteDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeviceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceArn [Arn] <p>The ARN of the device for which to request details.</p>
-- Required key: DeviceArn
-- @return DeleteDeviceRequest structure as a key-value pair table
function M.DeleteDeviceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceArn"] = args["DeviceArn"],
	}
	asserts.AssertDeleteDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendInvitationRequest = { ["UserArn"] = true, nil }

function asserts.AssertSendInvitationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendInvitationRequest to be of type 'table'")
	if struct["UserArn"] then asserts.AssertArn(struct["UserArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendInvitationRequest[k], "SendInvitationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendInvitationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserArn [Arn] <p>The ARN of the user to whom to send an invitation. Required.</p>
-- @return SendInvitationRequest structure as a key-value pair table
function M.SendInvitationRequest(args)
	assert(args, "You must provide an argument table when creating SendInvitationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserArn"] = args["UserArn"],
	}
	asserts.AssertSendInvitationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAddressBookRequest = { ["AddressBookArn"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateAddressBookRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAddressBookRequest to be of type 'table'")
	assert(struct["AddressBookArn"], "Expected key AddressBookArn to exist in table")
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	if struct["Name"] then asserts.AssertAddressBookName(struct["Name"]) end
	if struct["Description"] then asserts.AssertAddressBookDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAddressBookRequest[k], "UpdateAddressBookRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAddressBookRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBookArn [Arn] <p>The ARN of the room to update.</p>
-- * Name [AddressBookName] <p>The updated name of the room.</p>
-- * Description [AddressBookDescription] <p>The updated description of the room.</p>
-- Required key: AddressBookArn
-- @return UpdateAddressBookRequest structure as a key-value pair table
function M.UpdateAddressBookRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAddressBookRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBookArn"] = args["AddressBookArn"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateAddressBookRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RoomSkillParameter = { ["ParameterValue"] = true, ["ParameterKey"] = true, nil }

function asserts.AssertRoomSkillParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoomSkillParameter to be of type 'table'")
	assert(struct["ParameterKey"], "Expected key ParameterKey to exist in table")
	assert(struct["ParameterValue"], "Expected key ParameterValue to exist in table")
	if struct["ParameterValue"] then asserts.AssertRoomSkillParameterValue(struct["ParameterValue"]) end
	if struct["ParameterKey"] then asserts.AssertRoomSkillParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.RoomSkillParameter[k], "RoomSkillParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoomSkillParameter
-- <p>A skill parameter associated with a room.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterValue [RoomSkillParameterValue] <p>The parameter value of a room skill parameter.</p>
-- * ParameterKey [RoomSkillParameterKey] <p>The parameter key of a room skill parameter. ParameterKey is an enumerated type that only takes “DEFAULT” or “SCOPE” as valid values.</p>
-- Required key: ParameterKey
-- Required key: ParameterValue
-- @return RoomSkillParameter structure as a key-value pair table
function M.RoomSkillParameter(args)
	assert(args, "You must provide an argument table when creating RoomSkillParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterValue"] = args["ParameterValue"],
		["ParameterKey"] = args["ParameterKey"],
	}
	asserts.AssertRoomSkillParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateContactResponse = { ["ContactArn"] = true, nil }

function asserts.AssertCreateContactResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateContactResponse to be of type 'table'")
	if struct["ContactArn"] then asserts.AssertArn(struct["ContactArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateContactResponse[k], "CreateContactResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateContactResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContactArn [Arn] <p>The ARN of the newly created address book.</p>
-- @return CreateContactResponse structure as a key-value pair table
function M.CreateContactResponse(args)
	assert(args, "You must provide an argument table when creating CreateContactResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContactArn"] = args["ContactArn"],
	}
	asserts.AssertCreateContactResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RejectSkillRequest = { ["SkillId"] = true, nil }

function asserts.AssertRejectSkillRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectSkillRequest to be of type 'table'")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectSkillRequest[k], "RejectSkillRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectSkillRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillId [SkillId] <p>The unique identifier of the skill.</p>
-- Required key: SkillId
-- @return RejectSkillRequest structure as a key-value pair table
function M.RejectSkillRequest(args)
	assert(args, "You must provide an argument table when creating RejectSkillRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertRejectSkillRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForgetSmartHomeAppliancesRequest = { ["RoomArn"] = true, nil }

function asserts.AssertForgetSmartHomeAppliancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForgetSmartHomeAppliancesRequest to be of type 'table'")
	assert(struct["RoomArn"], "Expected key RoomArn to exist in table")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForgetSmartHomeAppliancesRequest[k], "ForgetSmartHomeAppliancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForgetSmartHomeAppliancesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The room that the appliances are associated with.</p>
-- Required key: RoomArn
-- @return ForgetSmartHomeAppliancesRequest structure as a key-value pair table
function M.ForgetSmartHomeAppliancesRequest(args)
	assert(args, "You must provide an argument table when creating ForgetSmartHomeAppliancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
	}
	asserts.AssertForgetSmartHomeAppliancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSkillGroupRequest = { ["SkillGroupName"] = true, ["Description"] = true, ["ClientRequestToken"] = true, nil }

function asserts.AssertCreateSkillGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSkillGroupRequest to be of type 'table'")
	assert(struct["SkillGroupName"], "Expected key SkillGroupName to exist in table")
	if struct["SkillGroupName"] then asserts.AssertSkillGroupName(struct["SkillGroupName"]) end
	if struct["Description"] then asserts.AssertSkillGroupDescription(struct["Description"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSkillGroupRequest[k], "CreateSkillGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSkillGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupName [SkillGroupName] <p>The name for the skill group.</p>
-- * Description [SkillGroupDescription] <p>The description for the skill group.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique, user-specified identifier for this request that ensures idempotency. </p>
-- Required key: SkillGroupName
-- @return CreateSkillGroupRequest structure as a key-value pair table
function M.CreateSkillGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateSkillGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupName"] = args["SkillGroupName"],
		["Description"] = args["Description"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertCreateSkillGroupRequest(all_args)
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

keys.PutConferencePreferenceRequest = { ["ConferencePreference"] = true, nil }

function asserts.AssertPutConferencePreferenceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutConferencePreferenceRequest to be of type 'table'")
	assert(struct["ConferencePreference"], "Expected key ConferencePreference to exist in table")
	if struct["ConferencePreference"] then asserts.AssertConferencePreference(struct["ConferencePreference"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutConferencePreferenceRequest[k], "PutConferencePreferenceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutConferencePreferenceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConferencePreference [ConferencePreference] <p>The conference preference of a specific conference provider.</p>
-- Required key: ConferencePreference
-- @return PutConferencePreferenceRequest structure as a key-value pair table
function M.PutConferencePreferenceRequest(args)
	assert(args, "You must provide an argument table when creating PutConferencePreferenceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConferencePreference"] = args["ConferencePreference"],
	}
	asserts.AssertPutConferencePreferenceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetProfileResponse = { ["Profile"] = true, nil }

function asserts.AssertGetProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetProfileResponse to be of type 'table'")
	if struct["Profile"] then asserts.AssertProfile(struct["Profile"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetProfileResponse[k], "GetProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetProfileResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Profile [Profile] <p>The details of the room profile requested. Required.</p>
-- @return GetProfileResponse structure as a key-value pair table
function M.GetProfileResponse(args)
	assert(args, "You must provide an argument table when creating GetProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Profile"] = args["Profile"],
	}
	asserts.AssertGetProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateDeviceFromRoomRequest = { ["DeviceArn"] = true, nil }

function asserts.AssertDisassociateDeviceFromRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateDeviceFromRoomRequest to be of type 'table'")
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateDeviceFromRoomRequest[k], "DisassociateDeviceFromRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateDeviceFromRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceArn [Arn] <p>The ARN of the device to disassociate from a room. Required.</p>
-- @return DisassociateDeviceFromRoomRequest structure as a key-value pair table
function M.DisassociateDeviceFromRoomRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateDeviceFromRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceArn"] = args["DeviceArn"],
	}
	asserts.AssertDisassociateDeviceFromRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateContactFromAddressBookResponse = { nil }

function asserts.AssertDisassociateContactFromAddressBookResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateContactFromAddressBookResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateContactFromAddressBookResponse[k], "DisassociateContactFromAddressBookResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateContactFromAddressBookResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateContactFromAddressBookResponse structure as a key-value pair table
function M.DisassociateContactFromAddressBookResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateContactFromAddressBookResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateContactFromAddressBookResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConferenceProviderRequest = { ["ConferenceProviderArn"] = true, nil }

function asserts.AssertDeleteConferenceProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConferenceProviderRequest to be of type 'table'")
	assert(struct["ConferenceProviderArn"], "Expected key ConferenceProviderArn to exist in table")
	if struct["ConferenceProviderArn"] then asserts.AssertArn(struct["ConferenceProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConferenceProviderRequest[k], "DeleteConferenceProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConferenceProviderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConferenceProviderArn [Arn] <p>The ARN of the conference provider.</p>
-- Required key: ConferenceProviderArn
-- @return DeleteConferenceProviderRequest structure as a key-value pair table
function M.DeleteConferenceProviderRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConferenceProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConferenceProviderArn"] = args["ConferenceProviderArn"],
	}
	asserts.AssertDeleteConferenceProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConferenceProviderResponse = { nil }

function asserts.AssertDeleteConferenceProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConferenceProviderResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteConferenceProviderResponse[k], "DeleteConferenceProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConferenceProviderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteConferenceProviderResponse structure as a key-value pair table
function M.DeleteConferenceProviderResponse(args)
	assert(args, "You must provide an argument table when creating DeleteConferenceProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteConferenceProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateSkillGroupFromRoomResponse = { nil }

function asserts.AssertDisassociateSkillGroupFromRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateSkillGroupFromRoomResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateSkillGroupFromRoomResponse[k], "DisassociateSkillGroupFromRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateSkillGroupFromRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateSkillGroupFromRoomResponse structure as a key-value pair table
function M.DisassociateSkillGroupFromRoomResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateSkillGroupFromRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateSkillGroupFromRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SkillGroup = { ["SkillGroupName"] = true, ["SkillGroupArn"] = true, ["Description"] = true, nil }

function asserts.AssertSkillGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SkillGroup to be of type 'table'")
	if struct["SkillGroupName"] then asserts.AssertSkillGroupName(struct["SkillGroupName"]) end
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	if struct["Description"] then asserts.AssertSkillGroupDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.SkillGroup[k], "SkillGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SkillGroup
-- <p>A skill group with attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupName [SkillGroupName] <p>The name of a skill group.</p>
-- * SkillGroupArn [Arn] <p>The ARN of a skill group.</p>
-- * Description [SkillGroupDescription] <p>The description of a skill group.</p>
-- @return SkillGroup structure as a key-value pair table
function M.SkillGroup(args)
	assert(args, "You must provide an argument table when creating SkillGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupName"] = args["SkillGroupName"],
		["SkillGroupArn"] = args["SkillGroupArn"],
		["Description"] = args["Description"],
	}
	asserts.AssertSkillGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAddressBookResponse = { ["AddressBookArn"] = true, nil }

function asserts.AssertCreateAddressBookResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAddressBookResponse to be of type 'table'")
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAddressBookResponse[k], "CreateAddressBookResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAddressBookResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBookArn [Arn] <p>The ARN of the newly created address book.</p>
-- @return CreateAddressBookResponse structure as a key-value pair table
function M.CreateAddressBookResponse(args)
	assert(args, "You must provide an argument table when creating CreateAddressBookResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBookArn"] = args["AddressBookArn"],
	}
	asserts.AssertCreateAddressBookResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SkillsStoreSkill = { ["SkillName"] = true, ["SupportsLinking"] = true, ["IconUrl"] = true, ["SkillDetails"] = true, ["SampleUtterances"] = true, ["ShortDescription"] = true, ["SkillId"] = true, nil }

function asserts.AssertSkillsStoreSkill(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SkillsStoreSkill to be of type 'table'")
	if struct["SkillName"] then asserts.AssertSkillName(struct["SkillName"]) end
	if struct["SupportsLinking"] then asserts.Assertboolean(struct["SupportsLinking"]) end
	if struct["IconUrl"] then asserts.AssertIconUrl(struct["IconUrl"]) end
	if struct["SkillDetails"] then asserts.AssertSkillDetails(struct["SkillDetails"]) end
	if struct["SampleUtterances"] then asserts.AssertSampleUtterances(struct["SampleUtterances"]) end
	if struct["ShortDescription"] then asserts.AssertShortDescription(struct["ShortDescription"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SkillsStoreSkill[k], "SkillsStoreSkill contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SkillsStoreSkill
-- <p>The detailed information about an Alexa skill.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillName [SkillName] <p>The name of the skill.</p>
-- * SupportsLinking [boolean] <p>Linking support for a skill.</p>
-- * IconUrl [IconUrl] <p>The URL where the skill icon resides.</p>
-- * SkillDetails [SkillDetails] <p>Information about the skill.</p>
-- * SampleUtterances [SampleUtterances] <p>Sample utterances that interact with the skill.</p>
-- * ShortDescription [ShortDescription] <p>Short description about the skill.</p>
-- * SkillId [SkillId] <p>The ARN of the skill.</p>
-- @return SkillsStoreSkill structure as a key-value pair table
function M.SkillsStoreSkill(args)
	assert(args, "You must provide an argument table when creating SkillsStoreSkill")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillName"] = args["SkillName"],
		["SupportsLinking"] = args["SupportsLinking"],
		["IconUrl"] = args["IconUrl"],
		["SkillDetails"] = args["SkillDetails"],
		["SampleUtterances"] = args["SampleUtterances"],
		["ShortDescription"] = args["ShortDescription"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertSkillsStoreSkill(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Contact = { ["PhoneNumber"] = true, ["LastName"] = true, ["ContactArn"] = true, ["DisplayName"] = true, ["FirstName"] = true, nil }

function asserts.AssertContact(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Contact to be of type 'table'")
	if struct["PhoneNumber"] then asserts.AssertE164PhoneNumber(struct["PhoneNumber"]) end
	if struct["LastName"] then asserts.AssertContactName(struct["LastName"]) end
	if struct["ContactArn"] then asserts.AssertArn(struct["ContactArn"]) end
	if struct["DisplayName"] then asserts.AssertContactName(struct["DisplayName"]) end
	if struct["FirstName"] then asserts.AssertContactName(struct["FirstName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Contact[k], "Contact contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Contact
-- <p>A contact with attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PhoneNumber [E164PhoneNumber] <p>The phone number of the contact.</p>
-- * LastName [ContactName] <p>The last name of the contact, used to call the contact on the device.</p>
-- * ContactArn [Arn] <p>The ARN of the contact.</p>
-- * DisplayName [ContactName] <p>The name of the contact to display on the console.</p>
-- * FirstName [ContactName] <p>The first name of the contact, used to call the contact on the device.</p>
-- @return Contact structure as a key-value pair table
function M.Contact(args)
	assert(args, "You must provide an argument table when creating Contact")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PhoneNumber"] = args["PhoneNumber"],
		["LastName"] = args["LastName"],
		["ContactArn"] = args["ContactArn"],
		["DisplayName"] = args["DisplayName"],
		["FirstName"] = args["FirstName"],
	}
	asserts.AssertContact(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAddressBookResponse = { nil }

function asserts.AssertUpdateAddressBookResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAddressBookResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateAddressBookResponse[k], "UpdateAddressBookResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAddressBookResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateAddressBookResponse structure as a key-value pair table
function M.UpdateAddressBookResponse(args)
	assert(args, "You must provide an argument table when creating UpdateAddressBookResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateAddressBookResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConferenceProviderRequest = { ["MeetingSetting"] = true, ["IPDialIn"] = true, ["ClientRequestToken"] = true, ["ConferenceProviderName"] = true, ["ConferenceProviderType"] = true, ["PSTNDialIn"] = true, nil }

function asserts.AssertCreateConferenceProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConferenceProviderRequest to be of type 'table'")
	assert(struct["ConferenceProviderName"], "Expected key ConferenceProviderName to exist in table")
	assert(struct["ConferenceProviderType"], "Expected key ConferenceProviderType to exist in table")
	assert(struct["MeetingSetting"], "Expected key MeetingSetting to exist in table")
	if struct["MeetingSetting"] then asserts.AssertMeetingSetting(struct["MeetingSetting"]) end
	if struct["IPDialIn"] then asserts.AssertIPDialIn(struct["IPDialIn"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["ConferenceProviderName"] then asserts.AssertConferenceProviderName(struct["ConferenceProviderName"]) end
	if struct["ConferenceProviderType"] then asserts.AssertConferenceProviderType(struct["ConferenceProviderType"]) end
	if struct["PSTNDialIn"] then asserts.AssertPSTNDialIn(struct["PSTNDialIn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConferenceProviderRequest[k], "CreateConferenceProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConferenceProviderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MeetingSetting [MeetingSetting] <p>The meeting settings for the conference provider.</p>
-- * IPDialIn [IPDialIn] <p>The IP endpoint and protocol for calling.</p>
-- * ClientRequestToken [ClientRequestToken] <p>The request token of the client.</p>
-- * ConferenceProviderName [ConferenceProviderName] <p>The name of the conference provider.</p>
-- * ConferenceProviderType [ConferenceProviderType] <p>Represents a type within a list of predefined types.</p>
-- * PSTNDialIn [PSTNDialIn] <p>The information for PSTN conferencing.</p>
-- Required key: ConferenceProviderName
-- Required key: ConferenceProviderType
-- Required key: MeetingSetting
-- @return CreateConferenceProviderRequest structure as a key-value pair table
function M.CreateConferenceProviderRequest(args)
	assert(args, "You must provide an argument table when creating CreateConferenceProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MeetingSetting"] = args["MeetingSetting"],
		["IPDialIn"] = args["IPDialIn"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["ConferenceProviderName"] = args["ConferenceProviderName"],
		["ConferenceProviderType"] = args["ConferenceProviderType"],
		["PSTNDialIn"] = args["PSTNDialIn"],
	}
	asserts.AssertCreateConferenceProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateSkillGroupWithRoomResponse = { nil }

function asserts.AssertAssociateSkillGroupWithRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateSkillGroupWithRoomResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateSkillGroupWithRoomResponse[k], "AssociateSkillGroupWithRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateSkillGroupWithRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateSkillGroupWithRoomResponse structure as a key-value pair table
function M.AssociateSkillGroupWithRoomResponse(args)
	assert(args, "You must provide an argument table when creating AssociateSkillGroupWithRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateSkillGroupWithRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConferencePreferenceResponse = { ["Preference"] = true, nil }

function asserts.AssertGetConferencePreferenceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConferencePreferenceResponse to be of type 'table'")
	if struct["Preference"] then asserts.AssertConferencePreference(struct["Preference"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConferencePreferenceResponse[k], "GetConferencePreferenceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConferencePreferenceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Preference [ConferencePreference] <p>The conference preference.</p>
-- @return GetConferencePreferenceResponse structure as a key-value pair table
function M.GetConferencePreferenceResponse(args)
	assert(args, "You must provide an argument table when creating GetConferencePreferenceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Preference"] = args["Preference"],
	}
	asserts.AssertGetConferencePreferenceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MeetingSetting = { ["RequirePin"] = true, nil }

function asserts.AssertMeetingSetting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MeetingSetting to be of type 'table'")
	assert(struct["RequirePin"], "Expected key RequirePin to exist in table")
	if struct["RequirePin"] then asserts.AssertRequirePin(struct["RequirePin"]) end
	for k,_ in pairs(struct) do
		assert(keys.MeetingSetting[k], "MeetingSetting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MeetingSetting
-- <p>The values that indicate whether a pin is always required (YES), never required (NO), or OPTIONAL.</p> <ul> <li> <p>If YES, Alexa will always ask for a meeting pin.</p> </li> <li> <p>If NO, Alexa will never ask for a meeting pin.</p> </li> <li> <p>If OPTIONAL, Alexa will ask if you have a meeting pin and if the customer responds with yes, it will ask for the meeting pin.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RequirePin [RequirePin] <p>The values that indicate whether the pin is always required.</p>
-- Required key: RequirePin
-- @return MeetingSetting structure as a key-value pair table
function M.MeetingSetting(args)
	assert(args, "You must provide an argument table when creating MeetingSetting")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RequirePin"] = args["RequirePin"],
	}
	asserts.AssertMeetingSetting(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IPDialIn = { ["Endpoint"] = true, ["CommsProtocol"] = true, nil }

function asserts.AssertIPDialIn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IPDialIn to be of type 'table'")
	assert(struct["Endpoint"], "Expected key Endpoint to exist in table")
	assert(struct["CommsProtocol"], "Expected key CommsProtocol to exist in table")
	if struct["Endpoint"] then asserts.AssertEndpoint(struct["Endpoint"]) end
	if struct["CommsProtocol"] then asserts.AssertCommsProtocol(struct["CommsProtocol"]) end
	for k,_ in pairs(struct) do
		assert(keys.IPDialIn[k], "IPDialIn contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IPDialIn
-- <p>The IP endpoint and protocol for calling.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoint [Endpoint] <p>The IP address.</p>
-- * CommsProtocol [CommsProtocol] <p>The protocol, including SIP, SIPS, and H323.</p>
-- Required key: Endpoint
-- Required key: CommsProtocol
-- @return IPDialIn structure as a key-value pair table
function M.IPDialIn(args)
	assert(args, "You must provide an argument table when creating IPDialIn")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoint"] = args["Endpoint"],
		["CommsProtocol"] = args["CommsProtocol"],
	}
	asserts.AssertIPDialIn(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSkillsStoreCategoriesResponse = { ["NextToken"] = true, ["CategoryList"] = true, nil }

function asserts.AssertListSkillsStoreCategoriesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSkillsStoreCategoriesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CategoryList"] then asserts.AssertCategoryList(struct["CategoryList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSkillsStoreCategoriesResponse[k], "ListSkillsStoreCategoriesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSkillsStoreCategoriesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The tokens used for pagination.</p>
-- * CategoryList [CategoryList] <p>The list of categories.</p>
-- @return ListSkillsStoreCategoriesResponse structure as a key-value pair table
function M.ListSkillsStoreCategoriesResponse(args)
	assert(args, "You must provide an argument table when creating ListSkillsStoreCategoriesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["CategoryList"] = args["CategoryList"],
	}
	asserts.AssertListSkillsStoreCategoriesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConferenceProviderResponse = { ["ConferenceProvider"] = true, nil }

function asserts.AssertGetConferenceProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConferenceProviderResponse to be of type 'table'")
	if struct["ConferenceProvider"] then asserts.AssertConferenceProvider(struct["ConferenceProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConferenceProviderResponse[k], "GetConferenceProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConferenceProviderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConferenceProvider [ConferenceProvider] <p>The conference provider.</p>
-- @return GetConferenceProviderResponse structure as a key-value pair table
function M.GetConferenceProviderResponse(args)
	assert(args, "You must provide an argument table when creating GetConferenceProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConferenceProvider"] = args["ConferenceProvider"],
	}
	asserts.AssertGetConferenceProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDeviceWithRoomResponse = { nil }

function asserts.AssertAssociateDeviceWithRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDeviceWithRoomResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateDeviceWithRoomResponse[k], "AssociateDeviceWithRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDeviceWithRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateDeviceWithRoomResponse structure as a key-value pair table
function M.AssociateDeviceWithRoomResponse(args)
	assert(args, "You must provide an argument table when creating AssociateDeviceWithRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateDeviceWithRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSkillsStoreSkillsByCategoryRequest = { ["NextToken"] = true, ["CategoryId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSkillsStoreSkillsByCategoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSkillsStoreSkillsByCategoryRequest to be of type 'table'")
	assert(struct["CategoryId"], "Expected key CategoryId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CategoryId"] then asserts.AssertCategoryId(struct["CategoryId"]) end
	if struct["MaxResults"] then asserts.AssertSkillListMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSkillsStoreSkillsByCategoryRequest[k], "ListSkillsStoreSkillsByCategoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSkillsStoreSkillsByCategoryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The tokens used for pagination.</p>
-- * CategoryId [CategoryId] <p>The category ID for which the skills are being retrieved from the skill store.</p>
-- * MaxResults [SkillListMaxResults] <p>The maximum number of skills returned per paginated calls.</p>
-- Required key: CategoryId
-- @return ListSkillsStoreSkillsByCategoryRequest structure as a key-value pair table
function M.ListSkillsStoreSkillsByCategoryRequest(args)
	assert(args, "You must provide an argument table when creating ListSkillsStoreSkillsByCategoryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["CategoryId"] = args["CategoryId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSkillsStoreSkillsByCategoryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["TagKeys"] = true, ["Arn"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["TagKeys"] then asserts.AssertTagKeyList(struct["TagKeys"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [TagKeyList] <p>The tags to be removed from the specified resource. Do not provide system tags. Required. </p>
-- * Arn [Arn] <p>The ARN of the resource from which to remove metadata tags. Required. </p>
-- Required key: Arn
-- Required key: TagKeys
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRoomSkillParameterRequest = { ["RoomArn"] = true, ["ParameterKey"] = true, ["SkillId"] = true, nil }

function asserts.AssertGetRoomSkillParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRoomSkillParameterRequest to be of type 'table'")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	assert(struct["ParameterKey"], "Expected key ParameterKey to exist in table")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["ParameterKey"] then asserts.AssertRoomSkillParameterKey(struct["ParameterKey"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRoomSkillParameterRequest[k], "GetRoomSkillParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRoomSkillParameterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The ARN of the room from which to get the room skill parameter details. </p>
-- * ParameterKey [RoomSkillParameterKey] <p>The room skill parameter key for which to get details. Required.</p>
-- * SkillId [SkillId] <p>The ARN of the skill from which to get the room skill parameter details. Required.</p>
-- Required key: SkillId
-- Required key: ParameterKey
-- @return GetRoomSkillParameterRequest structure as a key-value pair table
function M.GetRoomSkillParameterRequest(args)
	assert(args, "You must provide an argument table when creating GetRoomSkillParameterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
		["ParameterKey"] = args["ParameterKey"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertGetRoomSkillParameterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteContactRequest = { ["ContactArn"] = true, nil }

function asserts.AssertDeleteContactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteContactRequest to be of type 'table'")
	assert(struct["ContactArn"], "Expected key ContactArn to exist in table")
	if struct["ContactArn"] then asserts.AssertArn(struct["ContactArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteContactRequest[k], "DeleteContactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteContactRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContactArn [Arn] <p>The ARN of the contact to delete.</p>
-- Required key: ContactArn
-- @return DeleteContactRequest structure as a key-value pair table
function M.DeleteContactRequest(args)
	assert(args, "You must provide an argument table when creating DeleteContactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ContactArn"] = args["ContactArn"],
	}
	asserts.AssertDeleteContactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConferenceProviderRequest = { ["ConferenceProviderArn"] = true, nil }

function asserts.AssertGetConferenceProviderRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConferenceProviderRequest to be of type 'table'")
	assert(struct["ConferenceProviderArn"], "Expected key ConferenceProviderArn to exist in table")
	if struct["ConferenceProviderArn"] then asserts.AssertArn(struct["ConferenceProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConferenceProviderRequest[k], "GetConferenceProviderRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConferenceProviderRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConferenceProviderArn [Arn] <p>The ARN of the newly created conference provider.</p>
-- Required key: ConferenceProviderArn
-- @return GetConferenceProviderRequest structure as a key-value pair table
function M.GetConferenceProviderRequest(args)
	assert(args, "You must provide an argument table when creating GetConferenceProviderRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConferenceProviderArn"] = args["ConferenceProviderArn"],
	}
	asserts.AssertGetConferenceProviderRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateDeviceWithRoomRequest = { ["RoomArn"] = true, ["DeviceArn"] = true, nil }

function asserts.AssertAssociateDeviceWithRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateDeviceWithRoomRequest to be of type 'table'")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateDeviceWithRoomRequest[k], "AssociateDeviceWithRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateDeviceWithRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The ARN of the room with which to associate the device. Required.</p>
-- * DeviceArn [Arn] <p>The ARN of the device to associate to a room. Required.</p>
-- @return AssociateDeviceWithRoomRequest structure as a key-value pair table
function M.AssociateDeviceWithRoomRequest(args)
	assert(args, "You must provide an argument table when creating AssociateDeviceWithRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
		["DeviceArn"] = args["DeviceArn"],
	}
	asserts.AssertAssociateDeviceWithRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRoomSkillParameterRequest = { ["RoomSkillParameter"] = true, ["RoomArn"] = true, ["SkillId"] = true, nil }

function asserts.AssertPutRoomSkillParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRoomSkillParameterRequest to be of type 'table'")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	assert(struct["RoomSkillParameter"], "Expected key RoomSkillParameter to exist in table")
	if struct["RoomSkillParameter"] then asserts.AssertRoomSkillParameter(struct["RoomSkillParameter"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRoomSkillParameterRequest[k], "PutRoomSkillParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRoomSkillParameterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomSkillParameter [RoomSkillParameter] <p>The updated room skill parameter. Required.</p>
-- * RoomArn [Arn] <p>The ARN of the room associated with the room skill parameter. Required.</p>
-- * SkillId [SkillId] <p>The ARN of the skill associated with the room skill parameter. Required.</p>
-- Required key: SkillId
-- Required key: RoomSkillParameter
-- @return PutRoomSkillParameterRequest structure as a key-value pair table
function M.PutRoomSkillParameterRequest(args)
	assert(args, "You must provide an argument table when creating PutRoomSkillParameterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomSkillParameter"] = args["RoomSkillParameter"],
		["RoomArn"] = args["RoomArn"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertPutRoomSkillParameterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Category = { ["CategoryId"] = true, ["CategoryName"] = true, nil }

function asserts.AssertCategory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Category to be of type 'table'")
	if struct["CategoryId"] then asserts.AssertCategoryId(struct["CategoryId"]) end
	if struct["CategoryName"] then asserts.AssertCategoryName(struct["CategoryName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Category[k], "Category contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Category
-- <p>The skill store category that is shown. Alexa skills are assigned a specific skill category during creation, such as News, Social, and Sports.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CategoryId [CategoryId] <p>The ID of the skill store category.</p>
-- * CategoryName [CategoryName] <p>The name of the skill store category.</p>
-- @return Category structure as a key-value pair table
function M.Category(args)
	assert(args, "You must provide an argument table when creating Category")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CategoryId"] = args["CategoryId"],
		["CategoryName"] = args["CategoryName"],
	}
	asserts.AssertCategory(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRoomRequest = { ["RoomName"] = true, ["ProviderCalendarId"] = true, ["RoomArn"] = true, ["ProfileArn"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRoomRequest to be of type 'table'")
	if struct["RoomName"] then asserts.AssertRoomName(struct["RoomName"]) end
	if struct["ProviderCalendarId"] then asserts.AssertProviderCalendarId(struct["ProviderCalendarId"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	if struct["Description"] then asserts.AssertRoomDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateRoomRequest[k], "UpdateRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomName [RoomName] <p>The updated name for the room.</p>
-- * ProviderCalendarId [ProviderCalendarId] <p>The updated provider calendar ARN for the room.</p>
-- * RoomArn [Arn] <p>The ARN of the room to update. </p>
-- * ProfileArn [Arn] <p>The updated profile ARN for the room.</p>
-- * Description [RoomDescription] <p>The updated description for the room.</p>
-- @return UpdateRoomRequest structure as a key-value pair table
function M.UpdateRoomRequest(args)
	assert(args, "You must provide an argument table when creating UpdateRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomName"] = args["RoomName"],
		["ProviderCalendarId"] = args["ProviderCalendarId"],
		["RoomArn"] = args["RoomArn"],
		["ProfileArn"] = args["ProfileArn"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRoomRequest = { ["RoomArn"] = true, nil }

function asserts.AssertDeleteRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRoomRequest to be of type 'table'")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRoomRequest[k], "DeleteRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The ARN of the room to delete. Required.</p>
-- @return DeleteRoomRequest structure as a key-value pair table
function M.DeleteRoomRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
	}
	asserts.AssertDeleteRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterAVSDeviceResponse = { ["DeviceArn"] = true, nil }

function asserts.AssertRegisterAVSDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterAVSDeviceResponse to be of type 'table'")
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterAVSDeviceResponse[k], "RegisterAVSDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterAVSDeviceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceArn [Arn] <p>The ARN of the device.</p>
-- @return RegisterAVSDeviceResponse structure as a key-value pair table
function M.RegisterAVSDeviceResponse(args)
	assert(args, "You must provide an argument table when creating RegisterAVSDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceArn"] = args["DeviceArn"],
	}
	asserts.AssertRegisterAVSDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateProfileResponse = { nil }

function asserts.AssertUpdateProfileResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateProfileResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateProfileResponse[k], "UpdateProfileResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateProfileResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateProfileResponse structure as a key-value pair table
function M.UpdateProfileResponse(args)
	assert(args, "You must provide an argument table when creating UpdateProfileResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateProfileResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RoomData = { ["Description"] = true, ["ProviderCalendarId"] = true, ["ProfileArn"] = true, ["RoomName"] = true, ["RoomArn"] = true, ["ProfileName"] = true, nil }

function asserts.AssertRoomData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RoomData to be of type 'table'")
	if struct["Description"] then asserts.AssertRoomDescription(struct["Description"]) end
	if struct["ProviderCalendarId"] then asserts.AssertProviderCalendarId(struct["ProviderCalendarId"]) end
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	if struct["RoomName"] then asserts.AssertRoomName(struct["RoomName"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["ProfileName"] then asserts.AssertProfileName(struct["ProfileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.RoomData[k], "RoomData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RoomData
-- <p>The data of a room.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [RoomDescription] <p>The description of a room.</p>
-- * ProviderCalendarId [ProviderCalendarId] <p>The provider calendar ARN of a room.</p>
-- * ProfileArn [Arn] <p>The profile ARN of a room.</p>
-- * RoomName [RoomName] <p>The name of a room.</p>
-- * RoomArn [Arn] <p>The ARN of a room.</p>
-- * ProfileName [ProfileName] <p>The profile name of a room.</p>
-- @return RoomData structure as a key-value pair table
function M.RoomData(args)
	assert(args, "You must provide an argument table when creating RoomData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["ProviderCalendarId"] = args["ProviderCalendarId"],
		["ProfileArn"] = args["ProfileArn"],
		["RoomName"] = args["RoomName"],
		["RoomArn"] = args["RoomArn"],
		["ProfileName"] = args["ProfileName"],
	}
	asserts.AssertRoomData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchDevicesRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertSearchDevicesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchDevicesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["SortCriteria"] then asserts.AssertSortList(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchDevicesRequest[k], "SearchDevicesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchDevicesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * Filters [FilterList] <p>The filters to use to list a specified set of devices. Supported filter keys are DeviceName, DeviceStatus, DeviceStatusDetailCode, RoomName, DeviceType, DeviceSerialNumber, UnassociatedOnly, and ConnectionStatus (ONLINE and OFFLINE).</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
-- * SortCriteria [SortList] <p>The sort order to use in listing the specified set of devices. Supported sort keys are DeviceName, DeviceStatus, RoomName, DeviceType, DeviceSerialNumber, and ConnectionStatus.</p>
-- @return SearchDevicesRequest structure as a key-value pair table
function M.SearchDevicesRequest(args)
	assert(args, "You must provide an argument table when creating SearchDevicesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
		["MaxResults"] = args["MaxResults"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertSearchDevicesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchAddressBooksRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertSearchAddressBooksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchAddressBooksRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SortCriteria"] then asserts.AssertSortList(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchAddressBooksRequest[k], "SearchAddressBooksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchAddressBooksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
-- * Filters [FilterList] <p>The filters to use to list a specified set of address books. The supported filter key is AddressBookName.</p>
-- * SortCriteria [SortList] <p>The sort order to use in listing the specified set of address books. The supported sort key is AddressBookName.</p>
-- @return SearchAddressBooksRequest structure as a key-value pair table
function M.SearchAddressBooksRequest(args)
	assert(args, "You must provide an argument table when creating SearchAddressBooksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertSearchAddressBooksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateSkillWithSkillGroupRequest = { ["SkillGroupArn"] = true, ["SkillId"] = true, nil }

function asserts.AssertAssociateSkillWithSkillGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateSkillWithSkillGroupRequest to be of type 'table'")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateSkillWithSkillGroupRequest[k], "AssociateSkillWithSkillGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateSkillWithSkillGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupArn [Arn] <p>The ARN of the skill group to associate the skill to. Required.</p>
-- * SkillId [SkillId] <p>The unique identifier of the skill.</p>
-- Required key: SkillId
-- @return AssociateSkillWithSkillGroupRequest structure as a key-value pair table
function M.AssociateSkillWithSkillGroupRequest(args)
	assert(args, "You must provide an argument table when creating AssociateSkillWithSkillGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupArn"] = args["SkillGroupArn"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertAssociateSkillWithSkillGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDeviceRequest = { ["DeviceArn"] = true, nil }

function asserts.AssertGetDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeviceRequest to be of type 'table'")
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeviceRequest[k], "GetDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeviceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceArn [Arn] <p>The ARN of the device for which to request details. Required.</p>
-- @return GetDeviceRequest structure as a key-value pair table
function M.GetDeviceRequest(args)
	assert(args, "You must provide an argument table when creating GetDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceArn"] = args["DeviceArn"],
	}
	asserts.AssertGetDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSmartHomeApplianceDiscoveryResponse = { nil }

function asserts.AssertStartSmartHomeApplianceDiscoveryResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSmartHomeApplianceDiscoveryResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartSmartHomeApplianceDiscoveryResponse[k], "StartSmartHomeApplianceDiscoveryResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSmartHomeApplianceDiscoveryResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartSmartHomeApplianceDiscoveryResponse structure as a key-value pair table
function M.StartSmartHomeApplianceDiscoveryResponse(args)
	assert(args, "You must provide an argument table when creating StartSmartHomeApplianceDiscoveryResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartSmartHomeApplianceDiscoveryResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContactRequest = { ["PhoneNumber"] = true, ["LastName"] = true, ["ContactArn"] = true, ["DisplayName"] = true, ["FirstName"] = true, nil }

function asserts.AssertUpdateContactRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContactRequest to be of type 'table'")
	assert(struct["ContactArn"], "Expected key ContactArn to exist in table")
	if struct["PhoneNumber"] then asserts.AssertE164PhoneNumber(struct["PhoneNumber"]) end
	if struct["LastName"] then asserts.AssertContactName(struct["LastName"]) end
	if struct["ContactArn"] then asserts.AssertArn(struct["ContactArn"]) end
	if struct["DisplayName"] then asserts.AssertContactName(struct["DisplayName"]) end
	if struct["FirstName"] then asserts.AssertContactName(struct["FirstName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateContactRequest[k], "UpdateContactRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContactRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PhoneNumber [E164PhoneNumber] <p>The updated phone number of the contact.</p>
-- * LastName [ContactName] <p>The updated last name of the contact.</p>
-- * ContactArn [Arn] <p>The ARN of the contact to update.</p>
-- * DisplayName [ContactName] <p>The updated display name of the contact.</p>
-- * FirstName [ContactName] <p>The updated first name of the contact.</p>
-- Required key: ContactArn
-- @return UpdateContactRequest structure as a key-value pair table
function M.UpdateContactRequest(args)
	assert(args, "You must provide an argument table when creating UpdateContactRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PhoneNumber"] = args["PhoneNumber"],
		["LastName"] = args["LastName"],
		["ContactArn"] = args["ContactArn"],
		["DisplayName"] = args["DisplayName"],
		["FirstName"] = args["FirstName"],
	}
	asserts.AssertUpdateContactRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetProfileRequest = { ["ProfileArn"] = true, nil }

function asserts.AssertGetProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetProfileRequest to be of type 'table'")
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetProfileRequest[k], "GetProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProfileArn [Arn] <p>The ARN of the room profile for which to request details. Required.</p>
-- @return GetProfileRequest structure as a key-value pair table
function M.GetProfileRequest(args)
	assert(args, "You must provide an argument table when creating GetProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProfileArn"] = args["ProfileArn"],
	}
	asserts.AssertGetProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAddressBookRequest = { ["AddressBookArn"] = true, nil }

function asserts.AssertGetAddressBookRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAddressBookRequest to be of type 'table'")
	assert(struct["AddressBookArn"], "Expected key AddressBookArn to exist in table")
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAddressBookRequest[k], "GetAddressBookRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAddressBookRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBookArn [Arn] <p>The ARN of the address book for which to request details.</p>
-- Required key: AddressBookArn
-- @return GetAddressBookRequest structure as a key-value pair table
function M.GetAddressBookRequest(args)
	assert(args, "You must provide an argument table when creating GetAddressBookRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBookArn"] = args["AddressBookArn"],
	}
	asserts.AssertGetAddressBookRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceStatusDetail = { ["Code"] = true, nil }

function asserts.AssertDeviceStatusDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceStatusDetail to be of type 'table'")
	if struct["Code"] then asserts.AssertDeviceStatusDetailCode(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceStatusDetail[k], "DeviceStatusDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceStatusDetail
-- <p>Details of a device’s status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Code [DeviceStatusDetailCode] <p>The device status detail code.</p>
-- @return DeviceStatusDetail structure as a key-value pair table
function M.DeviceStatusDetail(args)
	assert(args, "You must provide an argument table when creating DeviceStatusDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Code"] = args["Code"],
	}
	asserts.AssertDeviceStatusDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSkillGroupRequest = { ["SkillGroupArn"] = true, nil }

function asserts.AssertGetSkillGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSkillGroupRequest to be of type 'table'")
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSkillGroupRequest[k], "GetSkillGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSkillGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupArn [Arn] <p>The ARN of the skill group for which to get details. Required.</p>
-- @return GetSkillGroupRequest structure as a key-value pair table
function M.GetSkillGroupRequest(args)
	assert(args, "You must provide an argument table when creating GetSkillGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupArn"] = args["SkillGroupArn"],
	}
	asserts.AssertGetSkillGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConferenceProviderResponse = { ["ConferenceProviderArn"] = true, nil }

function asserts.AssertCreateConferenceProviderResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConferenceProviderResponse to be of type 'table'")
	if struct["ConferenceProviderArn"] then asserts.AssertArn(struct["ConferenceProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConferenceProviderResponse[k], "CreateConferenceProviderResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConferenceProviderResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConferenceProviderArn [Arn] <p>The ARN of the newly-created conference provider.</p>
-- @return CreateConferenceProviderResponse structure as a key-value pair table
function M.CreateConferenceProviderResponse(args)
	assert(args, "You must provide an argument table when creating CreateConferenceProviderResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConferenceProviderArn"] = args["ConferenceProviderArn"],
	}
	asserts.AssertCreateConferenceProviderResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApproveSkillRequest = { ["SkillId"] = true, nil }

function asserts.AssertApproveSkillRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApproveSkillRequest to be of type 'table'")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApproveSkillRequest[k], "ApproveSkillRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApproveSkillRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillId [SkillId] <p>The unique identifier of the skill.</p>
-- Required key: SkillId
-- @return ApproveSkillRequest structure as a key-value pair table
function M.ApproveSkillRequest(args)
	assert(args, "You must provide an argument table when creating ApproveSkillRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertApproveSkillRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConferencePreference = { ["DefaultConferenceProviderArn"] = true, nil }

function asserts.AssertConferencePreference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConferencePreference to be of type 'table'")
	if struct["DefaultConferenceProviderArn"] then asserts.AssertArn(struct["DefaultConferenceProviderArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConferencePreference[k], "ConferencePreference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConferencePreference
-- <p>The default conference provider that is used if no other scheduled meetings are detected.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultConferenceProviderArn [Arn] <p>The ARN of the default conference provider.</p>
-- @return ConferencePreference structure as a key-value pair table
function M.ConferencePreference(args)
	assert(args, "You must provide an argument table when creating ConferencePreference")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefaultConferenceProviderArn"] = args["DefaultConferenceProviderArn"],
	}
	asserts.AssertConferencePreference(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSkillsRequest = { ["NextToken"] = true, ["SkillGroupArn"] = true, ["MaxResults"] = true, ["SkillType"] = true, ["EnablementType"] = true, nil }

function asserts.AssertListSkillsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSkillsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	if struct["MaxResults"] then asserts.AssertSkillListMaxResults(struct["MaxResults"]) end
	if struct["SkillType"] then asserts.AssertSkillTypeFilter(struct["SkillType"]) end
	if struct["EnablementType"] then asserts.AssertEnablementTypeFilter(struct["EnablementType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSkillsRequest[k], "ListSkillsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSkillsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>. Required.</p>
-- * SkillGroupArn [Arn] <p>The ARN of the skill group for which to list enabled skills. Required.</p>
-- * MaxResults [SkillListMaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved. Required.</p>
-- * SkillType [SkillTypeFilter] <p>Whether the skill is publicly available or is a private skill.</p>
-- * EnablementType [EnablementTypeFilter] <p>Whether the skill is enabled under the user's account, or if it requires linking to be used.</p>
-- @return ListSkillsRequest structure as a key-value pair table
function M.ListSkillsRequest(args)
	assert(args, "You must provide an argument table when creating ListSkillsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SkillGroupArn"] = args["SkillGroupArn"],
		["MaxResults"] = args["MaxResults"],
		["SkillType"] = args["SkillType"],
		["EnablementType"] = args["EnablementType"],
	}
	asserts.AssertListSkillsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Device = { ["DeviceName"] = true, ["MacAddress"] = true, ["DeviceSerialNumber"] = true, ["DeviceArn"] = true, ["DeviceStatus"] = true, ["SoftwareVersion"] = true, ["DeviceType"] = true, ["RoomArn"] = true, ["DeviceStatusInfo"] = true, nil }

function asserts.AssertDevice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Device to be of type 'table'")
	if struct["DeviceName"] then asserts.AssertDeviceName(struct["DeviceName"]) end
	if struct["MacAddress"] then asserts.AssertMacAddress(struct["MacAddress"]) end
	if struct["DeviceSerialNumber"] then asserts.AssertDeviceSerialNumber(struct["DeviceSerialNumber"]) end
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	if struct["DeviceStatus"] then asserts.AssertDeviceStatus(struct["DeviceStatus"]) end
	if struct["SoftwareVersion"] then asserts.AssertSoftwareVersion(struct["SoftwareVersion"]) end
	if struct["DeviceType"] then asserts.AssertDeviceType(struct["DeviceType"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["DeviceStatusInfo"] then asserts.AssertDeviceStatusInfo(struct["DeviceStatusInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.Device[k], "Device contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Device
-- <p>A device with attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceName [DeviceName] <p>The name of a device.</p>
-- * MacAddress [MacAddress] <p>The MAC address of a device.</p>
-- * DeviceSerialNumber [DeviceSerialNumber] <p>The serial number of a device.</p>
-- * DeviceArn [Arn] <p>The ARN of a device.</p>
-- * DeviceStatus [DeviceStatus] <p>The status of a device. If the status is not READY, check the DeviceStatusInfo value for details.</p>
-- * SoftwareVersion [SoftwareVersion] <p>The software version of a device.</p>
-- * DeviceType [DeviceType] <p>The type of a device.</p>
-- * RoomArn [Arn] <p>The room ARN of a device.</p>
-- * DeviceStatusInfo [DeviceStatusInfo] <p>Detailed information about a device's status.</p>
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
		["DeviceName"] = args["DeviceName"],
		["MacAddress"] = args["MacAddress"],
		["DeviceSerialNumber"] = args["DeviceSerialNumber"],
		["DeviceArn"] = args["DeviceArn"],
		["DeviceStatus"] = args["DeviceStatus"],
		["SoftwareVersion"] = args["SoftwareVersion"],
		["DeviceType"] = args["DeviceType"],
		["RoomArn"] = args["RoomArn"],
		["DeviceStatusInfo"] = args["DeviceStatusInfo"],
	}
	asserts.AssertDevice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceResponse = { nil }

function asserts.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceResponse[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provide an argument table when creating UntagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartDeviceSyncRequest = { ["RoomArn"] = true, ["DeviceArn"] = true, ["Features"] = true, nil }

function asserts.AssertStartDeviceSyncRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartDeviceSyncRequest to be of type 'table'")
	assert(struct["Features"], "Expected key Features to exist in table")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["DeviceArn"] then asserts.AssertArn(struct["DeviceArn"]) end
	if struct["Features"] then asserts.AssertFeatures(struct["Features"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartDeviceSyncRequest[k], "StartDeviceSyncRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartDeviceSyncRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The ARN of the room with which the device to sync is associated. Required.</p>
-- * DeviceArn [Arn] <p>The ARN of the device to sync. Required.</p>
-- * Features [Features] <p>Request structure to start the device sync. Required.</p>
-- Required key: Features
-- @return StartDeviceSyncRequest structure as a key-value pair table
function M.StartDeviceSyncRequest(args)
	assert(args, "You must provide an argument table when creating StartDeviceSyncRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
		["DeviceArn"] = args["DeviceArn"],
		["Features"] = args["Features"],
	}
	asserts.AssertStartDeviceSyncRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutConferencePreferenceResponse = { nil }

function asserts.AssertPutConferencePreferenceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutConferencePreferenceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutConferencePreferenceResponse[k], "PutConferencePreferenceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutConferencePreferenceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutConferencePreferenceResponse structure as a key-value pair table
function M.PutConferencePreferenceResponse(args)
	assert(args, "You must provide an argument table when creating PutConferencePreferenceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutConferencePreferenceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateSkillWithSkillGroupResponse = { nil }

function asserts.AssertAssociateSkillWithSkillGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateSkillWithSkillGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateSkillWithSkillGroupResponse[k], "AssociateSkillWithSkillGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateSkillWithSkillGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateSkillWithSkillGroupResponse structure as a key-value pair table
function M.AssociateSkillWithSkillGroupResponse(args)
	assert(args, "You must provide an argument table when creating AssociateSkillWithSkillGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateSkillWithSkillGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListConferenceProvidersRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListConferenceProvidersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListConferenceProvidersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListConferenceProvidersRequest[k], "ListConferenceProvidersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListConferenceProvidersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The tokens used for pagination.</p>
-- * MaxResults [MaxResults] <p>The maximum number of conference providers to be returned, per paginated calls.</p>
-- @return ListConferenceProvidersRequest structure as a key-value pair table
function M.ListConferenceProvidersRequest(args)
	assert(args, "You must provide an argument table when creating ListConferenceProvidersRequest")
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
	asserts.AssertListConferenceProvidersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSmartHomeApplianceDiscoveryRequest = { ["RoomArn"] = true, nil }

function asserts.AssertStartSmartHomeApplianceDiscoveryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSmartHomeApplianceDiscoveryRequest to be of type 'table'")
	assert(struct["RoomArn"], "Expected key RoomArn to exist in table")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSmartHomeApplianceDiscoveryRequest[k], "StartSmartHomeApplianceDiscoveryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSmartHomeApplianceDiscoveryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The room where smart home appliance discovery was initiated.</p>
-- Required key: RoomArn
-- @return StartSmartHomeApplianceDiscoveryRequest structure as a key-value pair table
function M.StartSmartHomeApplianceDiscoveryRequest(args)
	assert(args, "You must provide an argument table when creating StartSmartHomeApplianceDiscoveryRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
	}
	asserts.AssertStartSmartHomeApplianceDiscoveryRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchProfilesResponse = { ["TotalCount"] = true, ["NextToken"] = true, ["Profiles"] = true, nil }

function asserts.AssertSearchProfilesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProfilesResponse to be of type 'table'")
	if struct["TotalCount"] then asserts.AssertTotalCount(struct["TotalCount"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Profiles"] then asserts.AssertProfileDataList(struct["Profiles"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchProfilesResponse[k], "SearchProfilesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProfilesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalCount [TotalCount] <p>The total number of room profiles returned.</p>
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- * Profiles [ProfileDataList] <p>The profiles that meet the specified set of filter criteria, in sort order.</p>
-- @return SearchProfilesResponse structure as a key-value pair table
function M.SearchProfilesResponse(args)
	assert(args, "You must provide an argument table when creating SearchProfilesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalCount"] = args["TotalCount"],
		["NextToken"] = args["NextToken"],
		["Profiles"] = args["Profiles"],
	}
	asserts.AssertSearchProfilesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Filter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Filter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertFilterValueList(struct["Values"]) end
	if struct["Key"] then asserts.AssertFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Filter[k], "Filter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Filter
-- <p>A filter name and value pair that is used to return a more specific list of results. Filters can be used to match a set of resources by various criteria.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [FilterValueList] <p>The values of a filter.</p>
-- * Key [FilterKey] <p>The key of a filter.</p>
-- Required key: Key
-- Required key: Values
-- @return Filter structure as a key-value pair table
function M.Filter(args)
	assert(args, "You must provide an argument table when creating Filter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeveloperInfo = { ["Url"] = true, ["PrivacyPolicy"] = true, ["Email"] = true, ["DeveloperName"] = true, nil }

function asserts.AssertDeveloperInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeveloperInfo to be of type 'table'")
	if struct["Url"] then asserts.AssertUrl(struct["Url"]) end
	if struct["PrivacyPolicy"] then asserts.AssertPrivacyPolicy(struct["PrivacyPolicy"]) end
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	if struct["DeveloperName"] then asserts.AssertDeveloperName(struct["DeveloperName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeveloperInfo[k], "DeveloperInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeveloperInfo
-- <p>The details about the developer that published the skill.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [Url] <p>The website of the developer.</p>
-- * PrivacyPolicy [PrivacyPolicy] <p>The URL of the privacy policy.</p>
-- * Email [Email] <p>The email of the developer.</p>
-- * DeveloperName [DeveloperName] <p>The name of the developer.</p>
-- @return DeveloperInfo structure as a key-value pair table
function M.DeveloperInfo(args)
	assert(args, "You must provide an argument table when creating DeveloperInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["PrivacyPolicy"] = args["PrivacyPolicy"],
		["Email"] = args["Email"],
		["DeveloperName"] = args["DeveloperName"],
	}
	asserts.AssertDeveloperInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RevokeInvitationResponse = { nil }

function asserts.AssertRevokeInvitationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RevokeInvitationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RevokeInvitationResponse[k], "RevokeInvitationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RevokeInvitationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RevokeInvitationResponse structure as a key-value pair table
function M.RevokeInvitationResponse(args)
	assert(args, "You must provide an argument table when creating RevokeInvitationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRevokeInvitationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSkillGroupResponse = { ["SkillGroup"] = true, nil }

function asserts.AssertGetSkillGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSkillGroupResponse to be of type 'table'")
	if struct["SkillGroup"] then asserts.AssertSkillGroup(struct["SkillGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSkillGroupResponse[k], "GetSkillGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSkillGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroup [SkillGroup] <p>The details of the skill group requested. Required.</p>
-- @return GetSkillGroupResponse structure as a key-value pair table
function M.GetSkillGroupResponse(args)
	assert(args, "You must provide an argument table when creating GetSkillGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroup"] = args["SkillGroup"],
	}
	asserts.AssertGetSkillGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserRequest = { ["FirstName"] = true, ["Tags"] = true, ["LastName"] = true, ["UserId"] = true, ["ClientRequestToken"] = true, ["Email"] = true, nil }

function asserts.AssertCreateUserRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserRequest to be of type 'table'")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["FirstName"] then asserts.Assertuser_FirstName(struct["FirstName"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	if struct["LastName"] then asserts.Assertuser_LastName(struct["LastName"]) end
	if struct["UserId"] then asserts.Assertuser_UserId(struct["UserId"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserRequest[k], "CreateUserRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FirstName [user_FirstName] <p>The first name for the user.</p>
-- * Tags [TagList] <p>The tags for the user.</p>
-- * LastName [user_LastName] <p>The last name for the user.</p>
-- * UserId [user_UserId] <p>The ARN for the user.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique, user-specified identifier for this request that ensures idempotency. </p>
-- * Email [Email] <p>The email address for the user.</p>
-- Required key: UserId
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
		["FirstName"] = args["FirstName"],
		["Tags"] = args["Tags"],
		["LastName"] = args["LastName"],
		["UserId"] = args["UserId"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["Email"] = args["Email"],
	}
	asserts.AssertCreateUserRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PSTNDialIn = { ["OneClickIdDelay"] = true, ["PhoneNumber"] = true, ["OneClickPinDelay"] = true, ["CountryCode"] = true, nil }

function asserts.AssertPSTNDialIn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PSTNDialIn to be of type 'table'")
	assert(struct["CountryCode"], "Expected key CountryCode to exist in table")
	assert(struct["PhoneNumber"], "Expected key PhoneNumber to exist in table")
	assert(struct["OneClickIdDelay"], "Expected key OneClickIdDelay to exist in table")
	assert(struct["OneClickPinDelay"], "Expected key OneClickPinDelay to exist in table")
	if struct["OneClickIdDelay"] then asserts.AssertOneClickIdDelay(struct["OneClickIdDelay"]) end
	if struct["PhoneNumber"] then asserts.AssertPhoneNumber(struct["PhoneNumber"]) end
	if struct["OneClickPinDelay"] then asserts.AssertOneClickPinDelay(struct["OneClickPinDelay"]) end
	if struct["CountryCode"] then asserts.AssertCountryCode(struct["CountryCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.PSTNDialIn[k], "PSTNDialIn contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PSTNDialIn
-- <p>The information for public switched telephone network (PSTN) conferencing.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OneClickIdDelay [OneClickIdDelay] <p>The delay duration before Alexa enters the conference ID with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>
-- * PhoneNumber [PhoneNumber] <p>The phone number to call to join the conference.</p>
-- * OneClickPinDelay [OneClickPinDelay] <p>The delay duration before Alexa enters the conference pin with dual-tone multi-frequency (DTMF). Each number on the dial pad corresponds to a DTMF tone, which is how we send data over the telephone network.</p>
-- * CountryCode [CountryCode] <p>The zip code.</p>
-- Required key: CountryCode
-- Required key: PhoneNumber
-- Required key: OneClickIdDelay
-- Required key: OneClickPinDelay
-- @return PSTNDialIn structure as a key-value pair table
function M.PSTNDialIn(args)
	assert(args, "You must provide an argument table when creating PSTNDialIn")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OneClickIdDelay"] = args["OneClickIdDelay"],
		["PhoneNumber"] = args["PhoneNumber"],
		["OneClickPinDelay"] = args["OneClickPinDelay"],
		["CountryCode"] = args["CountryCode"],
	}
	asserts.AssertPSTNDialIn(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSkillsStoreCategoriesRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSkillsStoreCategoriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSkillsStoreCategoriesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSkillsStoreCategoriesRequest[k], "ListSkillsStoreCategoriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSkillsStoreCategoriesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The tokens used for pagination.</p>
-- * MaxResults [MaxResults] <p>The maximum number of categories returned, per paginated calls.</p>
-- @return ListSkillsStoreCategoriesRequest structure as a key-value pair table
function M.ListSkillsStoreCategoriesRequest(args)
	assert(args, "You must provide an argument table when creating ListSkillsStoreCategoriesRequest")
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
	asserts.AssertListSkillsStoreCategoriesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchContactsResponse = { ["TotalCount"] = true, ["NextToken"] = true, ["Contacts"] = true, nil }

function asserts.AssertSearchContactsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchContactsResponse to be of type 'table'")
	if struct["TotalCount"] then asserts.AssertTotalCount(struct["TotalCount"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Contacts"] then asserts.AssertContactDataList(struct["Contacts"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchContactsResponse[k], "SearchContactsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchContactsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalCount [TotalCount] <p>The total number of contacts returned.</p>
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- * Contacts [ContactDataList] <p>The contacts that meet the specified set of filter criteria, in sort order.</p>
-- @return SearchContactsResponse structure as a key-value pair table
function M.SearchContactsResponse(args)
	assert(args, "You must provide an argument table when creating SearchContactsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalCount"] = args["TotalCount"],
		["NextToken"] = args["NextToken"],
		["Contacts"] = args["Contacts"],
	}
	asserts.AssertSearchContactsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAddressBookRequest = { ["ClientRequestToken"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertCreateAddressBookRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAddressBookRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["Name"] then asserts.AssertAddressBookName(struct["Name"]) end
	if struct["Description"] then asserts.AssertAddressBookDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAddressBookRequest[k], "CreateAddressBookRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAddressBookRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientRequestToken [ClientRequestToken] <p>A unique, user-specified identifier for the request that ensures idempotency.</p>
-- * Name [AddressBookName] <p>The name of the address book.</p>
-- * Description [AddressBookDescription] <p>The description of the address book.</p>
-- Required key: Name
-- @return CreateAddressBookRequest structure as a key-value pair table
function M.CreateAddressBookRequest(args)
	assert(args, "You must provide an argument table when creating CreateAddressBookRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientRequestToken"] = args["ClientRequestToken"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateAddressBookRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRoomResponse = { ["Room"] = true, nil }

function asserts.AssertGetRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRoomResponse to be of type 'table'")
	if struct["Room"] then asserts.AssertRoom(struct["Room"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRoomResponse[k], "GetRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Room [Room] <p>The details of the room requested.</p>
-- @return GetRoomResponse structure as a key-value pair table
function M.GetRoomResponse(args)
	assert(args, "You must provide an argument table when creating GetRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Room"] = args["Room"],
	}
	asserts.AssertGetRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSkillGroupRequest = { ["SkillGroupArn"] = true, nil }

function asserts.AssertDeleteSkillGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSkillGroupRequest to be of type 'table'")
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSkillGroupRequest[k], "DeleteSkillGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSkillGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupArn [Arn] <p>The ARN of the skill group to delete. Required.</p>
-- @return DeleteSkillGroupRequest structure as a key-value pair table
function M.DeleteSkillGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSkillGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupArn"] = args["SkillGroupArn"],
	}
	asserts.AssertDeleteSkillGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchSkillGroupsResponse = { ["TotalCount"] = true, ["NextToken"] = true, ["SkillGroups"] = true, nil }

function asserts.AssertSearchSkillGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchSkillGroupsResponse to be of type 'table'")
	if struct["TotalCount"] then asserts.AssertTotalCount(struct["TotalCount"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SkillGroups"] then asserts.AssertSkillGroupDataList(struct["SkillGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchSkillGroupsResponse[k], "SearchSkillGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchSkillGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalCount [TotalCount] <p>The total number of skill groups returned.</p>
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- * SkillGroups [SkillGroupDataList] <p>The skill groups that meet the filter criteria, in sort order.</p>
-- @return SearchSkillGroupsResponse structure as a key-value pair table
function M.SearchSkillGroupsResponse(args)
	assert(args, "You must provide an argument table when creating SearchSkillGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalCount"] = args["TotalCount"],
		["NextToken"] = args["NextToken"],
		["SkillGroups"] = args["SkillGroups"],
	}
	asserts.AssertSearchSkillGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SmartHomeAppliance = { ["FriendlyName"] = true, ["Description"] = true, ["ManufacturerName"] = true, nil }

function asserts.AssertSmartHomeAppliance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SmartHomeAppliance to be of type 'table'")
	if struct["FriendlyName"] then asserts.AssertApplianceFriendlyName(struct["FriendlyName"]) end
	if struct["Description"] then asserts.AssertApplianceDescription(struct["Description"]) end
	if struct["ManufacturerName"] then asserts.AssertApplianceManufacturerName(struct["ManufacturerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SmartHomeAppliance[k], "SmartHomeAppliance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SmartHomeAppliance
-- <p>A smart home appliance that can connect to a central system. Any domestic device can be a smart appliance. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FriendlyName [ApplianceFriendlyName] <p>The friendly name of the smart home appliance.</p>
-- * Description [ApplianceDescription] <p>The description of the smart home appliance.</p>
-- * ManufacturerName [ApplianceManufacturerName] <p>The name of the manufacturer of the smart home appliance.</p>
-- @return SmartHomeAppliance structure as a key-value pair table
function M.SmartHomeAppliance(args)
	assert(args, "You must provide an argument table when creating SmartHomeAppliance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FriendlyName"] = args["FriendlyName"],
		["Description"] = args["Description"],
		["ManufacturerName"] = args["ManufacturerName"],
	}
	asserts.AssertSmartHomeAppliance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SkillDetails = { ["GenericKeywords"] = true, ["ProductDescription"] = true, ["NewInThisVersionBulletPoints"] = true, ["SkillTypes"] = true, ["ReleaseDate"] = true, ["InvocationPhrase"] = true, ["EndUserLicenseAgreement"] = true, ["DeveloperInfo"] = true, ["Reviews"] = true, ["BulletPoints"] = true, nil }

function asserts.AssertSkillDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SkillDetails to be of type 'table'")
	if struct["GenericKeywords"] then asserts.AssertGenericKeywords(struct["GenericKeywords"]) end
	if struct["ProductDescription"] then asserts.AssertProductDescription(struct["ProductDescription"]) end
	if struct["NewInThisVersionBulletPoints"] then asserts.AssertNewInThisVersionBulletPoints(struct["NewInThisVersionBulletPoints"]) end
	if struct["SkillTypes"] then asserts.AssertSkillTypes(struct["SkillTypes"]) end
	if struct["ReleaseDate"] then asserts.AssertReleaseDate(struct["ReleaseDate"]) end
	if struct["InvocationPhrase"] then asserts.AssertInvocationPhrase(struct["InvocationPhrase"]) end
	if struct["EndUserLicenseAgreement"] then asserts.AssertEndUserLicenseAgreement(struct["EndUserLicenseAgreement"]) end
	if struct["DeveloperInfo"] then asserts.AssertDeveloperInfo(struct["DeveloperInfo"]) end
	if struct["Reviews"] then asserts.AssertReviews(struct["Reviews"]) end
	if struct["BulletPoints"] then asserts.AssertBulletPoints(struct["BulletPoints"]) end
	for k,_ in pairs(struct) do
		assert(keys.SkillDetails[k], "SkillDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SkillDetails
-- <p>Granular information about the skill.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GenericKeywords [GenericKeywords] <p>The generic keywords associated with the skill that can be used to find a skill.</p>
-- * ProductDescription [ProductDescription] <p>The description of the product.</p>
-- * NewInThisVersionBulletPoints [NewInThisVersionBulletPoints] <p>The updates added in bullet points.</p>
-- * SkillTypes [SkillTypes] <p>The types of skills.</p>
-- * ReleaseDate [ReleaseDate] <p>The date when the skill was released.</p>
-- * InvocationPhrase [InvocationPhrase] <p>The phrase used to trigger the skill.</p>
-- * EndUserLicenseAgreement [EndUserLicenseAgreement] <p>The URL of the end user license agreement.</p>
-- * DeveloperInfo [DeveloperInfo] <p>The details about the developer that published the skill.</p>
-- * Reviews [Reviews] <p>The list of reviews for the skill, including Key and Value pair.</p>
-- * BulletPoints [BulletPoints] <p>The details about what the skill supports organized as bullet points.</p>
-- @return SkillDetails structure as a key-value pair table
function M.SkillDetails(args)
	assert(args, "You must provide an argument table when creating SkillDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GenericKeywords"] = args["GenericKeywords"],
		["ProductDescription"] = args["ProductDescription"],
		["NewInThisVersionBulletPoints"] = args["NewInThisVersionBulletPoints"],
		["SkillTypes"] = args["SkillTypes"],
		["ReleaseDate"] = args["ReleaseDate"],
		["InvocationPhrase"] = args["InvocationPhrase"],
		["EndUserLicenseAgreement"] = args["EndUserLicenseAgreement"],
		["DeveloperInfo"] = args["DeveloperInfo"],
		["Reviews"] = args["Reviews"],
		["BulletPoints"] = args["BulletPoints"],
	}
	asserts.AssertSkillDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RejectSkillResponse = { nil }

function asserts.AssertRejectSkillResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectSkillResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RejectSkillResponse[k], "RejectSkillResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectSkillResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RejectSkillResponse structure as a key-value pair table
function M.RejectSkillResponse(args)
	assert(args, "You must provide an argument table when creating RejectSkillResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRejectSkillResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateContactResponse = { nil }

function asserts.AssertUpdateContactResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateContactResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateContactResponse[k], "UpdateContactResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateContactResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateContactResponse structure as a key-value pair table
function M.UpdateContactResponse(args)
	assert(args, "You must provide an argument table when creating UpdateContactResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateContactResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchContactsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertSearchContactsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchContactsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["SortCriteria"] then asserts.AssertSortList(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchContactsRequest[k], "SearchContactsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchContactsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response only includes results beyond the token, up to the value specified by MaxResults.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
-- * Filters [FilterList] <p>The filters to use to list a specified set of address books. The supported filter keys are DisplayName, FirstName, LastName, and AddressBookArns.</p>
-- * SortCriteria [SortList] <p>The sort order to use in listing the specified set of contacts. The supported sort keys are DisplayName, FirstName, and LastName.</p>
-- @return SearchContactsRequest structure as a key-value pair table
function M.SearchContactsRequest(args)
	assert(args, "You must provide an argument table when creating SearchContactsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertSearchContactsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSkillGroupResponse = { ["SkillGroupArn"] = true, nil }

function asserts.AssertCreateSkillGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSkillGroupResponse to be of type 'table'")
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSkillGroupResponse[k], "CreateSkillGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSkillGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupArn [Arn] <p>The ARN of the newly created skill group in the response.</p>
-- @return CreateSkillGroupResponse structure as a key-value pair table
function M.CreateSkillGroupResponse(args)
	assert(args, "You must provide an argument table when creating CreateSkillGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupArn"] = args["SkillGroupArn"],
	}
	asserts.AssertCreateSkillGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRoomSkillParameterResponse = { nil }

function asserts.AssertDeleteRoomSkillParameterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRoomSkillParameterResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteRoomSkillParameterResponse[k], "DeleteRoomSkillParameterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRoomSkillParameterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteRoomSkillParameterResponse structure as a key-value pair table
function M.DeleteRoomSkillParameterResponse(args)
	assert(args, "You must provide an argument table when creating DeleteRoomSkillParameterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteRoomSkillParameterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SkillSummary = { ["SupportsLinking"] = true, ["SkillName"] = true, ["EnablementType"] = true, ["SkillType"] = true, ["SkillId"] = true, nil }

function asserts.AssertSkillSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SkillSummary to be of type 'table'")
	if struct["SupportsLinking"] then asserts.Assertboolean(struct["SupportsLinking"]) end
	if struct["SkillName"] then asserts.AssertSkillName(struct["SkillName"]) end
	if struct["EnablementType"] then asserts.AssertEnablementType(struct["EnablementType"]) end
	if struct["SkillType"] then asserts.AssertSkillType(struct["SkillType"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SkillSummary[k], "SkillSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SkillSummary
-- <p>The summary of skills.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SupportsLinking [boolean] <p>Linking support for a skill.</p>
-- * SkillName [SkillName] <p>The name of the skill.</p>
-- * EnablementType [EnablementType] <p>Whether the skill is enabled under the user's account, or if it requires linking to be used.</p>
-- * SkillType [SkillType] <p>Whether the skill is publicly available or is a private skill.</p>
-- * SkillId [SkillId] <p>The ARN of the skill summary.</p>
-- @return SkillSummary structure as a key-value pair table
function M.SkillSummary(args)
	assert(args, "You must provide an argument table when creating SkillSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SupportsLinking"] = args["SupportsLinking"],
		["SkillName"] = args["SkillName"],
		["EnablementType"] = args["EnablementType"],
		["SkillType"] = args["SkillType"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertSkillSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteContactResponse = { nil }

function asserts.AssertDeleteContactResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteContactResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteContactResponse[k], "DeleteContactResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteContactResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteContactResponse structure as a key-value pair table
function M.DeleteContactResponse(args)
	assert(args, "You must provide an argument table when creating DeleteContactResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteContactResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutSkillAuthorizationResponse = { nil }

function asserts.AssertPutSkillAuthorizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSkillAuthorizationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutSkillAuthorizationResponse[k], "PutSkillAuthorizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSkillAuthorizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutSkillAuthorizationResponse structure as a key-value pair table
function M.PutSkillAuthorizationResponse(args)
	assert(args, "You must provide an argument table when creating PutSkillAuthorizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutSkillAuthorizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserData = { ["UserArn"] = true, ["FirstName"] = true, ["LastName"] = true, ["EnrollmentId"] = true, ["EnrollmentStatus"] = true, ["Email"] = true, nil }

function asserts.AssertUserData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserData to be of type 'table'")
	if struct["UserArn"] then asserts.AssertArn(struct["UserArn"]) end
	if struct["FirstName"] then asserts.Assertuser_FirstName(struct["FirstName"]) end
	if struct["LastName"] then asserts.Assertuser_LastName(struct["LastName"]) end
	if struct["EnrollmentId"] then asserts.AssertEnrollmentId(struct["EnrollmentId"]) end
	if struct["EnrollmentStatus"] then asserts.AssertEnrollmentStatus(struct["EnrollmentStatus"]) end
	if struct["Email"] then asserts.AssertEmail(struct["Email"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserData[k], "UserData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserData
-- <p>Information related to a user.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserArn [Arn] <p>The ARN of a user.</p>
-- * FirstName [user_FirstName] <p>The first name of a user.</p>
-- * LastName [user_LastName] <p>The last name of a user.</p>
-- * EnrollmentId [EnrollmentId] <p>The enrollment ARN of a user.</p>
-- * EnrollmentStatus [EnrollmentStatus] <p>The enrollment status of a user.</p>
-- * Email [Email] <p>The email of a user.</p>
-- @return UserData structure as a key-value pair table
function M.UserData(args)
	assert(args, "You must provide an argument table when creating UserData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserArn"] = args["UserArn"],
		["FirstName"] = args["FirstName"],
		["LastName"] = args["LastName"],
		["EnrollmentId"] = args["EnrollmentId"],
		["EnrollmentStatus"] = args["EnrollmentStatus"],
		["Email"] = args["Email"],
	}
	asserts.AssertUserData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSkillsResponse = { ["NextToken"] = true, ["SkillSummaries"] = true, nil }

function asserts.AssertListSkillsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSkillsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["SkillSummaries"] then asserts.AssertSkillSummaryList(struct["SkillSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSkillsResponse[k], "ListSkillsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSkillsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- * SkillSummaries [SkillSummaryList] <p>The list of enabled skills requested. Required.</p>
-- @return ListSkillsResponse structure as a key-value pair table
function M.ListSkillsResponse(args)
	assert(args, "You must provide an argument table when creating ListSkillsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["SkillSummaries"] = args["SkillSummaries"],
	}
	asserts.AssertListSkillsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDeviceEventsResponse = { ["DeviceEvents"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDeviceEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDeviceEventsResponse to be of type 'table'")
	if struct["DeviceEvents"] then asserts.AssertDeviceEventList(struct["DeviceEvents"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDeviceEventsResponse[k], "ListDeviceEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDeviceEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceEvents [DeviceEventList] <p>The device events requested for the device ARN.</p>
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- @return ListDeviceEventsResponse structure as a key-value pair table
function M.ListDeviceEventsResponse(args)
	assert(args, "You must provide an argument table when creating ListDeviceEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceEvents"] = args["DeviceEvents"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDeviceEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchUsersRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertSearchUsersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchUsersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["SortCriteria"] then asserts.AssertSortList(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchUsersRequest[k], "SearchUsersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchUsersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>. Required.</p>
-- * Filters [FilterList] <p>The filters to use for listing a specific set of users. Required. Supported filter keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved. Required.</p>
-- * SortCriteria [SortList] <p>The sort order to use in listing the filtered set of users. Required. Supported sort keys are UserId, FirstName, LastName, Email, and EnrollmentStatus.</p>
-- @return SearchUsersRequest structure as a key-value pair table
function M.SearchUsersRequest(args)
	assert(args, "You must provide an argument table when creating SearchUsersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
		["MaxResults"] = args["MaxResults"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertSearchUsersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResolveRoomResponse = { ["RoomName"] = true, ["RoomArn"] = true, ["RoomSkillParameters"] = true, nil }

function asserts.AssertResolveRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResolveRoomResponse to be of type 'table'")
	if struct["RoomName"] then asserts.AssertRoomName(struct["RoomName"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["RoomSkillParameters"] then asserts.AssertRoomSkillParameters(struct["RoomSkillParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResolveRoomResponse[k], "ResolveRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResolveRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomName [RoomName] <p>The name of the room from which the skill request was invoked.</p>
-- * RoomArn [Arn] <p>The ARN of the room from which the skill request was invoked.</p>
-- * RoomSkillParameters [RoomSkillParameters] <p>Response to get the room profile request. Required.</p>
-- @return ResolveRoomResponse structure as a key-value pair table
function M.ResolveRoomResponse(args)
	assert(args, "You must provide an argument table when creating ResolveRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomName"] = args["RoomName"],
		["RoomArn"] = args["RoomArn"],
		["RoomSkillParameters"] = args["RoomSkillParameters"],
	}
	asserts.AssertResolveRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Profile = { ["TemperatureUnit"] = true, ["PSTNEnabled"] = true, ["Address"] = true, ["AddressBookArn"] = true, ["DistanceUnit"] = true, ["ProfileArn"] = true, ["MaxVolumeLimit"] = true, ["SetupModeDisabled"] = true, ["Timezone"] = true, ["WakeWord"] = true, ["ProfileName"] = true, ["IsDefault"] = true, nil }

function asserts.AssertProfile(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Profile to be of type 'table'")
	if struct["TemperatureUnit"] then asserts.AssertTemperatureUnit(struct["TemperatureUnit"]) end
	if struct["PSTNEnabled"] then asserts.AssertBoolean(struct["PSTNEnabled"]) end
	if struct["Address"] then asserts.AssertAddress(struct["Address"]) end
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	if struct["DistanceUnit"] then asserts.AssertDistanceUnit(struct["DistanceUnit"]) end
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	if struct["MaxVolumeLimit"] then asserts.AssertMaxVolumeLimit(struct["MaxVolumeLimit"]) end
	if struct["SetupModeDisabled"] then asserts.AssertBoolean(struct["SetupModeDisabled"]) end
	if struct["Timezone"] then asserts.AssertTimezone(struct["Timezone"]) end
	if struct["WakeWord"] then asserts.AssertWakeWord(struct["WakeWord"]) end
	if struct["ProfileName"] then asserts.AssertProfileName(struct["ProfileName"]) end
	if struct["IsDefault"] then asserts.AssertBoolean(struct["IsDefault"]) end
	for k,_ in pairs(struct) do
		assert(keys.Profile[k], "Profile contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Profile
-- <p>A room profile with attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemperatureUnit [TemperatureUnit] <p>The temperature unit of a room profile.</p>
-- * PSTNEnabled [Boolean] <p>The PSTN setting of a room profile.</p>
-- * Address [Address] <p>The address of a room profile.</p>
-- * AddressBookArn [Arn] <p>The ARN of the address book.</p>
-- * DistanceUnit [DistanceUnit] <p>The distance unit of a room profile.</p>
-- * ProfileArn [Arn] <p>The ARN of a room profile.</p>
-- * MaxVolumeLimit [MaxVolumeLimit] <p>The max volume limit of a room profile.</p>
-- * SetupModeDisabled [Boolean] <p>The setup mode of a room profile.</p>
-- * Timezone [Timezone] <p>The time zone of a room profile.</p>
-- * WakeWord [WakeWord] <p>The wake word of a room profile.</p>
-- * ProfileName [ProfileName] <p>The name of a room profile.</p>
-- * IsDefault [Boolean] <p>Retrieves if the profile is default or not.</p>
-- @return Profile structure as a key-value pair table
function M.Profile(args)
	assert(args, "You must provide an argument table when creating Profile")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemperatureUnit"] = args["TemperatureUnit"],
		["PSTNEnabled"] = args["PSTNEnabled"],
		["Address"] = args["Address"],
		["AddressBookArn"] = args["AddressBookArn"],
		["DistanceUnit"] = args["DistanceUnit"],
		["ProfileArn"] = args["ProfileArn"],
		["MaxVolumeLimit"] = args["MaxVolumeLimit"],
		["SetupModeDisabled"] = args["SetupModeDisabled"],
		["Timezone"] = args["Timezone"],
		["WakeWord"] = args["WakeWord"],
		["ProfileName"] = args["ProfileName"],
		["IsDefault"] = args["IsDefault"],
	}
	asserts.AssertProfile(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceResponse = { nil }

function asserts.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagResourceResponse[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provide an argument table when creating TagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchSkillGroupsRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertSearchSkillGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchSkillGroupsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["SortCriteria"] then asserts.AssertSortList(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchSkillGroupsRequest[k], "SearchSkillGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchSkillGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>. Required.</p>
-- * Filters [FilterList] <p>The filters to use to list a specified set of skill groups. The supported filter key is SkillGroupName. </p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved. </p>
-- * SortCriteria [SortList] <p>The sort order to use in listing the specified set of skill groups. The supported sort key is SkillGroupName. </p>
-- @return SearchSkillGroupsRequest structure as a key-value pair table
function M.SearchSkillGroupsRequest(args)
	assert(args, "You must provide an argument table when creating SearchSkillGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
		["MaxResults"] = args["MaxResults"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertSearchSkillGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateContactWithAddressBookResponse = { nil }

function asserts.AssertAssociateContactWithAddressBookResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateContactWithAddressBookResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociateContactWithAddressBookResponse[k], "AssociateContactWithAddressBookResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateContactWithAddressBookResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociateContactWithAddressBookResponse structure as a key-value pair table
function M.AssociateContactWithAddressBookResponse(args)
	assert(args, "You must provide an argument table when creating AssociateContactWithAddressBookResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAssociateContactWithAddressBookResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateContactFromAddressBookRequest = { ["AddressBookArn"] = true, ["ContactArn"] = true, nil }

function asserts.AssertDisassociateContactFromAddressBookRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateContactFromAddressBookRequest to be of type 'table'")
	assert(struct["ContactArn"], "Expected key ContactArn to exist in table")
	assert(struct["AddressBookArn"], "Expected key AddressBookArn to exist in table")
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	if struct["ContactArn"] then asserts.AssertArn(struct["ContactArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateContactFromAddressBookRequest[k], "DisassociateContactFromAddressBookRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateContactFromAddressBookRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBookArn [Arn] <p>The ARN of the address from which to disassociate the contact.</p>
-- * ContactArn [Arn] <p>The ARN of the contact to disassociate from an address book.</p>
-- Required key: ContactArn
-- Required key: AddressBookArn
-- @return DisassociateContactFromAddressBookRequest structure as a key-value pair table
function M.DisassociateContactFromAddressBookRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateContactFromAddressBookRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBookArn"] = args["AddressBookArn"],
		["ContactArn"] = args["ContactArn"],
	}
	asserts.AssertDisassociateContactFromAddressBookRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceStatusInfo = { ["DeviceStatusDetails"] = true, ["ConnectionStatus"] = true, nil }

function asserts.AssertDeviceStatusInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceStatusInfo to be of type 'table'")
	if struct["DeviceStatusDetails"] then asserts.AssertDeviceStatusDetails(struct["DeviceStatusDetails"]) end
	if struct["ConnectionStatus"] then asserts.AssertConnectionStatus(struct["ConnectionStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceStatusInfo[k], "DeviceStatusInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceStatusInfo
-- <p>Detailed information about a device's status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceStatusDetails [DeviceStatusDetails] <p>One or more device status detail descriptions.</p>
-- * ConnectionStatus [ConnectionStatus] <p>The latest available information about the connection status of a device. </p>
-- @return DeviceStatusInfo structure as a key-value pair table
function M.DeviceStatusInfo(args)
	assert(args, "You must provide an argument table when creating DeviceStatusInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceStatusDetails"] = args["DeviceStatusDetails"],
		["ConnectionStatus"] = args["ConnectionStatus"],
	}
	asserts.AssertDeviceStatusInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RegisterAVSDeviceRequest = { ["AmazonId"] = true, ["DeviceSerialNumber"] = true, ["UserCode"] = true, ["ClientId"] = true, ["ProductId"] = true, nil }

function asserts.AssertRegisterAVSDeviceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterAVSDeviceRequest to be of type 'table'")
	assert(struct["ClientId"], "Expected key ClientId to exist in table")
	assert(struct["UserCode"], "Expected key UserCode to exist in table")
	assert(struct["ProductId"], "Expected key ProductId to exist in table")
	assert(struct["DeviceSerialNumber"], "Expected key DeviceSerialNumber to exist in table")
	assert(struct["AmazonId"], "Expected key AmazonId to exist in table")
	if struct["AmazonId"] then asserts.AssertAmazonId(struct["AmazonId"]) end
	if struct["DeviceSerialNumber"] then asserts.AssertDeviceSerialNumberForAVS(struct["DeviceSerialNumber"]) end
	if struct["UserCode"] then asserts.AssertUserCode(struct["UserCode"]) end
	if struct["ClientId"] then asserts.AssertClientId(struct["ClientId"]) end
	if struct["ProductId"] then asserts.AssertProductId(struct["ProductId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterAVSDeviceRequest[k], "RegisterAVSDeviceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterAVSDeviceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AmazonId [AmazonId] <p>The device type ID for your AVS device generated by Amazon when the OEM creates a new product on Amazon's Developer Console.</p>
-- * DeviceSerialNumber [DeviceSerialNumberForAVS] <p>The key generated by the OEM that uniquely identifies a specified instance of your AVS device.</p>
-- * UserCode [UserCode] <p>The code that is obtained after your AVS device has made a POST request to LWA as a part of the Device Authorization Request component of the OAuth code-based linking specification.</p>
-- * ClientId [ClientId] <p>The client ID of the OEM used for code-based linking authorization on an AVS device.</p>
-- * ProductId [ProductId] <p>The product ID used to identify your AVS device during authorization.</p>
-- Required key: ClientId
-- Required key: UserCode
-- Required key: ProductId
-- Required key: DeviceSerialNumber
-- Required key: AmazonId
-- @return RegisterAVSDeviceRequest structure as a key-value pair table
function M.RegisterAVSDeviceRequest(args)
	assert(args, "You must provide an argument table when creating RegisterAVSDeviceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AmazonId"] = args["AmazonId"],
		["DeviceSerialNumber"] = args["DeviceSerialNumber"],
		["UserCode"] = args["UserCode"],
		["ClientId"] = args["ClientId"],
		["ProductId"] = args["ProductId"],
	}
	asserts.AssertRegisterAVSDeviceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSkillAuthorizationResponse = { nil }

function asserts.AssertDeleteSkillAuthorizationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSkillAuthorizationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSkillAuthorizationResponse[k], "DeleteSkillAuthorizationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSkillAuthorizationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteSkillAuthorizationResponse structure as a key-value pair table
function M.DeleteSkillAuthorizationResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSkillAuthorizationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteSkillAuthorizationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchRoomsRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertSearchRoomsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchRoomsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["SortCriteria"] then asserts.AssertSortList(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchRoomsRequest[k], "SearchRoomsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchRoomsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * Filters [FilterList] <p>The filters to use to list a specified set of rooms. The supported filter keys are RoomName and ProfileName.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved. </p>
-- * SortCriteria [SortList] <p>The sort order to use in listing the specified set of rooms. The supported sort keys are RoomName and ProfileName.</p>
-- @return SearchRoomsRequest structure as a key-value pair table
function M.SearchRoomsRequest(args)
	assert(args, "You must provide an argument table when creating SearchRoomsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
		["MaxResults"] = args["MaxResults"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertSearchRoomsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Sort = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertSort(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Sort to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertSortValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertSortKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Sort[k], "Sort contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Sort
-- <p>An object representing a sort criteria. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [SortValue] <p>The sort value of a sort object.</p>
-- * Key [SortKey] <p>The sort key of a sort object.</p>
-- Required key: Key
-- Required key: Value
-- @return Sort structure as a key-value pair table
function M.Sort(args)
	assert(args, "You must provide an argument table when creating Sort")
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
	asserts.AssertSort(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateSkillGroupWithRoomRequest = { ["SkillGroupArn"] = true, ["RoomArn"] = true, nil }

function asserts.AssertAssociateSkillGroupWithRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateSkillGroupWithRoomRequest to be of type 'table'")
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateSkillGroupWithRoomRequest[k], "AssociateSkillGroupWithRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateSkillGroupWithRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupArn [Arn] <p>The ARN of the skill group to associate with a room. Required.</p>
-- * RoomArn [Arn] <p>The ARN of the room with which to associate the skill group. Required.</p>
-- @return AssociateSkillGroupWithRoomRequest structure as a key-value pair table
function M.AssociateSkillGroupWithRoomRequest(args)
	assert(args, "You must provide an argument table when creating AssociateSkillGroupWithRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupArn"] = args["SkillGroupArn"],
		["RoomArn"] = args["RoomArn"],
	}
	asserts.AssertAssociateSkillGroupWithRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Room = { ["RoomName"] = true, ["ProviderCalendarId"] = true, ["RoomArn"] = true, ["ProfileArn"] = true, ["Description"] = true, nil }

function asserts.AssertRoom(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Room to be of type 'table'")
	if struct["RoomName"] then asserts.AssertRoomName(struct["RoomName"]) end
	if struct["ProviderCalendarId"] then asserts.AssertProviderCalendarId(struct["ProviderCalendarId"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["ProfileArn"] then asserts.AssertArn(struct["ProfileArn"]) end
	if struct["Description"] then asserts.AssertRoomDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Room[k], "Room contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Room
-- <p>A room with attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomName [RoomName] <p>The name of a room.</p>
-- * ProviderCalendarId [ProviderCalendarId] <p>The provider calendar ARN of a room.</p>
-- * RoomArn [Arn] <p>The ARN of a room.</p>
-- * ProfileArn [Arn] <p>The profile ARN of a room.</p>
-- * Description [RoomDescription] <p>The description of a room.</p>
-- @return Room structure as a key-value pair table
function M.Room(args)
	assert(args, "You must provide an argument table when creating Room")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomName"] = args["RoomName"],
		["ProviderCalendarId"] = args["ProviderCalendarId"],
		["RoomArn"] = args["RoomArn"],
		["ProfileArn"] = args["ProfileArn"],
		["Description"] = args["Description"],
	}
	asserts.AssertRoom(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchRoomsResponse = { ["TotalCount"] = true, ["NextToken"] = true, ["Rooms"] = true, nil }

function asserts.AssertSearchRoomsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchRoomsResponse to be of type 'table'")
	if struct["TotalCount"] then asserts.AssertTotalCount(struct["TotalCount"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Rooms"] then asserts.AssertRoomDataList(struct["Rooms"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchRoomsResponse[k], "SearchRoomsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchRoomsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalCount [TotalCount] <p>The total number of rooms returned.</p>
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- * Rooms [RoomDataList] <p>The rooms that meet the specified set of filter criteria, in sort order.</p>
-- @return SearchRoomsResponse structure as a key-value pair table
function M.SearchRoomsResponse(args)
	assert(args, "You must provide an argument table when creating SearchRoomsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalCount"] = args["TotalCount"],
		["NextToken"] = args["NextToken"],
		["Rooms"] = args["Rooms"],
	}
	asserts.AssertSearchRoomsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddressBook = { ["AddressBookArn"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertAddressBook(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddressBook to be of type 'table'")
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	if struct["Name"] then asserts.AssertAddressBookName(struct["Name"]) end
	if struct["Description"] then asserts.AssertAddressBookDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddressBook[k], "AddressBook contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddressBook
-- <p>An address book with attributes.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBookArn [Arn] <p>The ARN of the address book.</p>
-- * Name [AddressBookName] <p>The name of the address book.</p>
-- * Description [AddressBookDescription] <p>The description of the address book.</p>
-- @return AddressBook structure as a key-value pair table
function M.AddressBook(args)
	assert(args, "You must provide an argument table when creating AddressBook")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBookArn"] = args["AddressBookArn"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertAddressBook(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSkillAuthorizationRequest = { ["RoomArn"] = true, ["SkillId"] = true, nil }

function asserts.AssertDeleteSkillAuthorizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSkillAuthorizationRequest to be of type 'table'")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSkillAuthorizationRequest[k], "DeleteSkillAuthorizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSkillAuthorizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The room that the skill is authorized for.</p>
-- * SkillId [SkillId] <p>The unique identifier of a skill.</p>
-- Required key: SkillId
-- @return DeleteSkillAuthorizationRequest structure as a key-value pair table
function M.DeleteSkillAuthorizationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSkillAuthorizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertDeleteSkillAuthorizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchProfilesRequest = { ["NextToken"] = true, ["Filters"] = true, ["MaxResults"] = true, ["SortCriteria"] = true, nil }

function asserts.AssertSearchProfilesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchProfilesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Filters"] then asserts.AssertFilterList(struct["Filters"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["SortCriteria"] then asserts.AssertSortList(struct["SortCriteria"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchProfilesRequest[k], "SearchProfilesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchProfilesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An optional token returned from a prior request. Use this token for pagination of results from this action. If this parameter is specified, the response includes only results beyond the token, up to the value specified by <code>MaxResults</code>.</p>
-- * Filters [FilterList] <p>The filters to use to list a specified set of room profiles. Supported filter keys are ProfileName and Address. Required. </p>
-- * MaxResults [MaxResults] <p>The maximum number of results to include in the response. If more results exist than the specified <code>MaxResults</code> value, a token is included in the response so that the remaining results can be retrieved.</p>
-- * SortCriteria [SortList] <p>The sort order to use in listing the specified set of room profiles. Supported sort keys are ProfileName and Address.</p>
-- @return SearchProfilesRequest structure as a key-value pair table
function M.SearchProfilesRequest(args)
	assert(args, "You must provide an argument table when creating SearchProfilesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Filters"] = args["Filters"],
		["MaxResults"] = args["MaxResults"],
		["SortCriteria"] = args["SortCriteria"],
	}
	asserts.AssertSearchProfilesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateProfileRequest = { ["PSTNEnabled"] = true, ["TemperatureUnit"] = true, ["Timezone"] = true, ["MaxVolumeLimit"] = true, ["SetupModeDisabled"] = true, ["DistanceUnit"] = true, ["ClientRequestToken"] = true, ["Address"] = true, ["WakeWord"] = true, ["ProfileName"] = true, nil }

function asserts.AssertCreateProfileRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateProfileRequest to be of type 'table'")
	assert(struct["ProfileName"], "Expected key ProfileName to exist in table")
	assert(struct["Timezone"], "Expected key Timezone to exist in table")
	assert(struct["Address"], "Expected key Address to exist in table")
	assert(struct["DistanceUnit"], "Expected key DistanceUnit to exist in table")
	assert(struct["TemperatureUnit"], "Expected key TemperatureUnit to exist in table")
	assert(struct["WakeWord"], "Expected key WakeWord to exist in table")
	if struct["PSTNEnabled"] then asserts.AssertBoolean(struct["PSTNEnabled"]) end
	if struct["TemperatureUnit"] then asserts.AssertTemperatureUnit(struct["TemperatureUnit"]) end
	if struct["Timezone"] then asserts.AssertTimezone(struct["Timezone"]) end
	if struct["MaxVolumeLimit"] then asserts.AssertMaxVolumeLimit(struct["MaxVolumeLimit"]) end
	if struct["SetupModeDisabled"] then asserts.AssertBoolean(struct["SetupModeDisabled"]) end
	if struct["DistanceUnit"] then asserts.AssertDistanceUnit(struct["DistanceUnit"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["Address"] then asserts.AssertAddress(struct["Address"]) end
	if struct["WakeWord"] then asserts.AssertWakeWord(struct["WakeWord"]) end
	if struct["ProfileName"] then asserts.AssertProfileName(struct["ProfileName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateProfileRequest[k], "CreateProfileRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateProfileRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PSTNEnabled [Boolean] <p>Whether PSTN calling is enabled.</p>
-- * TemperatureUnit [TemperatureUnit] <p>The temperature unit to be used by devices in the profile.</p>
-- * Timezone [Timezone] <p>The time zone used by a room profile.</p>
-- * MaxVolumeLimit [MaxVolumeLimit] <p>The maximum volume limit for a room profile.</p>
-- * SetupModeDisabled [Boolean] <p>Whether room profile setup is enabled.</p>
-- * DistanceUnit [DistanceUnit] <p>The distance unit to be used by devices in the profile.</p>
-- * ClientRequestToken [ClientRequestToken] <p>The user-specified token that is used during the creation of a profile.</p>
-- * Address [Address] <p>The valid address for the room.</p>
-- * WakeWord [WakeWord] <p>A wake word for Alexa, Echo, Amazon, or a computer.</p>
-- * ProfileName [ProfileName] <p>The name of a room profile.</p>
-- Required key: ProfileName
-- Required key: Timezone
-- Required key: Address
-- Required key: DistanceUnit
-- Required key: TemperatureUnit
-- Required key: WakeWord
-- @return CreateProfileRequest structure as a key-value pair table
function M.CreateProfileRequest(args)
	assert(args, "You must provide an argument table when creating CreateProfileRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PSTNEnabled"] = args["PSTNEnabled"],
		["TemperatureUnit"] = args["TemperatureUnit"],
		["Timezone"] = args["Timezone"],
		["MaxVolumeLimit"] = args["MaxVolumeLimit"],
		["SetupModeDisabled"] = args["SetupModeDisabled"],
		["DistanceUnit"] = args["DistanceUnit"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["Address"] = args["Address"],
		["WakeWord"] = args["WakeWord"],
		["ProfileName"] = args["ProfileName"],
	}
	asserts.AssertCreateProfileRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutSkillAuthorizationRequest = { ["AuthorizationResult"] = true, ["RoomArn"] = true, ["SkillId"] = true, nil }

function asserts.AssertPutSkillAuthorizationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSkillAuthorizationRequest to be of type 'table'")
	assert(struct["AuthorizationResult"], "Expected key AuthorizationResult to exist in table")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	if struct["AuthorizationResult"] then asserts.AssertAuthorizationResult(struct["AuthorizationResult"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSkillAuthorizationRequest[k], "PutSkillAuthorizationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSkillAuthorizationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AuthorizationResult [AuthorizationResult] <p>The authorization result specific to OAUTH code grant output. "Code” must be populated in the AuthorizationResult map to establish the authorization.</p>
-- * RoomArn [Arn] <p>The room that the skill is authorized for.</p>
-- * SkillId [SkillId] <p>The unique identifier of a skill.</p>
-- Required key: AuthorizationResult
-- Required key: SkillId
-- @return PutSkillAuthorizationRequest structure as a key-value pair table
function M.PutSkillAuthorizationRequest(args)
	assert(args, "You must provide an argument table when creating PutSkillAuthorizationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AuthorizationResult"] = args["AuthorizationResult"],
		["RoomArn"] = args["RoomArn"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertPutSkillAuthorizationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateSkillFromSkillGroupRequest = { ["SkillGroupArn"] = true, ["SkillId"] = true, nil }

function asserts.AssertDisassociateSkillFromSkillGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateSkillFromSkillGroupRequest to be of type 'table'")
	assert(struct["SkillId"], "Expected key SkillId to exist in table")
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	if struct["SkillId"] then asserts.AssertSkillId(struct["SkillId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateSkillFromSkillGroupRequest[k], "DisassociateSkillFromSkillGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateSkillFromSkillGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupArn [Arn] <p>The unique identifier of a skill. Required.</p>
-- * SkillId [SkillId] <p>The ARN of a skill group to associate to a skill.</p>
-- Required key: SkillId
-- @return DisassociateSkillFromSkillGroupRequest structure as a key-value pair table
function M.DisassociateSkillFromSkillGroupRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateSkillFromSkillGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupArn"] = args["SkillGroupArn"],
		["SkillId"] = args["SkillId"],
	}
	asserts.AssertDisassociateSkillFromSkillGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConferenceProvider = { ["MeetingSetting"] = true, ["IPDialIn"] = true, ["Name"] = true, ["Type"] = true, ["PSTNDialIn"] = true, ["Arn"] = true, nil }

function asserts.AssertConferenceProvider(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConferenceProvider to be of type 'table'")
	if struct["MeetingSetting"] then asserts.AssertMeetingSetting(struct["MeetingSetting"]) end
	if struct["IPDialIn"] then asserts.AssertIPDialIn(struct["IPDialIn"]) end
	if struct["Name"] then asserts.AssertConferenceProviderName(struct["Name"]) end
	if struct["Type"] then asserts.AssertConferenceProviderType(struct["Type"]) end
	if struct["PSTNDialIn"] then asserts.AssertPSTNDialIn(struct["PSTNDialIn"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConferenceProvider[k], "ConferenceProvider contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConferenceProvider
-- <p>An entity that provides a conferencing solution. Alexa for Business acts as the voice interface and mediator that connects users to their preferred conference provider. Examples of conference providers include Amazon Chime, Zoom, Cisco, and Polycom. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MeetingSetting [MeetingSetting] <p>The meeting settings for the conference provider.</p>
-- * IPDialIn [IPDialIn] <p>The IP endpoint and protocol for calling.</p>
-- * Name [ConferenceProviderName] <p>The name of the conference provider.</p>
-- * Type [ConferenceProviderType] <p>The type of conference providers.</p>
-- * PSTNDialIn [PSTNDialIn] <p>The information for PSTN conferencing.</p>
-- * Arn [Arn] <p>The ARN of the newly created conference provider.</p>
-- @return ConferenceProvider structure as a key-value pair table
function M.ConferenceProvider(args)
	assert(args, "You must provide an argument table when creating ConferenceProvider")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MeetingSetting"] = args["MeetingSetting"],
		["IPDialIn"] = args["IPDialIn"],
		["Name"] = args["Name"],
		["Type"] = args["Type"],
		["PSTNDialIn"] = args["PSTNDialIn"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertConferenceProvider(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["Arn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [Arn] <p>The ARN of the resource to which to add metadata tags. Required. </p>
-- * Tags [TagList] <p>The tags to be added to the specified resource. Do not provide system tags. Required. </p>
-- Required key: Arn
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
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
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsResponse = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResponse[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- * Tags [TagList] <p>The tags requested for the specified resource.</p>
-- @return ListTagsResponse structure as a key-value pair table
function M.ListTagsResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAddressBookRequest = { ["AddressBookArn"] = true, nil }

function asserts.AssertDeleteAddressBookRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAddressBookRequest to be of type 'table'")
	assert(struct["AddressBookArn"], "Expected key AddressBookArn to exist in table")
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAddressBookRequest[k], "DeleteAddressBookRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAddressBookRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBookArn [Arn] <p>The ARN of the address book to delete.</p>
-- Required key: AddressBookArn
-- @return DeleteAddressBookRequest structure as a key-value pair table
function M.DeleteAddressBookRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAddressBookRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBookArn"] = args["AddressBookArn"],
	}
	asserts.AssertDeleteAddressBookRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetRoomRequest = { ["RoomArn"] = true, nil }

function asserts.AssertGetRoomRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetRoomRequest to be of type 'table'")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetRoomRequest[k], "GetRoomRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetRoomRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The ARN of the room for which to request details. Required.</p>
-- @return GetRoomRequest structure as a key-value pair table
function M.GetRoomRequest(args)
	assert(args, "You must provide an argument table when creating GetRoomRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
	}
	asserts.AssertGetRoomRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContactData = { ["PhoneNumber"] = true, ["LastName"] = true, ["ContactArn"] = true, ["DisplayName"] = true, ["FirstName"] = true, nil }

function asserts.AssertContactData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContactData to be of type 'table'")
	if struct["PhoneNumber"] then asserts.AssertE164PhoneNumber(struct["PhoneNumber"]) end
	if struct["LastName"] then asserts.AssertContactName(struct["LastName"]) end
	if struct["ContactArn"] then asserts.AssertArn(struct["ContactArn"]) end
	if struct["DisplayName"] then asserts.AssertContactName(struct["DisplayName"]) end
	if struct["FirstName"] then asserts.AssertContactName(struct["FirstName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContactData[k], "ContactData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContactData
-- <p>Information related to a contact.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PhoneNumber [E164PhoneNumber] <p>The phone number of the contact.</p>
-- * LastName [ContactName] <p>The last name of the contact, used to call the contact on the device.</p>
-- * ContactArn [Arn] <p>The ARN of the contact.</p>
-- * DisplayName [ContactName] <p>The name of the contact to display on the console.</p>
-- * FirstName [ContactName] <p>The first name of the contact, used to call the contact on the device.</p>
-- @return ContactData structure as a key-value pair table
function M.ContactData(args)
	assert(args, "You must provide an argument table when creating ContactData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PhoneNumber"] = args["PhoneNumber"],
		["LastName"] = args["LastName"],
		["ContactArn"] = args["ContactArn"],
		["DisplayName"] = args["DisplayName"],
		["FirstName"] = args["FirstName"],
	}
	asserts.AssertContactData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddressBookData = { ["AddressBookArn"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertAddressBookData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddressBookData to be of type 'table'")
	if struct["AddressBookArn"] then asserts.AssertArn(struct["AddressBookArn"]) end
	if struct["Name"] then asserts.AssertAddressBookName(struct["Name"]) end
	if struct["Description"] then asserts.AssertAddressBookDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddressBookData[k], "AddressBookData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddressBookData
-- <p>Information related to an address book.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AddressBookArn [Arn] <p>The ARN of the address book.</p>
-- * Name [AddressBookName] <p>The name of the address book.</p>
-- * Description [AddressBookDescription] <p>The description of the address book.</p>
-- @return AddressBookData structure as a key-value pair table
function M.AddressBookData(args)
	assert(args, "You must provide an argument table when creating AddressBookData")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AddressBookArn"] = args["AddressBookArn"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertAddressBookData(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDeviceResponse = { nil }

function asserts.AssertDeleteDeviceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDeviceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDeviceResponse[k], "DeleteDeviceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDeviceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDeviceResponse structure as a key-value pair table
function M.DeleteDeviceResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDeviceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDeviceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSmartHomeAppliancesRequest = { ["NextToken"] = true, ["RoomArn"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSmartHomeAppliancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSmartHomeAppliancesRequest to be of type 'table'")
	assert(struct["RoomArn"], "Expected key RoomArn to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSmartHomeAppliancesRequest[k], "ListSmartHomeAppliancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSmartHomeAppliancesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The tokens used for pagination.</p>
-- * RoomArn [Arn] <p>The room that the appliances are associated with.</p>
-- * MaxResults [MaxResults] <p>The maximum number of appliances to be returned, per paginated calls.</p>
-- Required key: RoomArn
-- @return ListSmartHomeAppliancesRequest structure as a key-value pair table
function M.ListSmartHomeAppliancesRequest(args)
	assert(args, "You must provide an argument table when creating ListSmartHomeAppliancesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["RoomArn"] = args["RoomArn"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSmartHomeAppliancesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchUsersResponse = { ["TotalCount"] = true, ["NextToken"] = true, ["Users"] = true, nil }

function asserts.AssertSearchUsersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchUsersResponse to be of type 'table'")
	if struct["TotalCount"] then asserts.AssertTotalCount(struct["TotalCount"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Users"] then asserts.AssertUserDataList(struct["Users"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchUsersResponse[k], "SearchUsersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchUsersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TotalCount [TotalCount] <p>The total number of users returned.</p>
-- * NextToken [NextToken] <p>The token returned to indicate that there is more data available.</p>
-- * Users [UserDataList] <p>The users that meet the specified set of filter criteria, in sort order.</p>
-- @return SearchUsersResponse structure as a key-value pair table
function M.SearchUsersResponse(args)
	assert(args, "You must provide an argument table when creating SearchUsersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TotalCount"] = args["TotalCount"],
		["NextToken"] = args["NextToken"],
		["Users"] = args["Users"],
	}
	asserts.AssertSearchUsersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateRoomResponse = { ["RoomArn"] = true, nil }

function asserts.AssertCreateRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateRoomResponse to be of type 'table'")
	if struct["RoomArn"] then asserts.AssertArn(struct["RoomArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateRoomResponse[k], "CreateRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoomArn [Arn] <p>The ARN of the newly created room in the response.</p>
-- @return CreateRoomResponse structure as a key-value pair table
function M.CreateRoomResponse(args)
	assert(args, "You must provide an argument table when creating CreateRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoomArn"] = args["RoomArn"],
	}
	asserts.AssertCreateRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateRoomResponse = { nil }

function asserts.AssertUpdateRoomResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateRoomResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateRoomResponse[k], "UpdateRoomResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateRoomResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateRoomResponse structure as a key-value pair table
function M.UpdateRoomResponse(args)
	assert(args, "You must provide an argument table when creating UpdateRoomResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateRoomResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSkillGroupRequest = { ["SkillGroupName"] = true, ["SkillGroupArn"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateSkillGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSkillGroupRequest to be of type 'table'")
	if struct["SkillGroupName"] then asserts.AssertSkillGroupName(struct["SkillGroupName"]) end
	if struct["SkillGroupArn"] then asserts.AssertArn(struct["SkillGroupArn"]) end
	if struct["Description"] then asserts.AssertSkillGroupDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSkillGroupRequest[k], "UpdateSkillGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSkillGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkillGroupName [SkillGroupName] <p>The updated name for the skill group.</p>
-- * SkillGroupArn [Arn] <p>The ARN of the skill group to update. </p>
-- * Description [SkillGroupDescription] <p>The updated description for the skill group.</p>
-- @return UpdateSkillGroupRequest structure as a key-value pair table
function M.UpdateSkillGroupRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSkillGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkillGroupName"] = args["SkillGroupName"],
		["SkillGroupArn"] = args["SkillGroupArn"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateSkillGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateSkillFromSkillGroupResponse = { nil }

function asserts.AssertDisassociateSkillFromSkillGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateSkillFromSkillGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DisassociateSkillFromSkillGroupResponse[k], "DisassociateSkillFromSkillGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateSkillFromSkillGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DisassociateSkillFromSkillGroupResponse structure as a key-value pair table
function M.DisassociateSkillFromSkillGroupResponse(args)
	assert(args, "You must provide an argument table when creating DisassociateSkillFromSkillGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDisassociateSkillFromSkillGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertDeviceSerialNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceSerialNumber to be of type 'string'")
end

--  
function M.DeviceSerialNumber(str)
	asserts.AssertDeviceSerialNumber(str)
	return str
end

function asserts.Assertuser_UserId(str)
	assert(str)
	assert(type(str) == "string", "Expected user_UserId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.user_UserId(str)
	asserts.Assertuser_UserId(str)
	return str
end

function asserts.AssertDeviceEventValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceEventValue to be of type 'string'")
end

--  
function M.DeviceEventValue(str)
	asserts.AssertDeviceEventValue(str)
	return str
end

function asserts.AssertDeviceName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.DeviceName(str)
	asserts.AssertDeviceName(str)
	return str
end

function asserts.AssertIconUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected IconUrl to be of type 'string'")
end

--  
function M.IconUrl(str)
	asserts.AssertIconUrl(str)
	return str
end

function asserts.Assertuser_LastName(str)
	assert(str)
	assert(type(str) == "string", "Expected user_LastName to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
end

--  
function M.user_LastName(str)
	asserts.Assertuser_LastName(str)
	return str
end

function asserts.AssertBulletPoint(str)
	assert(str)
	assert(type(str) == "string", "Expected BulletPoint to be of type 'string'")
end

--  
function M.BulletPoint(str)
	asserts.AssertBulletPoint(str)
	return str
end

function asserts.AssertDeviceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceStatus to be of type 'string'")
end

--  
function M.DeviceStatus(str)
	asserts.AssertDeviceStatus(str)
	return str
end

function asserts.AssertWakeWord(str)
	assert(str)
	assert(type(str) == "string", "Expected WakeWord to be of type 'string'")
end

--  
function M.WakeWord(str)
	asserts.AssertWakeWord(str)
	return str
end

function asserts.AssertSkillStoreType(str)
	assert(str)
	assert(type(str) == "string", "Expected SkillStoreType to be of type 'string'")
end

--  
function M.SkillStoreType(str)
	asserts.AssertSkillStoreType(str)
	return str
end

function asserts.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Key(str)
	asserts.AssertKey(str)
	return str
end

function asserts.AssertReviewKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ReviewKey to be of type 'string'")
end

--  
function M.ReviewKey(str)
	asserts.AssertReviewKey(str)
	return str
end

function asserts.AssertInvocationPhrase(str)
	assert(str)
	assert(type(str) == "string", "Expected InvocationPhrase to be of type 'string'")
end

--  
function M.InvocationPhrase(str)
	asserts.AssertInvocationPhrase(str)
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

function asserts.AssertSortKey(str)
	assert(str)
	assert(type(str) == "string", "Expected SortKey to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SortKey(str)
	asserts.AssertSortKey(str)
	return str
end

function asserts.AssertReviewValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ReviewValue to be of type 'string'")
end

--  
function M.ReviewValue(str)
	asserts.AssertReviewValue(str)
	return str
end

function asserts.AssertDeveloperName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeveloperName to be of type 'string'")
end

--  
function M.DeveloperName(str)
	asserts.AssertDeveloperName(str)
	return str
end

function asserts.AssertAddressBookDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressBookDescription to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AddressBookDescription(str)
	asserts.AssertAddressBookDescription(str)
	return str
end

function asserts.AssertEnrollmentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected EnrollmentStatus to be of type 'string'")
end

--  
function M.EnrollmentStatus(str)
	asserts.AssertEnrollmentStatus(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertSkillGroupDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected SkillGroupDescription to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SkillGroupDescription(str)
	asserts.AssertSkillGroupDescription(str)
	return str
end

function asserts.AssertRoomDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected RoomDescription to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoomDescription(str)
	asserts.AssertRoomDescription(str)
	return str
end

function asserts.AssertUserCode(str)
	assert(str)
	assert(type(str) == "string", "Expected UserCode to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UserCode(str)
	asserts.AssertUserCode(str)
	return str
end

function asserts.AssertEnablementType(str)
	assert(str)
	assert(type(str) == "string", "Expected EnablementType to be of type 'string'")
end

--  
function M.EnablementType(str)
	asserts.AssertEnablementType(str)
	return str
end

function asserts.AssertDeviceSerialNumberForAVS(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceSerialNumberForAVS to be of type 'string'")
end

--  
function M.DeviceSerialNumberForAVS(str)
	asserts.AssertDeviceSerialNumberForAVS(str)
	return str
end

function asserts.AssertProviderCalendarId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderCalendarId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.ProviderCalendarId(str)
	asserts.AssertProviderCalendarId(str)
	return str
end

function asserts.AssertSortValue(str)
	assert(str)
	assert(type(str) == "string", "Expected SortValue to be of type 'string'")
end

--  
function M.SortValue(str)
	asserts.AssertSortValue(str)
	return str
end

function asserts.AssertRoomName(str)
	assert(str)
	assert(type(str) == "string", "Expected RoomName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoomName(str)
	asserts.AssertRoomName(str)
	return str
end

function asserts.AssertPrivacyPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected PrivacyPolicy to be of type 'string'")
end

--  
function M.PrivacyPolicy(str)
	asserts.AssertPrivacyPolicy(str)
	return str
end

function asserts.AssertEmail(str)
	assert(str)
	assert(type(str) == "string", "Expected Email to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Email(str)
	asserts.AssertEmail(str)
	return str
end

function asserts.AssertCountryCode(str)
	assert(str)
	assert(type(str) == "string", "Expected CountryCode to be of type 'string'")
end

--  
function M.CountryCode(str)
	asserts.AssertCountryCode(str)
	return str
end

function asserts.AssertDeviceEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceEventType to be of type 'string'")
end

--  
function M.DeviceEventType(str)
	asserts.AssertDeviceEventType(str)
	return str
end

function asserts.AssertConnectionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionStatus to be of type 'string'")
end

--  
function M.ConnectionStatus(str)
	asserts.AssertConnectionStatus(str)
	return str
end

function asserts.AssertShortDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ShortDescription to be of type 'string'")
end

--  
function M.ShortDescription(str)
	asserts.AssertShortDescription(str)
	return str
end

function asserts.AssertSkillId(str)
	assert(str)
	assert(type(str) == "string", "Expected SkillId to be of type 'string'")
end

--  
function M.SkillId(str)
	asserts.AssertSkillId(str)
	return str
end

function asserts.AssertProductDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductDescription to be of type 'string'")
end

--  
function M.ProductDescription(str)
	asserts.AssertProductDescription(str)
	return str
end

function asserts.AssertSoftwareVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected SoftwareVersion to be of type 'string'")
end

--  
function M.SoftwareVersion(str)
	asserts.AssertSoftwareVersion(str)
	return str
end

function asserts.AssertClientRequestToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestToken to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
	assert(#str >= 10, "Expected string to be min 10 characters")
end

-- User specified token that is used to support idempotency during Create Resource
function M.ClientRequestToken(str)
	asserts.AssertClientRequestToken(str)
	return str
end

function asserts.AssertAddressBookName(str)
	assert(str)
	assert(type(str) == "string", "Expected AddressBookName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AddressBookName(str)
	asserts.AssertAddressBookName(str)
	return str
end

function asserts.AssertProductId(str)
	assert(str)
	assert(type(str) == "string", "Expected ProductId to be of type 'string'")
end

--  
function M.ProductId(str)
	asserts.AssertProductId(str)
	return str
end

function asserts.AssertE164PhoneNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected E164PhoneNumber to be of type 'string'")
end

--  
function M.E164PhoneNumber(str)
	asserts.AssertE164PhoneNumber(str)
	return str
end

function asserts.AssertGenericKeyword(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericKeyword to be of type 'string'")
end

--  
function M.GenericKeyword(str)
	asserts.AssertGenericKeyword(str)
	return str
end

function asserts.AssertOneClickIdDelay(str)
	assert(str)
	assert(type(str) == "string", "Expected OneClickIdDelay to be of type 'string'")
	assert(#str <= 2, "Expected string to be max 2 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OneClickIdDelay(str)
	asserts.AssertOneClickIdDelay(str)
	return str
end

function asserts.AssertProfileName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProfileName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ProfileName(str)
	asserts.AssertProfileName(str)
	return str
end

function asserts.AssertRoomSkillParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RoomSkillParameterValue to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoomSkillParameterValue(str)
	asserts.AssertRoomSkillParameterValue(str)
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

function asserts.AssertFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterKey to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FilterKey(str)
	asserts.AssertFilterKey(str)
	return str
end

function asserts.AssertConferenceProviderType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConferenceProviderType to be of type 'string'")
end

--  
function M.ConferenceProviderType(str)
	asserts.AssertConferenceProviderType(str)
	return str
end

function asserts.Assertuser_FirstName(str)
	assert(str)
	assert(type(str) == "string", "Expected user_FirstName to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
end

--  
function M.user_FirstName(str)
	asserts.Assertuser_FirstName(str)
	return str
end

function asserts.AssertFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterValue to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FilterValue(str)
	asserts.AssertFilterValue(str)
	return str
end

function asserts.AssertRoomSkillParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RoomSkillParameterKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoomSkillParameterKey(str)
	asserts.AssertRoomSkillParameterKey(str)
	return str
end

function asserts.AssertEnrollmentId(str)
	assert(str)
	assert(type(str) == "string", "Expected EnrollmentId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.EnrollmentId(str)
	asserts.AssertEnrollmentId(str)
	return str
end

function asserts.AssertTemperatureUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected TemperatureUnit to be of type 'string'")
end

--  
function M.TemperatureUnit(str)
	asserts.AssertTemperatureUnit(str)
	return str
end

function asserts.AssertAmazonId(str)
	assert(str)
	assert(type(str) == "string", "Expected AmazonId to be of type 'string'")
end

--  
function M.AmazonId(str)
	asserts.AssertAmazonId(str)
	return str
end

function asserts.AssertDeviceType(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceType to be of type 'string'")
end

--  
function M.DeviceType(str)
	asserts.AssertDeviceType(str)
	return str
end

function asserts.AssertSkillType(str)
	assert(str)
	assert(type(str) == "string", "Expected SkillType to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SkillType(str)
	asserts.AssertSkillType(str)
	return str
end

function asserts.AssertConferenceProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConferenceProviderName to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ConferenceProviderName(str)
	asserts.AssertConferenceProviderName(str)
	return str
end

function asserts.AssertCategoryName(str)
	assert(str)
	assert(type(str) == "string", "Expected CategoryName to be of type 'string'")
end

--  
function M.CategoryName(str)
	asserts.AssertCategoryName(str)
	return str
end

function asserts.AssertDeviceStatusDetailCode(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceStatusDetailCode to be of type 'string'")
end

--  
function M.DeviceStatusDetailCode(str)
	asserts.AssertDeviceStatusDetailCode(str)
	return str
end

function asserts.AssertSkillGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected SkillGroupName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SkillGroupName(str)
	asserts.AssertSkillGroupName(str)
	return str
end

function asserts.AssertRequirePin(str)
	assert(str)
	assert(type(str) == "string", "Expected RequirePin to be of type 'string'")
end

--  
function M.RequirePin(str)
	asserts.AssertRequirePin(str)
	return str
end

function asserts.AssertDistanceUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected DistanceUnit to be of type 'string'")
end

--  
function M.DistanceUnit(str)
	asserts.AssertDistanceUnit(str)
	return str
end

function asserts.AssertFeature(str)
	assert(str)
	assert(type(str) == "string", "Expected Feature to be of type 'string'")
end

--  
function M.Feature(str)
	asserts.AssertFeature(str)
	return str
end

function asserts.AssertClientId(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientId to be of type 'string'")
end

--  
function M.ClientId(str)
	asserts.AssertClientId(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertApplianceDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplianceDescription to be of type 'string'")
end

--  
function M.ApplianceDescription(str)
	asserts.AssertApplianceDescription(str)
	return str
end

function asserts.AssertCommsProtocol(str)
	assert(str)
	assert(type(str) == "string", "Expected CommsProtocol to be of type 'string'")
end

--  
function M.CommsProtocol(str)
	asserts.AssertCommsProtocol(str)
	return str
end

function asserts.AssertApplianceFriendlyName(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplianceFriendlyName to be of type 'string'")
end

--  
function M.ApplianceFriendlyName(str)
	asserts.AssertApplianceFriendlyName(str)
	return str
end

function asserts.AssertSkillTypeFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected SkillTypeFilter to be of type 'string'")
end

--  
function M.SkillTypeFilter(str)
	asserts.AssertSkillTypeFilter(str)
	return str
end

function asserts.AssertReleaseDate(str)
	assert(str)
	assert(type(str) == "string", "Expected ReleaseDate to be of type 'string'")
end

--  
function M.ReleaseDate(str)
	asserts.AssertReleaseDate(str)
	return str
end

function asserts.AssertEnablementTypeFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected EnablementTypeFilter to be of type 'string'")
end

--  
function M.EnablementTypeFilter(str)
	asserts.AssertEnablementTypeFilter(str)
	return str
end

function asserts.AssertOneClickPinDelay(str)
	assert(str)
	assert(type(str) == "string", "Expected OneClickPinDelay to be of type 'string'")
	assert(#str <= 2, "Expected string to be max 2 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OneClickPinDelay(str)
	asserts.AssertOneClickPinDelay(str)
	return str
end

function asserts.AssertContactName(str)
	assert(str)
	assert(type(str) == "string", "Expected ContactName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContactName(str)
	asserts.AssertContactName(str)
	return str
end

function asserts.AssertAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected Address to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Address(str)
	asserts.AssertAddress(str)
	return str
end

function asserts.AssertEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected Endpoint to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Endpoint(str)
	asserts.AssertEndpoint(str)
	return str
end

function asserts.AssertApplianceManufacturerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ApplianceManufacturerName to be of type 'string'")
end

--  
function M.ApplianceManufacturerName(str)
	asserts.AssertApplianceManufacturerName(str)
	return str
end

function asserts.AssertMacAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected MacAddress to be of type 'string'")
end

--  
function M.MacAddress(str)
	asserts.AssertMacAddress(str)
	return str
end

function asserts.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
end

--  
function M.Url(str)
	asserts.AssertUrl(str)
	return str
end

function asserts.AssertSkillName(str)
	assert(str)
	assert(type(str) == "string", "Expected SkillName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SkillName(str)
	asserts.AssertSkillName(str)
	return str
end

function asserts.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Value(str)
	asserts.AssertValue(str)
	return str
end

function asserts.AssertTimezone(str)
	assert(str)
	assert(type(str) == "string", "Expected Timezone to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Timezone(str)
	asserts.AssertTimezone(str)
	return str
end

function asserts.AssertUtterance(str)
	assert(str)
	assert(type(str) == "string", "Expected Utterance to be of type 'string'")
end

--  
function M.Utterance(str)
	asserts.AssertUtterance(str)
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

function asserts.AssertEndUserLicenseAgreement(str)
	assert(str)
	assert(type(str) == "string", "Expected EndUserLicenseAgreement to be of type 'string'")
end

--  
function M.EndUserLicenseAgreement(str)
	asserts.AssertEndUserLicenseAgreement(str)
	return str
end

function asserts.AssertCategoryId(long)
	assert(long)
	assert(type(long) == "number", "Expected CategoryId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.CategoryId(long)
	asserts.AssertCategoryId(long)
	return long
end

function asserts.AssertMaxVolumeLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxVolumeLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxVolumeLimit(integer)
	asserts.AssertMaxVolumeLimit(integer)
	return integer
end

function asserts.AssertTotalCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TotalCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TotalCount(integer)
	asserts.AssertTotalCount(integer)
	return integer
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

function asserts.AssertSkillListMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SkillListMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.SkillListMaxResults(integer)
	asserts.AssertSkillListMaxResults(integer)
	return integer
end

function asserts.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	asserts.Assertboolean(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertReviews(map)
	assert(map)
	assert(type(map) == "table", "Expected Reviews to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertReviewKey(k)
		asserts.AssertReviewValue(v)
	end
end

function M.Reviews(map)
	asserts.AssertReviews(map)
	return map
end

function asserts.AssertAuthorizationResult(map)
	assert(map)
	assert(type(map) == "table", "Expected AuthorizationResult to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertKey(k)
		asserts.AssertValue(v)
	end
end

function M.AuthorizationResult(map)
	asserts.AssertAuthorizationResult(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertRoomDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected RoomDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRoomData(v)
	end
end

--  
-- List of RoomData objects
function M.RoomDataList(list)
	asserts.AssertRoomDataList(list)
	return list
end

function asserts.AssertDeviceStatusDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected DeviceStatusDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeviceStatusDetail(v)
	end
end

--  
-- List of DeviceStatusDetail objects
function M.DeviceStatusDetails(list)
	asserts.AssertDeviceStatusDetails(list)
	return list
end

function asserts.AssertSkillTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected SkillTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSkillStoreType(v)
	end
end

--  
-- List of SkillStoreType objects
function M.SkillTypes(list)
	asserts.AssertSkillTypes(list)
	return list
end

function asserts.AssertSkillGroupDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected SkillGroupDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSkillGroupData(v)
	end
end

--  
-- List of SkillGroupData objects
function M.SkillGroupDataList(list)
	asserts.AssertSkillGroupDataList(list)
	return list
end

function asserts.AssertUserDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserData(v)
	end
end

--  
-- List of UserData objects
function M.UserDataList(list)
	asserts.AssertUserDataList(list)
	return list
end

function asserts.AssertFeatures(list)
	assert(list)
	assert(type(list) == "table", "Expected Features to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFeature(v)
	end
end

--  
-- List of Feature objects
function M.Features(list)
	asserts.AssertFeatures(list)
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

function asserts.AssertSkillSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected SkillSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSkillSummary(v)
	end
end

--  
-- List of SkillSummary objects
function M.SkillSummaryList(list)
	asserts.AssertSkillSummaryList(list)
	return list
end

function asserts.AssertDeviceDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeviceDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeviceData(v)
	end
end

--  
-- List of DeviceData objects
function M.DeviceDataList(list)
	asserts.AssertDeviceDataList(list)
	return list
end

function asserts.AssertCategoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected CategoryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCategory(v)
	end
end

--  
-- List of Category objects
function M.CategoryList(list)
	asserts.AssertCategoryList(list)
	return list
end

function asserts.AssertConferenceProvidersList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConferenceProvidersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConferenceProvider(v)
	end
end

--  
-- List of ConferenceProvider objects
function M.ConferenceProvidersList(list)
	asserts.AssertConferenceProvidersList(list)
	return list
end

function asserts.AssertFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterValueList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertFilterValue(v)
	end
end

--  
-- List of FilterValue objects
function M.FilterValueList(list)
	asserts.AssertFilterValueList(list)
	return list
end

function asserts.AssertSortList(list)
	assert(list)
	assert(type(list) == "table", "Expected SortList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertSort(v)
	end
end

--  
-- List of Sort objects
function M.SortList(list)
	asserts.AssertSortList(list)
	return list
end

function asserts.AssertRoomSkillParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected RoomSkillParameters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRoomSkillParameter(v)
	end
end

--  
-- List of RoomSkillParameter objects
function M.RoomSkillParameters(list)
	asserts.AssertRoomSkillParameters(list)
	return list
end

function asserts.AssertNewInThisVersionBulletPoints(list)
	assert(list)
	assert(type(list) == "table", "Expected NewInThisVersionBulletPoints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBulletPoint(v)
	end
end

--  
-- List of BulletPoint objects
function M.NewInThisVersionBulletPoints(list)
	asserts.AssertNewInThisVersionBulletPoints(list)
	return list
end

function asserts.AssertContactDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected ContactDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertContactData(v)
	end
end

--  
-- List of ContactData objects
function M.ContactDataList(list)
	asserts.AssertContactDataList(list)
	return list
end

function asserts.AssertSmartHomeApplianceList(list)
	assert(list)
	assert(type(list) == "table", "Expected SmartHomeApplianceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSmartHomeAppliance(v)
	end
end

--  
-- List of SmartHomeAppliance objects
function M.SmartHomeApplianceList(list)
	asserts.AssertSmartHomeApplianceList(list)
	return list
end

function asserts.AssertSkillsStoreSkillList(list)
	assert(list)
	assert(type(list) == "table", "Expected SkillsStoreSkillList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSkillsStoreSkill(v)
	end
end

--  
-- List of SkillsStoreSkill objects
function M.SkillsStoreSkillList(list)
	asserts.AssertSkillsStoreSkillList(list)
	return list
end

function asserts.AssertDeviceEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeviceEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDeviceEvent(v)
	end
end

--  
-- List of DeviceEvent objects
function M.DeviceEventList(list)
	asserts.AssertDeviceEventList(list)
	return list
end

function asserts.AssertProfileDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected ProfileDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertProfileData(v)
	end
end

--  
-- List of ProfileData objects
function M.ProfileDataList(list)
	asserts.AssertProfileDataList(list)
	return list
end

function asserts.AssertBulletPoints(list)
	assert(list)
	assert(type(list) == "table", "Expected BulletPoints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBulletPoint(v)
	end
end

--  
-- List of BulletPoint objects
function M.BulletPoints(list)
	asserts.AssertBulletPoints(list)
	return list
end

function asserts.AssertSampleUtterances(list)
	assert(list)
	assert(type(list) == "table", "Expected SampleUtterances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUtterance(v)
	end
end

--  
-- List of Utterance objects
function M.SampleUtterances(list)
	asserts.AssertSampleUtterances(list)
	return list
end

function asserts.AssertGenericKeywords(list)
	assert(list)
	assert(type(list) == "table", "Expected GenericKeywords to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGenericKeyword(v)
	end
end

--  
-- List of GenericKeyword objects
function M.GenericKeywords(list)
	asserts.AssertGenericKeywords(list)
	return list
end

function asserts.AssertFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertFilter(v)
	end
end

--  
-- List of Filter objects
function M.FilterList(list)
	asserts.AssertFilterList(list)
	return list
end

function asserts.AssertAddressBookDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected AddressBookDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAddressBookData(v)
	end
end

--  
-- List of AddressBookData objects
function M.AddressBookDataList(list)
	asserts.AssertAddressBookDataList(list)
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
			return "a4b.amazonaws.com"
		end
	end
	local ss = { "a4b" }
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
--- Call DeleteSkillAuthorization asynchronously, invoking a callback when done
-- @param DeleteSkillAuthorizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSkillAuthorizationAsync(DeleteSkillAuthorizationRequest, cb)
	assert(DeleteSkillAuthorizationRequest, "You must provide a DeleteSkillAuthorizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteSkillAuthorization",
	}
	for header,value in pairs(DeleteSkillAuthorizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSkillAuthorizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSkillAuthorization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSkillAuthorizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSkillAuthorizationSync(DeleteSkillAuthorizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSkillAuthorizationAsync(DeleteSkillAuthorizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateContactWithAddressBook asynchronously, invoking a callback when done
-- @param AssociateContactWithAddressBookRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateContactWithAddressBookAsync(AssociateContactWithAddressBookRequest, cb)
	assert(AssociateContactWithAddressBookRequest, "You must provide a AssociateContactWithAddressBookRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.AssociateContactWithAddressBook",
	}
	for header,value in pairs(AssociateContactWithAddressBookRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateContactWithAddressBookRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateContactWithAddressBook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateContactWithAddressBookRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateContactWithAddressBookSync(AssociateContactWithAddressBookRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateContactWithAddressBookAsync(AssociateContactWithAddressBookRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListConferenceProviders asynchronously, invoking a callback when done
-- @param ListConferenceProvidersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListConferenceProvidersAsync(ListConferenceProvidersRequest, cb)
	assert(ListConferenceProvidersRequest, "You must provide a ListConferenceProvidersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ListConferenceProviders",
	}
	for header,value in pairs(ListConferenceProvidersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListConferenceProvidersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListConferenceProviders synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListConferenceProvidersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListConferenceProvidersSync(ListConferenceProvidersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListConferenceProvidersAsync(ListConferenceProvidersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetProfile asynchronously, invoking a callback when done
-- @param GetProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetProfileAsync(GetProfileRequest, cb)
	assert(GetProfileRequest, "You must provide a GetProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetProfile",
	}
	for header,value in pairs(GetProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetProfileSync(GetProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetProfileAsync(GetProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterAVSDevice asynchronously, invoking a callback when done
-- @param RegisterAVSDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterAVSDeviceAsync(RegisterAVSDeviceRequest, cb)
	assert(RegisterAVSDeviceRequest, "You must provide a RegisterAVSDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.RegisterAVSDevice",
	}
	for header,value in pairs(RegisterAVSDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterAVSDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterAVSDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterAVSDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterAVSDeviceSync(RegisterAVSDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterAVSDeviceAsync(RegisterAVSDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSkillsStoreCategories asynchronously, invoking a callback when done
-- @param ListSkillsStoreCategoriesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSkillsStoreCategoriesAsync(ListSkillsStoreCategoriesRequest, cb)
	assert(ListSkillsStoreCategoriesRequest, "You must provide a ListSkillsStoreCategoriesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ListSkillsStoreCategories",
	}
	for header,value in pairs(ListSkillsStoreCategoriesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSkillsStoreCategoriesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSkillsStoreCategories synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSkillsStoreCategoriesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSkillsStoreCategoriesSync(ListSkillsStoreCategoriesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSkillsStoreCategoriesAsync(ListSkillsStoreCategoriesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchContacts asynchronously, invoking a callback when done
-- @param SearchContactsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchContactsAsync(SearchContactsRequest, cb)
	assert(SearchContactsRequest, "You must provide a SearchContactsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.SearchContacts",
	}
	for header,value in pairs(SearchContactsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchContactsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchContacts synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchContactsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchContactsSync(SearchContactsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchContactsAsync(SearchContactsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetConferenceProvider asynchronously, invoking a callback when done
-- @param GetConferenceProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetConferenceProviderAsync(GetConferenceProviderRequest, cb)
	assert(GetConferenceProviderRequest, "You must provide a GetConferenceProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetConferenceProvider",
	}
	for header,value in pairs(GetConferenceProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetConferenceProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetConferenceProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetConferenceProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetConferenceProviderSync(GetConferenceProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConferenceProviderAsync(GetConferenceProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateDeviceWithRoom asynchronously, invoking a callback when done
-- @param AssociateDeviceWithRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateDeviceWithRoomAsync(AssociateDeviceWithRoomRequest, cb)
	assert(AssociateDeviceWithRoomRequest, "You must provide a AssociateDeviceWithRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.AssociateDeviceWithRoom",
	}
	for header,value in pairs(AssociateDeviceWithRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateDeviceWithRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateDeviceWithRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateDeviceWithRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateDeviceWithRoomSync(AssociateDeviceWithRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateDeviceWithRoomAsync(AssociateDeviceWithRoomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutSkillAuthorization asynchronously, invoking a callback when done
-- @param PutSkillAuthorizationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutSkillAuthorizationAsync(PutSkillAuthorizationRequest, cb)
	assert(PutSkillAuthorizationRequest, "You must provide a PutSkillAuthorizationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.PutSkillAuthorization",
	}
	for header,value in pairs(PutSkillAuthorizationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutSkillAuthorizationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutSkillAuthorization synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutSkillAuthorizationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutSkillAuthorizationSync(PutSkillAuthorizationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutSkillAuthorizationAsync(PutSkillAuthorizationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetContact asynchronously, invoking a callback when done
-- @param GetContactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetContactAsync(GetContactRequest, cb)
	assert(GetContactRequest, "You must provide a GetContactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetContact",
	}
	for header,value in pairs(GetContactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetContactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetContact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetContactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetContactSync(GetContactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetContactAsync(GetContactRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSkillGroup asynchronously, invoking a callback when done
-- @param UpdateSkillGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSkillGroupAsync(UpdateSkillGroupRequest, cb)
	assert(UpdateSkillGroupRequest, "You must provide a UpdateSkillGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.UpdateSkillGroup",
	}
	for header,value in pairs(UpdateSkillGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSkillGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSkillGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSkillGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSkillGroupSync(UpdateSkillGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSkillGroupAsync(UpdateSkillGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConferenceProvider asynchronously, invoking a callback when done
-- @param DeleteConferenceProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConferenceProviderAsync(DeleteConferenceProviderRequest, cb)
	assert(DeleteConferenceProviderRequest, "You must provide a DeleteConferenceProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteConferenceProvider",
	}
	for header,value in pairs(DeleteConferenceProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConferenceProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConferenceProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConferenceProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConferenceProviderSync(DeleteConferenceProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConferenceProviderAsync(DeleteConferenceProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRoom asynchronously, invoking a callback when done
-- @param GetRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRoomAsync(GetRoomRequest, cb)
	assert(GetRoomRequest, "You must provide a GetRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetRoom",
	}
	for header,value in pairs(GetRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRoomSync(GetRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRoomAsync(GetRoomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSkillsStoreSkillsByCategory asynchronously, invoking a callback when done
-- @param ListSkillsStoreSkillsByCategoryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSkillsStoreSkillsByCategoryAsync(ListSkillsStoreSkillsByCategoryRequest, cb)
	assert(ListSkillsStoreSkillsByCategoryRequest, "You must provide a ListSkillsStoreSkillsByCategoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ListSkillsStoreSkillsByCategory",
	}
	for header,value in pairs(ListSkillsStoreSkillsByCategoryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSkillsStoreSkillsByCategoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSkillsStoreSkillsByCategory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSkillsStoreSkillsByCategoryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSkillsStoreSkillsByCategorySync(ListSkillsStoreSkillsByCategoryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSkillsStoreSkillsByCategoryAsync(ListSkillsStoreSkillsByCategoryRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSkillGroup asynchronously, invoking a callback when done
-- @param CreateSkillGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSkillGroupAsync(CreateSkillGroupRequest, cb)
	assert(CreateSkillGroupRequest, "You must provide a CreateSkillGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.CreateSkillGroup",
	}
	for header,value in pairs(CreateSkillGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSkillGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSkillGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSkillGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSkillGroupSync(CreateSkillGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSkillGroupAsync(CreateSkillGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAddressBook asynchronously, invoking a callback when done
-- @param CreateAddressBookRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAddressBookAsync(CreateAddressBookRequest, cb)
	assert(CreateAddressBookRequest, "You must provide a CreateAddressBookRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.CreateAddressBook",
	}
	for header,value in pairs(CreateAddressBookRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAddressBookRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAddressBook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAddressBookRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAddressBookSync(CreateAddressBookRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAddressBookAsync(CreateAddressBookRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateProfile asynchronously, invoking a callback when done
-- @param CreateProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateProfileAsync(CreateProfileRequest, cb)
	assert(CreateProfileRequest, "You must provide a CreateProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.CreateProfile",
	}
	for header,value in pairs(CreateProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateProfileSync(CreateProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateProfileAsync(CreateProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendInvitation asynchronously, invoking a callback when done
-- @param SendInvitationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendInvitationAsync(SendInvitationRequest, cb)
	assert(SendInvitationRequest, "You must provide a SendInvitationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.SendInvitation",
	}
	for header,value in pairs(SendInvitationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendInvitationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendInvitation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendInvitationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendInvitationSync(SendInvitationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendInvitationAsync(SendInvitationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSkills asynchronously, invoking a callback when done
-- @param ListSkillsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSkillsAsync(ListSkillsRequest, cb)
	assert(ListSkillsRequest, "You must provide a ListSkillsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ListSkills",
	}
	for header,value in pairs(ListSkillsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSkillsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSkills synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSkillsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSkillsSync(ListSkillsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSkillsAsync(ListSkillsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchSkillGroups asynchronously, invoking a callback when done
-- @param SearchSkillGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchSkillGroupsAsync(SearchSkillGroupsRequest, cb)
	assert(SearchSkillGroupsRequest, "You must provide a SearchSkillGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.SearchSkillGroups",
	}
	for header,value in pairs(SearchSkillGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchSkillGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchSkillGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchSkillGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchSkillGroupsSync(SearchSkillGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchSkillGroupsAsync(SearchSkillGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RevokeInvitation asynchronously, invoking a callback when done
-- @param RevokeInvitationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RevokeInvitationAsync(RevokeInvitationRequest, cb)
	assert(RevokeInvitationRequest, "You must provide a RevokeInvitationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.RevokeInvitation",
	}
	for header,value in pairs(RevokeInvitationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RevokeInvitationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RevokeInvitation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RevokeInvitationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RevokeInvitationSync(RevokeInvitationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RevokeInvitationAsync(RevokeInvitationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateSkillWithSkillGroup asynchronously, invoking a callback when done
-- @param AssociateSkillWithSkillGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateSkillWithSkillGroupAsync(AssociateSkillWithSkillGroupRequest, cb)
	assert(AssociateSkillWithSkillGroupRequest, "You must provide a AssociateSkillWithSkillGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.AssociateSkillWithSkillGroup",
	}
	for header,value in pairs(AssociateSkillWithSkillGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateSkillWithSkillGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateSkillWithSkillGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateSkillWithSkillGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateSkillWithSkillGroupSync(AssociateSkillWithSkillGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateSkillWithSkillGroupAsync(AssociateSkillWithSkillGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteProfile asynchronously, invoking a callback when done
-- @param DeleteProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteProfileAsync(DeleteProfileRequest, cb)
	assert(DeleteProfileRequest, "You must provide a DeleteProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteProfile",
	}
	for header,value in pairs(DeleteProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteProfileSync(DeleteProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteProfileAsync(DeleteProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRoomSkillParameter asynchronously, invoking a callback when done
-- @param DeleteRoomSkillParameterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRoomSkillParameterAsync(DeleteRoomSkillParameterRequest, cb)
	assert(DeleteRoomSkillParameterRequest, "You must provide a DeleteRoomSkillParameterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteRoomSkillParameter",
	}
	for header,value in pairs(DeleteRoomSkillParameterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRoomSkillParameterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRoomSkillParameter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRoomSkillParameterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRoomSkillParameterSync(DeleteRoomSkillParameterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRoomSkillParameterAsync(DeleteRoomSkillParameterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateSkillFromSkillGroup asynchronously, invoking a callback when done
-- @param DisassociateSkillFromSkillGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateSkillFromSkillGroupAsync(DisassociateSkillFromSkillGroupRequest, cb)
	assert(DisassociateSkillFromSkillGroupRequest, "You must provide a DisassociateSkillFromSkillGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DisassociateSkillFromSkillGroup",
	}
	for header,value in pairs(DisassociateSkillFromSkillGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateSkillFromSkillGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateSkillFromSkillGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateSkillFromSkillGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateSkillFromSkillGroupSync(DisassociateSkillFromSkillGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateSkillFromSkillGroupAsync(DisassociateSkillFromSkillGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDevice asynchronously, invoking a callback when done
-- @param DeleteDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDeviceAsync(DeleteDeviceRequest, cb)
	assert(DeleteDeviceRequest, "You must provide a DeleteDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteDevice",
	}
	for header,value in pairs(DeleteDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDeviceSync(DeleteDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDeviceAsync(DeleteDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartDeviceSync asynchronously, invoking a callback when done
-- @param StartDeviceSyncRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartDeviceSyncAsync(StartDeviceSyncRequest, cb)
	assert(StartDeviceSyncRequest, "You must provide a StartDeviceSyncRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.StartDeviceSync",
	}
	for header,value in pairs(StartDeviceSyncRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartDeviceSyncRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartDeviceSync synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartDeviceSyncRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartDeviceSyncSync(StartDeviceSyncRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartDeviceSyncAsync(StartDeviceSyncRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSkillGroup asynchronously, invoking a callback when done
-- @param DeleteSkillGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSkillGroupAsync(DeleteSkillGroupRequest, cb)
	assert(DeleteSkillGroupRequest, "You must provide a DeleteSkillGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteSkillGroup",
	}
	for header,value in pairs(DeleteSkillGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSkillGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSkillGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSkillGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSkillGroupSync(DeleteSkillGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSkillGroupAsync(DeleteSkillGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RejectSkill asynchronously, invoking a callback when done
-- @param RejectSkillRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RejectSkillAsync(RejectSkillRequest, cb)
	assert(RejectSkillRequest, "You must provide a RejectSkillRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.RejectSkill",
	}
	for header,value in pairs(RejectSkillRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RejectSkillRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RejectSkill synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RejectSkillRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RejectSkillSync(RejectSkillRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RejectSkillAsync(RejectSkillRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDeviceEvents asynchronously, invoking a callback when done
-- @param ListDeviceEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDeviceEventsAsync(ListDeviceEventsRequest, cb)
	assert(ListDeviceEventsRequest, "You must provide a ListDeviceEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ListDeviceEvents",
	}
	for header,value in pairs(ListDeviceEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDeviceEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDeviceEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDeviceEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDeviceEventsSync(ListDeviceEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDeviceEventsAsync(ListDeviceEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSkillGroup asynchronously, invoking a callback when done
-- @param GetSkillGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSkillGroupAsync(GetSkillGroupRequest, cb)
	assert(GetSkillGroupRequest, "You must provide a GetSkillGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetSkillGroup",
	}
	for header,value in pairs(GetSkillGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSkillGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSkillGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSkillGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSkillGroupSync(GetSkillGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSkillGroupAsync(GetSkillGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchUsers asynchronously, invoking a callback when done
-- @param SearchUsersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchUsersAsync(SearchUsersRequest, cb)
	assert(SearchUsersRequest, "You must provide a SearchUsersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.SearchUsers",
	}
	for header,value in pairs(SearchUsersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchUsersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchUsers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchUsersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchUsersSync(SearchUsersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchUsersAsync(SearchUsersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateRoom asynchronously, invoking a callback when done
-- @param UpdateRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateRoomAsync(UpdateRoomRequest, cb)
	assert(UpdateRoomRequest, "You must provide a UpdateRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.UpdateRoom",
	}
	for header,value in pairs(UpdateRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateRoomSync(UpdateRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateRoomAsync(UpdateRoomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ListTags",
	}
	for header,value in pairs(ListTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsSync(ListTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(ListTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAddressBook asynchronously, invoking a callback when done
-- @param GetAddressBookRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAddressBookAsync(GetAddressBookRequest, cb)
	assert(GetAddressBookRequest, "You must provide a GetAddressBookRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetAddressBook",
	}
	for header,value in pairs(GetAddressBookRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAddressBookRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAddressBook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAddressBookRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAddressBookSync(GetAddressBookRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAddressBookAsync(GetAddressBookRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRoomSkillParameter asynchronously, invoking a callback when done
-- @param PutRoomSkillParameterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRoomSkillParameterAsync(PutRoomSkillParameterRequest, cb)
	assert(PutRoomSkillParameterRequest, "You must provide a PutRoomSkillParameterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.PutRoomSkillParameter",
	}
	for header,value in pairs(PutRoomSkillParameterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRoomSkillParameterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRoomSkillParameter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRoomSkillParameterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutRoomSkillParameterSync(PutRoomSkillParameterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRoomSkillParameterAsync(PutRoomSkillParameterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateDeviceFromRoom asynchronously, invoking a callback when done
-- @param DisassociateDeviceFromRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateDeviceFromRoomAsync(DisassociateDeviceFromRoomRequest, cb)
	assert(DisassociateDeviceFromRoomRequest, "You must provide a DisassociateDeviceFromRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DisassociateDeviceFromRoom",
	}
	for header,value in pairs(DisassociateDeviceFromRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateDeviceFromRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateDeviceFromRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateDeviceFromRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateDeviceFromRoomSync(DisassociateDeviceFromRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateDeviceFromRoomAsync(DisassociateDeviceFromRoomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchRooms asynchronously, invoking a callback when done
-- @param SearchRoomsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchRoomsAsync(SearchRoomsRequest, cb)
	assert(SearchRoomsRequest, "You must provide a SearchRoomsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.SearchRooms",
	}
	for header,value in pairs(SearchRoomsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchRoomsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchRooms synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchRoomsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchRoomsSync(SearchRoomsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchRoomsAsync(SearchRoomsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteContact asynchronously, invoking a callback when done
-- @param DeleteContactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteContactAsync(DeleteContactRequest, cb)
	assert(DeleteContactRequest, "You must provide a DeleteContactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteContact",
	}
	for header,value in pairs(DeleteContactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteContactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteContact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteContactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteContactSync(DeleteContactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteContactAsync(DeleteContactRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDevice asynchronously, invoking a callback when done
-- @param UpdateDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDeviceAsync(UpdateDeviceRequest, cb)
	assert(UpdateDeviceRequest, "You must provide a UpdateDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.UpdateDevice",
	}
	for header,value in pairs(UpdateDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDeviceSync(UpdateDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDeviceAsync(UpdateDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutConferencePreference asynchronously, invoking a callback when done
-- @param PutConferencePreferenceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutConferencePreferenceAsync(PutConferencePreferenceRequest, cb)
	assert(PutConferencePreferenceRequest, "You must provide a PutConferencePreferenceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.PutConferencePreference",
	}
	for header,value in pairs(PutConferencePreferenceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutConferencePreferenceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutConferencePreference synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutConferencePreferenceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutConferencePreferenceSync(PutConferencePreferenceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutConferencePreferenceAsync(PutConferencePreferenceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ForgetSmartHomeAppliances asynchronously, invoking a callback when done
-- @param ForgetSmartHomeAppliancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ForgetSmartHomeAppliancesAsync(ForgetSmartHomeAppliancesRequest, cb)
	assert(ForgetSmartHomeAppliancesRequest, "You must provide a ForgetSmartHomeAppliancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ForgetSmartHomeAppliances",
	}
	for header,value in pairs(ForgetSmartHomeAppliancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ForgetSmartHomeAppliancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ForgetSmartHomeAppliances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ForgetSmartHomeAppliancesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ForgetSmartHomeAppliancesSync(ForgetSmartHomeAppliancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ForgetSmartHomeAppliancesAsync(ForgetSmartHomeAppliancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevice asynchronously, invoking a callback when done
-- @param GetDeviceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDeviceAsync(GetDeviceRequest, cb)
	assert(GetDeviceRequest, "You must provide a GetDeviceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetDevice",
	}
	for header,value in pairs(GetDeviceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeviceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDevice synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeviceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDeviceSync(GetDeviceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeviceAsync(GetDeviceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateSkillGroupWithRoom asynchronously, invoking a callback when done
-- @param AssociateSkillGroupWithRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateSkillGroupWithRoomAsync(AssociateSkillGroupWithRoomRequest, cb)
	assert(AssociateSkillGroupWithRoomRequest, "You must provide a AssociateSkillGroupWithRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.AssociateSkillGroupWithRoom",
	}
	for header,value in pairs(AssociateSkillGroupWithRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateSkillGroupWithRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateSkillGroupWithRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateSkillGroupWithRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateSkillGroupWithRoomSync(AssociateSkillGroupWithRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateSkillGroupWithRoomAsync(AssociateSkillGroupWithRoomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateSkillGroupFromRoom asynchronously, invoking a callback when done
-- @param DisassociateSkillGroupFromRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateSkillGroupFromRoomAsync(DisassociateSkillGroupFromRoomRequest, cb)
	assert(DisassociateSkillGroupFromRoomRequest, "You must provide a DisassociateSkillGroupFromRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DisassociateSkillGroupFromRoom",
	}
	for header,value in pairs(DisassociateSkillGroupFromRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateSkillGroupFromRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateSkillGroupFromRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateSkillGroupFromRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateSkillGroupFromRoomSync(DisassociateSkillGroupFromRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateSkillGroupFromRoomAsync(DisassociateSkillGroupFromRoomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateContact asynchronously, invoking a callback when done
-- @param CreateContactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateContactAsync(CreateContactRequest, cb)
	assert(CreateContactRequest, "You must provide a CreateContactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.CreateContact",
	}
	for header,value in pairs(CreateContactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateContactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateContact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateContactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateContactSync(CreateContactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateContactAsync(CreateContactRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchAddressBooks asynchronously, invoking a callback when done
-- @param SearchAddressBooksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchAddressBooksAsync(SearchAddressBooksRequest, cb)
	assert(SearchAddressBooksRequest, "You must provide a SearchAddressBooksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.SearchAddressBooks",
	}
	for header,value in pairs(SearchAddressBooksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchAddressBooksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchAddressBooks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchAddressBooksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchAddressBooksSync(SearchAddressBooksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchAddressBooksAsync(SearchAddressBooksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartSmartHomeApplianceDiscovery asynchronously, invoking a callback when done
-- @param StartSmartHomeApplianceDiscoveryRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartSmartHomeApplianceDiscoveryAsync(StartSmartHomeApplianceDiscoveryRequest, cb)
	assert(StartSmartHomeApplianceDiscoveryRequest, "You must provide a StartSmartHomeApplianceDiscoveryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.StartSmartHomeApplianceDiscovery",
	}
	for header,value in pairs(StartSmartHomeApplianceDiscoveryRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartSmartHomeApplianceDiscoveryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartSmartHomeApplianceDiscovery synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartSmartHomeApplianceDiscoveryRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartSmartHomeApplianceDiscoverySync(StartSmartHomeApplianceDiscoveryRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartSmartHomeApplianceDiscoveryAsync(StartSmartHomeApplianceDiscoveryRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteUser",
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

--- Call UpdateContact asynchronously, invoking a callback when done
-- @param UpdateContactRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateContactAsync(UpdateContactRequest, cb)
	assert(UpdateContactRequest, "You must provide a UpdateContactRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.UpdateContact",
	}
	for header,value in pairs(UpdateContactRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateContactRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateContact synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateContactRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateContactSync(UpdateContactRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateContactAsync(UpdateContactRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAddressBook asynchronously, invoking a callback when done
-- @param UpdateAddressBookRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAddressBookAsync(UpdateAddressBookRequest, cb)
	assert(UpdateAddressBookRequest, "You must provide a UpdateAddressBookRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.UpdateAddressBook",
	}
	for header,value in pairs(UpdateAddressBookRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAddressBookRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAddressBook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAddressBookRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAddressBookSync(UpdateAddressBookRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAddressBookAsync(UpdateAddressBookRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConferenceProvider asynchronously, invoking a callback when done
-- @param CreateConferenceProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConferenceProviderAsync(CreateConferenceProviderRequest, cb)
	assert(CreateConferenceProviderRequest, "You must provide a CreateConferenceProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.CreateConferenceProvider",
	}
	for header,value in pairs(CreateConferenceProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConferenceProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConferenceProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConferenceProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConferenceProviderSync(CreateConferenceProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConferenceProviderAsync(CreateConferenceProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SearchDevices asynchronously, invoking a callback when done
-- @param SearchDevicesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchDevicesAsync(SearchDevicesRequest, cb)
	assert(SearchDevicesRequest, "You must provide a SearchDevicesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.SearchDevices",
	}
	for header,value in pairs(SearchDevicesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchDevicesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchDevices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchDevicesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchDevicesSync(SearchDevicesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchDevicesAsync(SearchDevicesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConferenceProvider asynchronously, invoking a callback when done
-- @param UpdateConferenceProviderRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConferenceProviderAsync(UpdateConferenceProviderRequest, cb)
	assert(UpdateConferenceProviderRequest, "You must provide a UpdateConferenceProviderRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.UpdateConferenceProvider",
	}
	for header,value in pairs(UpdateConferenceProviderRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConferenceProviderRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConferenceProvider synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConferenceProviderRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConferenceProviderSync(UpdateConferenceProviderRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConferenceProviderAsync(UpdateConferenceProviderRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateProfile asynchronously, invoking a callback when done
-- @param UpdateProfileRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateProfileAsync(UpdateProfileRequest, cb)
	assert(UpdateProfileRequest, "You must provide a UpdateProfileRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.UpdateProfile",
	}
	for header,value in pairs(UpdateProfileRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateProfileRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateProfile synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateProfileRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateProfileSync(UpdateProfileRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateProfileAsync(UpdateProfileRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ApproveSkill asynchronously, invoking a callback when done
-- @param ApproveSkillRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ApproveSkillAsync(ApproveSkillRequest, cb)
	assert(ApproveSkillRequest, "You must provide a ApproveSkillRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ApproveSkill",
	}
	for header,value in pairs(ApproveSkillRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ApproveSkillRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ApproveSkill synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ApproveSkillRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ApproveSkillSync(ApproveSkillRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ApproveSkillAsync(ApproveSkillRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRoom asynchronously, invoking a callback when done
-- @param DeleteRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRoomAsync(DeleteRoomRequest, cb)
	assert(DeleteRoomRequest, "You must provide a DeleteRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteRoom",
	}
	for header,value in pairs(DeleteRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRoomSync(DeleteRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRoomAsync(DeleteRoomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateContactFromAddressBook asynchronously, invoking a callback when done
-- @param DisassociateContactFromAddressBookRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateContactFromAddressBookAsync(DisassociateContactFromAddressBookRequest, cb)
	assert(DisassociateContactFromAddressBookRequest, "You must provide a DisassociateContactFromAddressBookRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DisassociateContactFromAddressBook",
	}
	for header,value in pairs(DisassociateContactFromAddressBookRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateContactFromAddressBookRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateContactFromAddressBook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateContactFromAddressBookRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateContactFromAddressBookSync(DisassociateContactFromAddressBookRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateContactFromAddressBookAsync(DisassociateContactFromAddressBookRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSmartHomeAppliances asynchronously, invoking a callback when done
-- @param ListSmartHomeAppliancesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSmartHomeAppliancesAsync(ListSmartHomeAppliancesRequest, cb)
	assert(ListSmartHomeAppliancesRequest, "You must provide a ListSmartHomeAppliancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ListSmartHomeAppliances",
	}
	for header,value in pairs(ListSmartHomeAppliancesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSmartHomeAppliancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSmartHomeAppliances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSmartHomeAppliancesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListSmartHomeAppliancesSync(ListSmartHomeAppliancesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSmartHomeAppliancesAsync(ListSmartHomeAppliancesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetRoomSkillParameter asynchronously, invoking a callback when done
-- @param GetRoomSkillParameterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetRoomSkillParameterAsync(GetRoomSkillParameterRequest, cb)
	assert(GetRoomSkillParameterRequest, "You must provide a GetRoomSkillParameterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetRoomSkillParameter",
	}
	for header,value in pairs(GetRoomSkillParameterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetRoomSkillParameterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetRoomSkillParameter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetRoomSkillParameterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetRoomSkillParameterSync(GetRoomSkillParameterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetRoomSkillParameterAsync(GetRoomSkillParameterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAddressBook asynchronously, invoking a callback when done
-- @param DeleteAddressBookRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAddressBookAsync(DeleteAddressBookRequest, cb)
	assert(DeleteAddressBookRequest, "You must provide a DeleteAddressBookRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.DeleteAddressBook",
	}
	for header,value in pairs(DeleteAddressBookRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAddressBookRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAddressBook synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAddressBookRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAddressBookSync(DeleteAddressBookRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAddressBookAsync(DeleteAddressBookRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResolveRoom asynchronously, invoking a callback when done
-- @param ResolveRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResolveRoomAsync(ResolveRoomRequest, cb)
	assert(ResolveRoomRequest, "You must provide a ResolveRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.ResolveRoom",
	}
	for header,value in pairs(ResolveRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResolveRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResolveRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResolveRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResolveRoomSync(ResolveRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResolveRoomAsync(ResolveRoomRequest, function(response, error_type, error_message)
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
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.CreateUser",
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

--- Call SearchProfiles asynchronously, invoking a callback when done
-- @param SearchProfilesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SearchProfilesAsync(SearchProfilesRequest, cb)
	assert(SearchProfilesRequest, "You must provide a SearchProfilesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.SearchProfiles",
	}
	for header,value in pairs(SearchProfilesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SearchProfilesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SearchProfiles synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SearchProfilesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SearchProfilesSync(SearchProfilesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SearchProfilesAsync(SearchProfilesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetConferencePreference asynchronously, invoking a callback when done
-- @param GetConferencePreferenceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetConferencePreferenceAsync(GetConferencePreferenceRequest, cb)
	assert(GetConferencePreferenceRequest, "You must provide a GetConferencePreferenceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.GetConferencePreference",
	}
	for header,value in pairs(GetConferencePreferenceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetConferencePreferenceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetConferencePreference synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetConferencePreferenceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetConferencePreferenceSync(GetConferencePreferenceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConferencePreferenceAsync(GetConferencePreferenceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateRoom asynchronously, invoking a callback when done
-- @param CreateRoomRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateRoomAsync(CreateRoomRequest, cb)
	assert(CreateRoomRequest, "You must provide a CreateRoomRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AlexaForBusiness.CreateRoom",
	}
	for header,value in pairs(CreateRoomRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateRoomRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateRoom synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateRoomRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateRoomSync(CreateRoomRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateRoomAsync(CreateRoomRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
