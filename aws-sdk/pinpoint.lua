--- GENERATED CODE - DO NOT MODIFY
-- Amazon Pinpoint ()

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
	uid = "",
}

local UpdateApplicationSettingsResponse_keys = { "ApplicationSettingsResource" = true, nil }

function M.AssertUpdateApplicationSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationSettingsResponse to be of type 'table'")
	assert(struct["ApplicationSettingsResource"], "Expected key ApplicationSettingsResource to exist in table")
	if struct["ApplicationSettingsResource"] then M.AssertApplicationSettingsResource(struct["ApplicationSettingsResource"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApplicationSettingsResponse_keys[k], "UpdateApplicationSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationSettingsResponse
--  
-- @param ApplicationSettingsResource [ApplicationSettingsResource]  
-- Required parameter: ApplicationSettingsResource
function M.UpdateApplicationSettingsResponse(ApplicationSettingsResource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationSettingsResponse")
	local t = { 
		["ApplicationSettingsResource"] = ApplicationSettingsResource,
	}
	M.AssertUpdateApplicationSettingsResponse(t)
	return t
end

local ActivityResponse_keys = { "End" = true, "CampaignId" = true, "TimezonesTotalCount" = true, "SuccessfulEndpointCount" = true, "ScheduledStart" = true, "TotalEndpointCount" = true, "Start" = true, "State" = true, "Result" = true, "TimezonesCompletedCount" = true, "TreatmentId" = true, "ApplicationId" = true, "Id" = true, nil }

function M.AssertActivityResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityResponse to be of type 'table'")
	if struct["End"] then M.Assert__string(struct["End"]) end
	if struct["CampaignId"] then M.Assert__string(struct["CampaignId"]) end
	if struct["TimezonesTotalCount"] then M.Assert__integer(struct["TimezonesTotalCount"]) end
	if struct["SuccessfulEndpointCount"] then M.Assert__integer(struct["SuccessfulEndpointCount"]) end
	if struct["ScheduledStart"] then M.Assert__string(struct["ScheduledStart"]) end
	if struct["TotalEndpointCount"] then M.Assert__integer(struct["TotalEndpointCount"]) end
	if struct["Start"] then M.Assert__string(struct["Start"]) end
	if struct["State"] then M.Assert__string(struct["State"]) end
	if struct["Result"] then M.Assert__string(struct["Result"]) end
	if struct["TimezonesCompletedCount"] then M.Assert__integer(struct["TimezonesCompletedCount"]) end
	if struct["TreatmentId"] then M.Assert__string(struct["TreatmentId"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ActivityResponse_keys[k], "ActivityResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityResponse
-- Activity definition
-- @param End [__string] The actual time the activity was marked CANCELLED or COMPLETED. Provided in ISO 8601 format.
-- @param CampaignId [__string] The ID of the campaign to which the activity applies.
-- @param TimezonesTotalCount [__integer] The total number of unique timezones present in the segment.
-- @param SuccessfulEndpointCount [__integer] The total number of endpoints to which the campaign successfully delivered messages.
-- @param ScheduledStart [__string] The scheduled start time for the activity in ISO 8601 format.
-- @param TotalEndpointCount [__integer] The total number of endpoints to which the campaign attempts to deliver messages.
-- @param Start [__string] The actual start time of the activity in ISO 8601 format.
-- @param State [__string] The state of the activity.

Valid values: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, COMPLETED
-- @param Result [__string] Indicates whether the activity succeeded.

Valid values: SUCCESS, FAIL
-- @param TimezonesCompletedCount [__integer] The total number of timezones completed.
-- @param TreatmentId [__string] The ID of a variation of the campaign used for A/B testing.
-- @param ApplicationId [__string] The ID of the application to which the campaign applies.
-- @param Id [__string] The unique activity ID.
function M.ActivityResponse(End, CampaignId, TimezonesTotalCount, SuccessfulEndpointCount, ScheduledStart, TotalEndpointCount, Start, State, Result, TimezonesCompletedCount, TreatmentId, ApplicationId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityResponse")
	local t = { 
		["End"] = End,
		["CampaignId"] = CampaignId,
		["TimezonesTotalCount"] = TimezonesTotalCount,
		["SuccessfulEndpointCount"] = SuccessfulEndpointCount,
		["ScheduledStart"] = ScheduledStart,
		["TotalEndpointCount"] = TotalEndpointCount,
		["Start"] = Start,
		["State"] = State,
		["Result"] = Result,
		["TimezonesCompletedCount"] = TimezonesCompletedCount,
		["TreatmentId"] = TreatmentId,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
	}
	M.AssertActivityResponse(t)
	return t
end

local DeleteSmsChannelResponse_keys = { "SMSChannelResponse" = true, nil }

function M.AssertDeleteSmsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSmsChannelResponse to be of type 'table'")
	assert(struct["SMSChannelResponse"], "Expected key SMSChannelResponse to exist in table")
	if struct["SMSChannelResponse"] then M.AssertSMSChannelResponse(struct["SMSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSmsChannelResponse_keys[k], "DeleteSmsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSmsChannelResponse
--  
-- @param SMSChannelResponse [SMSChannelResponse]  
-- Required parameter: SMSChannelResponse
function M.DeleteSmsChannelResponse(SMSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSmsChannelResponse")
	local t = { 
		["SMSChannelResponse"] = SMSChannelResponse,
	}
	M.AssertDeleteSmsChannelResponse(t)
	return t
end

local WriteCampaignRequest_keys = { "Description" = true, "Limits" = true, "Schedule" = true, "TreatmentName" = true, "HoldoutPercent" = true, "SegmentVersion" = true, "SegmentId" = true, "AdditionalTreatments" = true, "IsPaused" = true, "MessageConfiguration" = true, "TreatmentDescription" = true, "Name" = true, nil }

function M.AssertWriteCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteCampaignRequest to be of type 'table'")
	if struct["Description"] then M.Assert__string(struct["Description"]) end
	if struct["Limits"] then M.AssertCampaignLimits(struct["Limits"]) end
	if struct["Schedule"] then M.AssertSchedule(struct["Schedule"]) end
	if struct["TreatmentName"] then M.Assert__string(struct["TreatmentName"]) end
	if struct["HoldoutPercent"] then M.Assert__integer(struct["HoldoutPercent"]) end
	if struct["SegmentVersion"] then M.Assert__integer(struct["SegmentVersion"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	if struct["AdditionalTreatments"] then M.AssertListOfWriteTreatmentResource(struct["AdditionalTreatments"]) end
	if struct["IsPaused"] then M.Assert__boolean(struct["IsPaused"]) end
	if struct["MessageConfiguration"] then M.AssertMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["TreatmentDescription"] then M.Assert__string(struct["TreatmentDescription"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(WriteCampaignRequest_keys[k], "WriteCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteCampaignRequest
-- Used to create a campaign.
-- @param Description [__string] A description of the campaign.
-- @param Limits [CampaignLimits] The campaign limits settings.
-- @param Schedule [Schedule] The campaign schedule.
-- @param TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- @param HoldoutPercent [__integer] The allocated percentage of end users who will not receive messages from this campaign.
-- @param SegmentVersion [__integer] The version of the segment to which the campaign sends messages.
-- @param SegmentId [__string] The ID of the segment to which the campaign sends messages.
-- @param AdditionalTreatments [ListOfWriteTreatmentResource] Treatments that are defined in addition to the default treatment.
-- @param IsPaused [__boolean] Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
-- @param MessageConfiguration [MessageConfiguration] The message configuration settings.
-- @param TreatmentDescription [__string] A custom description for the treatment.
-- @param Name [__string] The custom name of the campaign.
function M.WriteCampaignRequest(Description, Limits, Schedule, TreatmentName, HoldoutPercent, SegmentVersion, SegmentId, AdditionalTreatments, IsPaused, MessageConfiguration, TreatmentDescription, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteCampaignRequest")
	local t = { 
		["Description"] = Description,
		["Limits"] = Limits,
		["Schedule"] = Schedule,
		["TreatmentName"] = TreatmentName,
		["HoldoutPercent"] = HoldoutPercent,
		["SegmentVersion"] = SegmentVersion,
		["SegmentId"] = SegmentId,
		["AdditionalTreatments"] = AdditionalTreatments,
		["IsPaused"] = IsPaused,
		["MessageConfiguration"] = MessageConfiguration,
		["TreatmentDescription"] = TreatmentDescription,
		["Name"] = Name,
	}
	M.AssertWriteCampaignRequest(t)
	return t
end

local EndpointUser_keys = { "UserId" = true, "UserAttributes" = true, nil }

function M.AssertEndpointUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointUser to be of type 'table'")
	if struct["UserId"] then M.Assert__string(struct["UserId"]) end
	if struct["UserAttributes"] then M.AssertMapOfListOf__string(struct["UserAttributes"]) end
	for k,_ in pairs(struct) do
		assert(EndpointUser_keys[k], "EndpointUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointUser
-- Endpoint user specific custom userAttributes
-- @param UserId [__string] The unique ID of the user.
-- @param UserAttributes [MapOfListOf__string] Custom attributes specific to the user.
function M.EndpointUser(UserId, UserAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointUser")
	local t = { 
		["UserId"] = UserId,
		["UserAttributes"] = UserAttributes,
	}
	M.AssertEndpointUser(t)
	return t
end

local GetApnsChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertGetApnsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(GetApnsChannelRequest_keys[k], "GetApnsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.GetApnsChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApnsChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertGetApnsChannelRequest(t)
	return t
end

local GetGcmChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertGetGcmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGcmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(GetGcmChannelRequest_keys[k], "GetGcmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGcmChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.GetGcmChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGcmChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertGetGcmChannelRequest(t)
	return t
end

local BadRequestException_keys = { "Message" = true, "RequestID" = true, nil }

function M.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	if struct["RequestID"] then M.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(BadRequestException_keys[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- Simple message object.
-- @param Message [__string] The error message returned from the API.
-- @param RequestID [__string] The unique message body ID.
function M.BadRequestException(Message, RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequestException")
	local t = { 
		["Message"] = Message,
		["RequestID"] = RequestID,
	}
	M.AssertBadRequestException(t)
	return t
end

local WriteApplicationSettingsRequest_keys = { "QuietTime" = true, "Limits" = true, nil }

function M.AssertWriteApplicationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteApplicationSettingsRequest to be of type 'table'")
	if struct["QuietTime"] then M.AssertQuietTime(struct["QuietTime"]) end
	if struct["Limits"] then M.AssertCampaignLimits(struct["Limits"]) end
	for k,_ in pairs(struct) do
		assert(WriteApplicationSettingsRequest_keys[k], "WriteApplicationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteApplicationSettingsRequest
-- Creating application setting request
-- @param QuietTime [QuietTime] The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
-- @param Limits [CampaignLimits] The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
function M.WriteApplicationSettingsRequest(QuietTime, Limits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteApplicationSettingsRequest")
	local t = { 
		["QuietTime"] = QuietTime,
		["Limits"] = Limits,
	}
	M.AssertWriteApplicationSettingsRequest(t)
	return t
end

local DeleteApnsChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertDeleteApnsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApnsChannelRequest_keys[k], "DeleteApnsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.DeleteApnsChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApnsChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertDeleteApnsChannelRequest(t)
	return t
end

local WriteSegmentRequest_keys = { "Dimensions" = true, "Name" = true, nil }

function M.AssertWriteSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteSegmentRequest to be of type 'table'")
	if struct["Dimensions"] then M.AssertSegmentDimensions(struct["Dimensions"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(WriteSegmentRequest_keys[k], "WriteSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteSegmentRequest
-- Segment definition.
-- @param Dimensions [SegmentDimensions] The segment dimensions attributes.
-- @param Name [__string] The name of segment
function M.WriteSegmentRequest(Dimensions, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteSegmentRequest")
	local t = { 
		["Dimensions"] = Dimensions,
		["Name"] = Name,
	}
	M.AssertWriteSegmentRequest(t)
	return t
end

local SegmentsResponse_keys = { "Item" = true, "NextToken" = true, nil }

function M.AssertSegmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentsResponse to be of type 'table'")
	if struct["Item"] then M.AssertListOfSegmentResponse(struct["Item"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(SegmentsResponse_keys[k], "SegmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentsResponse
-- Segments in your account.
-- @param Item [ListOfSegmentResponse] The list of segments.
-- @param NextToken [__string] An identifier used to retrieve the next page of results. The token is null if no additional pages exist.
function M.SegmentsResponse(Item, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentsResponse")
	local t = { 
		["Item"] = Item,
		["NextToken"] = NextToken,
	}
	M.AssertSegmentsResponse(t)
	return t
end

local UpdateSmsChannelResponse_keys = { "SMSChannelResponse" = true, nil }

function M.AssertUpdateSmsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSmsChannelResponse to be of type 'table'")
	assert(struct["SMSChannelResponse"], "Expected key SMSChannelResponse to exist in table")
	if struct["SMSChannelResponse"] then M.AssertSMSChannelResponse(struct["SMSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSmsChannelResponse_keys[k], "UpdateSmsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSmsChannelResponse
--  
-- @param SMSChannelResponse [SMSChannelResponse]  
-- Required parameter: SMSChannelResponse
function M.UpdateSmsChannelResponse(SMSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSmsChannelResponse")
	local t = { 
		["SMSChannelResponse"] = SMSChannelResponse,
	}
	M.AssertUpdateSmsChannelResponse(t)
	return t
end

local InternalServerErrorException_keys = { "Message" = true, "RequestID" = true, nil }

function M.AssertInternalServerErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerErrorException to be of type 'table'")
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	if struct["RequestID"] then M.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerErrorException_keys[k], "InternalServerErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerErrorException
-- Simple message object.
-- @param Message [__string] The error message returned from the API.
-- @param RequestID [__string] The unique message body ID.
function M.InternalServerErrorException(Message, RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerErrorException")
	local t = { 
		["Message"] = Message,
		["RequestID"] = RequestID,
	}
	M.AssertInternalServerErrorException(t)
	return t
end

local GetImportJobsResponse_keys = { "ImportJobsResponse" = true, nil }

function M.AssertGetImportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetImportJobsResponse to be of type 'table'")
	assert(struct["ImportJobsResponse"], "Expected key ImportJobsResponse to exist in table")
	if struct["ImportJobsResponse"] then M.AssertImportJobsResponse(struct["ImportJobsResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetImportJobsResponse_keys[k], "GetImportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetImportJobsResponse
--  
-- @param ImportJobsResponse [ImportJobsResponse]  
-- Required parameter: ImportJobsResponse
function M.GetImportJobsResponse(ImportJobsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetImportJobsResponse")
	local t = { 
		["ImportJobsResponse"] = ImportJobsResponse,
	}
	M.AssertGetImportJobsResponse(t)
	return t
end

local CreateCampaignRequest_keys = { "ApplicationId" = true, "WriteCampaignRequest" = true, nil }

function M.AssertCreateCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCampaignRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteCampaignRequest"], "Expected key WriteCampaignRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["WriteCampaignRequest"] then M.AssertWriteCampaignRequest(struct["WriteCampaignRequest"]) end
	for k,_ in pairs(struct) do
		assert(CreateCampaignRequest_keys[k], "CreateCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCampaignRequest
--  
-- @param ApplicationId [__string]  
-- @param WriteCampaignRequest [WriteCampaignRequest]  
-- Required parameter: ApplicationId
-- Required parameter: WriteCampaignRequest
function M.CreateCampaignRequest(ApplicationId, WriteCampaignRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCampaignRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["WriteCampaignRequest"] = WriteCampaignRequest,
	}
	M.AssertCreateCampaignRequest(t)
	return t
end

local PutEventStreamRequest_keys = { "ApplicationId" = true, "WriteEventStream" = true, nil }

function M.AssertPutEventStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventStreamRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteEventStream"], "Expected key WriteEventStream to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["WriteEventStream"] then M.AssertWriteEventStream(struct["WriteEventStream"]) end
	for k,_ in pairs(struct) do
		assert(PutEventStreamRequest_keys[k], "PutEventStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventStreamRequest
-- PutEventStream Request
-- @param ApplicationId [__string] ApplicationId
-- @param WriteEventStream [WriteEventStream] EventStream to write.
-- Required parameter: ApplicationId
-- Required parameter: WriteEventStream
function M.PutEventStreamRequest(ApplicationId, WriteEventStream, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventStreamRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["WriteEventStream"] = WriteEventStream,
	}
	M.AssertPutEventStreamRequest(t)
	return t
end

local UpdateEndpointRequest_keys = { "ApplicationId" = true, "EndpointRequest" = true, "EndpointId" = true, nil }

function M.AssertUpdateEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EndpointId"], "Expected key EndpointId to exist in table")
	assert(struct["EndpointRequest"], "Expected key EndpointRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["EndpointRequest"] then M.AssertEndpointRequest(struct["EndpointRequest"]) end
	if struct["EndpointId"] then M.Assert__string(struct["EndpointId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEndpointRequest_keys[k], "UpdateEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointRequest
--  
-- @param ApplicationId [__string]  
-- @param EndpointRequest [EndpointRequest]  
-- @param EndpointId [__string]  
-- Required parameter: ApplicationId
-- Required parameter: EndpointId
-- Required parameter: EndpointRequest
function M.UpdateEndpointRequest(ApplicationId, EndpointRequest, EndpointId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEndpointRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["EndpointRequest"] = EndpointRequest,
		["EndpointId"] = EndpointId,
	}
	M.AssertUpdateEndpointRequest(t)
	return t
end

local Schedule_keys = { "QuietTime" = true, "Frequency" = true, "IsLocalTime" = true, "StartTime" = true, "Timezone" = true, "EndTime" = true, nil }

function M.AssertSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Schedule to be of type 'table'")
	if struct["QuietTime"] then M.AssertQuietTime(struct["QuietTime"]) end
	if struct["Frequency"] then M.AssertFrequency(struct["Frequency"]) end
	if struct["IsLocalTime"] then M.Assert__boolean(struct["IsLocalTime"]) end
	if struct["StartTime"] then M.Assert__string(struct["StartTime"]) end
	if struct["Timezone"] then M.Assert__string(struct["Timezone"]) end
	if struct["EndTime"] then M.Assert__string(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(Schedule_keys[k], "Schedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Schedule
-- Shcedule that defines when a campaign is run.
-- @param QuietTime [QuietTime] The time during which the campaign sends no messages.
-- @param Frequency [Frequency] How often the campaign delivers messages.

Valid values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
-- @param IsLocalTime [__boolean] Indicates whether the campaign schedule takes effect according to each user's local time.
-- @param StartTime [__string] The scheduled time that the campaign begins in ISO 8601 format.
-- @param Timezone [__string] The starting UTC offset for the schedule if the value for isLocalTime is true

Valid values: 
UTC
UTC+01
UTC+02
UTC+03
UTC+03:30
UTC+04
UTC+04:30
UTC+05
UTC+05:30
UTC+05:45
UTC+06
UTC+06:30
UTC+07
UTC+08
UTC+09
UTC+09:30
UTC+10
UTC+10:30
UTC+11
UTC+12
UTC+13
UTC-02
UTC-03
UTC-04
UTC-05
UTC-06
UTC-07
UTC-08
UTC-09
UTC-10
UTC-11
-- @param EndTime [__string] The scheduled time that the campaign ends in ISO 8601 format.
function M.Schedule(QuietTime, Frequency, IsLocalTime, StartTime, Timezone, EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Schedule")
	local t = { 
		["QuietTime"] = QuietTime,
		["Frequency"] = Frequency,
		["IsLocalTime"] = IsLocalTime,
		["StartTime"] = StartTime,
		["Timezone"] = Timezone,
		["EndTime"] = EndTime,
	}
	M.AssertSchedule(t)
	return t
end

local AddressConfiguration_keys = { "Substitutions" = true, "BodyOverride" = true, "Context" = true, "RawContent" = true, "ChannelType" = true, "TitleOverride" = true, nil }

function M.AssertAddressConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddressConfiguration to be of type 'table'")
	if struct["Substitutions"] then M.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["BodyOverride"] then M.Assert__string(struct["BodyOverride"]) end
	if struct["Context"] then M.AssertMapOf__string(struct["Context"]) end
	if struct["RawContent"] then M.Assert__string(struct["RawContent"]) end
	if struct["ChannelType"] then M.AssertChannelType(struct["ChannelType"]) end
	if struct["TitleOverride"] then M.Assert__string(struct["TitleOverride"]) end
	for k,_ in pairs(struct) do
		assert(AddressConfiguration_keys[k], "AddressConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddressConfiguration
-- Address configuration.
-- @param Substitutions [MapOfListOf__string] A map of substitution values for the message to be merged with the DefaultMessage's substitutions. Substitutions on this map take precedence over the all other substitutions.
-- @param BodyOverride [__string] Body override. If specified will override default body.
-- @param Context [MapOf__string] A map of custom attributes to attributes to be attached to the message for this address. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
-- @param RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- @param ChannelType [ChannelType] Type of channel of this address
-- @param TitleOverride [__string] Title override. If specified will override default title if applicable.
function M.AddressConfiguration(Substitutions, BodyOverride, Context, RawContent, ChannelType, TitleOverride, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddressConfiguration")
	local t = { 
		["Substitutions"] = Substitutions,
		["BodyOverride"] = BodyOverride,
		["Context"] = Context,
		["RawContent"] = RawContent,
		["ChannelType"] = ChannelType,
		["TitleOverride"] = TitleOverride,
	}
	M.AssertAddressConfiguration(t)
	return t
end

local GetSegmentVersionsRequest_keys = { "Token" = true, "ApplicationId" = true, "SegmentId" = true, "PageSize" = true, nil }

function M.AssertGetSegmentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentVersionsRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then M.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	if struct["PageSize"] then M.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentVersionsRequest_keys[k], "GetSegmentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentVersionsRequest
--  
-- @param Token [__string]  
-- @param ApplicationId [__string]  
-- @param SegmentId [__string]  
-- @param PageSize [__string]  
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
function M.GetSegmentVersionsRequest(Token, ApplicationId, SegmentId, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentVersionsRequest")
	local t = { 
		["Token"] = Token,
		["ApplicationId"] = ApplicationId,
		["SegmentId"] = SegmentId,
		["PageSize"] = PageSize,
	}
	M.AssertGetSegmentVersionsRequest(t)
	return t
end

local GetCampaignVersionResponse_keys = { "CampaignResponse" = true, nil }

function M.AssertGetCampaignVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignVersionResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then M.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignVersionResponse_keys[k], "GetCampaignVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignVersionResponse
--  
-- @param CampaignResponse [CampaignResponse]  
-- Required parameter: CampaignResponse
function M.GetCampaignVersionResponse(CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignVersionResponse")
	local t = { 
		["CampaignResponse"] = CampaignResponse,
	}
	M.AssertGetCampaignVersionResponse(t)
	return t
end

local APNSSandboxChannelResponse_keys = { "LastModifiedDate" = true, "Enabled" = true, "LastModifiedBy" = true, "Platform" = true, "Version" = true, "IsArchived" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, nil }

function M.AssertAPNSSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSSandboxChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then M.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then M.Assert__string(struct["Platform"]) end
	if struct["Version"] then M.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then M.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(APNSSandboxChannelResponse_keys[k], "APNSSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSSandboxChannelResponse
-- Apple Development Push Notification Service channel definition.
-- @param LastModifiedDate [__string] Last date this was updated
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
-- @param LastModifiedBy [__string] Who last updated this entry
-- @param Platform [__string] The platform type. Will be APNS.
-- @param Version [__integer] Version of channel
-- @param IsArchived [__boolean] Is this channel archived
-- @param CreationDate [__string] When was this segment created
-- @param ApplicationId [__string] Application id
-- @param Id [__string] Channel ID. Not used, only for backwards compatibility.
function M.APNSSandboxChannelResponse(LastModifiedDate, Enabled, LastModifiedBy, Platform, Version, IsArchived, CreationDate, ApplicationId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSSandboxChannelResponse")
	local t = { 
		["LastModifiedDate"] = LastModifiedDate,
		["Enabled"] = Enabled,
		["LastModifiedBy"] = LastModifiedBy,
		["Platform"] = Platform,
		["Version"] = Version,
		["IsArchived"] = IsArchived,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
	}
	M.AssertAPNSSandboxChannelResponse(t)
	return t
end

local WriteTreatmentResource_keys = { "SizePercent" = true, "MessageConfiguration" = true, "TreatmentName" = true, "TreatmentDescription" = true, "Schedule" = true, nil }

function M.AssertWriteTreatmentResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteTreatmentResource to be of type 'table'")
	if struct["SizePercent"] then M.Assert__integer(struct["SizePercent"]) end
	if struct["MessageConfiguration"] then M.AssertMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["TreatmentName"] then M.Assert__string(struct["TreatmentName"]) end
	if struct["TreatmentDescription"] then M.Assert__string(struct["TreatmentDescription"]) end
	if struct["Schedule"] then M.AssertSchedule(struct["Schedule"]) end
	for k,_ in pairs(struct) do
		assert(WriteTreatmentResource_keys[k], "WriteTreatmentResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteTreatmentResource
-- Used to create a campaign treatment.
-- @param SizePercent [__integer] The allocated percentage of users for this treatment.
-- @param MessageConfiguration [MessageConfiguration] The message configuration settings.
-- @param TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- @param TreatmentDescription [__string] A custom description for the treatment.
-- @param Schedule [Schedule] The campaign schedule.
function M.WriteTreatmentResource(SizePercent, MessageConfiguration, TreatmentName, TreatmentDescription, Schedule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteTreatmentResource")
	local t = { 
		["SizePercent"] = SizePercent,
		["MessageConfiguration"] = MessageConfiguration,
		["TreatmentName"] = TreatmentName,
		["TreatmentDescription"] = TreatmentDescription,
		["Schedule"] = Schedule,
	}
	M.AssertWriteTreatmentResource(t)
	return t
end

local CampaignState_keys = { "CampaignStatus" = true, nil }

function M.AssertCampaignState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignState to be of type 'table'")
	if struct["CampaignStatus"] then M.AssertCampaignStatus(struct["CampaignStatus"]) end
	for k,_ in pairs(struct) do
		assert(CampaignState_keys[k], "CampaignState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignState
-- State of the Campaign
-- @param CampaignStatus [CampaignStatus] The status of the campaign, or the status of a treatment that belongs to an A/B test campaign.

Valid values: SCHEDULED, EXECUTING, PENDING_NEXT_RUN, COMPLETED, PAUSED
function M.CampaignState(CampaignStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignState")
	local t = { 
		["CampaignStatus"] = CampaignStatus,
	}
	M.AssertCampaignState(t)
	return t
end

local UpdateSegmentRequest_keys = { "WriteSegmentRequest" = true, "ApplicationId" = true, "SegmentId" = true, nil }

function M.AssertUpdateSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSegmentRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteSegmentRequest"], "Expected key WriteSegmentRequest to exist in table")
	if struct["WriteSegmentRequest"] then M.AssertWriteSegmentRequest(struct["WriteSegmentRequest"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSegmentRequest_keys[k], "UpdateSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSegmentRequest
--  
-- @param WriteSegmentRequest [WriteSegmentRequest]  
-- @param ApplicationId [__string]  
-- @param SegmentId [__string]  
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
-- Required parameter: WriteSegmentRequest
function M.UpdateSegmentRequest(WriteSegmentRequest, ApplicationId, SegmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSegmentRequest")
	local t = { 
		["WriteSegmentRequest"] = WriteSegmentRequest,
		["ApplicationId"] = ApplicationId,
		["SegmentId"] = SegmentId,
	}
	M.AssertUpdateSegmentRequest(t)
	return t
end

local CreateImportJobRequest_keys = { "ApplicationId" = true, "ImportJobRequest" = true, nil }

function M.AssertCreateImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateImportJobRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["ImportJobRequest"], "Expected key ImportJobRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["ImportJobRequest"] then M.AssertImportJobRequest(struct["ImportJobRequest"]) end
	for k,_ in pairs(struct) do
		assert(CreateImportJobRequest_keys[k], "CreateImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateImportJobRequest
--  
-- @param ApplicationId [__string]  
-- @param ImportJobRequest [ImportJobRequest]  
-- Required parameter: ApplicationId
-- Required parameter: ImportJobRequest
function M.CreateImportJobRequest(ApplicationId, ImportJobRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateImportJobRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["ImportJobRequest"] = ImportJobRequest,
	}
	M.AssertCreateImportJobRequest(t)
	return t
end

local GetApplicationSettingsRequest_keys = { "ApplicationId" = true, nil }

function M.AssertGetApplicationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationSettingsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(GetApplicationSettingsRequest_keys[k], "GetApplicationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationSettingsRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.GetApplicationSettingsRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationSettingsRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertGetApplicationSettingsRequest(t)
	return t
end

local GetImportJobsRequest_keys = { "Token" = true, "ApplicationId" = true, "PageSize" = true, nil }

function M.AssertGetImportJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetImportJobsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then M.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then M.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(GetImportJobsRequest_keys[k], "GetImportJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetImportJobsRequest
--  
-- @param Token [__string]  
-- @param ApplicationId [__string]  
-- @param PageSize [__string]  
-- Required parameter: ApplicationId
function M.GetImportJobsRequest(Token, ApplicationId, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetImportJobsRequest")
	local t = { 
		["Token"] = Token,
		["ApplicationId"] = ApplicationId,
		["PageSize"] = PageSize,
	}
	M.AssertGetImportJobsRequest(t)
	return t
end

local DefaultPushNotificationMessage_keys = { "Body" = true, "Title" = true, "Url" = true, "Substitutions" = true, "Action" = true, "SilentPush" = true, "Data" = true, nil }

function M.AssertDefaultPushNotificationMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultPushNotificationMessage to be of type 'table'")
	if struct["Body"] then M.Assert__string(struct["Body"]) end
	if struct["Title"] then M.Assert__string(struct["Title"]) end
	if struct["Url"] then M.Assert__string(struct["Url"]) end
	if struct["Substitutions"] then M.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["Action"] then M.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then M.Assert__boolean(struct["SilentPush"]) end
	if struct["Data"] then M.AssertMapOf__string(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(DefaultPushNotificationMessage_keys[k], "DefaultPushNotificationMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultPushNotificationMessage
-- Default Push Notification Message.
-- @param Body [__string] The message body of the notification, the email body or the text message.
-- @param Title [__string] The message title that displays above the message on the user's device.
-- @param Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- @param Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- @param Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- @param SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- @param Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
function M.DefaultPushNotificationMessage(Body, Title, Url, Substitutions, Action, SilentPush, Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultPushNotificationMessage")
	local t = { 
		["Body"] = Body,
		["Title"] = Title,
		["Url"] = Url,
		["Substitutions"] = Substitutions,
		["Action"] = Action,
		["SilentPush"] = SilentPush,
		["Data"] = Data,
	}
	M.AssertDefaultPushNotificationMessage(t)
	return t
end

local UpdateGcmChannelResponse_keys = { "GCMChannelResponse" = true, nil }

function M.AssertUpdateGcmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGcmChannelResponse to be of type 'table'")
	assert(struct["GCMChannelResponse"], "Expected key GCMChannelResponse to exist in table")
	if struct["GCMChannelResponse"] then M.AssertGCMChannelResponse(struct["GCMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGcmChannelResponse_keys[k], "UpdateGcmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGcmChannelResponse
--  
-- @param GCMChannelResponse [GCMChannelResponse]  
-- Required parameter: GCMChannelResponse
function M.UpdateGcmChannelResponse(GCMChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGcmChannelResponse")
	local t = { 
		["GCMChannelResponse"] = GCMChannelResponse,
	}
	M.AssertUpdateGcmChannelResponse(t)
	return t
end

local DeleteSmsChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertDeleteSmsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSmsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSmsChannelRequest_keys[k], "DeleteSmsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSmsChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.DeleteSmsChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSmsChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertDeleteSmsChannelRequest(t)
	return t
end

local GetCampaignVersionRequest_keys = { "Version" = true, "ApplicationId" = true, "CampaignId" = true, nil }

function M.AssertGetCampaignVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignVersionRequest to be of type 'table'")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["CampaignId"] then M.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignVersionRequest_keys[k], "GetCampaignVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignVersionRequest
--  
-- @param Version [__string]  
-- @param ApplicationId [__string]  
-- @param CampaignId [__string]  
-- Required parameter: Version
-- Required parameter: ApplicationId
-- Required parameter: CampaignId
function M.GetCampaignVersionRequest(Version, ApplicationId, CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignVersionRequest")
	local t = { 
		["Version"] = Version,
		["ApplicationId"] = ApplicationId,
		["CampaignId"] = CampaignId,
	}
	M.AssertGetCampaignVersionRequest(t)
	return t
end

local EndpointResponse_keys = { "ShardId" = true, "EffectiveDate" = true, "OptOut" = true, "RequestId" = true, "Demographic" = true, "User" = true, "Metrics" = true, "Location" = true, "Address" = true, "CohortId" = true, "Attributes" = true, "ChannelType" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, "EndpointStatus" = true, nil }

function M.AssertEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointResponse to be of type 'table'")
	if struct["ShardId"] then M.Assert__string(struct["ShardId"]) end
	if struct["EffectiveDate"] then M.Assert__string(struct["EffectiveDate"]) end
	if struct["OptOut"] then M.Assert__string(struct["OptOut"]) end
	if struct["RequestId"] then M.Assert__string(struct["RequestId"]) end
	if struct["Demographic"] then M.AssertEndpointDemographic(struct["Demographic"]) end
	if struct["User"] then M.AssertEndpointUser(struct["User"]) end
	if struct["Metrics"] then M.AssertMapOf__double(struct["Metrics"]) end
	if struct["Location"] then M.AssertEndpointLocation(struct["Location"]) end
	if struct["Address"] then M.Assert__string(struct["Address"]) end
	if struct["CohortId"] then M.Assert__string(struct["CohortId"]) end
	if struct["Attributes"] then M.AssertMapOfListOf__string(struct["Attributes"]) end
	if struct["ChannelType"] then M.AssertChannelType(struct["ChannelType"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["EndpointStatus"] then M.Assert__string(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(EndpointResponse_keys[k], "EndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointResponse
-- Endpoint response
-- @param ShardId [__string] The ShardId of endpoint
-- @param EffectiveDate [__string] The last time the endpoint was updated. Provided in ISO 8601 format.
-- @param OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:

ALL – User receives all messages.
NONE – User receives no messages.
-- @param RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- @param Demographic [EndpointDemographic] The endpoint demographic attributes.
-- @param User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- @param Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- @param Location [EndpointLocation] The endpoint location attributes.
-- @param Address [__string] The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
-- @param CohortId [__string] A number from 0 - 99 that represents the cohort the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an app. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for a campaign.
-- @param Attributes [MapOfListOf__string] Custom attributes that your app reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create a segment.
-- @param ChannelType [ChannelType] The channel type.

Valid values: APNS, GCM
-- @param CreationDate [__string] The last time the endpoint was created. Provided in ISO 8601 format.
-- @param ApplicationId [__string] The ID of the application associated with the endpoint.
-- @param Id [__string] The unique ID that you assigned to the endpoint. The ID should be a globally unique identifier (GUID) to ensure that it is unique compared to all other endpoints for the application.
-- @param EndpointStatus [__string] The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
function M.EndpointResponse(ShardId, EffectiveDate, OptOut, RequestId, Demographic, User, Metrics, Location, Address, CohortId, Attributes, ChannelType, CreationDate, ApplicationId, Id, EndpointStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointResponse")
	local t = { 
		["ShardId"] = ShardId,
		["EffectiveDate"] = EffectiveDate,
		["OptOut"] = OptOut,
		["RequestId"] = RequestId,
		["Demographic"] = Demographic,
		["User"] = User,
		["Metrics"] = Metrics,
		["Location"] = Location,
		["Address"] = Address,
		["CohortId"] = CohortId,
		["Attributes"] = Attributes,
		["ChannelType"] = ChannelType,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
		["EndpointStatus"] = EndpointStatus,
	}
	M.AssertEndpointResponse(t)
	return t
end

local DirectMessageConfiguration_keys = { "APNSMessage" = true, "DefaultPushNotificationMessage" = true, "DefaultMessage" = true, "SMSMessage" = true, "GCMMessage" = true, nil }

function M.AssertDirectMessageConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectMessageConfiguration to be of type 'table'")
	if struct["APNSMessage"] then M.AssertAPNSMessage(struct["APNSMessage"]) end
	if struct["DefaultPushNotificationMessage"] then M.AssertDefaultPushNotificationMessage(struct["DefaultPushNotificationMessage"]) end
	if struct["DefaultMessage"] then M.AssertDefaultMessage(struct["DefaultMessage"]) end
	if struct["SMSMessage"] then M.AssertSMSMessage(struct["SMSMessage"]) end
	if struct["GCMMessage"] then M.AssertGCMMessage(struct["GCMMessage"]) end
	for k,_ in pairs(struct) do
		assert(DirectMessageConfiguration_keys[k], "DirectMessageConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectMessageConfiguration
-- The message configuration.
-- @param APNSMessage [APNSMessage] The message to APNS channels. Overrides the default push notification message.
-- @param DefaultPushNotificationMessage [DefaultPushNotificationMessage] The default push notification message for all push channels.
-- @param DefaultMessage [DefaultMessage] The default message for all channels.
-- @param SMSMessage [SMSMessage] The message to SMS channels. Overrides the default message.
-- @param GCMMessage [GCMMessage] The message to GCM channels. Overrides the default push notification message.
function M.DirectMessageConfiguration(APNSMessage, DefaultPushNotificationMessage, DefaultMessage, SMSMessage, GCMMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectMessageConfiguration")
	local t = { 
		["APNSMessage"] = APNSMessage,
		["DefaultPushNotificationMessage"] = DefaultPushNotificationMessage,
		["DefaultMessage"] = DefaultMessage,
		["SMSMessage"] = SMSMessage,
		["GCMMessage"] = GCMMessage,
	}
	M.AssertDirectMessageConfiguration(t)
	return t
end

local MethodNotAllowedException_keys = { "Message" = true, "RequestID" = true, nil }

function M.AssertMethodNotAllowedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodNotAllowedException to be of type 'table'")
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	if struct["RequestID"] then M.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(MethodNotAllowedException_keys[k], "MethodNotAllowedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodNotAllowedException
-- Simple message object.
-- @param Message [__string] The error message returned from the API.
-- @param RequestID [__string] The unique message body ID.
function M.MethodNotAllowedException(Message, RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MethodNotAllowedException")
	local t = { 
		["Message"] = Message,
		["RequestID"] = RequestID,
	}
	M.AssertMethodNotAllowedException(t)
	return t
end

local DeleteEventStreamRequest_keys = { "ApplicationId" = true, nil }

function M.AssertDeleteEventStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventStreamRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEventStreamRequest_keys[k], "DeleteEventStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventStreamRequest
-- DeleteEventStream Request
-- @param ApplicationId [__string] ApplicationId
-- Required parameter: ApplicationId
function M.DeleteEventStreamRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventStreamRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertDeleteEventStreamRequest(t)
	return t
end

local GetSegmentImportJobsRequest_keys = { "Token" = true, "ApplicationId" = true, "SegmentId" = true, "PageSize" = true, nil }

function M.AssertGetSegmentImportJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentImportJobsRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then M.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	if struct["PageSize"] then M.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentImportJobsRequest_keys[k], "GetSegmentImportJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentImportJobsRequest
--  
-- @param Token [__string]  
-- @param ApplicationId [__string]  
-- @param SegmentId [__string]  
-- @param PageSize [__string]  
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
function M.GetSegmentImportJobsRequest(Token, ApplicationId, SegmentId, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentImportJobsRequest")
	local t = { 
		["Token"] = Token,
		["ApplicationId"] = ApplicationId,
		["SegmentId"] = SegmentId,
		["PageSize"] = PageSize,
	}
	M.AssertGetSegmentImportJobsRequest(t)
	return t
end

local GetSmsChannelResponse_keys = { "SMSChannelResponse" = true, nil }

function M.AssertGetSmsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSmsChannelResponse to be of type 'table'")
	assert(struct["SMSChannelResponse"], "Expected key SMSChannelResponse to exist in table")
	if struct["SMSChannelResponse"] then M.AssertSMSChannelResponse(struct["SMSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetSmsChannelResponse_keys[k], "GetSmsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSmsChannelResponse
--  
-- @param SMSChannelResponse [SMSChannelResponse]  
-- Required parameter: SMSChannelResponse
function M.GetSmsChannelResponse(SMSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSmsChannelResponse")
	local t = { 
		["SMSChannelResponse"] = SMSChannelResponse,
	}
	M.AssertGetSmsChannelResponse(t)
	return t
end

local CampaignLimits_keys = { "Total" = true, "Daily" = true, nil }

function M.AssertCampaignLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignLimits to be of type 'table'")
	if struct["Total"] then M.Assert__integer(struct["Total"]) end
	if struct["Daily"] then M.Assert__integer(struct["Daily"]) end
	for k,_ in pairs(struct) do
		assert(CampaignLimits_keys[k], "CampaignLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignLimits
-- Campaign Limits are used to limit the number of messages that can be sent to a user.
-- @param Total [__integer] The maximum total number of messages that the campaign can send.
-- @param Daily [__integer] The maximum number of messages that the campaign can send daily.
function M.CampaignLimits(Total, Daily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignLimits")
	local t = { 
		["Total"] = Total,
		["Daily"] = Daily,
	}
	M.AssertCampaignLimits(t)
	return t
end

local GetSegmentVersionResponse_keys = { "SegmentResponse" = true, nil }

function M.AssertGetSegmentVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentVersionResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then M.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentVersionResponse_keys[k], "GetSegmentVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentVersionResponse
--  
-- @param SegmentResponse [SegmentResponse]  
-- Required parameter: SegmentResponse
function M.GetSegmentVersionResponse(SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentVersionResponse")
	local t = { 
		["SegmentResponse"] = SegmentResponse,
	}
	M.AssertGetSegmentVersionResponse(t)
	return t
end

local PutEventStreamResponse_keys = { "EventStream" = true, nil }

function M.AssertPutEventStreamResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventStreamResponse to be of type 'table'")
	assert(struct["EventStream"], "Expected key EventStream to exist in table")
	if struct["EventStream"] then M.AssertEventStream(struct["EventStream"]) end
	for k,_ in pairs(struct) do
		assert(PutEventStreamResponse_keys[k], "PutEventStreamResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventStreamResponse
-- PutEventStream Response
-- @param EventStream [EventStream] PutEventStream Response
-- Required parameter: EventStream
function M.PutEventStreamResponse(EventStream, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventStreamResponse")
	local t = { 
		["EventStream"] = EventStream,
	}
	M.AssertPutEventStreamResponse(t)
	return t
end

local APNSChannelResponse_keys = { "LastModifiedDate" = true, "Enabled" = true, "LastModifiedBy" = true, "Platform" = true, "Version" = true, "IsArchived" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, nil }

function M.AssertAPNSChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then M.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then M.Assert__string(struct["Platform"]) end
	if struct["Version"] then M.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then M.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(APNSChannelResponse_keys[k], "APNSChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSChannelResponse
-- Apple Distribution Push Notification Service channel definition.
-- @param LastModifiedDate [__string] Last date this was updated
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
-- @param LastModifiedBy [__string] Who last updated this entry
-- @param Platform [__string] The platform type. Will be APNS.
-- @param Version [__integer] Version of channel
-- @param IsArchived [__boolean] Is this channel archived
-- @param CreationDate [__string] When was this segment created
-- @param ApplicationId [__string] The ID of the application to which the channel applies.
-- @param Id [__string] Channel ID. Not used, only for backwards compatibility.
function M.APNSChannelResponse(LastModifiedDate, Enabled, LastModifiedBy, Platform, Version, IsArchived, CreationDate, ApplicationId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSChannelResponse")
	local t = { 
		["LastModifiedDate"] = LastModifiedDate,
		["Enabled"] = Enabled,
		["LastModifiedBy"] = LastModifiedBy,
		["Platform"] = Platform,
		["Version"] = Version,
		["IsArchived"] = IsArchived,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
	}
	M.AssertAPNSChannelResponse(t)
	return t
end

local GetCampaignsRequest_keys = { "Token" = true, "ApplicationId" = true, "PageSize" = true, nil }

function M.AssertGetCampaignsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then M.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then M.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignsRequest_keys[k], "GetCampaignsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignsRequest
--  
-- @param Token [__string]  
-- @param ApplicationId [__string]  
-- @param PageSize [__string]  
-- Required parameter: ApplicationId
function M.GetCampaignsRequest(Token, ApplicationId, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignsRequest")
	local t = { 
		["Token"] = Token,
		["ApplicationId"] = ApplicationId,
		["PageSize"] = PageSize,
	}
	M.AssertGetCampaignsRequest(t)
	return t
end

local APNSSandboxChannelRequest_keys = { "PrivateKey" = true, "Enabled" = true, "Certificate" = true, nil }

function M.AssertAPNSSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSSandboxChannelRequest to be of type 'table'")
	if struct["PrivateKey"] then M.Assert__string(struct["PrivateKey"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	if struct["Certificate"] then M.Assert__string(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(APNSSandboxChannelRequest_keys[k], "APNSSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSSandboxChannelRequest
-- Apple Development Push Notification Service channel definition.
-- @param PrivateKey [__string] The certificate private key.
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
-- @param Certificate [__string] The distribution certificate from Apple.
function M.APNSSandboxChannelRequest(PrivateKey, Enabled, Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSSandboxChannelRequest")
	local t = { 
		["PrivateKey"] = PrivateKey,
		["Enabled"] = Enabled,
		["Certificate"] = Certificate,
	}
	M.AssertAPNSSandboxChannelRequest(t)
	return t
end

local SegmentDimensions_keys = { "Attributes" = true, "Demographic" = true, "Location" = true, "Behavior" = true, "UserAttributes" = true, nil }

function M.AssertSegmentDimensions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentDimensions to be of type 'table'")
	if struct["Attributes"] then M.AssertMapOfAttributeDimension(struct["Attributes"]) end
	if struct["Demographic"] then M.AssertSegmentDemographics(struct["Demographic"]) end
	if struct["Location"] then M.AssertSegmentLocation(struct["Location"]) end
	if struct["Behavior"] then M.AssertSegmentBehaviors(struct["Behavior"]) end
	if struct["UserAttributes"] then M.AssertMapOfAttributeDimension(struct["UserAttributes"]) end
	for k,_ in pairs(struct) do
		assert(SegmentDimensions_keys[k], "SegmentDimensions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentDimensions
-- Segment dimensions
-- @param Attributes [MapOfAttributeDimension] Custom segment attributes.
-- @param Demographic [SegmentDemographics] The segment demographics attributes.
-- @param Location [SegmentLocation] The segment location attributes.
-- @param Behavior [SegmentBehaviors] The segment behaviors attributes.
-- @param UserAttributes [MapOfAttributeDimension] Custom segment user attributes.
function M.SegmentDimensions(Attributes, Demographic, Location, Behavior, UserAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentDimensions")
	local t = { 
		["Attributes"] = Attributes,
		["Demographic"] = Demographic,
		["Location"] = Location,
		["Behavior"] = Behavior,
		["UserAttributes"] = UserAttributes,
	}
	M.AssertSegmentDimensions(t)
	return t
end

local ImportJobsResponse_keys = { "Item" = true, "NextToken" = true, nil }

function M.AssertImportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportJobsResponse to be of type 'table'")
	if struct["Item"] then M.AssertListOfImportJobResponse(struct["Item"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ImportJobsResponse_keys[k], "ImportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportJobsResponse
-- Import job list.
-- @param Item [ListOfImportJobResponse] A list of import jobs for the application.
-- @param NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
function M.ImportJobsResponse(Item, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportJobsResponse")
	local t = { 
		["Item"] = Item,
		["NextToken"] = NextToken,
	}
	M.AssertImportJobsResponse(t)
	return t
end

local GCMChannelResponse_keys = { "Credential" = true, "LastModifiedDate" = true, "Enabled" = true, "LastModifiedBy" = true, "Platform" = true, "Version" = true, "IsArchived" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, nil }

function M.AssertGCMChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GCMChannelResponse to be of type 'table'")
	if struct["Credential"] then M.Assert__string(struct["Credential"]) end
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then M.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then M.Assert__string(struct["Platform"]) end
	if struct["Version"] then M.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then M.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(GCMChannelResponse_keys[k], "GCMChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GCMChannelResponse
-- Google Cloud Messaging channel definition
-- @param Credential [__string] The GCM API key from Google.
-- @param LastModifiedDate [__string] Last date this was updated
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
-- @param LastModifiedBy [__string] Who last updated this entry
-- @param Platform [__string] The platform type. Will be GCM
-- @param Version [__integer] Version of channel
-- @param IsArchived [__boolean] Is this channel archived
-- @param CreationDate [__string] When was this segment created
-- @param ApplicationId [__string] The ID of the application to which the channel applies.
-- @param Id [__string] Channel ID. Not used, only for backwards compatibility.
function M.GCMChannelResponse(Credential, LastModifiedDate, Enabled, LastModifiedBy, Platform, Version, IsArchived, CreationDate, ApplicationId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GCMChannelResponse")
	local t = { 
		["Credential"] = Credential,
		["LastModifiedDate"] = LastModifiedDate,
		["Enabled"] = Enabled,
		["LastModifiedBy"] = LastModifiedBy,
		["Platform"] = Platform,
		["Version"] = Version,
		["IsArchived"] = IsArchived,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
	}
	M.AssertGCMChannelResponse(t)
	return t
end

local CampaignSmsMessage_keys = { "Body" = true, "SenderId" = true, "MessageType" = true, nil }

function M.AssertCampaignSmsMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignSmsMessage to be of type 'table'")
	if struct["Body"] then M.Assert__string(struct["Body"]) end
	if struct["SenderId"] then M.Assert__string(struct["SenderId"]) end
	if struct["MessageType"] then M.AssertMessageType(struct["MessageType"]) end
	for k,_ in pairs(struct) do
		assert(CampaignSmsMessage_keys[k], "CampaignSmsMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignSmsMessage
-- SMS message configuration.
-- @param Body [__string] The SMS text body.
-- @param SenderId [__string] Sender ID of sent message.
-- @param MessageType [MessageType] Is this is a transactional SMS message, otherwise a promotional message.
function M.CampaignSmsMessage(Body, SenderId, MessageType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignSmsMessage")
	local t = { 
		["Body"] = Body,
		["SenderId"] = SenderId,
		["MessageType"] = MessageType,
	}
	M.AssertCampaignSmsMessage(t)
	return t
end

local WriteEventStream_keys = { "DestinationStreamArn" = true, "RoleArn" = true, "ExternalId" = true, nil }

function M.AssertWriteEventStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteEventStream to be of type 'table'")
	if struct["DestinationStreamArn"] then M.Assert__string(struct["DestinationStreamArn"]) end
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	if struct["ExternalId"] then M.Assert__string(struct["ExternalId"]) end
	for k,_ in pairs(struct) do
		assert(WriteEventStream_keys[k], "WriteEventStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteEventStream
-- Request to save an EventStream.
-- @param DestinationStreamArn [__string] The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
 Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME
 Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
-- @param RoleArn [__string] The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
-- @param ExternalId [__string] The external ID assigned the IAM role that authorizes Amazon Pinpoint to publish to the stream.
function M.WriteEventStream(DestinationStreamArn, RoleArn, ExternalId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteEventStream")
	local t = { 
		["DestinationStreamArn"] = DestinationStreamArn,
		["RoleArn"] = RoleArn,
		["ExternalId"] = ExternalId,
	}
	M.AssertWriteEventStream(t)
	return t
end

local SegmentLocation_keys = { "Country" = true, nil }

function M.AssertSegmentLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentLocation to be of type 'table'")
	if struct["Country"] then M.AssertSetDimension(struct["Country"]) end
	for k,_ in pairs(struct) do
		assert(SegmentLocation_keys[k], "SegmentLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentLocation
-- Segment location dimensions
-- @param Country [SetDimension] The country filter according to ISO 3166-1 Alpha-2 codes.
function M.SegmentLocation(Country, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentLocation")
	local t = { 
		["Country"] = Country,
	}
	M.AssertSegmentLocation(t)
	return t
end

local DeleteEmailChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertDeleteEmailChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEmailChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEmailChannelRequest_keys[k], "DeleteEmailChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEmailChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.DeleteEmailChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEmailChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertDeleteEmailChannelRequest(t)
	return t
end

local GetCampaignActivitiesRequest_keys = { "Token" = true, "ApplicationId" = true, "PageSize" = true, "CampaignId" = true, nil }

function M.AssertGetCampaignActivitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignActivitiesRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	if struct["Token"] then M.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then M.Assert__string(struct["PageSize"]) end
	if struct["CampaignId"] then M.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignActivitiesRequest_keys[k], "GetCampaignActivitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignActivitiesRequest
--  
-- @param Token [__string]  
-- @param ApplicationId [__string]  
-- @param PageSize [__string]  
-- @param CampaignId [__string]  
-- Required parameter: ApplicationId
-- Required parameter: CampaignId
function M.GetCampaignActivitiesRequest(Token, ApplicationId, PageSize, CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignActivitiesRequest")
	local t = { 
		["Token"] = Token,
		["ApplicationId"] = ApplicationId,
		["PageSize"] = PageSize,
		["CampaignId"] = CampaignId,
	}
	M.AssertGetCampaignActivitiesRequest(t)
	return t
end

local ImportJobResource_keys = { "DefineSegment" = true, "SegmentId" = true, "Format" = true, "RoleArn" = true, "S3Url" = true, "RegisterEndpoints" = true, "ExternalId" = true, "SegmentName" = true, nil }

function M.AssertImportJobResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportJobResource to be of type 'table'")
	if struct["DefineSegment"] then M.Assert__boolean(struct["DefineSegment"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	if struct["Format"] then M.AssertFormat(struct["Format"]) end
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	if struct["S3Url"] then M.Assert__string(struct["S3Url"]) end
	if struct["RegisterEndpoints"] then M.Assert__boolean(struct["RegisterEndpoints"]) end
	if struct["ExternalId"] then M.Assert__string(struct["ExternalId"]) end
	if struct["SegmentName"] then M.Assert__string(struct["SegmentName"]) end
	for k,_ in pairs(struct) do
		assert(ImportJobResource_keys[k], "ImportJobResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportJobResource
--  
-- @param DefineSegment [__boolean] Sets whether the endpoints create a segment when they are imported.
-- @param SegmentId [__string] The ID of the segment to update if the import job is meant to update an existing segment.
-- @param Format [Format] The format of the files that contain the endpoint definitions.
Valid values: CSV, JSON
-- @param RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
-- @param S3Url [__string] A URL that points to the location within an Amazon S3 bucket that contains the endpoints to import. The location can be a folder or a single file.
The URL should follow this format: s3://bucket-name/folder-name/file-name

Amazon Pinpoint will import endpoints from this location and any subfolders it contains.
-- @param RegisterEndpoints [__boolean] Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
-- @param ExternalId [__string] A unique, custom ID assigned to the IAM role that restricts who can assume the role.	
-- @param SegmentName [__string] A custom name for the segment created by the import job. Use if DefineSegment is true.
function M.ImportJobResource(DefineSegment, SegmentId, Format, RoleArn, S3Url, RegisterEndpoints, ExternalId, SegmentName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportJobResource")
	local t = { 
		["DefineSegment"] = DefineSegment,
		["SegmentId"] = SegmentId,
		["Format"] = Format,
		["RoleArn"] = RoleArn,
		["S3Url"] = S3Url,
		["RegisterEndpoints"] = RegisterEndpoints,
		["ExternalId"] = ExternalId,
		["SegmentName"] = SegmentName,
	}
	M.AssertImportJobResource(t)
	return t
end

local UpdateCampaignRequest_keys = { "ApplicationId" = true, "WriteCampaignRequest" = true, "CampaignId" = true, nil }

function M.AssertUpdateCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCampaignRequest to be of type 'table'")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteCampaignRequest"], "Expected key WriteCampaignRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["WriteCampaignRequest"] then M.AssertWriteCampaignRequest(struct["WriteCampaignRequest"]) end
	if struct["CampaignId"] then M.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateCampaignRequest_keys[k], "UpdateCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCampaignRequest
--  
-- @param ApplicationId [__string]  
-- @param WriteCampaignRequest [WriteCampaignRequest]  
-- @param CampaignId [__string]  
-- Required parameter: CampaignId
-- Required parameter: ApplicationId
-- Required parameter: WriteCampaignRequest
function M.UpdateCampaignRequest(ApplicationId, WriteCampaignRequest, CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCampaignRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["WriteCampaignRequest"] = WriteCampaignRequest,
		["CampaignId"] = CampaignId,
	}
	M.AssertUpdateCampaignRequest(t)
	return t
end

local EventStream_keys = { "DestinationStreamArn" = true, "RoleArn" = true, "LastUpdatedBy" = true, "ExternalId" = true, "LastModifiedDate" = true, "ApplicationId" = true, nil }

function M.AssertEventStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventStream to be of type 'table'")
	if struct["DestinationStreamArn"] then M.Assert__string(struct["DestinationStreamArn"]) end
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	if struct["LastUpdatedBy"] then M.Assert__string(struct["LastUpdatedBy"]) end
	if struct["ExternalId"] then M.Assert__string(struct["ExternalId"]) end
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(EventStream_keys[k], "EventStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventStream
-- Model for an event publishing subscription export.
-- @param DestinationStreamArn [__string] The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events.
 Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME
 Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
-- @param RoleArn [__string] The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
-- @param LastUpdatedBy [__string] The IAM user who last modified the event stream.
-- @param ExternalId [__string] The external ID assigned the IAM role that authorizes Amazon Pinpoint to publish to the stream.
-- @param LastModifiedDate [__string] The date the event stream was last updated in ISO 8601 format.
-- @param ApplicationId [__string] The ID of the application from which events should be published.
function M.EventStream(DestinationStreamArn, RoleArn, LastUpdatedBy, ExternalId, LastModifiedDate, ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventStream")
	local t = { 
		["DestinationStreamArn"] = DestinationStreamArn,
		["RoleArn"] = RoleArn,
		["LastUpdatedBy"] = LastUpdatedBy,
		["ExternalId"] = ExternalId,
		["LastModifiedDate"] = LastModifiedDate,
		["ApplicationId"] = ApplicationId,
	}
	M.AssertEventStream(t)
	return t
end

local UpdateApnsSandboxChannelResponse_keys = { "APNSSandboxChannelResponse" = true, nil }

function M.AssertUpdateApnsSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSSandboxChannelResponse"], "Expected key APNSSandboxChannelResponse to exist in table")
	if struct["APNSSandboxChannelResponse"] then M.AssertAPNSSandboxChannelResponse(struct["APNSSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApnsSandboxChannelResponse_keys[k], "UpdateApnsSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsSandboxChannelResponse
--  
-- @param APNSSandboxChannelResponse [APNSSandboxChannelResponse]  
-- Required parameter: APNSSandboxChannelResponse
function M.UpdateApnsSandboxChannelResponse(APNSSandboxChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApnsSandboxChannelResponse")
	local t = { 
		["APNSSandboxChannelResponse"] = APNSSandboxChannelResponse,
	}
	M.AssertUpdateApnsSandboxChannelResponse(t)
	return t
end

local GetSegmentRequest_keys = { "ApplicationId" = true, "SegmentId" = true, nil }

function M.AssertGetSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentRequest_keys[k], "GetSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentRequest
--  
-- @param ApplicationId [__string]  
-- @param SegmentId [__string]  
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
function M.GetSegmentRequest(ApplicationId, SegmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["SegmentId"] = SegmentId,
	}
	M.AssertGetSegmentRequest(t)
	return t
end

local GetCampaignActivitiesResponse_keys = { "ActivitiesResponse" = true, nil }

function M.AssertGetCampaignActivitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignActivitiesResponse to be of type 'table'")
	assert(struct["ActivitiesResponse"], "Expected key ActivitiesResponse to exist in table")
	if struct["ActivitiesResponse"] then M.AssertActivitiesResponse(struct["ActivitiesResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignActivitiesResponse_keys[k], "GetCampaignActivitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignActivitiesResponse
--  
-- @param ActivitiesResponse [ActivitiesResponse]  
-- Required parameter: ActivitiesResponse
function M.GetCampaignActivitiesResponse(ActivitiesResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignActivitiesResponse")
	local t = { 
		["ActivitiesResponse"] = ActivitiesResponse,
	}
	M.AssertGetCampaignActivitiesResponse(t)
	return t
end

local GetApnsSandboxChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertGetApnsSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(GetApnsSandboxChannelRequest_keys[k], "GetApnsSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsSandboxChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.GetApnsSandboxChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApnsSandboxChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertGetApnsSandboxChannelRequest(t)
	return t
end

local GetEndpointResponse_keys = { "EndpointResponse" = true, nil }

function M.AssertGetEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEndpointResponse to be of type 'table'")
	assert(struct["EndpointResponse"], "Expected key EndpointResponse to exist in table")
	if struct["EndpointResponse"] then M.AssertEndpointResponse(struct["EndpointResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetEndpointResponse_keys[k], "GetEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEndpointResponse
--  
-- @param EndpointResponse [EndpointResponse]  
-- Required parameter: EndpointResponse
function M.GetEndpointResponse(EndpointResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEndpointResponse")
	local t = { 
		["EndpointResponse"] = EndpointResponse,
	}
	M.AssertGetEndpointResponse(t)
	return t
end

local GetSegmentsResponse_keys = { "SegmentsResponse" = true, nil }

function M.AssertGetSegmentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentsResponse to be of type 'table'")
	assert(struct["SegmentsResponse"], "Expected key SegmentsResponse to exist in table")
	if struct["SegmentsResponse"] then M.AssertSegmentsResponse(struct["SegmentsResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentsResponse_keys[k], "GetSegmentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentsResponse
--  
-- @param SegmentsResponse [SegmentsResponse]  
-- Required parameter: SegmentsResponse
function M.GetSegmentsResponse(SegmentsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentsResponse")
	local t = { 
		["SegmentsResponse"] = SegmentsResponse,
	}
	M.AssertGetSegmentsResponse(t)
	return t
end

local GCMChannelRequest_keys = { "ApiKey" = true, "Enabled" = true, nil }

function M.AssertGCMChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GCMChannelRequest to be of type 'table'")
	if struct["ApiKey"] then M.Assert__string(struct["ApiKey"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(GCMChannelRequest_keys[k], "GCMChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GCMChannelRequest
-- Google Cloud Messaging credentials
-- @param ApiKey [__string] Platform credential API key from Google.
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
function M.GCMChannelRequest(ApiKey, Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GCMChannelRequest")
	local t = { 
		["ApiKey"] = ApiKey,
		["Enabled"] = Enabled,
	}
	M.AssertGCMChannelRequest(t)
	return t
end

local NotFoundException_keys = { "Message" = true, "RequestID" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	if struct["RequestID"] then M.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- Simple message object.
-- @param Message [__string] The error message returned from the API.
-- @param RequestID [__string] The unique message body ID.
function M.NotFoundException(Message, RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["Message"] = Message,
		["RequestID"] = RequestID,
	}
	M.AssertNotFoundException(t)
	return t
end

local UpdateApnsChannelResponse_keys = { "APNSChannelResponse" = true, nil }

function M.AssertUpdateApnsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsChannelResponse to be of type 'table'")
	assert(struct["APNSChannelResponse"], "Expected key APNSChannelResponse to exist in table")
	if struct["APNSChannelResponse"] then M.AssertAPNSChannelResponse(struct["APNSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApnsChannelResponse_keys[k], "UpdateApnsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsChannelResponse
--  
-- @param APNSChannelResponse [APNSChannelResponse]  
-- Required parameter: APNSChannelResponse
function M.UpdateApnsChannelResponse(APNSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApnsChannelResponse")
	local t = { 
		["APNSChannelResponse"] = APNSChannelResponse,
	}
	M.AssertUpdateApnsChannelResponse(t)
	return t
end

local UpdateEmailChannelResponse_keys = { "EmailChannelResponse" = true, nil }

function M.AssertUpdateEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEmailChannelResponse to be of type 'table'")
	assert(struct["EmailChannelResponse"], "Expected key EmailChannelResponse to exist in table")
	if struct["EmailChannelResponse"] then M.AssertEmailChannelResponse(struct["EmailChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEmailChannelResponse_keys[k], "UpdateEmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEmailChannelResponse
--  
-- @param EmailChannelResponse [EmailChannelResponse]  
-- Required parameter: EmailChannelResponse
function M.UpdateEmailChannelResponse(EmailChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEmailChannelResponse")
	local t = { 
		["EmailChannelResponse"] = EmailChannelResponse,
	}
	M.AssertUpdateEmailChannelResponse(t)
	return t
end

local ImportJobResponse_keys = { "CompletionDate" = true, "Definition" = true, "Type" = true, "TotalFailures" = true, "TotalPieces" = true, "FailedPieces" = true, "CompletedPieces" = true, "JobStatus" = true, "Failures" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, "TotalProcessed" = true, nil }

function M.AssertImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportJobResponse to be of type 'table'")
	if struct["CompletionDate"] then M.Assert__string(struct["CompletionDate"]) end
	if struct["Definition"] then M.AssertImportJobResource(struct["Definition"]) end
	if struct["Type"] then M.Assert__string(struct["Type"]) end
	if struct["TotalFailures"] then M.Assert__integer(struct["TotalFailures"]) end
	if struct["TotalPieces"] then M.Assert__integer(struct["TotalPieces"]) end
	if struct["FailedPieces"] then M.Assert__integer(struct["FailedPieces"]) end
	if struct["CompletedPieces"] then M.Assert__integer(struct["CompletedPieces"]) end
	if struct["JobStatus"] then M.AssertJobStatus(struct["JobStatus"]) end
	if struct["Failures"] then M.AssertListOf__string(struct["Failures"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["TotalProcessed"] then M.Assert__integer(struct["TotalProcessed"]) end
	for k,_ in pairs(struct) do
		assert(ImportJobResponse_keys[k], "ImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportJobResponse
--  
-- @param CompletionDate [__string] The date the import job completed in ISO 8601 format.
-- @param Definition [ImportJobResource] The import job settings.
-- @param Type [__string] The job type. Will be Import.
-- @param TotalFailures [__integer] The number of endpoints that failed to import; for example, because of syntax errors.
-- @param TotalPieces [__integer] The total number of pieces that must be imported to finish the job. Each piece is an approximately equal portion of the endpoints to import.
-- @param FailedPieces [__integer] The number of pieces that have failed to import as of the time of the request.
-- @param CompletedPieces [__integer] The number of pieces that have successfully imported as of the time of the request.
-- @param JobStatus [JobStatus] The status of the import job.
Valid values: CREATED, INITIALIZING, PROCESSING, COMPLETING, COMPLETED, FAILING, FAILED

The job status is FAILED if one or more pieces failed to import.
-- @param Failures [ListOf__string] Provides up to 100 of the first failed entries for the job, if any exist.
-- @param CreationDate [__string] The date the import job was created in ISO 8601 format.
-- @param ApplicationId [__string] The unique ID of the application to which the import job applies.
-- @param Id [__string] The unique ID of the import job.
-- @param TotalProcessed [__integer] The number of endpoints that were processed by the import job.
function M.ImportJobResponse(CompletionDate, Definition, Type, TotalFailures, TotalPieces, FailedPieces, CompletedPieces, JobStatus, Failures, CreationDate, ApplicationId, Id, TotalProcessed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportJobResponse")
	local t = { 
		["CompletionDate"] = CompletionDate,
		["Definition"] = Definition,
		["Type"] = Type,
		["TotalFailures"] = TotalFailures,
		["TotalPieces"] = TotalPieces,
		["FailedPieces"] = FailedPieces,
		["CompletedPieces"] = CompletedPieces,
		["JobStatus"] = JobStatus,
		["Failures"] = Failures,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
		["TotalProcessed"] = TotalProcessed,
	}
	M.AssertImportJobResponse(t)
	return t
end

local SendMessagesResponse_keys = { "MessageResponse" = true, nil }

function M.AssertSendMessagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessagesResponse to be of type 'table'")
	assert(struct["MessageResponse"], "Expected key MessageResponse to exist in table")
	if struct["MessageResponse"] then M.AssertMessageResponse(struct["MessageResponse"]) end
	for k,_ in pairs(struct) do
		assert(SendMessagesResponse_keys[k], "SendMessagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessagesResponse
--  
-- @param MessageResponse [MessageResponse]  
-- Required parameter: MessageResponse
function M.SendMessagesResponse(MessageResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessagesResponse")
	local t = { 
		["MessageResponse"] = MessageResponse,
	}
	M.AssertSendMessagesResponse(t)
	return t
end

local GetSegmentImportJobsResponse_keys = { "ImportJobsResponse" = true, nil }

function M.AssertGetSegmentImportJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentImportJobsResponse to be of type 'table'")
	assert(struct["ImportJobsResponse"], "Expected key ImportJobsResponse to exist in table")
	if struct["ImportJobsResponse"] then M.AssertImportJobsResponse(struct["ImportJobsResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentImportJobsResponse_keys[k], "GetSegmentImportJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentImportJobsResponse
--  
-- @param ImportJobsResponse [ImportJobsResponse]  
-- Required parameter: ImportJobsResponse
function M.GetSegmentImportJobsResponse(ImportJobsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentImportJobsResponse")
	local t = { 
		["ImportJobsResponse"] = ImportJobsResponse,
	}
	M.AssertGetSegmentImportJobsResponse(t)
	return t
end

local MessageRequest_keys = { "MessageConfiguration" = true, "Addresses" = true, "Context" = true, nil }

function M.AssertMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageRequest to be of type 'table'")
	if struct["MessageConfiguration"] then M.AssertDirectMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["Addresses"] then M.AssertMapOfAddressConfiguration(struct["Addresses"]) end
	if struct["Context"] then M.AssertMapOf__string(struct["Context"]) end
	for k,_ in pairs(struct) do
		assert(MessageRequest_keys[k], "MessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageRequest
-- Send message request.
-- @param MessageConfiguration [DirectMessageConfiguration] Message configuration.
-- @param Addresses [MapOfAddressConfiguration] A map of destination addresses, with the address as the key(Email address, phone number or push token) and the Address Configuration as the value.
-- @param Context [MapOf__string] A map of custom attributes to attributes to be attached to the message. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
function M.MessageRequest(MessageConfiguration, Addresses, Context, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageRequest")
	local t = { 
		["MessageConfiguration"] = MessageConfiguration,
		["Addresses"] = Addresses,
		["Context"] = Context,
	}
	M.AssertMessageRequest(t)
	return t
end

local GetApnsChannelResponse_keys = { "APNSChannelResponse" = true, nil }

function M.AssertGetApnsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsChannelResponse to be of type 'table'")
	assert(struct["APNSChannelResponse"], "Expected key APNSChannelResponse to exist in table")
	if struct["APNSChannelResponse"] then M.AssertAPNSChannelResponse(struct["APNSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetApnsChannelResponse_keys[k], "GetApnsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsChannelResponse
--  
-- @param APNSChannelResponse [APNSChannelResponse]  
-- Required parameter: APNSChannelResponse
function M.GetApnsChannelResponse(APNSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApnsChannelResponse")
	local t = { 
		["APNSChannelResponse"] = APNSChannelResponse,
	}
	M.AssertGetApnsChannelResponse(t)
	return t
end

local CreateSegmentRequest_keys = { "WriteSegmentRequest" = true, "ApplicationId" = true, nil }

function M.AssertCreateSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSegmentRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteSegmentRequest"], "Expected key WriteSegmentRequest to exist in table")
	if struct["WriteSegmentRequest"] then M.AssertWriteSegmentRequest(struct["WriteSegmentRequest"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(CreateSegmentRequest_keys[k], "CreateSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSegmentRequest
--  
-- @param WriteSegmentRequest [WriteSegmentRequest]  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
-- Required parameter: WriteSegmentRequest
function M.CreateSegmentRequest(WriteSegmentRequest, ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSegmentRequest")
	local t = { 
		["WriteSegmentRequest"] = WriteSegmentRequest,
		["ApplicationId"] = ApplicationId,
	}
	M.AssertCreateSegmentRequest(t)
	return t
end

local SMSChannelResponse_keys = { "ShortCode" = true, "LastModifiedDate" = true, "Enabled" = true, "LastModifiedBy" = true, "Platform" = true, "Version" = true, "SenderId" = true, "IsArchived" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, nil }

function M.AssertSMSChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSChannelResponse to be of type 'table'")
	if struct["ShortCode"] then M.Assert__string(struct["ShortCode"]) end
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then M.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then M.Assert__string(struct["Platform"]) end
	if struct["Version"] then M.Assert__integer(struct["Version"]) end
	if struct["SenderId"] then M.Assert__string(struct["SenderId"]) end
	if struct["IsArchived"] then M.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(SMSChannelResponse_keys[k], "SMSChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSChannelResponse
-- SMS Channel Response.
-- @param ShortCode [__string] The short code registered with the phone provider.
-- @param LastModifiedDate [__string] Last date this was updated
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
-- @param LastModifiedBy [__string] Who last updated this entry
-- @param Platform [__string] Platform type. Will be "SMS"
-- @param Version [__integer] Version of channel
-- @param SenderId [__string] Sender identifier of your messages.
-- @param IsArchived [__boolean] Is this channel archived
-- @param CreationDate [__string] The date that the settings were last updated in ISO 8601 format.
-- @param ApplicationId [__string] Application id
-- @param Id [__string] Channel ID. Not used, only for backwards compatibility.
function M.SMSChannelResponse(ShortCode, LastModifiedDate, Enabled, LastModifiedBy, Platform, Version, SenderId, IsArchived, CreationDate, ApplicationId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SMSChannelResponse")
	local t = { 
		["ShortCode"] = ShortCode,
		["LastModifiedDate"] = LastModifiedDate,
		["Enabled"] = Enabled,
		["LastModifiedBy"] = LastModifiedBy,
		["Platform"] = Platform,
		["Version"] = Version,
		["SenderId"] = SenderId,
		["IsArchived"] = IsArchived,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
	}
	M.AssertSMSChannelResponse(t)
	return t
end

local TooManyRequestsException_keys = { "Message" = true, "RequestID" = true, nil }

function M.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	if struct["RequestID"] then M.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestsException_keys[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- Simple message object.
-- @param Message [__string] The error message returned from the API.
-- @param RequestID [__string] The unique message body ID.
function M.TooManyRequestsException(Message, RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["Message"] = Message,
		["RequestID"] = RequestID,
	}
	M.AssertTooManyRequestsException(t)
	return t
end

local CampaignResponse_keys = { "Description" = true, "Limits" = true, "Schedule" = true, "TreatmentName" = true, "LastModifiedDate" = true, "HoldoutPercent" = true, "SegmentVersion" = true, "SegmentId" = true, "State" = true, "Version" = true, "AdditionalTreatments" = true, "DefaultState" = true, "MessageConfiguration" = true, "IsPaused" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, "TreatmentDescription" = true, "Name" = true, nil }

function M.AssertCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignResponse to be of type 'table'")
	if struct["Description"] then M.Assert__string(struct["Description"]) end
	if struct["Limits"] then M.AssertCampaignLimits(struct["Limits"]) end
	if struct["Schedule"] then M.AssertSchedule(struct["Schedule"]) end
	if struct["TreatmentName"] then M.Assert__string(struct["TreatmentName"]) end
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["HoldoutPercent"] then M.Assert__integer(struct["HoldoutPercent"]) end
	if struct["SegmentVersion"] then M.Assert__integer(struct["SegmentVersion"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	if struct["State"] then M.AssertCampaignState(struct["State"]) end
	if struct["Version"] then M.Assert__integer(struct["Version"]) end
	if struct["AdditionalTreatments"] then M.AssertListOfTreatmentResource(struct["AdditionalTreatments"]) end
	if struct["DefaultState"] then M.AssertCampaignState(struct["DefaultState"]) end
	if struct["MessageConfiguration"] then M.AssertMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["IsPaused"] then M.Assert__boolean(struct["IsPaused"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["TreatmentDescription"] then M.Assert__string(struct["TreatmentDescription"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CampaignResponse_keys[k], "CampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignResponse
-- Campaign definition
-- @param Description [__string] A description of the campaign.
-- @param Limits [CampaignLimits] The campaign limits settings.
-- @param Schedule [Schedule] The campaign schedule.
-- @param TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- @param LastModifiedDate [__string] The date the campaign was last updated in ISO 8601 format.	
-- @param HoldoutPercent [__integer] The allocated percentage of end users who will not receive messages from this campaign.
-- @param SegmentVersion [__integer] The version of the segment to which the campaign sends messages.
-- @param SegmentId [__string] The ID of the segment to which the campaign sends messages.
-- @param State [CampaignState] The campaign status.

An A/B test campaign will have a status of COMPLETED only when all treatments have a status of COMPLETED.
-- @param Version [__integer] The campaign version number.
-- @param AdditionalTreatments [ListOfTreatmentResource] Treatments that are defined in addition to the default treatment.
-- @param DefaultState [CampaignState] The status of the campaign's default treatment. Only present for A/B test campaigns.
-- @param MessageConfiguration [MessageConfiguration] The message configuration settings.
-- @param IsPaused [__boolean] Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
-- @param CreationDate [__string] The date the campaign was created in ISO 8601 format.
-- @param ApplicationId [__string] The ID of the application to which the campaign applies.
-- @param Id [__string] The unique campaign ID.
-- @param TreatmentDescription [__string] A custom description for the treatment.
-- @param Name [__string] The custom name of the campaign.
function M.CampaignResponse(Description, Limits, Schedule, TreatmentName, LastModifiedDate, HoldoutPercent, SegmentVersion, SegmentId, State, Version, AdditionalTreatments, DefaultState, MessageConfiguration, IsPaused, CreationDate, ApplicationId, Id, TreatmentDescription, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignResponse")
	local t = { 
		["Description"] = Description,
		["Limits"] = Limits,
		["Schedule"] = Schedule,
		["TreatmentName"] = TreatmentName,
		["LastModifiedDate"] = LastModifiedDate,
		["HoldoutPercent"] = HoldoutPercent,
		["SegmentVersion"] = SegmentVersion,
		["SegmentId"] = SegmentId,
		["State"] = State,
		["Version"] = Version,
		["AdditionalTreatments"] = AdditionalTreatments,
		["DefaultState"] = DefaultState,
		["MessageConfiguration"] = MessageConfiguration,
		["IsPaused"] = IsPaused,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
		["TreatmentDescription"] = TreatmentDescription,
		["Name"] = Name,
	}
	M.AssertCampaignResponse(t)
	return t
end

local CampaignEmailMessage_keys = { "Body" = true, "Title" = true, "HtmlBody" = true, nil }

function M.AssertCampaignEmailMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignEmailMessage to be of type 'table'")
	if struct["Body"] then M.Assert__string(struct["Body"]) end
	if struct["Title"] then M.Assert__string(struct["Title"]) end
	if struct["HtmlBody"] then M.Assert__string(struct["HtmlBody"]) end
	for k,_ in pairs(struct) do
		assert(CampaignEmailMessage_keys[k], "CampaignEmailMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignEmailMessage
-- The email message configuration.
-- @param Body [__string] The email text body.
-- @param Title [__string] The email title (Or subject).
-- @param HtmlBody [__string] The email html body.
function M.CampaignEmailMessage(Body, Title, HtmlBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignEmailMessage")
	local t = { 
		["Body"] = Body,
		["Title"] = Title,
		["HtmlBody"] = HtmlBody,
	}
	M.AssertCampaignEmailMessage(t)
	return t
end

local UpdateApnsSandboxChannelRequest_keys = { "ApplicationId" = true, "APNSSandboxChannelRequest" = true, nil }

function M.AssertUpdateApnsSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["APNSSandboxChannelRequest"], "Expected key APNSSandboxChannelRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["APNSSandboxChannelRequest"] then M.AssertAPNSSandboxChannelRequest(struct["APNSSandboxChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApnsSandboxChannelRequest_keys[k], "UpdateApnsSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsSandboxChannelRequest
--  
-- @param ApplicationId [__string]  
-- @param APNSSandboxChannelRequest [APNSSandboxChannelRequest]  
-- Required parameter: ApplicationId
-- Required parameter: APNSSandboxChannelRequest
function M.UpdateApnsSandboxChannelRequest(ApplicationId, APNSSandboxChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApnsSandboxChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["APNSSandboxChannelRequest"] = APNSSandboxChannelRequest,
	}
	M.AssertUpdateApnsSandboxChannelRequest(t)
	return t
end

local UpdateEndpointResponse_keys = { "MessageBody" = true, nil }

function M.AssertUpdateEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointResponse to be of type 'table'")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["MessageBody"] then M.AssertMessageBody(struct["MessageBody"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEndpointResponse_keys[k], "UpdateEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointResponse
--  
-- @param MessageBody [MessageBody]  
-- Required parameter: MessageBody
function M.UpdateEndpointResponse(MessageBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEndpointResponse")
	local t = { 
		["MessageBody"] = MessageBody,
	}
	M.AssertUpdateEndpointResponse(t)
	return t
end

local CampaignsResponse_keys = { "Item" = true, "NextToken" = true, nil }

function M.AssertCampaignsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignsResponse to be of type 'table'")
	if struct["Item"] then M.AssertListOfCampaignResponse(struct["Item"]) end
	if struct["NextToken"] then M.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(CampaignsResponse_keys[k], "CampaignsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignsResponse
-- List of available campaigns.
-- @param Item [ListOfCampaignResponse] A list of campaigns.
-- @param NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
function M.CampaignsResponse(Item, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignsResponse")
	local t = { 
		["Item"] = Item,
		["NextToken"] = NextToken,
	}
	M.AssertCampaignsResponse(t)
	return t
end

local DefaultMessage_keys = { "Body" = true, "Substitutions" = true, nil }

function M.AssertDefaultMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultMessage to be of type 'table'")
	if struct["Body"] then M.Assert__string(struct["Body"]) end
	if struct["Substitutions"] then M.AssertMapOfListOf__string(struct["Substitutions"]) end
	for k,_ in pairs(struct) do
		assert(DefaultMessage_keys[k], "DefaultMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultMessage
-- Default Message across push notification, email, and sms.
-- @param Body [__string] The message body of the notification, the email body or the text message.
-- @param Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
function M.DefaultMessage(Body, Substitutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultMessage")
	local t = { 
		["Body"] = Body,
		["Substitutions"] = Substitutions,
	}
	M.AssertDefaultMessage(t)
	return t
end

local GetEmailChannelResponse_keys = { "EmailChannelResponse" = true, nil }

function M.AssertGetEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEmailChannelResponse to be of type 'table'")
	assert(struct["EmailChannelResponse"], "Expected key EmailChannelResponse to exist in table")
	if struct["EmailChannelResponse"] then M.AssertEmailChannelResponse(struct["EmailChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetEmailChannelResponse_keys[k], "GetEmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEmailChannelResponse
--  
-- @param EmailChannelResponse [EmailChannelResponse]  
-- Required parameter: EmailChannelResponse
function M.GetEmailChannelResponse(EmailChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEmailChannelResponse")
	local t = { 
		["EmailChannelResponse"] = EmailChannelResponse,
	}
	M.AssertGetEmailChannelResponse(t)
	return t
end

local DeleteGcmChannelResponse_keys = { "GCMChannelResponse" = true, nil }

function M.AssertDeleteGcmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGcmChannelResponse to be of type 'table'")
	assert(struct["GCMChannelResponse"], "Expected key GCMChannelResponse to exist in table")
	if struct["GCMChannelResponse"] then M.AssertGCMChannelResponse(struct["GCMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGcmChannelResponse_keys[k], "DeleteGcmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGcmChannelResponse
--  
-- @param GCMChannelResponse [GCMChannelResponse]  
-- Required parameter: GCMChannelResponse
function M.DeleteGcmChannelResponse(GCMChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGcmChannelResponse")
	local t = { 
		["GCMChannelResponse"] = GCMChannelResponse,
	}
	M.AssertDeleteGcmChannelResponse(t)
	return t
end

local DeleteEmailChannelResponse_keys = { "EmailChannelResponse" = true, nil }

function M.AssertDeleteEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEmailChannelResponse to be of type 'table'")
	assert(struct["EmailChannelResponse"], "Expected key EmailChannelResponse to exist in table")
	if struct["EmailChannelResponse"] then M.AssertEmailChannelResponse(struct["EmailChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEmailChannelResponse_keys[k], "DeleteEmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEmailChannelResponse
--  
-- @param EmailChannelResponse [EmailChannelResponse]  
-- Required parameter: EmailChannelResponse
function M.DeleteEmailChannelResponse(EmailChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEmailChannelResponse")
	local t = { 
		["EmailChannelResponse"] = EmailChannelResponse,
	}
	M.AssertDeleteEmailChannelResponse(t)
	return t
end

local Message_keys = { "Body" = true, "MediaUrl" = true, "Url" = true, "ImageUrl" = true, "ImageSmallIconUrl" = true, "Title" = true, "Action" = true, "SilentPush" = true, "JsonBody" = true, "ImageIconUrl" = true, nil }

function M.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	if struct["Body"] then M.Assert__string(struct["Body"]) end
	if struct["MediaUrl"] then M.Assert__string(struct["MediaUrl"]) end
	if struct["Url"] then M.Assert__string(struct["Url"]) end
	if struct["ImageUrl"] then M.Assert__string(struct["ImageUrl"]) end
	if struct["ImageSmallIconUrl"] then M.Assert__string(struct["ImageSmallIconUrl"]) end
	if struct["Title"] then M.Assert__string(struct["Title"]) end
	if struct["Action"] then M.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then M.Assert__boolean(struct["SilentPush"]) end
	if struct["JsonBody"] then M.Assert__string(struct["JsonBody"]) end
	if struct["ImageIconUrl"] then M.Assert__string(struct["ImageIconUrl"]) end
	for k,_ in pairs(struct) do
		assert(Message_keys[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
--  
-- @param Body [__string] The message body. Can include up to 140 characters.
-- @param MediaUrl [__string] The URL that points to the media resource, for example a .mp4 or .gif file.
-- @param Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- @param ImageUrl [__string] The URL that points to an image used in the push notification.
-- @param ImageSmallIconUrl [__string] The URL that points to the small icon image for the push notification icon, for example, the app icon.
-- @param Title [__string] The message title that displays above the message on the user's device.
-- @param Action [Action] The action that occurs if the user taps a push notification delivered by the campaign:
OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action.

DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app.

URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify.
-- @param SilentPush [__boolean] Indicates if the message should display on the users device.

Silent pushes can be used for Remote Configuration and Phone Home use cases. 
-- @param JsonBody [__string] The JSON payload used for a silent push.
-- @param ImageIconUrl [__string] The URL that points to the icon image for the push notification icon, for example, the app icon.
function M.Message(Body, MediaUrl, Url, ImageUrl, ImageSmallIconUrl, Title, Action, SilentPush, JsonBody, ImageIconUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Message")
	local t = { 
		["Body"] = Body,
		["MediaUrl"] = MediaUrl,
		["Url"] = Url,
		["ImageUrl"] = ImageUrl,
		["ImageSmallIconUrl"] = ImageSmallIconUrl,
		["Title"] = Title,
		["Action"] = Action,
		["SilentPush"] = SilentPush,
		["JsonBody"] = JsonBody,
		["ImageIconUrl"] = ImageIconUrl,
	}
	M.AssertMessage(t)
	return t
end

local MessageResponse_keys = { "ApplicationId" = true, "RequestId" = true, "Result" = true, nil }

function M.AssertMessageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageResponse to be of type 'table'")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["RequestId"] then M.Assert__string(struct["RequestId"]) end
	if struct["Result"] then M.AssertMapOfMessageResult(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(MessageResponse_keys[k], "MessageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageResponse
-- Send message response.
-- @param ApplicationId [__string] Application id of the message.
-- @param RequestId [__string] Original request Id for which this message was delivered.
-- @param Result [MapOfMessageResult] A map containing a multi part response for each address, with the address as the key(Email address, phone number or push token) and the result as the value.
function M.MessageResponse(ApplicationId, RequestId, Result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageResponse")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["RequestId"] = RequestId,
		["Result"] = Result,
	}
	M.AssertMessageResponse(t)
	return t
end

local APNSChannelRequest_keys = { "PrivateKey" = true, "Enabled" = true, "Certificate" = true, nil }

function M.AssertAPNSChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSChannelRequest to be of type 'table'")
	if struct["PrivateKey"] then M.Assert__string(struct["PrivateKey"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	if struct["Certificate"] then M.Assert__string(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(APNSChannelRequest_keys[k], "APNSChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSChannelRequest
-- Apple Push Notification Service channel definition.
-- @param PrivateKey [__string] The certificate private key.
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
-- @param Certificate [__string] The distribution certificate from Apple.
function M.APNSChannelRequest(PrivateKey, Enabled, Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSChannelRequest")
	local t = { 
		["PrivateKey"] = PrivateKey,
		["Enabled"] = Enabled,
		["Certificate"] = Certificate,
	}
	M.AssertAPNSChannelRequest(t)
	return t
end

local EndpointDemographic_keys = { "Locale" = true, "ModelVersion" = true, "Make" = true, "AppVersion" = true, "Platform" = true, "PlatformVersion" = true, "Timezone" = true, "Model" = true, nil }

function M.AssertEndpointDemographic(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointDemographic to be of type 'table'")
	if struct["Locale"] then M.Assert__string(struct["Locale"]) end
	if struct["ModelVersion"] then M.Assert__string(struct["ModelVersion"]) end
	if struct["Make"] then M.Assert__string(struct["Make"]) end
	if struct["AppVersion"] then M.Assert__string(struct["AppVersion"]) end
	if struct["Platform"] then M.Assert__string(struct["Platform"]) end
	if struct["PlatformVersion"] then M.Assert__string(struct["PlatformVersion"]) end
	if struct["Timezone"] then M.Assert__string(struct["Timezone"]) end
	if struct["Model"] then M.Assert__string(struct["Model"]) end
	for k,_ in pairs(struct) do
		assert(EndpointDemographic_keys[k], "EndpointDemographic contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointDemographic
-- Endpoint demographic data
-- @param Locale [__string] The endpoint locale in the following format: The ISO 639-1 alpha-2 code, followed by an underscore, followed by an ISO 3166-1 alpha-2 value.

-- @param ModelVersion [__string] The endpoint model version.
-- @param Make [__string] The endpoint make, such as such as Apple or Samsung.
-- @param AppVersion [__string] The version of the application associated with the endpoint.
-- @param Platform [__string] The endpoint platform, such as ios or android.
-- @param PlatformVersion [__string] The endpoint platform version.
-- @param Timezone [__string] The timezone of the endpoint. Specified as a tz database value, such as Americas/Los_Angeles.
-- @param Model [__string] The endpoint model, such as iPhone.
function M.EndpointDemographic(Locale, ModelVersion, Make, AppVersion, Platform, PlatformVersion, Timezone, Model, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointDemographic")
	local t = { 
		["Locale"] = Locale,
		["ModelVersion"] = ModelVersion,
		["Make"] = Make,
		["AppVersion"] = AppVersion,
		["Platform"] = Platform,
		["PlatformVersion"] = PlatformVersion,
		["Timezone"] = Timezone,
		["Model"] = Model,
	}
	M.AssertEndpointDemographic(t)
	return t
end

local MessageResult_keys = { "DeliveryStatus" = true, "UpdatedToken" = true, "StatusMessage" = true, "StatusCode" = true, nil }

function M.AssertMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageResult to be of type 'table'")
	if struct["DeliveryStatus"] then M.AssertDeliveryStatus(struct["DeliveryStatus"]) end
	if struct["UpdatedToken"] then M.Assert__string(struct["UpdatedToken"]) end
	if struct["StatusMessage"] then M.Assert__string(struct["StatusMessage"]) end
	if struct["StatusCode"] then M.Assert__integer(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(MessageResult_keys[k], "MessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageResult
-- The result from sending a message to an address.
-- @param DeliveryStatus [DeliveryStatus] Delivery status of message.
-- @param UpdatedToken [__string] If token was updated as part of delivery. (This is GCM Specific)
-- @param StatusMessage [__string] Status message for message delivery.
-- @param StatusCode [__integer] Downstream service status code.
function M.MessageResult(DeliveryStatus, UpdatedToken, StatusMessage, StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageResult")
	local t = { 
		["DeliveryStatus"] = DeliveryStatus,
		["UpdatedToken"] = UpdatedToken,
		["StatusMessage"] = StatusMessage,
		["StatusCode"] = StatusCode,
	}
	M.AssertMessageResult(t)
	return t
end

local GetCampaignVersionsRequest_keys = { "Token" = true, "ApplicationId" = true, "PageSize" = true, "CampaignId" = true, nil }

function M.AssertGetCampaignVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignVersionsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	if struct["Token"] then M.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then M.Assert__string(struct["PageSize"]) end
	if struct["CampaignId"] then M.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignVersionsRequest_keys[k], "GetCampaignVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignVersionsRequest
--  
-- @param Token [__string]  
-- @param ApplicationId [__string]  
-- @param PageSize [__string]  
-- @param CampaignId [__string]  
-- Required parameter: ApplicationId
-- Required parameter: CampaignId
function M.GetCampaignVersionsRequest(Token, ApplicationId, PageSize, CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignVersionsRequest")
	local t = { 
		["Token"] = Token,
		["ApplicationId"] = ApplicationId,
		["PageSize"] = PageSize,
		["CampaignId"] = CampaignId,
	}
	M.AssertGetCampaignVersionsRequest(t)
	return t
end

local DeleteSegmentResponse_keys = { "SegmentResponse" = true, nil }

function M.AssertDeleteSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSegmentResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then M.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSegmentResponse_keys[k], "DeleteSegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSegmentResponse
--  
-- @param SegmentResponse [SegmentResponse]  
-- Required parameter: SegmentResponse
function M.DeleteSegmentResponse(SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSegmentResponse")
	local t = { 
		["SegmentResponse"] = SegmentResponse,
	}
	M.AssertDeleteSegmentResponse(t)
	return t
end

local GetSegmentVersionsResponse_keys = { "SegmentsResponse" = true, nil }

function M.AssertGetSegmentVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentVersionsResponse to be of type 'table'")
	assert(struct["SegmentsResponse"], "Expected key SegmentsResponse to exist in table")
	if struct["SegmentsResponse"] then M.AssertSegmentsResponse(struct["SegmentsResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentVersionsResponse_keys[k], "GetSegmentVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentVersionsResponse
--  
-- @param SegmentsResponse [SegmentsResponse]  
-- Required parameter: SegmentsResponse
function M.GetSegmentVersionsResponse(SegmentsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentVersionsResponse")
	local t = { 
		["SegmentsResponse"] = SegmentsResponse,
	}
	M.AssertGetSegmentVersionsResponse(t)
	return t
end

local DeleteCampaignResponse_keys = { "CampaignResponse" = true, nil }

function M.AssertDeleteCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCampaignResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then M.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCampaignResponse_keys[k], "DeleteCampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCampaignResponse
--  
-- @param CampaignResponse [CampaignResponse]  
-- Required parameter: CampaignResponse
function M.DeleteCampaignResponse(CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCampaignResponse")
	local t = { 
		["CampaignResponse"] = CampaignResponse,
	}
	M.AssertDeleteCampaignResponse(t)
	return t
end

local SendMessagesRequest_keys = { "ApplicationId" = true, "MessageRequest" = true, nil }

function M.AssertSendMessagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendMessagesRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["MessageRequest"], "Expected key MessageRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["MessageRequest"] then M.AssertMessageRequest(struct["MessageRequest"]) end
	for k,_ in pairs(struct) do
		assert(SendMessagesRequest_keys[k], "SendMessagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendMessagesRequest
--  
-- @param ApplicationId [__string]  
-- @param MessageRequest [MessageRequest]  
-- Required parameter: ApplicationId
-- Required parameter: MessageRequest
function M.SendMessagesRequest(ApplicationId, MessageRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessagesRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["MessageRequest"] = MessageRequest,
	}
	M.AssertSendMessagesRequest(t)
	return t
end

local DeleteCampaignRequest_keys = { "ApplicationId" = true, "CampaignId" = true, nil }

function M.AssertDeleteCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCampaignRequest to be of type 'table'")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["CampaignId"] then M.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteCampaignRequest_keys[k], "DeleteCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCampaignRequest
--  
-- @param ApplicationId [__string]  
-- @param CampaignId [__string]  
-- Required parameter: CampaignId
-- Required parameter: ApplicationId
function M.DeleteCampaignRequest(ApplicationId, CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCampaignRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["CampaignId"] = CampaignId,
	}
	M.AssertDeleteCampaignRequest(t)
	return t
end

local QuietTime_keys = { "Start" = true, "End" = true, nil }

function M.AssertQuietTime(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QuietTime to be of type 'table'")
	if struct["Start"] then M.Assert__string(struct["Start"]) end
	if struct["End"] then M.Assert__string(struct["End"]) end
	for k,_ in pairs(struct) do
		assert(QuietTime_keys[k], "QuietTime contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QuietTime
-- Quiet Time
-- @param Start [__string] The default start time for quiet time in ISO 8601 format.
-- @param End [__string] The default end time for quiet time in ISO 8601 format.
function M.QuietTime(Start, End, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QuietTime")
	local t = { 
		["Start"] = Start,
		["End"] = End,
	}
	M.AssertQuietTime(t)
	return t
end

local DeleteApnsSandboxChannelResponse_keys = { "APNSSandboxChannelResponse" = true, nil }

function M.AssertDeleteApnsSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSSandboxChannelResponse"], "Expected key APNSSandboxChannelResponse to exist in table")
	if struct["APNSSandboxChannelResponse"] then M.AssertAPNSSandboxChannelResponse(struct["APNSSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApnsSandboxChannelResponse_keys[k], "DeleteApnsSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsSandboxChannelResponse
--  
-- @param APNSSandboxChannelResponse [APNSSandboxChannelResponse]  
-- Required parameter: APNSSandboxChannelResponse
function M.DeleteApnsSandboxChannelResponse(APNSSandboxChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApnsSandboxChannelResponse")
	local t = { 
		["APNSSandboxChannelResponse"] = APNSSandboxChannelResponse,
	}
	M.AssertDeleteApnsSandboxChannelResponse(t)
	return t
end

local GetCampaignRequest_keys = { "ApplicationId" = true, "CampaignId" = true, nil }

function M.AssertGetCampaignRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignRequest to be of type 'table'")
	assert(struct["CampaignId"], "Expected key CampaignId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["CampaignId"] then M.Assert__string(struct["CampaignId"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignRequest_keys[k], "GetCampaignRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignRequest
--  
-- @param ApplicationId [__string]  
-- @param CampaignId [__string]  
-- Required parameter: CampaignId
-- Required parameter: ApplicationId
function M.GetCampaignRequest(ApplicationId, CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["CampaignId"] = CampaignId,
	}
	M.AssertGetCampaignRequest(t)
	return t
end

local GetCampaignsResponse_keys = { "CampaignsResponse" = true, nil }

function M.AssertGetCampaignsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignsResponse to be of type 'table'")
	assert(struct["CampaignsResponse"], "Expected key CampaignsResponse to exist in table")
	if struct["CampaignsResponse"] then M.AssertCampaignsResponse(struct["CampaignsResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignsResponse_keys[k], "GetCampaignsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignsResponse
--  
-- @param CampaignsResponse [CampaignsResponse]  
-- Required parameter: CampaignsResponse
function M.GetCampaignsResponse(CampaignsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignsResponse")
	local t = { 
		["CampaignsResponse"] = CampaignsResponse,
	}
	M.AssertGetCampaignsResponse(t)
	return t
end

local CreateCampaignResponse_keys = { "CampaignResponse" = true, nil }

function M.AssertCreateCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCampaignResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then M.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(CreateCampaignResponse_keys[k], "CreateCampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCampaignResponse
--  
-- @param CampaignResponse [CampaignResponse]  
-- Required parameter: CampaignResponse
function M.CreateCampaignResponse(CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCampaignResponse")
	local t = { 
		["CampaignResponse"] = CampaignResponse,
	}
	M.AssertCreateCampaignResponse(t)
	return t
end

local DeleteSegmentRequest_keys = { "ApplicationId" = true, "SegmentId" = true, nil }

function M.AssertDeleteSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSegmentRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSegmentRequest_keys[k], "DeleteSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSegmentRequest
--  
-- @param ApplicationId [__string]  
-- @param SegmentId [__string]  
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
function M.DeleteSegmentRequest(ApplicationId, SegmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSegmentRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["SegmentId"] = SegmentId,
	}
	M.AssertDeleteSegmentRequest(t)
	return t
end

local GetImportJobRequest_keys = { "ApplicationId" = true, "JobId" = true, nil }

function M.AssertGetImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetImportJobRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["JobId"], "Expected key JobId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["JobId"] then M.Assert__string(struct["JobId"]) end
	for k,_ in pairs(struct) do
		assert(GetImportJobRequest_keys[k], "GetImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetImportJobRequest
--  
-- @param ApplicationId [__string]  
-- @param JobId [__string]  
-- Required parameter: ApplicationId
-- Required parameter: JobId
function M.GetImportJobRequest(ApplicationId, JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetImportJobRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["JobId"] = JobId,
	}
	M.AssertGetImportJobRequest(t)
	return t
end

local ApplicationSettingsResource_keys = { "LastModifiedDate" = true, "QuietTime" = true, "ApplicationId" = true, "Limits" = true, nil }

function M.AssertApplicationSettingsResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSettingsResource to be of type 'table'")
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["QuietTime"] then M.AssertQuietTime(struct["QuietTime"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Limits"] then M.AssertCampaignLimits(struct["Limits"]) end
	for k,_ in pairs(struct) do
		assert(ApplicationSettingsResource_keys[k], "ApplicationSettingsResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSettingsResource
-- Application settings.
-- @param LastModifiedDate [__string] The date that the settings were last updated in ISO 8601 format.
-- @param QuietTime [QuietTime] The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
-- @param ApplicationId [__string] The unique ID for the application.
-- @param Limits [CampaignLimits] The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
function M.ApplicationSettingsResource(LastModifiedDate, QuietTime, ApplicationId, Limits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationSettingsResource")
	local t = { 
		["LastModifiedDate"] = LastModifiedDate,
		["QuietTime"] = QuietTime,
		["ApplicationId"] = ApplicationId,
		["Limits"] = Limits,
	}
	M.AssertApplicationSettingsResource(t)
	return t
end

local CreateSegmentResponse_keys = { "SegmentResponse" = true, nil }

function M.AssertCreateSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSegmentResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then M.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(CreateSegmentResponse_keys[k], "CreateSegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSegmentResponse
--  
-- @param SegmentResponse [SegmentResponse]  
-- Required parameter: SegmentResponse
function M.CreateSegmentResponse(SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSegmentResponse")
	local t = { 
		["SegmentResponse"] = SegmentResponse,
	}
	M.AssertCreateSegmentResponse(t)
	return t
end

local GCMMessage_keys = { "Body" = true, "Sound" = true, "Title" = true, "Url" = true, "ImageUrl" = true, "RawContent" = true, "Substitutions" = true, "CollapseKey" = true, "SmallImageIconUrl" = true, "SilentPush" = true, "IconReference" = true, "Action" = true, "RestrictedPackageName" = true, "Data" = true, "ImageIconUrl" = true, nil }

function M.AssertGCMMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GCMMessage to be of type 'table'")
	if struct["Body"] then M.Assert__string(struct["Body"]) end
	if struct["Sound"] then M.Assert__string(struct["Sound"]) end
	if struct["Title"] then M.Assert__string(struct["Title"]) end
	if struct["Url"] then M.Assert__string(struct["Url"]) end
	if struct["ImageUrl"] then M.Assert__string(struct["ImageUrl"]) end
	if struct["RawContent"] then M.Assert__string(struct["RawContent"]) end
	if struct["Substitutions"] then M.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["CollapseKey"] then M.Assert__string(struct["CollapseKey"]) end
	if struct["SmallImageIconUrl"] then M.Assert__string(struct["SmallImageIconUrl"]) end
	if struct["SilentPush"] then M.Assert__boolean(struct["SilentPush"]) end
	if struct["IconReference"] then M.Assert__string(struct["IconReference"]) end
	if struct["Action"] then M.AssertAction(struct["Action"]) end
	if struct["RestrictedPackageName"] then M.Assert__string(struct["RestrictedPackageName"]) end
	if struct["Data"] then M.AssertMapOf__string(struct["Data"]) end
	if struct["ImageIconUrl"] then M.Assert__string(struct["ImageIconUrl"]) end
	for k,_ in pairs(struct) do
		assert(GCMMessage_keys[k], "GCMMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GCMMessage
-- GCM Message.
-- @param Body [__string] The message body of the notification, the email body or the text message.
-- @param Sound [__string] Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
-- @param Title [__string] The message title that displays above the message on the user's device.
-- @param Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- @param ImageUrl [__string] The URL that points to an image used in the push notification.
-- @param RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- @param Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- @param CollapseKey [__string] This parameter identifies a group of messages (e.g., with collapse_key: "Updates Available") that can be collapsed, so that only the last message gets sent when delivery can be resumed. This is intended to avoid sending too many of the same messages when the device comes back online or becomes active.
-- @param SmallImageIconUrl [__string] The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
-- @param SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- @param IconReference [__string] The icon image name of the asset saved in your application.
-- @param Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- @param RestrictedPackageName [__string] This parameter specifies the package name of the application where the registration tokens must match in order to receive the message.
-- @param Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- @param ImageIconUrl [__string] The URL that points to an image used as the large icon to the notification content view.
function M.GCMMessage(Body, Sound, Title, Url, ImageUrl, RawContent, Substitutions, CollapseKey, SmallImageIconUrl, SilentPush, IconReference, Action, RestrictedPackageName, Data, ImageIconUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GCMMessage")
	local t = { 
		["Body"] = Body,
		["Sound"] = Sound,
		["Title"] = Title,
		["Url"] = Url,
		["ImageUrl"] = ImageUrl,
		["RawContent"] = RawContent,
		["Substitutions"] = Substitutions,
		["CollapseKey"] = CollapseKey,
		["SmallImageIconUrl"] = SmallImageIconUrl,
		["SilentPush"] = SilentPush,
		["IconReference"] = IconReference,
		["Action"] = Action,
		["RestrictedPackageName"] = RestrictedPackageName,
		["Data"] = Data,
		["ImageIconUrl"] = ImageIconUrl,
	}
	M.AssertGCMMessage(t)
	return t
end

local SegmentBehaviors_keys = { "Recency" = true, nil }

function M.AssertSegmentBehaviors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentBehaviors to be of type 'table'")
	if struct["Recency"] then M.AssertRecencyDimension(struct["Recency"]) end
	for k,_ in pairs(struct) do
		assert(SegmentBehaviors_keys[k], "SegmentBehaviors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentBehaviors
-- Segment behavior dimensions
-- @param Recency [RecencyDimension] The recency of use.
function M.SegmentBehaviors(Recency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentBehaviors")
	local t = { 
		["Recency"] = Recency,
	}
	M.AssertSegmentBehaviors(t)
	return t
end

local UpdateEndpointsBatchRequest_keys = { "EndpointBatchRequest" = true, "ApplicationId" = true, nil }

function M.AssertUpdateEndpointsBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointsBatchRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EndpointBatchRequest"], "Expected key EndpointBatchRequest to exist in table")
	if struct["EndpointBatchRequest"] then M.AssertEndpointBatchRequest(struct["EndpointBatchRequest"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEndpointsBatchRequest_keys[k], "UpdateEndpointsBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointsBatchRequest
--  
-- @param EndpointBatchRequest [EndpointBatchRequest]  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
-- Required parameter: EndpointBatchRequest
function M.UpdateEndpointsBatchRequest(EndpointBatchRequest, ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEndpointsBatchRequest")
	local t = { 
		["EndpointBatchRequest"] = EndpointBatchRequest,
		["ApplicationId"] = ApplicationId,
	}
	M.AssertUpdateEndpointsBatchRequest(t)
	return t
end

local GetCampaignResponse_keys = { "CampaignResponse" = true, nil }

function M.AssertGetCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then M.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignResponse_keys[k], "GetCampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignResponse
--  
-- @param CampaignResponse [CampaignResponse]  
-- Required parameter: CampaignResponse
function M.GetCampaignResponse(CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignResponse")
	local t = { 
		["CampaignResponse"] = CampaignResponse,
	}
	M.AssertGetCampaignResponse(t)
	return t
end

local GetApplicationSettingsResponse_keys = { "ApplicationSettingsResource" = true, nil }

function M.AssertGetApplicationSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApplicationSettingsResponse to be of type 'table'")
	assert(struct["ApplicationSettingsResource"], "Expected key ApplicationSettingsResource to exist in table")
	if struct["ApplicationSettingsResource"] then M.AssertApplicationSettingsResource(struct["ApplicationSettingsResource"]) end
	for k,_ in pairs(struct) do
		assert(GetApplicationSettingsResponse_keys[k], "GetApplicationSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApplicationSettingsResponse
--  
-- @param ApplicationSettingsResource [ApplicationSettingsResource]  
-- Required parameter: ApplicationSettingsResource
function M.GetApplicationSettingsResponse(ApplicationSettingsResource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationSettingsResponse")
	local t = { 
		["ApplicationSettingsResource"] = ApplicationSettingsResource,
	}
	M.AssertGetApplicationSettingsResponse(t)
	return t
end

local MessageBody_keys = { "Message" = true, "RequestID" = true, nil }

function M.AssertMessageBody(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageBody to be of type 'table'")
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	if struct["RequestID"] then M.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(MessageBody_keys[k], "MessageBody contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageBody
-- Simple message object.
-- @param Message [__string] The error message returned from the API.
-- @param RequestID [__string] The unique message body ID.
function M.MessageBody(Message, RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageBody")
	local t = { 
		["Message"] = Message,
		["RequestID"] = RequestID,
	}
	M.AssertMessageBody(t)
	return t
end

local EndpointBatchItem_keys = { "EffectiveDate" = true, "OptOut" = true, "RequestId" = true, "Demographic" = true, "User" = true, "Metrics" = true, "Location" = true, "Address" = true, "Attributes" = true, "ChannelType" = true, "Id" = true, "EndpointStatus" = true, nil }

function M.AssertEndpointBatchItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointBatchItem to be of type 'table'")
	if struct["EffectiveDate"] then M.Assert__string(struct["EffectiveDate"]) end
	if struct["OptOut"] then M.Assert__string(struct["OptOut"]) end
	if struct["RequestId"] then M.Assert__string(struct["RequestId"]) end
	if struct["Demographic"] then M.AssertEndpointDemographic(struct["Demographic"]) end
	if struct["User"] then M.AssertEndpointUser(struct["User"]) end
	if struct["Metrics"] then M.AssertMapOf__double(struct["Metrics"]) end
	if struct["Location"] then M.AssertEndpointLocation(struct["Location"]) end
	if struct["Address"] then M.Assert__string(struct["Address"]) end
	if struct["Attributes"] then M.AssertMapOfListOf__string(struct["Attributes"]) end
	if struct["ChannelType"] then M.AssertChannelType(struct["ChannelType"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["EndpointStatus"] then M.Assert__string(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(EndpointBatchItem_keys[k], "EndpointBatchItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointBatchItem
-- Endpoint update request
-- @param EffectiveDate [__string] The last time the endpoint was updated. Provided in ISO 8601 format.
-- @param OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:

ALL – User receives all messages.
NONE – User receives no messages.
-- @param RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- @param Demographic [EndpointDemographic] The endpoint demographic attributes.
-- @param User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- @param Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- @param Location [EndpointLocation] The endpoint location attributes.
-- @param Address [__string] The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
-- @param Attributes [MapOfListOf__string] Custom attributes that your app reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create a segment.
-- @param ChannelType [ChannelType] The channel type.

Valid values: APNS, GCM
-- @param Id [__string] The unique Id for the Endpoint in the batch.
-- @param EndpointStatus [__string] The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
function M.EndpointBatchItem(EffectiveDate, OptOut, RequestId, Demographic, User, Metrics, Location, Address, Attributes, ChannelType, Id, EndpointStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointBatchItem")
	local t = { 
		["EffectiveDate"] = EffectiveDate,
		["OptOut"] = OptOut,
		["RequestId"] = RequestId,
		["Demographic"] = Demographic,
		["User"] = User,
		["Metrics"] = Metrics,
		["Location"] = Location,
		["Address"] = Address,
		["Attributes"] = Attributes,
		["ChannelType"] = ChannelType,
		["Id"] = Id,
		["EndpointStatus"] = EndpointStatus,
	}
	M.AssertEndpointBatchItem(t)
	return t
end

local GetImportJobResponse_keys = { "ImportJobResponse" = true, nil }

function M.AssertGetImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetImportJobResponse to be of type 'table'")
	assert(struct["ImportJobResponse"], "Expected key ImportJobResponse to exist in table")
	if struct["ImportJobResponse"] then M.AssertImportJobResponse(struct["ImportJobResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetImportJobResponse_keys[k], "GetImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetImportJobResponse
--  
-- @param ImportJobResponse [ImportJobResponse]  
-- Required parameter: ImportJobResponse
function M.GetImportJobResponse(ImportJobResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetImportJobResponse")
	local t = { 
		["ImportJobResponse"] = ImportJobResponse,
	}
	M.AssertGetImportJobResponse(t)
	return t
end

local ForbiddenException_keys = { "Message" = true, "RequestID" = true, nil }

function M.AssertForbiddenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ForbiddenException to be of type 'table'")
	if struct["Message"] then M.Assert__string(struct["Message"]) end
	if struct["RequestID"] then M.Assert__string(struct["RequestID"]) end
	for k,_ in pairs(struct) do
		assert(ForbiddenException_keys[k], "ForbiddenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ForbiddenException
-- Simple message object.
-- @param Message [__string] The error message returned from the API.
-- @param RequestID [__string] The unique message body ID.
function M.ForbiddenException(Message, RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ForbiddenException")
	local t = { 
		["Message"] = Message,
		["RequestID"] = RequestID,
	}
	M.AssertForbiddenException(t)
	return t
end

local ImportJobRequest_keys = { "DefineSegment" = true, "SegmentId" = true, "Format" = true, "RoleArn" = true, "S3Url" = true, "RegisterEndpoints" = true, "ExternalId" = true, "SegmentName" = true, nil }

function M.AssertImportJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportJobRequest to be of type 'table'")
	if struct["DefineSegment"] then M.Assert__boolean(struct["DefineSegment"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	if struct["Format"] then M.AssertFormat(struct["Format"]) end
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	if struct["S3Url"] then M.Assert__string(struct["S3Url"]) end
	if struct["RegisterEndpoints"] then M.Assert__boolean(struct["RegisterEndpoints"]) end
	if struct["ExternalId"] then M.Assert__string(struct["ExternalId"]) end
	if struct["SegmentName"] then M.Assert__string(struct["SegmentName"]) end
	for k,_ in pairs(struct) do
		assert(ImportJobRequest_keys[k], "ImportJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportJobRequest
--  
-- @param DefineSegment [__boolean] Sets whether the endpoints create a segment when they are imported.
-- @param SegmentId [__string] The ID of the segment to update if the import job is meant to update an existing segment.
-- @param Format [Format] The format of the files that contain the endpoint definitions.
Valid values: CSV, JSON
-- @param RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
-- @param S3Url [__string] A URL that points to the location within an Amazon S3 bucket that contains the endpoints to import. The location can be a folder or a single file.
The URL should follow this format: s3://bucket-name/folder-name/file-name

Amazon Pinpoint will import endpoints from this location and any subfolders it contains.
-- @param RegisterEndpoints [__boolean] Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
-- @param ExternalId [__string] A unique, custom ID assigned to the IAM role that restricts who can assume the role.	
-- @param SegmentName [__string] A custom name for the segment created by the import job. Use if DefineSegment is true.
function M.ImportJobRequest(DefineSegment, SegmentId, Format, RoleArn, S3Url, RegisterEndpoints, ExternalId, SegmentName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportJobRequest")
	local t = { 
		["DefineSegment"] = DefineSegment,
		["SegmentId"] = SegmentId,
		["Format"] = Format,
		["RoleArn"] = RoleArn,
		["S3Url"] = S3Url,
		["RegisterEndpoints"] = RegisterEndpoints,
		["ExternalId"] = ExternalId,
		["SegmentName"] = SegmentName,
	}
	M.AssertImportJobRequest(t)
	return t
end

local EmailChannelResponse_keys = { "FromAddress" = true, "LastModifiedDate" = true, "RoleArn" = true, "Enabled" = true, "LastModifiedBy" = true, "Platform" = true, "Version" = true, "IsArchived" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, "Identity" = true, nil }

function M.AssertEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmailChannelResponse to be of type 'table'")
	if struct["FromAddress"] then M.Assert__string(struct["FromAddress"]) end
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then M.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then M.Assert__string(struct["Platform"]) end
	if struct["Version"] then M.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then M.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Identity"] then M.Assert__string(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(EmailChannelResponse_keys[k], "EmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmailChannelResponse
-- Email Channel Response.
-- @param FromAddress [__string] The email address used to send emails from.
-- @param LastModifiedDate [__string] Last date this was updated
-- @param RoleArn [__string] The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
-- @param LastModifiedBy [__string] Who last updated this entry
-- @param Platform [__string] Platform type. Will be "EMAIL"
-- @param Version [__integer] Version of channel
-- @param IsArchived [__boolean] Is this channel archived
-- @param CreationDate [__string] The date that the settings were last updated in ISO 8601 format.
-- @param ApplicationId [__string] Application id
-- @param Id [__string] Channel ID. Not used, only for backwards compatibility.
-- @param Identity [__string] The ARN of an identity verified with SES.
function M.EmailChannelResponse(FromAddress, LastModifiedDate, RoleArn, Enabled, LastModifiedBy, Platform, Version, IsArchived, CreationDate, ApplicationId, Id, Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmailChannelResponse")
	local t = { 
		["FromAddress"] = FromAddress,
		["LastModifiedDate"] = LastModifiedDate,
		["RoleArn"] = RoleArn,
		["Enabled"] = Enabled,
		["LastModifiedBy"] = LastModifiedBy,
		["Platform"] = Platform,
		["Version"] = Version,
		["IsArchived"] = IsArchived,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
		["Identity"] = Identity,
	}
	M.AssertEmailChannelResponse(t)
	return t
end

local APNSMessage_keys = { "Body" = true, "Category" = true, "MediaUrl" = true, "Url" = true, "Data" = true, "ThreadId" = true, "Substitutions" = true, "Title" = true, "RawContent" = true, "Action" = true, "SilentPush" = true, "Badge" = true, "Sound" = true, nil }

function M.AssertAPNSMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSMessage to be of type 'table'")
	if struct["Body"] then M.Assert__string(struct["Body"]) end
	if struct["Category"] then M.Assert__string(struct["Category"]) end
	if struct["MediaUrl"] then M.Assert__string(struct["MediaUrl"]) end
	if struct["Url"] then M.Assert__string(struct["Url"]) end
	if struct["Data"] then M.AssertMapOf__string(struct["Data"]) end
	if struct["ThreadId"] then M.Assert__string(struct["ThreadId"]) end
	if struct["Substitutions"] then M.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["Title"] then M.Assert__string(struct["Title"]) end
	if struct["RawContent"] then M.Assert__string(struct["RawContent"]) end
	if struct["Action"] then M.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then M.Assert__boolean(struct["SilentPush"]) end
	if struct["Badge"] then M.Assert__integer(struct["Badge"]) end
	if struct["Sound"] then M.Assert__string(struct["Sound"]) end
	for k,_ in pairs(struct) do
		assert(APNSMessage_keys[k], "APNSMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSMessage
-- APNS Message.
-- @param Body [__string] The message body of the notification, the email body or the text message.
-- @param Category [__string] Provide this key with a string value that represents the notification's type. This value corresponds to the value in the identifier property of one of your app's registered categories.
-- @param MediaUrl [__string] The URL that points to a video used in the push notification.
-- @param Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- @param Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- @param ThreadId [__string] Provide this key with a string value that represents the app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.
-- @param Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- @param Title [__string] The message title that displays above the message on the user's device.
-- @param RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- @param Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- @param SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- @param Badge [__integer] Include this key when you want the system to modify the badge of your app icon. If this key is not included in the dictionary, the badge is not changed. To remove the badge, set the value of this key to 0.
-- @param Sound [__string] Include this key when you want the system to play a sound. The value of this key is the name of a sound file in your app's main bundle or in the Library/Sounds folder of your app's data container. If the sound file cannot be found, or if you specify defaultfor the value, the system plays the default alert sound.
function M.APNSMessage(Body, Category, MediaUrl, Url, Data, ThreadId, Substitutions, Title, RawContent, Action, SilentPush, Badge, Sound, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSMessage")
	local t = { 
		["Body"] = Body,
		["Category"] = Category,
		["MediaUrl"] = MediaUrl,
		["Url"] = Url,
		["Data"] = Data,
		["ThreadId"] = ThreadId,
		["Substitutions"] = Substitutions,
		["Title"] = Title,
		["RawContent"] = RawContent,
		["Action"] = Action,
		["SilentPush"] = SilentPush,
		["Badge"] = Badge,
		["Sound"] = Sound,
	}
	M.AssertAPNSMessage(t)
	return t
end

local EndpointRequest_keys = { "EffectiveDate" = true, "OptOut" = true, "RequestId" = true, "Demographic" = true, "User" = true, "Metrics" = true, "Location" = true, "Address" = true, "Attributes" = true, "ChannelType" = true, "EndpointStatus" = true, nil }

function M.AssertEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointRequest to be of type 'table'")
	if struct["EffectiveDate"] then M.Assert__string(struct["EffectiveDate"]) end
	if struct["OptOut"] then M.Assert__string(struct["OptOut"]) end
	if struct["RequestId"] then M.Assert__string(struct["RequestId"]) end
	if struct["Demographic"] then M.AssertEndpointDemographic(struct["Demographic"]) end
	if struct["User"] then M.AssertEndpointUser(struct["User"]) end
	if struct["Metrics"] then M.AssertMapOf__double(struct["Metrics"]) end
	if struct["Location"] then M.AssertEndpointLocation(struct["Location"]) end
	if struct["Address"] then M.Assert__string(struct["Address"]) end
	if struct["Attributes"] then M.AssertMapOfListOf__string(struct["Attributes"]) end
	if struct["ChannelType"] then M.AssertChannelType(struct["ChannelType"]) end
	if struct["EndpointStatus"] then M.Assert__string(struct["EndpointStatus"]) end
	for k,_ in pairs(struct) do
		assert(EndpointRequest_keys[k], "EndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointRequest
-- Endpoint update request
-- @param EffectiveDate [__string] The last time the endpoint was updated. Provided in ISO 8601 format.
-- @param OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:

ALL – User receives all messages.
NONE – User receives no messages.
-- @param RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- @param Demographic [EndpointDemographic] The endpoint demographic attributes.
-- @param User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- @param Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- @param Location [EndpointLocation] The endpoint location attributes.
-- @param Address [__string] The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
-- @param Attributes [MapOfListOf__string] Custom attributes that your app reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create a segment.
-- @param ChannelType [ChannelType] The channel type.

Valid values: APNS, GCM
-- @param EndpointStatus [__string] The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
function M.EndpointRequest(EffectiveDate, OptOut, RequestId, Demographic, User, Metrics, Location, Address, Attributes, ChannelType, EndpointStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointRequest")
	local t = { 
		["EffectiveDate"] = EffectiveDate,
		["OptOut"] = OptOut,
		["RequestId"] = RequestId,
		["Demographic"] = Demographic,
		["User"] = User,
		["Metrics"] = Metrics,
		["Location"] = Location,
		["Address"] = Address,
		["Attributes"] = Attributes,
		["ChannelType"] = ChannelType,
		["EndpointStatus"] = EndpointStatus,
	}
	M.AssertEndpointRequest(t)
	return t
end

local DeleteApnsChannelResponse_keys = { "APNSChannelResponse" = true, nil }

function M.AssertDeleteApnsChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsChannelResponse to be of type 'table'")
	assert(struct["APNSChannelResponse"], "Expected key APNSChannelResponse to exist in table")
	if struct["APNSChannelResponse"] then M.AssertAPNSChannelResponse(struct["APNSChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApnsChannelResponse_keys[k], "DeleteApnsChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsChannelResponse
--  
-- @param APNSChannelResponse [APNSChannelResponse]  
-- Required parameter: APNSChannelResponse
function M.DeleteApnsChannelResponse(APNSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApnsChannelResponse")
	local t = { 
		["APNSChannelResponse"] = APNSChannelResponse,
	}
	M.AssertDeleteApnsChannelResponse(t)
	return t
end

local CreateImportJobResponse_keys = { "ImportJobResponse" = true, nil }

function M.AssertCreateImportJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateImportJobResponse to be of type 'table'")
	assert(struct["ImportJobResponse"], "Expected key ImportJobResponse to exist in table")
	if struct["ImportJobResponse"] then M.AssertImportJobResponse(struct["ImportJobResponse"]) end
	for k,_ in pairs(struct) do
		assert(CreateImportJobResponse_keys[k], "CreateImportJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateImportJobResponse
--  
-- @param ImportJobResponse [ImportJobResponse]  
-- Required parameter: ImportJobResponse
function M.CreateImportJobResponse(ImportJobResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateImportJobResponse")
	local t = { 
		["ImportJobResponse"] = ImportJobResponse,
	}
	M.AssertCreateImportJobResponse(t)
	return t
end

local TreatmentResource_keys = { "SizePercent" = true, "Schedule" = true, "TreatmentName" = true, "State" = true, "MessageConfiguration" = true, "Id" = true, "TreatmentDescription" = true, nil }

function M.AssertTreatmentResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TreatmentResource to be of type 'table'")
	if struct["SizePercent"] then M.Assert__integer(struct["SizePercent"]) end
	if struct["Schedule"] then M.AssertSchedule(struct["Schedule"]) end
	if struct["TreatmentName"] then M.Assert__string(struct["TreatmentName"]) end
	if struct["State"] then M.AssertCampaignState(struct["State"]) end
	if struct["MessageConfiguration"] then M.AssertMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["TreatmentDescription"] then M.Assert__string(struct["TreatmentDescription"]) end
	for k,_ in pairs(struct) do
		assert(TreatmentResource_keys[k], "TreatmentResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TreatmentResource
-- Treatment resource
-- @param SizePercent [__integer] The allocated percentage of users for this treatment.
-- @param Schedule [Schedule] The campaign schedule.
-- @param TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- @param State [CampaignState] The treatment status.
-- @param MessageConfiguration [MessageConfiguration] The message configuration settings.
-- @param Id [__string] The unique treatment ID.
-- @param TreatmentDescription [__string] A custom description for the treatment.
function M.TreatmentResource(SizePercent, Schedule, TreatmentName, State, MessageConfiguration, Id, TreatmentDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TreatmentResource")
	local t = { 
		["SizePercent"] = SizePercent,
		["Schedule"] = Schedule,
		["TreatmentName"] = TreatmentName,
		["State"] = State,
		["MessageConfiguration"] = MessageConfiguration,
		["Id"] = Id,
		["TreatmentDescription"] = TreatmentDescription,
	}
	M.AssertTreatmentResource(t)
	return t
end

local GetSegmentResponse_keys = { "SegmentResponse" = true, nil }

function M.AssertGetSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then M.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentResponse_keys[k], "GetSegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentResponse
--  
-- @param SegmentResponse [SegmentResponse]  
-- Required parameter: SegmentResponse
function M.GetSegmentResponse(SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentResponse")
	local t = { 
		["SegmentResponse"] = SegmentResponse,
	}
	M.AssertGetSegmentResponse(t)
	return t
end

local GetEmailChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertGetEmailChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEmailChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(GetEmailChannelRequest_keys[k], "GetEmailChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEmailChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.GetEmailChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEmailChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertGetEmailChannelRequest(t)
	return t
end

local GetEventStreamRequest_keys = { "ApplicationId" = true, nil }

function M.AssertGetEventStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventStreamRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(GetEventStreamRequest_keys[k], "GetEventStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventStreamRequest
-- GetEventStream Request
-- @param ApplicationId [__string] ApplicationId
-- Required parameter: ApplicationId
function M.GetEventStreamRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventStreamRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertGetEventStreamRequest(t)
	return t
end

local RecencyDimension_keys = { "Duration" = true, "RecencyType" = true, nil }

function M.AssertRecencyDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecencyDimension to be of type 'table'")
	if struct["Duration"] then M.AssertDuration(struct["Duration"]) end
	if struct["RecencyType"] then M.AssertRecencyType(struct["RecencyType"]) end
	for k,_ in pairs(struct) do
		assert(RecencyDimension_keys[k], "RecencyDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecencyDimension
-- Define how a segment based on recency of use.
-- @param Duration [Duration] The length of time during which users have been active or inactive with your app.
Valid values: HR_24, DAY_7, DAY_14, DAY_30
-- @param RecencyType [RecencyType] The recency dimension type:
ACTIVE - Users who have used your app within the specified duration are included in the segment.
INACTIVE - Users who have not used your app within the specified duration are included in the segment.
function M.RecencyDimension(Duration, RecencyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecencyDimension")
	local t = { 
		["Duration"] = Duration,
		["RecencyType"] = RecencyType,
	}
	M.AssertRecencyDimension(t)
	return t
end

local DeleteEventStreamResponse_keys = { "EventStream" = true, nil }

function M.AssertDeleteEventStreamResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEventStreamResponse to be of type 'table'")
	assert(struct["EventStream"], "Expected key EventStream to exist in table")
	if struct["EventStream"] then M.AssertEventStream(struct["EventStream"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEventStreamResponse_keys[k], "DeleteEventStreamResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEventStreamResponse
-- DeleteEventStream Response
-- @param EventStream [EventStream] DeleteEventStream Response
-- Required parameter: EventStream
function M.DeleteEventStreamResponse(EventStream, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventStreamResponse")
	local t = { 
		["EventStream"] = EventStream,
	}
	M.AssertDeleteEventStreamResponse(t)
	return t
end

local GetEndpointRequest_keys = { "ApplicationId" = true, "EndpointId" = true, nil }

function M.AssertGetEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEndpointRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EndpointId"], "Expected key EndpointId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["EndpointId"] then M.Assert__string(struct["EndpointId"]) end
	for k,_ in pairs(struct) do
		assert(GetEndpointRequest_keys[k], "GetEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEndpointRequest
--  
-- @param ApplicationId [__string]  
-- @param EndpointId [__string]  
-- Required parameter: ApplicationId
-- Required parameter: EndpointId
function M.GetEndpointRequest(ApplicationId, EndpointId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEndpointRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["EndpointId"] = EndpointId,
	}
	M.AssertGetEndpointRequest(t)
	return t
end

local GetSmsChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertGetSmsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSmsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(GetSmsChannelRequest_keys[k], "GetSmsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSmsChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.GetSmsChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSmsChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertGetSmsChannelRequest(t)
	return t
end

local GetSegmentVersionRequest_keys = { "Version" = true, "ApplicationId" = true, "SegmentId" = true, nil }

function M.AssertGetSegmentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentVersionRequest to be of type 'table'")
	assert(struct["SegmentId"], "Expected key SegmentId to exist in table")
	assert(struct["Version"], "Expected key Version to exist in table")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Version"] then M.Assert__string(struct["Version"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["SegmentId"] then M.Assert__string(struct["SegmentId"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentVersionRequest_keys[k], "GetSegmentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentVersionRequest
--  
-- @param Version [__string]  
-- @param ApplicationId [__string]  
-- @param SegmentId [__string]  
-- Required parameter: SegmentId
-- Required parameter: Version
-- Required parameter: ApplicationId
function M.GetSegmentVersionRequest(Version, ApplicationId, SegmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentVersionRequest")
	local t = { 
		["Version"] = Version,
		["ApplicationId"] = ApplicationId,
		["SegmentId"] = SegmentId,
	}
	M.AssertGetSegmentVersionRequest(t)
	return t
end

local SMSMessage_keys = { "Body" = true, "SenderId" = true, "MessageType" = true, "Substitutions" = true, nil }

function M.AssertSMSMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSMessage to be of type 'table'")
	if struct["Body"] then M.Assert__string(struct["Body"]) end
	if struct["SenderId"] then M.Assert__string(struct["SenderId"]) end
	if struct["MessageType"] then M.AssertMessageType(struct["MessageType"]) end
	if struct["Substitutions"] then M.AssertMapOfListOf__string(struct["Substitutions"]) end
	for k,_ in pairs(struct) do
		assert(SMSMessage_keys[k], "SMSMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSMessage
-- SMS Message.
-- @param Body [__string] The message body of the notification, the email body or the text message.
-- @param SenderId [__string] Sender ID of sent message.
-- @param MessageType [MessageType] Is this a transaction priority message or lower priority.
-- @param Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
function M.SMSMessage(Body, SenderId, MessageType, Substitutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SMSMessage")
	local t = { 
		["Body"] = Body,
		["SenderId"] = SenderId,
		["MessageType"] = MessageType,
		["Substitutions"] = Substitutions,
	}
	M.AssertSMSMessage(t)
	return t
end

local GetEventStreamResponse_keys = { "EventStream" = true, nil }

function M.AssertGetEventStreamResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventStreamResponse to be of type 'table'")
	assert(struct["EventStream"], "Expected key EventStream to exist in table")
	if struct["EventStream"] then M.AssertEventStream(struct["EventStream"]) end
	for k,_ in pairs(struct) do
		assert(GetEventStreamResponse_keys[k], "GetEventStreamResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventStreamResponse
-- GetEventStream Response
-- @param EventStream [EventStream] GetEventStream Response
-- Required parameter: EventStream
function M.GetEventStreamResponse(EventStream, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventStreamResponse")
	local t = { 
		["EventStream"] = EventStream,
	}
	M.AssertGetEventStreamResponse(t)
	return t
end

local SegmentImportResource_keys = { "Format" = true, "RoleArn" = true, "S3Url" = true, "ExternalId" = true, "ChannelCounts" = true, "Size" = true, nil }

function M.AssertSegmentImportResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentImportResource to be of type 'table'")
	if struct["Format"] then M.AssertFormat(struct["Format"]) end
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	if struct["S3Url"] then M.Assert__string(struct["S3Url"]) end
	if struct["ExternalId"] then M.Assert__string(struct["ExternalId"]) end
	if struct["ChannelCounts"] then M.AssertMapOf__integer(struct["ChannelCounts"]) end
	if struct["Size"] then M.Assert__integer(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(SegmentImportResource_keys[k], "SegmentImportResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentImportResource
-- Segment import definition.
-- @param Format [Format] The format of the endpoint files that were imported to create this segment.
Valid values: CSV, JSON
-- @param RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the endpoints in Amazon S3.
-- @param S3Url [__string] A URL that points to the Amazon S3 location from which the endpoints for this segment were imported.
-- @param ExternalId [__string] A unique, custom ID assigned to the IAM role that restricts who can assume the role.
-- @param ChannelCounts [MapOf__integer] Channel type counts
-- @param Size [__integer] The number of endpoints that were successfully imported to create this segment.
function M.SegmentImportResource(Format, RoleArn, S3Url, ExternalId, ChannelCounts, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentImportResource")
	local t = { 
		["Format"] = Format,
		["RoleArn"] = RoleArn,
		["S3Url"] = S3Url,
		["ExternalId"] = ExternalId,
		["ChannelCounts"] = ChannelCounts,
		["Size"] = Size,
	}
	M.AssertSegmentImportResource(t)
	return t
end

local SegmentDemographics_keys = { "Make" = true, "AppVersion" = true, "Platform" = true, "DeviceType" = true, "Model" = true, "Channel" = true, nil }

function M.AssertSegmentDemographics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentDemographics to be of type 'table'")
	if struct["Make"] then M.AssertSetDimension(struct["Make"]) end
	if struct["AppVersion"] then M.AssertSetDimension(struct["AppVersion"]) end
	if struct["Platform"] then M.AssertSetDimension(struct["Platform"]) end
	if struct["DeviceType"] then M.AssertSetDimension(struct["DeviceType"]) end
	if struct["Model"] then M.AssertSetDimension(struct["Model"]) end
	if struct["Channel"] then M.AssertSetDimension(struct["Channel"]) end
	for k,_ in pairs(struct) do
		assert(SegmentDemographics_keys[k], "SegmentDemographics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentDemographics
-- Segment demographic dimensions
-- @param Make [SetDimension] The device make criteria for the segment.
-- @param AppVersion [SetDimension] The app version criteria for the segment.
-- @param Platform [SetDimension] The device platform criteria for the segment.
-- @param DeviceType [SetDimension] The device type criteria for the segment.
-- @param Model [SetDimension] The device model criteria for the segment.
-- @param Channel [SetDimension] The channel criteria for the segment.
function M.SegmentDemographics(Make, AppVersion, Platform, DeviceType, Model, Channel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentDemographics")
	local t = { 
		["Make"] = Make,
		["AppVersion"] = AppVersion,
		["Platform"] = Platform,
		["DeviceType"] = DeviceType,
		["Model"] = Model,
		["Channel"] = Channel,
	}
	M.AssertSegmentDemographics(t)
	return t
end

local UpdateGcmChannelRequest_keys = { "ApplicationId" = true, "GCMChannelRequest" = true, nil }

function M.AssertUpdateGcmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGcmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["GCMChannelRequest"], "Expected key GCMChannelRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["GCMChannelRequest"] then M.AssertGCMChannelRequest(struct["GCMChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(UpdateGcmChannelRequest_keys[k], "UpdateGcmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGcmChannelRequest
--  
-- @param ApplicationId [__string]  
-- @param GCMChannelRequest [GCMChannelRequest]  
-- Required parameter: ApplicationId
-- Required parameter: GCMChannelRequest
function M.UpdateGcmChannelRequest(ApplicationId, GCMChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGcmChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["GCMChannelRequest"] = GCMChannelRequest,
	}
	M.AssertUpdateGcmChannelRequest(t)
	return t
end

local SetDimension_keys = { "DimensionType" = true, "Values" = true, nil }

function M.AssertSetDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetDimension to be of type 'table'")
	if struct["DimensionType"] then M.AssertDimensionType(struct["DimensionType"]) end
	if struct["Values"] then M.AssertListOf__string(struct["Values"]) end
	for k,_ in pairs(struct) do
		assert(SetDimension_keys[k], "SetDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetDimension
-- Dimension specification of a segment.
-- @param DimensionType [DimensionType] The type of dimension:
INCLUSIVE - Endpoints that match the criteria are included in the segment.
EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
-- @param Values [ListOf__string] The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
function M.SetDimension(DimensionType, Values, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDimension")
	local t = { 
		["DimensionType"] = DimensionType,
		["Values"] = Values,
	}
	M.AssertSetDimension(t)
	return t
end

local DeleteGcmChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertDeleteGcmChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGcmChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteGcmChannelRequest_keys[k], "DeleteGcmChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGcmChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.DeleteGcmChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGcmChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertDeleteGcmChannelRequest(t)
	return t
end

local GetSegmentsRequest_keys = { "Token" = true, "ApplicationId" = true, "PageSize" = true, nil }

function M.AssertGetSegmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSegmentsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["Token"] then M.Assert__string(struct["Token"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["PageSize"] then M.Assert__string(struct["PageSize"]) end
	for k,_ in pairs(struct) do
		assert(GetSegmentsRequest_keys[k], "GetSegmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSegmentsRequest
--  
-- @param Token [__string]  
-- @param ApplicationId [__string]  
-- @param PageSize [__string]  
-- Required parameter: ApplicationId
function M.GetSegmentsRequest(Token, ApplicationId, PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentsRequest")
	local t = { 
		["Token"] = Token,
		["ApplicationId"] = ApplicationId,
		["PageSize"] = PageSize,
	}
	M.AssertGetSegmentsRequest(t)
	return t
end

local UpdateCampaignResponse_keys = { "CampaignResponse" = true, nil }

function M.AssertUpdateCampaignResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCampaignResponse to be of type 'table'")
	assert(struct["CampaignResponse"], "Expected key CampaignResponse to exist in table")
	if struct["CampaignResponse"] then M.AssertCampaignResponse(struct["CampaignResponse"]) end
	for k,_ in pairs(struct) do
		assert(UpdateCampaignResponse_keys[k], "UpdateCampaignResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCampaignResponse
--  
-- @param CampaignResponse [CampaignResponse]  
-- Required parameter: CampaignResponse
function M.UpdateCampaignResponse(CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCampaignResponse")
	local t = { 
		["CampaignResponse"] = CampaignResponse,
	}
	M.AssertUpdateCampaignResponse(t)
	return t
end

local GetCampaignVersionsResponse_keys = { "CampaignsResponse" = true, nil }

function M.AssertGetCampaignVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCampaignVersionsResponse to be of type 'table'")
	assert(struct["CampaignsResponse"], "Expected key CampaignsResponse to exist in table")
	if struct["CampaignsResponse"] then M.AssertCampaignsResponse(struct["CampaignsResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetCampaignVersionsResponse_keys[k], "GetCampaignVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCampaignVersionsResponse
--  
-- @param CampaignsResponse [CampaignsResponse]  
-- Required parameter: CampaignsResponse
function M.GetCampaignVersionsResponse(CampaignsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignVersionsResponse")
	local t = { 
		["CampaignsResponse"] = CampaignsResponse,
	}
	M.AssertGetCampaignVersionsResponse(t)
	return t
end

local UpdateApnsChannelRequest_keys = { "ApplicationId" = true, "APNSChannelRequest" = true, nil }

function M.AssertUpdateApnsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApnsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["APNSChannelRequest"], "Expected key APNSChannelRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["APNSChannelRequest"] then M.AssertAPNSChannelRequest(struct["APNSChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApnsChannelRequest_keys[k], "UpdateApnsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApnsChannelRequest
--  
-- @param ApplicationId [__string]  
-- @param APNSChannelRequest [APNSChannelRequest]  
-- Required parameter: ApplicationId
-- Required parameter: APNSChannelRequest
function M.UpdateApnsChannelRequest(ApplicationId, APNSChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApnsChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["APNSChannelRequest"] = APNSChannelRequest,
	}
	M.AssertUpdateApnsChannelRequest(t)
	return t
end

local EndpointLocation_keys = { "City" = true, "Country" = true, "Region" = true, "Longitude" = true, "PostalCode" = true, "Latitude" = true, nil }

function M.AssertEndpointLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointLocation to be of type 'table'")
	if struct["City"] then M.Assert__string(struct["City"]) end
	if struct["Country"] then M.Assert__string(struct["Country"]) end
	if struct["Region"] then M.Assert__string(struct["Region"]) end
	if struct["Longitude"] then M.Assert__double(struct["Longitude"]) end
	if struct["PostalCode"] then M.Assert__string(struct["PostalCode"]) end
	if struct["Latitude"] then M.Assert__double(struct["Latitude"]) end
	for k,_ in pairs(struct) do
		assert(EndpointLocation_keys[k], "EndpointLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointLocation
-- Endpoint location data
-- @param City [__string] The city where the endpoint is located.
-- @param Country [__string] Country according to ISO 3166-1 Alpha-2 codes. For example, US.
-- @param Region [__string] The region of the endpoint location. For example, corresponds to a state in US.
-- @param Longitude [__double] The longitude of the endpoint location. Rounded to one decimal (Roughly corresponding to a mile).
-- @param PostalCode [__string] The postal code or zip code of the endpoint.
-- @param Latitude [__double] The latitude of the endpoint location. Rounded to one decimal (Roughly corresponding to a mile).
function M.EndpointLocation(City, Country, Region, Longitude, PostalCode, Latitude, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointLocation")
	local t = { 
		["City"] = City,
		["Country"] = Country,
		["Region"] = Region,
		["Longitude"] = Longitude,
		["PostalCode"] = PostalCode,
		["Latitude"] = Latitude,
	}
	M.AssertEndpointLocation(t)
	return t
end

local UpdateApplicationSettingsRequest_keys = { "WriteApplicationSettingsRequest" = true, "ApplicationId" = true, nil }

function M.AssertUpdateApplicationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApplicationSettingsRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["WriteApplicationSettingsRequest"], "Expected key WriteApplicationSettingsRequest to exist in table")
	if struct["WriteApplicationSettingsRequest"] then M.AssertWriteApplicationSettingsRequest(struct["WriteApplicationSettingsRequest"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateApplicationSettingsRequest_keys[k], "UpdateApplicationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApplicationSettingsRequest
--  
-- @param WriteApplicationSettingsRequest [WriteApplicationSettingsRequest]  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
-- Required parameter: WriteApplicationSettingsRequest
function M.UpdateApplicationSettingsRequest(WriteApplicationSettingsRequest, ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationSettingsRequest")
	local t = { 
		["WriteApplicationSettingsRequest"] = WriteApplicationSettingsRequest,
		["ApplicationId"] = ApplicationId,
	}
	M.AssertUpdateApplicationSettingsRequest(t)
	return t
end

local UpdateEndpointsBatchResponse_keys = { "MessageBody" = true, nil }

function M.AssertUpdateEndpointsBatchResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEndpointsBatchResponse to be of type 'table'")
	assert(struct["MessageBody"], "Expected key MessageBody to exist in table")
	if struct["MessageBody"] then M.AssertMessageBody(struct["MessageBody"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEndpointsBatchResponse_keys[k], "UpdateEndpointsBatchResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEndpointsBatchResponse
--  
-- @param MessageBody [MessageBody]  
-- Required parameter: MessageBody
function M.UpdateEndpointsBatchResponse(MessageBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEndpointsBatchResponse")
	local t = { 
		["MessageBody"] = MessageBody,
	}
	M.AssertUpdateEndpointsBatchResponse(t)
	return t
end

local AttributeDimension_keys = { "Values" = true, "AttributeType" = true, nil }

function M.AssertAttributeDimension(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AttributeDimension to be of type 'table'")
	if struct["Values"] then M.AssertListOf__string(struct["Values"]) end
	if struct["AttributeType"] then M.AssertAttributeType(struct["AttributeType"]) end
	for k,_ in pairs(struct) do
		assert(AttributeDimension_keys[k], "AttributeDimension contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AttributeDimension
-- Custom attibute dimension
-- @param Values [ListOf__string] The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
-- @param AttributeType [AttributeType] The type of dimension:
INCLUSIVE - Endpoints that match the criteria are included in the segment.
EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
function M.AttributeDimension(Values, AttributeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeDimension")
	local t = { 
		["Values"] = Values,
		["AttributeType"] = AttributeType,
	}
	M.AssertAttributeDimension(t)
	return t
end

local GetGcmChannelResponse_keys = { "GCMChannelResponse" = true, nil }

function M.AssertGetGcmChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGcmChannelResponse to be of type 'table'")
	assert(struct["GCMChannelResponse"], "Expected key GCMChannelResponse to exist in table")
	if struct["GCMChannelResponse"] then M.AssertGCMChannelResponse(struct["GCMChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetGcmChannelResponse_keys[k], "GetGcmChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGcmChannelResponse
--  
-- @param GCMChannelResponse [GCMChannelResponse]  
-- Required parameter: GCMChannelResponse
function M.GetGcmChannelResponse(GCMChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGcmChannelResponse")
	local t = { 
		["GCMChannelResponse"] = GCMChannelResponse,
	}
	M.AssertGetGcmChannelResponse(t)
	return t
end

local ActivitiesResponse_keys = { "Item" = true, nil }

function M.AssertActivitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivitiesResponse to be of type 'table'")
	if struct["Item"] then M.AssertListOfActivityResponse(struct["Item"]) end
	for k,_ in pairs(struct) do
		assert(ActivitiesResponse_keys[k], "ActivitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivitiesResponse
-- Activities for campaign.
-- @param Item [ListOfActivityResponse] List of campaign activities
function M.ActivitiesResponse(Item, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivitiesResponse")
	local t = { 
		["Item"] = Item,
	}
	M.AssertActivitiesResponse(t)
	return t
end

local DeleteApnsSandboxChannelRequest_keys = { "ApplicationId" = true, nil }

function M.AssertDeleteApnsSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApnsSandboxChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteApnsSandboxChannelRequest_keys[k], "DeleteApnsSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApnsSandboxChannelRequest
--  
-- @param ApplicationId [__string]  
-- Required parameter: ApplicationId
function M.DeleteApnsSandboxChannelRequest(ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApnsSandboxChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
	}
	M.AssertDeleteApnsSandboxChannelRequest(t)
	return t
end

local GetApnsSandboxChannelResponse_keys = { "APNSSandboxChannelResponse" = true, nil }

function M.AssertGetApnsSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetApnsSandboxChannelResponse to be of type 'table'")
	assert(struct["APNSSandboxChannelResponse"], "Expected key APNSSandboxChannelResponse to exist in table")
	if struct["APNSSandboxChannelResponse"] then M.AssertAPNSSandboxChannelResponse(struct["APNSSandboxChannelResponse"]) end
	for k,_ in pairs(struct) do
		assert(GetApnsSandboxChannelResponse_keys[k], "GetApnsSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetApnsSandboxChannelResponse
--  
-- @param APNSSandboxChannelResponse [APNSSandboxChannelResponse]  
-- Required parameter: APNSSandboxChannelResponse
function M.GetApnsSandboxChannelResponse(APNSSandboxChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApnsSandboxChannelResponse")
	local t = { 
		["APNSSandboxChannelResponse"] = APNSSandboxChannelResponse,
	}
	M.AssertGetApnsSandboxChannelResponse(t)
	return t
end

local SegmentResponse_keys = { "Dimensions" = true, "LastModifiedDate" = true, "SegmentType" = true, "Version" = true, "ImportDefinition" = true, "CreationDate" = true, "ApplicationId" = true, "Id" = true, "Name" = true, nil }

function M.AssertSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentResponse to be of type 'table'")
	if struct["Dimensions"] then M.AssertSegmentDimensions(struct["Dimensions"]) end
	if struct["LastModifiedDate"] then M.Assert__string(struct["LastModifiedDate"]) end
	if struct["SegmentType"] then M.AssertSegmentType(struct["SegmentType"]) end
	if struct["Version"] then M.Assert__integer(struct["Version"]) end
	if struct["ImportDefinition"] then M.AssertSegmentImportResource(struct["ImportDefinition"]) end
	if struct["CreationDate"] then M.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then M.Assert__string(struct["Id"]) end
	if struct["Name"] then M.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(SegmentResponse_keys[k], "SegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentResponse
-- Segment definition.
-- @param Dimensions [SegmentDimensions] The segment dimensions attributes.
-- @param LastModifiedDate [__string] The date the segment was last updated in ISO 8601 format.
-- @param SegmentType [SegmentType] The segment type:
DIMENSIONAL - A dynamic segment built from selection criteria based on endpoint data reported by your app. You create this type of segment by using the segment builder in the Amazon Pinpoint console or by making a POST request to the segments resource.
IMPORT - A static segment built from an imported set of endpoint definitions. You create this type of segment by importing a segment in the Amazon Pinpoint console or by making a POST request to the jobs/import resource.
-- @param Version [__integer] The segment version number.
-- @param ImportDefinition [SegmentImportResource] The import job settings.
-- @param CreationDate [__string] The date the segment was created in ISO 8601 format.
-- @param ApplicationId [__string] The ID of the application to which the segment applies.
-- @param Id [__string] The unique segment ID.
-- @param Name [__string] The name of segment
function M.SegmentResponse(Dimensions, LastModifiedDate, SegmentType, Version, ImportDefinition, CreationDate, ApplicationId, Id, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentResponse")
	local t = { 
		["Dimensions"] = Dimensions,
		["LastModifiedDate"] = LastModifiedDate,
		["SegmentType"] = SegmentType,
		["Version"] = Version,
		["ImportDefinition"] = ImportDefinition,
		["CreationDate"] = CreationDate,
		["ApplicationId"] = ApplicationId,
		["Id"] = Id,
		["Name"] = Name,
	}
	M.AssertSegmentResponse(t)
	return t
end

local UpdateEmailChannelRequest_keys = { "ApplicationId" = true, "EmailChannelRequest" = true, nil }

function M.AssertUpdateEmailChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateEmailChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["EmailChannelRequest"], "Expected key EmailChannelRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["EmailChannelRequest"] then M.AssertEmailChannelRequest(struct["EmailChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(UpdateEmailChannelRequest_keys[k], "UpdateEmailChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateEmailChannelRequest
--  
-- @param ApplicationId [__string]  
-- @param EmailChannelRequest [EmailChannelRequest]  
-- Required parameter: ApplicationId
-- Required parameter: EmailChannelRequest
function M.UpdateEmailChannelRequest(ApplicationId, EmailChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEmailChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["EmailChannelRequest"] = EmailChannelRequest,
	}
	M.AssertUpdateEmailChannelRequest(t)
	return t
end

local SMSChannelRequest_keys = { "SenderId" = true, "Enabled" = true, nil }

function M.AssertSMSChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSChannelRequest to be of type 'table'")
	if struct["SenderId"] then M.Assert__string(struct["SenderId"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(SMSChannelRequest_keys[k], "SMSChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSChannelRequest
-- SMS Channel Request
-- @param SenderId [__string] Sender identifier of your messages.
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
function M.SMSChannelRequest(SenderId, Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SMSChannelRequest")
	local t = { 
		["SenderId"] = SenderId,
		["Enabled"] = Enabled,
	}
	M.AssertSMSChannelRequest(t)
	return t
end

local EmailChannelRequest_keys = { "RoleArn" = true, "FromAddress" = true, "Enabled" = true, "Identity" = true, nil }

function M.AssertEmailChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmailChannelRequest to be of type 'table'")
	if struct["RoleArn"] then M.Assert__string(struct["RoleArn"]) end
	if struct["FromAddress"] then M.Assert__string(struct["FromAddress"]) end
	if struct["Enabled"] then M.Assert__boolean(struct["Enabled"]) end
	if struct["Identity"] then M.Assert__string(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(EmailChannelRequest_keys[k], "EmailChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmailChannelRequest
-- Email Channel Request
-- @param RoleArn [__string] The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
-- @param FromAddress [__string] The email address used to send emails from.
-- @param Enabled [__boolean] If the channel is enabled for sending messages.
-- @param Identity [__string] The ARN of an identity verified with SES.
function M.EmailChannelRequest(RoleArn, FromAddress, Enabled, Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmailChannelRequest")
	local t = { 
		["RoleArn"] = RoleArn,
		["FromAddress"] = FromAddress,
		["Enabled"] = Enabled,
		["Identity"] = Identity,
	}
	M.AssertEmailChannelRequest(t)
	return t
end

local MessageConfiguration_keys = { "APNSMessage" = true, "EmailMessage" = true, "DefaultMessage" = true, "SMSMessage" = true, "GCMMessage" = true, nil }

function M.AssertMessageConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageConfiguration to be of type 'table'")
	if struct["APNSMessage"] then M.AssertMessage(struct["APNSMessage"]) end
	if struct["EmailMessage"] then M.AssertCampaignEmailMessage(struct["EmailMessage"]) end
	if struct["DefaultMessage"] then M.AssertMessage(struct["DefaultMessage"]) end
	if struct["SMSMessage"] then M.AssertCampaignSmsMessage(struct["SMSMessage"]) end
	if struct["GCMMessage"] then M.AssertMessage(struct["GCMMessage"]) end
	for k,_ in pairs(struct) do
		assert(MessageConfiguration_keys[k], "MessageConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageConfiguration
-- Message configuration for a campaign.
-- @param APNSMessage [Message] The message that the campaign delivers to APNS channels. Overrides the default message.
-- @param EmailMessage [CampaignEmailMessage] The email message configuration.
-- @param DefaultMessage [Message] The default message for all channels.
-- @param SMSMessage [CampaignSmsMessage] The SMS message configuration.
-- @param GCMMessage [Message] The message that the campaign delivers to GCM channels. Overrides the default message.
function M.MessageConfiguration(APNSMessage, EmailMessage, DefaultMessage, SMSMessage, GCMMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageConfiguration")
	local t = { 
		["APNSMessage"] = APNSMessage,
		["EmailMessage"] = EmailMessage,
		["DefaultMessage"] = DefaultMessage,
		["SMSMessage"] = SMSMessage,
		["GCMMessage"] = GCMMessage,
	}
	M.AssertMessageConfiguration(t)
	return t
end

local UpdateSegmentResponse_keys = { "SegmentResponse" = true, nil }

function M.AssertUpdateSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSegmentResponse to be of type 'table'")
	assert(struct["SegmentResponse"], "Expected key SegmentResponse to exist in table")
	if struct["SegmentResponse"] then M.AssertSegmentResponse(struct["SegmentResponse"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSegmentResponse_keys[k], "UpdateSegmentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSegmentResponse
--  
-- @param SegmentResponse [SegmentResponse]  
-- Required parameter: SegmentResponse
function M.UpdateSegmentResponse(SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSegmentResponse")
	local t = { 
		["SegmentResponse"] = SegmentResponse,
	}
	M.AssertUpdateSegmentResponse(t)
	return t
end

local EndpointBatchRequest_keys = { "Item" = true, nil }

function M.AssertEndpointBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointBatchRequest to be of type 'table'")
	if struct["Item"] then M.AssertListOfEndpointBatchItem(struct["Item"]) end
	for k,_ in pairs(struct) do
		assert(EndpointBatchRequest_keys[k], "EndpointBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointBatchRequest
-- Endpoint batch update request.
-- @param Item [ListOfEndpointBatchItem] List of items to update. Maximum 100 items
function M.EndpointBatchRequest(Item, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointBatchRequest")
	local t = { 
		["Item"] = Item,
	}
	M.AssertEndpointBatchRequest(t)
	return t
end

local UpdateSmsChannelRequest_keys = { "ApplicationId" = true, "SMSChannelRequest" = true, nil }

function M.AssertUpdateSmsChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSmsChannelRequest to be of type 'table'")
	assert(struct["ApplicationId"], "Expected key ApplicationId to exist in table")
	assert(struct["SMSChannelRequest"], "Expected key SMSChannelRequest to exist in table")
	if struct["ApplicationId"] then M.Assert__string(struct["ApplicationId"]) end
	if struct["SMSChannelRequest"] then M.AssertSMSChannelRequest(struct["SMSChannelRequest"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSmsChannelRequest_keys[k], "UpdateSmsChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSmsChannelRequest
--  
-- @param ApplicationId [__string]  
-- @param SMSChannelRequest [SMSChannelRequest]  
-- Required parameter: ApplicationId
-- Required parameter: SMSChannelRequest
function M.UpdateSmsChannelRequest(ApplicationId, SMSChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSmsChannelRequest")
	local t = { 
		["ApplicationId"] = ApplicationId,
		["SMSChannelRequest"] = SMSChannelRequest,
	}
	M.AssertUpdateSmsChannelRequest(t)
	return t
end

function M.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
end

--  
function M.MessageType(str)
	M.AssertMessageType(str)
	return str
end

function M.AssertDimensionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DimensionType to be of type 'string'")
end

--  
function M.DimensionType(str)
	M.AssertDimensionType(str)
	return str
end

function M.AssertCampaignStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CampaignStatus to be of type 'string'")
end

--  
function M.CampaignStatus(str)
	M.AssertCampaignStatus(str)
	return str
end

function M.AssertDeliveryStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStatus to be of type 'string'")
end

--  
function M.DeliveryStatus(str)
	M.AssertDeliveryStatus(str)
	return str
end

function M.AssertChannelType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelType to be of type 'string'")
end

--  
function M.ChannelType(str)
	M.AssertChannelType(str)
	return str
end

function M.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
end

--  
function M.JobStatus(str)
	M.AssertJobStatus(str)
	return str
end

function M.AssertAttributeType(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeType to be of type 'string'")
end

--  
function M.AttributeType(str)
	M.AssertAttributeType(str)
	return str
end

function M.AssertSegmentType(str)
	assert(str)
	assert(type(str) == "string", "Expected SegmentType to be of type 'string'")
end

--  
function M.SegmentType(str)
	M.AssertSegmentType(str)
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

function M.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
end

--  
function M.Action(str)
	M.AssertAction(str)
	return str
end

function M.AssertFrequency(str)
	assert(str)
	assert(type(str) == "string", "Expected Frequency to be of type 'string'")
end

--  
function M.Frequency(str)
	M.AssertFrequency(str)
	return str
end

function M.AssertRecencyType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecencyType to be of type 'string'")
end

--  
function M.RecencyType(str)
	M.AssertRecencyType(str)
	return str
end

function M.AssertFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected Format to be of type 'string'")
end

--  
function M.Format(str)
	M.AssertFormat(str)
	return str
end

function M.AssertDuration(str)
	assert(str)
	assert(type(str) == "string", "Expected Duration to be of type 'string'")
end

--  
function M.Duration(str)
	M.AssertDuration(str)
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

function M.AssertMapOf__integer(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOf__integer to be of type 'table'")
	for k,v in pairs(map) do
		M.Assert__string(k)
		M.Assert__integer(v)
	end
end

function M.MapOf__integer(map)
	M.AssertMapOf__integer(map)
	return map
end

function M.AssertMapOf__double(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOf__double to be of type 'table'")
	for k,v in pairs(map) do
		M.Assert__string(k)
		M.Assert__double(v)
	end
end

function M.MapOf__double(map)
	M.AssertMapOf__double(map)
	return map
end

function M.AssertMapOfMessageResult(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfMessageResult to be of type 'table'")
	for k,v in pairs(map) do
		M.Assert__string(k)
		M.AssertMessageResult(v)
	end
end

function M.MapOfMessageResult(map)
	M.AssertMapOfMessageResult(map)
	return map
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

function M.AssertMapOfListOf__string(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfListOf__string to be of type 'table'")
	for k,v in pairs(map) do
		M.Assert__string(k)
		M.AssertListOf__string(v)
	end
end

function M.MapOfListOf__string(map)
	M.AssertMapOfListOf__string(map)
	return map
end

function M.AssertMapOfAttributeDimension(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfAttributeDimension to be of type 'table'")
	for k,v in pairs(map) do
		M.Assert__string(k)
		M.AssertAttributeDimension(v)
	end
end

function M.MapOfAttributeDimension(map)
	M.AssertMapOfAttributeDimension(map)
	return map
end

function M.AssertMapOfAddressConfiguration(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfAddressConfiguration to be of type 'table'")
	for k,v in pairs(map) do
		M.Assert__string(k)
		M.AssertAddressConfiguration(v)
	end
end

function M.MapOfAddressConfiguration(map)
	M.AssertMapOfAddressConfiguration(map)
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

function M.AssertListOfActivityResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfActivityResponse to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActivityResponse(v)
	end
end

--  
-- List of ActivityResponse objects
function M.ListOfActivityResponse(list)
	M.AssertListOfActivityResponse(list)
	return list
end

function M.AssertListOf__string(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOf__string to be of type ''table")
	for _,v in ipairs(list) do
		M.Assert__string(v)
	end
end

--  
-- List of __string objects
function M.ListOf__string(list)
	M.AssertListOf__string(list)
	return list
end

function M.AssertListOfEndpointBatchItem(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfEndpointBatchItem to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEndpointBatchItem(v)
	end
end

--  
-- List of EndpointBatchItem objects
function M.ListOfEndpointBatchItem(list)
	M.AssertListOfEndpointBatchItem(list)
	return list
end

function M.AssertListOfImportJobResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfImportJobResponse to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertImportJobResponse(v)
	end
end

--  
-- List of ImportJobResponse objects
function M.ListOfImportJobResponse(list)
	M.AssertListOfImportJobResponse(list)
	return list
end

function M.AssertListOfSegmentResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfSegmentResponse to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSegmentResponse(v)
	end
end

--  
-- List of SegmentResponse objects
function M.ListOfSegmentResponse(list)
	M.AssertListOfSegmentResponse(list)
	return list
end

function M.AssertListOfCampaignResponse(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfCampaignResponse to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCampaignResponse(v)
	end
end

--  
-- List of CampaignResponse objects
function M.ListOfCampaignResponse(list)
	M.AssertListOfCampaignResponse(list)
	return list
end

function M.AssertListOfWriteTreatmentResource(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfWriteTreatmentResource to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWriteTreatmentResource(v)
	end
end

--  
-- List of WriteTreatmentResource objects
function M.ListOfWriteTreatmentResource(list)
	M.AssertListOfWriteTreatmentResource(list)
	return list
end

function M.AssertListOfTreatmentResource(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfTreatmentResource to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTreatmentResource(v)
	end
end

--  
-- List of TreatmentResource objects
function M.ListOfTreatmentResource(list)
	M.AssertListOfTreatmentResource(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- CreateSegment
-- @param CreateSegmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSegmentAsync(CreateSegmentRequest, cb)
	assert(CreateSegmentRequest, "You must provide a CreateSegmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateSegment",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/segments", CreateSegmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetImportJobs
-- @param GetImportJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetImportJobsAsync(GetImportJobsRequest, cb)
	assert(GetImportJobsRequest, "You must provide a GetImportJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetImportJobs",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/jobs/import", GetImportJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSegmentVersion
-- @param GetSegmentVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSegmentVersionAsync(GetSegmentVersionRequest, cb)
	assert(GetSegmentVersionRequest, "You must provide a GetSegmentVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSegmentVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/segments/{segment-id}/versions/{version}", GetSegmentVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApnsSandboxChannel
-- @param DeleteApnsSandboxChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApnsSandboxChannelAsync(DeleteApnsSandboxChannelRequest, cb)
	assert(DeleteApnsSandboxChannelRequest, "You must provide a DeleteApnsSandboxChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteApnsSandboxChannel",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/apns_sandbox", DeleteApnsSandboxChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteGcmChannel
-- @param DeleteGcmChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteGcmChannelAsync(DeleteGcmChannelRequest, cb)
	assert(DeleteGcmChannelRequest, "You must provide a DeleteGcmChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteGcmChannel",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/gcm", DeleteGcmChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteCampaign
-- @param DeleteCampaignRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteCampaignAsync(DeleteCampaignRequest, cb)
	assert(DeleteCampaignRequest, "You must provide a DeleteCampaignRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteCampaign",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/campaigns/{campaign-id}", DeleteCampaignRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetImportJob
-- @param GetImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetImportJobAsync(GetImportJobRequest, cb)
	assert(GetImportJobRequest, "You must provide a GetImportJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/jobs/import/{job-id}", GetImportJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateCampaign
-- @param CreateCampaignRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateCampaignAsync(CreateCampaignRequest, cb)
	assert(CreateCampaignRequest, "You must provide a CreateCampaignRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateCampaign",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/campaigns", CreateCampaignRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateImportJob
-- @param CreateImportJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateImportJobAsync(CreateImportJobRequest, cb)
	assert(CreateImportJobRequest, "You must provide a CreateImportJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateImportJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/jobs/import", CreateImportJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSmsChannel
-- @param UpdateSmsChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSmsChannelAsync(UpdateSmsChannelRequest, cb)
	assert(UpdateSmsChannelRequest, "You must provide a UpdateSmsChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateSmsChannel",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/sms", UpdateSmsChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCampaignVersion
-- @param GetCampaignVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCampaignVersionAsync(GetCampaignVersionRequest, cb)
	assert(GetCampaignVersionRequest, "You must provide a GetCampaignVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCampaignVersion",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/campaigns/{campaign-id}/versions/{version}", GetCampaignVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetGcmChannel
-- @param GetGcmChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetGcmChannelAsync(GetGcmChannelRequest, cb)
	assert(GetGcmChannelRequest, "You must provide a GetGcmChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetGcmChannel",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/gcm", GetGcmChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApnsChannel
-- @param UpdateApnsChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApnsChannelAsync(UpdateApnsChannelRequest, cb)
	assert(UpdateApnsChannelRequest, "You must provide a UpdateApnsChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateApnsChannel",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/apns", UpdateApnsChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateGcmChannel
-- @param UpdateGcmChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateGcmChannelAsync(UpdateGcmChannelRequest, cb)
	assert(UpdateGcmChannelRequest, "You must provide a UpdateGcmChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateGcmChannel",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/gcm", UpdateGcmChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSegment
-- @param GetSegmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSegmentAsync(GetSegmentRequest, cb)
	assert(GetSegmentRequest, "You must provide a GetSegmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSegment",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/segments/{segment-id}", GetSegmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCampaign
-- @param GetCampaignRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCampaignAsync(GetCampaignRequest, cb)
	assert(GetCampaignRequest, "You must provide a GetCampaignRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCampaign",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/campaigns/{campaign-id}", GetCampaignRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetEmailChannel
-- @param GetEmailChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetEmailChannelAsync(GetEmailChannelRequest, cb)
	assert(GetEmailChannelRequest, "You must provide a GetEmailChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetEmailChannel",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/email", GetEmailChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateCampaign
-- @param UpdateCampaignRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateCampaignAsync(UpdateCampaignRequest, cb)
	assert(UpdateCampaignRequest, "You must provide a UpdateCampaignRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateCampaign",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/campaigns/{campaign-id}", UpdateCampaignRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApplicationSettings
-- @param UpdateApplicationSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApplicationSettingsAsync(UpdateApplicationSettingsRequest, cb)
	assert(UpdateApplicationSettingsRequest, "You must provide a UpdateApplicationSettingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateApplicationSettings",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/settings", UpdateApplicationSettingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateApnsSandboxChannel
-- @param UpdateApnsSandboxChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateApnsSandboxChannelAsync(UpdateApnsSandboxChannelRequest, cb)
	assert(UpdateApnsSandboxChannelRequest, "You must provide a UpdateApnsSandboxChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateApnsSandboxChannel",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/apns_sandbox", UpdateApnsSandboxChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSegments
-- @param GetSegmentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSegmentsAsync(GetSegmentsRequest, cb)
	assert(GetSegmentsRequest, "You must provide a GetSegmentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSegments",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/segments", GetSegmentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutEventStream
-- @param PutEventStreamRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutEventStreamAsync(PutEventStreamRequest, cb)
	assert(PutEventStreamRequest, "You must provide a PutEventStreamRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutEventStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/eventstream", PutEventStreamRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSegment
-- @param DeleteSegmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSegmentAsync(DeleteSegmentRequest, cb)
	assert(DeleteSegmentRequest, "You must provide a DeleteSegmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSegment",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/segments/{segment-id}", DeleteSegmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCampaignVersions
-- @param GetCampaignVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCampaignVersionsAsync(GetCampaignVersionsRequest, cb)
	assert(GetCampaignVersionsRequest, "You must provide a GetCampaignVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCampaignVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/campaigns/{campaign-id}/versions", GetCampaignVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateEndpoint
-- @param UpdateEndpointRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateEndpointAsync(UpdateEndpointRequest, cb)
	assert(UpdateEndpointRequest, "You must provide a UpdateEndpointRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/endpoints/{endpoint-id}", UpdateEndpointRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApnsSandboxChannel
-- @param GetApnsSandboxChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetApnsSandboxChannelAsync(GetApnsSandboxChannelRequest, cb)
	assert(GetApnsSandboxChannelRequest, "You must provide a GetApnsSandboxChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetApnsSandboxChannel",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/apns_sandbox", GetApnsSandboxChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSegmentImportJobs
-- @param GetSegmentImportJobsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSegmentImportJobsAsync(GetSegmentImportJobsRequest, cb)
	assert(GetSegmentImportJobsRequest, "You must provide a GetSegmentImportJobsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSegmentImportJobs",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/segments/{segment-id}/jobs/import", GetSegmentImportJobsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCampaigns
-- @param GetCampaignsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCampaignsAsync(GetCampaignsRequest, cb)
	assert(GetCampaignsRequest, "You must provide a GetCampaignsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCampaigns",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/campaigns", GetCampaignsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteEmailChannel
-- @param DeleteEmailChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEmailChannelAsync(DeleteEmailChannelRequest, cb)
	assert(DeleteEmailChannelRequest, "You must provide a DeleteEmailChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteEmailChannel",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/email", DeleteEmailChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCampaignActivities
-- @param GetCampaignActivitiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCampaignActivitiesAsync(GetCampaignActivitiesRequest, cb)
	assert(GetCampaignActivitiesRequest, "You must provide a GetCampaignActivitiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetCampaignActivities",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/campaigns/{campaign-id}/activities", GetCampaignActivitiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApnsChannel
-- @param GetApnsChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetApnsChannelAsync(GetApnsChannelRequest, cb)
	assert(GetApnsChannelRequest, "You must provide a GetApnsChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetApnsChannel",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/apns", GetApnsChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetEndpoint
-- @param GetEndpointRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetEndpointAsync(GetEndpointRequest, cb)
	assert(GetEndpointRequest, "You must provide a GetEndpointRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/endpoints/{endpoint-id}", GetEndpointRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetEventStream
-- @param GetEventStreamRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetEventStreamAsync(GetEventStreamRequest, cb)
	assert(GetEventStreamRequest, "You must provide a GetEventStreamRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetEventStream",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/eventstream", GetEventStreamRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSmsChannel
-- @param DeleteSmsChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSmsChannelAsync(DeleteSmsChannelRequest, cb)
	assert(DeleteSmsChannelRequest, "You must provide a DeleteSmsChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSmsChannel",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/sms", DeleteSmsChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendMessages
-- @param SendMessagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendMessagesAsync(SendMessagesRequest, cb)
	assert(SendMessagesRequest, "You must provide a SendMessagesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SendMessages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/messages", SendMessagesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteApnsChannel
-- @param DeleteApnsChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteApnsChannelAsync(DeleteApnsChannelRequest, cb)
	assert(DeleteApnsChannelRequest, "You must provide a DeleteApnsChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteApnsChannel",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/apns", DeleteApnsChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteEventStream
-- @param DeleteEventStreamRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEventStreamAsync(DeleteEventStreamRequest, cb)
	assert(DeleteEventStreamRequest, "You must provide a DeleteEventStreamRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteEventStream",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/eventstream", DeleteEventStreamRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetApplicationSettings
-- @param GetApplicationSettingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetApplicationSettingsAsync(GetApplicationSettingsRequest, cb)
	assert(GetApplicationSettingsRequest, "You must provide a GetApplicationSettingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetApplicationSettings",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/settings", GetApplicationSettingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateEmailChannel
-- @param UpdateEmailChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateEmailChannelAsync(UpdateEmailChannelRequest, cb)
	assert(UpdateEmailChannelRequest, "You must provide a UpdateEmailChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateEmailChannel",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/email", UpdateEmailChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSmsChannel
-- @param GetSmsChannelRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSmsChannelAsync(GetSmsChannelRequest, cb)
	assert(GetSmsChannelRequest, "You must provide a GetSmsChannelRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSmsChannel",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/channels/sms", GetSmsChannelRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateSegment
-- @param UpdateSegmentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSegmentAsync(UpdateSegmentRequest, cb)
	assert(UpdateSegmentRequest, "You must provide a UpdateSegmentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateSegment",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/segments/{segment-id}", UpdateSegmentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSegmentVersions
-- @param GetSegmentVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSegmentVersionsAsync(GetSegmentVersionsRequest, cb)
	assert(GetSegmentVersionsRequest, "You must provide a GetSegmentVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSegmentVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/segments/{segment-id}/versions", GetSegmentVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateEndpointsBatch
-- @param UpdateEndpointsBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateEndpointsBatchAsync(UpdateEndpointsBatchRequest, cb)
	assert(UpdateEndpointsBatchRequest, "You must provide a UpdateEndpointsBatchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateEndpointsBatch",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/apps/{application-id}/endpoints", UpdateEndpointsBatchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
