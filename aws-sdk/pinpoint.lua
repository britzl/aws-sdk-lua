--- GENERATED CODE - DO NOT MODIFY
-- Amazon Pinpoint (pinpoint-2016-12-01)

local M = {}

M.metadata = {
	api_version = "2016-12-01",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "pinpoint",
	service_abbreviation = "",
	service_full_name = "Amazon Pinpoint",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "pinpoint-2016-12-01",
}

local keys = {}
local asserts = {}

keys.UpdateApplicationSettingsResponse = { ["ApplicationSettingsResource"] = true, nil }

function asserts.AssertUpdateApplicationSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationSettingsResponse to be of type 'table'")
	assert(struct["ApplicationSettingsResource"], "Expected key ApplicationSettingsResource to exist in table")
	if struct["ApplicationSettingsResource"] then asserts.AssertApplicationSettingsResource(struct["ApplicationSettingsResource"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationSettingsResponse[k], "UpdateApplicationSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationSettingsResource [ApplicationSettingsResource] 
-- Required key: ApplicationSettingsResource
-- @return UpdateApplicationSettingsResponse structure as a key-value pair table
function M.UpdateApplicationSettingsResponse(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationSettingsResource"] = args["ApplicationSettingsResource"],
	}
	asserts.AssertUpdateApplicationSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityResponse = { ["End"] = true, ["CampaignId"] = true, ["TimezonesTotalCount"] = true, ["SuccessfulEndpointCount"] = true, ["ScheduledStart"] = true, ["TotalEndpointCount"] = true, ["Start"] = true, ["State"] = true, ["Result"] = true, ["TimezonesCompletedCount"] = true, ["TreatmentId"] = true, ["ApplicationId"] = true, ["Id"] = true, nil }

function asserts.AssertActivityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityResponse to be of type 'table'")
	if struct["End"] then asserts.Assert__string(struct["End"]) end
	if struct["CampaignId"] then asserts.Assert__string(struct["CampaignId"]) end
	if struct["TimezonesTotalCount"] then asserts.Assert__integer(struct["TimezonesTotalCount"]) end
	if struct["SuccessfulEndpointCount"] then asserts.Assert__integer(struct["SuccessfulEndpointCount"]) end
	if struct["ScheduledStart"] then asserts.Assert__string(struct["ScheduledStart"]) end
	if struct["TotalEndpointCount"] then asserts.Assert__integer(struct["TotalEndpointCount"]) end
	if struct["Start"] then asserts.Assert__string(struct["Start"]) end
	if struct["State"] then asserts.Assert__string(struct["State"]) end
	if struct["Result"] then asserts.Assert__string(struct["Result"]) end
	if struct["TimezonesCompletedCount"] then asserts.Assert__integer(struct["TimezonesCompletedCount"]) end
	if struct["TreatmentId"] then asserts.Assert__string(struct["TreatmentId"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityResponse[k], "ActivityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityResponse
-- Activity definition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * End [__string] The actual time the activity was marked CANCELLED or COMPLETED. Provided in ISO 8601 format.
-- * CampaignId [__string] The ID of the campaign to which the activity applies.
-- * TimezonesTotalCount [__integer] The total number of unique timezones present in the segment.
-- * SuccessfulEndpointCount [__integer] The total number of endpoints to which the campaign successfully delivered messages.
-- * ScheduledStart [__string] The scheduled start time for the activity in ISO 8601 format.
-- * TotalEndpointCount [__integer] The total number of endpoints to which the campaign attempts to deliver messages.
-- * Start [__string] The actual start time of the activity in ISO 8601 format.
-- * State [__string] The state of the activity.
--
--Valid values: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, COMPLETED
-- * Result [__string] Indicates whether the activity succeeded.
--
--Valid values: SUCCESS, FAIL
-- * TimezonesCompletedCount [__integer] The total number of timezones completed.
-- * TreatmentId [__string] The ID of a variation of the campaign used for A/B testing.
-- * ApplicationId [__string] The ID of the application to which the campaign applies.
-- * Id [__string] The unique activity ID.
-- @return ActivityResponse structure as a key-value pair table
function M.ActivityResponse(args)
	assert(args, "You must provide an argument table when creating ActivityResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["End"] = args["End"],
		["CampaignId"] = args["CampaignId"],
		["TimezonesTotalCount"] = args["TimezonesTotalCount"],
		["SuccessfulEndpointCount"] = args["SuccessfulEndpointCount"],
		["ScheduledStart"] = args["ScheduledStart"],
		["TotalEndpointCount"] = args["TotalEndpointCount"],
		["Start"] = args["Start"],
		["State"] = args["State"],
		["Result"] = args["Result"],
		["TimezonesCompletedCount"] = args["TimezonesCompletedCount"],
		["TreatmentId"] = args["TreatmentId"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
	}
	asserts.AssertActivityResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSmsChannelResponse = { ["SMSChannelResponse"] = true, nil }

function asserts.AssertDeleteSmsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSmsChannelResponse to be of type 'table'")
	assert(struct["SMSChannelResponse"], "Expected key SMSChannelResponse to exist in table")
	if struct["SMSChannelResponse"] then asserts.AssertSMSChannelResponse(struct["SMSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSmsChannelResponse[k], "DeleteSmsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSmsChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SMSChannelResponse [SMSChannelResponse] 
-- Required key: SMSChannelResponse
-- @return DeleteSmsChannelResponse structure as a key-value pair table
function M.DeleteSmsChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSmsChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SMSChannelResponse"] = args["SMSChannelResponse"],
	}
	asserts.AssertDeleteSmsChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetImportJobsRequest = { ["Token"] = true, ["ApplicationId"] = true, ["PageSize"] = true, nil }

function asserts.AssertGetImportJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetImportJobsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetImportJobsRequest[k], "GetImportJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetImportJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- Required key: ApplicationId
-- @return GetImportJobsRequest structure as a key-value pair table
function M.GetImportJobsRequest(args)
	assert(args, "You must provide an argument table when creating GetImportJobsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertGetImportJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointUser = { ["UserId"] = true, ["UserAttributes"] = true, nil }

function asserts.AssertEndpointUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointUser to be of type 'table'")
	if struct["UserId"] then asserts.Assert__string(struct["UserId"]) end
	if struct["UserAttributes"] then asserts.AssertMapOfListOf__string(struct["UserAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointUser[k], "EndpointUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointUser
-- Endpoint user specific custom userAttributes
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [__string] The unique ID of the user.
-- * UserAttributes [MapOfListOf__string] Custom attributes that describe the user by associating a name with an array of values. For example, an attribute named "interests" might have the following values: ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create segments.
--
--The Amazon Pinpoint console can't display attribute names that include the following characters: hash/pound sign (#), colon (:), question mark (?), backslash (\), and forward slash (/). For this reason, you should avoid using these characters in the names of custom attributes.
-- @return EndpointUser structure as a key-value pair table
function M.EndpointUser(args)
	assert(args, "You must provide an argument table when creating EndpointUser")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserId"] = args["UserId"],
		["UserAttributes"] = args["UserAttributes"],
	}
	asserts.AssertEndpointUser(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApnsChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetApnsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApnsChannelRequest[k], "GetApnsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetApnsChannelRequest structure as a key-value pair table
function M.GetApnsChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetApnsChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetApnsChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAdmChannelResponse = { ["ADMChannelResponse"] = true, nil }

function asserts.AssertUpdateAdmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAdmChannelResponse to be of type 'table'")
	assert(struct["ADMChannelResponse"], "Expected key ADMChannelResponse to exist in table")
	if struct["ADMChannelResponse"] then asserts.AssertADMChannelResponse(struct["ADMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAdmChannelResponse[k], "UpdateAdmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAdmChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ADMChannelResponse [ADMChannelResponse] 
-- Required key: ADMChannelResponse
-- @return UpdateAdmChannelResponse structure as a key-value pair table
function M.UpdateAdmChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateAdmChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ADMChannelResponse"] = args["ADMChannelResponse"],
	}
	asserts.AssertUpdateAdmChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointItemResponse = { ["Message"] = true, ["StatusCode"] = true, nil }

function asserts.AssertEndpointItemResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointItemResponse to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["StatusCode"] then asserts.Assert__integer(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointItemResponse[k], "EndpointItemResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointItemResponse
-- The responses that are returned after you create or update an endpoint and record an event.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] A custom message associated with the registration of an endpoint when issuing a response.
-- * StatusCode [__integer] The status code to respond with for a particular endpoint id after endpoint registration
-- @return EndpointItemResponse structure as a key-value pair table
function M.EndpointItemResponse(args)
	assert(args, "You must provide an argument table when creating EndpointItemResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertEndpointItemResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BadRequestException = { ["Message"] = true, ["RequestID"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["RequestID"] then asserts.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- Simple message object.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] The error message that's returned from the API.
-- * RequestID [__string] The unique message body ID.
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
		["Message"] = args["Message"],
		["RequestID"] = args["RequestID"],
	}
	asserts.AssertBadRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendUsersMessagesRequest = { ["SendUsersMessageRequest"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertSendUsersMessagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendUsersMessagesRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["SendUsersMessageRequest"], "Expected key SendUsersMessageRequest to exist in table")
	if struct["SendUsersMessageRequest"] then asserts.AssertSendUsersMessageRequest(struct["SendUsersMessageRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendUsersMessagesRequest[k], "SendUsersMessagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendUsersMessagesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SendUsersMessageRequest [SendUsersMessageRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: SendUsersMessageRequest
-- @return SendUsersMessagesRequest structure as a key-value pair table
function M.SendUsersMessagesRequest(args)
	assert(args, "You must provide an argument table when creating SendUsersMessagesRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["SendUsersMessageRequest"] = args["SendUsersMessageRequest"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertSendUsersMessagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApnsChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteApnsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApnsChannelRequest[k], "DeleteApnsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteApnsChannelRequest structure as a key-value pair table
function M.DeleteApnsChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteApnsChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteApnsChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationsResponse = { ["Item"] = true, ["NextToken"] = true, nil }

function asserts.AssertApplicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationsResponse to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfApplicationResponse(struct["Item"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationsResponse[k], "ApplicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationsResponse
-- Get Applications Result.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [ListOfApplicationResponse] List of applications returned in this page.
-- * NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
-- @return ApplicationsResponse structure as a key-value pair table
function M.ApplicationsResponse(args)
	assert(args, "You must provide an argument table when creating ApplicationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertApplicationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetChannelsRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetChannelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChannelsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetChannelsRequest[k], "GetChannelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChannelsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetChannelsRequest structure as a key-value pair table
function M.GetChannelsRequest(args)
	assert(args, "You must provide an argument table when creating GetChannelsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetChannelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NumberValidateRequest = { ["PhoneNumber"] = true, ["IsoCountryCode"] = true, nil }

function asserts.AssertNumberValidateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberValidateRequest to be of type 'table'")
	if struct["PhoneNumber"] then asserts.Assert__string(struct["PhoneNumber"]) end
	if struct["IsoCountryCode"] then asserts.Assert__string(struct["IsoCountryCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberValidateRequest[k], "NumberValidateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberValidateRequest
-- Phone Number Information request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PhoneNumber [__string] The phone number to get information about. The phone number that you provide should include a country code. If the number doesn't include a valid country code, the operation might result in an error.
-- * IsoCountryCode [__string] (Optional) The two-character ISO country code for the country or region where the phone number was originally registered.
-- @return NumberValidateRequest structure as a key-value pair table
function M.NumberValidateRequest(args)
	assert(args, "You must provide an argument table when creating NumberValidateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PhoneNumber"] = args["PhoneNumber"],
		["IsoCountryCode"] = args["IsoCountryCode"],
	}
	asserts.AssertNumberValidateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SMSMessage = { ["Body"] = true, ["Keyword"] = true, ["SenderId"] = true, ["MessageType"] = true, ["Substitutions"] = true, ["OriginationNumber"] = true, nil }

function asserts.AssertSMSMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Keyword"] then asserts.Assert__string(struct["Keyword"]) end
	if struct["SenderId"] then asserts.Assert__string(struct["SenderId"]) end
	if struct["MessageType"] then asserts.AssertMessageType(struct["MessageType"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["OriginationNumber"] then asserts.Assert__string(struct["OriginationNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.SMSMessage[k], "SMSMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSMessage
-- SMS Message.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The body of the SMS message.
-- * Keyword [__string] The SMS program name that you provided to AWS Support when you requested your dedicated number.
-- * SenderId [__string] The sender ID that is shown as the message sender on the recipient's device. Support for sender IDs varies by country or region.
-- * MessageType [MessageType] Is this a transaction priority message or lower priority.
-- * Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- * OriginationNumber [__string] The phone number that the SMS message originates from. Specify one of the dedicated long codes or short codes that you requested from AWS Support and that is assigned to your account. If this attribute is not specified, Amazon Pinpoint randomly assigns a long code.
-- @return SMSMessage structure as a key-value pair table
function M.SMSMessage(args)
	assert(args, "You must provide an argument table when creating SMSMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Keyword"] = args["Keyword"],
		["SenderId"] = args["SenderId"],
		["MessageType"] = args["MessageType"],
		["Substitutions"] = args["Substitutions"],
		["OriginationNumber"] = args["OriginationNumber"],
	}
	asserts.AssertSMSMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerErrorException = { ["Message"] = true, ["RequestID"] = true, nil }

function asserts.AssertInternalServerErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerErrorException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["RequestID"] then asserts.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerErrorException[k], "InternalServerErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerErrorException
-- Simple message object.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] The error message that's returned from the API.
-- * RequestID [__string] The unique message body ID.
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
		["Message"] = args["Message"],
		["RequestID"] = args["RequestID"],
	}
	asserts.AssertInternalServerErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetImportJobsResponse = { ["ImportJobsResponse"] = true, nil }

function asserts.AssertGetImportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetImportJobsResponse to be of type 'table'")
	assert(struct["ImportJobsResponse"], "Expected key ImportJobsResponse to exist in table")
	if struct["ImportJobsResponse"] then asserts.AssertImportJobsResponse(struct["ImportJobsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetImportJobsResponse[k], "GetImportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetImportJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImportJobsResponse [ImportJobsResponse] 
-- Required key: ImportJobsResponse
-- @return GetImportJobsResponse structure as a key-value pair table
function M.GetImportJobsResponse(args)
	assert(args, "You must provide an argument table when creating GetImportJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImportJobsResponse"] = args["ImportJobsResponse"],
	}
	asserts.AssertGetImportJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCampaignRequest = { ["ApplicationId"] = true, ["WriteCampaignRequest"] = true, nil }

function asserts.AssertCreateCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCampaignRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteCampaignRequest"], "Expected key WriteCampaignRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["WriteCampaignRequest"] then asserts.AssertWriteCampaignRequest(struct["WriteCampaignRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCampaignRequest[k], "CreateCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCampaignRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * WriteCampaignRequest [WriteCampaignRequest] 
-- Required key: ApplicationId
-- Required key: WriteCampaignRequest
-- @return CreateCampaignRequest structure as a key-value pair table
function M.CreateCampaignRequest(args)
	assert(args, "You must provide an argument table when creating CreateCampaignRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["WriteCampaignRequest"] = args["WriteCampaignRequest"],
	}
	asserts.AssertCreateCampaignRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGcmChannelResponse = { ["GCMChannelResponse"] = true, nil }

function asserts.AssertUpdateGcmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGcmChannelResponse to be of type 'table'")
	assert(struct["GCMChannelResponse"], "Expected key GCMChannelResponse to exist in table")
	if struct["GCMChannelResponse"] then asserts.AssertGCMChannelResponse(struct["GCMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGcmChannelResponse[k], "UpdateGcmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGcmChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GCMChannelResponse [GCMChannelResponse] 
-- Required key: GCMChannelResponse
-- @return UpdateGcmChannelResponse structure as a key-value pair table
function M.UpdateGcmChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateGcmChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GCMChannelResponse"] = args["GCMChannelResponse"],
	}
	asserts.AssertUpdateGcmChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BaiduChannelResponse = { ["Credential"] = true, ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, nil }

function asserts.AssertBaiduChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BaiduChannelResponse to be of type 'table'")
	if struct["Credential"] then asserts.Assert__string(struct["Credential"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.BaiduChannelResponse[k], "BaiduChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BaiduChannelResponse
-- Baidu Cloud Messaging channel definition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Credential [__string] The Baidu API key from Baidu.
-- * LastModifiedDate [__string] Last date this was updated
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] Who made the last change
-- * Platform [__string] The platform type. Will be BAIDU
-- * Version [__integer] Version of channel
-- * IsArchived [__boolean] Is this channel archived
-- * CreationDate [__string] When was this segment created
-- * ApplicationId [__string] Application id
-- * Id [__string] Channel ID. Not used, only for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- @return BaiduChannelResponse structure as a key-value pair table
function M.BaiduChannelResponse(args)
	assert(args, "You must provide an argument table when creating BaiduChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Credential"] = args["Credential"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
	}
	asserts.AssertBaiduChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttributesResource = { ["Attributes"] = true, ["ApplicationId"] = true, ["AttributeType"] = true, nil }

function asserts.AssertAttributesResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributesResource to be of type 'table'")
	if struct["Attributes"] then asserts.AssertListOf__string(struct["Attributes"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["AttributeType"] then asserts.Assert__string(struct["AttributeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributesResource[k], "AttributesResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributesResource
-- Attributes.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [ListOf__string] The attributes for the application.
-- * ApplicationId [__string] The unique ID for the application.
-- * AttributeType [__string] The attribute type for the application.
-- @return AttributesResource structure as a key-value pair table
function M.AttributesResource(args)
	assert(args, "You must provide an argument table when creating AttributesResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["ApplicationId"] = args["ApplicationId"],
		["AttributeType"] = args["AttributeType"],
	}
	asserts.AssertAttributesResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BaiduChannelRequest = { ["SecretKey"] = true, ["ApiKey"] = true, ["Enabled"] = true, nil }

function asserts.AssertBaiduChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BaiduChannelRequest to be of type 'table'")
	if struct["SecretKey"] then asserts.Assert__string(struct["SecretKey"]) end
	if struct["ApiKey"] then asserts.Assert__string(struct["ApiKey"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.BaiduChannelRequest[k], "BaiduChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BaiduChannelRequest
-- Baidu Cloud Push credentials
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecretKey [__string] Platform credential Secret key from Baidu.
-- * ApiKey [__string] Platform credential API key from Baidu.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- @return BaiduChannelRequest structure as a key-value pair table
function M.BaiduChannelRequest(args)
	assert(args, "You must provide an argument table when creating BaiduChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecretKey"] = args["SecretKey"],
		["ApiKey"] = args["ApiKey"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertBaiduChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CampaignHook = { ["LambdaFunctionName"] = true, ["WebUrl"] = true, ["Mode"] = true, nil }

function asserts.AssertCampaignHook(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignHook to be of type 'table'")
	if struct["LambdaFunctionName"] then asserts.Assert__string(struct["LambdaFunctionName"]) end
	if struct["WebUrl"] then asserts.Assert__string(struct["WebUrl"]) end
	if struct["Mode"] then asserts.AssertMode(struct["Mode"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignHook[k], "CampaignHook contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignHook
-- Campaign hook information.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LambdaFunctionName [__string] Lambda function name or arn to be called for delivery
-- * WebUrl [__string] Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request
-- * Mode [Mode] What mode Lambda should be invoked in.
-- @return CampaignHook structure as a key-value pair table
function M.CampaignHook(args)
	assert(args, "You must provide an argument table when creating CampaignHook")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LambdaFunctionName"] = args["LambdaFunctionName"],
		["WebUrl"] = args["WebUrl"],
		["Mode"] = args["Mode"],
	}
	asserts.AssertCampaignHook(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEndpointRequest = { ["ApplicationId"] = true, ["EndpointRequest"] = true, ["EndpointId"] = true, nil }

function asserts.AssertUpdateEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EndpointId"], "Expected key EndpointId to exist in table")
	assert(struct["EndpointRequest"], "Expected key EndpointRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["EndpointRequest"] then asserts.AssertEndpointRequest(struct["EndpointRequest"]) end
	if struct["EndpointId"] then asserts.Assert__string(struct["EndpointId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEndpointRequest[k], "UpdateEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * EndpointRequest [EndpointRequest] 
-- * EndpointId [__string] The unique ID of the endpoint.
-- Required key: ApplicationId
-- Required key: EndpointId
-- Required key: EndpointRequest
-- @return UpdateEndpointRequest structure as a key-value pair table
function M.UpdateEndpointRequest(args)
	assert(args, "You must provide an argument table when creating UpdateEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{endpoint-id}"] = args["EndpointId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["EndpointRequest"] = args["EndpointRequest"],
		["EndpointId"] = args["EndpointId"],
	}
	asserts.AssertUpdateEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEndpointResponse = { ["EndpointResponse"] = true, nil }

function asserts.AssertGetEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEndpointResponse to be of type 'table'")
	assert(struct["EndpointResponse"], "Expected key EndpointResponse to exist in table")
	if struct["EndpointResponse"] then asserts.AssertEndpointResponse(struct["EndpointResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEndpointResponse[k], "GetEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointResponse [EndpointResponse] 
-- Required key: EndpointResponse
-- @return GetEndpointResponse structure as a key-value pair table
function M.GetEndpointResponse(args)
	assert(args, "You must provide an argument table when creating GetEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointResponse"] = args["EndpointResponse"],
	}
	asserts.AssertGetEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentDemographics = { ["Make"] = true, ["AppVersion"] = true, ["Platform"] = true, ["DeviceType"] = true, ["Model"] = true, ["Channel"] = true, nil }

function asserts.AssertSegmentDemographics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentDemographics to be of type 'table'")
	if struct["Make"] then asserts.AssertSetDimension(struct["Make"]) end
	if struct["AppVersion"] then asserts.AssertSetDimension(struct["AppVersion"]) end
	if struct["Platform"] then asserts.AssertSetDimension(struct["Platform"]) end
	if struct["DeviceType"] then asserts.AssertSetDimension(struct["DeviceType"]) end
	if struct["Model"] then asserts.AssertSetDimension(struct["Model"]) end
	if struct["Channel"] then asserts.AssertSetDimension(struct["Channel"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentDemographics[k], "SegmentDemographics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentDemographics
-- Segment demographic dimensions
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Make [SetDimension] The device make criteria for the segment.
-- * AppVersion [SetDimension] The app version criteria for the segment.
-- * Platform [SetDimension] The device platform criteria for the segment.
-- * DeviceType [SetDimension] The device type criteria for the segment.
-- * Model [SetDimension] The device model criteria for the segment.
-- * Channel [SetDimension] The channel criteria for the segment.
-- @return SegmentDemographics structure as a key-value pair table
function M.SegmentDemographics(args)
	assert(args, "You must provide an argument table when creating SegmentDemographics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Make"] = args["Make"],
		["AppVersion"] = args["AppVersion"],
		["Platform"] = args["Platform"],
		["DeviceType"] = args["DeviceType"],
		["Model"] = args["Model"],
		["Channel"] = args["Channel"],
	}
	asserts.AssertSegmentDemographics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApnsVoipChannelRequest = { ["APNSVoipChannelRequest"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertUpdateApnsVoipChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsVoipChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["APNSVoipChannelRequest"], "Expected key APNSVoipChannelRequest to exist in table")
	if struct["APNSVoipChannelRequest"] then asserts.AssertAPNSVoipChannelRequest(struct["APNSVoipChannelRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApnsVoipChannelRequest[k], "UpdateApnsVoipChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsVoipChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSVoipChannelRequest [APNSVoipChannelRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: APNSVoipChannelRequest
-- @return UpdateApnsVoipChannelRequest structure as a key-value pair table
function M.UpdateApnsVoipChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApnsVoipChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSVoipChannelRequest"] = args["APNSVoipChannelRequest"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertUpdateApnsVoipChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApnsVoipSandboxChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetApnsVoipSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsVoipSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApnsVoipSandboxChannelRequest[k], "GetApnsVoipSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsVoipSandboxChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetApnsVoipSandboxChannelRequest structure as a key-value pair table
function M.GetApnsVoipSandboxChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetApnsVoipSandboxChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetApnsVoipSandboxChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddressConfiguration = { ["Substitutions"] = true, ["BodyOverride"] = true, ["Context"] = true, ["RawContent"] = true, ["ChannelType"] = true, ["TitleOverride"] = true, nil }

function asserts.AssertAddressConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddressConfiguration to be of type 'table'")
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["BodyOverride"] then asserts.Assert__string(struct["BodyOverride"]) end
	if struct["Context"] then asserts.AssertMapOf__string(struct["Context"]) end
	if struct["RawContent"] then asserts.Assert__string(struct["RawContent"]) end
	if struct["ChannelType"] then asserts.AssertChannelType(struct["ChannelType"]) end
	if struct["TitleOverride"] then asserts.Assert__string(struct["TitleOverride"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddressConfiguration[k], "AddressConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddressConfiguration
-- Address configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Substitutions [MapOfListOf__string] A map of substitution values for the message to be merged with the DefaultMessage's substitutions. Substitutions on this map take precedence over the all other substitutions.
-- * BodyOverride [__string] Body override. If specified will override default body.
-- * Context [MapOf__string] A map of custom attributes to attributes to be attached to the message for this address. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
-- * RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- * ChannelType [ChannelType] The channel type.
--
--Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
-- * TitleOverride [__string] Title override. If specified will override default title if applicable.
-- @return AddressConfiguration structure as a key-value pair table
function M.AddressConfiguration(args)
	assert(args, "You must provide an argument table when creating AddressConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Substitutions"] = args["Substitutions"],
		["BodyOverride"] = args["BodyOverride"],
		["Context"] = args["Context"],
		["RawContent"] = args["RawContent"],
		["ChannelType"] = args["ChannelType"],
		["TitleOverride"] = args["TitleOverride"],
	}
	asserts.AssertAddressConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAdmChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetAdmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAdmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAdmChannelRequest[k], "GetAdmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAdmChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetAdmChannelRequest structure as a key-value pair table
function M.GetAdmChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetAdmChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetAdmChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentVersionsRequest = { ["Token"] = true, ["ApplicationId"] = true, ["SegmentId"] = true, ["PageSize"] = true, nil }

function asserts.AssertGetSegmentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentVersionsRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentVersionsRequest[k], "GetSegmentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * SegmentId [__string] The unique ID of the segment.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- Required key: SegmentId
-- Required key: ApplicationId
-- @return GetSegmentVersionsRequest structure as a key-value pair table
function M.GetSegmentVersionsRequest(args)
	assert(args, "You must provide an argument table when creating GetSegmentVersionsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{segment-id}"] = args["SegmentId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["SegmentId"] = args["SegmentId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertGetSegmentVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointDemographic = { ["Locale"] = true, ["ModelVersion"] = true, ["Make"] = true, ["AppVersion"] = true, ["Platform"] = true, ["PlatformVersion"] = true, ["Timezone"] = true, ["Model"] = true, nil }

function asserts.AssertEndpointDemographic(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointDemographic to be of type 'table'")
	if struct["Locale"] then asserts.Assert__string(struct["Locale"]) end
	if struct["ModelVersion"] then asserts.Assert__string(struct["ModelVersion"]) end
	if struct["Make"] then asserts.Assert__string(struct["Make"]) end
	if struct["AppVersion"] then asserts.Assert__string(struct["AppVersion"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["PlatformVersion"] then asserts.Assert__string(struct["PlatformVersion"]) end
	if struct["Timezone"] then asserts.Assert__string(struct["Timezone"]) end
	if struct["Model"] then asserts.Assert__string(struct["Model"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointDemographic[k], "EndpointDemographic contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointDemographic
-- Demographic information about the endpoint.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Locale [__string] The endpoint locale in the following format: The ISO 639-1 alpha-2 code, followed by an underscore, followed by an ISO 3166-1 alpha-2 value.
--
-- * ModelVersion [__string] The model version of the endpoint device.
-- * Make [__string] The manufacturer of the endpoint device, such as Apple or Samsung.
-- * AppVersion [__string] The version of the application associated with the endpoint.
-- * Platform [__string] The platform of the endpoint device, such as iOS or Android.
-- * PlatformVersion [__string] The platform version of the endpoint device.
-- * Timezone [__string] The timezone of the endpoint. Specified as a tz database value, such as Americas/Los_Angeles.
-- * Model [__string] The model name or number of the endpoint device, such as iPhone.
-- @return EndpointDemographic structure as a key-value pair table
function M.EndpointDemographic(args)
	assert(args, "You must provide an argument table when creating EndpointDemographic")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Locale"] = args["Locale"],
		["ModelVersion"] = args["ModelVersion"],
		["Make"] = args["Make"],
		["AppVersion"] = args["AppVersion"],
		["Platform"] = args["Platform"],
		["PlatformVersion"] = args["PlatformVersion"],
		["Timezone"] = args["Timezone"],
		["Model"] = args["Model"],
	}
	asserts.AssertEndpointDemographic(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEndpointResponse = { ["EndpointResponse"] = true, nil }

function asserts.AssertDeleteEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointResponse to be of type 'table'")
	assert(struct["EndpointResponse"], "Expected key EndpointResponse to exist in table")
	if struct["EndpointResponse"] then asserts.AssertEndpointResponse(struct["EndpointResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEndpointResponse[k], "DeleteEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointResponse [EndpointResponse] 
-- Required key: EndpointResponse
-- @return DeleteEndpointResponse structure as a key-value pair table
function M.DeleteEndpointResponse(args)
	assert(args, "You must provide an argument table when creating DeleteEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointResponse"] = args["EndpointResponse"],
	}
	asserts.AssertDeleteEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSSandboxChannelResponse = { ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["HasTokenKey"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, ["DefaultAuthenticationMethod"] = true, nil }

function asserts.AssertAPNSSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSSandboxChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["HasTokenKey"] then asserts.Assert__boolean(struct["HasTokenKey"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	if struct["DefaultAuthenticationMethod"] then asserts.Assert__string(struct["DefaultAuthenticationMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSSandboxChannelResponse[k], "APNSSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSSandboxChannelResponse
-- Apple Development Push Notification Service channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedDate [__string] Last date this was updated
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] Who last updated this entry
-- * Platform [__string] The platform type. Will be APNS_SANDBOX.
-- * Version [__integer] Version of channel
-- * HasTokenKey [__boolean] Indicates whether the channel is configured with a key for APNs token authentication. Provide a token key by setting the TokenKey attribute.
-- * IsArchived [__boolean] Is this channel archived
-- * CreationDate [__string] When was this segment created
-- * ApplicationId [__string] The ID of the application to which the channel applies.
-- * Id [__string] Channel ID. Not used, only for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- * DefaultAuthenticationMethod [__string] The default authentication method used for APNs.
-- @return APNSSandboxChannelResponse structure as a key-value pair table
function M.APNSSandboxChannelResponse(args)
	assert(args, "You must provide an argument table when creating APNSSandboxChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["HasTokenKey"] = args["HasTokenKey"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
		["DefaultAuthenticationMethod"] = args["DefaultAuthenticationMethod"],
	}
	asserts.AssertAPNSSandboxChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentExportJobsResponse = { ["ExportJobsResponse"] = true, nil }

function asserts.AssertGetSegmentExportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentExportJobsResponse to be of type 'table'")
	assert(struct["ExportJobsResponse"], "Expected key ExportJobsResponse to exist in table")
	if struct["ExportJobsResponse"] then asserts.AssertExportJobsResponse(struct["ExportJobsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentExportJobsResponse[k], "GetSegmentExportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentExportJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExportJobsResponse [ExportJobsResponse] 
-- Required key: ExportJobsResponse
-- @return GetSegmentExportJobsResponse structure as a key-value pair table
function M.GetSegmentExportJobsResponse(args)
	assert(args, "You must provide an argument table when creating GetSegmentExportJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExportJobsResponse"] = args["ExportJobsResponse"],
	}
	asserts.AssertGetSegmentExportJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WriteTreatmentResource = { ["SizePercent"] = true, ["MessageConfiguration"] = true, ["TreatmentName"] = true, ["TreatmentDescription"] = true, ["Schedule"] = true, nil }

function asserts.AssertWriteTreatmentResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteTreatmentResource to be of type 'table'")
	if struct["SizePercent"] then asserts.Assert__integer(struct["SizePercent"]) end
	if struct["MessageConfiguration"] then asserts.AssertMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["TreatmentName"] then asserts.Assert__string(struct["TreatmentName"]) end
	if struct["TreatmentDescription"] then asserts.Assert__string(struct["TreatmentDescription"]) end
	if struct["Schedule"] then asserts.AssertSchedule(struct["Schedule"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteTreatmentResource[k], "WriteTreatmentResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteTreatmentResource
-- Used to create a campaign treatment.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizePercent [__integer] The allocated percentage of users for this treatment.
-- * MessageConfiguration [MessageConfiguration] The message configuration settings.
-- * TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- * TreatmentDescription [__string] A custom description for the treatment.
-- * Schedule [Schedule] The campaign schedule.
-- @return WriteTreatmentResource structure as a key-value pair table
function M.WriteTreatmentResource(args)
	assert(args, "You must provide an argument table when creating WriteTreatmentResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizePercent"] = args["SizePercent"],
		["MessageConfiguration"] = args["MessageConfiguration"],
		["TreatmentName"] = args["TreatmentName"],
		["TreatmentDescription"] = args["TreatmentDescription"],
		["Schedule"] = args["Schedule"],
	}
	asserts.AssertWriteTreatmentResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CampaignState = { ["CampaignStatus"] = true, nil }

function asserts.AssertCampaignState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignState to be of type 'table'")
	if struct["CampaignStatus"] then asserts.AssertCampaignStatus(struct["CampaignStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignState[k], "CampaignState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignState
-- State of the Campaign
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CampaignStatus [CampaignStatus] The status of the campaign, or the status of a treatment that belongs to an A/B test campaign.
--
--Valid values: SCHEDULED, EXECUTING, PENDING_NEXT_RUN, COMPLETED, PAUSED
-- @return CampaignState structure as a key-value pair table
function M.CampaignState(args)
	assert(args, "You must provide an argument table when creating CampaignState")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CampaignStatus"] = args["CampaignStatus"],
	}
	asserts.AssertCampaignState(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GPSCoordinates = { ["Latitude"] = true, ["Longitude"] = true, nil }

function asserts.AssertGPSCoordinates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GPSCoordinates to be of type 'table'")
	if struct["Latitude"] then asserts.Assert__double(struct["Latitude"]) end
	if struct["Longitude"] then asserts.Assert__double(struct["Longitude"]) end
	for k,_ in pairs(struct) do
		assert(keys.GPSCoordinates[k], "GPSCoordinates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GPSCoordinates
-- GPS coordinates
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Latitude [__double] Latitude
-- * Longitude [__double] Longitude
-- @return GPSCoordinates structure as a key-value pair table
function M.GPSCoordinates(args)
	assert(args, "You must provide an argument table when creating GPSCoordinates")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Latitude"] = args["Latitude"],
		["Longitude"] = args["Longitude"],
	}
	asserts.AssertGPSCoordinates(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateImportJobRequest = { ["ApplicationId"] = true, ["ImportJobRequest"] = true, nil }

function asserts.AssertCreateImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateImportJobRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["ImportJobRequest"], "Expected key ImportJobRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["ImportJobRequest"] then asserts.AssertImportJobRequest(struct["ImportJobRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateImportJobRequest[k], "CreateImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateImportJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * ImportJobRequest [ImportJobRequest] 
-- Required key: ApplicationId
-- Required key: ImportJobRequest
-- @return CreateImportJobRequest structure as a key-value pair table
function M.CreateImportJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateImportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["ImportJobRequest"] = args["ImportJobRequest"],
	}
	asserts.AssertCreateImportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserEndpointsResponse = { ["EndpointsResponse"] = true, nil }

function asserts.AssertDeleteUserEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserEndpointsResponse to be of type 'table'")
	assert(struct["EndpointsResponse"], "Expected key EndpointsResponse to exist in table")
	if struct["EndpointsResponse"] then asserts.AssertEndpointsResponse(struct["EndpointsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserEndpointsResponse[k], "DeleteUserEndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserEndpointsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointsResponse [EndpointsResponse] 
-- Required key: EndpointsResponse
-- @return DeleteUserEndpointsResponse structure as a key-value pair table
function M.DeleteUserEndpointsResponse(args)
	assert(args, "You must provide an argument table when creating DeleteUserEndpointsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointsResponse"] = args["EndpointsResponse"],
	}
	asserts.AssertDeleteUserEndpointsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationSettingsRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetApplicationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationSettingsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationSettingsRequest[k], "GetApplicationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetApplicationSettingsRequest structure as a key-value pair table
function M.GetApplicationSettingsRequest(args)
	assert(args, "You must provide an argument table when creating GetApplicationSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetApplicationSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetExportJobResponse = { ["ExportJobResponse"] = true, nil }

function asserts.AssertGetExportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExportJobResponse to be of type 'table'")
	assert(struct["ExportJobResponse"], "Expected key ExportJobResponse to exist in table")
	if struct["ExportJobResponse"] then asserts.AssertExportJobResponse(struct["ExportJobResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExportJobResponse[k], "GetExportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExportJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExportJobResponse [ExportJobResponse] 
-- Required key: ExportJobResponse
-- @return GetExportJobResponse structure as a key-value pair table
function M.GetExportJobResponse(args)
	assert(args, "You must provide an argument table when creating GetExportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExportJobResponse"] = args["ExportJobResponse"],
	}
	asserts.AssertGetExportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DefaultPushNotificationMessage = { ["Body"] = true, ["Title"] = true, ["Url"] = true, ["Substitutions"] = true, ["Action"] = true, ["SilentPush"] = true, ["Data"] = true, nil }

function asserts.AssertDefaultPushNotificationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultPushNotificationMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then asserts.Assert__boolean(struct["SilentPush"]) end
	if struct["Data"] then asserts.AssertMapOf__string(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefaultPushNotificationMessage[k], "DefaultPushNotificationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultPushNotificationMessage
-- Default Push Notification Message.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The message body of the notification.
-- * Title [__string] The message title that displays above the message on the user's device.
-- * Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- * Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- * Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- * SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- * Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- @return DefaultPushNotificationMessage structure as a key-value pair table
function M.DefaultPushNotificationMessage(args)
	assert(args, "You must provide an argument table when creating DefaultPushNotificationMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Title"] = args["Title"],
		["Url"] = args["Url"],
		["Substitutions"] = args["Substitutions"],
		["Action"] = args["Action"],
		["SilentPush"] = args["SilentPush"],
		["Data"] = args["Data"],
	}
	asserts.AssertDefaultPushNotificationMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetExportJobsResponse = { ["ExportJobsResponse"] = true, nil }

function asserts.AssertGetExportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExportJobsResponse to be of type 'table'")
	assert(struct["ExportJobsResponse"], "Expected key ExportJobsResponse to exist in table")
	if struct["ExportJobsResponse"] then asserts.AssertExportJobsResponse(struct["ExportJobsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExportJobsResponse[k], "GetExportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExportJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExportJobsResponse [ExportJobsResponse] 
-- Required key: ExportJobsResponse
-- @return GetExportJobsResponse structure as a key-value pair table
function M.GetExportJobsResponse(args)
	assert(args, "You must provide an argument table when creating GetExportJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExportJobsResponse"] = args["ExportJobsResponse"],
	}
	asserts.AssertGetExportJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSmsChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteSmsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSmsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSmsChannelRequest[k], "DeleteSmsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSmsChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteSmsChannelRequest structure as a key-value pair table
function M.DeleteSmsChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSmsChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteSmsChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignVersionRequest = { ["Version"] = true, ["ApplicationId"] = true, ["CampaignId"] = true, nil }

function asserts.AssertGetCampaignVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignVersionRequest to be of type 'table'")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["CampaignId"] then asserts.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignVersionRequest[k], "GetCampaignVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] The version of the campaign.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * CampaignId [__string] The unique ID of the campaign.
-- Required key: Version
-- Required key: ApplicationId
-- Required key: CampaignId
-- @return GetCampaignVersionRequest structure as a key-value pair table
function M.GetCampaignVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetCampaignVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{version}"] = args["Version"],
        ["{application-id}"] = args["ApplicationId"],
        ["{campaign-id}"] = args["CampaignId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["ApplicationId"] = args["ApplicationId"],
		["CampaignId"] = args["CampaignId"],
	}
	asserts.AssertGetCampaignVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChannelsResponse = { ["Channels"] = true, nil }

function asserts.AssertChannelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChannelsResponse to be of type 'table'")
	if struct["Channels"] then asserts.AssertMapOfChannelResponse(struct["Channels"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChannelsResponse[k], "ChannelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChannelsResponse
-- Get channels definition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channels [MapOfChannelResponse] A map of channels, with the ChannelType as the key and the Channel as the value.
-- @return ChannelsResponse structure as a key-value pair table
function M.ChannelsResponse(args)
	assert(args, "You must provide an argument table when creating ChannelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Channels"] = args["Channels"],
	}
	asserts.AssertChannelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointResponse = { ["EffectiveDate"] = true, ["OptOut"] = true, ["RequestId"] = true, ["Demographic"] = true, ["User"] = true, ["Metrics"] = true, ["Location"] = true, ["Address"] = true, ["CohortId"] = true, ["Attributes"] = true, ["ChannelType"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["EndpointStatus"] = true, nil }

function asserts.AssertEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointResponse to be of type 'table'")
	if struct["EffectiveDate"] then asserts.Assert__string(struct["EffectiveDate"]) end
	if struct["OptOut"] then asserts.Assert__string(struct["OptOut"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["Demographic"] then asserts.AssertEndpointDemographic(struct["Demographic"]) end
	if struct["User"] then asserts.AssertEndpointUser(struct["User"]) end
	if struct["Metrics"] then asserts.AssertMapOf__double(struct["Metrics"]) end
	if struct["Location"] then asserts.AssertEndpointLocation(struct["Location"]) end
	if struct["Address"] then asserts.Assert__string(struct["Address"]) end
	if struct["CohortId"] then asserts.Assert__string(struct["CohortId"]) end
	if struct["Attributes"] then asserts.AssertMapOfListOf__string(struct["Attributes"]) end
	if struct["ChannelType"] then asserts.AssertChannelType(struct["ChannelType"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["EndpointStatus"] then asserts.Assert__string(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointResponse[k], "EndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointResponse
-- Endpoint response
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EffectiveDate [__string] The date and time when the endpoint was last updated, shown in ISO 8601 format.
-- * OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:
--
--ALL - User has opted out of all messages.
--
--NONE - Users has not opted out and receives all messages.
-- * RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- * Demographic [EndpointDemographic] The endpoint demographic attributes.
-- * User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- * Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- * Location [EndpointLocation] The endpoint location attributes.
-- * Address [__string] The address of the endpoint as provided by your push provider. For example, the DeviceToken or RegistrationId.
-- * CohortId [__string] A number from 0-99 that represents the cohort the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an app. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for a campaign.
-- * Attributes [MapOfListOf__string] Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the following values: ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create segments.
--
--The Amazon Pinpoint console can't display attribute names that include the following characters: hash/pound sign (#), colon (:), question mark (?), backslash (\), and forward slash (/). For this reason, you should avoid using these characters in the names of custom attributes.
-- * ChannelType [ChannelType] The channel type.
--
--Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
-- * CreationDate [__string] The date and time when the endpoint was created, shown in ISO 8601 format.
-- * ApplicationId [__string] The ID of the application that is associated with the endpoint.
-- * Id [__string] The unique ID that you assigned to the endpoint. The ID should be a globally unique identifier (GUID) to ensure that it doesn't conflict with other endpoint IDs associated with the application.
-- * EndpointStatus [__string] Unused.
-- @return EndpointResponse structure as a key-value pair table
function M.EndpointResponse(args)
	assert(args, "You must provide an argument table when creating EndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EffectiveDate"] = args["EffectiveDate"],
		["OptOut"] = args["OptOut"],
		["RequestId"] = args["RequestId"],
		["Demographic"] = args["Demographic"],
		["User"] = args["User"],
		["Metrics"] = args["Metrics"],
		["Location"] = args["Location"],
		["Address"] = args["Address"],
		["CohortId"] = args["CohortId"],
		["Attributes"] = args["Attributes"],
		["ChannelType"] = args["ChannelType"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["EndpointStatus"] = args["EndpointStatus"],
	}
	asserts.AssertEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventsRequest = { ["BatchItem"] = true, nil }

function asserts.AssertEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventsRequest to be of type 'table'")
	if struct["BatchItem"] then asserts.AssertMapOfEventsBatch(struct["BatchItem"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventsRequest[k], "EventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventsRequest
-- Put Events request
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BatchItem [MapOfEventsBatch] Batch of events with endpoint id as the key and an object of EventsBatch as value. The EventsBatch object has the PublicEndpoint and a map of event Id's to events
-- @return EventsRequest structure as a key-value pair table
function M.EventsRequest(args)
	assert(args, "You must provide an argument table when creating EventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BatchItem"] = args["BatchItem"],
	}
	asserts.AssertEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApnsVoipChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetApnsVoipChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsVoipChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApnsVoipChannelRequest[k], "GetApnsVoipChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsVoipChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetApnsVoipChannelRequest structure as a key-value pair table
function M.GetApnsVoipChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetApnsVoipChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetApnsVoipChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApnsSandboxChannelResponse = { ["APNSSandboxChannelResponse"] = true, nil }

function asserts.AssertDeleteApnsSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSSandboxChannelResponse"], "Expected key APNSSandboxChannelResponse to exist in table")
	if struct["APNSSandboxChannelResponse"] then asserts.AssertAPNSSandboxChannelResponse(struct["APNSSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApnsSandboxChannelResponse[k], "DeleteApnsSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsSandboxChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSSandboxChannelResponse [APNSSandboxChannelResponse] 
-- Required key: APNSSandboxChannelResponse
-- @return DeleteApnsSandboxChannelResponse structure as a key-value pair table
function M.DeleteApnsSandboxChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteApnsSandboxChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSSandboxChannelResponse"] = args["APNSSandboxChannelResponse"],
	}
	asserts.AssertDeleteApnsSandboxChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendUsersMessageRequest = { ["MessageConfiguration"] = true, ["TraceId"] = true, ["Users"] = true, ["Context"] = true, nil }

function asserts.AssertSendUsersMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendUsersMessageRequest to be of type 'table'")
	if struct["MessageConfiguration"] then asserts.AssertDirectMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["TraceId"] then asserts.Assert__string(struct["TraceId"]) end
	if struct["Users"] then asserts.AssertMapOfEndpointSendConfiguration(struct["Users"]) end
	if struct["Context"] then asserts.AssertMapOf__string(struct["Context"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendUsersMessageRequest[k], "SendUsersMessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendUsersMessageRequest
-- Send message request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageConfiguration [DirectMessageConfiguration] Message definitions for the default message and any messages that are tailored for specific channels.
-- * TraceId [__string] A unique ID that you can use to trace a message. This ID is visible to recipients.
-- * Users [MapOfEndpointSendConfiguration] A map that associates user IDs with EndpointSendConfiguration objects. Within an EndpointSendConfiguration object, you can tailor the message for a user by specifying message overrides or substitutions.
-- * Context [MapOf__string] A map of custom attribute-value pairs. Amazon Pinpoint adds these attributes to the data.pinpoint object in the body of the push notification payload. Amazon Pinpoint also provides these attributes in the events that it generates for users-messages deliveries.
-- @return SendUsersMessageRequest structure as a key-value pair table
function M.SendUsersMessageRequest(args)
	assert(args, "You must provide an argument table when creating SendUsersMessageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageConfiguration"] = args["MessageConfiguration"],
		["TraceId"] = args["TraceId"],
		["Users"] = args["Users"],
		["Context"] = args["Context"],
	}
	asserts.AssertSendUsersMessageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MethodNotAllowedException = { ["Message"] = true, ["RequestID"] = true, nil }

function asserts.AssertMethodNotAllowedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodNotAllowedException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["RequestID"] then asserts.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(keys.MethodNotAllowedException[k], "MethodNotAllowedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodNotAllowedException
-- Simple message object.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] The error message that's returned from the API.
-- * RequestID [__string] The unique message body ID.
-- @return MethodNotAllowedException structure as a key-value pair table
function M.MethodNotAllowedException(args)
	assert(args, "You must provide an argument table when creating MethodNotAllowedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["RequestID"] = args["RequestID"],
	}
	asserts.AssertMethodNotAllowedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEventStreamRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteEventStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventStreamRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventStreamRequest[k], "DeleteEventStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventStreamRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteEventStreamRequest structure as a key-value pair table
function M.DeleteEventStreamRequest(args)
	assert(args, "You must provide an argument table when creating DeleteEventStreamRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteEventStreamRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentExportJobsRequest = { ["Token"] = true, ["ApplicationId"] = true, ["SegmentId"] = true, ["PageSize"] = true, nil }

function asserts.AssertGetSegmentExportJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentExportJobsRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentExportJobsRequest[k], "GetSegmentExportJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentExportJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * SegmentId [__string] The unique ID of the segment.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- Required key: SegmentId
-- Required key: ApplicationId
-- @return GetSegmentExportJobsRequest structure as a key-value pair table
function M.GetSegmentExportJobsRequest(args)
	assert(args, "You must provide an argument table when creating GetSegmentExportJobsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{segment-id}"] = args["SegmentId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["SegmentId"] = args["SegmentId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertGetSegmentExportJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAppResponse = { ["ApplicationResponse"] = true, nil }

function asserts.AssertCreateAppResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAppResponse to be of type 'table'")
	assert(struct["ApplicationResponse"], "Expected key ApplicationResponse to exist in table")
	if struct["ApplicationResponse"] then asserts.AssertApplicationResponse(struct["ApplicationResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAppResponse[k], "CreateAppResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAppResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationResponse [ApplicationResponse] 
-- Required key: ApplicationResponse
-- @return CreateAppResponse structure as a key-value pair table
function M.CreateAppResponse(args)
	assert(args, "You must provide an argument table when creating CreateAppResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationResponse"] = args["ApplicationResponse"],
	}
	asserts.AssertCreateAppResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotFoundException = { ["Message"] = true, ["RequestID"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["RequestID"] then asserts.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- Simple message object.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] The error message that's returned from the API.
-- * RequestID [__string] The unique message body ID.
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provide an argument table when creating NotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["RequestID"] = args["RequestID"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSmsChannelResponse = { ["SMSChannelResponse"] = true, nil }

function asserts.AssertGetSmsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSmsChannelResponse to be of type 'table'")
	assert(struct["SMSChannelResponse"], "Expected key SMSChannelResponse to exist in table")
	if struct["SMSChannelResponse"] then asserts.AssertSMSChannelResponse(struct["SMSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSmsChannelResponse[k], "GetSmsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSmsChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SMSChannelResponse [SMSChannelResponse] 
-- Required key: SMSChannelResponse
-- @return GetSmsChannelResponse structure as a key-value pair table
function M.GetSmsChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetSmsChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SMSChannelResponse"] = args["SMSChannelResponse"],
	}
	asserts.AssertGetSmsChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ItemResponse = { ["EndpointItemResponse"] = true, ["EventsItemResponse"] = true, nil }

function asserts.AssertItemResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemResponse to be of type 'table'")
	if struct["EndpointItemResponse"] then asserts.AssertEndpointItemResponse(struct["EndpointItemResponse"]) end
	if struct["EventsItemResponse"] then asserts.AssertMapOfEventItemResponse(struct["EventsItemResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.ItemResponse[k], "ItemResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemResponse
-- The endpoint and events combined response definition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointItemResponse [EndpointItemResponse] Endpoint item response after endpoint registration
-- * EventsItemResponse [MapOfEventItemResponse] Events item response is a multipart response object per event Id, with eventId as the key and EventItemResponse object as the value
-- @return ItemResponse structure as a key-value pair table
function M.ItemResponse(args)
	assert(args, "You must provide an argument table when creating ItemResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointItemResponse"] = args["EndpointItemResponse"],
		["EventsItemResponse"] = args["EventsItemResponse"],
	}
	asserts.AssertItemResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricDimension = { ["ComparisonOperator"] = true, ["Value"] = true, nil }

function asserts.AssertMetricDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricDimension to be of type 'table'")
	if struct["ComparisonOperator"] then asserts.Assert__string(struct["ComparisonOperator"]) end
	if struct["Value"] then asserts.Assert__double(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricDimension[k], "MetricDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricDimension
-- Custom metric dimension
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComparisonOperator [__string] GREATER_THAN | LESS_THAN | GREATER_THAN_OR_EQUAL | LESS_THAN_OR_EQUAL | EQUAL
-- * Value [__double] Value to be compared.
-- @return MetricDimension structure as a key-value pair table
function M.MetricDimension(args)
	assert(args, "You must provide an argument table when creating MetricDimension")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComparisonOperator"] = args["ComparisonOperator"],
		["Value"] = args["Value"],
	}
	asserts.AssertMetricDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CampaignLimits = { ["MessagesPerSecond"] = true, ["MaximumDuration"] = true, ["Total"] = true, ["Daily"] = true, nil }

function asserts.AssertCampaignLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignLimits to be of type 'table'")
	if struct["MessagesPerSecond"] then asserts.Assert__integer(struct["MessagesPerSecond"]) end
	if struct["MaximumDuration"] then asserts.Assert__integer(struct["MaximumDuration"]) end
	if struct["Total"] then asserts.Assert__integer(struct["Total"]) end
	if struct["Daily"] then asserts.Assert__integer(struct["Daily"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignLimits[k], "CampaignLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignLimits
-- Campaign Limits are used to limit the number of messages that can be sent to a user.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessagesPerSecond [__integer] The number of messages that the campaign can send per second. The minimum value is 50, and the maximum is 20000.
-- * MaximumDuration [__integer] The length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. The minimum value is 60.
-- * Total [__integer] The maximum total number of messages that the campaign can send.
-- * Daily [__integer] The maximum number of messages that the campaign can send daily.
-- @return CampaignLimits structure as a key-value pair table
function M.CampaignLimits(args)
	assert(args, "You must provide an argument table when creating CampaignLimits")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessagesPerSecond"] = args["MessagesPerSecond"],
		["MaximumDuration"] = args["MaximumDuration"],
		["Total"] = args["Total"],
		["Daily"] = args["Daily"],
	}
	asserts.AssertCampaignLimits(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentVersionResponse = { ["SegmentResponse"] = true, nil }

function asserts.AssertGetSegmentVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentVersionResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then asserts.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentVersionResponse[k], "GetSegmentVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentResponse [SegmentResponse] 
-- Required key: SegmentResponse
-- @return GetSegmentVersionResponse structure as a key-value pair table
function M.GetSegmentVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetSegmentVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentResponse"] = args["SegmentResponse"],
	}
	asserts.AssertGetSegmentVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventStreamResponse = { ["EventStream"] = true, nil }

function asserts.AssertPutEventStreamResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventStreamResponse to be of type 'table'")
	assert(struct["EventStream"], "Expected key EventStream to exist in table")
	if struct["EventStream"] then asserts.AssertEventStream(struct["EventStream"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventStreamResponse[k], "PutEventStreamResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventStreamResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventStream [EventStream] 
-- Required key: EventStream
-- @return PutEventStreamResponse structure as a key-value pair table
function M.PutEventStreamResponse(args)
	assert(args, "You must provide an argument table when creating PutEventStreamResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventStream"] = args["EventStream"],
	}
	asserts.AssertPutEventStreamResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApnsVoipChannelResponse = { ["APNSVoipChannelResponse"] = true, nil }

function asserts.AssertUpdateApnsVoipChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsVoipChannelResponse to be of type 'table'")
	assert(struct["APNSVoipChannelResponse"], "Expected key APNSVoipChannelResponse to exist in table")
	if struct["APNSVoipChannelResponse"] then asserts.AssertAPNSVoipChannelResponse(struct["APNSVoipChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApnsVoipChannelResponse[k], "UpdateApnsVoipChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsVoipChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSVoipChannelResponse [APNSVoipChannelResponse] 
-- Required key: APNSVoipChannelResponse
-- @return UpdateApnsVoipChannelResponse structure as a key-value pair table
function M.UpdateApnsVoipChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateApnsVoipChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSVoipChannelResponse"] = args["APNSVoipChannelResponse"],
	}
	asserts.AssertUpdateApnsVoipChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CampaignsResponse = { ["Item"] = true, ["NextToken"] = true, nil }

function asserts.AssertCampaignsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignsResponse to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfCampaignResponse(struct["Item"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignsResponse[k], "CampaignsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignsResponse
-- List of available campaigns.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [ListOfCampaignResponse] A list of campaigns.
-- * NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
-- @return CampaignsResponse structure as a key-value pair table
function M.CampaignsResponse(args)
	assert(args, "You must provide an argument table when creating CampaignsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertCampaignsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignsRequest = { ["Token"] = true, ["ApplicationId"] = true, ["PageSize"] = true, nil }

function asserts.AssertGetCampaignsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignsRequest[k], "GetCampaignsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- Required key: ApplicationId
-- @return GetCampaignsRequest structure as a key-value pair table
function M.GetCampaignsRequest(args)
	assert(args, "You must provide an argument table when creating GetCampaignsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertGetCampaignsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSVoipSandboxChannelRequest = { ["Certificate"] = true, ["Enabled"] = true, ["PrivateKey"] = true, ["TokenKeyId"] = true, ["TeamId"] = true, ["BundleId"] = true, ["TokenKey"] = true, ["DefaultAuthenticationMethod"] = true, nil }

function asserts.AssertAPNSVoipSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSVoipSandboxChannelRequest to be of type 'table'")
	if struct["Certificate"] then asserts.Assert__string(struct["Certificate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["PrivateKey"] then asserts.Assert__string(struct["PrivateKey"]) end
	if struct["TokenKeyId"] then asserts.Assert__string(struct["TokenKeyId"]) end
	if struct["TeamId"] then asserts.Assert__string(struct["TeamId"]) end
	if struct["BundleId"] then asserts.Assert__string(struct["BundleId"]) end
	if struct["TokenKey"] then asserts.Assert__string(struct["TokenKey"]) end
	if struct["DefaultAuthenticationMethod"] then asserts.Assert__string(struct["DefaultAuthenticationMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSVoipSandboxChannelRequest[k], "APNSVoipSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSVoipSandboxChannelRequest
-- Apple VoIP Developer Push Notification Service channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [__string] The distribution certificate from Apple.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * PrivateKey [__string] The certificate private key.
-- * TokenKeyId [__string] The token key used for APNs Tokens.
-- * TeamId [__string] The team id used for APNs Tokens.
-- * BundleId [__string] The bundle id used for APNs Tokens.
-- * TokenKey [__string] The token key used for APNs Tokens.
-- * DefaultAuthenticationMethod [__string] The default authentication method used for APNs.
-- @return APNSVoipSandboxChannelRequest structure as a key-value pair table
function M.APNSVoipSandboxChannelRequest(args)
	assert(args, "You must provide an argument table when creating APNSVoipSandboxChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
		["Enabled"] = args["Enabled"],
		["PrivateKey"] = args["PrivateKey"],
		["TokenKeyId"] = args["TokenKeyId"],
		["TeamId"] = args["TeamId"],
		["BundleId"] = args["BundleId"],
		["TokenKey"] = args["TokenKey"],
		["DefaultAuthenticationMethod"] = args["DefaultAuthenticationMethod"],
	}
	asserts.AssertAPNSVoipSandboxChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Event = { ["Timestamp"] = true, ["ClientSdkVersion"] = true, ["Metrics"] = true, ["Session"] = true, ["EventType"] = true, ["Attributes"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["Timestamp"] then asserts.Assert__string(struct["Timestamp"]) end
	if struct["ClientSdkVersion"] then asserts.Assert__string(struct["ClientSdkVersion"]) end
	if struct["Metrics"] then asserts.AssertMapOf__double(struct["Metrics"]) end
	if struct["Session"] then asserts.AssertSession(struct["Session"]) end
	if struct["EventType"] then asserts.Assert__string(struct["EventType"]) end
	if struct["Attributes"] then asserts.AssertMapOf__string(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- Model for creating or updating events.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [__string] The date and time when the event occurred, in ISO 8601 format.
-- * ClientSdkVersion [__string] The version of the SDK that's running on the client device.
-- * Metrics [MapOf__double] Event metrics
-- * Session [Session] The session
-- * EventType [__string] The name of the custom event that you're recording.
-- * Attributes [MapOf__string] Custom attributes that are associated with the event you're adding or updating.
-- @return Event structure as a key-value pair table
function M.Event(args)
	assert(args, "You must provide an argument table when creating Event")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["ClientSdkVersion"] = args["ClientSdkVersion"],
		["Metrics"] = args["Metrics"],
		["Session"] = args["Session"],
		["EventType"] = args["EventType"],
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSSandboxChannelRequest = { ["Certificate"] = true, ["Enabled"] = true, ["PrivateKey"] = true, ["TokenKeyId"] = true, ["TeamId"] = true, ["BundleId"] = true, ["TokenKey"] = true, ["DefaultAuthenticationMethod"] = true, nil }

function asserts.AssertAPNSSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSSandboxChannelRequest to be of type 'table'")
	if struct["Certificate"] then asserts.Assert__string(struct["Certificate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["PrivateKey"] then asserts.Assert__string(struct["PrivateKey"]) end
	if struct["TokenKeyId"] then asserts.Assert__string(struct["TokenKeyId"]) end
	if struct["TeamId"] then asserts.Assert__string(struct["TeamId"]) end
	if struct["BundleId"] then asserts.Assert__string(struct["BundleId"]) end
	if struct["TokenKey"] then asserts.Assert__string(struct["TokenKey"]) end
	if struct["DefaultAuthenticationMethod"] then asserts.Assert__string(struct["DefaultAuthenticationMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSSandboxChannelRequest[k], "APNSSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSSandboxChannelRequest
-- Apple Development Push Notification Service channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [__string] The distribution certificate from Apple.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * PrivateKey [__string] The certificate private key.
-- * TokenKeyId [__string] The token key used for APNs Tokens.
-- * TeamId [__string] The team id used for APNs Tokens.
-- * BundleId [__string] The bundle id used for APNs Tokens.
-- * TokenKey [__string] The token key used for APNs Tokens.
-- * DefaultAuthenticationMethod [__string] The default authentication method used for APNs.
-- @return APNSSandboxChannelRequest structure as a key-value pair table
function M.APNSSandboxChannelRequest(args)
	assert(args, "You must provide an argument table when creating APNSSandboxChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
		["Enabled"] = args["Enabled"],
		["PrivateKey"] = args["PrivateKey"],
		["TokenKeyId"] = args["TokenKeyId"],
		["TeamId"] = args["TeamId"],
		["BundleId"] = args["BundleId"],
		["TokenKey"] = args["TokenKey"],
		["DefaultAuthenticationMethod"] = args["DefaultAuthenticationMethod"],
	}
	asserts.AssertAPNSSandboxChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointsResponse = { ["Item"] = true, nil }

function asserts.AssertEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointsResponse to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfEndpointResponse(struct["Item"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointsResponse[k], "EndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointsResponse
-- List of endpoints
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [ListOfEndpointResponse] The list of endpoints.
-- @return EndpointsResponse structure as a key-value pair table
function M.EndpointsResponse(args)
	assert(args, "You must provide an argument table when creating EndpointsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
	}
	asserts.AssertEndpointsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAttributesResponse = { ["AttributesResource"] = true, nil }

function asserts.AssertRemoveAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAttributesResponse to be of type 'table'")
	assert(struct["AttributesResource"], "Expected key AttributesResource to exist in table")
	if struct["AttributesResource"] then asserts.AssertAttributesResource(struct["AttributesResource"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAttributesResponse[k], "RemoveAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAttributesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributesResource [AttributesResource] 
-- Required key: AttributesResource
-- @return RemoveAttributesResponse structure as a key-value pair table
function M.RemoveAttributesResponse(args)
	assert(args, "You must provide an argument table when creating RemoveAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributesResource"] = args["AttributesResource"],
	}
	asserts.AssertRemoveAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationResponse = { ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationResponse to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationResponse[k], "ApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationResponse
-- Application Response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The unique application ID.
-- * Name [__string] The display name of the application.
-- @return ApplicationResponse structure as a key-value pair table
function M.ApplicationResponse(args)
	assert(args, "You must provide an argument table when creating ApplicationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportJobRequest = { ["RoleArn"] = true, ["SegmentVersion"] = true, ["S3UrlPrefix"] = true, ["SegmentId"] = true, nil }

function asserts.AssertExportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportJobRequest to be of type 'table'")
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["SegmentVersion"] then asserts.Assert__integer(struct["SegmentVersion"]) end
	if struct["S3UrlPrefix"] then asserts.Assert__string(struct["S3UrlPrefix"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportJobRequest[k], "ExportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportJobRequest
-- Export job request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that endpoints will be exported to.
-- * SegmentVersion [__integer] The version of the segment to export if specified.
-- * S3UrlPrefix [__string] A URL that points to the location within an Amazon S3 bucket that will receive the export. The location is typically a folder with multiple files.
--
--The URL should follow this format: s3://bucket-name/folder-name/
--
--Amazon Pinpoint will export endpoints to this location.
-- * SegmentId [__string] The ID of the segment to export endpoints from. If not present, Amazon Pinpoint exports all of the endpoints that belong to the application.
-- @return ExportJobRequest structure as a key-value pair table
function M.ExportJobRequest(args)
	assert(args, "You must provide an argument table when creating ExportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["SegmentVersion"] = args["SegmentVersion"],
		["S3UrlPrefix"] = args["S3UrlPrefix"],
		["SegmentId"] = args["SegmentId"],
	}
	asserts.AssertExportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GCMChannelResponse = { ["Credential"] = true, ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, nil }

function asserts.AssertGCMChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GCMChannelResponse to be of type 'table'")
	if struct["Credential"] then asserts.Assert__string(struct["Credential"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.GCMChannelResponse[k], "GCMChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GCMChannelResponse
-- Google Cloud Messaging channel definition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Credential [__string] The GCM API key from Google.
-- * LastModifiedDate [__string] Last date this was updated
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] Who last updated this entry
-- * Platform [__string] The platform type. Will be GCM
-- * Version [__integer] Version of channel
-- * IsArchived [__boolean] Is this channel archived
-- * CreationDate [__string] When was this segment created
-- * ApplicationId [__string] The ID of the application to which the channel applies.
-- * Id [__string] Channel ID. Not used. Present only for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- @return GCMChannelResponse structure as a key-value pair table
function M.GCMChannelResponse(args)
	assert(args, "You must provide an argument table when creating GCMChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Credential"] = args["Credential"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
	}
	asserts.AssertGCMChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CampaignSmsMessage = { ["Body"] = true, ["SenderId"] = true, ["MessageType"] = true, nil }

function asserts.AssertCampaignSmsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignSmsMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["SenderId"] then asserts.Assert__string(struct["SenderId"]) end
	if struct["MessageType"] then asserts.AssertMessageType(struct["MessageType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignSmsMessage[k], "CampaignSmsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignSmsMessage
-- SMS message configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The SMS text body.
-- * SenderId [__string] Sender ID of sent message.
-- * MessageType [MessageType] Is this is a transactional SMS message, otherwise a promotional message.
-- @return CampaignSmsMessage structure as a key-value pair table
function M.CampaignSmsMessage(args)
	assert(args, "You must provide an argument table when creating CampaignSmsMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["SenderId"] = args["SenderId"],
		["MessageType"] = args["MessageType"],
	}
	asserts.AssertCampaignSmsMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WriteEventStream = { ["DestinationStreamArn"] = true, ["RoleArn"] = true, nil }

function asserts.AssertWriteEventStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteEventStream to be of type 'table'")
	if struct["DestinationStreamArn"] then asserts.Assert__string(struct["DestinationStreamArn"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteEventStream[k], "WriteEventStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteEventStream
-- Request to save an EventStream.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationStreamArn [__string] The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
-- Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME
-- Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
-- * RoleArn [__string] The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
-- @return WriteEventStream structure as a key-value pair table
function M.WriteEventStream(args)
	assert(args, "You must provide an argument table when creating WriteEventStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationStreamArn"] = args["DestinationStreamArn"],
		["RoleArn"] = args["RoleArn"],
	}
	asserts.AssertWriteEventStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointSendConfiguration = { ["BodyOverride"] = true, ["Substitutions"] = true, ["TitleOverride"] = true, ["Context"] = true, ["RawContent"] = true, nil }

function asserts.AssertEndpointSendConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointSendConfiguration to be of type 'table'")
	if struct["BodyOverride"] then asserts.Assert__string(struct["BodyOverride"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["TitleOverride"] then asserts.Assert__string(struct["TitleOverride"]) end
	if struct["Context"] then asserts.AssertMapOf__string(struct["Context"]) end
	if struct["RawContent"] then asserts.Assert__string(struct["RawContent"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointSendConfiguration[k], "EndpointSendConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointSendConfiguration
-- Endpoint send configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BodyOverride [__string] Body override. If specified will override default body.
-- * Substitutions [MapOfListOf__string] A map of substitution values for the message to be merged with the DefaultMessage's substitutions. Substitutions on this map take precedence over the all other substitutions.
-- * TitleOverride [__string] Title override. If specified will override default title if applicable.
-- * Context [MapOf__string] A map of custom attributes to attributes to be attached to the message for this address. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
-- * RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- @return EndpointSendConfiguration structure as a key-value pair table
function M.EndpointSendConfiguration(args)
	assert(args, "You must provide an argument table when creating EndpointSendConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BodyOverride"] = args["BodyOverride"],
		["Substitutions"] = args["Substitutions"],
		["TitleOverride"] = args["TitleOverride"],
		["Context"] = args["Context"],
		["RawContent"] = args["RawContent"],
	}
	asserts.AssertEndpointSendConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentLocation = { ["Country"] = true, ["GPSPoint"] = true, nil }

function asserts.AssertSegmentLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentLocation to be of type 'table'")
	if struct["Country"] then asserts.AssertSetDimension(struct["Country"]) end
	if struct["GPSPoint"] then asserts.AssertGPSPointDimension(struct["GPSPoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentLocation[k], "SegmentLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentLocation
-- Segment location dimensions
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Country [SetDimension] The country filter according to ISO 3166-1 Alpha-2 codes.
-- * GPSPoint [GPSPointDimension] The GPS Point dimension.
-- @return SegmentLocation structure as a key-value pair table
function M.SegmentLocation(args)
	assert(args, "You must provide an argument table when creating SegmentLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Country"] = args["Country"],
		["GPSPoint"] = args["GPSPoint"],
	}
	asserts.AssertSegmentLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEmailChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteEmailChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEmailChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEmailChannelRequest[k], "DeleteEmailChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEmailChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteEmailChannelRequest structure as a key-value pair table
function M.DeleteEmailChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteEmailChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteEmailChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApnsVoipSandboxChannelResponse = { ["APNSVoipSandboxChannelResponse"] = true, nil }

function asserts.AssertUpdateApnsVoipSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsVoipSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSVoipSandboxChannelResponse"], "Expected key APNSVoipSandboxChannelResponse to exist in table")
	if struct["APNSVoipSandboxChannelResponse"] then asserts.AssertAPNSVoipSandboxChannelResponse(struct["APNSVoipSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApnsVoipSandboxChannelResponse[k], "UpdateApnsVoipSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsVoipSandboxChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSVoipSandboxChannelResponse [APNSVoipSandboxChannelResponse] 
-- Required key: APNSVoipSandboxChannelResponse
-- @return UpdateApnsVoipSandboxChannelResponse structure as a key-value pair table
function M.UpdateApnsVoipSandboxChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateApnsVoipSandboxChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSVoipSandboxChannelResponse"] = args["APNSVoipSandboxChannelResponse"],
	}
	asserts.AssertUpdateApnsVoipSandboxChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignActivitiesRequest = { ["Token"] = true, ["ApplicationId"] = true, ["PageSize"] = true, ["CampaignId"] = true, nil }

function asserts.AssertGetCampaignActivitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignActivitiesRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	if struct["CampaignId"] then asserts.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignActivitiesRequest[k], "GetCampaignActivitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignActivitiesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- * CampaignId [__string] The unique ID of the campaign.
-- Required key: ApplicationId
-- Required key: CampaignId
-- @return GetCampaignActivitiesRequest structure as a key-value pair table
function M.GetCampaignActivitiesRequest(args)
	assert(args, "You must provide an argument table when creating GetCampaignActivitiesRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{campaign-id}"] = args["CampaignId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["PageSize"] = args["PageSize"],
		["CampaignId"] = args["CampaignId"],
	}
	asserts.AssertGetCampaignActivitiesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportJobResource = { ["DefineSegment"] = true, ["SegmentId"] = true, ["Format"] = true, ["RoleArn"] = true, ["S3Url"] = true, ["RegisterEndpoints"] = true, ["ExternalId"] = true, ["SegmentName"] = true, nil }

function asserts.AssertImportJobResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportJobResource to be of type 'table'")
	if struct["DefineSegment"] then asserts.Assert__boolean(struct["DefineSegment"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	if struct["Format"] then asserts.AssertFormat(struct["Format"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["S3Url"] then asserts.Assert__string(struct["S3Url"]) end
	if struct["RegisterEndpoints"] then asserts.Assert__boolean(struct["RegisterEndpoints"]) end
	if struct["ExternalId"] then asserts.Assert__string(struct["ExternalId"]) end
	if struct["SegmentName"] then asserts.Assert__string(struct["SegmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportJobResource[k], "ImportJobResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportJobResource
-- Import job resource
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefineSegment [__boolean] Sets whether the endpoints create a segment when they are imported.
-- * SegmentId [__string] The ID of the segment to update if the import job is meant to update an existing segment.
-- * Format [Format] The format of the files that contain the endpoint definitions.
--Valid values: CSV, JSON
-- * RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
-- * S3Url [__string] The URL of the S3 bucket that contains the segment information to import. The location can be a folder or a single file. The URL should use the following format: s3://bucket-name/folder-name/file-name
--
--Amazon Pinpoint imports endpoints from this location and any subfolders it contains.
-- * RegisterEndpoints [__boolean] Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
-- * ExternalId [__string] (Deprecated) Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
-- * SegmentName [__string] A custom name for the segment created by the import job. Use if DefineSegment is true.
-- @return ImportJobResource structure as a key-value pair table
function M.ImportJobResource(args)
	assert(args, "You must provide an argument table when creating ImportJobResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefineSegment"] = args["DefineSegment"],
		["SegmentId"] = args["SegmentId"],
		["Format"] = args["Format"],
		["RoleArn"] = args["RoleArn"],
		["S3Url"] = args["S3Url"],
		["RegisterEndpoints"] = args["RegisterEndpoints"],
		["ExternalId"] = args["ExternalId"],
		["SegmentName"] = args["SegmentName"],
	}
	asserts.AssertImportJobResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCampaignRequest = { ["ApplicationId"] = true, ["WriteCampaignRequest"] = true, ["CampaignId"] = true, nil }

function asserts.AssertUpdateCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCampaignRequest to be of type 'table'")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteCampaignRequest"], "Expected key WriteCampaignRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["WriteCampaignRequest"] then asserts.AssertWriteCampaignRequest(struct["WriteCampaignRequest"]) end
	if struct["CampaignId"] then asserts.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCampaignRequest[k], "UpdateCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCampaignRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * WriteCampaignRequest [WriteCampaignRequest] 
-- * CampaignId [__string] The unique ID of the campaign.
-- Required key: CampaignId
-- Required key: ApplicationId
-- Required key: WriteCampaignRequest
-- @return UpdateCampaignRequest structure as a key-value pair table
function M.UpdateCampaignRequest(args)
	assert(args, "You must provide an argument table when creating UpdateCampaignRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{campaign-id}"] = args["CampaignId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["WriteCampaignRequest"] = args["WriteCampaignRequest"],
		["CampaignId"] = args["CampaignId"],
	}
	asserts.AssertUpdateCampaignRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentsResponse = { ["Item"] = true, ["NextToken"] = true, nil }

function asserts.AssertSegmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentsResponse to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfSegmentResponse(struct["Item"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentsResponse[k], "SegmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentsResponse
-- Segments in your account.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [ListOfSegmentResponse] The list of segments.
-- * NextToken [__string] An identifier used to retrieve the next page of results. The token is null if no additional pages exist.
-- @return SegmentsResponse structure as a key-value pair table
function M.SegmentsResponse(args)
	assert(args, "You must provide an argument table when creating SegmentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertSegmentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventStream = { ["DestinationStreamArn"] = true, ["RoleArn"] = true, ["LastUpdatedBy"] = true, ["ExternalId"] = true, ["LastModifiedDate"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertEventStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventStream to be of type 'table'")
	if struct["DestinationStreamArn"] then asserts.Assert__string(struct["DestinationStreamArn"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["LastUpdatedBy"] then asserts.Assert__string(struct["LastUpdatedBy"]) end
	if struct["ExternalId"] then asserts.Assert__string(struct["ExternalId"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventStream[k], "EventStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventStream
-- Model for an event publishing subscription export.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationStreamArn [__string] The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
-- Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME
-- Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
-- * RoleArn [__string] The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
-- * LastUpdatedBy [__string] The IAM user who last modified the event stream.
-- * ExternalId [__string] (Deprecated) Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
-- * LastModifiedDate [__string] The date the event stream was last updated in ISO 8601 format.
-- * ApplicationId [__string] The ID of the application from which events should be published.
-- @return EventStream structure as a key-value pair table
function M.EventStream(args)
	assert(args, "You must provide an argument table when creating EventStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationStreamArn"] = args["DestinationStreamArn"],
		["RoleArn"] = args["RoleArn"],
		["LastUpdatedBy"] = args["LastUpdatedBy"],
		["ExternalId"] = args["ExternalId"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertEventStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApnsSandboxChannelResponse = { ["APNSSandboxChannelResponse"] = true, nil }

function asserts.AssertUpdateApnsSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSSandboxChannelResponse"], "Expected key APNSSandboxChannelResponse to exist in table")
	if struct["APNSSandboxChannelResponse"] then asserts.AssertAPNSSandboxChannelResponse(struct["APNSSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApnsSandboxChannelResponse[k], "UpdateApnsSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsSandboxChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSSandboxChannelResponse [APNSSandboxChannelResponse] 
-- Required key: APNSSandboxChannelResponse
-- @return UpdateApnsSandboxChannelResponse structure as a key-value pair table
function M.UpdateApnsSandboxChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateApnsSandboxChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSSandboxChannelResponse"] = args["APNSSandboxChannelResponse"],
	}
	asserts.AssertUpdateApnsSandboxChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointBatchItem = { ["EffectiveDate"] = true, ["OptOut"] = true, ["RequestId"] = true, ["Demographic"] = true, ["User"] = true, ["Metrics"] = true, ["Location"] = true, ["Address"] = true, ["Attributes"] = true, ["ChannelType"] = true, ["Id"] = true, ["EndpointStatus"] = true, nil }

function asserts.AssertEndpointBatchItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointBatchItem to be of type 'table'")
	if struct["EffectiveDate"] then asserts.Assert__string(struct["EffectiveDate"]) end
	if struct["OptOut"] then asserts.Assert__string(struct["OptOut"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["Demographic"] then asserts.AssertEndpointDemographic(struct["Demographic"]) end
	if struct["User"] then asserts.AssertEndpointUser(struct["User"]) end
	if struct["Metrics"] then asserts.AssertMapOf__double(struct["Metrics"]) end
	if struct["Location"] then asserts.AssertEndpointLocation(struct["Location"]) end
	if struct["Address"] then asserts.Assert__string(struct["Address"]) end
	if struct["Attributes"] then asserts.AssertMapOfListOf__string(struct["Attributes"]) end
	if struct["ChannelType"] then asserts.AssertChannelType(struct["ChannelType"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["EndpointStatus"] then asserts.Assert__string(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointBatchItem[k], "EndpointBatchItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointBatchItem
-- Endpoint update request
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EffectiveDate [__string] The last time the endpoint was updated. Provided in ISO 8601 format.
-- * OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:
--
--ALL - User has opted out of all messages.
--
--NONE - Users has not opted out and receives all messages.
-- * RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- * Demographic [EndpointDemographic] The endpoint demographic attributes.
-- * User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- * Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- * Location [EndpointLocation] The endpoint location attributes.
-- * Address [__string] The destination for messages that you send to this endpoint. The address varies by channel. For mobile push channels, use the token provided by the push notification service, such as the APNs device token or the FCM registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.
-- * Attributes [MapOfListOf__string] Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign.
--
--The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
-- * ChannelType [ChannelType] The channel type.
--
--Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
-- * Id [__string] The unique Id for the Endpoint in the batch.
-- * EndpointStatus [__string] Unused.
-- @return EndpointBatchItem structure as a key-value pair table
function M.EndpointBatchItem(args)
	assert(args, "You must provide an argument table when creating EndpointBatchItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EffectiveDate"] = args["EffectiveDate"],
		["OptOut"] = args["OptOut"],
		["RequestId"] = args["RequestId"],
		["Demographic"] = args["Demographic"],
		["User"] = args["User"],
		["Metrics"] = args["Metrics"],
		["Location"] = args["Location"],
		["Address"] = args["Address"],
		["Attributes"] = args["Attributes"],
		["ChannelType"] = args["ChannelType"],
		["Id"] = args["Id"],
		["EndpointStatus"] = args["EndpointStatus"],
	}
	asserts.AssertEndpointBatchItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentImportJobsRequest = { ["Token"] = true, ["ApplicationId"] = true, ["SegmentId"] = true, ["PageSize"] = true, nil }

function asserts.AssertGetSegmentImportJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentImportJobsRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentImportJobsRequest[k], "GetSegmentImportJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentImportJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * SegmentId [__string] The unique ID of the segment.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- Required key: SegmentId
-- Required key: ApplicationId
-- @return GetSegmentImportJobsRequest structure as a key-value pair table
function M.GetSegmentImportJobsRequest(args)
	assert(args, "You must provide an argument table when creating GetSegmentImportJobsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{segment-id}"] = args["SegmentId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["SegmentId"] = args["SegmentId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertGetSegmentImportJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApnsVoipChannelResponse = { ["APNSVoipChannelResponse"] = true, nil }

function asserts.AssertDeleteApnsVoipChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsVoipChannelResponse to be of type 'table'")
	assert(struct["APNSVoipChannelResponse"], "Expected key APNSVoipChannelResponse to exist in table")
	if struct["APNSVoipChannelResponse"] then asserts.AssertAPNSVoipChannelResponse(struct["APNSVoipChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApnsVoipChannelResponse[k], "DeleteApnsVoipChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsVoipChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSVoipChannelResponse [APNSVoipChannelResponse] 
-- Required key: APNSVoipChannelResponse
-- @return DeleteApnsVoipChannelResponse structure as a key-value pair table
function M.DeleteApnsVoipChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteApnsVoipChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSVoipChannelResponse"] = args["APNSVoipChannelResponse"],
	}
	asserts.AssertDeleteApnsVoipChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignActivitiesResponse = { ["ActivitiesResponse"] = true, nil }

function asserts.AssertGetCampaignActivitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignActivitiesResponse to be of type 'table'")
	assert(struct["ActivitiesResponse"], "Expected key ActivitiesResponse to exist in table")
	if struct["ActivitiesResponse"] then asserts.AssertActivitiesResponse(struct["ActivitiesResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignActivitiesResponse[k], "GetCampaignActivitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignActivitiesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ActivitiesResponse [ActivitiesResponse] 
-- Required key: ActivitiesResponse
-- @return GetCampaignActivitiesResponse structure as a key-value pair table
function M.GetCampaignActivitiesResponse(args)
	assert(args, "You must provide an argument table when creating GetCampaignActivitiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ActivitiesResponse"] = args["ActivitiesResponse"],
	}
	asserts.AssertGetCampaignActivitiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApnsSandboxChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetApnsSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApnsSandboxChannelRequest[k], "GetApnsSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsSandboxChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetApnsSandboxChannelRequest structure as a key-value pair table
function M.GetApnsSandboxChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetApnsSandboxChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetApnsSandboxChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DirectMessageConfiguration = { ["BaiduMessage"] = true, ["APNSMessage"] = true, ["SMSMessage"] = true, ["DefaultPushNotificationMessage"] = true, ["DefaultMessage"] = true, ["GCMMessage"] = true, ["ADMMessage"] = true, nil }

function asserts.AssertDirectMessageConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectMessageConfiguration to be of type 'table'")
	if struct["BaiduMessage"] then asserts.AssertBaiduMessage(struct["BaiduMessage"]) end
	if struct["APNSMessage"] then asserts.AssertAPNSMessage(struct["APNSMessage"]) end
	if struct["SMSMessage"] then asserts.AssertSMSMessage(struct["SMSMessage"]) end
	if struct["DefaultPushNotificationMessage"] then asserts.AssertDefaultPushNotificationMessage(struct["DefaultPushNotificationMessage"]) end
	if struct["DefaultMessage"] then asserts.AssertDefaultMessage(struct["DefaultMessage"]) end
	if struct["GCMMessage"] then asserts.AssertGCMMessage(struct["GCMMessage"]) end
	if struct["ADMMessage"] then asserts.AssertADMMessage(struct["ADMMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectMessageConfiguration[k], "DirectMessageConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectMessageConfiguration
-- Message definitions for the default message and any messages that are tailored for specific channels.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaiduMessage [BaiduMessage] The message to Baidu GCM channels. Overrides the default push notification message.
-- * APNSMessage [APNSMessage] The message to APNS channels. Overrides the default push notification message.
-- * SMSMessage [SMSMessage] The message to SMS channels. Overrides the default message.
-- * DefaultPushNotificationMessage [DefaultPushNotificationMessage] The default push notification message for all push channels.
-- * DefaultMessage [DefaultMessage] The default message for all channels.
-- * GCMMessage [GCMMessage] The message to GCM channels. Overrides the default push notification message.
-- * ADMMessage [ADMMessage] The message to ADM channels. Overrides the default push notification message.
-- @return DirectMessageConfiguration structure as a key-value pair table
function M.DirectMessageConfiguration(args)
	assert(args, "You must provide an argument table when creating DirectMessageConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BaiduMessage"] = args["BaiduMessage"],
		["APNSMessage"] = args["APNSMessage"],
		["SMSMessage"] = args["SMSMessage"],
		["DefaultPushNotificationMessage"] = args["DefaultPushNotificationMessage"],
		["DefaultMessage"] = args["DefaultMessage"],
		["GCMMessage"] = args["GCMMessage"],
		["ADMMessage"] = args["ADMMessage"],
	}
	asserts.AssertDirectMessageConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentsResponse = { ["SegmentsResponse"] = true, nil }

function asserts.AssertGetSegmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentsResponse to be of type 'table'")
	assert(struct["SegmentsResponse"], "Expected key SegmentsResponse to exist in table")
	if struct["SegmentsResponse"] then asserts.AssertSegmentsResponse(struct["SegmentsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentsResponse[k], "GetSegmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentsResponse [SegmentsResponse] 
-- Required key: SegmentsResponse
-- @return GetSegmentsResponse structure as a key-value pair table
function M.GetSegmentsResponse(args)
	assert(args, "You must provide an argument table when creating GetSegmentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentsResponse"] = args["SegmentsResponse"],
	}
	asserts.AssertGetSegmentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ADMChannelRequest = { ["ClientSecret"] = true, ["Enabled"] = true, ["ClientId"] = true, nil }

function asserts.AssertADMChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ADMChannelRequest to be of type 'table'")
	if struct["ClientSecret"] then asserts.Assert__string(struct["ClientSecret"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["ClientId"] then asserts.Assert__string(struct["ClientId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ADMChannelRequest[k], "ADMChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ADMChannelRequest
-- Amazon Device Messaging channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientSecret [__string] The Client Secret that you obtained from the Amazon App Distribution Portal.
-- * Enabled [__boolean] Indicates whether or not the channel is enabled for sending messages.
-- * ClientId [__string] The Client ID that you obtained from the Amazon App Distribution Portal.
-- @return ADMChannelRequest structure as a key-value pair table
function M.ADMChannelRequest(args)
	assert(args, "You must provide an argument table when creating ADMChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientSecret"] = args["ClientSecret"],
		["Enabled"] = args["Enabled"],
		["ClientId"] = args["ClientId"],
	}
	asserts.AssertADMChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GCMChannelRequest = { ["ApiKey"] = true, ["Enabled"] = true, nil }

function asserts.AssertGCMChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GCMChannelRequest to be of type 'table'")
	if struct["ApiKey"] then asserts.Assert__string(struct["ApiKey"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.GCMChannelRequest[k], "GCMChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GCMChannelRequest
-- Google Cloud Messaging credentials
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApiKey [__string] Platform credential API key from Google.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- @return GCMChannelRequest structure as a key-value pair table
function M.GCMChannelRequest(args)
	assert(args, "You must provide an argument table when creating GCMChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApiKey"] = args["ApiKey"],
		["Enabled"] = args["Enabled"],
	}
	asserts.AssertGCMChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAdmChannelResponse = { ["ADMChannelResponse"] = true, nil }

function asserts.AssertDeleteAdmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAdmChannelResponse to be of type 'table'")
	assert(struct["ADMChannelResponse"], "Expected key ADMChannelResponse to exist in table")
	if struct["ADMChannelResponse"] then asserts.AssertADMChannelResponse(struct["ADMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAdmChannelResponse[k], "DeleteAdmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAdmChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ADMChannelResponse [ADMChannelResponse] 
-- Required key: ADMChannelResponse
-- @return DeleteAdmChannelResponse structure as a key-value pair table
function M.DeleteAdmChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteAdmChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ADMChannelResponse"] = args["ADMChannelResponse"],
	}
	asserts.AssertDeleteAdmChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApnsChannelResponse = { ["APNSChannelResponse"] = true, nil }

function asserts.AssertUpdateApnsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsChannelResponse to be of type 'table'")
	assert(struct["APNSChannelResponse"], "Expected key APNSChannelResponse to exist in table")
	if struct["APNSChannelResponse"] then asserts.AssertAPNSChannelResponse(struct["APNSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApnsChannelResponse[k], "UpdateApnsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSChannelResponse [APNSChannelResponse] 
-- Required key: APNSChannelResponse
-- @return UpdateApnsChannelResponse structure as a key-value pair table
function M.UpdateApnsChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateApnsChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSChannelResponse"] = args["APNSChannelResponse"],
	}
	asserts.AssertUpdateApnsChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ADMMessage = { ["Body"] = true, ["Sound"] = true, ["ConsolidationKey"] = true, ["ExpiresAfter"] = true, ["Title"] = true, ["Url"] = true, ["ImageUrl"] = true, ["RawContent"] = true, ["Substitutions"] = true, ["SmallImageIconUrl"] = true, ["IconReference"] = true, ["Action"] = true, ["SilentPush"] = true, ["MD5"] = true, ["Data"] = true, ["ImageIconUrl"] = true, nil }

function asserts.AssertADMMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ADMMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Sound"] then asserts.Assert__string(struct["Sound"]) end
	if struct["ConsolidationKey"] then asserts.Assert__string(struct["ConsolidationKey"]) end
	if struct["ExpiresAfter"] then asserts.Assert__string(struct["ExpiresAfter"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ImageUrl"] then asserts.Assert__string(struct["ImageUrl"]) end
	if struct["RawContent"] then asserts.Assert__string(struct["RawContent"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["SmallImageIconUrl"] then asserts.Assert__string(struct["SmallImageIconUrl"]) end
	if struct["IconReference"] then asserts.Assert__string(struct["IconReference"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then asserts.Assert__boolean(struct["SilentPush"]) end
	if struct["MD5"] then asserts.Assert__string(struct["MD5"]) end
	if struct["Data"] then asserts.AssertMapOf__string(struct["Data"]) end
	if struct["ImageIconUrl"] then asserts.Assert__string(struct["ImageIconUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.ADMMessage[k], "ADMMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ADMMessage
-- ADM Message.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The message body of the notification.
-- * Sound [__string] Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
-- * ConsolidationKey [__string] Optional. Arbitrary string used to indicate multiple messages are logically the same and that ADM is allowed to drop previously enqueued messages in favor of this one.
-- * ExpiresAfter [__string] Optional. Number of seconds ADM should retain the message if the device is offline
-- * Title [__string] The message title that displays above the message on the user's device.
-- * Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- * ImageUrl [__string] The URL that points to an image used in the push notification.
-- * RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- * Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- * SmallImageIconUrl [__string] The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
-- * IconReference [__string] The icon image name of the asset saved in your application.
-- * Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- * SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- * MD5 [__string] Optional. Base-64-encoded MD5 checksum of the data parameter. Used to verify data integrity
-- * Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- * ImageIconUrl [__string] The URL that points to an image used as the large icon to the notification content view.
-- @return ADMMessage structure as a key-value pair table
function M.ADMMessage(args)
	assert(args, "You must provide an argument table when creating ADMMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Sound"] = args["Sound"],
		["ConsolidationKey"] = args["ConsolidationKey"],
		["ExpiresAfter"] = args["ExpiresAfter"],
		["Title"] = args["Title"],
		["Url"] = args["Url"],
		["ImageUrl"] = args["ImageUrl"],
		["RawContent"] = args["RawContent"],
		["Substitutions"] = args["Substitutions"],
		["SmallImageIconUrl"] = args["SmallImageIconUrl"],
		["IconReference"] = args["IconReference"],
		["Action"] = args["Action"],
		["SilentPush"] = args["SilentPush"],
		["MD5"] = args["MD5"],
		["Data"] = args["Data"],
		["ImageIconUrl"] = args["ImageIconUrl"],
	}
	asserts.AssertADMMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportJobResponse = { ["CompletionDate"] = true, ["Definition"] = true, ["Type"] = true, ["TotalFailures"] = true, ["TotalPieces"] = true, ["FailedPieces"] = true, ["CompletedPieces"] = true, ["JobStatus"] = true, ["Failures"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["TotalProcessed"] = true, nil }

function asserts.AssertImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportJobResponse to be of type 'table'")
	if struct["CompletionDate"] then asserts.Assert__string(struct["CompletionDate"]) end
	if struct["Definition"] then asserts.AssertImportJobResource(struct["Definition"]) end
	if struct["Type"] then asserts.Assert__string(struct["Type"]) end
	if struct["TotalFailures"] then asserts.Assert__integer(struct["TotalFailures"]) end
	if struct["TotalPieces"] then asserts.Assert__integer(struct["TotalPieces"]) end
	if struct["FailedPieces"] then asserts.Assert__integer(struct["FailedPieces"]) end
	if struct["CompletedPieces"] then asserts.Assert__integer(struct["CompletedPieces"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["Failures"] then asserts.AssertListOf__string(struct["Failures"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["TotalProcessed"] then asserts.Assert__integer(struct["TotalProcessed"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportJobResponse[k], "ImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportJobResponse
-- Import job response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompletionDate [__string] The date the import job completed in ISO 8601 format.
-- * Definition [ImportJobResource] The import job settings.
-- * Type [__string] The job type. Will be Import.
-- * TotalFailures [__integer] The number of endpoints that failed to import; for example, because of syntax errors.
-- * TotalPieces [__integer] The total number of pieces that must be imported to finish the job. Each piece is an approximately equal portion of the endpoints to import.
-- * FailedPieces [__integer] The number of pieces that have failed to import as of the time of the request.
-- * CompletedPieces [__integer] The number of pieces that have successfully imported as of the time of the request.
-- * JobStatus [JobStatus] The status of the import job.
--Valid values: CREATED, INITIALIZING, PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED
--
--The job status is FAILED if one or more pieces failed to import.
-- * Failures [ListOf__string] Provides up to 100 of the first failed entries for the job, if any exist.
-- * CreationDate [__string] The date the import job was created in ISO 8601 format.
-- * ApplicationId [__string] The unique ID of the application to which the import job applies.
-- * Id [__string] The unique ID of the import job.
-- * TotalProcessed [__integer] The number of endpoints that were processed by the import job.
-- @return ImportJobResponse structure as a key-value pair table
function M.ImportJobResponse(args)
	assert(args, "You must provide an argument table when creating ImportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompletionDate"] = args["CompletionDate"],
		["Definition"] = args["Definition"],
		["Type"] = args["Type"],
		["TotalFailures"] = args["TotalFailures"],
		["TotalPieces"] = args["TotalPieces"],
		["FailedPieces"] = args["FailedPieces"],
		["CompletedPieces"] = args["CompletedPieces"],
		["JobStatus"] = args["JobStatus"],
		["Failures"] = args["Failures"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["TotalProcessed"] = args["TotalProcessed"],
	}
	asserts.AssertImportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateBaiduChannelResponse = { ["BaiduChannelResponse"] = true, nil }

function asserts.AssertUpdateBaiduChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBaiduChannelResponse to be of type 'table'")
	assert(struct["BaiduChannelResponse"], "Expected key BaiduChannelResponse to exist in table")
	if struct["BaiduChannelResponse"] then asserts.AssertBaiduChannelResponse(struct["BaiduChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBaiduChannelResponse[k], "UpdateBaiduChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBaiduChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaiduChannelResponse [BaiduChannelResponse] 
-- Required key: BaiduChannelResponse
-- @return UpdateBaiduChannelResponse structure as a key-value pair table
function M.UpdateBaiduChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateBaiduChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BaiduChannelResponse"] = args["BaiduChannelResponse"],
	}
	asserts.AssertUpdateBaiduChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendMessagesResponse = { ["MessageResponse"] = true, nil }

function asserts.AssertSendMessagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessagesResponse to be of type 'table'")
	assert(struct["MessageResponse"], "Expected key MessageResponse to exist in table")
	if struct["MessageResponse"] then asserts.AssertMessageResponse(struct["MessageResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessagesResponse[k], "SendMessagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessagesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageResponse [MessageResponse] 
-- Required key: MessageResponse
-- @return SendMessagesResponse structure as a key-value pair table
function M.SendMessagesResponse(args)
	assert(args, "You must provide an argument table when creating SendMessagesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageResponse"] = args["MessageResponse"],
	}
	asserts.AssertSendMessagesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentImportJobsResponse = { ["ImportJobsResponse"] = true, nil }

function asserts.AssertGetSegmentImportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentImportJobsResponse to be of type 'table'")
	assert(struct["ImportJobsResponse"], "Expected key ImportJobsResponse to exist in table")
	if struct["ImportJobsResponse"] then asserts.AssertImportJobsResponse(struct["ImportJobsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentImportJobsResponse[k], "GetSegmentImportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentImportJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImportJobsResponse [ImportJobsResponse] 
-- Required key: ImportJobsResponse
-- @return GetSegmentImportJobsResponse structure as a key-value pair table
function M.GetSegmentImportJobsResponse(args)
	assert(args, "You must provide an argument table when creating GetSegmentImportJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImportJobsResponse"] = args["ImportJobsResponse"],
	}
	asserts.AssertGetSegmentImportJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MessageRequest = { ["MessageConfiguration"] = true, ["Endpoints"] = true, ["TraceId"] = true, ["Addresses"] = true, ["Context"] = true, nil }

function asserts.AssertMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageRequest to be of type 'table'")
	if struct["MessageConfiguration"] then asserts.AssertDirectMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["Endpoints"] then asserts.AssertMapOfEndpointSendConfiguration(struct["Endpoints"]) end
	if struct["TraceId"] then asserts.Assert__string(struct["TraceId"]) end
	if struct["Addresses"] then asserts.AssertMapOfAddressConfiguration(struct["Addresses"]) end
	if struct["Context"] then asserts.AssertMapOf__string(struct["Context"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageRequest[k], "MessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageRequest
-- Send message request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageConfiguration [DirectMessageConfiguration] Message configuration.
-- * Endpoints [MapOfEndpointSendConfiguration] A map of key-value pairs, where each key is an endpoint ID and each value is an EndpointSendConfiguration object. Within an EndpointSendConfiguration object, you can tailor the message for an endpoint by specifying message overrides or substitutions.
-- * TraceId [__string] A unique ID that you can use to trace a message. This ID is visible to recipients.
-- * Addresses [MapOfAddressConfiguration] A map of key-value pairs, where each key is an address and each value is an AddressConfiguration object. An address can be a push notification token, a phone number, or an email address.
-- * Context [MapOf__string] A map of custom attributes to attributes to be attached to the message. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
-- @return MessageRequest structure as a key-value pair table
function M.MessageRequest(args)
	assert(args, "You must provide an argument table when creating MessageRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageConfiguration"] = args["MessageConfiguration"],
		["Endpoints"] = args["Endpoints"],
		["TraceId"] = args["TraceId"],
		["Addresses"] = args["Addresses"],
		["Context"] = args["Context"],
	}
	asserts.AssertMessageRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventStreamRequest = { ["ApplicationId"] = true, ["WriteEventStream"] = true, nil }

function asserts.AssertPutEventStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventStreamRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteEventStream"], "Expected key WriteEventStream to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["WriteEventStream"] then asserts.AssertWriteEventStream(struct["WriteEventStream"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventStreamRequest[k], "PutEventStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventStreamRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * WriteEventStream [WriteEventStream] 
-- Required key: ApplicationId
-- Required key: WriteEventStream
-- @return PutEventStreamRequest structure as a key-value pair table
function M.PutEventStreamRequest(args)
	assert(args, "You must provide an argument table when creating PutEventStreamRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["WriteEventStream"] = args["WriteEventStream"],
	}
	asserts.AssertPutEventStreamRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApnsChannelResponse = { ["APNSChannelResponse"] = true, nil }

function asserts.AssertGetApnsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsChannelResponse to be of type 'table'")
	assert(struct["APNSChannelResponse"], "Expected key APNSChannelResponse to exist in table")
	if struct["APNSChannelResponse"] then asserts.AssertAPNSChannelResponse(struct["APNSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApnsChannelResponse[k], "GetApnsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSChannelResponse [APNSChannelResponse] 
-- Required key: APNSChannelResponse
-- @return GetApnsChannelResponse structure as a key-value pair table
function M.GetApnsChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetApnsChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSChannelResponse"] = args["APNSChannelResponse"],
	}
	asserts.AssertGetApnsChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSegmentRequest = { ["WriteSegmentRequest"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertCreateSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSegmentRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteSegmentRequest"], "Expected key WriteSegmentRequest to exist in table")
	if struct["WriteSegmentRequest"] then asserts.AssertWriteSegmentRequest(struct["WriteSegmentRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSegmentRequest[k], "CreateSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSegmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WriteSegmentRequest [WriteSegmentRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: WriteSegmentRequest
-- @return CreateSegmentRequest structure as a key-value pair table
function M.CreateSegmentRequest(args)
	assert(args, "You must provide an argument table when creating CreateSegmentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["WriteSegmentRequest"] = args["WriteSegmentRequest"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertCreateSegmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SMSChannelResponse = { ["ShortCode"] = true, ["PromotionalMessagesPerSecond"] = true, ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["TransactionalMessagesPerSecond"] = true, ["SenderId"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, nil }

function asserts.AssertSMSChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSChannelResponse to be of type 'table'")
	if struct["ShortCode"] then asserts.Assert__string(struct["ShortCode"]) end
	if struct["PromotionalMessagesPerSecond"] then asserts.Assert__integer(struct["PromotionalMessagesPerSecond"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["TransactionalMessagesPerSecond"] then asserts.Assert__integer(struct["TransactionalMessagesPerSecond"]) end
	if struct["SenderId"] then asserts.Assert__string(struct["SenderId"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.SMSChannelResponse[k], "SMSChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSChannelResponse
-- SMS Channel Response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ShortCode [__string] The short code registered with the phone provider.
-- * PromotionalMessagesPerSecond [__integer] Promotional messages per second that can be sent
-- * LastModifiedDate [__string] Last date this was updated
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] Who last updated this entry
-- * Platform [__string] Platform type. Will be "SMS"
-- * Version [__integer] Version of channel
-- * TransactionalMessagesPerSecond [__integer] Transactional messages per second that can be sent
-- * SenderId [__string] Sender identifier of your messages.
-- * IsArchived [__boolean] Is this channel archived
-- * CreationDate [__string] The date that the settings were last updated in ISO 8601 format.
-- * ApplicationId [__string] The unique ID of the application to which the SMS channel belongs.
-- * Id [__string] Channel ID. Not used, only for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- @return SMSChannelResponse structure as a key-value pair table
function M.SMSChannelResponse(args)
	assert(args, "You must provide an argument table when creating SMSChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ShortCode"] = args["ShortCode"],
		["PromotionalMessagesPerSecond"] = args["PromotionalMessagesPerSecond"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["TransactionalMessagesPerSecond"] = args["TransactionalMessagesPerSecond"],
		["SenderId"] = args["SenderId"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
	}
	asserts.AssertSMSChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRequestsException = { ["Message"] = true, ["RequestID"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["RequestID"] then asserts.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- Simple message object.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] The error message that's returned from the API.
-- * RequestID [__string] The unique message body ID.
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
		["Message"] = args["Message"],
		["RequestID"] = args["RequestID"],
	}
	asserts.AssertTooManyRequestsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventItemResponse = { ["Message"] = true, ["StatusCode"] = true, nil }

function asserts.AssertEventItemResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventItemResponse to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["StatusCode"] then asserts.Assert__integer(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventItemResponse[k], "EventItemResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventItemResponse
-- The responses that are returned after you record an event.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] A custom message that is associated with the processing of an event.
-- * StatusCode [__integer] The status code to respond with for a particular event id
-- @return EventItemResponse structure as a key-value pair table
function M.EventItemResponse(args)
	assert(args, "You must provide an argument table when creating EventItemResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertEventItemResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAppsResponse = { ["ApplicationsResponse"] = true, nil }

function asserts.AssertGetAppsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAppsResponse to be of type 'table'")
	assert(struct["ApplicationsResponse"], "Expected key ApplicationsResponse to exist in table")
	if struct["ApplicationsResponse"] then asserts.AssertApplicationsResponse(struct["ApplicationsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAppsResponse[k], "GetAppsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAppsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationsResponse [ApplicationsResponse] 
-- Required key: ApplicationsResponse
-- @return GetAppsResponse structure as a key-value pair table
function M.GetAppsResponse(args)
	assert(args, "You must provide an argument table when creating GetAppsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationsResponse"] = args["ApplicationsResponse"],
	}
	asserts.AssertGetAppsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CampaignResponse = { ["Description"] = true, ["Limits"] = true, ["Schedule"] = true, ["TreatmentName"] = true, ["LastModifiedDate"] = true, ["HoldoutPercent"] = true, ["SegmentVersion"] = true, ["SegmentId"] = true, ["Hook"] = true, ["State"] = true, ["Version"] = true, ["AdditionalTreatments"] = true, ["DefaultState"] = true, ["MessageConfiguration"] = true, ["IsPaused"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["TreatmentDescription"] = true, ["Name"] = true, nil }

function asserts.AssertCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignResponse to be of type 'table'")
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Limits"] then asserts.AssertCampaignLimits(struct["Limits"]) end
	if struct["Schedule"] then asserts.AssertSchedule(struct["Schedule"]) end
	if struct["TreatmentName"] then asserts.Assert__string(struct["TreatmentName"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["HoldoutPercent"] then asserts.Assert__integer(struct["HoldoutPercent"]) end
	if struct["SegmentVersion"] then asserts.Assert__integer(struct["SegmentVersion"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	if struct["Hook"] then asserts.AssertCampaignHook(struct["Hook"]) end
	if struct["State"] then asserts.AssertCampaignState(struct["State"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["AdditionalTreatments"] then asserts.AssertListOfTreatmentResource(struct["AdditionalTreatments"]) end
	if struct["DefaultState"] then asserts.AssertCampaignState(struct["DefaultState"]) end
	if struct["MessageConfiguration"] then asserts.AssertMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["IsPaused"] then asserts.Assert__boolean(struct["IsPaused"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["TreatmentDescription"] then asserts.Assert__string(struct["TreatmentDescription"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignResponse[k], "CampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignResponse
-- Campaign definition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [__string] A description of the campaign.
-- * Limits [CampaignLimits] The campaign limits settings.
-- * Schedule [Schedule] The campaign schedule.
-- * TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- * LastModifiedDate [__string] The date the campaign was last updated in ISO 8601 format.	
-- * HoldoutPercent [__integer] The allocated percentage of end users who will not receive messages from this campaign.
-- * SegmentVersion [__integer] The version of the segment to which the campaign sends messages.
-- * SegmentId [__string] The ID of the segment to which the campaign sends messages.
-- * Hook [CampaignHook] Campaign hook information.
-- * State [CampaignState] The campaign status.
--
--An A/B test campaign will have a status of COMPLETED only when all treatments have a status of COMPLETED.
-- * Version [__integer] The campaign version number.
-- * AdditionalTreatments [ListOfTreatmentResource] Treatments that are defined in addition to the default treatment.
-- * DefaultState [CampaignState] The status of the campaign's default treatment. Only present for A/B test campaigns.
-- * MessageConfiguration [MessageConfiguration] The message configuration settings.
-- * IsPaused [__boolean] Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
-- * CreationDate [__string] The date the campaign was created in ISO 8601 format.
-- * ApplicationId [__string] The ID of the application to which the campaign applies.
-- * Id [__string] The unique campaign ID.
-- * TreatmentDescription [__string] A custom description for the treatment.
-- * Name [__string] The custom name of the campaign.
-- @return CampaignResponse structure as a key-value pair table
function M.CampaignResponse(args)
	assert(args, "You must provide an argument table when creating CampaignResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Limits"] = args["Limits"],
		["Schedule"] = args["Schedule"],
		["TreatmentName"] = args["TreatmentName"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["HoldoutPercent"] = args["HoldoutPercent"],
		["SegmentVersion"] = args["SegmentVersion"],
		["SegmentId"] = args["SegmentId"],
		["Hook"] = args["Hook"],
		["State"] = args["State"],
		["Version"] = args["Version"],
		["AdditionalTreatments"] = args["AdditionalTreatments"],
		["DefaultState"] = args["DefaultState"],
		["MessageConfiguration"] = args["MessageConfiguration"],
		["IsPaused"] = args["IsPaused"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["TreatmentDescription"] = args["TreatmentDescription"],
		["Name"] = args["Name"],
	}
	asserts.AssertCampaignResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateExportJobRequest = { ["ExportJobRequest"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertCreateExportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateExportJobRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["ExportJobRequest"], "Expected key ExportJobRequest to exist in table")
	if struct["ExportJobRequest"] then asserts.AssertExportJobRequest(struct["ExportJobRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateExportJobRequest[k], "CreateExportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateExportJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExportJobRequest [ExportJobRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: ExportJobRequest
-- @return CreateExportJobRequest structure as a key-value pair table
function M.CreateExportJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateExportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ExportJobRequest"] = args["ExportJobRequest"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertCreateExportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApnsVoipSandboxChannelResponse = { ["APNSVoipSandboxChannelResponse"] = true, nil }

function asserts.AssertDeleteApnsVoipSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsVoipSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSVoipSandboxChannelResponse"], "Expected key APNSVoipSandboxChannelResponse to exist in table")
	if struct["APNSVoipSandboxChannelResponse"] then asserts.AssertAPNSVoipSandboxChannelResponse(struct["APNSVoipSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApnsVoipSandboxChannelResponse[k], "DeleteApnsVoipSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsVoipSandboxChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSVoipSandboxChannelResponse [APNSVoipSandboxChannelResponse] 
-- Required key: APNSVoipSandboxChannelResponse
-- @return DeleteApnsVoipSandboxChannelResponse structure as a key-value pair table
function M.DeleteApnsVoipSandboxChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteApnsVoipSandboxChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSVoipSandboxChannelResponse"] = args["APNSVoipSandboxChannelResponse"],
	}
	asserts.AssertDeleteApnsVoipSandboxChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CampaignEmailMessage = { ["Body"] = true, ["FromAddress"] = true, ["Title"] = true, ["HtmlBody"] = true, nil }

function asserts.AssertCampaignEmailMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignEmailMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["FromAddress"] then asserts.Assert__string(struct["FromAddress"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["HtmlBody"] then asserts.Assert__string(struct["HtmlBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignEmailMessage[k], "CampaignEmailMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignEmailMessage
-- The email message configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The email text body.
-- * FromAddress [__string] The email address used to send the email from. Defaults to use FromAddress specified in the Email Channel.
-- * Title [__string] The email title (Or subject).
-- * HtmlBody [__string] The email html body.
-- @return CampaignEmailMessage structure as a key-value pair table
function M.CampaignEmailMessage(args)
	assert(args, "You must provide an argument table when creating CampaignEmailMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["FromAddress"] = args["FromAddress"],
		["Title"] = args["Title"],
		["HtmlBody"] = args["HtmlBody"],
	}
	asserts.AssertCampaignEmailMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEndpointResponse = { ["MessageBody"] = true, nil }

function asserts.AssertUpdateEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointResponse to be of type 'table'")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["MessageBody"] then asserts.AssertMessageBody(struct["MessageBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEndpointResponse[k], "UpdateEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageBody [MessageBody] 
-- Required key: MessageBody
-- @return UpdateEndpointResponse structure as a key-value pair table
function M.UpdateEndpointResponse(args)
	assert(args, "You must provide an argument table when creating UpdateEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageBody"] = args["MessageBody"],
	}
	asserts.AssertUpdateEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSChannelResponse = { ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["HasTokenKey"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, ["DefaultAuthenticationMethod"] = true, nil }

function asserts.AssertAPNSChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["HasTokenKey"] then asserts.Assert__boolean(struct["HasTokenKey"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	if struct["DefaultAuthenticationMethod"] then asserts.Assert__string(struct["DefaultAuthenticationMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSChannelResponse[k], "APNSChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSChannelResponse
-- Apple Distribution Push Notification Service channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedDate [__string] The date and time when this channel was last modified.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] The user who last updated this channel.
-- * Platform [__string] The platform type. For this channel, the value is always "ADM."
-- * Version [__integer] The channel version.
-- * HasTokenKey [__boolean] Indicates whether the channel is configured with a key for APNs token authentication. Provide a token key by setting the TokenKey attribute.
-- * IsArchived [__boolean] Indicates whether or not the channel is archived.
-- * CreationDate [__string] The date and time when this channel was created.
-- * ApplicationId [__string] The ID of the application that the channel applies to.
-- * Id [__string] (Deprecated) An identifier for the channel. Retained for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- * DefaultAuthenticationMethod [__string] The default authentication method used for APNs.
-- @return APNSChannelResponse structure as a key-value pair table
function M.APNSChannelResponse(args)
	assert(args, "You must provide an argument table when creating APNSChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["HasTokenKey"] = args["HasTokenKey"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
		["DefaultAuthenticationMethod"] = args["DefaultAuthenticationMethod"],
	}
	asserts.AssertAPNSChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DefaultMessage = { ["Body"] = true, ["Substitutions"] = true, nil }

function asserts.AssertDefaultMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefaultMessage[k], "DefaultMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultMessage
-- The default message to use across all channels.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The message body of the notification, the email body or the text message.
-- * Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- @return DefaultMessage structure as a key-value pair table
function M.DefaultMessage(args)
	assert(args, "You must provide an argument table when creating DefaultMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Substitutions"] = args["Substitutions"],
	}
	asserts.AssertDefaultMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEmailChannelResponse = { ["EmailChannelResponse"] = true, nil }

function asserts.AssertGetEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEmailChannelResponse to be of type 'table'")
	assert(struct["EmailChannelResponse"], "Expected key EmailChannelResponse to exist in table")
	if struct["EmailChannelResponse"] then asserts.AssertEmailChannelResponse(struct["EmailChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEmailChannelResponse[k], "GetEmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEmailChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailChannelResponse [EmailChannelResponse] 
-- Required key: EmailChannelResponse
-- @return GetEmailChannelResponse structure as a key-value pair table
function M.GetEmailChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetEmailChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailChannelResponse"] = args["EmailChannelResponse"],
	}
	asserts.AssertGetEmailChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportJobResource = { ["RoleArn"] = true, ["SegmentVersion"] = true, ["S3UrlPrefix"] = true, ["SegmentId"] = true, nil }

function asserts.AssertExportJobResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportJobResource to be of type 'table'")
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["SegmentVersion"] then asserts.Assert__integer(struct["SegmentVersion"]) end
	if struct["S3UrlPrefix"] then asserts.Assert__string(struct["S3UrlPrefix"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportJobResource[k], "ExportJobResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportJobResource
-- Export job resource.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that endpoints will be exported to.
-- * SegmentVersion [__integer] The version of the segment to export if specified.
-- * S3UrlPrefix [__string] A URL that points to the location within an Amazon S3 bucket that will receive the export. The location is typically a folder with multiple files.
--
--The URL should follow this format: s3://bucket-name/folder-name/
--
--Amazon Pinpoint will export endpoints to this location.
-- * SegmentId [__string] The ID of the segment to export endpoints from. If not present, Amazon Pinpoint exports all of the endpoints that belong to the application.
-- @return ExportJobResource structure as a key-value pair table
function M.ExportJobResource(args)
	assert(args, "You must provide an argument table when creating ExportJobResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["SegmentVersion"] = args["SegmentVersion"],
		["S3UrlPrefix"] = args["S3UrlPrefix"],
		["SegmentId"] = args["SegmentId"],
	}
	asserts.AssertExportJobResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApnsVoipChannelResponse = { ["APNSVoipChannelResponse"] = true, nil }

function asserts.AssertGetApnsVoipChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsVoipChannelResponse to be of type 'table'")
	assert(struct["APNSVoipChannelResponse"], "Expected key APNSVoipChannelResponse to exist in table")
	if struct["APNSVoipChannelResponse"] then asserts.AssertAPNSVoipChannelResponse(struct["APNSVoipChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApnsVoipChannelResponse[k], "GetApnsVoipChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsVoipChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSVoipChannelResponse [APNSVoipChannelResponse] 
-- Required key: APNSVoipChannelResponse
-- @return GetApnsVoipChannelResponse structure as a key-value pair table
function M.GetApnsVoipChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetApnsVoipChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSVoipChannelResponse"] = args["APNSVoipChannelResponse"],
	}
	asserts.AssertGetApnsVoipChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAppRequest = { ["CreateApplicationRequest"] = true, nil }

function asserts.AssertCreateAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAppRequest to be of type 'table'")
	assert(struct["CreateApplicationRequest"], "Expected key CreateApplicationRequest to exist in table")
	if struct["CreateApplicationRequest"] then asserts.AssertCreateApplicationRequest(struct["CreateApplicationRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAppRequest[k], "CreateAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAppRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreateApplicationRequest [CreateApplicationRequest] 
-- Required key: CreateApplicationRequest
-- @return CreateAppRequest structure as a key-value pair table
function M.CreateAppRequest(args)
	assert(args, "You must provide an argument table when creating CreateAppRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreateApplicationRequest"] = args["CreateApplicationRequest"],
	}
	asserts.AssertCreateAppRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAppResponse = { ["ApplicationResponse"] = true, nil }

function asserts.AssertDeleteAppResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAppResponse to be of type 'table'")
	assert(struct["ApplicationResponse"], "Expected key ApplicationResponse to exist in table")
	if struct["ApplicationResponse"] then asserts.AssertApplicationResponse(struct["ApplicationResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAppResponse[k], "DeleteAppResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAppResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationResponse [ApplicationResponse] 
-- Required key: ApplicationResponse
-- @return DeleteAppResponse structure as a key-value pair table
function M.DeleteAppResponse(args)
	assert(args, "You must provide an argument table when creating DeleteAppResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationResponse"] = args["ApplicationResponse"],
	}
	asserts.AssertDeleteAppResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Schedule = { ["QuietTime"] = true, ["Frequency"] = true, ["IsLocalTime"] = true, ["StartTime"] = true, ["Timezone"] = true, ["EndTime"] = true, nil }

function asserts.AssertSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Schedule to be of type 'table'")
	if struct["QuietTime"] then asserts.AssertQuietTime(struct["QuietTime"]) end
	if struct["Frequency"] then asserts.AssertFrequency(struct["Frequency"]) end
	if struct["IsLocalTime"] then asserts.Assert__boolean(struct["IsLocalTime"]) end
	if struct["StartTime"] then asserts.Assert__string(struct["StartTime"]) end
	if struct["Timezone"] then asserts.Assert__string(struct["Timezone"]) end
	if struct["EndTime"] then asserts.Assert__string(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.Schedule[k], "Schedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Schedule
-- Shcedule that defines when a campaign is run.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QuietTime [QuietTime] The time during which the campaign sends no messages.
-- * Frequency [Frequency] How often the campaign delivers messages.
--
--Valid values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
-- * IsLocalTime [__boolean] Indicates whether the campaign schedule takes effect according to each user's local time.
-- * StartTime [__string] The scheduled time that the campaign begins in ISO 8601 format.
-- * Timezone [__string] The starting UTC offset for the schedule if the value for isLocalTime is true
--
--Valid values: 
--UTC
--UTC+01
--UTC+02
--UTC+03
--UTC+03:30
--UTC+04
--UTC+04:30
--UTC+05
--UTC+05:30
--UTC+05:45
--UTC+06
--UTC+06:30
--UTC+07
--UTC+08
--UTC+09
--UTC+09:30
--UTC+10
--UTC+10:30
--UTC+11
--UTC+12
--UTC+13
--UTC-02
--UTC-03
--UTC-04
--UTC-05
--UTC-06
--UTC-07
--UTC-08
--UTC-09
--UTC-10
--UTC-11
-- * EndTime [__string] The scheduled time that the campaign ends in ISO 8601 format.
-- @return Schedule structure as a key-value pair table
function M.Schedule(args)
	assert(args, "You must provide an argument table when creating Schedule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QuietTime"] = args["QuietTime"],
		["Frequency"] = args["Frequency"],
		["IsLocalTime"] = args["IsLocalTime"],
		["StartTime"] = args["StartTime"],
		["Timezone"] = args["Timezone"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertSchedule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAdmChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteAdmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAdmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAdmChannelRequest[k], "DeleteAdmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAdmChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteAdmChannelRequest structure as a key-value pair table
function M.DeleteAdmChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAdmChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteAdmChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEmailChannelResponse = { ["EmailChannelResponse"] = true, nil }

function asserts.AssertDeleteEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEmailChannelResponse to be of type 'table'")
	assert(struct["EmailChannelResponse"], "Expected key EmailChannelResponse to exist in table")
	if struct["EmailChannelResponse"] then asserts.AssertEmailChannelResponse(struct["EmailChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEmailChannelResponse[k], "DeleteEmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEmailChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailChannelResponse [EmailChannelResponse] 
-- Required key: EmailChannelResponse
-- @return DeleteEmailChannelResponse structure as a key-value pair table
function M.DeleteEmailChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteEmailChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailChannelResponse"] = args["EmailChannelResponse"],
	}
	asserts.AssertDeleteEmailChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventsRequest = { ["ApplicationId"] = true, ["EventsRequest"] = true, nil }

function asserts.AssertPutEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EventsRequest"], "Expected key EventsRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["EventsRequest"] then asserts.AssertEventsRequest(struct["EventsRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventsRequest[k], "PutEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * EventsRequest [EventsRequest] 
-- Required key: ApplicationId
-- Required key: EventsRequest
-- @return PutEventsRequest structure as a key-value pair table
function M.PutEventsRequest(args)
	assert(args, "You must provide an argument table when creating PutEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["EventsRequest"] = args["EventsRequest"],
	}
	asserts.AssertPutEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBaiduChannelResponse = { ["BaiduChannelResponse"] = true, nil }

function asserts.AssertGetBaiduChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBaiduChannelResponse to be of type 'table'")
	assert(struct["BaiduChannelResponse"], "Expected key BaiduChannelResponse to exist in table")
	if struct["BaiduChannelResponse"] then asserts.AssertBaiduChannelResponse(struct["BaiduChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBaiduChannelResponse[k], "GetBaiduChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBaiduChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaiduChannelResponse [BaiduChannelResponse] 
-- Required key: BaiduChannelResponse
-- @return GetBaiduChannelResponse structure as a key-value pair table
function M.GetBaiduChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetBaiduChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BaiduChannelResponse"] = args["BaiduChannelResponse"],
	}
	asserts.AssertGetBaiduChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Message = { ["Body"] = true, ["MediaUrl"] = true, ["Url"] = true, ["ImageUrl"] = true, ["ImageSmallIconUrl"] = true, ["Title"] = true, ["TimeToLive"] = true, ["RawContent"] = true, ["Action"] = true, ["SilentPush"] = true, ["JsonBody"] = true, ["ImageIconUrl"] = true, nil }

function asserts.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["MediaUrl"] then asserts.Assert__string(struct["MediaUrl"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ImageUrl"] then asserts.Assert__string(struct["ImageUrl"]) end
	if struct["ImageSmallIconUrl"] then asserts.Assert__string(struct["ImageSmallIconUrl"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["TimeToLive"] then asserts.Assert__integer(struct["TimeToLive"]) end
	if struct["RawContent"] then asserts.Assert__string(struct["RawContent"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then asserts.Assert__boolean(struct["SilentPush"]) end
	if struct["JsonBody"] then asserts.Assert__string(struct["JsonBody"]) end
	if struct["ImageIconUrl"] then asserts.Assert__string(struct["ImageIconUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.Message[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- Message to send
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The message body. Can include up to 140 characters.
-- * MediaUrl [__string] The URL that points to the media resource, for example a .mp4 or .gif file.
-- * Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- * ImageUrl [__string] The URL that points to an image used in the push notification.
-- * ImageSmallIconUrl [__string] The URL that points to the small icon image for the push notification icon, for example, the app icon.
-- * Title [__string] The message title that displays above the message on the user's device.
-- * TimeToLive [__integer] This parameter specifies how long (in seconds) the message should be kept if the service is unable to deliver the notification the first time. If the value is 0, it treats the notification as if it expires immediately and does not store the notification or attempt to redeliver it. This value is converted to the expiration field when sent to the service. It only applies to APNs and GCM
-- * RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- * Action [Action] The action that occurs if the user taps a push notification delivered by the campaign:
--OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action.
--
--DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app.
--
--URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify.
-- * SilentPush [__boolean] Indicates if the message should display on the users device.
--
--Silent pushes can be used for Remote Configuration and Phone Home use cases. 
-- * JsonBody [__string] The JSON payload used for a silent push.
-- * ImageIconUrl [__string] The URL that points to the icon image for the push notification icon, for example, the app icon.
-- @return Message structure as a key-value pair table
function M.Message(args)
	assert(args, "You must provide an argument table when creating Message")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["MediaUrl"] = args["MediaUrl"],
		["Url"] = args["Url"],
		["ImageUrl"] = args["ImageUrl"],
		["ImageSmallIconUrl"] = args["ImageSmallIconUrl"],
		["Title"] = args["Title"],
		["TimeToLive"] = args["TimeToLive"],
		["RawContent"] = args["RawContent"],
		["Action"] = args["Action"],
		["SilentPush"] = args["SilentPush"],
		["JsonBody"] = args["JsonBody"],
		["ImageIconUrl"] = args["ImageIconUrl"],
	}
	asserts.AssertMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAppRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAppRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAppRequest[k], "GetAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAppRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetAppRequest structure as a key-value pair table
function M.GetAppRequest(args)
	assert(args, "You must provide an argument table when creating GetAppRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetAppRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PhoneNumberValidateRequest = { ["NumberValidateRequest"] = true, nil }

function asserts.AssertPhoneNumberValidateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PhoneNumberValidateRequest to be of type 'table'")
	assert(struct["NumberValidateRequest"], "Expected key NumberValidateRequest to exist in table")
	if struct["NumberValidateRequest"] then asserts.AssertNumberValidateRequest(struct["NumberValidateRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.PhoneNumberValidateRequest[k], "PhoneNumberValidateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PhoneNumberValidateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberValidateRequest [NumberValidateRequest] 
-- Required key: NumberValidateRequest
-- @return PhoneNumberValidateRequest structure as a key-value pair table
function M.PhoneNumberValidateRequest(args)
	assert(args, "You must provide an argument table when creating PhoneNumberValidateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberValidateRequest"] = args["NumberValidateRequest"],
	}
	asserts.AssertPhoneNumberValidateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBaiduChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteBaiduChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBaiduChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBaiduChannelRequest[k], "DeleteBaiduChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBaiduChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteBaiduChannelRequest structure as a key-value pair table
function M.DeleteBaiduChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBaiduChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteBaiduChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentGroupList = { ["Include"] = true, ["Groups"] = true, nil }

function asserts.AssertSegmentGroupList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentGroupList to be of type 'table'")
	if struct["Include"] then asserts.AssertInclude(struct["Include"]) end
	if struct["Groups"] then asserts.AssertListOfSegmentGroup(struct["Groups"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentGroupList[k], "SegmentGroupList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentGroupList
-- Segment group definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Include [Include] Specify how to handle multiple segment groups. For example, if the segment includes three segment groups, should the resulting segment include endpoints that are matched by all, any, or none of the segment groups you created. Acceptable values: ALL, ANY, or NONE.
-- * Groups [ListOfSegmentGroup] A set of segment criteria to evaluate.
-- @return SegmentGroupList structure as a key-value pair table
function M.SegmentGroupList(args)
	assert(args, "You must provide an argument table when creating SegmentGroupList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Include"] = args["Include"],
		["Groups"] = args["Groups"],
	}
	asserts.AssertSegmentGroupList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MessageResponse = { ["ApplicationId"] = true, ["RequestId"] = true, ["EndpointResult"] = true, ["Result"] = true, nil }

function asserts.AssertMessageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageResponse to be of type 'table'")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["EndpointResult"] then asserts.AssertMapOfEndpointMessageResult(struct["EndpointResult"]) end
	if struct["Result"] then asserts.AssertMapOfMessageResult(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageResponse[k], "MessageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageResponse
-- Send message response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] Application id of the message.
-- * RequestId [__string] Original request Id for which this message was delivered.
-- * EndpointResult [MapOfEndpointMessageResult] A map containing a multi part response for each address, with the endpointId as the key and the result as the value.
-- * Result [MapOfMessageResult] A map containing a multi part response for each address, with the address as the key(Email address, phone number or push token) and the result as the value.
-- @return MessageResponse structure as a key-value pair table
function M.MessageResponse(args)
	assert(args, "You must provide an argument table when creating MessageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["RequestId"] = args["RequestId"],
		["EndpointResult"] = args["EndpointResult"],
		["Result"] = args["Result"],
	}
	asserts.AssertMessageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSChannelRequest = { ["Certificate"] = true, ["Enabled"] = true, ["PrivateKey"] = true, ["TokenKeyId"] = true, ["TeamId"] = true, ["BundleId"] = true, ["TokenKey"] = true, ["DefaultAuthenticationMethod"] = true, nil }

function asserts.AssertAPNSChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSChannelRequest to be of type 'table'")
	if struct["Certificate"] then asserts.Assert__string(struct["Certificate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["PrivateKey"] then asserts.Assert__string(struct["PrivateKey"]) end
	if struct["TokenKeyId"] then asserts.Assert__string(struct["TokenKeyId"]) end
	if struct["TeamId"] then asserts.Assert__string(struct["TeamId"]) end
	if struct["BundleId"] then asserts.Assert__string(struct["BundleId"]) end
	if struct["TokenKey"] then asserts.Assert__string(struct["TokenKey"]) end
	if struct["DefaultAuthenticationMethod"] then asserts.Assert__string(struct["DefaultAuthenticationMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSChannelRequest[k], "APNSChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSChannelRequest
-- Apple Push Notification Service channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [__string] The distribution certificate from Apple.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * PrivateKey [__string] The certificate private key.
-- * TokenKeyId [__string] The token key used for APNs Tokens.
-- * TeamId [__string] The team id used for APNs Tokens.
-- * BundleId [__string] The bundle id used for APNs Tokens.
-- * TokenKey [__string] The token key used for APNs Tokens.
-- * DefaultAuthenticationMethod [__string] The default authentication method used for APNs.
-- @return APNSChannelRequest structure as a key-value pair table
function M.APNSChannelRequest(args)
	assert(args, "You must provide an argument table when creating APNSChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
		["Enabled"] = args["Enabled"],
		["PrivateKey"] = args["PrivateKey"],
		["TokenKeyId"] = args["TokenKeyId"],
		["TeamId"] = args["TeamId"],
		["BundleId"] = args["BundleId"],
		["TokenKey"] = args["TokenKey"],
		["DefaultAuthenticationMethod"] = args["DefaultAuthenticationMethod"],
	}
	asserts.AssertAPNSChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChannelResponse = { ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Version"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, nil }

function asserts.AssertChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChannelResponse[k], "ChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChannelResponse
-- Base definition for channel response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedDate [__string] Last date this was updated
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] Who made the last change
-- * Version [__integer] Version of channel
-- * IsArchived [__boolean] Is this channel archived
-- * CreationDate [__string] When was this segment created
-- * ApplicationId [__string] Application id
-- * Id [__string] Channel ID. Not used, only for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- @return ChannelResponse structure as a key-value pair table
function M.ChannelResponse(args)
	assert(args, "You must provide an argument table when creating ChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Version"] = args["Version"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
	}
	asserts.AssertChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApnsVoipChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteApnsVoipChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsVoipChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApnsVoipChannelRequest[k], "DeleteApnsVoipChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsVoipChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteApnsVoipChannelRequest structure as a key-value pair table
function M.DeleteApnsVoipChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteApnsVoipChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteApnsVoipChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MessageResult = { ["DeliveryStatus"] = true, ["UpdatedToken"] = true, ["StatusCode"] = true, ["StatusMessage"] = true, ["MessageId"] = true, nil }

function asserts.AssertMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageResult to be of type 'table'")
	if struct["DeliveryStatus"] then asserts.AssertDeliveryStatus(struct["DeliveryStatus"]) end
	if struct["UpdatedToken"] then asserts.Assert__string(struct["UpdatedToken"]) end
	if struct["StatusCode"] then asserts.Assert__integer(struct["StatusCode"]) end
	if struct["StatusMessage"] then asserts.Assert__string(struct["StatusMessage"]) end
	if struct["MessageId"] then asserts.Assert__string(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageResult[k], "MessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageResult
-- The result from sending a message to an address.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeliveryStatus [DeliveryStatus] The delivery status of the message. Possible values:
--
--SUCCESS - The message was successfully delivered to the endpoint.
--
--TRANSIENT_FAILURE - A temporary error occurred. Amazon Pinpoint will attempt to deliver the message again later.
--
--FAILURE_PERMANENT - An error occurred when delivering the message to the endpoint. Amazon Pinpoint won't attempt to send the message again.
--
--TIMEOUT - The message couldn't be sent within the timeout period.
--
--QUIET_TIME - The local time for the endpoint was within the Quiet Hours for the campaign.
--
--DAILY_CAP - The endpoint has received the maximum number of messages it can receive within a 24-hour period.
--
--HOLDOUT - The endpoint was in a hold out treatment for the campaign.
--
--THROTTLED - Amazon Pinpoint throttled sending to this endpoint.
--
--EXPIRED - The endpoint address is expired.
--
--CAMPAIGN_CAP - The endpoint received the maximum number of messages allowed by the campaign.
--
--SERVICE_FAILURE - A service-level failure prevented Amazon Pinpoint from delivering the message.
--
--UNKNOWN - An unknown error occurred.
-- * UpdatedToken [__string] If token was updated as part of delivery. (This is GCM Specific)
-- * StatusCode [__integer] Downstream service status code.
-- * StatusMessage [__string] Status message for message delivery.
-- * MessageId [__string] Unique message identifier associated with the message that was sent.
-- @return MessageResult structure as a key-value pair table
function M.MessageResult(args)
	assert(args, "You must provide an argument table when creating MessageResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeliveryStatus"] = args["DeliveryStatus"],
		["UpdatedToken"] = args["UpdatedToken"],
		["StatusCode"] = args["StatusCode"],
		["StatusMessage"] = args["StatusMessage"],
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertMessageResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WriteCampaignRequest = { ["Description"] = true, ["Limits"] = true, ["Schedule"] = true, ["TreatmentName"] = true, ["HoldoutPercent"] = true, ["SegmentVersion"] = true, ["SegmentId"] = true, ["Hook"] = true, ["AdditionalTreatments"] = true, ["IsPaused"] = true, ["MessageConfiguration"] = true, ["TreatmentDescription"] = true, ["Name"] = true, nil }

function asserts.AssertWriteCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteCampaignRequest to be of type 'table'")
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Limits"] then asserts.AssertCampaignLimits(struct["Limits"]) end
	if struct["Schedule"] then asserts.AssertSchedule(struct["Schedule"]) end
	if struct["TreatmentName"] then asserts.Assert__string(struct["TreatmentName"]) end
	if struct["HoldoutPercent"] then asserts.Assert__integer(struct["HoldoutPercent"]) end
	if struct["SegmentVersion"] then asserts.Assert__integer(struct["SegmentVersion"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	if struct["Hook"] then asserts.AssertCampaignHook(struct["Hook"]) end
	if struct["AdditionalTreatments"] then asserts.AssertListOfWriteTreatmentResource(struct["AdditionalTreatments"]) end
	if struct["IsPaused"] then asserts.Assert__boolean(struct["IsPaused"]) end
	if struct["MessageConfiguration"] then asserts.AssertMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["TreatmentDescription"] then asserts.Assert__string(struct["TreatmentDescription"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteCampaignRequest[k], "WriteCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteCampaignRequest
-- Used to create a campaign.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [__string] A description of the campaign.
-- * Limits [CampaignLimits] The campaign limits settings.
-- * Schedule [Schedule] The campaign schedule.
-- * TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- * HoldoutPercent [__integer] The allocated percentage of end users who will not receive messages from this campaign.
-- * SegmentVersion [__integer] The version of the segment to which the campaign sends messages.
-- * SegmentId [__string] The ID of the segment to which the campaign sends messages.
-- * Hook [CampaignHook] Campaign hook information.
-- * AdditionalTreatments [ListOfWriteTreatmentResource] Treatments that are defined in addition to the default treatment.
-- * IsPaused [__boolean] Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
-- * MessageConfiguration [MessageConfiguration] The message configuration settings.
-- * TreatmentDescription [__string] A custom description for the treatment.
-- * Name [__string] The custom name of the campaign.
-- @return WriteCampaignRequest structure as a key-value pair table
function M.WriteCampaignRequest(args)
	assert(args, "You must provide an argument table when creating WriteCampaignRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Limits"] = args["Limits"],
		["Schedule"] = args["Schedule"],
		["TreatmentName"] = args["TreatmentName"],
		["HoldoutPercent"] = args["HoldoutPercent"],
		["SegmentVersion"] = args["SegmentVersion"],
		["SegmentId"] = args["SegmentId"],
		["Hook"] = args["Hook"],
		["AdditionalTreatments"] = args["AdditionalTreatments"],
		["IsPaused"] = args["IsPaused"],
		["MessageConfiguration"] = args["MessageConfiguration"],
		["TreatmentDescription"] = args["TreatmentDescription"],
		["Name"] = args["Name"],
	}
	asserts.AssertWriteCampaignRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendUsersMessageResponse = { ["ApplicationId"] = true, ["RequestId"] = true, ["Result"] = true, nil }

function asserts.AssertSendUsersMessageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendUsersMessageResponse to be of type 'table'")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["Result"] then asserts.AssertMapOfMapOfEndpointMessageResult(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendUsersMessageResponse[k], "SendUsersMessageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendUsersMessageResponse
-- User send message response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of the Amazon Pinpoint project used to send the message.
-- * RequestId [__string] The unique ID assigned to the users-messages request.
-- * Result [MapOfMapOfEndpointMessageResult] An object that shows the endpoints that were messaged for each user. The object provides a list of user IDs. For each user ID, it provides the endpoint IDs that were messaged. For each endpoint ID, it provides an EndpointMessageResult object.
-- @return SendUsersMessageResponse structure as a key-value pair table
function M.SendUsersMessageResponse(args)
	assert(args, "You must provide an argument table when creating SendUsersMessageResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["RequestId"] = args["RequestId"],
		["Result"] = args["Result"],
	}
	asserts.AssertSendUsersMessageResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignVersionsRequest = { ["Token"] = true, ["ApplicationId"] = true, ["PageSize"] = true, ["CampaignId"] = true, nil }

function asserts.AssertGetCampaignVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignVersionsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	if struct["CampaignId"] then asserts.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignVersionsRequest[k], "GetCampaignVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- * CampaignId [__string] The unique ID of the campaign.
-- Required key: ApplicationId
-- Required key: CampaignId
-- @return GetCampaignVersionsRequest structure as a key-value pair table
function M.GetCampaignVersionsRequest(args)
	assert(args, "You must provide an argument table when creating GetCampaignVersionsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{campaign-id}"] = args["CampaignId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["PageSize"] = args["PageSize"],
		["CampaignId"] = args["CampaignId"],
	}
	asserts.AssertGetCampaignVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventsResponse = { ["Results"] = true, nil }

function asserts.AssertEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventsResponse to be of type 'table'")
	if struct["Results"] then asserts.AssertMapOfItemResponse(struct["Results"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventsResponse[k], "EventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventsResponse
-- The results from processing a put events request
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Results [MapOfItemResponse] A map containing a multi part response for each endpoint, with the endpoint id as the key and item response as the value
-- @return EventsResponse structure as a key-value pair table
function M.EventsResponse(args)
	assert(args, "You must provide an argument table when creating EventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Results"] = args["Results"],
	}
	asserts.AssertEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAppsRequest = { ["Token"] = true, ["PageSize"] = true, nil }

function asserts.AssertGetAppsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAppsRequest to be of type 'table'")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAppsRequest[k], "GetAppsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAppsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- @return GetAppsRequest structure as a key-value pair table
function M.GetAppsRequest(args)
	assert(args, "You must provide an argument table when creating GetAppsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertGetAppsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSegmentResponse = { ["SegmentResponse"] = true, nil }

function asserts.AssertDeleteSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSegmentResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then asserts.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSegmentResponse[k], "DeleteSegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSegmentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentResponse [SegmentResponse] 
-- Required key: SegmentResponse
-- @return DeleteSegmentResponse structure as a key-value pair table
function M.DeleteSegmentResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSegmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentResponse"] = args["SegmentResponse"],
	}
	asserts.AssertDeleteSegmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentVersionsResponse = { ["SegmentsResponse"] = true, nil }

function asserts.AssertGetSegmentVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentVersionsResponse to be of type 'table'")
	assert(struct["SegmentsResponse"], "Expected key SegmentsResponse to exist in table")
	if struct["SegmentsResponse"] then asserts.AssertSegmentsResponse(struct["SegmentsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentVersionsResponse[k], "GetSegmentVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentVersionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentsResponse [SegmentsResponse] 
-- Required key: SegmentsResponse
-- @return GetSegmentVersionsResponse structure as a key-value pair table
function M.GetSegmentVersionsResponse(args)
	assert(args, "You must provide an argument table when creating GetSegmentVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentsResponse"] = args["SegmentsResponse"],
	}
	asserts.AssertGetSegmentVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAttributesRequest = { ["Blacklist"] = true, nil }

function asserts.AssertUpdateAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAttributesRequest to be of type 'table'")
	if struct["Blacklist"] then asserts.AssertListOf__string(struct["Blacklist"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAttributesRequest[k], "UpdateAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAttributesRequest
-- Update attributes request
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Blacklist [ListOf__string] The GLOB wildcard for removing the attributes in the application
-- @return UpdateAttributesRequest structure as a key-value pair table
function M.UpdateAttributesRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Blacklist"] = args["Blacklist"],
	}
	asserts.AssertUpdateAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCampaignResponse = { ["CampaignResponse"] = true, nil }

function asserts.AssertDeleteCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCampaignResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then asserts.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCampaignResponse[k], "DeleteCampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCampaignResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CampaignResponse [CampaignResponse] 
-- Required key: CampaignResponse
-- @return DeleteCampaignResponse structure as a key-value pair table
function M.DeleteCampaignResponse(args)
	assert(args, "You must provide an argument table when creating DeleteCampaignResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CampaignResponse"] = args["CampaignResponse"],
	}
	asserts.AssertDeleteCampaignResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSVoipChannelRequest = { ["Certificate"] = true, ["Enabled"] = true, ["PrivateKey"] = true, ["TokenKeyId"] = true, ["TeamId"] = true, ["BundleId"] = true, ["TokenKey"] = true, ["DefaultAuthenticationMethod"] = true, nil }

function asserts.AssertAPNSVoipChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSVoipChannelRequest to be of type 'table'")
	if struct["Certificate"] then asserts.Assert__string(struct["Certificate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["PrivateKey"] then asserts.Assert__string(struct["PrivateKey"]) end
	if struct["TokenKeyId"] then asserts.Assert__string(struct["TokenKeyId"]) end
	if struct["TeamId"] then asserts.Assert__string(struct["TeamId"]) end
	if struct["BundleId"] then asserts.Assert__string(struct["BundleId"]) end
	if struct["TokenKey"] then asserts.Assert__string(struct["TokenKey"]) end
	if struct["DefaultAuthenticationMethod"] then asserts.Assert__string(struct["DefaultAuthenticationMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSVoipChannelRequest[k], "APNSVoipChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSVoipChannelRequest
-- Apple VoIP Push Notification Service channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Certificate [__string] The distribution certificate from Apple.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * PrivateKey [__string] The certificate private key.
-- * TokenKeyId [__string] The token key used for APNs Tokens.
-- * TeamId [__string] The team id used for APNs Tokens.
-- * BundleId [__string] The bundle id used for APNs Tokens.
-- * TokenKey [__string] The token key used for APNs Tokens.
-- * DefaultAuthenticationMethod [__string] The default authentication method used for APNs.
-- @return APNSVoipChannelRequest structure as a key-value pair table
function M.APNSVoipChannelRequest(args)
	assert(args, "You must provide an argument table when creating APNSVoipChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Certificate"] = args["Certificate"],
		["Enabled"] = args["Enabled"],
		["PrivateKey"] = args["PrivateKey"],
		["TokenKeyId"] = args["TokenKeyId"],
		["TeamId"] = args["TeamId"],
		["BundleId"] = args["BundleId"],
		["TokenKey"] = args["TokenKey"],
		["DefaultAuthenticationMethod"] = args["DefaultAuthenticationMethod"],
	}
	asserts.AssertAPNSVoipChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendMessagesRequest = { ["ApplicationId"] = true, ["MessageRequest"] = true, nil }

function asserts.AssertSendMessagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessagesRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["MessageRequest"], "Expected key MessageRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["MessageRequest"] then asserts.AssertMessageRequest(struct["MessageRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendMessagesRequest[k], "SendMessagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessagesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * MessageRequest [MessageRequest] 
-- Required key: ApplicationId
-- Required key: MessageRequest
-- @return SendMessagesRequest structure as a key-value pair table
function M.SendMessagesRequest(args)
	assert(args, "You must provide an argument table when creating SendMessagesRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["MessageRequest"] = args["MessageRequest"],
	}
	asserts.AssertSendMessagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentDimensions = { ["Demographic"] = true, ["Metrics"] = true, ["UserAttributes"] = true, ["Location"] = true, ["Behavior"] = true, ["Attributes"] = true, nil }

function asserts.AssertSegmentDimensions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentDimensions to be of type 'table'")
	if struct["Demographic"] then asserts.AssertSegmentDemographics(struct["Demographic"]) end
	if struct["Metrics"] then asserts.AssertMapOfMetricDimension(struct["Metrics"]) end
	if struct["UserAttributes"] then asserts.AssertMapOfAttributeDimension(struct["UserAttributes"]) end
	if struct["Location"] then asserts.AssertSegmentLocation(struct["Location"]) end
	if struct["Behavior"] then asserts.AssertSegmentBehaviors(struct["Behavior"]) end
	if struct["Attributes"] then asserts.AssertMapOfAttributeDimension(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentDimensions[k], "SegmentDimensions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentDimensions
-- Segment dimensions
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Demographic [SegmentDemographics] The segment demographics attributes.
-- * Metrics [MapOfMetricDimension] Custom segment metrics.
-- * UserAttributes [MapOfAttributeDimension] Custom segment user attributes.
-- * Location [SegmentLocation] The segment location attributes.
-- * Behavior [SegmentBehaviors] The segment behaviors attributes.
-- * Attributes [MapOfAttributeDimension] Custom segment attributes.
-- @return SegmentDimensions structure as a key-value pair table
function M.SegmentDimensions(args)
	assert(args, "You must provide an argument table when creating SegmentDimensions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Demographic"] = args["Demographic"],
		["Metrics"] = args["Metrics"],
		["UserAttributes"] = args["UserAttributes"],
		["Location"] = args["Location"],
		["Behavior"] = args["Behavior"],
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertSegmentDimensions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WriteSegmentRequest = { ["Dimensions"] = true, ["SegmentGroups"] = true, ["Name"] = true, nil }

function asserts.AssertWriteSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteSegmentRequest to be of type 'table'")
	if struct["Dimensions"] then asserts.AssertSegmentDimensions(struct["Dimensions"]) end
	if struct["SegmentGroups"] then asserts.AssertSegmentGroupList(struct["SegmentGroups"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteSegmentRequest[k], "WriteSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteSegmentRequest
-- Segment definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Dimensions [SegmentDimensions] The segment dimensions attributes.
-- * SegmentGroups [SegmentGroupList] A segment group, which consists of zero or more source segments, plus dimensions that are applied to those source segments. Your request can only include one segment group. Your request can include either a SegmentGroups object or a Dimensions object, but not both.
-- * Name [__string] The name of segment
-- @return WriteSegmentRequest structure as a key-value pair table
function M.WriteSegmentRequest(args)
	assert(args, "You must provide an argument table when creating WriteSegmentRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Dimensions"] = args["Dimensions"],
		["SegmentGroups"] = args["SegmentGroups"],
		["Name"] = args["Name"],
	}
	asserts.AssertWriteSegmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAdmChannelResponse = { ["ADMChannelResponse"] = true, nil }

function asserts.AssertGetAdmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAdmChannelResponse to be of type 'table'")
	assert(struct["ADMChannelResponse"], "Expected key ADMChannelResponse to exist in table")
	if struct["ADMChannelResponse"] then asserts.AssertADMChannelResponse(struct["ADMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAdmChannelResponse[k], "GetAdmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAdmChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ADMChannelResponse [ADMChannelResponse] 
-- Required key: ADMChannelResponse
-- @return GetAdmChannelResponse structure as a key-value pair table
function M.GetAdmChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetAdmChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ADMChannelResponse"] = args["ADMChannelResponse"],
	}
	asserts.AssertGetAdmChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCampaignRequest = { ["ApplicationId"] = true, ["CampaignId"] = true, nil }

function asserts.AssertDeleteCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCampaignRequest to be of type 'table'")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["CampaignId"] then asserts.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCampaignRequest[k], "DeleteCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCampaignRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * CampaignId [__string] The unique ID of the campaign.
-- Required key: CampaignId
-- Required key: ApplicationId
-- @return DeleteCampaignRequest structure as a key-value pair table
function M.DeleteCampaignRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCampaignRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{campaign-id}"] = args["CampaignId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["CampaignId"] = args["CampaignId"],
	}
	asserts.AssertDeleteCampaignRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEventStreamResponse = { ["EventStream"] = true, nil }

function asserts.AssertGetEventStreamResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventStreamResponse to be of type 'table'")
	assert(struct["EventStream"], "Expected key EventStream to exist in table")
	if struct["EventStream"] then asserts.AssertEventStream(struct["EventStream"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEventStreamResponse[k], "GetEventStreamResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventStreamResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventStream [EventStream] 
-- Required key: EventStream
-- @return GetEventStreamResponse structure as a key-value pair table
function M.GetEventStreamResponse(args)
	assert(args, "You must provide an argument table when creating GetEventStreamResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventStream"] = args["EventStream"],
	}
	asserts.AssertGetEventStreamResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BaiduMessage = { ["Body"] = true, ["Sound"] = true, ["Title"] = true, ["Url"] = true, ["ImageUrl"] = true, ["RawContent"] = true, ["Substitutions"] = true, ["SmallImageIconUrl"] = true, ["TimeToLive"] = true, ["IconReference"] = true, ["Action"] = true, ["SilentPush"] = true, ["Data"] = true, ["ImageIconUrl"] = true, nil }

function asserts.AssertBaiduMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BaiduMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Sound"] then asserts.Assert__string(struct["Sound"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ImageUrl"] then asserts.Assert__string(struct["ImageUrl"]) end
	if struct["RawContent"] then asserts.Assert__string(struct["RawContent"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["SmallImageIconUrl"] then asserts.Assert__string(struct["SmallImageIconUrl"]) end
	if struct["TimeToLive"] then asserts.Assert__integer(struct["TimeToLive"]) end
	if struct["IconReference"] then asserts.Assert__string(struct["IconReference"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then asserts.Assert__boolean(struct["SilentPush"]) end
	if struct["Data"] then asserts.AssertMapOf__string(struct["Data"]) end
	if struct["ImageIconUrl"] then asserts.Assert__string(struct["ImageIconUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.BaiduMessage[k], "BaiduMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BaiduMessage
-- Baidu Message.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The message body of the notification.
-- * Sound [__string] Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
-- * Title [__string] The message title that displays above the message on the user's device.
-- * Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- * ImageUrl [__string] The URL that points to an image used in the push notification.
-- * RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- * Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- * SmallImageIconUrl [__string] The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
-- * TimeToLive [__integer] This parameter specifies how long (in seconds) the message should be kept in Baidu storage if the device is offline. The and the default value and the maximum time to live supported is 7 days (604800 seconds)
-- * IconReference [__string] The icon image name of the asset saved in your application.
-- * Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- * SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- * Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- * ImageIconUrl [__string] The URL that points to an image used as the large icon to the notification content view.
-- @return BaiduMessage structure as a key-value pair table
function M.BaiduMessage(args)
	assert(args, "You must provide an argument table when creating BaiduMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Sound"] = args["Sound"],
		["Title"] = args["Title"],
		["Url"] = args["Url"],
		["ImageUrl"] = args["ImageUrl"],
		["RawContent"] = args["RawContent"],
		["Substitutions"] = args["Substitutions"],
		["SmallImageIconUrl"] = args["SmallImageIconUrl"],
		["TimeToLive"] = args["TimeToLive"],
		["IconReference"] = args["IconReference"],
		["Action"] = args["Action"],
		["SilentPush"] = args["SilentPush"],
		["Data"] = args["Data"],
		["ImageIconUrl"] = args["ImageIconUrl"],
	}
	asserts.AssertBaiduMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetExportJobsRequest = { ["Token"] = true, ["ApplicationId"] = true, ["PageSize"] = true, nil }

function asserts.AssertGetExportJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExportJobsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExportJobsRequest[k], "GetExportJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExportJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- Required key: ApplicationId
-- @return GetExportJobsRequest structure as a key-value pair table
function M.GetExportJobsRequest(args)
	assert(args, "You must provide an argument table when creating GetExportJobsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertGetExportJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QuietTime = { ["Start"] = true, ["End"] = true, nil }

function asserts.AssertQuietTime(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QuietTime to be of type 'table'")
	if struct["Start"] then asserts.Assert__string(struct["Start"]) end
	if struct["End"] then asserts.Assert__string(struct["End"]) end
	for k,_ in pairs(struct) do
		assert(keys.QuietTime[k], "QuietTime contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QuietTime
-- Quiet Time
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Start [__string] The default start time for quiet time in ISO 8601 format.
-- * End [__string] The default end time for quiet time in ISO 8601 format.
-- @return QuietTime structure as a key-value pair table
function M.QuietTime(args)
	assert(args, "You must provide an argument table when creating QuietTime")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Start"] = args["Start"],
		["End"] = args["End"],
	}
	asserts.AssertQuietTime(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportJobsResponse = { ["Item"] = true, ["NextToken"] = true, nil }

function asserts.AssertImportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportJobsResponse to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfImportJobResponse(struct["Item"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportJobsResponse[k], "ImportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportJobsResponse
-- Import job list.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [ListOfImportJobResponse] A list of import jobs for the application.
-- * NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
-- @return ImportJobsResponse structure as a key-value pair table
function M.ImportJobsResponse(args)
	assert(args, "You must provide an argument table when creating ImportJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertImportJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignRequest = { ["ApplicationId"] = true, ["CampaignId"] = true, nil }

function asserts.AssertGetCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignRequest to be of type 'table'")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["CampaignId"] then asserts.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignRequest[k], "GetCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * CampaignId [__string] The unique ID of the campaign.
-- Required key: CampaignId
-- Required key: ApplicationId
-- @return GetCampaignRequest structure as a key-value pair table
function M.GetCampaignRequest(args)
	assert(args, "You must provide an argument table when creating GetCampaignRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{campaign-id}"] = args["CampaignId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["CampaignId"] = args["CampaignId"],
	}
	asserts.AssertGetCampaignRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignsResponse = { ["CampaignsResponse"] = true, nil }

function asserts.AssertGetCampaignsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignsResponse to be of type 'table'")
	assert(struct["CampaignsResponse"], "Expected key CampaignsResponse to exist in table")
	if struct["CampaignsResponse"] then asserts.AssertCampaignsResponse(struct["CampaignsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignsResponse[k], "GetCampaignsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CampaignsResponse [CampaignsResponse] 
-- Required key: CampaignsResponse
-- @return GetCampaignsResponse structure as a key-value pair table
function M.GetCampaignsResponse(args)
	assert(args, "You must provide an argument table when creating GetCampaignsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CampaignsResponse"] = args["CampaignsResponse"],
	}
	asserts.AssertGetCampaignsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApnsVoipSandboxChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteApnsVoipSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsVoipSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApnsVoipSandboxChannelRequest[k], "DeleteApnsVoipSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsVoipSandboxChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteApnsVoipSandboxChannelRequest structure as a key-value pair table
function M.DeleteApnsVoipSandboxChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteApnsVoipSandboxChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteApnsVoipSandboxChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApplicationSettingsRequest = { ["WriteApplicationSettingsRequest"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertUpdateApplicationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationSettingsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteApplicationSettingsRequest"], "Expected key WriteApplicationSettingsRequest to exist in table")
	if struct["WriteApplicationSettingsRequest"] then asserts.AssertWriteApplicationSettingsRequest(struct["WriteApplicationSettingsRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApplicationSettingsRequest[k], "UpdateApplicationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WriteApplicationSettingsRequest [WriteApplicationSettingsRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: WriteApplicationSettingsRequest
-- @return UpdateApplicationSettingsRequest structure as a key-value pair table
function M.UpdateApplicationSettingsRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApplicationSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["WriteApplicationSettingsRequest"] = args["WriteApplicationSettingsRequest"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertUpdateApplicationSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApnsSandboxChannelRequest = { ["ApplicationId"] = true, ["APNSSandboxChannelRequest"] = true, nil }

function asserts.AssertUpdateApnsSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["APNSSandboxChannelRequest"], "Expected key APNSSandboxChannelRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["APNSSandboxChannelRequest"] then asserts.AssertAPNSSandboxChannelRequest(struct["APNSSandboxChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApnsSandboxChannelRequest[k], "UpdateApnsSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsSandboxChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * APNSSandboxChannelRequest [APNSSandboxChannelRequest] 
-- Required key: ApplicationId
-- Required key: APNSSandboxChannelRequest
-- @return UpdateApnsSandboxChannelRequest structure as a key-value pair table
function M.UpdateApnsSandboxChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApnsSandboxChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["APNSSandboxChannelRequest"] = args["APNSSandboxChannelRequest"],
	}
	asserts.AssertUpdateApnsSandboxChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEndpointsBatchResponse = { ["MessageBody"] = true, nil }

function asserts.AssertUpdateEndpointsBatchResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointsBatchResponse to be of type 'table'")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["MessageBody"] then asserts.AssertMessageBody(struct["MessageBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEndpointsBatchResponse[k], "UpdateEndpointsBatchResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointsBatchResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageBody [MessageBody] 
-- Required key: MessageBody
-- @return UpdateEndpointsBatchResponse structure as a key-value pair table
function M.UpdateEndpointsBatchResponse(args)
	assert(args, "You must provide an argument table when creating UpdateEndpointsBatchResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageBody"] = args["MessageBody"],
	}
	asserts.AssertUpdateEndpointsBatchResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetChannelsResponse = { ["ChannelsResponse"] = true, nil }

function asserts.AssertGetChannelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetChannelsResponse to be of type 'table'")
	assert(struct["ChannelsResponse"], "Expected key ChannelsResponse to exist in table")
	if struct["ChannelsResponse"] then asserts.AssertChannelsResponse(struct["ChannelsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetChannelsResponse[k], "GetChannelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetChannelsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelsResponse [ChannelsResponse] 
-- Required key: ChannelsResponse
-- @return GetChannelsResponse structure as a key-value pair table
function M.GetChannelsResponse(args)
	assert(args, "You must provide an argument table when creating GetChannelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelsResponse"] = args["ChannelsResponse"],
	}
	asserts.AssertGetChannelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PhoneNumberValidateResponse = { ["NumberValidateResponse"] = true, nil }

function asserts.AssertPhoneNumberValidateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PhoneNumberValidateResponse to be of type 'table'")
	assert(struct["NumberValidateResponse"], "Expected key NumberValidateResponse to exist in table")
	if struct["NumberValidateResponse"] then asserts.AssertNumberValidateResponse(struct["NumberValidateResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.PhoneNumberValidateResponse[k], "PhoneNumberValidateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PhoneNumberValidateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumberValidateResponse [NumberValidateResponse] 
-- Required key: NumberValidateResponse
-- @return PhoneNumberValidateResponse structure as a key-value pair table
function M.PhoneNumberValidateResponse(args)
	assert(args, "You must provide an argument table when creating PhoneNumberValidateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumberValidateResponse"] = args["NumberValidateResponse"],
	}
	asserts.AssertPhoneNumberValidateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentGroup = { ["SourceSegments"] = true, ["Type"] = true, ["Dimensions"] = true, ["SourceType"] = true, nil }

function asserts.AssertSegmentGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentGroup to be of type 'table'")
	if struct["SourceSegments"] then asserts.AssertListOfSegmentReference(struct["SourceSegments"]) end
	if struct["Type"] then asserts.AssertType(struct["Type"]) end
	if struct["Dimensions"] then asserts.AssertListOfSegmentDimensions(struct["Dimensions"]) end
	if struct["SourceType"] then asserts.AssertSourceType(struct["SourceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentGroup[k], "SegmentGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentGroup
-- Segment group definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceSegments [ListOfSegmentReference] The base segment that you build your segment on. The source segment defines the starting "universe" of endpoints. When you add dimensions to the segment, it filters the source segment based on the dimensions that you specify. You can specify more than one dimensional segment. You can only specify one imported segment.
-- * Type [Type] Specify how to handle multiple segment dimensions. For example, if you specify three dimensions, should the resulting segment include endpoints that are matched by all, any, or none of the dimensions? Acceptable values: ALL, ANY, or NONE.
-- * Dimensions [ListOfSegmentDimensions] List of dimensions to include or exclude.
-- * SourceType [SourceType] Specify how to handle multiple source segments. For example, if you specify three source segments, should the resulting segment be based on any or all of the segments? Acceptable values: ANY or ALL.
-- @return SegmentGroup structure as a key-value pair table
function M.SegmentGroup(args)
	assert(args, "You must provide an argument table when creating SegmentGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceSegments"] = args["SourceSegments"],
		["Type"] = args["Type"],
		["Dimensions"] = args["Dimensions"],
		["SourceType"] = args["SourceType"],
	}
	asserts.AssertSegmentGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCampaignResponse = { ["CampaignResponse"] = true, nil }

function asserts.AssertCreateCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCampaignResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then asserts.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCampaignResponse[k], "CreateCampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCampaignResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CampaignResponse [CampaignResponse] 
-- Required key: CampaignResponse
-- @return CreateCampaignResponse structure as a key-value pair table
function M.CreateCampaignResponse(args)
	assert(args, "You must provide an argument table when creating CreateCampaignResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CampaignResponse"] = args["CampaignResponse"],
	}
	asserts.AssertCreateCampaignResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendUsersMessagesResponse = { ["SendUsersMessageResponse"] = true, nil }

function asserts.AssertSendUsersMessagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendUsersMessagesResponse to be of type 'table'")
	assert(struct["SendUsersMessageResponse"], "Expected key SendUsersMessageResponse to exist in table")
	if struct["SendUsersMessageResponse"] then asserts.AssertSendUsersMessageResponse(struct["SendUsersMessageResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendUsersMessagesResponse[k], "SendUsersMessagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendUsersMessagesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SendUsersMessageResponse [SendUsersMessageResponse] 
-- Required key: SendUsersMessageResponse
-- @return SendUsersMessagesResponse structure as a key-value pair table
function M.SendUsersMessagesResponse(args)
	assert(args, "You must provide an argument table when creating SendUsersMessagesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SendUsersMessageResponse"] = args["SendUsersMessageResponse"],
	}
	asserts.AssertSendUsersMessagesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetAppResponse = { ["ApplicationResponse"] = true, nil }

function asserts.AssertGetAppResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAppResponse to be of type 'table'")
	assert(struct["ApplicationResponse"], "Expected key ApplicationResponse to exist in table")
	if struct["ApplicationResponse"] then asserts.AssertApplicationResponse(struct["ApplicationResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAppResponse[k], "GetAppResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAppResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationResponse [ApplicationResponse] 
-- Required key: ApplicationResponse
-- @return GetAppResponse structure as a key-value pair table
function M.GetAppResponse(args)
	assert(args, "You must provide an argument table when creating GetAppResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationResponse"] = args["ApplicationResponse"],
	}
	asserts.AssertGetAppResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSegmentRequest = { ["ApplicationId"] = true, ["SegmentId"] = true, nil }

function asserts.AssertDeleteSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSegmentRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSegmentRequest[k], "DeleteSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSegmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * SegmentId [__string] The unique ID of the segment.
-- Required key: SegmentId
-- Required key: ApplicationId
-- @return DeleteSegmentRequest structure as a key-value pair table
function M.DeleteSegmentRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSegmentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{segment-id}"] = args["SegmentId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["SegmentId"] = args["SegmentId"],
	}
	asserts.AssertDeleteSegmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateExportJobResponse = { ["ExportJobResponse"] = true, nil }

function asserts.AssertCreateExportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateExportJobResponse to be of type 'table'")
	assert(struct["ExportJobResponse"], "Expected key ExportJobResponse to exist in table")
	if struct["ExportJobResponse"] then asserts.AssertExportJobResponse(struct["ExportJobResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateExportJobResponse[k], "CreateExportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateExportJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExportJobResponse [ExportJobResponse] 
-- Required key: ExportJobResponse
-- @return CreateExportJobResponse structure as a key-value pair table
function M.CreateExportJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateExportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExportJobResponse"] = args["ExportJobResponse"],
	}
	asserts.AssertCreateExportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointMessageResult = { ["UpdatedToken"] = true, ["Address"] = true, ["DeliveryStatus"] = true, ["MessageId"] = true, ["StatusMessage"] = true, ["StatusCode"] = true, nil }

function asserts.AssertEndpointMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointMessageResult to be of type 'table'")
	if struct["UpdatedToken"] then asserts.Assert__string(struct["UpdatedToken"]) end
	if struct["Address"] then asserts.Assert__string(struct["Address"]) end
	if struct["DeliveryStatus"] then asserts.AssertDeliveryStatus(struct["DeliveryStatus"]) end
	if struct["MessageId"] then asserts.Assert__string(struct["MessageId"]) end
	if struct["StatusMessage"] then asserts.Assert__string(struct["StatusMessage"]) end
	if struct["StatusCode"] then asserts.Assert__integer(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointMessageResult[k], "EndpointMessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointMessageResult
-- The result from sending a message to an endpoint.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpdatedToken [__string] If token was updated as part of delivery. (This is GCM Specific)
-- * Address [__string] Address that endpoint message was delivered to.
-- * DeliveryStatus [DeliveryStatus] The delivery status of the message. Possible values:
--
--SUCCESS - The message was successfully delivered to the endpoint.
--
--TRANSIENT_FAILURE - A temporary error occurred. Amazon Pinpoint will attempt to deliver the message again later.
--
--FAILURE_PERMANENT - An error occurred when delivering the message to the endpoint. Amazon Pinpoint won't attempt to send the message again.
--
--TIMEOUT - The message couldn't be sent within the timeout period.
--
--QUIET_TIME - The local time for the endpoint was within the Quiet Hours for the campaign.
--
--DAILY_CAP - The endpoint has received the maximum number of messages it can receive within a 24-hour period.
--
--HOLDOUT - The endpoint was in a hold out treatment for the campaign.
--
--THROTTLED - Amazon Pinpoint throttled sending to this endpoint.
--
--EXPIRED - The endpoint address is expired.
--
--CAMPAIGN_CAP - The endpoint received the maximum number of messages allowed by the campaign.
--
--SERVICE_FAILURE - A service-level failure prevented Amazon Pinpoint from delivering the message.
--
--UNKNOWN - An unknown error occurred.
-- * MessageId [__string] Unique message identifier associated with the message that was sent.
-- * StatusMessage [__string] Status message for message delivery.
-- * StatusCode [__integer] Downstream service status code.
-- @return EndpointMessageResult structure as a key-value pair table
function M.EndpointMessageResult(args)
	assert(args, "You must provide an argument table when creating EndpointMessageResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UpdatedToken"] = args["UpdatedToken"],
		["Address"] = args["Address"],
		["DeliveryStatus"] = args["DeliveryStatus"],
		["MessageId"] = args["MessageId"],
		["StatusMessage"] = args["StatusMessage"],
		["StatusCode"] = args["StatusCode"],
	}
	asserts.AssertEndpointMessageResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointRequest = { ["EffectiveDate"] = true, ["OptOut"] = true, ["RequestId"] = true, ["Demographic"] = true, ["User"] = true, ["Metrics"] = true, ["Location"] = true, ["Address"] = true, ["Attributes"] = true, ["ChannelType"] = true, ["EndpointStatus"] = true, nil }

function asserts.AssertEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointRequest to be of type 'table'")
	if struct["EffectiveDate"] then asserts.Assert__string(struct["EffectiveDate"]) end
	if struct["OptOut"] then asserts.Assert__string(struct["OptOut"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["Demographic"] then asserts.AssertEndpointDemographic(struct["Demographic"]) end
	if struct["User"] then asserts.AssertEndpointUser(struct["User"]) end
	if struct["Metrics"] then asserts.AssertMapOf__double(struct["Metrics"]) end
	if struct["Location"] then asserts.AssertEndpointLocation(struct["Location"]) end
	if struct["Address"] then asserts.Assert__string(struct["Address"]) end
	if struct["Attributes"] then asserts.AssertMapOfListOf__string(struct["Attributes"]) end
	if struct["ChannelType"] then asserts.AssertChannelType(struct["ChannelType"]) end
	if struct["EndpointStatus"] then asserts.Assert__string(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointRequest[k], "EndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointRequest
-- Endpoint update request
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EffectiveDate [__string] The date and time when the endpoint was updated, shown in ISO 8601 format.
-- * OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:
--
--ALL - User has opted out of all messages.
--
--NONE - Users has not opted out and receives all messages.
-- * RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- * Demographic [EndpointDemographic] Demographic attributes for the endpoint.
-- * User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- * Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- * Location [EndpointLocation] The endpoint location attributes.
-- * Address [__string] The destination for messages that you send to this endpoint. The address varies by channel. For mobile push channels, use the token provided by the push notification service, such as the APNs device token or the FCM registration token. For the SMS channel, use a phone number in E.164 format, such as +12065550100. For the email channel, use an email address.
-- * Attributes [MapOfListOf__string] Custom attributes that describe the endpoint by associating a name with an array of values. For example, an attribute named "interests" might have the values ["science", "politics", "travel"]. You can use these attributes as selection criteria when you create a segment of users to engage with a messaging campaign.
--
--The following characters are not recommended in attribute names: # : ? \ /. The Amazon Pinpoint console does not display attributes that include these characters in the name. This limitation does not apply to attribute values.
-- * ChannelType [ChannelType] The channel type.
--
--Valid values: GCM | APNS | APNS_SANDBOX | APNS_VOIP | APNS_VOIP_SANDBOX | ADM | SMS | EMAIL | BAIDU
-- * EndpointStatus [__string] Unused.
-- @return EndpointRequest structure as a key-value pair table
function M.EndpointRequest(args)
	assert(args, "You must provide an argument table when creating EndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EffectiveDate"] = args["EffectiveDate"],
		["OptOut"] = args["OptOut"],
		["RequestId"] = args["RequestId"],
		["Demographic"] = args["Demographic"],
		["User"] = args["User"],
		["Metrics"] = args["Metrics"],
		["Location"] = args["Location"],
		["Address"] = args["Address"],
		["Attributes"] = args["Attributes"],
		["ChannelType"] = args["ChannelType"],
		["EndpointStatus"] = args["EndpointStatus"],
	}
	asserts.AssertEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetImportJobRequest = { ["ApplicationId"] = true, ["JobId"] = true, nil }

function asserts.AssertGetImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetImportJobRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["JobId"] then asserts.Assert__string(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetImportJobRequest[k], "GetImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetImportJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * JobId [__string] The unique ID of the job.
-- Required key: ApplicationId
-- Required key: JobId
-- @return GetImportJobRequest structure as a key-value pair table
function M.GetImportJobRequest(args)
	assert(args, "You must provide an argument table when creating GetImportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{job-id}"] = args["JobId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetImportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveAttributesRequest = { ["UpdateAttributesRequest"] = true, ["ApplicationId"] = true, ["AttributeType"] = true, nil }

function asserts.AssertRemoveAttributesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAttributesRequest to be of type 'table'")
	assert(struct["AttributeType"], "Expected key AttributeType to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["UpdateAttributesRequest"], "Expected key UpdateAttributesRequest to exist in table")
	if struct["UpdateAttributesRequest"] then asserts.AssertUpdateAttributesRequest(struct["UpdateAttributesRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["AttributeType"] then asserts.Assert__string(struct["AttributeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAttributesRequest[k], "RemoveAttributesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAttributesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpdateAttributesRequest [UpdateAttributesRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * AttributeType [__string] Type of attribute. Can be endpoint-custom-attributes, endpoint-custom-metrics, endpoint-user-attributes.
-- Required key: AttributeType
-- Required key: ApplicationId
-- Required key: UpdateAttributesRequest
-- @return RemoveAttributesRequest structure as a key-value pair table
function M.RemoveAttributesRequest(args)
	assert(args, "You must provide an argument table when creating RemoveAttributesRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{attribute-type}"] = args["AttributeType"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UpdateAttributesRequest"] = args["UpdateAttributesRequest"],
		["ApplicationId"] = args["ApplicationId"],
		["AttributeType"] = args["AttributeType"],
	}
	asserts.AssertRemoveAttributesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApplicationSettingsResource = { ["LastModifiedDate"] = true, ["QuietTime"] = true, ["CampaignHook"] = true, ["ApplicationId"] = true, ["Limits"] = true, nil }

function asserts.AssertApplicationSettingsResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSettingsResource to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["QuietTime"] then asserts.AssertQuietTime(struct["QuietTime"]) end
	if struct["CampaignHook"] then asserts.AssertCampaignHook(struct["CampaignHook"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Limits"] then asserts.AssertCampaignLimits(struct["Limits"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationSettingsResource[k], "ApplicationSettingsResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSettingsResource
-- Application settings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedDate [__string] The date that the settings were last updated in ISO 8601 format.
-- * QuietTime [QuietTime] The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
-- * CampaignHook [CampaignHook] Default campaign hook.
-- * ApplicationId [__string] The unique ID for the application.
-- * Limits [CampaignLimits] The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
-- @return ApplicationSettingsResource structure as a key-value pair table
function M.ApplicationSettingsResource(args)
	assert(args, "You must provide an argument table when creating ApplicationSettingsResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["QuietTime"] = args["QuietTime"],
		["CampaignHook"] = args["CampaignHook"],
		["ApplicationId"] = args["ApplicationId"],
		["Limits"] = args["Limits"],
	}
	asserts.AssertApplicationSettingsResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSegmentResponse = { ["SegmentResponse"] = true, nil }

function asserts.AssertCreateSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSegmentResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then asserts.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSegmentResponse[k], "CreateSegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSegmentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentResponse [SegmentResponse] 
-- Required key: SegmentResponse
-- @return CreateSegmentResponse structure as a key-value pair table
function M.CreateSegmentResponse(args)
	assert(args, "You must provide an argument table when creating CreateSegmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentResponse"] = args["SegmentResponse"],
	}
	asserts.AssertCreateSegmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSmsChannelResponse = { ["SMSChannelResponse"] = true, nil }

function asserts.AssertUpdateSmsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSmsChannelResponse to be of type 'table'")
	assert(struct["SMSChannelResponse"], "Expected key SMSChannelResponse to exist in table")
	if struct["SMSChannelResponse"] then asserts.AssertSMSChannelResponse(struct["SMSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSmsChannelResponse[k], "UpdateSmsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSmsChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SMSChannelResponse [SMSChannelResponse] 
-- Required key: SMSChannelResponse
-- @return UpdateSmsChannelResponse structure as a key-value pair table
function M.UpdateSmsChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSmsChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SMSChannelResponse"] = args["SMSChannelResponse"],
	}
	asserts.AssertUpdateSmsChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GCMMessage = { ["Body"] = true, ["Sound"] = true, ["Title"] = true, ["Url"] = true, ["ImageUrl"] = true, ["RawContent"] = true, ["Substitutions"] = true, ["Priority"] = true, ["CollapseKey"] = true, ["SmallImageIconUrl"] = true, ["TimeToLive"] = true, ["SilentPush"] = true, ["IconReference"] = true, ["Action"] = true, ["RestrictedPackageName"] = true, ["Data"] = true, ["ImageIconUrl"] = true, nil }

function asserts.AssertGCMMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GCMMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Sound"] then asserts.Assert__string(struct["Sound"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ImageUrl"] then asserts.Assert__string(struct["ImageUrl"]) end
	if struct["RawContent"] then asserts.Assert__string(struct["RawContent"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["Priority"] then asserts.Assert__string(struct["Priority"]) end
	if struct["CollapseKey"] then asserts.Assert__string(struct["CollapseKey"]) end
	if struct["SmallImageIconUrl"] then asserts.Assert__string(struct["SmallImageIconUrl"]) end
	if struct["TimeToLive"] then asserts.Assert__integer(struct["TimeToLive"]) end
	if struct["SilentPush"] then asserts.Assert__boolean(struct["SilentPush"]) end
	if struct["IconReference"] then asserts.Assert__string(struct["IconReference"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["RestrictedPackageName"] then asserts.Assert__string(struct["RestrictedPackageName"]) end
	if struct["Data"] then asserts.AssertMapOf__string(struct["Data"]) end
	if struct["ImageIconUrl"] then asserts.Assert__string(struct["ImageIconUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.GCMMessage[k], "GCMMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GCMMessage
-- GCM Message.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The message body of the notification.
-- * Sound [__string] Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
-- * Title [__string] The message title that displays above the message on the user's device.
-- * Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- * ImageUrl [__string] The URL that points to an image used in the push notification.
-- * RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- * Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- * Priority [__string] The message priority. Amazon Pinpoint uses this value to set the FCM or GCM priority parameter when it sends the message. Accepts the following values:
--
--"Normal" - Messages might be delayed. Delivery is optimized for battery usage on the receiving device. Use normal priority unless immediate delivery is required.
--
--"High" - Messages are sent immediately and might wake a sleeping device.
--
--The equivalent values for APNs messages are "5" and "10". Amazon Pinpoint accepts these values here and converts them.
--
--For more information, see About FCM Messages in the Firebase documentation.
-- * CollapseKey [__string] This parameter identifies a group of messages (e.g., with collapse_key: "Updates Available") that can be collapsed, so that only the last message gets sent when delivery can be resumed. This is intended to avoid sending too many of the same messages when the device comes back online or becomes active.
-- * SmallImageIconUrl [__string] The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
-- * TimeToLive [__integer] The length of time (in seconds) that FCM or GCM stores and attempts to deliver the message. If unspecified, the value defaults to the maximum, which is 2,419,200 seconds (28 days). Amazon Pinpoint uses this value to set the FCM or GCM time_to_live parameter.
-- * SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- * IconReference [__string] The icon image name of the asset saved in your application.
-- * Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- * RestrictedPackageName [__string] This parameter specifies the package name of the application where the registration tokens must match in order to receive the message.
-- * Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- * ImageIconUrl [__string] The URL that points to an image used as the large icon to the notification content view.
-- @return GCMMessage structure as a key-value pair table
function M.GCMMessage(args)
	assert(args, "You must provide an argument table when creating GCMMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Sound"] = args["Sound"],
		["Title"] = args["Title"],
		["Url"] = args["Url"],
		["ImageUrl"] = args["ImageUrl"],
		["RawContent"] = args["RawContent"],
		["Substitutions"] = args["Substitutions"],
		["Priority"] = args["Priority"],
		["CollapseKey"] = args["CollapseKey"],
		["SmallImageIconUrl"] = args["SmallImageIconUrl"],
		["TimeToLive"] = args["TimeToLive"],
		["SilentPush"] = args["SilentPush"],
		["IconReference"] = args["IconReference"],
		["Action"] = args["Action"],
		["RestrictedPackageName"] = args["RestrictedPackageName"],
		["Data"] = args["Data"],
		["ImageIconUrl"] = args["ImageIconUrl"],
	}
	asserts.AssertGCMMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateBaiduChannelRequest = { ["BaiduChannelRequest"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertUpdateBaiduChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBaiduChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["BaiduChannelRequest"], "Expected key BaiduChannelRequest to exist in table")
	if struct["BaiduChannelRequest"] then asserts.AssertBaiduChannelRequest(struct["BaiduChannelRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBaiduChannelRequest[k], "UpdateBaiduChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBaiduChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaiduChannelRequest [BaiduChannelRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: BaiduChannelRequest
-- @return UpdateBaiduChannelRequest structure as a key-value pair table
function M.UpdateBaiduChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateBaiduChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["BaiduChannelRequest"] = args["BaiduChannelRequest"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertUpdateBaiduChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentBehaviors = { ["Recency"] = true, nil }

function asserts.AssertSegmentBehaviors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentBehaviors to be of type 'table'")
	if struct["Recency"] then asserts.AssertRecencyDimension(struct["Recency"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentBehaviors[k], "SegmentBehaviors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentBehaviors
-- Segment behavior dimensions
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Recency [RecencyDimension] The recency of use.
-- @return SegmentBehaviors structure as a key-value pair table
function M.SegmentBehaviors(args)
	assert(args, "You must provide an argument table when creating SegmentBehaviors")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Recency"] = args["Recency"],
	}
	asserts.AssertSegmentBehaviors(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEndpointsBatchRequest = { ["EndpointBatchRequest"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertUpdateEndpointsBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointsBatchRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EndpointBatchRequest"], "Expected key EndpointBatchRequest to exist in table")
	if struct["EndpointBatchRequest"] then asserts.AssertEndpointBatchRequest(struct["EndpointBatchRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEndpointsBatchRequest[k], "UpdateEndpointsBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointsBatchRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointBatchRequest [EndpointBatchRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: EndpointBatchRequest
-- @return UpdateEndpointsBatchRequest structure as a key-value pair table
function M.UpdateEndpointsBatchRequest(args)
	assert(args, "You must provide an argument table when creating UpdateEndpointsBatchRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointBatchRequest"] = args["EndpointBatchRequest"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertUpdateEndpointsBatchRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventsBatch = { ["Endpoint"] = true, ["Events"] = true, nil }

function asserts.AssertEventsBatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventsBatch to be of type 'table'")
	if struct["Endpoint"] then asserts.AssertPublicEndpoint(struct["Endpoint"]) end
	if struct["Events"] then asserts.AssertMapOfEvent(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventsBatch[k], "EventsBatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventsBatch
-- Events batch definition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoint [PublicEndpoint] Endpoint information
-- * Events [MapOfEvent] Events
-- @return EventsBatch structure as a key-value pair table
function M.EventsBatch(args)
	assert(args, "You must provide an argument table when creating EventsBatch")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoint"] = args["Endpoint"],
		["Events"] = args["Events"],
	}
	asserts.AssertEventsBatch(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportJobResponse = { ["CompletionDate"] = true, ["Definition"] = true, ["Type"] = true, ["TotalFailures"] = true, ["TotalPieces"] = true, ["FailedPieces"] = true, ["CompletedPieces"] = true, ["JobStatus"] = true, ["Failures"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["TotalProcessed"] = true, nil }

function asserts.AssertExportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportJobResponse to be of type 'table'")
	if struct["CompletionDate"] then asserts.Assert__string(struct["CompletionDate"]) end
	if struct["Definition"] then asserts.AssertExportJobResource(struct["Definition"]) end
	if struct["Type"] then asserts.Assert__string(struct["Type"]) end
	if struct["TotalFailures"] then asserts.Assert__integer(struct["TotalFailures"]) end
	if struct["TotalPieces"] then asserts.Assert__integer(struct["TotalPieces"]) end
	if struct["FailedPieces"] then asserts.Assert__integer(struct["FailedPieces"]) end
	if struct["CompletedPieces"] then asserts.Assert__integer(struct["CompletedPieces"]) end
	if struct["JobStatus"] then asserts.AssertJobStatus(struct["JobStatus"]) end
	if struct["Failures"] then asserts.AssertListOf__string(struct["Failures"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["TotalProcessed"] then asserts.Assert__integer(struct["TotalProcessed"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportJobResponse[k], "ExportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportJobResponse
-- Export job response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CompletionDate [__string] The date the job completed in ISO 8601 format.
-- * Definition [ExportJobResource] The export job settings.
-- * Type [__string] The job type. Will be 'EXPORT'.
-- * TotalFailures [__integer] The number of endpoints that were not processed; for example, because of syntax errors.
-- * TotalPieces [__integer] The total number of pieces that must be processed to finish the job. Each piece is an approximately equal portion of the endpoints.
-- * FailedPieces [__integer] The number of pieces that failed to be processed as of the time of the request.
-- * CompletedPieces [__integer] The number of pieces that have successfully completed as of the time of the request.
-- * JobStatus [JobStatus] The status of the job.
--Valid values: CREATED, INITIALIZING, PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED
--
--The job status is FAILED if one or more pieces failed.
-- * Failures [ListOf__string] Provides up to 100 of the first failed entries for the job, if any exist.
-- * CreationDate [__string] The date the job was created in ISO 8601 format.
-- * ApplicationId [__string] The unique ID of the application associated with the export job.
-- * Id [__string] The unique ID of the job.
-- * TotalProcessed [__integer] The number of endpoints that were processed by the job.
-- @return ExportJobResponse structure as a key-value pair table
function M.ExportJobResponse(args)
	assert(args, "You must provide an argument table when creating ExportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CompletionDate"] = args["CompletionDate"],
		["Definition"] = args["Definition"],
		["Type"] = args["Type"],
		["TotalFailures"] = args["TotalFailures"],
		["TotalPieces"] = args["TotalPieces"],
		["FailedPieces"] = args["FailedPieces"],
		["CompletedPieces"] = args["CompletedPieces"],
		["JobStatus"] = args["JobStatus"],
		["Failures"] = args["Failures"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["TotalProcessed"] = args["TotalProcessed"],
	}
	asserts.AssertExportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignResponse = { ["CampaignResponse"] = true, nil }

function asserts.AssertGetCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then asserts.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignResponse[k], "GetCampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CampaignResponse [CampaignResponse] 
-- Required key: CampaignResponse
-- @return GetCampaignResponse structure as a key-value pair table
function M.GetCampaignResponse(args)
	assert(args, "You must provide an argument table when creating GetCampaignResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CampaignResponse"] = args["CampaignResponse"],
	}
	asserts.AssertGetCampaignResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSegmentRequest = { ["WriteSegmentRequest"] = true, ["ApplicationId"] = true, ["SegmentId"] = true, nil }

function asserts.AssertUpdateSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSegmentRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteSegmentRequest"], "Expected key WriteSegmentRequest to exist in table")
	if struct["WriteSegmentRequest"] then asserts.AssertWriteSegmentRequest(struct["WriteSegmentRequest"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSegmentRequest[k], "UpdateSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSegmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WriteSegmentRequest [WriteSegmentRequest] 
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * SegmentId [__string] The unique ID of the segment.
-- Required key: SegmentId
-- Required key: ApplicationId
-- Required key: WriteSegmentRequest
-- @return UpdateSegmentRequest structure as a key-value pair table
function M.UpdateSegmentRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSegmentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{segment-id}"] = args["SegmentId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["WriteSegmentRequest"] = args["WriteSegmentRequest"],
		["ApplicationId"] = args["ApplicationId"],
		["SegmentId"] = args["SegmentId"],
	}
	asserts.AssertUpdateSegmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserEndpointsRequest = { ["UserId"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertDeleteUserEndpointsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserEndpointsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["UserId"] then asserts.Assert__string(struct["UserId"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserEndpointsRequest[k], "DeleteUserEndpointsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserEndpointsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [__string] The unique ID of the user.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: UserId
-- @return DeleteUserEndpointsRequest structure as a key-value pair table
function M.DeleteUserEndpointsRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserEndpointsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{user-id}"] = args["UserId"],
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UserId"] = args["UserId"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteUserEndpointsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventsResponse = { ["EventsResponse"] = true, nil }

function asserts.AssertPutEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsResponse to be of type 'table'")
	assert(struct["EventsResponse"], "Expected key EventsResponse to exist in table")
	if struct["EventsResponse"] then asserts.AssertEventsResponse(struct["EventsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventsResponse[k], "PutEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventsResponse [EventsResponse] 
-- Required key: EventsResponse
-- @return PutEventsResponse structure as a key-value pair table
function M.PutEventsResponse(args)
	assert(args, "You must provide an argument table when creating PutEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventsResponse"] = args["EventsResponse"],
	}
	asserts.AssertPutEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApplicationSettingsResponse = { ["ApplicationSettingsResource"] = true, nil }

function asserts.AssertGetApplicationSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationSettingsResponse to be of type 'table'")
	assert(struct["ApplicationSettingsResource"], "Expected key ApplicationSettingsResource to exist in table")
	if struct["ApplicationSettingsResource"] then asserts.AssertApplicationSettingsResource(struct["ApplicationSettingsResource"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApplicationSettingsResponse[k], "GetApplicationSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationSettingsResource [ApplicationSettingsResource] 
-- Required key: ApplicationSettingsResource
-- @return GetApplicationSettingsResponse structure as a key-value pair table
function M.GetApplicationSettingsResponse(args)
	assert(args, "You must provide an argument table when creating GetApplicationSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationSettingsResource"] = args["ApplicationSettingsResource"],
	}
	asserts.AssertGetApplicationSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MessageBody = { ["Message"] = true, ["RequestID"] = true, nil }

function asserts.AssertMessageBody(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageBody to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["RequestID"] then asserts.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageBody[k], "MessageBody contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageBody
-- Simple message object.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] The error message that's returned from the API.
-- * RequestID [__string] The unique message body ID.
-- @return MessageBody structure as a key-value pair table
function M.MessageBody(args)
	assert(args, "You must provide an argument table when creating MessageBody")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["RequestID"] = args["RequestID"],
	}
	asserts.AssertMessageBody(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignVersionResponse = { ["CampaignResponse"] = true, nil }

function asserts.AssertGetCampaignVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignVersionResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then asserts.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignVersionResponse[k], "GetCampaignVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CampaignResponse [CampaignResponse] 
-- Required key: CampaignResponse
-- @return GetCampaignVersionResponse structure as a key-value pair table
function M.GetCampaignVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetCampaignVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CampaignResponse"] = args["CampaignResponse"],
	}
	asserts.AssertGetCampaignVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGcmChannelResponse = { ["GCMChannelResponse"] = true, nil }

function asserts.AssertDeleteGcmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGcmChannelResponse to be of type 'table'")
	assert(struct["GCMChannelResponse"], "Expected key GCMChannelResponse to exist in table")
	if struct["GCMChannelResponse"] then asserts.AssertGCMChannelResponse(struct["GCMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGcmChannelResponse[k], "DeleteGcmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGcmChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GCMChannelResponse [GCMChannelResponse] 
-- Required key: GCMChannelResponse
-- @return DeleteGcmChannelResponse structure as a key-value pair table
function M.DeleteGcmChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteGcmChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GCMChannelResponse"] = args["GCMChannelResponse"],
	}
	asserts.AssertDeleteGcmChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetImportJobResponse = { ["ImportJobResponse"] = true, nil }

function asserts.AssertGetImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetImportJobResponse to be of type 'table'")
	assert(struct["ImportJobResponse"], "Expected key ImportJobResponse to exist in table")
	if struct["ImportJobResponse"] then asserts.AssertImportJobResponse(struct["ImportJobResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetImportJobResponse[k], "GetImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetImportJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImportJobResponse [ImportJobResponse] 
-- Required key: ImportJobResponse
-- @return GetImportJobResponse structure as a key-value pair table
function M.GetImportJobResponse(args)
	assert(args, "You must provide an argument table when creating GetImportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImportJobResponse"] = args["ImportJobResponse"],
	}
	asserts.AssertGetImportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ForbiddenException = { ["Message"] = true, ["RequestID"] = true, nil }

function asserts.AssertForbiddenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForbiddenException to be of type 'table'")
	if struct["Message"] then asserts.Assert__string(struct["Message"]) end
	if struct["RequestID"] then asserts.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(keys.ForbiddenException[k], "ForbiddenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForbiddenException
-- Simple message object.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [__string] The error message that's returned from the API.
-- * RequestID [__string] The unique message body ID.
-- @return ForbiddenException structure as a key-value pair table
function M.ForbiddenException(args)
	assert(args, "You must provide an argument table when creating ForbiddenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["RequestID"] = args["RequestID"],
	}
	asserts.AssertForbiddenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportJobRequest = { ["DefineSegment"] = true, ["SegmentId"] = true, ["Format"] = true, ["RoleArn"] = true, ["S3Url"] = true, ["RegisterEndpoints"] = true, ["ExternalId"] = true, ["SegmentName"] = true, nil }

function asserts.AssertImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportJobRequest to be of type 'table'")
	if struct["DefineSegment"] then asserts.Assert__boolean(struct["DefineSegment"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	if struct["Format"] then asserts.AssertFormat(struct["Format"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["S3Url"] then asserts.Assert__string(struct["S3Url"]) end
	if struct["RegisterEndpoints"] then asserts.Assert__boolean(struct["RegisterEndpoints"]) end
	if struct["ExternalId"] then asserts.Assert__string(struct["ExternalId"]) end
	if struct["SegmentName"] then asserts.Assert__string(struct["SegmentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportJobRequest[k], "ImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportJobRequest
-- Import job request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefineSegment [__boolean] Sets whether the endpoints create a segment when they are imported.
-- * SegmentId [__string] The ID of the segment to update if the import job is meant to update an existing segment.
-- * Format [Format] The format of the files that contain the endpoint definitions.
--Valid values: CSV, JSON
-- * RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
-- * S3Url [__string] The URL of the S3 bucket that contains the segment information to import. The location can be a folder or a single file. The URL should use the following format: s3://bucket-name/folder-name/file-name
--
--Amazon Pinpoint imports endpoints from this location and any subfolders it contains.
-- * RegisterEndpoints [__boolean] Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
-- * ExternalId [__string] (Deprecated) Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
-- * SegmentName [__string] A custom name for the segment created by the import job. Use if DefineSegment is true.
-- @return ImportJobRequest structure as a key-value pair table
function M.ImportJobRequest(args)
	assert(args, "You must provide an argument table when creating ImportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefineSegment"] = args["DefineSegment"],
		["SegmentId"] = args["SegmentId"],
		["Format"] = args["Format"],
		["RoleArn"] = args["RoleArn"],
		["S3Url"] = args["S3Url"],
		["RegisterEndpoints"] = args["RegisterEndpoints"],
		["ExternalId"] = args["ExternalId"],
		["SegmentName"] = args["SegmentName"],
	}
	asserts.AssertImportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NumberValidateResponse = { ["City"] = true, ["PhoneTypeCode"] = true, ["CleansedPhoneNumberNational"] = true, ["Country"] = true, ["ZipCode"] = true, ["CleansedPhoneNumberE164"] = true, ["County"] = true, ["CountryCodeIso2"] = true, ["OriginalCountryCodeIso2"] = true, ["Carrier"] = true, ["PhoneType"] = true, ["Timezone"] = true, ["OriginalPhoneNumber"] = true, ["CountryCodeNumeric"] = true, nil }

function asserts.AssertNumberValidateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NumberValidateResponse to be of type 'table'")
	if struct["City"] then asserts.Assert__string(struct["City"]) end
	if struct["PhoneTypeCode"] then asserts.Assert__integer(struct["PhoneTypeCode"]) end
	if struct["CleansedPhoneNumberNational"] then asserts.Assert__string(struct["CleansedPhoneNumberNational"]) end
	if struct["Country"] then asserts.Assert__string(struct["Country"]) end
	if struct["ZipCode"] then asserts.Assert__string(struct["ZipCode"]) end
	if struct["CleansedPhoneNumberE164"] then asserts.Assert__string(struct["CleansedPhoneNumberE164"]) end
	if struct["County"] then asserts.Assert__string(struct["County"]) end
	if struct["CountryCodeIso2"] then asserts.Assert__string(struct["CountryCodeIso2"]) end
	if struct["OriginalCountryCodeIso2"] then asserts.Assert__string(struct["OriginalCountryCodeIso2"]) end
	if struct["Carrier"] then asserts.Assert__string(struct["Carrier"]) end
	if struct["PhoneType"] then asserts.Assert__string(struct["PhoneType"]) end
	if struct["Timezone"] then asserts.Assert__string(struct["Timezone"]) end
	if struct["OriginalPhoneNumber"] then asserts.Assert__string(struct["OriginalPhoneNumber"]) end
	if struct["CountryCodeNumeric"] then asserts.Assert__string(struct["CountryCodeNumeric"]) end
	for k,_ in pairs(struct) do
		assert(keys.NumberValidateResponse[k], "NumberValidateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NumberValidateResponse
-- Phone Number Information response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * City [__string] The city where the phone number was originally registered.
-- * PhoneTypeCode [__integer] The phone type, represented by an integer. Possible values include 0 (MOBILE), 1 (LANDLINE), 2 (VOIP), 3 (INVALID), 4 (OTHER), and 5 (PREPAID).
-- * CleansedPhoneNumberNational [__string] The cleansed phone number, shown in the local phone number format.
-- * Country [__string] The country or region where the phone number was originally registered.
-- * ZipCode [__string] The postal code for the location where the phone number was originally registered.
-- * CleansedPhoneNumberE164 [__string] The cleansed phone number, shown in E.164 format.
-- * County [__string] The county where the phone number was originally registered.
-- * CountryCodeIso2 [__string] The two-character ISO code for the country or region where the phone number was originally registered.
-- * OriginalCountryCodeIso2 [__string] The two-character ISO code for the country or region that you included in the request body.
-- * Carrier [__string] The carrier or servive provider that the phone number is currently registered with.
-- * PhoneType [__string] A description of the phone type. Possible values are MOBILE, LANDLINE, VOIP, INVALID, PREPAID, and OTHER.
-- * Timezone [__string] The time zone for the location where the phone number was originally registered.
-- * OriginalPhoneNumber [__string] The phone number that you included in the request body.
-- * CountryCodeNumeric [__string] The numeric code for the country or region where the phone number was originally registered.
-- @return NumberValidateResponse structure as a key-value pair table
function M.NumberValidateResponse(args)
	assert(args, "You must provide an argument table when creating NumberValidateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["City"] = args["City"],
		["PhoneTypeCode"] = args["PhoneTypeCode"],
		["CleansedPhoneNumberNational"] = args["CleansedPhoneNumberNational"],
		["Country"] = args["Country"],
		["ZipCode"] = args["ZipCode"],
		["CleansedPhoneNumberE164"] = args["CleansedPhoneNumberE164"],
		["County"] = args["County"],
		["CountryCodeIso2"] = args["CountryCodeIso2"],
		["OriginalCountryCodeIso2"] = args["OriginalCountryCodeIso2"],
		["Carrier"] = args["Carrier"],
		["PhoneType"] = args["PhoneType"],
		["Timezone"] = args["Timezone"],
		["OriginalPhoneNumber"] = args["OriginalPhoneNumber"],
		["CountryCodeNumeric"] = args["CountryCodeNumeric"],
	}
	asserts.AssertNumberValidateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmailChannelResponse = { ["FromAddress"] = true, ["MessagesPerSecond"] = true, ["LastModifiedDate"] = true, ["RoleArn"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["Identity"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, nil }

function asserts.AssertEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmailChannelResponse to be of type 'table'")
	if struct["FromAddress"] then asserts.Assert__string(struct["FromAddress"]) end
	if struct["MessagesPerSecond"] then asserts.Assert__integer(struct["MessagesPerSecond"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["Identity"] then asserts.Assert__string(struct["Identity"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmailChannelResponse[k], "EmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmailChannelResponse
-- Email Channel Response.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FromAddress [__string] The email address used to send emails from.
-- * MessagesPerSecond [__integer] Messages per second that can be sent
-- * LastModifiedDate [__string] Last date this was updated
-- * RoleArn [__string] The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] Who last updated this entry
-- * Platform [__string] Platform type. Will be "EMAIL"
-- * Version [__integer] Version of channel
-- * Identity [__string] The ARN of an identity verified with SES.
-- * IsArchived [__boolean] Is this channel archived
-- * CreationDate [__string] The date that the settings were last updated in ISO 8601 format.
-- * ApplicationId [__string] The unique ID of the application to which the email channel belongs.
-- * Id [__string] Channel ID. Not used, only for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- @return EmailChannelResponse structure as a key-value pair table
function M.EmailChannelResponse(args)
	assert(args, "You must provide an argument table when creating EmailChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FromAddress"] = args["FromAddress"],
		["MessagesPerSecond"] = args["MessagesPerSecond"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["RoleArn"] = args["RoleArn"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["Identity"] = args["Identity"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
	}
	asserts.AssertEmailChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSMessage = { ["Body"] = true, ["Category"] = true, ["CollapseId"] = true, ["MediaUrl"] = true, ["Url"] = true, ["Data"] = true, ["ThreadId"] = true, ["Substitutions"] = true, ["Priority"] = true, ["PreferredAuthenticationMethod"] = true, ["Title"] = true, ["TimeToLive"] = true, ["RawContent"] = true, ["Action"] = true, ["SilentPush"] = true, ["Badge"] = true, ["Sound"] = true, nil }

function asserts.AssertAPNSMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["CollapseId"] then asserts.Assert__string(struct["CollapseId"]) end
	if struct["MediaUrl"] then asserts.Assert__string(struct["MediaUrl"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["Data"] then asserts.AssertMapOf__string(struct["Data"]) end
	if struct["ThreadId"] then asserts.Assert__string(struct["ThreadId"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["Priority"] then asserts.Assert__string(struct["Priority"]) end
	if struct["PreferredAuthenticationMethod"] then asserts.Assert__string(struct["PreferredAuthenticationMethod"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["TimeToLive"] then asserts.Assert__integer(struct["TimeToLive"]) end
	if struct["RawContent"] then asserts.Assert__string(struct["RawContent"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then asserts.Assert__boolean(struct["SilentPush"]) end
	if struct["Badge"] then asserts.Assert__integer(struct["Badge"]) end
	if struct["Sound"] then asserts.Assert__string(struct["Sound"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSMessage[k], "APNSMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSMessage
-- APNS Message.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [__string] The message body of the notification.
-- * Category [__string] Provide this key with a string value that represents the notification's type. This value corresponds to the value in the identifier property of one of your app's registered categories.
-- * CollapseId [__string] An ID that, if assigned to multiple messages, causes APNs to coalesce the messages into a single push notification instead of delivering each message individually. The value must not exceed 64 bytes. Amazon Pinpoint uses this value to set the apns-collapse-id request header when it sends the message to APNs.
-- * MediaUrl [__string] The URL that points to a video used in the push notification.
-- * Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- * Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- * ThreadId [__string] Provide this key with a string value that represents the app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.
-- * Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- * Priority [__string] The message priority. Amazon Pinpoint uses this value to set the apns-priority request header when it sends the message to APNs. Accepts the following values:
--
--"5" - Low priority. Messages might be delayed, delivered in groups, and throttled.
--
--"10" - High priority. Messages are sent immediately. High priority messages must cause an alert, sound, or badge on the receiving device.
--
--The default value is "10".
--
--The equivalent values for FCM or GCM messages are "normal" and "high". Amazon Pinpoint accepts these values for APNs messages and converts them.
--
--For more information about the apns-priority parameter, see Communicating with APNs in the APNs Local and Remote Notification Programming Guide.
-- * PreferredAuthenticationMethod [__string] The preferred authentication method, either "CERTIFICATE" or "TOKEN"
-- * Title [__string] The message title that displays above the message on the user's device.
-- * TimeToLive [__integer] The length of time (in seconds) that APNs stores and attempts to deliver the message. If the value is 0, APNs does not store the message or attempt to deliver it more than once. Amazon Pinpoint uses this value to set the apns-expiration request header when it sends the message to APNs.
-- * RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- * Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- * SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- * Badge [__integer] Include this key when you want the system to modify the badge of your app icon. If this key is not included in the dictionary, the badge is not changed. To remove the badge, set the value of this key to 0.
-- * Sound [__string] Include this key when you want the system to play a sound. The value of this key is the name of a sound file in your app's main bundle or in the Library/Sounds folder of your app's data container. If the sound file cannot be found, or if you specify defaultfor the value, the system plays the default alert sound.
-- @return APNSMessage structure as a key-value pair table
function M.APNSMessage(args)
	assert(args, "You must provide an argument table when creating APNSMessage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Body"] = args["Body"],
		["Category"] = args["Category"],
		["CollapseId"] = args["CollapseId"],
		["MediaUrl"] = args["MediaUrl"],
		["Url"] = args["Url"],
		["Data"] = args["Data"],
		["ThreadId"] = args["ThreadId"],
		["Substitutions"] = args["Substitutions"],
		["Priority"] = args["Priority"],
		["PreferredAuthenticationMethod"] = args["PreferredAuthenticationMethod"],
		["Title"] = args["Title"],
		["TimeToLive"] = args["TimeToLive"],
		["RawContent"] = args["RawContent"],
		["Action"] = args["Action"],
		["SilentPush"] = args["SilentPush"],
		["Badge"] = args["Badge"],
		["Sound"] = args["Sound"],
	}
	asserts.AssertAPNSMessage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ADMChannelResponse = { ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, nil }

function asserts.AssertADMChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ADMChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	for k,_ in pairs(struct) do
		assert(keys.ADMChannelResponse[k], "ADMChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ADMChannelResponse
-- Amazon Device Messaging channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedDate [__string] The date and time when this channel was last modified.
-- * Enabled [__boolean] Indicates whether or not the channel is enabled for sending messages.
-- * LastModifiedBy [__string] The user who last updated this channel.
-- * Platform [__string] The platform type. For this channel, the value is always "ADM."
-- * Version [__integer] The channel version.
-- * IsArchived [__boolean] Indicates whether or not the channel is archived.
-- * CreationDate [__string] The date and time when this channel was created.
-- * ApplicationId [__string] The ID of the application to which the channel applies.
-- * Id [__string] (Deprecated) An identifier for the channel. Retained for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- @return ADMChannelResponse structure as a key-value pair table
function M.ADMChannelResponse(args)
	assert(args, "You must provide an argument table when creating ADMChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
	}
	asserts.AssertADMChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEmailChannelResponse = { ["EmailChannelResponse"] = true, nil }

function asserts.AssertUpdateEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEmailChannelResponse to be of type 'table'")
	assert(struct["EmailChannelResponse"], "Expected key EmailChannelResponse to exist in table")
	if struct["EmailChannelResponse"] then asserts.AssertEmailChannelResponse(struct["EmailChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEmailChannelResponse[k], "UpdateEmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEmailChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EmailChannelResponse [EmailChannelResponse] 
-- Required key: EmailChannelResponse
-- @return UpdateEmailChannelResponse structure as a key-value pair table
function M.UpdateEmailChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateEmailChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EmailChannelResponse"] = args["EmailChannelResponse"],
	}
	asserts.AssertUpdateEmailChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApnsChannelResponse = { ["APNSChannelResponse"] = true, nil }

function asserts.AssertDeleteApnsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsChannelResponse to be of type 'table'")
	assert(struct["APNSChannelResponse"], "Expected key APNSChannelResponse to exist in table")
	if struct["APNSChannelResponse"] then asserts.AssertAPNSChannelResponse(struct["APNSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApnsChannelResponse[k], "DeleteApnsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSChannelResponse [APNSChannelResponse] 
-- Required key: APNSChannelResponse
-- @return DeleteApnsChannelResponse structure as a key-value pair table
function M.DeleteApnsChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteApnsChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSChannelResponse"] = args["APNSChannelResponse"],
	}
	asserts.AssertDeleteApnsChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateImportJobResponse = { ["ImportJobResponse"] = true, nil }

function asserts.AssertCreateImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateImportJobResponse to be of type 'table'")
	assert(struct["ImportJobResponse"], "Expected key ImportJobResponse to exist in table")
	if struct["ImportJobResponse"] then asserts.AssertImportJobResponse(struct["ImportJobResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateImportJobResponse[k], "CreateImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateImportJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImportJobResponse [ImportJobResponse] 
-- Required key: ImportJobResponse
-- @return CreateImportJobResponse structure as a key-value pair table
function M.CreateImportJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateImportJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImportJobResponse"] = args["ImportJobResponse"],
	}
	asserts.AssertCreateImportJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserEndpointsRequest = { ["UserId"] = true, ["ApplicationId"] = true, nil }

function asserts.AssertGetUserEndpointsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserEndpointsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["UserId"], "Expected key UserId to exist in table")
	if struct["UserId"] then asserts.Assert__string(struct["UserId"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserEndpointsRequest[k], "GetUserEndpointsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserEndpointsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserId [__string] The unique ID of the user.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- Required key: UserId
-- @return GetUserEndpointsRequest structure as a key-value pair table
function M.GetUserEndpointsRequest(args)
	assert(args, "You must provide an argument table when creating GetUserEndpointsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{user-id}"] = args["UserId"],
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["UserId"] = args["UserId"],
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetUserEndpointsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TreatmentResource = { ["SizePercent"] = true, ["Schedule"] = true, ["TreatmentName"] = true, ["State"] = true, ["MessageConfiguration"] = true, ["Id"] = true, ["TreatmentDescription"] = true, nil }

function asserts.AssertTreatmentResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TreatmentResource to be of type 'table'")
	if struct["SizePercent"] then asserts.Assert__integer(struct["SizePercent"]) end
	if struct["Schedule"] then asserts.AssertSchedule(struct["Schedule"]) end
	if struct["TreatmentName"] then asserts.Assert__string(struct["TreatmentName"]) end
	if struct["State"] then asserts.AssertCampaignState(struct["State"]) end
	if struct["MessageConfiguration"] then asserts.AssertMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["TreatmentDescription"] then asserts.Assert__string(struct["TreatmentDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.TreatmentResource[k], "TreatmentResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TreatmentResource
-- Treatment resource
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SizePercent [__integer] The allocated percentage of users for this treatment.
-- * Schedule [Schedule] The campaign schedule.
-- * TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- * State [CampaignState] The treatment status.
-- * MessageConfiguration [MessageConfiguration] The message configuration settings.
-- * Id [__string] The unique treatment ID.
-- * TreatmentDescription [__string] A custom description for the treatment.
-- @return TreatmentResource structure as a key-value pair table
function M.TreatmentResource(args)
	assert(args, "You must provide an argument table when creating TreatmentResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SizePercent"] = args["SizePercent"],
		["Schedule"] = args["Schedule"],
		["TreatmentName"] = args["TreatmentName"],
		["State"] = args["State"],
		["MessageConfiguration"] = args["MessageConfiguration"],
		["Id"] = args["Id"],
		["TreatmentDescription"] = args["TreatmentDescription"],
	}
	asserts.AssertTreatmentResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentResponse = { ["SegmentResponse"] = true, nil }

function asserts.AssertGetSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then asserts.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentResponse[k], "GetSegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentResponse [SegmentResponse] 
-- Required key: SegmentResponse
-- @return GetSegmentResponse structure as a key-value pair table
function M.GetSegmentResponse(args)
	assert(args, "You must provide an argument table when creating GetSegmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentResponse"] = args["SegmentResponse"],
	}
	asserts.AssertGetSegmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportJobsResponse = { ["Item"] = true, ["NextToken"] = true, nil }

function asserts.AssertExportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportJobsResponse to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfExportJobResponse(struct["Item"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportJobsResponse[k], "ExportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportJobsResponse
-- Export job list.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [ListOfExportJobResponse] A list of export jobs for the application.
-- * NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
-- @return ExportJobsResponse structure as a key-value pair table
function M.ExportJobsResponse(args)
	assert(args, "You must provide an argument table when creating ExportJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertExportJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEmailChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetEmailChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEmailChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEmailChannelRequest[k], "GetEmailChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEmailChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetEmailChannelRequest structure as a key-value pair table
function M.GetEmailChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetEmailChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetEmailChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentRequest = { ["ApplicationId"] = true, ["SegmentId"] = true, nil }

function asserts.AssertGetSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentRequest[k], "GetSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * SegmentId [__string] The unique ID of the segment.
-- Required key: SegmentId
-- Required key: ApplicationId
-- @return GetSegmentRequest structure as a key-value pair table
function M.GetSegmentRequest(args)
	assert(args, "You must provide an argument table when creating GetSegmentRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{segment-id}"] = args["SegmentId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["SegmentId"] = args["SegmentId"],
	}
	asserts.AssertGetSegmentRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEventStreamRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetEventStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventStreamRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEventStreamRequest[k], "GetEventStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventStreamRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetEventStreamRequest structure as a key-value pair table
function M.GetEventStreamRequest(args)
	assert(args, "You must provide an argument table when creating GetEventStreamRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetEventStreamRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSVoipSandboxChannelResponse = { ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["HasTokenKey"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, ["DefaultAuthenticationMethod"] = true, nil }

function asserts.AssertAPNSVoipSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSVoipSandboxChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["HasTokenKey"] then asserts.Assert__boolean(struct["HasTokenKey"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	if struct["DefaultAuthenticationMethod"] then asserts.Assert__string(struct["DefaultAuthenticationMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSVoipSandboxChannelResponse[k], "APNSVoipSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSVoipSandboxChannelResponse
-- Apple VoIP Developer Push Notification Service channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedDate [__string] Last date this was updated
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] Who made the last change
-- * Platform [__string] The platform type. Will be APNS.
-- * Version [__integer] Version of channel
-- * HasTokenKey [__boolean] If the channel is registered with a token key for authentication.
-- * IsArchived [__boolean] Is this channel archived
-- * CreationDate [__string] When was this segment created
-- * ApplicationId [__string] Application id
-- * Id [__string] Channel ID. Not used, only for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- * DefaultAuthenticationMethod [__string] The default authentication method used for APNs.
-- @return APNSVoipSandboxChannelResponse structure as a key-value pair table
function M.APNSVoipSandboxChannelResponse(args)
	assert(args, "You must provide an argument table when creating APNSVoipSandboxChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["HasTokenKey"] = args["HasTokenKey"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
		["DefaultAuthenticationMethod"] = args["DefaultAuthenticationMethod"],
	}
	asserts.AssertAPNSVoipSandboxChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublicEndpoint = { ["EffectiveDate"] = true, ["OptOut"] = true, ["RequestId"] = true, ["Demographic"] = true, ["User"] = true, ["Metrics"] = true, ["Location"] = true, ["Address"] = true, ["Attributes"] = true, ["ChannelType"] = true, ["EndpointStatus"] = true, nil }

function asserts.AssertPublicEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicEndpoint to be of type 'table'")
	if struct["EffectiveDate"] then asserts.Assert__string(struct["EffectiveDate"]) end
	if struct["OptOut"] then asserts.Assert__string(struct["OptOut"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["Demographic"] then asserts.AssertEndpointDemographic(struct["Demographic"]) end
	if struct["User"] then asserts.AssertEndpointUser(struct["User"]) end
	if struct["Metrics"] then asserts.AssertMapOf__double(struct["Metrics"]) end
	if struct["Location"] then asserts.AssertEndpointLocation(struct["Location"]) end
	if struct["Address"] then asserts.Assert__string(struct["Address"]) end
	if struct["Attributes"] then asserts.AssertMapOfListOf__string(struct["Attributes"]) end
	if struct["ChannelType"] then asserts.AssertChannelType(struct["ChannelType"]) end
	if struct["EndpointStatus"] then asserts.Assert__string(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublicEndpoint[k], "PublicEndpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicEndpoint
-- Public endpoint attributes.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EffectiveDate [__string] The date and time when the endpoint was last updated.
-- * OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:
--
--ALL - User has opted out of all messages.
--
--NONE - Users has not opted out and receives all messages.
-- * RequestId [__string] A unique identifier that is generated each time the endpoint is updated.
-- * Demographic [EndpointDemographic] The endpoint demographic attributes.
-- * User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- * Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- * Location [EndpointLocation] The endpoint location attributes.
-- * Address [__string] The unique identifier for the recipient. For example, an address could be a device token or an endpoint ID.
-- * Attributes [MapOfListOf__string] Custom attributes that your app reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create a segment.
-- * ChannelType [ChannelType] The channel type.
--
--Valid values: APNS, GCM
-- * EndpointStatus [__string] The status of the endpoint. If the update fails, the value is INACTIVE. If the endpoint is updated successfully, the value is ACTIVE.
-- @return PublicEndpoint structure as a key-value pair table
function M.PublicEndpoint(args)
	assert(args, "You must provide an argument table when creating PublicEndpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EffectiveDate"] = args["EffectiveDate"],
		["OptOut"] = args["OptOut"],
		["RequestId"] = args["RequestId"],
		["Demographic"] = args["Demographic"],
		["User"] = args["User"],
		["Metrics"] = args["Metrics"],
		["Location"] = args["Location"],
		["Address"] = args["Address"],
		["Attributes"] = args["Attributes"],
		["ChannelType"] = args["ChannelType"],
		["EndpointStatus"] = args["EndpointStatus"],
	}
	asserts.AssertPublicEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEventStreamResponse = { ["EventStream"] = true, nil }

function asserts.AssertDeleteEventStreamResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventStreamResponse to be of type 'table'")
	assert(struct["EventStream"], "Expected key EventStream to exist in table")
	if struct["EventStream"] then asserts.AssertEventStream(struct["EventStream"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEventStreamResponse[k], "DeleteEventStreamResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventStreamResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventStream [EventStream] 
-- Required key: EventStream
-- @return DeleteEventStreamResponse structure as a key-value pair table
function M.DeleteEventStreamResponse(args)
	assert(args, "You must provide an argument table when creating DeleteEventStreamResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventStream"] = args["EventStream"],
	}
	asserts.AssertDeleteEventStreamResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserEndpointsResponse = { ["EndpointsResponse"] = true, nil }

function asserts.AssertGetUserEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserEndpointsResponse to be of type 'table'")
	assert(struct["EndpointsResponse"], "Expected key EndpointsResponse to exist in table")
	if struct["EndpointsResponse"] then asserts.AssertEndpointsResponse(struct["EndpointsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserEndpointsResponse[k], "GetUserEndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserEndpointsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointsResponse [EndpointsResponse] 
-- Required key: EndpointsResponse
-- @return GetUserEndpointsResponse structure as a key-value pair table
function M.GetUserEndpointsResponse(args)
	assert(args, "You must provide an argument table when creating GetUserEndpointsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointsResponse"] = args["EndpointsResponse"],
	}
	asserts.AssertGetUserEndpointsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateAdmChannelRequest = { ["ApplicationId"] = true, ["ADMChannelRequest"] = true, nil }

function asserts.AssertUpdateAdmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAdmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["ADMChannelRequest"], "Expected key ADMChannelRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["ADMChannelRequest"] then asserts.AssertADMChannelRequest(struct["ADMChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAdmChannelRequest[k], "UpdateAdmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAdmChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * ADMChannelRequest [ADMChannelRequest] 
-- Required key: ApplicationId
-- Required key: ADMChannelRequest
-- @return UpdateAdmChannelRequest structure as a key-value pair table
function M.UpdateAdmChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAdmChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["ADMChannelRequest"] = args["ADMChannelRequest"],
	}
	asserts.AssertUpdateAdmChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEndpointRequest = { ["ApplicationId"] = true, ["EndpointId"] = true, nil }

function asserts.AssertGetEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEndpointRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EndpointId"], "Expected key EndpointId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["EndpointId"] then asserts.Assert__string(struct["EndpointId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEndpointRequest[k], "GetEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * EndpointId [__string] The unique ID of the endpoint.
-- Required key: ApplicationId
-- Required key: EndpointId
-- @return GetEndpointRequest structure as a key-value pair table
function M.GetEndpointRequest(args)
	assert(args, "You must provide an argument table when creating GetEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{endpoint-id}"] = args["EndpointId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["EndpointId"] = args["EndpointId"],
	}
	asserts.AssertGetEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApnsVoipSandboxChannelResponse = { ["APNSVoipSandboxChannelResponse"] = true, nil }

function asserts.AssertGetApnsVoipSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsVoipSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSVoipSandboxChannelResponse"], "Expected key APNSVoipSandboxChannelResponse to exist in table")
	if struct["APNSVoipSandboxChannelResponse"] then asserts.AssertAPNSVoipSandboxChannelResponse(struct["APNSVoipSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApnsVoipSandboxChannelResponse[k], "GetApnsVoipSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsVoipSandboxChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSVoipSandboxChannelResponse [APNSVoipSandboxChannelResponse] 
-- Required key: APNSVoipSandboxChannelResponse
-- @return GetApnsVoipSandboxChannelResponse structure as a key-value pair table
function M.GetApnsVoipSandboxChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetApnsVoipSandboxChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSVoipSandboxChannelResponse"] = args["APNSVoipSandboxChannelResponse"],
	}
	asserts.AssertGetApnsVoipSandboxChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSmsChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetSmsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSmsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSmsChannelRequest[k], "GetSmsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSmsChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetSmsChannelRequest structure as a key-value pair table
function M.GetSmsChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetSmsChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetSmsChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentVersionRequest = { ["Version"] = true, ["ApplicationId"] = true, ["SegmentId"] = true, nil }

function asserts.AssertGetSegmentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentVersionRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Version"] then asserts.Assert__string(struct["Version"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then asserts.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentVersionRequest[k], "GetSegmentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__string] The segment version.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * SegmentId [__string] The unique ID of the segment.
-- Required key: SegmentId
-- Required key: Version
-- Required key: ApplicationId
-- @return GetSegmentVersionRequest structure as a key-value pair table
function M.GetSegmentVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetSegmentVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{version}"] = args["Version"],
        ["{application-id}"] = args["ApplicationId"],
        ["{segment-id}"] = args["SegmentId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["ApplicationId"] = args["ApplicationId"],
		["SegmentId"] = args["SegmentId"],
	}
	asserts.AssertGetSegmentVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteAppRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteAppRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAppRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAppRequest[k], "DeleteAppRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAppRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteAppRequest structure as a key-value pair table
function M.DeleteAppRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAppRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteAppRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGcmChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetGcmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGcmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGcmChannelRequest[k], "GetGcmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGcmChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetGcmChannelRequest structure as a key-value pair table
function M.GetGcmChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetGcmChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetGcmChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Session = { ["Duration"] = true, ["StartTimestamp"] = true, ["Id"] = true, ["StopTimestamp"] = true, nil }

function asserts.AssertSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Session to be of type 'table'")
	if struct["Duration"] then asserts.Assert__integer(struct["Duration"]) end
	if struct["StartTimestamp"] then asserts.Assert__string(struct["StartTimestamp"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["StopTimestamp"] then asserts.Assert__string(struct["StopTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.Session[k], "Session contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Session
-- Information about a session.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Duration [__integer] Session duration in millis
-- * StartTimestamp [__string] The date and time when the session began.
-- * Id [__string] A unique identifier for the session.
-- * StopTimestamp [__string] The date and time when the session ended.
-- @return Session structure as a key-value pair table
function M.Session(args)
	assert(args, "You must provide an argument table when creating Session")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Duration"] = args["Duration"],
		["StartTimestamp"] = args["StartTimestamp"],
		["Id"] = args["Id"],
		["StopTimestamp"] = args["StopTimestamp"],
	}
	asserts.AssertSession(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApplicationRequest = { ["Name"] = true, nil }

function asserts.AssertCreateApplicationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApplicationRequest to be of type 'table'")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApplicationRequest[k], "CreateApplicationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApplicationRequest
-- Application Request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The display name of the application. Used in the Amazon Pinpoint console.
-- @return CreateApplicationRequest structure as a key-value pair table
function M.CreateApplicationRequest(args)
	assert(args, "You must provide an argument table when creating CreateApplicationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertCreateApplicationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GPSPointDimension = { ["RangeInKilometers"] = true, ["Coordinates"] = true, nil }

function asserts.AssertGPSPointDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GPSPointDimension to be of type 'table'")
	if struct["RangeInKilometers"] then asserts.Assert__double(struct["RangeInKilometers"]) end
	if struct["Coordinates"] then asserts.AssertGPSCoordinates(struct["Coordinates"]) end
	for k,_ in pairs(struct) do
		assert(keys.GPSPointDimension[k], "GPSPointDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GPSPointDimension
-- GPS point location dimension
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RangeInKilometers [__double] Range in kilometers from the coordinate.
-- * Coordinates [GPSCoordinates] Coordinate to measure distance from.
-- @return GPSPointDimension structure as a key-value pair table
function M.GPSPointDimension(args)
	assert(args, "You must provide an argument table when creating GPSPointDimension")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RangeInKilometers"] = args["RangeInKilometers"],
		["Coordinates"] = args["Coordinates"],
	}
	asserts.AssertGPSPointDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.APNSVoipChannelResponse = { ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["HasTokenKey"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["HasCredential"] = true, ["DefaultAuthenticationMethod"] = true, nil }

function asserts.AssertAPNSVoipChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSVoipChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["HasTokenKey"] then asserts.Assert__boolean(struct["HasTokenKey"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["HasCredential"] then asserts.Assert__boolean(struct["HasCredential"]) end
	if struct["DefaultAuthenticationMethod"] then asserts.Assert__string(struct["DefaultAuthenticationMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSVoipChannelResponse[k], "APNSVoipChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSVoipChannelResponse
-- Apple VoIP Push Notification Service channel definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedDate [__string] Last date this was updated
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * LastModifiedBy [__string] Who made the last change
-- * Platform [__string] The platform type. Will be APNS.
-- * Version [__integer] Version of channel
-- * HasTokenKey [__boolean] If the channel is registered with a token key for authentication.
-- * IsArchived [__boolean] Is this channel archived
-- * CreationDate [__string] When was this segment created
-- * ApplicationId [__string] Application id
-- * Id [__string] Channel ID. Not used, only for backwards compatibility.
-- * HasCredential [__boolean] Not used. Retained for backwards compatibility.
-- * DefaultAuthenticationMethod [__string] The default authentication method used for APNs.
-- @return APNSVoipChannelResponse structure as a key-value pair table
function M.APNSVoipChannelResponse(args)
	assert(args, "You must provide an argument table when creating APNSVoipChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Enabled"] = args["Enabled"],
		["LastModifiedBy"] = args["LastModifiedBy"],
		["Platform"] = args["Platform"],
		["Version"] = args["Version"],
		["HasTokenKey"] = args["HasTokenKey"],
		["IsArchived"] = args["IsArchived"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["HasCredential"] = args["HasCredential"],
		["DefaultAuthenticationMethod"] = args["DefaultAuthenticationMethod"],
	}
	asserts.AssertAPNSVoipChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentImportResource = { ["Format"] = true, ["RoleArn"] = true, ["S3Url"] = true, ["ExternalId"] = true, ["ChannelCounts"] = true, ["Size"] = true, nil }

function asserts.AssertSegmentImportResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentImportResource to be of type 'table'")
	if struct["Format"] then asserts.AssertFormat(struct["Format"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["S3Url"] then asserts.Assert__string(struct["S3Url"]) end
	if struct["ExternalId"] then asserts.Assert__string(struct["ExternalId"]) end
	if struct["ChannelCounts"] then asserts.AssertMapOf__integer(struct["ChannelCounts"]) end
	if struct["Size"] then asserts.Assert__integer(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentImportResource[k], "SegmentImportResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentImportResource
-- Segment import definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Format [Format] The format of the endpoint files that were imported to create this segment.
--Valid values: CSV, JSON
-- * RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the endpoints in Amazon S3.
-- * S3Url [__string] The URL of the S3 bucket that the segment was imported from.
-- * ExternalId [__string] (Deprecated) Your AWS account ID, which you assigned to the ExternalID key in an IAM trust policy. Used by Amazon Pinpoint to assume an IAM role. This requirement is removed, and external IDs are not recommended for IAM roles assumed by Amazon Pinpoint.
-- * ChannelCounts [MapOf__integer] The number of channel types in the imported segment.
-- * Size [__integer] The number of endpoints that were successfully imported to create this segment.
-- @return SegmentImportResource structure as a key-value pair table
function M.SegmentImportResource(args)
	assert(args, "You must provide an argument table when creating SegmentImportResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Format"] = args["Format"],
		["RoleArn"] = args["RoleArn"],
		["S3Url"] = args["S3Url"],
		["ExternalId"] = args["ExternalId"],
		["ChannelCounts"] = args["ChannelCounts"],
		["Size"] = args["Size"],
	}
	asserts.AssertSegmentImportResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetBaiduChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertGetBaiduChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBaiduChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBaiduChannelRequest[k], "GetBaiduChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBaiduChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return GetBaiduChannelRequest structure as a key-value pair table
function M.GetBaiduChannelRequest(args)
	assert(args, "You must provide an argument table when creating GetBaiduChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertGetBaiduChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteEndpointRequest = { ["ApplicationId"] = true, ["EndpointId"] = true, nil }

function asserts.AssertDeleteEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EndpointId"], "Expected key EndpointId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["EndpointId"] then asserts.Assert__string(struct["EndpointId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEndpointRequest[k], "DeleteEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * EndpointId [__string] The unique ID of the endpoint.
-- Required key: ApplicationId
-- Required key: EndpointId
-- @return DeleteEndpointRequest structure as a key-value pair table
function M.DeleteEndpointRequest(args)
	assert(args, "You must provide an argument table when creating DeleteEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{endpoint-id}"] = args["EndpointId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["EndpointId"] = args["EndpointId"],
	}
	asserts.AssertDeleteEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGcmChannelRequest = { ["ApplicationId"] = true, ["GCMChannelRequest"] = true, nil }

function asserts.AssertUpdateGcmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGcmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["GCMChannelRequest"], "Expected key GCMChannelRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["GCMChannelRequest"] then asserts.AssertGCMChannelRequest(struct["GCMChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGcmChannelRequest[k], "UpdateGcmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGcmChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * GCMChannelRequest [GCMChannelRequest] 
-- Required key: ApplicationId
-- Required key: GCMChannelRequest
-- @return UpdateGcmChannelRequest structure as a key-value pair table
function M.UpdateGcmChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateGcmChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["GCMChannelRequest"] = args["GCMChannelRequest"],
	}
	asserts.AssertUpdateGcmChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetExportJobRequest = { ["ApplicationId"] = true, ["JobId"] = true, nil }

function asserts.AssertGetExportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExportJobRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["JobId"] then asserts.Assert__string(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExportJobRequest[k], "GetExportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExportJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * JobId [__string] The unique ID of the job.
-- Required key: ApplicationId
-- Required key: JobId
-- @return GetExportJobRequest structure as a key-value pair table
function M.GetExportJobRequest(args)
	assert(args, "You must provide an argument table when creating GetExportJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
        ["{job-id}"] = args["JobId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["JobId"] = args["JobId"],
	}
	asserts.AssertGetExportJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SetDimension = { ["DimensionType"] = true, ["Values"] = true, nil }

function asserts.AssertSetDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDimension to be of type 'table'")
	if struct["DimensionType"] then asserts.AssertDimensionType(struct["DimensionType"]) end
	if struct["Values"] then asserts.AssertListOf__string(struct["Values"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetDimension[k], "SetDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDimension
-- Dimension specification of a segment.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DimensionType [DimensionType] The type of dimension:
--INCLUSIVE - Endpoints that match the criteria are included in the segment.
--EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
-- * Values [ListOf__string] The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
-- @return SetDimension structure as a key-value pair table
function M.SetDimension(args)
	assert(args, "You must provide an argument table when creating SetDimension")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DimensionType"] = args["DimensionType"],
		["Values"] = args["Values"],
	}
	asserts.AssertSetDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGcmChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteGcmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGcmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGcmChannelRequest[k], "DeleteGcmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGcmChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteGcmChannelRequest structure as a key-value pair table
function M.DeleteGcmChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteGcmChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteGcmChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSegmentsRequest = { ["Token"] = true, ["ApplicationId"] = true, ["PageSize"] = true, nil }

function asserts.AssertGetSegmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then asserts.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSegmentsRequest[k], "GetSegmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [__string] The NextToken string returned on a previous page that you use to get the next page of results in a paginated response.
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * PageSize [__string] The number of entries you want on each page in the response.
-- Required key: ApplicationId
-- @return GetSegmentsRequest structure as a key-value pair table
function M.GetSegmentsRequest(args)
	assert(args, "You must provide an argument table when creating GetSegmentsRequest")
    local query_args = { 
        ["token"] = args["Token"],
        ["page-size"] = args["PageSize"],
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["ApplicationId"] = args["ApplicationId"],
		["PageSize"] = args["PageSize"],
	}
	asserts.AssertGetSegmentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCampaignResponse = { ["CampaignResponse"] = true, nil }

function asserts.AssertUpdateCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCampaignResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then asserts.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCampaignResponse[k], "UpdateCampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCampaignResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CampaignResponse [CampaignResponse] 
-- Required key: CampaignResponse
-- @return UpdateCampaignResponse structure as a key-value pair table
function M.UpdateCampaignResponse(args)
	assert(args, "You must provide an argument table when creating UpdateCampaignResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CampaignResponse"] = args["CampaignResponse"],
	}
	asserts.AssertUpdateCampaignResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCampaignVersionsResponse = { ["CampaignsResponse"] = true, nil }

function asserts.AssertGetCampaignVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignVersionsResponse to be of type 'table'")
	assert(struct["CampaignsResponse"], "Expected key CampaignsResponse to exist in table")
	if struct["CampaignsResponse"] then asserts.AssertCampaignsResponse(struct["CampaignsResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCampaignVersionsResponse[k], "GetCampaignVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignVersionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CampaignsResponse [CampaignsResponse] 
-- Required key: CampaignsResponse
-- @return GetCampaignVersionsResponse structure as a key-value pair table
function M.GetCampaignVersionsResponse(args)
	assert(args, "You must provide an argument table when creating GetCampaignVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CampaignsResponse"] = args["CampaignsResponse"],
	}
	asserts.AssertGetCampaignVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApnsChannelRequest = { ["ApplicationId"] = true, ["APNSChannelRequest"] = true, nil }

function asserts.AssertUpdateApnsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["APNSChannelRequest"], "Expected key APNSChannelRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["APNSChannelRequest"] then asserts.AssertAPNSChannelRequest(struct["APNSChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApnsChannelRequest[k], "UpdateApnsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * APNSChannelRequest [APNSChannelRequest] 
-- Required key: ApplicationId
-- Required key: APNSChannelRequest
-- @return UpdateApnsChannelRequest structure as a key-value pair table
function M.UpdateApnsChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApnsChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["APNSChannelRequest"] = args["APNSChannelRequest"],
	}
	asserts.AssertUpdateApnsChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointLocation = { ["City"] = true, ["Country"] = true, ["Region"] = true, ["Longitude"] = true, ["PostalCode"] = true, ["Latitude"] = true, nil }

function asserts.AssertEndpointLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointLocation to be of type 'table'")
	if struct["City"] then asserts.Assert__string(struct["City"]) end
	if struct["Country"] then asserts.Assert__string(struct["Country"]) end
	if struct["Region"] then asserts.Assert__string(struct["Region"]) end
	if struct["Longitude"] then asserts.Assert__double(struct["Longitude"]) end
	if struct["PostalCode"] then asserts.Assert__string(struct["PostalCode"]) end
	if struct["Latitude"] then asserts.Assert__double(struct["Latitude"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointLocation[k], "EndpointLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointLocation
-- Location data for the endpoint.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * City [__string] The city where the endpoint is located.
-- * Country [__string] The two-letter code for the country or region of the endpoint. Specified as an ISO 3166-1 Alpha-2 code, such as "US" for the United States.
-- * Region [__string] The region of the endpoint location. For example, in the United States, this corresponds to a state.
-- * Longitude [__double] The longitude of the endpoint location, rounded to one decimal place.
-- * PostalCode [__string] The postal code or zip code of the endpoint.
-- * Latitude [__double] The latitude of the endpoint location, rounded to one decimal place.
-- @return EndpointLocation structure as a key-value pair table
function M.EndpointLocation(args)
	assert(args, "You must provide an argument table when creating EndpointLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["City"] = args["City"],
		["Country"] = args["Country"],
		["Region"] = args["Region"],
		["Longitude"] = args["Longitude"],
		["PostalCode"] = args["PostalCode"],
		["Latitude"] = args["Latitude"],
	}
	asserts.AssertEndpointLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RecencyDimension = { ["Duration"] = true, ["RecencyType"] = true, nil }

function asserts.AssertRecencyDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecencyDimension to be of type 'table'")
	if struct["Duration"] then asserts.AssertDuration(struct["Duration"]) end
	if struct["RecencyType"] then asserts.AssertRecencyType(struct["RecencyType"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecencyDimension[k], "RecencyDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecencyDimension
-- Define how a segment based on recency of use.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Duration [Duration] The length of time during which users have been active or inactive with your app.
--Valid values: HR_24, DAY_7, DAY_14, DAY_30
-- * RecencyType [RecencyType] The recency dimension type:
--ACTIVE - Users who have used your app within the specified duration are included in the segment.
--INACTIVE - Users who have not used your app within the specified duration are included in the segment.
-- @return RecencyDimension structure as a key-value pair table
function M.RecencyDimension(args)
	assert(args, "You must provide an argument table when creating RecencyDimension")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Duration"] = args["Duration"],
		["RecencyType"] = args["RecencyType"],
	}
	asserts.AssertRecencyDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteBaiduChannelResponse = { ["BaiduChannelResponse"] = true, nil }

function asserts.AssertDeleteBaiduChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBaiduChannelResponse to be of type 'table'")
	assert(struct["BaiduChannelResponse"], "Expected key BaiduChannelResponse to exist in table")
	if struct["BaiduChannelResponse"] then asserts.AssertBaiduChannelResponse(struct["BaiduChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBaiduChannelResponse[k], "DeleteBaiduChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBaiduChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaiduChannelResponse [BaiduChannelResponse] 
-- Required key: BaiduChannelResponse
-- @return DeleteBaiduChannelResponse structure as a key-value pair table
function M.DeleteBaiduChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteBaiduChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BaiduChannelResponse"] = args["BaiduChannelResponse"],
	}
	asserts.AssertDeleteBaiduChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WriteApplicationSettingsRequest = { ["QuietTime"] = true, ["CampaignHook"] = true, ["Limits"] = true, ["CloudWatchMetricsEnabled"] = true, nil }

function asserts.AssertWriteApplicationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteApplicationSettingsRequest to be of type 'table'")
	if struct["QuietTime"] then asserts.AssertQuietTime(struct["QuietTime"]) end
	if struct["CampaignHook"] then asserts.AssertCampaignHook(struct["CampaignHook"]) end
	if struct["Limits"] then asserts.AssertCampaignLimits(struct["Limits"]) end
	if struct["CloudWatchMetricsEnabled"] then asserts.Assert__boolean(struct["CloudWatchMetricsEnabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteApplicationSettingsRequest[k], "WriteApplicationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteApplicationSettingsRequest
-- Creating application setting request
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QuietTime [QuietTime] The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
-- * CampaignHook [CampaignHook] Default campaign hook information.
-- * Limits [CampaignLimits] The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
-- * CloudWatchMetricsEnabled [__boolean] The CloudWatchMetrics settings for the app.
-- @return WriteApplicationSettingsRequest structure as a key-value pair table
function M.WriteApplicationSettingsRequest(args)
	assert(args, "You must provide an argument table when creating WriteApplicationSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QuietTime"] = args["QuietTime"],
		["CampaignHook"] = args["CampaignHook"],
		["Limits"] = args["Limits"],
		["CloudWatchMetricsEnabled"] = args["CloudWatchMetricsEnabled"],
	}
	asserts.AssertWriteApplicationSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AttributeDimension = { ["Values"] = true, ["AttributeType"] = true, nil }

function asserts.AssertAttributeDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeDimension to be of type 'table'")
	if struct["Values"] then asserts.AssertListOf__string(struct["Values"]) end
	if struct["AttributeType"] then asserts.AssertAttributeType(struct["AttributeType"]) end
	for k,_ in pairs(struct) do
		assert(keys.AttributeDimension[k], "AttributeDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeDimension
-- Custom attibute dimension
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [ListOf__string] The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
-- * AttributeType [AttributeType] The type of dimension:
--INCLUSIVE - Endpoints that match the criteria are included in the segment.
--EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
-- @return AttributeDimension structure as a key-value pair table
function M.AttributeDimension(args)
	assert(args, "You must provide an argument table when creating AttributeDimension")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["AttributeType"] = args["AttributeType"],
	}
	asserts.AssertAttributeDimension(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGcmChannelResponse = { ["GCMChannelResponse"] = true, nil }

function asserts.AssertGetGcmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGcmChannelResponse to be of type 'table'")
	assert(struct["GCMChannelResponse"], "Expected key GCMChannelResponse to exist in table")
	if struct["GCMChannelResponse"] then asserts.AssertGCMChannelResponse(struct["GCMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGcmChannelResponse[k], "GetGcmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGcmChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GCMChannelResponse [GCMChannelResponse] 
-- Required key: GCMChannelResponse
-- @return GetGcmChannelResponse structure as a key-value pair table
function M.GetGcmChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetGcmChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GCMChannelResponse"] = args["GCMChannelResponse"],
	}
	asserts.AssertGetGcmChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EndpointBatchRequest = { ["Item"] = true, nil }

function asserts.AssertEndpointBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointBatchRequest to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfEndpointBatchItem(struct["Item"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointBatchRequest[k], "EndpointBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointBatchRequest
-- Endpoint batch update request.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [ListOfEndpointBatchItem] List of items to update. Maximum 100 items
-- @return EndpointBatchRequest structure as a key-value pair table
function M.EndpointBatchRequest(args)
	assert(args, "You must provide an argument table when creating EndpointBatchRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
	}
	asserts.AssertEndpointBatchRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentReference = { ["Version"] = true, ["Id"] = true, nil }

function asserts.AssertSegmentReference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentReference to be of type 'table'")
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentReference[k], "SegmentReference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentReference
-- Segment reference.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Version [__integer] If specified contains a specific version of the segment included.
-- * Id [__string] A unique identifier for the segment.
-- @return SegmentReference structure as a key-value pair table
function M.SegmentReference(args)
	assert(args, "You must provide an argument table when creating SegmentReference")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Version"] = args["Version"],
		["Id"] = args["Id"],
	}
	asserts.AssertSegmentReference(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApnsVoipSandboxChannelRequest = { ["ApplicationId"] = true, ["APNSVoipSandboxChannelRequest"] = true, nil }

function asserts.AssertUpdateApnsVoipSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsVoipSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["APNSVoipSandboxChannelRequest"], "Expected key APNSVoipSandboxChannelRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["APNSVoipSandboxChannelRequest"] then asserts.AssertAPNSVoipSandboxChannelRequest(struct["APNSVoipSandboxChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApnsVoipSandboxChannelRequest[k], "UpdateApnsVoipSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsVoipSandboxChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * APNSVoipSandboxChannelRequest [APNSVoipSandboxChannelRequest] 
-- Required key: ApplicationId
-- Required key: APNSVoipSandboxChannelRequest
-- @return UpdateApnsVoipSandboxChannelRequest structure as a key-value pair table
function M.UpdateApnsVoipSandboxChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApnsVoipSandboxChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["APNSVoipSandboxChannelRequest"] = args["APNSVoipSandboxChannelRequest"],
	}
	asserts.AssertUpdateApnsVoipSandboxChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApnsSandboxChannelRequest = { ["ApplicationId"] = true, nil }

function asserts.AssertDeleteApnsSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApnsSandboxChannelRequest[k], "DeleteApnsSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsSandboxChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- Required key: ApplicationId
-- @return DeleteApnsSandboxChannelRequest structure as a key-value pair table
function M.DeleteApnsSandboxChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteApnsSandboxChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
	}
	asserts.AssertDeleteApnsSandboxChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetApnsSandboxChannelResponse = { ["APNSSandboxChannelResponse"] = true, nil }

function asserts.AssertGetApnsSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSSandboxChannelResponse"], "Expected key APNSSandboxChannelResponse to exist in table")
	if struct["APNSSandboxChannelResponse"] then asserts.AssertAPNSSandboxChannelResponse(struct["APNSSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetApnsSandboxChannelResponse[k], "GetApnsSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsSandboxChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * APNSSandboxChannelResponse [APNSSandboxChannelResponse] 
-- Required key: APNSSandboxChannelResponse
-- @return GetApnsSandboxChannelResponse structure as a key-value pair table
function M.GetApnsSandboxChannelResponse(args)
	assert(args, "You must provide an argument table when creating GetApnsSandboxChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["APNSSandboxChannelResponse"] = args["APNSSandboxChannelResponse"],
	}
	asserts.AssertGetApnsSandboxChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SegmentResponse = { ["Dimensions"] = true, ["SegmentGroups"] = true, ["LastModifiedDate"] = true, ["SegmentType"] = true, ["Version"] = true, ["ImportDefinition"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentResponse to be of type 'table'")
	if struct["Dimensions"] then asserts.AssertSegmentDimensions(struct["Dimensions"]) end
	if struct["SegmentGroups"] then asserts.AssertSegmentGroupList(struct["SegmentGroups"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["SegmentType"] then asserts.AssertSegmentType(struct["SegmentType"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["ImportDefinition"] then asserts.AssertSegmentImportResource(struct["ImportDefinition"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentResponse[k], "SegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentResponse
-- Segment definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Dimensions [SegmentDimensions] The segment dimensions attributes.
-- * SegmentGroups [SegmentGroupList] A segment group, which consists of zero or more source segments, plus dimensions that are applied to those source segments.
-- * LastModifiedDate [__string] The date and time when the segment was last modified.
-- * SegmentType [SegmentType] The segment type:
--DIMENSIONAL - A dynamic segment built from selection criteria based on endpoint data reported by your app. You create this type of segment by using the segment builder in the Amazon Pinpoint console or by making a POST request to the segments resource.
--IMPORT - A static segment built from an imported set of endpoint definitions. You create this type of segment by importing a segment in the Amazon Pinpoint console or by making a POST request to the jobs/import resource.
-- * Version [__integer] The segment version number.
-- * ImportDefinition [SegmentImportResource] The import job settings.
-- * CreationDate [__string] The date and time when the segment was created.
-- * ApplicationId [__string] The ID of the application that the segment applies to.
-- * Id [__string] The unique segment ID.
-- * Name [__string] The name of the segment.
-- @return SegmentResponse structure as a key-value pair table
function M.SegmentResponse(args)
	assert(args, "You must provide an argument table when creating SegmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Dimensions"] = args["Dimensions"],
		["SegmentGroups"] = args["SegmentGroups"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["SegmentType"] = args["SegmentType"],
		["Version"] = args["Version"],
		["ImportDefinition"] = args["ImportDefinition"],
		["CreationDate"] = args["CreationDate"],
		["ApplicationId"] = args["ApplicationId"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertSegmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateEmailChannelRequest = { ["ApplicationId"] = true, ["EmailChannelRequest"] = true, nil }

function asserts.AssertUpdateEmailChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEmailChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EmailChannelRequest"], "Expected key EmailChannelRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["EmailChannelRequest"] then asserts.AssertEmailChannelRequest(struct["EmailChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateEmailChannelRequest[k], "UpdateEmailChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEmailChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * EmailChannelRequest [EmailChannelRequest] 
-- Required key: ApplicationId
-- Required key: EmailChannelRequest
-- @return UpdateEmailChannelRequest structure as a key-value pair table
function M.UpdateEmailChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateEmailChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["EmailChannelRequest"] = args["EmailChannelRequest"],
	}
	asserts.AssertUpdateEmailChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SMSChannelRequest = { ["SenderId"] = true, ["Enabled"] = true, ["ShortCode"] = true, nil }

function asserts.AssertSMSChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSChannelRequest to be of type 'table'")
	if struct["SenderId"] then asserts.Assert__string(struct["SenderId"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["ShortCode"] then asserts.Assert__string(struct["ShortCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.SMSChannelRequest[k], "SMSChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSChannelRequest
-- SMS Channel Request
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SenderId [__string] Sender identifier of your messages.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * ShortCode [__string] ShortCode registered with phone provider.
-- @return SMSChannelRequest structure as a key-value pair table
function M.SMSChannelRequest(args)
	assert(args, "You must provide an argument table when creating SMSChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SenderId"] = args["SenderId"],
		["Enabled"] = args["Enabled"],
		["ShortCode"] = args["ShortCode"],
	}
	asserts.AssertSMSChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmailChannelRequest = { ["RoleArn"] = true, ["FromAddress"] = true, ["Enabled"] = true, ["Identity"] = true, nil }

function asserts.AssertEmailChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmailChannelRequest to be of type 'table'")
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["FromAddress"] then asserts.Assert__string(struct["FromAddress"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["Identity"] then asserts.Assert__string(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmailChannelRequest[k], "EmailChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmailChannelRequest
-- Email Channel Request
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RoleArn [__string] The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
-- * FromAddress [__string] The email address used to send emails from.
-- * Enabled [__boolean] If the channel is enabled for sending messages.
-- * Identity [__string] The ARN of an identity verified with SES.
-- @return EmailChannelRequest structure as a key-value pair table
function M.EmailChannelRequest(args)
	assert(args, "You must provide an argument table when creating EmailChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RoleArn"] = args["RoleArn"],
		["FromAddress"] = args["FromAddress"],
		["Enabled"] = args["Enabled"],
		["Identity"] = args["Identity"],
	}
	asserts.AssertEmailChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MessageConfiguration = { ["BaiduMessage"] = true, ["APNSMessage"] = true, ["SMSMessage"] = true, ["EmailMessage"] = true, ["DefaultMessage"] = true, ["GCMMessage"] = true, ["ADMMessage"] = true, nil }

function asserts.AssertMessageConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageConfiguration to be of type 'table'")
	if struct["BaiduMessage"] then asserts.AssertMessage(struct["BaiduMessage"]) end
	if struct["APNSMessage"] then asserts.AssertMessage(struct["APNSMessage"]) end
	if struct["SMSMessage"] then asserts.AssertCampaignSmsMessage(struct["SMSMessage"]) end
	if struct["EmailMessage"] then asserts.AssertCampaignEmailMessage(struct["EmailMessage"]) end
	if struct["DefaultMessage"] then asserts.AssertMessage(struct["DefaultMessage"]) end
	if struct["GCMMessage"] then asserts.AssertMessage(struct["GCMMessage"]) end
	if struct["ADMMessage"] then asserts.AssertMessage(struct["ADMMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageConfiguration[k], "MessageConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageConfiguration
-- Message configuration for a campaign.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaiduMessage [Message] The message that the campaign delivers to Baidu channels. Overrides the default message.
-- * APNSMessage [Message] The message that the campaign delivers to APNS channels. Overrides the default message.
-- * SMSMessage [CampaignSmsMessage] The SMS message configuration.
-- * EmailMessage [CampaignEmailMessage] The email message configuration.
-- * DefaultMessage [Message] The default message for all channels.
-- * GCMMessage [Message] The message that the campaign delivers to GCM channels. Overrides the default message.
-- * ADMMessage [Message] The message that the campaign delivers to ADM channels. Overrides the default message.
-- @return MessageConfiguration structure as a key-value pair table
function M.MessageConfiguration(args)
	assert(args, "You must provide an argument table when creating MessageConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BaiduMessage"] = args["BaiduMessage"],
		["APNSMessage"] = args["APNSMessage"],
		["SMSMessage"] = args["SMSMessage"],
		["EmailMessage"] = args["EmailMessage"],
		["DefaultMessage"] = args["DefaultMessage"],
		["GCMMessage"] = args["GCMMessage"],
		["ADMMessage"] = args["ADMMessage"],
	}
	asserts.AssertMessageConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSegmentResponse = { ["SegmentResponse"] = true, nil }

function asserts.AssertUpdateSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSegmentResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then asserts.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSegmentResponse[k], "UpdateSegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSegmentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentResponse [SegmentResponse] 
-- Required key: SegmentResponse
-- @return UpdateSegmentResponse structure as a key-value pair table
function M.UpdateSegmentResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSegmentResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentResponse"] = args["SegmentResponse"],
	}
	asserts.AssertUpdateSegmentResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivitiesResponse = { ["Item"] = true, ["NextToken"] = true, nil }

function asserts.AssertActivitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivitiesResponse to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfActivityResponse(struct["Item"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivitiesResponse[k], "ActivitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivitiesResponse
-- Activities for campaign.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Item [ListOfActivityResponse] List of campaign activities
-- * NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
-- @return ActivitiesResponse structure as a key-value pair table
function M.ActivitiesResponse(args)
	assert(args, "You must provide an argument table when creating ActivitiesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Item"] = args["Item"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertActivitiesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateSmsChannelRequest = { ["ApplicationId"] = true, ["SMSChannelRequest"] = true, nil }

function asserts.AssertUpdateSmsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSmsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["SMSChannelRequest"], "Expected key SMSChannelRequest to exist in table")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["SMSChannelRequest"] then asserts.AssertSMSChannelRequest(struct["SMSChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSmsChannelRequest[k], "UpdateSmsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSmsChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApplicationId [__string] The unique ID of your Amazon Pinpoint application.
-- * SMSChannelRequest [SMSChannelRequest] 
-- Required key: ApplicationId
-- Required key: SMSChannelRequest
-- @return UpdateSmsChannelRequest structure as a key-value pair table
function M.UpdateSmsChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSmsChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{application-id}"] = args["ApplicationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ApplicationId"] = args["ApplicationId"],
		["SMSChannelRequest"] = args["SMSChannelRequest"],
	}
	asserts.AssertUpdateSmsChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
end

--  
function M.MessageType(str)
	asserts.AssertMessageType(str)
	return str
end

function asserts.AssertDimensionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionType to be of type 'string'")
end

--  
function M.DimensionType(str)
	asserts.AssertDimensionType(str)
	return str
end

function asserts.AssertCampaignStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CampaignStatus to be of type 'string'")
end

--  
function M.CampaignStatus(str)
	asserts.AssertCampaignStatus(str)
	return str
end

function asserts.AssertType(str)
	assert(str)
	assert(type(str) == "string", "Expected Type to be of type 'string'")
end

--  
function M.Type(str)
	asserts.AssertType(str)
	return str
end

function asserts.AssertRecencyType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecencyType to be of type 'string'")
end

--  
function M.RecencyType(str)
	asserts.AssertRecencyType(str)
	return str
end

function asserts.AssertChannelType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelType to be of type 'string'")
end

--  
function M.ChannelType(str)
	asserts.AssertChannelType(str)
	return str
end

function asserts.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
end

--  
function M.JobStatus(str)
	asserts.AssertJobStatus(str)
	return str
end

function asserts.AssertSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected SourceType to be of type 'string'")
end

--  
function M.SourceType(str)
	asserts.AssertSourceType(str)
	return str
end

function asserts.AssertInclude(str)
	assert(str)
	assert(type(str) == "string", "Expected Include to be of type 'string'")
end

--  
function M.Include(str)
	asserts.AssertInclude(str)
	return str
end

function asserts.AssertAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeType to be of type 'string'")
end

--  
function M.AttributeType(str)
	asserts.AssertAttributeType(str)
	return str
end

function asserts.AssertSegmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected SegmentType to be of type 'string'")
end

--  
function M.SegmentType(str)
	asserts.AssertSegmentType(str)
	return str
end

function asserts.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
end

--  
function M.Action(str)
	asserts.AssertAction(str)
	return str
end

function asserts.AssertFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected Frequency to be of type 'string'")
end

--  
function M.Frequency(str)
	asserts.AssertFrequency(str)
	return str
end

function asserts.AssertMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Mode to be of type 'string'")
end

--  
function M.Mode(str)
	asserts.AssertMode(str)
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

function asserts.AssertDeliveryStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStatus to be of type 'string'")
end

--  
function M.DeliveryStatus(str)
	asserts.AssertDeliveryStatus(str)
	return str
end

function asserts.AssertFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected Format to be of type 'string'")
end

--  
function M.Format(str)
	asserts.AssertFormat(str)
	return str
end

function asserts.AssertDuration(str)
	assert(str)
	assert(type(str) == "string", "Expected Duration to be of type 'string'")
end

--  
function M.Duration(str)
	asserts.AssertDuration(str)
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

function asserts.Assert__long(long)
	assert(long)
	assert(type(long) == "number", "Expected __long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.__long(long)
	asserts.Assert__long(long)
	return long
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

function asserts.AssertMapOfListOf__string(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfListOf__string to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertListOf__string(v)
	end
end

function M.MapOfListOf__string(map)
	asserts.AssertMapOfListOf__string(map)
	return map
end

function asserts.AssertMapOf__integer(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOf__integer to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.Assert__integer(v)
	end
end

function M.MapOf__integer(map)
	asserts.AssertMapOf__integer(map)
	return map
end

function asserts.AssertMapOf__double(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOf__double to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.Assert__double(v)
	end
end

function M.MapOf__double(map)
	asserts.AssertMapOf__double(map)
	return map
end

function asserts.AssertMapOfAttributeDimension(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfAttributeDimension to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertAttributeDimension(v)
	end
end

function M.MapOfAttributeDimension(map)
	asserts.AssertMapOfAttributeDimension(map)
	return map
end

function asserts.AssertMapOfEventItemResponse(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfEventItemResponse to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertEventItemResponse(v)
	end
end

function M.MapOfEventItemResponse(map)
	asserts.AssertMapOfEventItemResponse(map)
	return map
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

function asserts.AssertMapOfMessageResult(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMessageResult to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertMessageResult(v)
	end
end

function M.MapOfMessageResult(map)
	asserts.AssertMapOfMessageResult(map)
	return map
end

function asserts.AssertMapOfEndpointMessageResult(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfEndpointMessageResult to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertEndpointMessageResult(v)
	end
end

function M.MapOfEndpointMessageResult(map)
	asserts.AssertMapOfEndpointMessageResult(map)
	return map
end

function asserts.AssertMapOfEventsBatch(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfEventsBatch to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertEventsBatch(v)
	end
end

function M.MapOfEventsBatch(map)
	asserts.AssertMapOfEventsBatch(map)
	return map
end

function asserts.AssertMapOfChannelResponse(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfChannelResponse to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertChannelResponse(v)
	end
end

function M.MapOfChannelResponse(map)
	asserts.AssertMapOfChannelResponse(map)
	return map
end

function asserts.AssertMapOfMapOfEndpointMessageResult(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMapOfEndpointMessageResult to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertMapOfEndpointMessageResult(v)
	end
end

function M.MapOfMapOfEndpointMessageResult(map)
	asserts.AssertMapOfMapOfEndpointMessageResult(map)
	return map
end

function asserts.AssertMapOfMetricDimension(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMetricDimension to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertMetricDimension(v)
	end
end

function M.MapOfMetricDimension(map)
	asserts.AssertMapOfMetricDimension(map)
	return map
end

function asserts.AssertMapOfItemResponse(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfItemResponse to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertItemResponse(v)
	end
end

function M.MapOfItemResponse(map)
	asserts.AssertMapOfItemResponse(map)
	return map
end

function asserts.AssertMapOfEndpointSendConfiguration(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfEndpointSendConfiguration to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertEndpointSendConfiguration(v)
	end
end

function M.MapOfEndpointSendConfiguration(map)
	asserts.AssertMapOfEndpointSendConfiguration(map)
	return map
end

function asserts.AssertMapOfAddressConfiguration(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfAddressConfiguration to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertAddressConfiguration(v)
	end
end

function M.MapOfAddressConfiguration(map)
	asserts.AssertMapOfAddressConfiguration(map)
	return map
end

function asserts.AssertMapOfEvent(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfEvent to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertEvent(v)
	end
end

function M.MapOfEvent(map)
	asserts.AssertMapOfEvent(map)
	return map
end

function asserts.Assert__timestampIso8601(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestampIso8601 to be of type 'string'")
end

function M.__timestampIso8601(timestamp)
	asserts.Assert__timestampIso8601(timestamp)
	return timestamp
end

function asserts.Assert__timestampUnix(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestampUnix to be of type 'string'")
end

function M.__timestampUnix(timestamp)
	asserts.Assert__timestampUnix(timestamp)
	return timestamp
end

function asserts.AssertListOfEndpointResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfEndpointResponse to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpointResponse(v)
	end
end

--  
-- List of EndpointResponse objects
function M.ListOfEndpointResponse(list)
	asserts.AssertListOfEndpointResponse(list)
	return list
end

function asserts.AssertListOfActivityResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfActivityResponse to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActivityResponse(v)
	end
end

--  
-- List of ActivityResponse objects
function M.ListOfActivityResponse(list)
	asserts.AssertListOfActivityResponse(list)
	return list
end

function asserts.AssertListOfEndpointBatchItem(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfEndpointBatchItem to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpointBatchItem(v)
	end
end

--  
-- List of EndpointBatchItem objects
function M.ListOfEndpointBatchItem(list)
	asserts.AssertListOfEndpointBatchItem(list)
	return list
end

function asserts.AssertListOfImportJobResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfImportJobResponse to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertImportJobResponse(v)
	end
end

--  
-- List of ImportJobResponse objects
function M.ListOfImportJobResponse(list)
	asserts.AssertListOfImportJobResponse(list)
	return list
end

function asserts.AssertListOfExportJobResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfExportJobResponse to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExportJobResponse(v)
	end
end

--  
-- List of ExportJobResponse objects
function M.ListOfExportJobResponse(list)
	asserts.AssertListOfExportJobResponse(list)
	return list
end

function asserts.AssertListOf__string(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOf__string to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__string(v)
	end
end

--  
-- List of __string objects
function M.ListOf__string(list)
	asserts.AssertListOf__string(list)
	return list
end

function asserts.AssertListOfSegmentGroup(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSegmentGroup to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSegmentGroup(v)
	end
end

--  
-- List of SegmentGroup objects
function M.ListOfSegmentGroup(list)
	asserts.AssertListOfSegmentGroup(list)
	return list
end

function asserts.AssertListOfCampaignResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfCampaignResponse to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCampaignResponse(v)
	end
end

--  
-- List of CampaignResponse objects
function M.ListOfCampaignResponse(list)
	asserts.AssertListOfCampaignResponse(list)
	return list
end

function asserts.AssertListOfSegmentReference(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSegmentReference to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSegmentReference(v)
	end
end

--  
-- List of SegmentReference objects
function M.ListOfSegmentReference(list)
	asserts.AssertListOfSegmentReference(list)
	return list
end

function asserts.AssertListOfApplicationResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfApplicationResponse to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApplicationResponse(v)
	end
end

--  
-- List of ApplicationResponse objects
function M.ListOfApplicationResponse(list)
	asserts.AssertListOfApplicationResponse(list)
	return list
end

function asserts.AssertListOfSegmentDimensions(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSegmentDimensions to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSegmentDimensions(v)
	end
end

--  
-- List of SegmentDimensions objects
function M.ListOfSegmentDimensions(list)
	asserts.AssertListOfSegmentDimensions(list)
	return list
end

function asserts.AssertListOfWriteTreatmentResource(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfWriteTreatmentResource to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWriteTreatmentResource(v)
	end
end

--  
-- List of WriteTreatmentResource objects
function M.ListOfWriteTreatmentResource(list)
	asserts.AssertListOfWriteTreatmentResource(list)
	return list
end

function asserts.AssertListOfSegmentResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSegmentResponse to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSegmentResponse(v)
	end
end

--  
-- List of SegmentResponse objects
function M.ListOfSegmentResponse(list)
	asserts.AssertListOfSegmentResponse(list)
	return list
end

function asserts.AssertListOfTreatmentResource(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfTreatmentResource to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTreatmentResource(v)
	end
end

--  
-- List of TreatmentResource objects
function M.ListOfTreatmentResource(list)
	asserts.AssertListOfTreatmentResource(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "pinpoint.amazonaws.com"
		end
	end
	local ss = { "pinpoint" }
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
--- Call UpdateSegment asynchronously, invoking a callback when done
-- @param UpdateSegmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSegmentAsync(UpdateSegmentRequest, cb)
	assert(UpdateSegmentRequest, "You must provide a UpdateSegmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateSegment",
	}
	for header,value in pairs(UpdateSegmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments/{segment-id}", UpdateSegmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSegment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSegmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSegmentSync(UpdateSegmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSegmentAsync(UpdateSegmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSegment asynchronously, invoking a callback when done
-- @param CreateSegmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSegmentAsync(CreateSegmentRequest, cb)
	assert(CreateSegmentRequest, "You must provide a CreateSegmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSegment",
	}
	for header,value in pairs(CreateSegmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments", CreateSegmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSegment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSegmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSegmentSync(CreateSegmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSegmentAsync(CreateSegmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetExportJob asynchronously, invoking a callback when done
-- @param GetExportJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetExportJobAsync(GetExportJobRequest, cb)
	assert(GetExportJobRequest, "You must provide a GetExportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetExportJob",
	}
	for header,value in pairs(GetExportJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/jobs/export/{job-id}", GetExportJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetExportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetExportJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetExportJobSync(GetExportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetExportJobAsync(GetExportJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApnsVoipSandboxChannel asynchronously, invoking a callback when done
-- @param UpdateApnsVoipSandboxChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApnsVoipSandboxChannelAsync(UpdateApnsVoipSandboxChannelRequest, cb)
	assert(UpdateApnsVoipSandboxChannelRequest, "You must provide a UpdateApnsVoipSandboxChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApnsVoipSandboxChannel",
	}
	for header,value in pairs(UpdateApnsVoipSandboxChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_voip_sandbox", UpdateApnsVoipSandboxChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApnsVoipSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApnsVoipSandboxChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApnsVoipSandboxChannelSync(UpdateApnsVoipSandboxChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApnsVoipSandboxChannelAsync(UpdateApnsVoipSandboxChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCampaign asynchronously, invoking a callback when done
-- @param UpdateCampaignRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateCampaignAsync(UpdateCampaignRequest, cb)
	assert(UpdateCampaignRequest, "You must provide a UpdateCampaignRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateCampaign",
	}
	for header,value in pairs(UpdateCampaignRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/campaigns/{campaign-id}", UpdateCampaignRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCampaign synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCampaignRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateCampaignSync(UpdateCampaignRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCampaignAsync(UpdateCampaignRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetImportJobs asynchronously, invoking a callback when done
-- @param GetImportJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetImportJobsAsync(GetImportJobsRequest, cb)
	assert(GetImportJobsRequest, "You must provide a GetImportJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetImportJobs",
	}
	for header,value in pairs(GetImportJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/jobs/import", GetImportJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetImportJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetImportJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetImportJobsSync(GetImportJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetImportJobsAsync(GetImportJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApps asynchronously, invoking a callback when done
-- @param GetAppsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAppsAsync(GetAppsRequest, cb)
	assert(GetAppsRequest, "You must provide a GetAppsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApps",
	}
	for header,value in pairs(GetAppsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps", GetAppsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApps synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAppsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAppsSync(GetAppsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAppsAsync(GetAppsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegmentVersion asynchronously, invoking a callback when done
-- @param GetSegmentVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSegmentVersionAsync(GetSegmentVersionRequest, cb)
	assert(GetSegmentVersionRequest, "You must provide a GetSegmentVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSegmentVersion",
	}
	for header,value in pairs(GetSegmentVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", GetSegmentVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSegmentVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSegmentVersionSync(GetSegmentVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentVersionAsync(GetSegmentVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApnsSandboxChannel asynchronously, invoking a callback when done
-- @param DeleteApnsSandboxChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApnsSandboxChannelAsync(DeleteApnsSandboxChannelRequest, cb)
	assert(DeleteApnsSandboxChannelRequest, "You must provide a DeleteApnsSandboxChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApnsSandboxChannel",
	}
	for header,value in pairs(DeleteApnsSandboxChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_sandbox", DeleteApnsSandboxChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApnsSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApnsSandboxChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApnsSandboxChannelSync(DeleteApnsSandboxChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApnsSandboxChannelAsync(DeleteApnsSandboxChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSmsChannel asynchronously, invoking a callback when done
-- @param GetSmsChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSmsChannelAsync(GetSmsChannelRequest, cb)
	assert(GetSmsChannelRequest, "You must provide a GetSmsChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSmsChannel",
	}
	for header,value in pairs(GetSmsChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/sms", GetSmsChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSmsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSmsChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSmsChannelSync(GetSmsChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSmsChannelAsync(GetSmsChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApnsVoipSandboxChannel asynchronously, invoking a callback when done
-- @param DeleteApnsVoipSandboxChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApnsVoipSandboxChannelAsync(DeleteApnsVoipSandboxChannelRequest, cb)
	assert(DeleteApnsVoipSandboxChannelRequest, "You must provide a DeleteApnsVoipSandboxChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApnsVoipSandboxChannel",
	}
	for header,value in pairs(DeleteApnsVoipSandboxChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_voip_sandbox", DeleteApnsVoipSandboxChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApnsVoipSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApnsVoipSandboxChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApnsVoipSandboxChannelSync(DeleteApnsVoipSandboxChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApnsVoipSandboxChannelAsync(DeleteApnsVoipSandboxChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGcmChannel asynchronously, invoking a callback when done
-- @param DeleteGcmChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGcmChannelAsync(DeleteGcmChannelRequest, cb)
	assert(DeleteGcmChannelRequest, "You must provide a DeleteGcmChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteGcmChannel",
	}
	for header,value in pairs(DeleteGcmChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/gcm", DeleteGcmChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGcmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGcmChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGcmChannelSync(DeleteGcmChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGcmChannelAsync(DeleteGcmChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApp asynchronously, invoking a callback when done
-- @param GetAppRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAppAsync(GetAppRequest, cb)
	assert(GetAppRequest, "You must provide a GetAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApp",
	}
	for header,value in pairs(GetAppRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}", GetAppRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAppRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAppSync(GetAppRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAppAsync(GetAppRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetChannels asynchronously, invoking a callback when done
-- @param GetChannelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetChannelsAsync(GetChannelsRequest, cb)
	assert(GetChannelsRequest, "You must provide a GetChannelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetChannels",
	}
	for header,value in pairs(GetChannelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels", GetChannelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetChannels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetChannelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetChannelsSync(GetChannelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetChannelsAsync(GetChannelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCampaign asynchronously, invoking a callback when done
-- @param DeleteCampaignRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCampaignAsync(DeleteCampaignRequest, cb)
	assert(DeleteCampaignRequest, "You must provide a DeleteCampaignRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteCampaign",
	}
	for header,value in pairs(DeleteCampaignRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/campaigns/{campaign-id}", DeleteCampaignRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCampaign synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCampaignRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCampaignSync(DeleteCampaignRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCampaignAsync(DeleteCampaignRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetImportJob asynchronously, invoking a callback when done
-- @param GetImportJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetImportJobAsync(GetImportJobRequest, cb)
	assert(GetImportJobRequest, "You must provide a GetImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetImportJob",
	}
	for header,value in pairs(GetImportJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/jobs/import/{job-id}", GetImportJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetImportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetImportJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetImportJobSync(GetImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetImportJobAsync(GetImportJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCampaign asynchronously, invoking a callback when done
-- @param CreateCampaignRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCampaignAsync(CreateCampaignRequest, cb)
	assert(CreateCampaignRequest, "You must provide a CreateCampaignRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateCampaign",
	}
	for header,value in pairs(CreateCampaignRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/campaigns", CreateCampaignRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCampaign synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCampaignRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCampaignSync(CreateCampaignRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCampaignAsync(CreateCampaignRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEndpoint asynchronously, invoking a callback when done
-- @param DeleteEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEndpointAsync(DeleteEndpointRequest, cb)
	assert(DeleteEndpointRequest, "You must provide a DeleteEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEndpoint",
	}
	for header,value in pairs(DeleteEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/endpoints/{endpoint-id}", DeleteEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEndpointSync(DeleteEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEndpointAsync(DeleteEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateImportJob asynchronously, invoking a callback when done
-- @param CreateImportJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateImportJobAsync(CreateImportJobRequest, cb)
	assert(CreateImportJobRequest, "You must provide a CreateImportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateImportJob",
	}
	for header,value in pairs(CreateImportJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/jobs/import", CreateImportJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateImportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateImportJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateImportJobSync(CreateImportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateImportJobAsync(CreateImportJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutEvents asynchronously, invoking a callback when done
-- @param PutEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutEventsAsync(PutEventsRequest, cb)
	assert(PutEventsRequest, "You must provide a PutEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutEvents",
	}
	for header,value in pairs(PutEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/events", PutEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutEventsSync(PutEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEventsAsync(PutEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveAttributes asynchronously, invoking a callback when done
-- @param RemoveAttributesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveAttributesAsync(RemoveAttributesRequest, cb)
	assert(RemoveAttributesRequest, "You must provide a RemoveAttributesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemoveAttributes",
	}
	for header,value in pairs(RemoveAttributesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/attributes/{attribute-type}", RemoveAttributesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveAttributesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveAttributesSync(RemoveAttributesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveAttributesAsync(RemoveAttributesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaignVersion asynchronously, invoking a callback when done
-- @param GetCampaignVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCampaignVersionAsync(GetCampaignVersionRequest, cb)
	assert(GetCampaignVersionRequest, "You must provide a GetCampaignVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCampaignVersion",
	}
	for header,value in pairs(GetCampaignVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", GetCampaignVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCampaignVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCampaignVersionSync(GetCampaignVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignVersionAsync(GetCampaignVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGcmChannel asynchronously, invoking a callback when done
-- @param GetGcmChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGcmChannelAsync(GetGcmChannelRequest, cb)
	assert(GetGcmChannelRequest, "You must provide a GetGcmChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGcmChannel",
	}
	for header,value in pairs(GetGcmChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/gcm", GetGcmChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGcmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGcmChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetGcmChannelSync(GetGcmChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGcmChannelAsync(GetGcmChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApnsChannel asynchronously, invoking a callback when done
-- @param UpdateApnsChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApnsChannelAsync(UpdateApnsChannelRequest, cb)
	assert(UpdateApnsChannelRequest, "You must provide a UpdateApnsChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApnsChannel",
	}
	for header,value in pairs(UpdateApnsChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns", UpdateApnsChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApnsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApnsChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApnsChannelSync(UpdateApnsChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApnsChannelAsync(UpdateApnsChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGcmChannel asynchronously, invoking a callback when done
-- @param UpdateGcmChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGcmChannelAsync(UpdateGcmChannelRequest, cb)
	assert(UpdateGcmChannelRequest, "You must provide a UpdateGcmChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateGcmChannel",
	}
	for header,value in pairs(UpdateGcmChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/gcm", UpdateGcmChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGcmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGcmChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGcmChannelSync(UpdateGcmChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGcmChannelAsync(UpdateGcmChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegment asynchronously, invoking a callback when done
-- @param GetSegmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSegmentAsync(GetSegmentRequest, cb)
	assert(GetSegmentRequest, "You must provide a GetSegmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSegment",
	}
	for header,value in pairs(GetSegmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments/{segment-id}", GetSegmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSegment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSegmentSync(GetSegmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentAsync(GetSegmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaign asynchronously, invoking a callback when done
-- @param GetCampaignRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCampaignAsync(GetCampaignRequest, cb)
	assert(GetCampaignRequest, "You must provide a GetCampaignRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCampaign",
	}
	for header,value in pairs(GetCampaignRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/campaigns/{campaign-id}", GetCampaignRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCampaign synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCampaignSync(GetCampaignRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignAsync(GetCampaignRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEmailChannel asynchronously, invoking a callback when done
-- @param GetEmailChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetEmailChannelAsync(GetEmailChannelRequest, cb)
	assert(GetEmailChannelRequest, "You must provide a GetEmailChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetEmailChannel",
	}
	for header,value in pairs(GetEmailChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/email", GetEmailChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetEmailChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEmailChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetEmailChannelSync(GetEmailChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEmailChannelAsync(GetEmailChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApp asynchronously, invoking a callback when done
-- @param DeleteAppRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAppAsync(DeleteAppRequest, cb)
	assert(DeleteAppRequest, "You must provide a DeleteAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApp",
	}
	for header,value in pairs(DeleteAppRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}", DeleteAppRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAppRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAppSync(DeleteAppRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAppAsync(DeleteAppRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplicationSettings asynchronously, invoking a callback when done
-- @param UpdateApplicationSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApplicationSettingsAsync(UpdateApplicationSettingsRequest, cb)
	assert(UpdateApplicationSettingsRequest, "You must provide a UpdateApplicationSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApplicationSettings",
	}
	for header,value in pairs(UpdateApplicationSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/settings", UpdateApplicationSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApplicationSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApplicationSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApplicationSettingsSync(UpdateApplicationSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationSettingsAsync(UpdateApplicationSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApnsSandboxChannel asynchronously, invoking a callback when done
-- @param UpdateApnsSandboxChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApnsSandboxChannelAsync(UpdateApnsSandboxChannelRequest, cb)
	assert(UpdateApnsSandboxChannelRequest, "You must provide a UpdateApnsSandboxChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApnsSandboxChannel",
	}
	for header,value in pairs(UpdateApnsSandboxChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_sandbox", UpdateApnsSandboxChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApnsSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApnsSandboxChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApnsSandboxChannelSync(UpdateApnsSandboxChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApnsSandboxChannelAsync(UpdateApnsSandboxChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegmentExportJobs asynchronously, invoking a callback when done
-- @param GetSegmentExportJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSegmentExportJobsAsync(GetSegmentExportJobsRequest, cb)
	assert(GetSegmentExportJobsRequest, "You must provide a GetSegmentExportJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSegmentExportJobs",
	}
	for header,value in pairs(GetSegmentExportJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments/{segment-id}/jobs/export", GetSegmentExportJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSegmentExportJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentExportJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSegmentExportJobsSync(GetSegmentExportJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentExportJobsAsync(GetSegmentExportJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutEventStream asynchronously, invoking a callback when done
-- @param PutEventStreamRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutEventStreamAsync(PutEventStreamRequest, cb)
	assert(PutEventStreamRequest, "You must provide a PutEventStreamRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutEventStream",
	}
	for header,value in pairs(PutEventStreamRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/eventstream", PutEventStreamRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutEventStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutEventStreamRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutEventStreamSync(PutEventStreamRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEventStreamAsync(PutEventStreamRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSegment asynchronously, invoking a callback when done
-- @param DeleteSegmentRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSegmentAsync(DeleteSegmentRequest, cb)
	assert(DeleteSegmentRequest, "You must provide a DeleteSegmentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSegment",
	}
	for header,value in pairs(DeleteSegmentRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments/{segment-id}", DeleteSegmentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSegment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSegmentRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSegmentSync(DeleteSegmentRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSegmentAsync(DeleteSegmentRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaignVersions asynchronously, invoking a callback when done
-- @param GetCampaignVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCampaignVersionsAsync(GetCampaignVersionsRequest, cb)
	assert(GetCampaignVersionsRequest, "You must provide a GetCampaignVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCampaignVersions",
	}
	for header,value in pairs(GetCampaignVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", GetCampaignVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCampaignVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCampaignVersionsSync(GetCampaignVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignVersionsAsync(GetCampaignVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApnsVoipChannel asynchronously, invoking a callback when done
-- @param UpdateApnsVoipChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApnsVoipChannelAsync(UpdateApnsVoipChannelRequest, cb)
	assert(UpdateApnsVoipChannelRequest, "You must provide a UpdateApnsVoipChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApnsVoipChannel",
	}
	for header,value in pairs(UpdateApnsVoipChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_voip", UpdateApnsVoipChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApnsVoipChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApnsVoipChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApnsVoipChannelSync(UpdateApnsVoipChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApnsVoipChannelAsync(UpdateApnsVoipChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApnsVoipSandboxChannel asynchronously, invoking a callback when done
-- @param GetApnsVoipSandboxChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApnsVoipSandboxChannelAsync(GetApnsVoipSandboxChannelRequest, cb)
	assert(GetApnsVoipSandboxChannelRequest, "You must provide a GetApnsVoipSandboxChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApnsVoipSandboxChannel",
	}
	for header,value in pairs(GetApnsVoipSandboxChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_voip_sandbox", GetApnsVoipSandboxChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApnsVoipSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApnsVoipSandboxChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetApnsVoipSandboxChannelSync(GetApnsVoipSandboxChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApnsVoipSandboxChannelAsync(GetApnsVoipSandboxChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAdmChannel asynchronously, invoking a callback when done
-- @param GetAdmChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAdmChannelAsync(GetAdmChannelRequest, cb)
	assert(GetAdmChannelRequest, "You must provide a GetAdmChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetAdmChannel",
	}
	for header,value in pairs(GetAdmChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/adm", GetAdmChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAdmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAdmChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetAdmChannelSync(GetAdmChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAdmChannelAsync(GetAdmChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApnsSandboxChannel asynchronously, invoking a callback when done
-- @param GetApnsSandboxChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApnsSandboxChannelAsync(GetApnsSandboxChannelRequest, cb)
	assert(GetApnsSandboxChannelRequest, "You must provide a GetApnsSandboxChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApnsSandboxChannel",
	}
	for header,value in pairs(GetApnsSandboxChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_sandbox", GetApnsSandboxChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApnsSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApnsSandboxChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetApnsSandboxChannelSync(GetApnsSandboxChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApnsSandboxChannelAsync(GetApnsSandboxChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegmentImportJobs asynchronously, invoking a callback when done
-- @param GetSegmentImportJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSegmentImportJobsAsync(GetSegmentImportJobsRequest, cb)
	assert(GetSegmentImportJobsRequest, "You must provide a GetSegmentImportJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSegmentImportJobs",
	}
	for header,value in pairs(GetSegmentImportJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", GetSegmentImportJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSegmentImportJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentImportJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSegmentImportJobsSync(GetSegmentImportJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentImportJobsAsync(GetSegmentImportJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaigns asynchronously, invoking a callback when done
-- @param GetCampaignsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCampaignsAsync(GetCampaignsRequest, cb)
	assert(GetCampaignsRequest, "You must provide a GetCampaignsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCampaigns",
	}
	for header,value in pairs(GetCampaignsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/campaigns", GetCampaignsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCampaigns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCampaignsSync(GetCampaignsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignsAsync(GetCampaignsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEmailChannel asynchronously, invoking a callback when done
-- @param DeleteEmailChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEmailChannelAsync(DeleteEmailChannelRequest, cb)
	assert(DeleteEmailChannelRequest, "You must provide a DeleteEmailChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEmailChannel",
	}
	for header,value in pairs(DeleteEmailChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/email", DeleteEmailChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEmailChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEmailChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEmailChannelSync(DeleteEmailChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEmailChannelAsync(DeleteEmailChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApnsVoipChannel asynchronously, invoking a callback when done
-- @param DeleteApnsVoipChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApnsVoipChannelAsync(DeleteApnsVoipChannelRequest, cb)
	assert(DeleteApnsVoipChannelRequest, "You must provide a DeleteApnsVoipChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApnsVoipChannel",
	}
	for header,value in pairs(DeleteApnsVoipChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_voip", DeleteApnsVoipChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApnsVoipChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApnsVoipChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApnsVoipChannelSync(DeleteApnsVoipChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApnsVoipChannelAsync(DeleteApnsVoipChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaignActivities asynchronously, invoking a callback when done
-- @param GetCampaignActivitiesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCampaignActivitiesAsync(GetCampaignActivitiesRequest, cb)
	assert(GetCampaignActivitiesRequest, "You must provide a GetCampaignActivitiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetCampaignActivities",
	}
	for header,value in pairs(GetCampaignActivitiesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", GetCampaignActivitiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCampaignActivities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignActivitiesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCampaignActivitiesSync(GetCampaignActivitiesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignActivitiesAsync(GetCampaignActivitiesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBaiduChannel asynchronously, invoking a callback when done
-- @param DeleteBaiduChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBaiduChannelAsync(DeleteBaiduChannelRequest, cb)
	assert(DeleteBaiduChannelRequest, "You must provide a DeleteBaiduChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBaiduChannel",
	}
	for header,value in pairs(DeleteBaiduChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/baidu", DeleteBaiduChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBaiduChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBaiduChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBaiduChannelSync(DeleteBaiduChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBaiduChannelAsync(DeleteBaiduChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEndpoint asynchronously, invoking a callback when done
-- @param UpdateEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEndpointAsync(UpdateEndpointRequest, cb)
	assert(UpdateEndpointRequest, "You must provide a UpdateEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateEndpoint",
	}
	for header,value in pairs(UpdateEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/endpoints/{endpoint-id}", UpdateEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEndpointSync(UpdateEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEndpointAsync(UpdateEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendUsersMessages asynchronously, invoking a callback when done
-- @param SendUsersMessagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendUsersMessagesAsync(SendUsersMessagesRequest, cb)
	assert(SendUsersMessagesRequest, "You must provide a SendUsersMessagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendUsersMessages",
	}
	for header,value in pairs(SendUsersMessagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/users-messages", SendUsersMessagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendUsersMessages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendUsersMessagesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendUsersMessagesSync(SendUsersMessagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendUsersMessagesAsync(SendUsersMessagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserEndpoints asynchronously, invoking a callback when done
-- @param DeleteUserEndpointsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserEndpointsAsync(DeleteUserEndpointsRequest, cb)
	assert(DeleteUserEndpointsRequest, "You must provide a DeleteUserEndpointsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUserEndpoints",
	}
	for header,value in pairs(DeleteUserEndpointsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/users/{user-id}", DeleteUserEndpointsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserEndpointsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserEndpointsSync(DeleteUserEndpointsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserEndpointsAsync(DeleteUserEndpointsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEventStream asynchronously, invoking a callback when done
-- @param GetEventStreamRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetEventStreamAsync(GetEventStreamRequest, cb)
	assert(GetEventStreamRequest, "You must provide a GetEventStreamRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetEventStream",
	}
	for header,value in pairs(GetEventStreamRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/eventstream", GetEventStreamRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetEventStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEventStreamRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetEventStreamSync(GetEventStreamRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEventStreamAsync(GetEventStreamRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSmsChannel asynchronously, invoking a callback when done
-- @param DeleteSmsChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSmsChannelAsync(DeleteSmsChannelRequest, cb)
	assert(DeleteSmsChannelRequest, "You must provide a DeleteSmsChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSmsChannel",
	}
	for header,value in pairs(DeleteSmsChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/sms", DeleteSmsChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSmsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSmsChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSmsChannelSync(DeleteSmsChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSmsChannelAsync(DeleteSmsChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEndpoint asynchronously, invoking a callback when done
-- @param GetEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetEndpointAsync(GetEndpointRequest, cb)
	assert(GetEndpointRequest, "You must provide a GetEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetEndpoint",
	}
	for header,value in pairs(GetEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/endpoints/{endpoint-id}", GetEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetEndpointSync(GetEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEndpointAsync(GetEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAdmChannel asynchronously, invoking a callback when done
-- @param DeleteAdmChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAdmChannelAsync(DeleteAdmChannelRequest, cb)
	assert(DeleteAdmChannelRequest, "You must provide a DeleteAdmChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteAdmChannel",
	}
	for header,value in pairs(DeleteAdmChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/adm", DeleteAdmChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAdmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAdmChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteAdmChannelSync(DeleteAdmChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAdmChannelAsync(DeleteAdmChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendMessages asynchronously, invoking a callback when done
-- @param SendMessagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendMessagesAsync(SendMessagesRequest, cb)
	assert(SendMessagesRequest, "You must provide a SendMessagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SendMessages",
	}
	for header,value in pairs(SendMessagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/messages", SendMessagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendMessages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendMessagesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.SendMessagesSync(SendMessagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendMessagesAsync(SendMessagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBaiduChannel asynchronously, invoking a callback when done
-- @param UpdateBaiduChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateBaiduChannelAsync(UpdateBaiduChannelRequest, cb)
	assert(UpdateBaiduChannelRequest, "You must provide a UpdateBaiduChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateBaiduChannel",
	}
	for header,value in pairs(UpdateBaiduChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/baidu", UpdateBaiduChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateBaiduChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBaiduChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateBaiduChannelSync(UpdateBaiduChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBaiduChannelAsync(UpdateBaiduChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApp asynchronously, invoking a callback when done
-- @param CreateAppRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAppAsync(CreateAppRequest, cb)
	assert(CreateAppRequest, "You must provide a CreateAppRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateApp",
	}
	for header,value in pairs(CreateAppRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps", CreateAppRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApp synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAppRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateAppSync(CreateAppRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAppAsync(CreateAppRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApnsChannel asynchronously, invoking a callback when done
-- @param DeleteApnsChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApnsChannelAsync(DeleteApnsChannelRequest, cb)
	assert(DeleteApnsChannelRequest, "You must provide a DeleteApnsChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApnsChannel",
	}
	for header,value in pairs(DeleteApnsChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns", DeleteApnsChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApnsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApnsChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApnsChannelSync(DeleteApnsChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApnsChannelAsync(DeleteApnsChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUserEndpoints asynchronously, invoking a callback when done
-- @param GetUserEndpointsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUserEndpointsAsync(GetUserEndpointsRequest, cb)
	assert(GetUserEndpointsRequest, "You must provide a GetUserEndpointsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUserEndpoints",
	}
	for header,value in pairs(GetUserEndpointsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/users/{user-id}", GetUserEndpointsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUserEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUserEndpointsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUserEndpointsSync(GetUserEndpointsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserEndpointsAsync(GetUserEndpointsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateExportJob asynchronously, invoking a callback when done
-- @param CreateExportJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateExportJobAsync(CreateExportJobRequest, cb)
	assert(CreateExportJobRequest, "You must provide a CreateExportJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateExportJob",
	}
	for header,value in pairs(CreateExportJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/jobs/export", CreateExportJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateExportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateExportJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateExportJobSync(CreateExportJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateExportJobAsync(CreateExportJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEventStream asynchronously, invoking a callback when done
-- @param DeleteEventStreamRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEventStreamAsync(DeleteEventStreamRequest, cb)
	assert(DeleteEventStreamRequest, "You must provide a DeleteEventStreamRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEventStream",
	}
	for header,value in pairs(DeleteEventStreamRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/eventstream", DeleteEventStreamRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEventStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEventStreamRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteEventStreamSync(DeleteEventStreamRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEventStreamAsync(DeleteEventStreamRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApplicationSettings asynchronously, invoking a callback when done
-- @param GetApplicationSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApplicationSettingsAsync(GetApplicationSettingsRequest, cb)
	assert(GetApplicationSettingsRequest, "You must provide a GetApplicationSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApplicationSettings",
	}
	for header,value in pairs(GetApplicationSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/settings", GetApplicationSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApplicationSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApplicationSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetApplicationSettingsSync(GetApplicationSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApplicationSettingsAsync(GetApplicationSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEmailChannel asynchronously, invoking a callback when done
-- @param UpdateEmailChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEmailChannelAsync(UpdateEmailChannelRequest, cb)
	assert(UpdateEmailChannelRequest, "You must provide a UpdateEmailChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateEmailChannel",
	}
	for header,value in pairs(UpdateEmailChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/email", UpdateEmailChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEmailChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEmailChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEmailChannelSync(UpdateEmailChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEmailChannelAsync(UpdateEmailChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAdmChannel asynchronously, invoking a callback when done
-- @param UpdateAdmChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAdmChannelAsync(UpdateAdmChannelRequest, cb)
	assert(UpdateAdmChannelRequest, "You must provide a UpdateAdmChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateAdmChannel",
	}
	for header,value in pairs(UpdateAdmChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/adm", UpdateAdmChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAdmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAdmChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateAdmChannelSync(UpdateAdmChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAdmChannelAsync(UpdateAdmChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegments asynchronously, invoking a callback when done
-- @param GetSegmentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSegmentsAsync(GetSegmentsRequest, cb)
	assert(GetSegmentsRequest, "You must provide a GetSegmentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSegments",
	}
	for header,value in pairs(GetSegmentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments", GetSegmentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSegments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSegmentsSync(GetSegmentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentsAsync(GetSegmentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBaiduChannel asynchronously, invoking a callback when done
-- @param GetBaiduChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetBaiduChannelAsync(GetBaiduChannelRequest, cb)
	assert(GetBaiduChannelRequest, "You must provide a GetBaiduChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBaiduChannel",
	}
	for header,value in pairs(GetBaiduChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/baidu", GetBaiduChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBaiduChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBaiduChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetBaiduChannelSync(GetBaiduChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBaiduChannelAsync(GetBaiduChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PhoneNumberValidate asynchronously, invoking a callback when done
-- @param PhoneNumberValidateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PhoneNumberValidateAsync(PhoneNumberValidateRequest, cb)
	assert(PhoneNumberValidateRequest, "You must provide a PhoneNumberValidateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PhoneNumberValidate",
	}
	for header,value in pairs(PhoneNumberValidateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/phone/number/validate", PhoneNumberValidateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PhoneNumberValidate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PhoneNumberValidateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PhoneNumberValidateSync(PhoneNumberValidateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PhoneNumberValidateAsync(PhoneNumberValidateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetExportJobs asynchronously, invoking a callback when done
-- @param GetExportJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetExportJobsAsync(GetExportJobsRequest, cb)
	assert(GetExportJobsRequest, "You must provide a GetExportJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetExportJobs",
	}
	for header,value in pairs(GetExportJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/jobs/export", GetExportJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetExportJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetExportJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetExportJobsSync(GetExportJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetExportJobsAsync(GetExportJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegmentVersions asynchronously, invoking a callback when done
-- @param GetSegmentVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSegmentVersionsAsync(GetSegmentVersionsRequest, cb)
	assert(GetSegmentVersionsRequest, "You must provide a GetSegmentVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSegmentVersions",
	}
	for header,value in pairs(GetSegmentVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/segments/{segment-id}/versions", GetSegmentVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSegmentVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSegmentVersionsSync(GetSegmentVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentVersionsAsync(GetSegmentVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEndpointsBatch asynchronously, invoking a callback when done
-- @param UpdateEndpointsBatchRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateEndpointsBatchAsync(UpdateEndpointsBatchRequest, cb)
	assert(UpdateEndpointsBatchRequest, "You must provide a UpdateEndpointsBatchRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateEndpointsBatch",
	}
	for header,value in pairs(UpdateEndpointsBatchRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/endpoints", UpdateEndpointsBatchRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateEndpointsBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEndpointsBatchRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateEndpointsBatchSync(UpdateEndpointsBatchRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEndpointsBatchAsync(UpdateEndpointsBatchRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSmsChannel asynchronously, invoking a callback when done
-- @param UpdateSmsChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSmsChannelAsync(UpdateSmsChannelRequest, cb)
	assert(UpdateSmsChannelRequest, "You must provide a UpdateSmsChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateSmsChannel",
	}
	for header,value in pairs(UpdateSmsChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/sms", UpdateSmsChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSmsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSmsChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSmsChannelSync(UpdateSmsChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSmsChannelAsync(UpdateSmsChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApnsVoipChannel asynchronously, invoking a callback when done
-- @param GetApnsVoipChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApnsVoipChannelAsync(GetApnsVoipChannelRequest, cb)
	assert(GetApnsVoipChannelRequest, "You must provide a GetApnsVoipChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApnsVoipChannel",
	}
	for header,value in pairs(GetApnsVoipChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns_voip", GetApnsVoipChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApnsVoipChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApnsVoipChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetApnsVoipChannelSync(GetApnsVoipChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApnsVoipChannelAsync(GetApnsVoipChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApnsChannel asynchronously, invoking a callback when done
-- @param GetApnsChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetApnsChannelAsync(GetApnsChannelRequest, cb)
	assert(GetApnsChannelRequest, "You must provide a GetApnsChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetApnsChannel",
	}
	for header,value in pairs(GetApnsChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apps/{application-id}/channels/apns", GetApnsChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetApnsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApnsChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetApnsChannelSync(GetApnsChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApnsChannelAsync(GetApnsChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
