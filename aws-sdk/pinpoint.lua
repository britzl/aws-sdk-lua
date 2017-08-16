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
-- @param _ApplicationSettingsResource [ApplicationSettingsResource] 
-- Required parameter: ApplicationSettingsResource
function M.UpdateApplicationSettingsResponse(_ApplicationSettingsResource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationSettingsResponse")
	local t = { 
		["ApplicationSettingsResource"] = _ApplicationSettingsResource,
	}
	asserts.AssertUpdateApplicationSettingsResponse(t)
	return t
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
-- @param _End [__string] The actual time the activity was marked CANCELLED or COMPLETED. Provided in ISO 8601 format.
-- @param _CampaignId [__string] The ID of the campaign to which the activity applies.
-- @param _TimezonesTotalCount [__integer] The total number of unique timezones present in the segment.
-- @param _SuccessfulEndpointCount [__integer] The total number of endpoints to which the campaign successfully delivered messages.
-- @param _ScheduledStart [__string] The scheduled start time for the activity in ISO 8601 format.
-- @param _TotalEndpointCount [__integer] The total number of endpoints to which the campaign attempts to deliver messages.
-- @param _Start [__string] The actual start time of the activity in ISO 8601 format.
-- @param _State [__string] The state of the activity.Valid values: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, COMPLETED
-- @param _Result [__string] Indicates whether the activity succeeded.Valid values: SUCCESS, FAIL
-- @param _TimezonesCompletedCount [__integer] The total number of timezones completed.
-- @param _TreatmentId [__string] The ID of a variation of the campaign used for A/B testing.
-- @param _ApplicationId [__string] The ID of the application to which the campaign applies.
-- @param _Id [__string] The unique activity ID.
function M.ActivityResponse(_End, _CampaignId, _TimezonesTotalCount, _SuccessfulEndpointCount, _ScheduledStart, _TotalEndpointCount, _Start, _State, _Result, _TimezonesCompletedCount, _TreatmentId, _ApplicationId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityResponse")
	local t = { 
		["End"] = _End,
		["CampaignId"] = _CampaignId,
		["TimezonesTotalCount"] = _TimezonesTotalCount,
		["SuccessfulEndpointCount"] = _SuccessfulEndpointCount,
		["ScheduledStart"] = _ScheduledStart,
		["TotalEndpointCount"] = _TotalEndpointCount,
		["Start"] = _Start,
		["State"] = _State,
		["Result"] = _Result,
		["TimezonesCompletedCount"] = _TimezonesCompletedCount,
		["TreatmentId"] = _TreatmentId,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
	}
	asserts.AssertActivityResponse(t)
	return t
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
-- @param _SMSChannelResponse [SMSChannelResponse] 
-- Required parameter: SMSChannelResponse
function M.DeleteSmsChannelResponse(_SMSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSmsChannelResponse")
	local t = { 
		["SMSChannelResponse"] = _SMSChannelResponse,
	}
	asserts.AssertDeleteSmsChannelResponse(t)
	return t
end

keys.WriteCampaignRequest = { ["Description"] = true, ["Limits"] = true, ["Schedule"] = true, ["TreatmentName"] = true, ["HoldoutPercent"] = true, ["SegmentVersion"] = true, ["SegmentId"] = true, ["AdditionalTreatments"] = true, ["IsPaused"] = true, ["MessageConfiguration"] = true, ["TreatmentDescription"] = true, ["Name"] = true, nil }

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
-- @param _Description [__string] A description of the campaign.
-- @param _Limits [CampaignLimits] The campaign limits settings.
-- @param _Schedule [Schedule] The campaign schedule.
-- @param _TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- @param _HoldoutPercent [__integer] The allocated percentage of end users who will not receive messages from this campaign.
-- @param _SegmentVersion [__integer] The version of the segment to which the campaign sends messages.
-- @param _SegmentId [__string] The ID of the segment to which the campaign sends messages.
-- @param _AdditionalTreatments [ListOfWriteTreatmentResource] Treatments that are defined in addition to the default treatment.
-- @param _IsPaused [__boolean] Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
-- @param _MessageConfiguration [MessageConfiguration] The message configuration settings.
-- @param _TreatmentDescription [__string] A custom description for the treatment.
-- @param _Name [__string] The custom name of the campaign.
function M.WriteCampaignRequest(_Description, _Limits, _Schedule, _TreatmentName, _HoldoutPercent, _SegmentVersion, _SegmentId, _AdditionalTreatments, _IsPaused, _MessageConfiguration, _TreatmentDescription, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteCampaignRequest")
	local t = { 
		["Description"] = _Description,
		["Limits"] = _Limits,
		["Schedule"] = _Schedule,
		["TreatmentName"] = _TreatmentName,
		["HoldoutPercent"] = _HoldoutPercent,
		["SegmentVersion"] = _SegmentVersion,
		["SegmentId"] = _SegmentId,
		["AdditionalTreatments"] = _AdditionalTreatments,
		["IsPaused"] = _IsPaused,
		["MessageConfiguration"] = _MessageConfiguration,
		["TreatmentDescription"] = _TreatmentDescription,
		["Name"] = _Name,
	}
	asserts.AssertWriteCampaignRequest(t)
	return t
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
-- @param _UserId [__string] The unique ID of the user.
-- @param _UserAttributes [MapOfListOf__string] Custom attributes specific to the user.
function M.EndpointUser(_UserId, _UserAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointUser")
	local t = { 
		["UserId"] = _UserId,
		["UserAttributes"] = _UserAttributes,
	}
	asserts.AssertEndpointUser(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.GetApnsChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApnsChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertGetApnsChannelRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.GetGcmChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGcmChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertGetGcmChannelRequest(t)
	return t
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
-- @param _Message [__string] The error message returned from the API.
-- @param _RequestID [__string] The unique message body ID.
function M.BadRequestException(_Message, _RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequestException")
	local t = { 
		["Message"] = _Message,
		["RequestID"] = _RequestID,
	}
	asserts.AssertBadRequestException(t)
	return t
end

keys.WriteApplicationSettingsRequest = { ["QuietTime"] = true, ["Limits"] = true, nil }

function asserts.AssertWriteApplicationSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteApplicationSettingsRequest to be of type 'table'")
	if struct["QuietTime"] then asserts.AssertQuietTime(struct["QuietTime"]) end
	if struct["Limits"] then asserts.AssertCampaignLimits(struct["Limits"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteApplicationSettingsRequest[k], "WriteApplicationSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteApplicationSettingsRequest
-- Creating application setting request
-- @param _QuietTime [QuietTime] The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
-- @param _Limits [CampaignLimits] The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
function M.WriteApplicationSettingsRequest(_QuietTime, _Limits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteApplicationSettingsRequest")
	local t = { 
		["QuietTime"] = _QuietTime,
		["Limits"] = _Limits,
	}
	asserts.AssertWriteApplicationSettingsRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.DeleteApnsChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApnsChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertDeleteApnsChannelRequest(t)
	return t
end

keys.WriteSegmentRequest = { ["Dimensions"] = true, ["Name"] = true, nil }

function asserts.AssertWriteSegmentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteSegmentRequest to be of type 'table'")
	if struct["Dimensions"] then asserts.AssertSegmentDimensions(struct["Dimensions"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteSegmentRequest[k], "WriteSegmentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteSegmentRequest
-- Segment definition.
-- @param _Dimensions [SegmentDimensions] The segment dimensions attributes.
-- @param _Name [__string] The name of segment
function M.WriteSegmentRequest(_Dimensions, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteSegmentRequest")
	local t = { 
		["Dimensions"] = _Dimensions,
		["Name"] = _Name,
	}
	asserts.AssertWriteSegmentRequest(t)
	return t
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
-- @param _Item [ListOfSegmentResponse] The list of segments.
-- @param _NextToken [__string] An identifier used to retrieve the next page of results. The token is null if no additional pages exist.
function M.SegmentsResponse(_Item, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentsResponse")
	local t = { 
		["Item"] = _Item,
		["NextToken"] = _NextToken,
	}
	asserts.AssertSegmentsResponse(t)
	return t
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
-- @param _SMSChannelResponse [SMSChannelResponse] 
-- Required parameter: SMSChannelResponse
function M.UpdateSmsChannelResponse(_SMSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSmsChannelResponse")
	local t = { 
		["SMSChannelResponse"] = _SMSChannelResponse,
	}
	asserts.AssertUpdateSmsChannelResponse(t)
	return t
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
-- @param _Message [__string] The error message returned from the API.
-- @param _RequestID [__string] The unique message body ID.
function M.InternalServerErrorException(_Message, _RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerErrorException")
	local t = { 
		["Message"] = _Message,
		["RequestID"] = _RequestID,
	}
	asserts.AssertInternalServerErrorException(t)
	return t
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
-- @param _ImportJobsResponse [ImportJobsResponse] 
-- Required parameter: ImportJobsResponse
function M.GetImportJobsResponse(_ImportJobsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetImportJobsResponse")
	local t = { 
		["ImportJobsResponse"] = _ImportJobsResponse,
	}
	asserts.AssertGetImportJobsResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _WriteCampaignRequest [WriteCampaignRequest] 
-- Required parameter: ApplicationId
-- Required parameter: WriteCampaignRequest
function M.CreateCampaignRequest(_ApplicationId, _WriteCampaignRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCampaignRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["WriteCampaignRequest"] = _WriteCampaignRequest,
	}
	asserts.AssertCreateCampaignRequest(t)
	return t
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
-- PutEventStream Request
-- @param _ApplicationId [__string] ApplicationId
-- @param _WriteEventStream [WriteEventStream] EventStream to write.
-- Required parameter: ApplicationId
-- Required parameter: WriteEventStream
function M.PutEventStreamRequest(_ApplicationId, _WriteEventStream, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventStreamRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["WriteEventStream"] = _WriteEventStream,
	}
	asserts.AssertPutEventStreamRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _EndpointRequest [EndpointRequest] 
-- @param _EndpointId [__string] 
-- Required parameter: ApplicationId
-- Required parameter: EndpointId
-- Required parameter: EndpointRequest
function M.UpdateEndpointRequest(_ApplicationId, _EndpointRequest, _EndpointId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEndpointRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["EndpointRequest"] = _EndpointRequest,
		["EndpointId"] = _EndpointId,
	}
	asserts.AssertUpdateEndpointRequest(t)
	return t
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
-- @param _QuietTime [QuietTime] The time during which the campaign sends no messages.
-- @param _Frequency [Frequency] How often the campaign delivers messages.Valid values: ONCE, HOURLY, DAILY, WEEKLY, MONTHLY
-- @param _IsLocalTime [__boolean] Indicates whether the campaign schedule takes effect according to each user's local time.
-- @param _StartTime [__string] The scheduled time that the campaign begins in ISO 8601 format.
-- @param _Timezone [__string] The starting UTC offset for the schedule if the value for isLocalTime is trueValid values: UTCUTC+01UTC+02UTC+03UTC+03:30UTC+04UTC+04:30UTC+05UTC+05:30UTC+05:45UTC+06UTC+06:30UTC+07UTC+08UTC+09UTC+09:30UTC+10UTC+10:30UTC+11UTC+12UTC+13UTC-02UTC-03UTC-04UTC-05UTC-06UTC-07UTC-08UTC-09UTC-10UTC-11
-- @param _EndTime [__string] The scheduled time that the campaign ends in ISO 8601 format.
function M.Schedule(_QuietTime, _Frequency, _IsLocalTime, _StartTime, _Timezone, _EndTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Schedule")
	local t = { 
		["QuietTime"] = _QuietTime,
		["Frequency"] = _Frequency,
		["IsLocalTime"] = _IsLocalTime,
		["StartTime"] = _StartTime,
		["Timezone"] = _Timezone,
		["EndTime"] = _EndTime,
	}
	asserts.AssertSchedule(t)
	return t
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
-- @param _Substitutions [MapOfListOf__string] A map of substitution values for the message to be merged with the DefaultMessage's substitutions. Substitutions on this map take precedence over the all other substitutions.
-- @param _BodyOverride [__string] Body override. If specified will override default body.
-- @param _Context [MapOf__string] A map of custom attributes to attributes to be attached to the message for this address. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
-- @param _RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- @param _ChannelType [ChannelType] Type of channel of this address
-- @param _TitleOverride [__string] Title override. If specified will override default title if applicable.
function M.AddressConfiguration(_Substitutions, _BodyOverride, _Context, _RawContent, _ChannelType, _TitleOverride, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddressConfiguration")
	local t = { 
		["Substitutions"] = _Substitutions,
		["BodyOverride"] = _BodyOverride,
		["Context"] = _Context,
		["RawContent"] = _RawContent,
		["ChannelType"] = _ChannelType,
		["TitleOverride"] = _TitleOverride,
	}
	asserts.AssertAddressConfiguration(t)
	return t
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
-- @param _Token [__string] 
-- @param _ApplicationId [__string] 
-- @param _SegmentId [__string] 
-- @param _PageSize [__string] 
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
function M.GetSegmentVersionsRequest(_Token, _ApplicationId, _SegmentId, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentVersionsRequest")
	local t = { 
		["Token"] = _Token,
		["ApplicationId"] = _ApplicationId,
		["SegmentId"] = _SegmentId,
		["PageSize"] = _PageSize,
	}
	asserts.AssertGetSegmentVersionsRequest(t)
	return t
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
-- @param _CampaignResponse [CampaignResponse] 
-- Required parameter: CampaignResponse
function M.GetCampaignVersionResponse(_CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignVersionResponse")
	local t = { 
		["CampaignResponse"] = _CampaignResponse,
	}
	asserts.AssertGetCampaignVersionResponse(t)
	return t
end

keys.APNSSandboxChannelResponse = { ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, nil }

function asserts.AssertAPNSSandboxChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSSandboxChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSSandboxChannelResponse[k], "APNSSandboxChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSSandboxChannelResponse
-- Apple Development Push Notification Service channel definition.
-- @param _LastModifiedDate [__string] Last date this was updated
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
-- @param _LastModifiedBy [__string] Who last updated this entry
-- @param _Platform [__string] The platform type. Will be APNS.
-- @param _Version [__integer] Version of channel
-- @param _IsArchived [__boolean] Is this channel archived
-- @param _CreationDate [__string] When was this segment created
-- @param _ApplicationId [__string] Application id
-- @param _Id [__string] Channel ID. Not used, only for backwards compatibility.
function M.APNSSandboxChannelResponse(_LastModifiedDate, _Enabled, _LastModifiedBy, _Platform, _Version, _IsArchived, _CreationDate, _ApplicationId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSSandboxChannelResponse")
	local t = { 
		["LastModifiedDate"] = _LastModifiedDate,
		["Enabled"] = _Enabled,
		["LastModifiedBy"] = _LastModifiedBy,
		["Platform"] = _Platform,
		["Version"] = _Version,
		["IsArchived"] = _IsArchived,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
	}
	asserts.AssertAPNSSandboxChannelResponse(t)
	return t
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
-- @param _SizePercent [__integer] The allocated percentage of users for this treatment.
-- @param _MessageConfiguration [MessageConfiguration] The message configuration settings.
-- @param _TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- @param _TreatmentDescription [__string] A custom description for the treatment.
-- @param _Schedule [Schedule] The campaign schedule.
function M.WriteTreatmentResource(_SizePercent, _MessageConfiguration, _TreatmentName, _TreatmentDescription, _Schedule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteTreatmentResource")
	local t = { 
		["SizePercent"] = _SizePercent,
		["MessageConfiguration"] = _MessageConfiguration,
		["TreatmentName"] = _TreatmentName,
		["TreatmentDescription"] = _TreatmentDescription,
		["Schedule"] = _Schedule,
	}
	asserts.AssertWriteTreatmentResource(t)
	return t
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
-- @param _CampaignStatus [CampaignStatus] The status of the campaign, or the status of a treatment that belongs to an A/B test campaign.Valid values: SCHEDULED, EXECUTING, PENDING_NEXT_RUN, COMPLETED, PAUSED
function M.CampaignState(_CampaignStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignState")
	local t = { 
		["CampaignStatus"] = _CampaignStatus,
	}
	asserts.AssertCampaignState(t)
	return t
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
-- @param _WriteSegmentRequest [WriteSegmentRequest] 
-- @param _ApplicationId [__string] 
-- @param _SegmentId [__string] 
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
-- Required parameter: WriteSegmentRequest
function M.UpdateSegmentRequest(_WriteSegmentRequest, _ApplicationId, _SegmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSegmentRequest")
	local t = { 
		["WriteSegmentRequest"] = _WriteSegmentRequest,
		["ApplicationId"] = _ApplicationId,
		["SegmentId"] = _SegmentId,
	}
	asserts.AssertUpdateSegmentRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _ImportJobRequest [ImportJobRequest] 
-- Required parameter: ApplicationId
-- Required parameter: ImportJobRequest
function M.CreateImportJobRequest(_ApplicationId, _ImportJobRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateImportJobRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["ImportJobRequest"] = _ImportJobRequest,
	}
	asserts.AssertCreateImportJobRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.GetApplicationSettingsRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationSettingsRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertGetApplicationSettingsRequest(t)
	return t
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
-- @param _Token [__string] 
-- @param _ApplicationId [__string] 
-- @param _PageSize [__string] 
-- Required parameter: ApplicationId
function M.GetImportJobsRequest(_Token, _ApplicationId, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetImportJobsRequest")
	local t = { 
		["Token"] = _Token,
		["ApplicationId"] = _ApplicationId,
		["PageSize"] = _PageSize,
	}
	asserts.AssertGetImportJobsRequest(t)
	return t
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
-- @param _Body [__string] The message body of the notification, the email body or the text message.
-- @param _Title [__string] The message title that displays above the message on the user's device.
-- @param _Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- @param _Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- @param _Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- @param _SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- @param _Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
function M.DefaultPushNotificationMessage(_Body, _Title, _Url, _Substitutions, _Action, _SilentPush, _Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultPushNotificationMessage")
	local t = { 
		["Body"] = _Body,
		["Title"] = _Title,
		["Url"] = _Url,
		["Substitutions"] = _Substitutions,
		["Action"] = _Action,
		["SilentPush"] = _SilentPush,
		["Data"] = _Data,
	}
	asserts.AssertDefaultPushNotificationMessage(t)
	return t
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
-- @param _GCMChannelResponse [GCMChannelResponse] 
-- Required parameter: GCMChannelResponse
function M.UpdateGcmChannelResponse(_GCMChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGcmChannelResponse")
	local t = { 
		["GCMChannelResponse"] = _GCMChannelResponse,
	}
	asserts.AssertUpdateGcmChannelResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.DeleteSmsChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSmsChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertDeleteSmsChannelRequest(t)
	return t
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
-- @param _Version [__string] 
-- @param _ApplicationId [__string] 
-- @param _CampaignId [__string] 
-- Required parameter: Version
-- Required parameter: ApplicationId
-- Required parameter: CampaignId
function M.GetCampaignVersionRequest(_Version, _ApplicationId, _CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignVersionRequest")
	local t = { 
		["Version"] = _Version,
		["ApplicationId"] = _ApplicationId,
		["CampaignId"] = _CampaignId,
	}
	asserts.AssertGetCampaignVersionRequest(t)
	return t
end

keys.EndpointResponse = { ["ShardId"] = true, ["EffectiveDate"] = true, ["OptOut"] = true, ["RequestId"] = true, ["Demographic"] = true, ["User"] = true, ["Metrics"] = true, ["Location"] = true, ["Address"] = true, ["CohortId"] = true, ["Attributes"] = true, ["ChannelType"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["EndpointStatus"] = true, nil }

function asserts.AssertEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointResponse to be of type 'table'")
	if struct["ShardId"] then asserts.Assert__string(struct["ShardId"]) end
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
-- @param _ShardId [__string] The ShardId of endpoint
-- @param _EffectiveDate [__string] The last time the endpoint was updated. Provided in ISO 8601 format.
-- @param _OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:ALL – User receives all messages.NONE – User receives no messages.
-- @param _RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- @param _Demographic [EndpointDemographic] The endpoint demographic attributes.
-- @param _User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- @param _Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- @param _Location [EndpointLocation] The endpoint location attributes.
-- @param _Address [__string] The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
-- @param _CohortId [__string] A number from 0 - 99 that represents the cohort the endpoint is assigned to. Endpoints are grouped into cohorts randomly, and each cohort contains approximately 1 percent of the endpoints for an app. Amazon Pinpoint assigns cohorts to the holdout or treatment allocations for a campaign.
-- @param _Attributes [MapOfListOf__string] Custom attributes that your app reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create a segment.
-- @param _ChannelType [ChannelType] The channel type.Valid values: APNS, GCM
-- @param _CreationDate [__string] The last time the endpoint was created. Provided in ISO 8601 format.
-- @param _ApplicationId [__string] The ID of the application associated with the endpoint.
-- @param _Id [__string] The unique ID that you assigned to the endpoint. The ID should be a globally unique identifier (GUID) to ensure that it is unique compared to all other endpoints for the application.
-- @param _EndpointStatus [__string] The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
function M.EndpointResponse(_ShardId, _EffectiveDate, _OptOut, _RequestId, _Demographic, _User, _Metrics, _Location, _Address, _CohortId, _Attributes, _ChannelType, _CreationDate, _ApplicationId, _Id, _EndpointStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointResponse")
	local t = { 
		["ShardId"] = _ShardId,
		["EffectiveDate"] = _EffectiveDate,
		["OptOut"] = _OptOut,
		["RequestId"] = _RequestId,
		["Demographic"] = _Demographic,
		["User"] = _User,
		["Metrics"] = _Metrics,
		["Location"] = _Location,
		["Address"] = _Address,
		["CohortId"] = _CohortId,
		["Attributes"] = _Attributes,
		["ChannelType"] = _ChannelType,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
		["EndpointStatus"] = _EndpointStatus,
	}
	asserts.AssertEndpointResponse(t)
	return t
end

keys.DirectMessageConfiguration = { ["APNSMessage"] = true, ["DefaultPushNotificationMessage"] = true, ["DefaultMessage"] = true, ["SMSMessage"] = true, ["GCMMessage"] = true, nil }

function asserts.AssertDirectMessageConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DirectMessageConfiguration to be of type 'table'")
	if struct["APNSMessage"] then asserts.AssertAPNSMessage(struct["APNSMessage"]) end
	if struct["DefaultPushNotificationMessage"] then asserts.AssertDefaultPushNotificationMessage(struct["DefaultPushNotificationMessage"]) end
	if struct["DefaultMessage"] then asserts.AssertDefaultMessage(struct["DefaultMessage"]) end
	if struct["SMSMessage"] then asserts.AssertSMSMessage(struct["SMSMessage"]) end
	if struct["GCMMessage"] then asserts.AssertGCMMessage(struct["GCMMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DirectMessageConfiguration[k], "DirectMessageConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DirectMessageConfiguration
-- The message configuration.
-- @param _APNSMessage [APNSMessage] The message to APNS channels. Overrides the default push notification message.
-- @param _DefaultPushNotificationMessage [DefaultPushNotificationMessage] The default push notification message for all push channels.
-- @param _DefaultMessage [DefaultMessage] The default message for all channels.
-- @param _SMSMessage [SMSMessage] The message to SMS channels. Overrides the default message.
-- @param _GCMMessage [GCMMessage] The message to GCM channels. Overrides the default push notification message.
function M.DirectMessageConfiguration(_APNSMessage, _DefaultPushNotificationMessage, _DefaultMessage, _SMSMessage, _GCMMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DirectMessageConfiguration")
	local t = { 
		["APNSMessage"] = _APNSMessage,
		["DefaultPushNotificationMessage"] = _DefaultPushNotificationMessage,
		["DefaultMessage"] = _DefaultMessage,
		["SMSMessage"] = _SMSMessage,
		["GCMMessage"] = _GCMMessage,
	}
	asserts.AssertDirectMessageConfiguration(t)
	return t
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
-- @param _Message [__string] The error message returned from the API.
-- @param _RequestID [__string] The unique message body ID.
function M.MethodNotAllowedException(_Message, _RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MethodNotAllowedException")
	local t = { 
		["Message"] = _Message,
		["RequestID"] = _RequestID,
	}
	asserts.AssertMethodNotAllowedException(t)
	return t
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
-- DeleteEventStream Request
-- @param _ApplicationId [__string] ApplicationId
-- Required parameter: ApplicationId
function M.DeleteEventStreamRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventStreamRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertDeleteEventStreamRequest(t)
	return t
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
-- @param _Token [__string] 
-- @param _ApplicationId [__string] 
-- @param _SegmentId [__string] 
-- @param _PageSize [__string] 
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
function M.GetSegmentImportJobsRequest(_Token, _ApplicationId, _SegmentId, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentImportJobsRequest")
	local t = { 
		["Token"] = _Token,
		["ApplicationId"] = _ApplicationId,
		["SegmentId"] = _SegmentId,
		["PageSize"] = _PageSize,
	}
	asserts.AssertGetSegmentImportJobsRequest(t)
	return t
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
-- @param _SMSChannelResponse [SMSChannelResponse] 
-- Required parameter: SMSChannelResponse
function M.GetSmsChannelResponse(_SMSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSmsChannelResponse")
	local t = { 
		["SMSChannelResponse"] = _SMSChannelResponse,
	}
	asserts.AssertGetSmsChannelResponse(t)
	return t
end

keys.CampaignLimits = { ["Total"] = true, ["Daily"] = true, nil }

function asserts.AssertCampaignLimits(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignLimits to be of type 'table'")
	if struct["Total"] then asserts.Assert__integer(struct["Total"]) end
	if struct["Daily"] then asserts.Assert__integer(struct["Daily"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignLimits[k], "CampaignLimits contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignLimits
-- Campaign Limits are used to limit the number of messages that can be sent to a user.
-- @param _Total [__integer] The maximum total number of messages that the campaign can send.
-- @param _Daily [__integer] The maximum number of messages that the campaign can send daily.
function M.CampaignLimits(_Total, _Daily, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignLimits")
	local t = { 
		["Total"] = _Total,
		["Daily"] = _Daily,
	}
	asserts.AssertCampaignLimits(t)
	return t
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
-- @param _SegmentResponse [SegmentResponse] 
-- Required parameter: SegmentResponse
function M.GetSegmentVersionResponse(_SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentVersionResponse")
	local t = { 
		["SegmentResponse"] = _SegmentResponse,
	}
	asserts.AssertGetSegmentVersionResponse(t)
	return t
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
-- PutEventStream Response
-- @param _EventStream [EventStream] 
-- Required parameter: EventStream
function M.PutEventStreamResponse(_EventStream, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventStreamResponse")
	local t = { 
		["EventStream"] = _EventStream,
	}
	asserts.AssertPutEventStreamResponse(t)
	return t
end

keys.APNSChannelResponse = { ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, nil }

function asserts.AssertAPNSChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSChannelResponse to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSChannelResponse[k], "APNSChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSChannelResponse
-- Apple Distribution Push Notification Service channel definition.
-- @param _LastModifiedDate [__string] Last date this was updated
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
-- @param _LastModifiedBy [__string] Who last updated this entry
-- @param _Platform [__string] The platform type. Will be APNS.
-- @param _Version [__integer] Version of channel
-- @param _IsArchived [__boolean] Is this channel archived
-- @param _CreationDate [__string] When was this segment created
-- @param _ApplicationId [__string] The ID of the application to which the channel applies.
-- @param _Id [__string] Channel ID. Not used, only for backwards compatibility.
function M.APNSChannelResponse(_LastModifiedDate, _Enabled, _LastModifiedBy, _Platform, _Version, _IsArchived, _CreationDate, _ApplicationId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSChannelResponse")
	local t = { 
		["LastModifiedDate"] = _LastModifiedDate,
		["Enabled"] = _Enabled,
		["LastModifiedBy"] = _LastModifiedBy,
		["Platform"] = _Platform,
		["Version"] = _Version,
		["IsArchived"] = _IsArchived,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
	}
	asserts.AssertAPNSChannelResponse(t)
	return t
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
-- @param _Token [__string] 
-- @param _ApplicationId [__string] 
-- @param _PageSize [__string] 
-- Required parameter: ApplicationId
function M.GetCampaignsRequest(_Token, _ApplicationId, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignsRequest")
	local t = { 
		["Token"] = _Token,
		["ApplicationId"] = _ApplicationId,
		["PageSize"] = _PageSize,
	}
	asserts.AssertGetCampaignsRequest(t)
	return t
end

keys.APNSSandboxChannelRequest = { ["PrivateKey"] = true, ["Enabled"] = true, ["Certificate"] = true, nil }

function asserts.AssertAPNSSandboxChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSSandboxChannelRequest to be of type 'table'")
	if struct["PrivateKey"] then asserts.Assert__string(struct["PrivateKey"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["Certificate"] then asserts.Assert__string(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSSandboxChannelRequest[k], "APNSSandboxChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSSandboxChannelRequest
-- Apple Development Push Notification Service channel definition.
-- @param _PrivateKey [__string] The certificate private key.
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
-- @param _Certificate [__string] The distribution certificate from Apple.
function M.APNSSandboxChannelRequest(_PrivateKey, _Enabled, _Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSSandboxChannelRequest")
	local t = { 
		["PrivateKey"] = _PrivateKey,
		["Enabled"] = _Enabled,
		["Certificate"] = _Certificate,
	}
	asserts.AssertAPNSSandboxChannelRequest(t)
	return t
end

keys.SegmentDimensions = { ["Attributes"] = true, ["Demographic"] = true, ["Location"] = true, ["Behavior"] = true, ["UserAttributes"] = true, nil }

function asserts.AssertSegmentDimensions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentDimensions to be of type 'table'")
	if struct["Attributes"] then asserts.AssertMapOfAttributeDimension(struct["Attributes"]) end
	if struct["Demographic"] then asserts.AssertSegmentDemographics(struct["Demographic"]) end
	if struct["Location"] then asserts.AssertSegmentLocation(struct["Location"]) end
	if struct["Behavior"] then asserts.AssertSegmentBehaviors(struct["Behavior"]) end
	if struct["UserAttributes"] then asserts.AssertMapOfAttributeDimension(struct["UserAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentDimensions[k], "SegmentDimensions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentDimensions
-- Segment dimensions
-- @param _Attributes [MapOfAttributeDimension] Custom segment attributes.
-- @param _Demographic [SegmentDemographics] The segment demographics attributes.
-- @param _Location [SegmentLocation] The segment location attributes.
-- @param _Behavior [SegmentBehaviors] The segment behaviors attributes.
-- @param _UserAttributes [MapOfAttributeDimension] Custom segment user attributes.
function M.SegmentDimensions(_Attributes, _Demographic, _Location, _Behavior, _UserAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentDimensions")
	local t = { 
		["Attributes"] = _Attributes,
		["Demographic"] = _Demographic,
		["Location"] = _Location,
		["Behavior"] = _Behavior,
		["UserAttributes"] = _UserAttributes,
	}
	asserts.AssertSegmentDimensions(t)
	return t
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
-- @param _Item [ListOfImportJobResponse] A list of import jobs for the application.
-- @param _NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
function M.ImportJobsResponse(_Item, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportJobsResponse")
	local t = { 
		["Item"] = _Item,
		["NextToken"] = _NextToken,
	}
	asserts.AssertImportJobsResponse(t)
	return t
end

keys.GCMChannelResponse = { ["Credential"] = true, ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, nil }

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
	for k,_ in pairs(struct) do
		assert(keys.GCMChannelResponse[k], "GCMChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GCMChannelResponse
-- Google Cloud Messaging channel definition
-- @param _Credential [__string] The GCM API key from Google.
-- @param _LastModifiedDate [__string] Last date this was updated
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
-- @param _LastModifiedBy [__string] Who last updated this entry
-- @param _Platform [__string] The platform type. Will be GCM
-- @param _Version [__integer] Version of channel
-- @param _IsArchived [__boolean] Is this channel archived
-- @param _CreationDate [__string] When was this segment created
-- @param _ApplicationId [__string] The ID of the application to which the channel applies.
-- @param _Id [__string] Channel ID. Not used, only for backwards compatibility.
function M.GCMChannelResponse(_Credential, _LastModifiedDate, _Enabled, _LastModifiedBy, _Platform, _Version, _IsArchived, _CreationDate, _ApplicationId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GCMChannelResponse")
	local t = { 
		["Credential"] = _Credential,
		["LastModifiedDate"] = _LastModifiedDate,
		["Enabled"] = _Enabled,
		["LastModifiedBy"] = _LastModifiedBy,
		["Platform"] = _Platform,
		["Version"] = _Version,
		["IsArchived"] = _IsArchived,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
	}
	asserts.AssertGCMChannelResponse(t)
	return t
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
-- @param _Body [__string] The SMS text body.
-- @param _SenderId [__string] Sender ID of sent message.
-- @param _MessageType [MessageType] Is this is a transactional SMS message, otherwise a promotional message.
function M.CampaignSmsMessage(_Body, _SenderId, _MessageType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignSmsMessage")
	local t = { 
		["Body"] = _Body,
		["SenderId"] = _SenderId,
		["MessageType"] = _MessageType,
	}
	asserts.AssertCampaignSmsMessage(t)
	return t
end

keys.WriteEventStream = { ["DestinationStreamArn"] = true, ["RoleArn"] = true, ["ExternalId"] = true, nil }

function asserts.AssertWriteEventStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WriteEventStream to be of type 'table'")
	if struct["DestinationStreamArn"] then asserts.Assert__string(struct["DestinationStreamArn"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["ExternalId"] then asserts.Assert__string(struct["ExternalId"]) end
	for k,_ in pairs(struct) do
		assert(keys.WriteEventStream[k], "WriteEventStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WriteEventStream
-- Request to save an EventStream.
-- @param _DestinationStreamArn [__string] The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events. Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
-- @param _RoleArn [__string] The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
-- @param _ExternalId [__string] The external ID assigned the IAM role that authorizes Amazon Pinpoint to publish to the stream.
function M.WriteEventStream(_DestinationStreamArn, _RoleArn, _ExternalId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WriteEventStream")
	local t = { 
		["DestinationStreamArn"] = _DestinationStreamArn,
		["RoleArn"] = _RoleArn,
		["ExternalId"] = _ExternalId,
	}
	asserts.AssertWriteEventStream(t)
	return t
end

keys.SegmentLocation = { ["Country"] = true, nil }

function asserts.AssertSegmentLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentLocation to be of type 'table'")
	if struct["Country"] then asserts.AssertSetDimension(struct["Country"]) end
	for k,_ in pairs(struct) do
		assert(keys.SegmentLocation[k], "SegmentLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SegmentLocation
-- Segment location dimensions
-- @param _Country [SetDimension] The country filter according to ISO 3166-1 Alpha-2 codes.
function M.SegmentLocation(_Country, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentLocation")
	local t = { 
		["Country"] = _Country,
	}
	asserts.AssertSegmentLocation(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.DeleteEmailChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEmailChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertDeleteEmailChannelRequest(t)
	return t
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
-- @param _Token [__string] 
-- @param _ApplicationId [__string] 
-- @param _PageSize [__string] 
-- @param _CampaignId [__string] 
-- Required parameter: ApplicationId
-- Required parameter: CampaignId
function M.GetCampaignActivitiesRequest(_Token, _ApplicationId, _PageSize, _CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignActivitiesRequest")
	local t = { 
		["Token"] = _Token,
		["ApplicationId"] = _ApplicationId,
		["PageSize"] = _PageSize,
		["CampaignId"] = _CampaignId,
	}
	asserts.AssertGetCampaignActivitiesRequest(t)
	return t
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
--  
-- @param _DefineSegment [__boolean] Sets whether the endpoints create a segment when they are imported.
-- @param _SegmentId [__string] The ID of the segment to update if the import job is meant to update an existing segment.
-- @param _Format [Format] The format of the files that contain the endpoint definitions.Valid values: CSV, JSON
-- @param _RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
-- @param _S3Url [__string] A URL that points to the location within an Amazon S3 bucket that contains the endpoints to import. The location can be a folder or a single file.The URL should follow this format: s3://bucket-name/folder-name/file-nameAmazon Pinpoint will import endpoints from this location and any subfolders it contains.
-- @param _RegisterEndpoints [__boolean] Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
-- @param _ExternalId [__string] A unique, custom ID assigned to the IAM role that restricts who can assume the role.	
-- @param _SegmentName [__string] A custom name for the segment created by the import job. Use if DefineSegment is true.
function M.ImportJobResource(_DefineSegment, _SegmentId, _Format, _RoleArn, _S3Url, _RegisterEndpoints, _ExternalId, _SegmentName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportJobResource")
	local t = { 
		["DefineSegment"] = _DefineSegment,
		["SegmentId"] = _SegmentId,
		["Format"] = _Format,
		["RoleArn"] = _RoleArn,
		["S3Url"] = _S3Url,
		["RegisterEndpoints"] = _RegisterEndpoints,
		["ExternalId"] = _ExternalId,
		["SegmentName"] = _SegmentName,
	}
	asserts.AssertImportJobResource(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _WriteCampaignRequest [WriteCampaignRequest] 
-- @param _CampaignId [__string] 
-- Required parameter: CampaignId
-- Required parameter: ApplicationId
-- Required parameter: WriteCampaignRequest
function M.UpdateCampaignRequest(_ApplicationId, _WriteCampaignRequest, _CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCampaignRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["WriteCampaignRequest"] = _WriteCampaignRequest,
		["CampaignId"] = _CampaignId,
	}
	asserts.AssertUpdateCampaignRequest(t)
	return t
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
-- @param _DestinationStreamArn [__string] The Amazon Resource Name (ARN) of the Amazon Kinesis stream or Firehose delivery stream to which you want to publish events. Firehose ARN: arn:aws:firehose:REGION:ACCOUNT_ID:deliverystream/STREAM_NAME Kinesis ARN: arn:aws:kinesis:REGION:ACCOUNT_ID:stream/STREAM_NAME
-- @param _RoleArn [__string] The IAM role that authorizes Amazon Pinpoint to publish events to the stream in your account.
-- @param _LastUpdatedBy [__string] The IAM user who last modified the event stream.
-- @param _ExternalId [__string] The external ID assigned the IAM role that authorizes Amazon Pinpoint to publish to the stream.
-- @param _LastModifiedDate [__string] The date the event stream was last updated in ISO 8601 format.
-- @param _ApplicationId [__string] The ID of the application from which events should be published.
function M.EventStream(_DestinationStreamArn, _RoleArn, _LastUpdatedBy, _ExternalId, _LastModifiedDate, _ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventStream")
	local t = { 
		["DestinationStreamArn"] = _DestinationStreamArn,
		["RoleArn"] = _RoleArn,
		["LastUpdatedBy"] = _LastUpdatedBy,
		["ExternalId"] = _ExternalId,
		["LastModifiedDate"] = _LastModifiedDate,
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertEventStream(t)
	return t
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
-- @param _APNSSandboxChannelResponse [APNSSandboxChannelResponse] 
-- Required parameter: APNSSandboxChannelResponse
function M.UpdateApnsSandboxChannelResponse(_APNSSandboxChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApnsSandboxChannelResponse")
	local t = { 
		["APNSSandboxChannelResponse"] = _APNSSandboxChannelResponse,
	}
	asserts.AssertUpdateApnsSandboxChannelResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _SegmentId [__string] 
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
function M.GetSegmentRequest(_ApplicationId, _SegmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["SegmentId"] = _SegmentId,
	}
	asserts.AssertGetSegmentRequest(t)
	return t
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
-- @param _ActivitiesResponse [ActivitiesResponse] 
-- Required parameter: ActivitiesResponse
function M.GetCampaignActivitiesResponse(_ActivitiesResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignActivitiesResponse")
	local t = { 
		["ActivitiesResponse"] = _ActivitiesResponse,
	}
	asserts.AssertGetCampaignActivitiesResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.GetApnsSandboxChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApnsSandboxChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertGetApnsSandboxChannelRequest(t)
	return t
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
-- @param _EndpointResponse [EndpointResponse] 
-- Required parameter: EndpointResponse
function M.GetEndpointResponse(_EndpointResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEndpointResponse")
	local t = { 
		["EndpointResponse"] = _EndpointResponse,
	}
	asserts.AssertGetEndpointResponse(t)
	return t
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
-- @param _SegmentsResponse [SegmentsResponse] 
-- Required parameter: SegmentsResponse
function M.GetSegmentsResponse(_SegmentsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentsResponse")
	local t = { 
		["SegmentsResponse"] = _SegmentsResponse,
	}
	asserts.AssertGetSegmentsResponse(t)
	return t
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
-- @param _ApiKey [__string] Platform credential API key from Google.
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
function M.GCMChannelRequest(_ApiKey, _Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GCMChannelRequest")
	local t = { 
		["ApiKey"] = _ApiKey,
		["Enabled"] = _Enabled,
	}
	asserts.AssertGCMChannelRequest(t)
	return t
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
-- @param _Message [__string] The error message returned from the API.
-- @param _RequestID [__string] The unique message body ID.
function M.NotFoundException(_Message, _RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["Message"] = _Message,
		["RequestID"] = _RequestID,
	}
	asserts.AssertNotFoundException(t)
	return t
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
-- @param _APNSChannelResponse [APNSChannelResponse] 
-- Required parameter: APNSChannelResponse
function M.UpdateApnsChannelResponse(_APNSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApnsChannelResponse")
	local t = { 
		["APNSChannelResponse"] = _APNSChannelResponse,
	}
	asserts.AssertUpdateApnsChannelResponse(t)
	return t
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
-- @param _EmailChannelResponse [EmailChannelResponse] 
-- Required parameter: EmailChannelResponse
function M.UpdateEmailChannelResponse(_EmailChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEmailChannelResponse")
	local t = { 
		["EmailChannelResponse"] = _EmailChannelResponse,
	}
	asserts.AssertUpdateEmailChannelResponse(t)
	return t
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
--  
-- @param _CompletionDate [__string] The date the import job completed in ISO 8601 format.
-- @param _Definition [ImportJobResource] The import job settings.
-- @param _Type [__string] The job type. Will be Import.
-- @param _TotalFailures [__integer] The number of endpoints that failed to import; for example, because of syntax errors.
-- @param _TotalPieces [__integer] The total number of pieces that must be imported to finish the job. Each piece is an approximately equal portion of the endpoints to import.
-- @param _FailedPieces [__integer] The number of pieces that have failed to import as of the time of the request.
-- @param _CompletedPieces [__integer] The number of pieces that have successfully imported as of the time of the request.
-- @param _JobStatus [JobStatus] The status of the import job.Valid values: CREATED, INITIALIZING, PROCESSING, COMPLETING, COMPLETED, FAILING, FAILEDThe job status is FAILED if one or more pieces failed to import.
-- @param _Failures [ListOf__string] Provides up to 100 of the first failed entries for the job, if any exist.
-- @param _CreationDate [__string] The date the import job was created in ISO 8601 format.
-- @param _ApplicationId [__string] The unique ID of the application to which the import job applies.
-- @param _Id [__string] The unique ID of the import job.
-- @param _TotalProcessed [__integer] The number of endpoints that were processed by the import job.
function M.ImportJobResponse(_CompletionDate, _Definition, _Type, _TotalFailures, _TotalPieces, _FailedPieces, _CompletedPieces, _JobStatus, _Failures, _CreationDate, _ApplicationId, _Id, _TotalProcessed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportJobResponse")
	local t = { 
		["CompletionDate"] = _CompletionDate,
		["Definition"] = _Definition,
		["Type"] = _Type,
		["TotalFailures"] = _TotalFailures,
		["TotalPieces"] = _TotalPieces,
		["FailedPieces"] = _FailedPieces,
		["CompletedPieces"] = _CompletedPieces,
		["JobStatus"] = _JobStatus,
		["Failures"] = _Failures,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
		["TotalProcessed"] = _TotalProcessed,
	}
	asserts.AssertImportJobResponse(t)
	return t
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
-- @param _MessageResponse [MessageResponse] 
-- Required parameter: MessageResponse
function M.SendMessagesResponse(_MessageResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessagesResponse")
	local t = { 
		["MessageResponse"] = _MessageResponse,
	}
	asserts.AssertSendMessagesResponse(t)
	return t
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
-- @param _ImportJobsResponse [ImportJobsResponse] 
-- Required parameter: ImportJobsResponse
function M.GetSegmentImportJobsResponse(_ImportJobsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentImportJobsResponse")
	local t = { 
		["ImportJobsResponse"] = _ImportJobsResponse,
	}
	asserts.AssertGetSegmentImportJobsResponse(t)
	return t
end

keys.MessageRequest = { ["MessageConfiguration"] = true, ["Addresses"] = true, ["Context"] = true, nil }

function asserts.AssertMessageRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageRequest to be of type 'table'")
	if struct["MessageConfiguration"] then asserts.AssertDirectMessageConfiguration(struct["MessageConfiguration"]) end
	if struct["Addresses"] then asserts.AssertMapOfAddressConfiguration(struct["Addresses"]) end
	if struct["Context"] then asserts.AssertMapOf__string(struct["Context"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageRequest[k], "MessageRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageRequest
-- Send message request.
-- @param _MessageConfiguration [DirectMessageConfiguration] Message configuration.
-- @param _Addresses [MapOfAddressConfiguration] A map of destination addresses, with the address as the key(Email address, phone number or push token) and the Address Configuration as the value.
-- @param _Context [MapOf__string] A map of custom attributes to attributes to be attached to the message. This payload is added to the push notification's 'data.pinpoint' object or added to the email/sms delivery receipt event attributes.
function M.MessageRequest(_MessageConfiguration, _Addresses, _Context, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageRequest")
	local t = { 
		["MessageConfiguration"] = _MessageConfiguration,
		["Addresses"] = _Addresses,
		["Context"] = _Context,
	}
	asserts.AssertMessageRequest(t)
	return t
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
-- @param _APNSChannelResponse [APNSChannelResponse] 
-- Required parameter: APNSChannelResponse
function M.GetApnsChannelResponse(_APNSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApnsChannelResponse")
	local t = { 
		["APNSChannelResponse"] = _APNSChannelResponse,
	}
	asserts.AssertGetApnsChannelResponse(t)
	return t
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
-- @param _WriteSegmentRequest [WriteSegmentRequest] 
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
-- Required parameter: WriteSegmentRequest
function M.CreateSegmentRequest(_WriteSegmentRequest, _ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSegmentRequest")
	local t = { 
		["WriteSegmentRequest"] = _WriteSegmentRequest,
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertCreateSegmentRequest(t)
	return t
end

keys.SMSChannelResponse = { ["ShortCode"] = true, ["LastModifiedDate"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["SenderId"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, nil }

function asserts.AssertSMSChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSChannelResponse to be of type 'table'")
	if struct["ShortCode"] then asserts.Assert__string(struct["ShortCode"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["SenderId"] then asserts.Assert__string(struct["SenderId"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.SMSChannelResponse[k], "SMSChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSChannelResponse
-- SMS Channel Response.
-- @param _ShortCode [__string] The short code registered with the phone provider.
-- @param _LastModifiedDate [__string] Last date this was updated
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
-- @param _LastModifiedBy [__string] Who last updated this entry
-- @param _Platform [__string] Platform type. Will be "SMS"
-- @param _Version [__integer] Version of channel
-- @param _SenderId [__string] Sender identifier of your messages.
-- @param _IsArchived [__boolean] Is this channel archived
-- @param _CreationDate [__string] The date that the settings were last updated in ISO 8601 format.
-- @param _ApplicationId [__string] Application id
-- @param _Id [__string] Channel ID. Not used, only for backwards compatibility.
function M.SMSChannelResponse(_ShortCode, _LastModifiedDate, _Enabled, _LastModifiedBy, _Platform, _Version, _SenderId, _IsArchived, _CreationDate, _ApplicationId, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SMSChannelResponse")
	local t = { 
		["ShortCode"] = _ShortCode,
		["LastModifiedDate"] = _LastModifiedDate,
		["Enabled"] = _Enabled,
		["LastModifiedBy"] = _LastModifiedBy,
		["Platform"] = _Platform,
		["Version"] = _Version,
		["SenderId"] = _SenderId,
		["IsArchived"] = _IsArchived,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
	}
	asserts.AssertSMSChannelResponse(t)
	return t
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
-- @param _Message [__string] The error message returned from the API.
-- @param _RequestID [__string] The unique message body ID.
function M.TooManyRequestsException(_Message, _RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["Message"] = _Message,
		["RequestID"] = _RequestID,
	}
	asserts.AssertTooManyRequestsException(t)
	return t
end

keys.CampaignResponse = { ["Description"] = true, ["Limits"] = true, ["Schedule"] = true, ["TreatmentName"] = true, ["LastModifiedDate"] = true, ["HoldoutPercent"] = true, ["SegmentVersion"] = true, ["SegmentId"] = true, ["State"] = true, ["Version"] = true, ["AdditionalTreatments"] = true, ["DefaultState"] = true, ["MessageConfiguration"] = true, ["IsPaused"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["TreatmentDescription"] = true, ["Name"] = true, nil }

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
-- @param _Description [__string] A description of the campaign.
-- @param _Limits [CampaignLimits] The campaign limits settings.
-- @param _Schedule [Schedule] The campaign schedule.
-- @param _TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- @param _LastModifiedDate [__string] The date the campaign was last updated in ISO 8601 format.	
-- @param _HoldoutPercent [__integer] The allocated percentage of end users who will not receive messages from this campaign.
-- @param _SegmentVersion [__integer] The version of the segment to which the campaign sends messages.
-- @param _SegmentId [__string] The ID of the segment to which the campaign sends messages.
-- @param _State [CampaignState] The campaign status.An A/B test campaign will have a status of COMPLETED only when all treatments have a status of COMPLETED.
-- @param _Version [__integer] The campaign version number.
-- @param _AdditionalTreatments [ListOfTreatmentResource] Treatments that are defined in addition to the default treatment.
-- @param _DefaultState [CampaignState] The status of the campaign's default treatment. Only present for A/B test campaigns.
-- @param _MessageConfiguration [MessageConfiguration] The message configuration settings.
-- @param _IsPaused [__boolean] Indicates whether the campaign is paused. A paused campaign does not send messages unless you resume it by setting IsPaused to false.
-- @param _CreationDate [__string] The date the campaign was created in ISO 8601 format.
-- @param _ApplicationId [__string] The ID of the application to which the campaign applies.
-- @param _Id [__string] The unique campaign ID.
-- @param _TreatmentDescription [__string] A custom description for the treatment.
-- @param _Name [__string] The custom name of the campaign.
function M.CampaignResponse(_Description, _Limits, _Schedule, _TreatmentName, _LastModifiedDate, _HoldoutPercent, _SegmentVersion, _SegmentId, _State, _Version, _AdditionalTreatments, _DefaultState, _MessageConfiguration, _IsPaused, _CreationDate, _ApplicationId, _Id, _TreatmentDescription, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignResponse")
	local t = { 
		["Description"] = _Description,
		["Limits"] = _Limits,
		["Schedule"] = _Schedule,
		["TreatmentName"] = _TreatmentName,
		["LastModifiedDate"] = _LastModifiedDate,
		["HoldoutPercent"] = _HoldoutPercent,
		["SegmentVersion"] = _SegmentVersion,
		["SegmentId"] = _SegmentId,
		["State"] = _State,
		["Version"] = _Version,
		["AdditionalTreatments"] = _AdditionalTreatments,
		["DefaultState"] = _DefaultState,
		["MessageConfiguration"] = _MessageConfiguration,
		["IsPaused"] = _IsPaused,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
		["TreatmentDescription"] = _TreatmentDescription,
		["Name"] = _Name,
	}
	asserts.AssertCampaignResponse(t)
	return t
end

keys.CampaignEmailMessage = { ["Body"] = true, ["Title"] = true, ["HtmlBody"] = true, nil }

function asserts.AssertCampaignEmailMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CampaignEmailMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["HtmlBody"] then asserts.Assert__string(struct["HtmlBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.CampaignEmailMessage[k], "CampaignEmailMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CampaignEmailMessage
-- The email message configuration.
-- @param _Body [__string] The email text body.
-- @param _Title [__string] The email title (Or subject).
-- @param _HtmlBody [__string] The email html body.
function M.CampaignEmailMessage(_Body, _Title, _HtmlBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignEmailMessage")
	local t = { 
		["Body"] = _Body,
		["Title"] = _Title,
		["HtmlBody"] = _HtmlBody,
	}
	asserts.AssertCampaignEmailMessage(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _APNSSandboxChannelRequest [APNSSandboxChannelRequest] 
-- Required parameter: ApplicationId
-- Required parameter: APNSSandboxChannelRequest
function M.UpdateApnsSandboxChannelRequest(_ApplicationId, _APNSSandboxChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApnsSandboxChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["APNSSandboxChannelRequest"] = _APNSSandboxChannelRequest,
	}
	asserts.AssertUpdateApnsSandboxChannelRequest(t)
	return t
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
-- @param _MessageBody [MessageBody] 
-- Required parameter: MessageBody
function M.UpdateEndpointResponse(_MessageBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEndpointResponse")
	local t = { 
		["MessageBody"] = _MessageBody,
	}
	asserts.AssertUpdateEndpointResponse(t)
	return t
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
-- @param _Item [ListOfCampaignResponse] A list of campaigns.
-- @param _NextToken [__string] The string that you use in a subsequent request to get the next page of results in a paginated response.
function M.CampaignsResponse(_Item, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CampaignsResponse")
	local t = { 
		["Item"] = _Item,
		["NextToken"] = _NextToken,
	}
	asserts.AssertCampaignsResponse(t)
	return t
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
-- Default Message across push notification, email, and sms.
-- @param _Body [__string] The message body of the notification, the email body or the text message.
-- @param _Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
function M.DefaultMessage(_Body, _Substitutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultMessage")
	local t = { 
		["Body"] = _Body,
		["Substitutions"] = _Substitutions,
	}
	asserts.AssertDefaultMessage(t)
	return t
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
-- @param _EmailChannelResponse [EmailChannelResponse] 
-- Required parameter: EmailChannelResponse
function M.GetEmailChannelResponse(_EmailChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEmailChannelResponse")
	local t = { 
		["EmailChannelResponse"] = _EmailChannelResponse,
	}
	asserts.AssertGetEmailChannelResponse(t)
	return t
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
-- @param _GCMChannelResponse [GCMChannelResponse] 
-- Required parameter: GCMChannelResponse
function M.DeleteGcmChannelResponse(_GCMChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGcmChannelResponse")
	local t = { 
		["GCMChannelResponse"] = _GCMChannelResponse,
	}
	asserts.AssertDeleteGcmChannelResponse(t)
	return t
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
-- @param _EmailChannelResponse [EmailChannelResponse] 
-- Required parameter: EmailChannelResponse
function M.DeleteEmailChannelResponse(_EmailChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEmailChannelResponse")
	local t = { 
		["EmailChannelResponse"] = _EmailChannelResponse,
	}
	asserts.AssertDeleteEmailChannelResponse(t)
	return t
end

keys.Message = { ["Body"] = true, ["MediaUrl"] = true, ["Url"] = true, ["ImageUrl"] = true, ["ImageSmallIconUrl"] = true, ["Title"] = true, ["Action"] = true, ["SilentPush"] = true, ["JsonBody"] = true, ["ImageIconUrl"] = true, nil }

function asserts.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["MediaUrl"] then asserts.Assert__string(struct["MediaUrl"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ImageUrl"] then asserts.Assert__string(struct["ImageUrl"]) end
	if struct["ImageSmallIconUrl"] then asserts.Assert__string(struct["ImageSmallIconUrl"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["SilentPush"] then asserts.Assert__boolean(struct["SilentPush"]) end
	if struct["JsonBody"] then asserts.Assert__string(struct["JsonBody"]) end
	if struct["ImageIconUrl"] then asserts.Assert__string(struct["ImageIconUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.Message[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
--  
-- @param _Body [__string] The message body. Can include up to 140 characters.
-- @param _MediaUrl [__string] The URL that points to the media resource, for example a .mp4 or .gif file.
-- @param _Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- @param _ImageUrl [__string] The URL that points to an image used in the push notification.
-- @param _ImageSmallIconUrl [__string] The URL that points to the small icon image for the push notification icon, for example, the app icon.
-- @param _Title [__string] The message title that displays above the message on the user's device.
-- @param _Action [Action] The action that occurs if the user taps a push notification delivered by the campaign:OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action.DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app.URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify.
-- @param _SilentPush [__boolean] Indicates if the message should display on the users device.Silent pushes can be used for Remote Configuration and Phone Home use cases. 
-- @param _JsonBody [__string] The JSON payload used for a silent push.
-- @param _ImageIconUrl [__string] The URL that points to the icon image for the push notification icon, for example, the app icon.
function M.Message(_Body, _MediaUrl, _Url, _ImageUrl, _ImageSmallIconUrl, _Title, _Action, _SilentPush, _JsonBody, _ImageIconUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Message")
	local t = { 
		["Body"] = _Body,
		["MediaUrl"] = _MediaUrl,
		["Url"] = _Url,
		["ImageUrl"] = _ImageUrl,
		["ImageSmallIconUrl"] = _ImageSmallIconUrl,
		["Title"] = _Title,
		["Action"] = _Action,
		["SilentPush"] = _SilentPush,
		["JsonBody"] = _JsonBody,
		["ImageIconUrl"] = _ImageIconUrl,
	}
	asserts.AssertMessage(t)
	return t
end

keys.MessageResponse = { ["ApplicationId"] = true, ["RequestId"] = true, ["Result"] = true, nil }

function asserts.AssertMessageResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageResponse to be of type 'table'")
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["Result"] then asserts.AssertMapOfMessageResult(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageResponse[k], "MessageResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageResponse
-- Send message response.
-- @param _ApplicationId [__string] Application id of the message.
-- @param _RequestId [__string] Original request Id for which this message was delivered.
-- @param _Result [MapOfMessageResult] A map containing a multi part response for each address, with the address as the key(Email address, phone number or push token) and the result as the value.
function M.MessageResponse(_ApplicationId, _RequestId, _Result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageResponse")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["RequestId"] = _RequestId,
		["Result"] = _Result,
	}
	asserts.AssertMessageResponse(t)
	return t
end

keys.APNSChannelRequest = { ["PrivateKey"] = true, ["Enabled"] = true, ["Certificate"] = true, nil }

function asserts.AssertAPNSChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSChannelRequest to be of type 'table'")
	if struct["PrivateKey"] then asserts.Assert__string(struct["PrivateKey"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["Certificate"] then asserts.Assert__string(struct["Certificate"]) end
	for k,_ in pairs(struct) do
		assert(keys.APNSChannelRequest[k], "APNSChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type APNSChannelRequest
-- Apple Push Notification Service channel definition.
-- @param _PrivateKey [__string] The certificate private key.
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
-- @param _Certificate [__string] The distribution certificate from Apple.
function M.APNSChannelRequest(_PrivateKey, _Enabled, _Certificate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSChannelRequest")
	local t = { 
		["PrivateKey"] = _PrivateKey,
		["Enabled"] = _Enabled,
		["Certificate"] = _Certificate,
	}
	asserts.AssertAPNSChannelRequest(t)
	return t
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
-- Endpoint demographic data
-- @param _Locale [__string] The endpoint locale in the following format: The ISO 639-1 alpha-2 code, followed by an underscore, followed by an ISO 3166-1 alpha-2 value.
-- @param _ModelVersion [__string] The endpoint model version.
-- @param _Make [__string] The endpoint make, such as such as Apple or Samsung.
-- @param _AppVersion [__string] The version of the application associated with the endpoint.
-- @param _Platform [__string] The endpoint platform, such as ios or android.
-- @param _PlatformVersion [__string] The endpoint platform version.
-- @param _Timezone [__string] The timezone of the endpoint. Specified as a tz database value, such as Americas/Los_Angeles.
-- @param _Model [__string] The endpoint model, such as iPhone.
function M.EndpointDemographic(_Locale, _ModelVersion, _Make, _AppVersion, _Platform, _PlatformVersion, _Timezone, _Model, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointDemographic")
	local t = { 
		["Locale"] = _Locale,
		["ModelVersion"] = _ModelVersion,
		["Make"] = _Make,
		["AppVersion"] = _AppVersion,
		["Platform"] = _Platform,
		["PlatformVersion"] = _PlatformVersion,
		["Timezone"] = _Timezone,
		["Model"] = _Model,
	}
	asserts.AssertEndpointDemographic(t)
	return t
end

keys.MessageResult = { ["DeliveryStatus"] = true, ["UpdatedToken"] = true, ["StatusMessage"] = true, ["StatusCode"] = true, nil }

function asserts.AssertMessageResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageResult to be of type 'table'")
	if struct["DeliveryStatus"] then asserts.AssertDeliveryStatus(struct["DeliveryStatus"]) end
	if struct["UpdatedToken"] then asserts.Assert__string(struct["UpdatedToken"]) end
	if struct["StatusMessage"] then asserts.Assert__string(struct["StatusMessage"]) end
	if struct["StatusCode"] then asserts.Assert__integer(struct["StatusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageResult[k], "MessageResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageResult
-- The result from sending a message to an address.
-- @param _DeliveryStatus [DeliveryStatus] Delivery status of message.
-- @param _UpdatedToken [__string] If token was updated as part of delivery. (This is GCM Specific)
-- @param _StatusMessage [__string] Status message for message delivery.
-- @param _StatusCode [__integer] Downstream service status code.
function M.MessageResult(_DeliveryStatus, _UpdatedToken, _StatusMessage, _StatusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageResult")
	local t = { 
		["DeliveryStatus"] = _DeliveryStatus,
		["UpdatedToken"] = _UpdatedToken,
		["StatusMessage"] = _StatusMessage,
		["StatusCode"] = _StatusCode,
	}
	asserts.AssertMessageResult(t)
	return t
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
-- @param _Token [__string] 
-- @param _ApplicationId [__string] 
-- @param _PageSize [__string] 
-- @param _CampaignId [__string] 
-- Required parameter: ApplicationId
-- Required parameter: CampaignId
function M.GetCampaignVersionsRequest(_Token, _ApplicationId, _PageSize, _CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignVersionsRequest")
	local t = { 
		["Token"] = _Token,
		["ApplicationId"] = _ApplicationId,
		["PageSize"] = _PageSize,
		["CampaignId"] = _CampaignId,
	}
	asserts.AssertGetCampaignVersionsRequest(t)
	return t
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
-- @param _SegmentResponse [SegmentResponse] 
-- Required parameter: SegmentResponse
function M.DeleteSegmentResponse(_SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSegmentResponse")
	local t = { 
		["SegmentResponse"] = _SegmentResponse,
	}
	asserts.AssertDeleteSegmentResponse(t)
	return t
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
-- @param _SegmentsResponse [SegmentsResponse] 
-- Required parameter: SegmentsResponse
function M.GetSegmentVersionsResponse(_SegmentsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentVersionsResponse")
	local t = { 
		["SegmentsResponse"] = _SegmentsResponse,
	}
	asserts.AssertGetSegmentVersionsResponse(t)
	return t
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
-- @param _CampaignResponse [CampaignResponse] 
-- Required parameter: CampaignResponse
function M.DeleteCampaignResponse(_CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCampaignResponse")
	local t = { 
		["CampaignResponse"] = _CampaignResponse,
	}
	asserts.AssertDeleteCampaignResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _MessageRequest [MessageRequest] 
-- Required parameter: ApplicationId
-- Required parameter: MessageRequest
function M.SendMessagesRequest(_ApplicationId, _MessageRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendMessagesRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["MessageRequest"] = _MessageRequest,
	}
	asserts.AssertSendMessagesRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _CampaignId [__string] 
-- Required parameter: CampaignId
-- Required parameter: ApplicationId
function M.DeleteCampaignRequest(_ApplicationId, _CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteCampaignRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["CampaignId"] = _CampaignId,
	}
	asserts.AssertDeleteCampaignRequest(t)
	return t
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
-- @param _Start [__string] The default start time for quiet time in ISO 8601 format.
-- @param _End [__string] The default end time for quiet time in ISO 8601 format.
function M.QuietTime(_Start, _End, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QuietTime")
	local t = { 
		["Start"] = _Start,
		["End"] = _End,
	}
	asserts.AssertQuietTime(t)
	return t
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
-- @param _APNSSandboxChannelResponse [APNSSandboxChannelResponse] 
-- Required parameter: APNSSandboxChannelResponse
function M.DeleteApnsSandboxChannelResponse(_APNSSandboxChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApnsSandboxChannelResponse")
	local t = { 
		["APNSSandboxChannelResponse"] = _APNSSandboxChannelResponse,
	}
	asserts.AssertDeleteApnsSandboxChannelResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _CampaignId [__string] 
-- Required parameter: CampaignId
-- Required parameter: ApplicationId
function M.GetCampaignRequest(_ApplicationId, _CampaignId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["CampaignId"] = _CampaignId,
	}
	asserts.AssertGetCampaignRequest(t)
	return t
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
-- @param _CampaignsResponse [CampaignsResponse] 
-- Required parameter: CampaignsResponse
function M.GetCampaignsResponse(_CampaignsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignsResponse")
	local t = { 
		["CampaignsResponse"] = _CampaignsResponse,
	}
	asserts.AssertGetCampaignsResponse(t)
	return t
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
-- @param _CampaignResponse [CampaignResponse] 
-- Required parameter: CampaignResponse
function M.CreateCampaignResponse(_CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateCampaignResponse")
	local t = { 
		["CampaignResponse"] = _CampaignResponse,
	}
	asserts.AssertCreateCampaignResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _SegmentId [__string] 
-- Required parameter: SegmentId
-- Required parameter: ApplicationId
function M.DeleteSegmentRequest(_ApplicationId, _SegmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSegmentRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["SegmentId"] = _SegmentId,
	}
	asserts.AssertDeleteSegmentRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _JobId [__string] 
-- Required parameter: ApplicationId
-- Required parameter: JobId
function M.GetImportJobRequest(_ApplicationId, _JobId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetImportJobRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["JobId"] = _JobId,
	}
	asserts.AssertGetImportJobRequest(t)
	return t
end

keys.ApplicationSettingsResource = { ["LastModifiedDate"] = true, ["QuietTime"] = true, ["ApplicationId"] = true, ["Limits"] = true, nil }

function asserts.AssertApplicationSettingsResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApplicationSettingsResource to be of type 'table'")
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["QuietTime"] then asserts.AssertQuietTime(struct["QuietTime"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Limits"] then asserts.AssertCampaignLimits(struct["Limits"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApplicationSettingsResource[k], "ApplicationSettingsResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApplicationSettingsResource
-- Application settings.
-- @param _LastModifiedDate [__string] The date that the settings were last updated in ISO 8601 format.
-- @param _QuietTime [QuietTime] The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own.
-- @param _ApplicationId [__string] The unique ID for the application.
-- @param _Limits [CampaignLimits] The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own.
function M.ApplicationSettingsResource(_LastModifiedDate, _QuietTime, _ApplicationId, _Limits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ApplicationSettingsResource")
	local t = { 
		["LastModifiedDate"] = _LastModifiedDate,
		["QuietTime"] = _QuietTime,
		["ApplicationId"] = _ApplicationId,
		["Limits"] = _Limits,
	}
	asserts.AssertApplicationSettingsResource(t)
	return t
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
-- @param _SegmentResponse [SegmentResponse] 
-- Required parameter: SegmentResponse
function M.CreateSegmentResponse(_SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSegmentResponse")
	local t = { 
		["SegmentResponse"] = _SegmentResponse,
	}
	asserts.AssertCreateSegmentResponse(t)
	return t
end

keys.GCMMessage = { ["Body"] = true, ["Sound"] = true, ["Title"] = true, ["Url"] = true, ["ImageUrl"] = true, ["RawContent"] = true, ["Substitutions"] = true, ["CollapseKey"] = true, ["SmallImageIconUrl"] = true, ["SilentPush"] = true, ["IconReference"] = true, ["Action"] = true, ["RestrictedPackageName"] = true, ["Data"] = true, ["ImageIconUrl"] = true, nil }

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
	if struct["CollapseKey"] then asserts.Assert__string(struct["CollapseKey"]) end
	if struct["SmallImageIconUrl"] then asserts.Assert__string(struct["SmallImageIconUrl"]) end
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
-- @param _Body [__string] The message body of the notification, the email body or the text message.
-- @param _Sound [__string] Indicates a sound to play when the device receives the notification. Supports default, or the filename of a sound resource bundled in the app. Android sound files must reside in /res/raw/
-- @param _Title [__string] The message title that displays above the message on the user's device.
-- @param _Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- @param _ImageUrl [__string] The URL that points to an image used in the push notification.
-- @param _RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- @param _Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- @param _CollapseKey [__string] This parameter identifies a group of messages (e.g., with collapse_key: "Updates Available") that can be collapsed, so that only the last message gets sent when delivery can be resumed. This is intended to avoid sending too many of the same messages when the device comes back online or becomes active.
-- @param _SmallImageIconUrl [__string] The URL that points to an image used as the small icon for the notification which will be used to represent the notification in the status bar and content view
-- @param _SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- @param _IconReference [__string] The icon image name of the asset saved in your application.
-- @param _Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- @param _RestrictedPackageName [__string] This parameter specifies the package name of the application where the registration tokens must match in order to receive the message.
-- @param _Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- @param _ImageIconUrl [__string] The URL that points to an image used as the large icon to the notification content view.
function M.GCMMessage(_Body, _Sound, _Title, _Url, _ImageUrl, _RawContent, _Substitutions, _CollapseKey, _SmallImageIconUrl, _SilentPush, _IconReference, _Action, _RestrictedPackageName, _Data, _ImageIconUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GCMMessage")
	local t = { 
		["Body"] = _Body,
		["Sound"] = _Sound,
		["Title"] = _Title,
		["Url"] = _Url,
		["ImageUrl"] = _ImageUrl,
		["RawContent"] = _RawContent,
		["Substitutions"] = _Substitutions,
		["CollapseKey"] = _CollapseKey,
		["SmallImageIconUrl"] = _SmallImageIconUrl,
		["SilentPush"] = _SilentPush,
		["IconReference"] = _IconReference,
		["Action"] = _Action,
		["RestrictedPackageName"] = _RestrictedPackageName,
		["Data"] = _Data,
		["ImageIconUrl"] = _ImageIconUrl,
	}
	asserts.AssertGCMMessage(t)
	return t
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
-- @param _Recency [RecencyDimension] The recency of use.
function M.SegmentBehaviors(_Recency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentBehaviors")
	local t = { 
		["Recency"] = _Recency,
	}
	asserts.AssertSegmentBehaviors(t)
	return t
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
-- @param _EndpointBatchRequest [EndpointBatchRequest] 
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
-- Required parameter: EndpointBatchRequest
function M.UpdateEndpointsBatchRequest(_EndpointBatchRequest, _ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEndpointsBatchRequest")
	local t = { 
		["EndpointBatchRequest"] = _EndpointBatchRequest,
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertUpdateEndpointsBatchRequest(t)
	return t
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
-- @param _CampaignResponse [CampaignResponse] 
-- Required parameter: CampaignResponse
function M.GetCampaignResponse(_CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignResponse")
	local t = { 
		["CampaignResponse"] = _CampaignResponse,
	}
	asserts.AssertGetCampaignResponse(t)
	return t
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
-- @param _ApplicationSettingsResource [ApplicationSettingsResource] 
-- Required parameter: ApplicationSettingsResource
function M.GetApplicationSettingsResponse(_ApplicationSettingsResource, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApplicationSettingsResponse")
	local t = { 
		["ApplicationSettingsResource"] = _ApplicationSettingsResource,
	}
	asserts.AssertGetApplicationSettingsResponse(t)
	return t
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
-- @param _Message [__string] The error message returned from the API.
-- @param _RequestID [__string] The unique message body ID.
function M.MessageBody(_Message, _RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageBody")
	local t = { 
		["Message"] = _Message,
		["RequestID"] = _RequestID,
	}
	asserts.AssertMessageBody(t)
	return t
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
-- @param _EffectiveDate [__string] The last time the endpoint was updated. Provided in ISO 8601 format.
-- @param _OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:ALL – User receives all messages.NONE – User receives no messages.
-- @param _RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- @param _Demographic [EndpointDemographic] The endpoint demographic attributes.
-- @param _User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- @param _Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- @param _Location [EndpointLocation] The endpoint location attributes.
-- @param _Address [__string] The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
-- @param _Attributes [MapOfListOf__string] Custom attributes that your app reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create a segment.
-- @param _ChannelType [ChannelType] The channel type.Valid values: APNS, GCM
-- @param _Id [__string] The unique Id for the Endpoint in the batch.
-- @param _EndpointStatus [__string] The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
function M.EndpointBatchItem(_EffectiveDate, _OptOut, _RequestId, _Demographic, _User, _Metrics, _Location, _Address, _Attributes, _ChannelType, _Id, _EndpointStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointBatchItem")
	local t = { 
		["EffectiveDate"] = _EffectiveDate,
		["OptOut"] = _OptOut,
		["RequestId"] = _RequestId,
		["Demographic"] = _Demographic,
		["User"] = _User,
		["Metrics"] = _Metrics,
		["Location"] = _Location,
		["Address"] = _Address,
		["Attributes"] = _Attributes,
		["ChannelType"] = _ChannelType,
		["Id"] = _Id,
		["EndpointStatus"] = _EndpointStatus,
	}
	asserts.AssertEndpointBatchItem(t)
	return t
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
-- @param _ImportJobResponse [ImportJobResponse] 
-- Required parameter: ImportJobResponse
function M.GetImportJobResponse(_ImportJobResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetImportJobResponse")
	local t = { 
		["ImportJobResponse"] = _ImportJobResponse,
	}
	asserts.AssertGetImportJobResponse(t)
	return t
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
-- @param _Message [__string] The error message returned from the API.
-- @param _RequestID [__string] The unique message body ID.
function M.ForbiddenException(_Message, _RequestID, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ForbiddenException")
	local t = { 
		["Message"] = _Message,
		["RequestID"] = _RequestID,
	}
	asserts.AssertForbiddenException(t)
	return t
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
--  
-- @param _DefineSegment [__boolean] Sets whether the endpoints create a segment when they are imported.
-- @param _SegmentId [__string] The ID of the segment to update if the import job is meant to update an existing segment.
-- @param _Format [Format] The format of the files that contain the endpoint definitions.Valid values: CSV, JSON
-- @param _RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the Amazon S3 location that contains the endpoints to import.
-- @param _S3Url [__string] A URL that points to the location within an Amazon S3 bucket that contains the endpoints to import. The location can be a folder or a single file.The URL should follow this format: s3://bucket-name/folder-name/file-nameAmazon Pinpoint will import endpoints from this location and any subfolders it contains.
-- @param _RegisterEndpoints [__boolean] Sets whether the endpoints are registered with Amazon Pinpoint when they are imported.
-- @param _ExternalId [__string] A unique, custom ID assigned to the IAM role that restricts who can assume the role.	
-- @param _SegmentName [__string] A custom name for the segment created by the import job. Use if DefineSegment is true.
function M.ImportJobRequest(_DefineSegment, _SegmentId, _Format, _RoleArn, _S3Url, _RegisterEndpoints, _ExternalId, _SegmentName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ImportJobRequest")
	local t = { 
		["DefineSegment"] = _DefineSegment,
		["SegmentId"] = _SegmentId,
		["Format"] = _Format,
		["RoleArn"] = _RoleArn,
		["S3Url"] = _S3Url,
		["RegisterEndpoints"] = _RegisterEndpoints,
		["ExternalId"] = _ExternalId,
		["SegmentName"] = _SegmentName,
	}
	asserts.AssertImportJobRequest(t)
	return t
end

keys.EmailChannelResponse = { ["FromAddress"] = true, ["LastModifiedDate"] = true, ["RoleArn"] = true, ["Enabled"] = true, ["LastModifiedBy"] = true, ["Platform"] = true, ["Version"] = true, ["IsArchived"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["Identity"] = true, nil }

function asserts.AssertEmailChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmailChannelResponse to be of type 'table'")
	if struct["FromAddress"] then asserts.Assert__string(struct["FromAddress"]) end
	if struct["LastModifiedDate"] then asserts.Assert__string(struct["LastModifiedDate"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	if struct["LastModifiedBy"] then asserts.Assert__string(struct["LastModifiedBy"]) end
	if struct["Platform"] then asserts.Assert__string(struct["Platform"]) end
	if struct["Version"] then asserts.Assert__integer(struct["Version"]) end
	if struct["IsArchived"] then asserts.Assert__boolean(struct["IsArchived"]) end
	if struct["CreationDate"] then asserts.Assert__string(struct["CreationDate"]) end
	if struct["ApplicationId"] then asserts.Assert__string(struct["ApplicationId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Identity"] then asserts.Assert__string(struct["Identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmailChannelResponse[k], "EmailChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmailChannelResponse
-- Email Channel Response.
-- @param _FromAddress [__string] The email address used to send emails from.
-- @param _LastModifiedDate [__string] Last date this was updated
-- @param _RoleArn [__string] The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
-- @param _LastModifiedBy [__string] Who last updated this entry
-- @param _Platform [__string] Platform type. Will be "EMAIL"
-- @param _Version [__integer] Version of channel
-- @param _IsArchived [__boolean] Is this channel archived
-- @param _CreationDate [__string] The date that the settings were last updated in ISO 8601 format.
-- @param _ApplicationId [__string] Application id
-- @param _Id [__string] Channel ID. Not used, only for backwards compatibility.
-- @param _Identity [__string] The ARN of an identity verified with SES.
function M.EmailChannelResponse(_FromAddress, _LastModifiedDate, _RoleArn, _Enabled, _LastModifiedBy, _Platform, _Version, _IsArchived, _CreationDate, _ApplicationId, _Id, _Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmailChannelResponse")
	local t = { 
		["FromAddress"] = _FromAddress,
		["LastModifiedDate"] = _LastModifiedDate,
		["RoleArn"] = _RoleArn,
		["Enabled"] = _Enabled,
		["LastModifiedBy"] = _LastModifiedBy,
		["Platform"] = _Platform,
		["Version"] = _Version,
		["IsArchived"] = _IsArchived,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
		["Identity"] = _Identity,
	}
	asserts.AssertEmailChannelResponse(t)
	return t
end

keys.APNSMessage = { ["Body"] = true, ["Category"] = true, ["MediaUrl"] = true, ["Url"] = true, ["Data"] = true, ["ThreadId"] = true, ["Substitutions"] = true, ["Title"] = true, ["RawContent"] = true, ["Action"] = true, ["SilentPush"] = true, ["Badge"] = true, ["Sound"] = true, nil }

function asserts.AssertAPNSMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected APNSMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["MediaUrl"] then asserts.Assert__string(struct["MediaUrl"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["Data"] then asserts.AssertMapOf__string(struct["Data"]) end
	if struct["ThreadId"] then asserts.Assert__string(struct["ThreadId"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	if struct["Title"] then asserts.Assert__string(struct["Title"]) end
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
-- @param _Body [__string] The message body of the notification, the email body or the text message.
-- @param _Category [__string] Provide this key with a string value that represents the notification's type. This value corresponds to the value in the identifier property of one of your app's registered categories.
-- @param _MediaUrl [__string] The URL that points to a video used in the push notification.
-- @param _Url [__string] The URL to open in the user's mobile browser. Used if the value for Action is URL.
-- @param _Data [MapOf__string] The data payload used for a silent push. This payload is added to the notifications' data.pinpoint.jsonBody' object
-- @param _ThreadId [__string] Provide this key with a string value that represents the app-specific identifier for grouping notifications. If you provide a Notification Content app extension, you can use this value to group your notifications together.
-- @param _Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
-- @param _Title [__string] The message title that displays above the message on the user's device.
-- @param _RawContent [__string] The Raw JSON formatted string to be used as the payload. This value overrides the message.
-- @param _Action [Action] The action that occurs if the user taps a push notification delivered by the campaign: OPEN_APP - Your app launches, or it becomes the foreground app if it has been sent to the background. This is the default action. DEEP_LINK - Uses deep linking features in iOS and Android to open your app and display a designated user interface within the app. URL - The default mobile browser on the user's device launches and opens a web page at the URL you specify. Possible values include: OPEN_APP | DEEP_LINK | URL
-- @param _SilentPush [__boolean] Indicates if the message should display on the users device. Silent pushes can be used for Remote Configuration and Phone Home use cases.
-- @param _Badge [__integer] Include this key when you want the system to modify the badge of your app icon. If this key is not included in the dictionary, the badge is not changed. To remove the badge, set the value of this key to 0.
-- @param _Sound [__string] Include this key when you want the system to play a sound. The value of this key is the name of a sound file in your app's main bundle or in the Library/Sounds folder of your app's data container. If the sound file cannot be found, or if you specify defaultfor the value, the system plays the default alert sound.
function M.APNSMessage(_Body, _Category, _MediaUrl, _Url, _Data, _ThreadId, _Substitutions, _Title, _RawContent, _Action, _SilentPush, _Badge, _Sound, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating APNSMessage")
	local t = { 
		["Body"] = _Body,
		["Category"] = _Category,
		["MediaUrl"] = _MediaUrl,
		["Url"] = _Url,
		["Data"] = _Data,
		["ThreadId"] = _ThreadId,
		["Substitutions"] = _Substitutions,
		["Title"] = _Title,
		["RawContent"] = _RawContent,
		["Action"] = _Action,
		["SilentPush"] = _SilentPush,
		["Badge"] = _Badge,
		["Sound"] = _Sound,
	}
	asserts.AssertAPNSMessage(t)
	return t
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
-- @param _EffectiveDate [__string] The last time the endpoint was updated. Provided in ISO 8601 format.
-- @param _OptOut [__string] Indicates whether a user has opted out of receiving messages with one of the following values:ALL – User receives all messages.NONE – User receives no messages.
-- @param _RequestId [__string] The unique ID for the most recent request to update the endpoint.
-- @param _Demographic [EndpointDemographic] The endpoint demographic attributes.
-- @param _User [EndpointUser] Custom user-specific attributes that your app reports to Amazon Pinpoint.
-- @param _Metrics [MapOf__double] Custom metrics that your app reports to Amazon Pinpoint.
-- @param _Location [EndpointLocation] The endpoint location attributes.
-- @param _Address [__string] The address or token of the endpoint as provided by your push provider (e.g. DeviceToken or RegistrationId).
-- @param _Attributes [MapOfListOf__string] Custom attributes that your app reports to Amazon Pinpoint. You can use these attributes as selection criteria when you create a segment.
-- @param _ChannelType [ChannelType] The channel type.Valid values: APNS, GCM
-- @param _EndpointStatus [__string] The endpoint status. Can be either ACTIVE or INACTIVE. Will be set to INACTIVE if a delivery fails. Will be set to ACTIVE if the address is updated.
function M.EndpointRequest(_EffectiveDate, _OptOut, _RequestId, _Demographic, _User, _Metrics, _Location, _Address, _Attributes, _ChannelType, _EndpointStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointRequest")
	local t = { 
		["EffectiveDate"] = _EffectiveDate,
		["OptOut"] = _OptOut,
		["RequestId"] = _RequestId,
		["Demographic"] = _Demographic,
		["User"] = _User,
		["Metrics"] = _Metrics,
		["Location"] = _Location,
		["Address"] = _Address,
		["Attributes"] = _Attributes,
		["ChannelType"] = _ChannelType,
		["EndpointStatus"] = _EndpointStatus,
	}
	asserts.AssertEndpointRequest(t)
	return t
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
-- @param _APNSChannelResponse [APNSChannelResponse] 
-- Required parameter: APNSChannelResponse
function M.DeleteApnsChannelResponse(_APNSChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApnsChannelResponse")
	local t = { 
		["APNSChannelResponse"] = _APNSChannelResponse,
	}
	asserts.AssertDeleteApnsChannelResponse(t)
	return t
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
-- @param _ImportJobResponse [ImportJobResponse] 
-- Required parameter: ImportJobResponse
function M.CreateImportJobResponse(_ImportJobResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateImportJobResponse")
	local t = { 
		["ImportJobResponse"] = _ImportJobResponse,
	}
	asserts.AssertCreateImportJobResponse(t)
	return t
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
-- @param _SizePercent [__integer] The allocated percentage of users for this treatment.
-- @param _Schedule [Schedule] The campaign schedule.
-- @param _TreatmentName [__string] The custom name of a variation of the campaign used for A/B testing.
-- @param _State [CampaignState] The treatment status.
-- @param _MessageConfiguration [MessageConfiguration] The message configuration settings.
-- @param _Id [__string] The unique treatment ID.
-- @param _TreatmentDescription [__string] A custom description for the treatment.
function M.TreatmentResource(_SizePercent, _Schedule, _TreatmentName, _State, _MessageConfiguration, _Id, _TreatmentDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TreatmentResource")
	local t = { 
		["SizePercent"] = _SizePercent,
		["Schedule"] = _Schedule,
		["TreatmentName"] = _TreatmentName,
		["State"] = _State,
		["MessageConfiguration"] = _MessageConfiguration,
		["Id"] = _Id,
		["TreatmentDescription"] = _TreatmentDescription,
	}
	asserts.AssertTreatmentResource(t)
	return t
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
-- @param _SegmentResponse [SegmentResponse] 
-- Required parameter: SegmentResponse
function M.GetSegmentResponse(_SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentResponse")
	local t = { 
		["SegmentResponse"] = _SegmentResponse,
	}
	asserts.AssertGetSegmentResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.GetEmailChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEmailChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertGetEmailChannelRequest(t)
	return t
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
-- GetEventStream Request
-- @param _ApplicationId [__string] ApplicationId
-- Required parameter: ApplicationId
function M.GetEventStreamRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventStreamRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertGetEventStreamRequest(t)
	return t
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
-- @param _Duration [Duration] The length of time during which users have been active or inactive with your app.Valid values: HR_24, DAY_7, DAY_14, DAY_30
-- @param _RecencyType [RecencyType] The recency dimension type:ACTIVE - Users who have used your app within the specified duration are included in the segment.INACTIVE - Users who have not used your app within the specified duration are included in the segment.
function M.RecencyDimension(_Duration, _RecencyType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecencyDimension")
	local t = { 
		["Duration"] = _Duration,
		["RecencyType"] = _RecencyType,
	}
	asserts.AssertRecencyDimension(t)
	return t
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
-- DeleteEventStream Response
-- @param _EventStream [EventStream] 
-- Required parameter: EventStream
function M.DeleteEventStreamResponse(_EventStream, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEventStreamResponse")
	local t = { 
		["EventStream"] = _EventStream,
	}
	asserts.AssertDeleteEventStreamResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _EndpointId [__string] 
-- Required parameter: ApplicationId
-- Required parameter: EndpointId
function M.GetEndpointRequest(_ApplicationId, _EndpointId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEndpointRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["EndpointId"] = _EndpointId,
	}
	asserts.AssertGetEndpointRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.GetSmsChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSmsChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertGetSmsChannelRequest(t)
	return t
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
-- @param _Version [__string] 
-- @param _ApplicationId [__string] 
-- @param _SegmentId [__string] 
-- Required parameter: SegmentId
-- Required parameter: Version
-- Required parameter: ApplicationId
function M.GetSegmentVersionRequest(_Version, _ApplicationId, _SegmentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentVersionRequest")
	local t = { 
		["Version"] = _Version,
		["ApplicationId"] = _ApplicationId,
		["SegmentId"] = _SegmentId,
	}
	asserts.AssertGetSegmentVersionRequest(t)
	return t
end

keys.SMSMessage = { ["Body"] = true, ["SenderId"] = true, ["MessageType"] = true, ["Substitutions"] = true, nil }

function asserts.AssertSMSMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSMessage to be of type 'table'")
	if struct["Body"] then asserts.Assert__string(struct["Body"]) end
	if struct["SenderId"] then asserts.Assert__string(struct["SenderId"]) end
	if struct["MessageType"] then asserts.AssertMessageType(struct["MessageType"]) end
	if struct["Substitutions"] then asserts.AssertMapOfListOf__string(struct["Substitutions"]) end
	for k,_ in pairs(struct) do
		assert(keys.SMSMessage[k], "SMSMessage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSMessage
-- SMS Message.
-- @param _Body [__string] The message body of the notification, the email body or the text message.
-- @param _SenderId [__string] Sender ID of sent message.
-- @param _MessageType [MessageType] Is this a transaction priority message or lower priority.
-- @param _Substitutions [MapOfListOf__string] Default message substitutions. Can be overridden by individual address substitutions.
function M.SMSMessage(_Body, _SenderId, _MessageType, _Substitutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SMSMessage")
	local t = { 
		["Body"] = _Body,
		["SenderId"] = _SenderId,
		["MessageType"] = _MessageType,
		["Substitutions"] = _Substitutions,
	}
	asserts.AssertSMSMessage(t)
	return t
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
-- GetEventStream Response
-- @param _EventStream [EventStream] 
-- Required parameter: EventStream
function M.GetEventStreamResponse(_EventStream, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventStreamResponse")
	local t = { 
		["EventStream"] = _EventStream,
	}
	asserts.AssertGetEventStreamResponse(t)
	return t
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
-- @param _Format [Format] The format of the endpoint files that were imported to create this segment.Valid values: CSV, JSON
-- @param _RoleArn [__string] The Amazon Resource Name (ARN) of an IAM role that grants Amazon Pinpoint access to the endpoints in Amazon S3.
-- @param _S3Url [__string] A URL that points to the Amazon S3 location from which the endpoints for this segment were imported.
-- @param _ExternalId [__string] A unique, custom ID assigned to the IAM role that restricts who can assume the role.
-- @param _ChannelCounts [MapOf__integer] Channel type counts
-- @param _Size [__integer] The number of endpoints that were successfully imported to create this segment.
function M.SegmentImportResource(_Format, _RoleArn, _S3Url, _ExternalId, _ChannelCounts, _Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentImportResource")
	local t = { 
		["Format"] = _Format,
		["RoleArn"] = _RoleArn,
		["S3Url"] = _S3Url,
		["ExternalId"] = _ExternalId,
		["ChannelCounts"] = _ChannelCounts,
		["Size"] = _Size,
	}
	asserts.AssertSegmentImportResource(t)
	return t
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
-- @param _Make [SetDimension] The device make criteria for the segment.
-- @param _AppVersion [SetDimension] The app version criteria for the segment.
-- @param _Platform [SetDimension] The device platform criteria for the segment.
-- @param _DeviceType [SetDimension] The device type criteria for the segment.
-- @param _Model [SetDimension] The device model criteria for the segment.
-- @param _Channel [SetDimension] The channel criteria for the segment.
function M.SegmentDemographics(_Make, _AppVersion, _Platform, _DeviceType, _Model, _Channel, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentDemographics")
	local t = { 
		["Make"] = _Make,
		["AppVersion"] = _AppVersion,
		["Platform"] = _Platform,
		["DeviceType"] = _DeviceType,
		["Model"] = _Model,
		["Channel"] = _Channel,
	}
	asserts.AssertSegmentDemographics(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _GCMChannelRequest [GCMChannelRequest] 
-- Required parameter: ApplicationId
-- Required parameter: GCMChannelRequest
function M.UpdateGcmChannelRequest(_ApplicationId, _GCMChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateGcmChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["GCMChannelRequest"] = _GCMChannelRequest,
	}
	asserts.AssertUpdateGcmChannelRequest(t)
	return t
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
-- @param _DimensionType [DimensionType] The type of dimension:INCLUSIVE - Endpoints that match the criteria are included in the segment.EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
-- @param _Values [ListOf__string] The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
function M.SetDimension(_DimensionType, _Values, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetDimension")
	local t = { 
		["DimensionType"] = _DimensionType,
		["Values"] = _Values,
	}
	asserts.AssertSetDimension(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.DeleteGcmChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteGcmChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertDeleteGcmChannelRequest(t)
	return t
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
-- @param _Token [__string] 
-- @param _ApplicationId [__string] 
-- @param _PageSize [__string] 
-- Required parameter: ApplicationId
function M.GetSegmentsRequest(_Token, _ApplicationId, _PageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSegmentsRequest")
	local t = { 
		["Token"] = _Token,
		["ApplicationId"] = _ApplicationId,
		["PageSize"] = _PageSize,
	}
	asserts.AssertGetSegmentsRequest(t)
	return t
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
-- @param _CampaignResponse [CampaignResponse] 
-- Required parameter: CampaignResponse
function M.UpdateCampaignResponse(_CampaignResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateCampaignResponse")
	local t = { 
		["CampaignResponse"] = _CampaignResponse,
	}
	asserts.AssertUpdateCampaignResponse(t)
	return t
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
-- @param _CampaignsResponse [CampaignsResponse] 
-- Required parameter: CampaignsResponse
function M.GetCampaignVersionsResponse(_CampaignsResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCampaignVersionsResponse")
	local t = { 
		["CampaignsResponse"] = _CampaignsResponse,
	}
	asserts.AssertGetCampaignVersionsResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _APNSChannelRequest [APNSChannelRequest] 
-- Required parameter: ApplicationId
-- Required parameter: APNSChannelRequest
function M.UpdateApnsChannelRequest(_ApplicationId, _APNSChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApnsChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["APNSChannelRequest"] = _APNSChannelRequest,
	}
	asserts.AssertUpdateApnsChannelRequest(t)
	return t
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
-- Endpoint location data
-- @param _City [__string] The city where the endpoint is located.
-- @param _Country [__string] Country according to ISO 3166-1 Alpha-2 codes. For example, US.
-- @param _Region [__string] The region of the endpoint location. For example, corresponds to a state in US.
-- @param _Longitude [__double] The longitude of the endpoint location. Rounded to one decimal (Roughly corresponding to a mile).
-- @param _PostalCode [__string] The postal code or zip code of the endpoint.
-- @param _Latitude [__double] The latitude of the endpoint location. Rounded to one decimal (Roughly corresponding to a mile).
function M.EndpointLocation(_City, _Country, _Region, _Longitude, _PostalCode, _Latitude, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointLocation")
	local t = { 
		["City"] = _City,
		["Country"] = _Country,
		["Region"] = _Region,
		["Longitude"] = _Longitude,
		["PostalCode"] = _PostalCode,
		["Latitude"] = _Latitude,
	}
	asserts.AssertEndpointLocation(t)
	return t
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
-- @param _WriteApplicationSettingsRequest [WriteApplicationSettingsRequest] 
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
-- Required parameter: WriteApplicationSettingsRequest
function M.UpdateApplicationSettingsRequest(_WriteApplicationSettingsRequest, _ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateApplicationSettingsRequest")
	local t = { 
		["WriteApplicationSettingsRequest"] = _WriteApplicationSettingsRequest,
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertUpdateApplicationSettingsRequest(t)
	return t
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
-- @param _MessageBody [MessageBody] 
-- Required parameter: MessageBody
function M.UpdateEndpointsBatchResponse(_MessageBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEndpointsBatchResponse")
	local t = { 
		["MessageBody"] = _MessageBody,
	}
	asserts.AssertUpdateEndpointsBatchResponse(t)
	return t
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
-- @param _Values [ListOf__string] The criteria values for the segment dimension. Endpoints with matching attribute values are included or excluded from the segment, depending on the setting for Type.
-- @param _AttributeType [AttributeType] The type of dimension:INCLUSIVE - Endpoints that match the criteria are included in the segment.EXCLUSIVE - Endpoints that match the criteria are excluded from the segment.
function M.AttributeDimension(_Values, _AttributeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AttributeDimension")
	local t = { 
		["Values"] = _Values,
		["AttributeType"] = _AttributeType,
	}
	asserts.AssertAttributeDimension(t)
	return t
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
-- @param _GCMChannelResponse [GCMChannelResponse] 
-- Required parameter: GCMChannelResponse
function M.GetGcmChannelResponse(_GCMChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetGcmChannelResponse")
	local t = { 
		["GCMChannelResponse"] = _GCMChannelResponse,
	}
	asserts.AssertGetGcmChannelResponse(t)
	return t
end

keys.ActivitiesResponse = { ["Item"] = true, nil }

function asserts.AssertActivitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivitiesResponse to be of type 'table'")
	if struct["Item"] then asserts.AssertListOfActivityResponse(struct["Item"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivitiesResponse[k], "ActivitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivitiesResponse
-- Activities for campaign.
-- @param _Item [ListOfActivityResponse] List of campaign activities
function M.ActivitiesResponse(_Item, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivitiesResponse")
	local t = { 
		["Item"] = _Item,
	}
	asserts.AssertActivitiesResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- Required parameter: ApplicationId
function M.DeleteApnsSandboxChannelRequest(_ApplicationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteApnsSandboxChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
	}
	asserts.AssertDeleteApnsSandboxChannelRequest(t)
	return t
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
-- @param _APNSSandboxChannelResponse [APNSSandboxChannelResponse] 
-- Required parameter: APNSSandboxChannelResponse
function M.GetApnsSandboxChannelResponse(_APNSSandboxChannelResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetApnsSandboxChannelResponse")
	local t = { 
		["APNSSandboxChannelResponse"] = _APNSSandboxChannelResponse,
	}
	asserts.AssertGetApnsSandboxChannelResponse(t)
	return t
end

keys.SegmentResponse = { ["Dimensions"] = true, ["LastModifiedDate"] = true, ["SegmentType"] = true, ["Version"] = true, ["ImportDefinition"] = true, ["CreationDate"] = true, ["ApplicationId"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertSegmentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SegmentResponse to be of type 'table'")
	if struct["Dimensions"] then asserts.AssertSegmentDimensions(struct["Dimensions"]) end
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
-- @param _Dimensions [SegmentDimensions] The segment dimensions attributes.
-- @param _LastModifiedDate [__string] The date the segment was last updated in ISO 8601 format.
-- @param _SegmentType [SegmentType] The segment type:DIMENSIONAL - A dynamic segment built from selection criteria based on endpoint data reported by your app. You create this type of segment by using the segment builder in the Amazon Pinpoint console or by making a POST request to the segments resource.IMPORT - A static segment built from an imported set of endpoint definitions. You create this type of segment by importing a segment in the Amazon Pinpoint console or by making a POST request to the jobs/import resource.
-- @param _Version [__integer] The segment version number.
-- @param _ImportDefinition [SegmentImportResource] The import job settings.
-- @param _CreationDate [__string] The date the segment was created in ISO 8601 format.
-- @param _ApplicationId [__string] The ID of the application to which the segment applies.
-- @param _Id [__string] The unique segment ID.
-- @param _Name [__string] The name of segment
function M.SegmentResponse(_Dimensions, _LastModifiedDate, _SegmentType, _Version, _ImportDefinition, _CreationDate, _ApplicationId, _Id, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SegmentResponse")
	local t = { 
		["Dimensions"] = _Dimensions,
		["LastModifiedDate"] = _LastModifiedDate,
		["SegmentType"] = _SegmentType,
		["Version"] = _Version,
		["ImportDefinition"] = _ImportDefinition,
		["CreationDate"] = _CreationDate,
		["ApplicationId"] = _ApplicationId,
		["Id"] = _Id,
		["Name"] = _Name,
	}
	asserts.AssertSegmentResponse(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _EmailChannelRequest [EmailChannelRequest] 
-- Required parameter: ApplicationId
-- Required parameter: EmailChannelRequest
function M.UpdateEmailChannelRequest(_ApplicationId, _EmailChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateEmailChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["EmailChannelRequest"] = _EmailChannelRequest,
	}
	asserts.AssertUpdateEmailChannelRequest(t)
	return t
end

keys.SMSChannelRequest = { ["SenderId"] = true, ["Enabled"] = true, nil }

function asserts.AssertSMSChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SMSChannelRequest to be of type 'table'")
	if struct["SenderId"] then asserts.Assert__string(struct["SenderId"]) end
	if struct["Enabled"] then asserts.Assert__boolean(struct["Enabled"]) end
	for k,_ in pairs(struct) do
		assert(keys.SMSChannelRequest[k], "SMSChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SMSChannelRequest
-- SMS Channel Request
-- @param _SenderId [__string] Sender identifier of your messages.
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
function M.SMSChannelRequest(_SenderId, _Enabled, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SMSChannelRequest")
	local t = { 
		["SenderId"] = _SenderId,
		["Enabled"] = _Enabled,
	}
	asserts.AssertSMSChannelRequest(t)
	return t
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
-- @param _RoleArn [__string] The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service
-- @param _FromAddress [__string] The email address used to send emails from.
-- @param _Enabled [__boolean] If the channel is enabled for sending messages.
-- @param _Identity [__string] The ARN of an identity verified with SES.
function M.EmailChannelRequest(_RoleArn, _FromAddress, _Enabled, _Identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EmailChannelRequest")
	local t = { 
		["RoleArn"] = _RoleArn,
		["FromAddress"] = _FromAddress,
		["Enabled"] = _Enabled,
		["Identity"] = _Identity,
	}
	asserts.AssertEmailChannelRequest(t)
	return t
end

keys.MessageConfiguration = { ["APNSMessage"] = true, ["EmailMessage"] = true, ["DefaultMessage"] = true, ["SMSMessage"] = true, ["GCMMessage"] = true, nil }

function asserts.AssertMessageConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageConfiguration to be of type 'table'")
	if struct["APNSMessage"] then asserts.AssertMessage(struct["APNSMessage"]) end
	if struct["EmailMessage"] then asserts.AssertCampaignEmailMessage(struct["EmailMessage"]) end
	if struct["DefaultMessage"] then asserts.AssertMessage(struct["DefaultMessage"]) end
	if struct["SMSMessage"] then asserts.AssertCampaignSmsMessage(struct["SMSMessage"]) end
	if struct["GCMMessage"] then asserts.AssertMessage(struct["GCMMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageConfiguration[k], "MessageConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageConfiguration
-- Message configuration for a campaign.
-- @param _APNSMessage [Message] The message that the campaign delivers to APNS channels. Overrides the default message.
-- @param _EmailMessage [CampaignEmailMessage] The email message configuration.
-- @param _DefaultMessage [Message] The default message for all channels.
-- @param _SMSMessage [CampaignSmsMessage] The SMS message configuration.
-- @param _GCMMessage [Message] The message that the campaign delivers to GCM channels. Overrides the default message.
function M.MessageConfiguration(_APNSMessage, _EmailMessage, _DefaultMessage, _SMSMessage, _GCMMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageConfiguration")
	local t = { 
		["APNSMessage"] = _APNSMessage,
		["EmailMessage"] = _EmailMessage,
		["DefaultMessage"] = _DefaultMessage,
		["SMSMessage"] = _SMSMessage,
		["GCMMessage"] = _GCMMessage,
	}
	asserts.AssertMessageConfiguration(t)
	return t
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
-- @param _SegmentResponse [SegmentResponse] 
-- Required parameter: SegmentResponse
function M.UpdateSegmentResponse(_SegmentResponse, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSegmentResponse")
	local t = { 
		["SegmentResponse"] = _SegmentResponse,
	}
	asserts.AssertUpdateSegmentResponse(t)
	return t
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
-- @param _Item [ListOfEndpointBatchItem] List of items to update. Maximum 100 items
function M.EndpointBatchRequest(_Item, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointBatchRequest")
	local t = { 
		["Item"] = _Item,
	}
	asserts.AssertEndpointBatchRequest(t)
	return t
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
-- @param _ApplicationId [__string] 
-- @param _SMSChannelRequest [SMSChannelRequest] 
-- Required parameter: ApplicationId
-- Required parameter: SMSChannelRequest
function M.UpdateSmsChannelRequest(_ApplicationId, _SMSChannelRequest, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSmsChannelRequest")
	local t = { 
		["ApplicationId"] = _ApplicationId,
		["SMSChannelRequest"] = _SMSChannelRequest,
	}
	asserts.AssertUpdateSmsChannelRequest(t)
	return t
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

function asserts.AssertDeliveryStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DeliveryStatus to be of type 'string'")
end

--  
function M.DeliveryStatus(str)
	asserts.AssertDeliveryStatus(str)
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

function asserts.Assert__string(str)
	assert(str)
	assert(type(str) == "string", "Expected __string to be of type 'string'")
end

--  
function M.__string(str)
	asserts.Assert__string(str)
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

function asserts.AssertRecencyType(str)
	assert(str)
	assert(type(str) == "string", "Expected RecencyType to be of type 'string'")
end

--  
function M.RecencyType(str)
	asserts.AssertRecencyType(str)
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

function asserts.Assert__timestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestamp to be of type 'string'")
end

function M.__timestamp(timestamp)
	asserts.Assert__timestamp(timestamp)
	return timestamp
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
--- Call CreateSegment asynchronously, invoking a callback when done
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

--- Call CreateSegment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSegmentRequest
-- @return response
-- @return error_message
function M.CreateSegmentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSegmentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetImportJobs asynchronously, invoking a callback when done
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

--- Call GetImportJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetImportJobsRequest
-- @return response
-- @return error_message
function M.GetImportJobsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetImportJobsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegmentVersion asynchronously, invoking a callback when done
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

--- Call GetSegmentVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentVersionRequest
-- @return response
-- @return error_message
function M.GetSegmentVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApnsSandboxChannel asynchronously, invoking a callback when done
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

--- Call DeleteApnsSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApnsSandboxChannelRequest
-- @return response
-- @return error_message
function M.DeleteApnsSandboxChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApnsSandboxChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGcmChannel asynchronously, invoking a callback when done
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

--- Call DeleteGcmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGcmChannelRequest
-- @return response
-- @return error_message
function M.DeleteGcmChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGcmChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCampaign asynchronously, invoking a callback when done
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

--- Call DeleteCampaign synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCampaignRequest
-- @return response
-- @return error_message
function M.DeleteCampaignSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCampaignAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetImportJob asynchronously, invoking a callback when done
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

--- Call GetImportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetImportJobRequest
-- @return response
-- @return error_message
function M.GetImportJobSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetImportJobAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCampaign asynchronously, invoking a callback when done
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

--- Call CreateCampaign synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCampaignRequest
-- @return response
-- @return error_message
function M.CreateCampaignSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCampaignAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateImportJob asynchronously, invoking a callback when done
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

--- Call CreateImportJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateImportJobRequest
-- @return response
-- @return error_message
function M.CreateImportJobSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateImportJobAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSmsChannel asynchronously, invoking a callback when done
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

--- Call UpdateSmsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSmsChannelRequest
-- @return response
-- @return error_message
function M.UpdateSmsChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSmsChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaignVersion asynchronously, invoking a callback when done
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

--- Call GetCampaignVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignVersionRequest
-- @return response
-- @return error_message
function M.GetCampaignVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGcmChannel asynchronously, invoking a callback when done
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

--- Call GetGcmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGcmChannelRequest
-- @return response
-- @return error_message
function M.GetGcmChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGcmChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApnsChannel asynchronously, invoking a callback when done
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

--- Call UpdateApnsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApnsChannelRequest
-- @return response
-- @return error_message
function M.UpdateApnsChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApnsChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGcmChannel asynchronously, invoking a callback when done
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

--- Call UpdateGcmChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGcmChannelRequest
-- @return response
-- @return error_message
function M.UpdateGcmChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGcmChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegment asynchronously, invoking a callback when done
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

--- Call GetSegment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentRequest
-- @return response
-- @return error_message
function M.GetSegmentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaign asynchronously, invoking a callback when done
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

--- Call GetCampaign synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignRequest
-- @return response
-- @return error_message
function M.GetCampaignSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEmailChannel asynchronously, invoking a callback when done
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

--- Call GetEmailChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEmailChannelRequest
-- @return response
-- @return error_message
function M.GetEmailChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEmailChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCampaign asynchronously, invoking a callback when done
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

--- Call UpdateCampaign synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCampaignRequest
-- @return response
-- @return error_message
function M.UpdateCampaignSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCampaignAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApplicationSettings asynchronously, invoking a callback when done
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

--- Call UpdateApplicationSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApplicationSettingsRequest
-- @return response
-- @return error_message
function M.UpdateApplicationSettingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApplicationSettingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApnsSandboxChannel asynchronously, invoking a callback when done
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

--- Call UpdateApnsSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApnsSandboxChannelRequest
-- @return response
-- @return error_message
function M.UpdateApnsSandboxChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApnsSandboxChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegments asynchronously, invoking a callback when done
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

--- Call GetSegments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentsRequest
-- @return response
-- @return error_message
function M.GetSegmentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutEventStream asynchronously, invoking a callback when done
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

--- Call PutEventStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutEventStreamRequest
-- @return response
-- @return error_message
function M.PutEventStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEventStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSegment asynchronously, invoking a callback when done
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

--- Call DeleteSegment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSegmentRequest
-- @return response
-- @return error_message
function M.DeleteSegmentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSegmentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaignVersions asynchronously, invoking a callback when done
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

--- Call GetCampaignVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignVersionsRequest
-- @return response
-- @return error_message
function M.GetCampaignVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEndpoint asynchronously, invoking a callback when done
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

--- Call UpdateEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEndpointRequest
-- @return response
-- @return error_message
function M.UpdateEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApnsSandboxChannel asynchronously, invoking a callback when done
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

--- Call GetApnsSandboxChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApnsSandboxChannelRequest
-- @return response
-- @return error_message
function M.GetApnsSandboxChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApnsSandboxChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegmentImportJobs asynchronously, invoking a callback when done
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

--- Call GetSegmentImportJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentImportJobsRequest
-- @return response
-- @return error_message
function M.GetSegmentImportJobsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentImportJobsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaigns asynchronously, invoking a callback when done
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

--- Call GetCampaigns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignsRequest
-- @return response
-- @return error_message
function M.GetCampaignsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEmailChannel asynchronously, invoking a callback when done
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

--- Call DeleteEmailChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEmailChannelRequest
-- @return response
-- @return error_message
function M.DeleteEmailChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEmailChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCampaignActivities asynchronously, invoking a callback when done
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

--- Call GetCampaignActivities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCampaignActivitiesRequest
-- @return response
-- @return error_message
function M.GetCampaignActivitiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCampaignActivitiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApnsChannel asynchronously, invoking a callback when done
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

--- Call GetApnsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApnsChannelRequest
-- @return response
-- @return error_message
function M.GetApnsChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApnsChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEndpoint asynchronously, invoking a callback when done
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

--- Call GetEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEndpointRequest
-- @return response
-- @return error_message
function M.GetEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEventStream asynchronously, invoking a callback when done
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

--- Call GetEventStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEventStreamRequest
-- @return response
-- @return error_message
function M.GetEventStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEventStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSmsChannel asynchronously, invoking a callback when done
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

--- Call DeleteSmsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSmsChannelRequest
-- @return response
-- @return error_message
function M.DeleteSmsChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSmsChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendMessages asynchronously, invoking a callback when done
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

--- Call SendMessages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendMessagesRequest
-- @return response
-- @return error_message
function M.SendMessagesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendMessagesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApnsChannel asynchronously, invoking a callback when done
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

--- Call DeleteApnsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApnsChannelRequest
-- @return response
-- @return error_message
function M.DeleteApnsChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApnsChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEventStream asynchronously, invoking a callback when done
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

--- Call DeleteEventStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEventStreamRequest
-- @return response
-- @return error_message
function M.DeleteEventStreamSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEventStreamAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetApplicationSettings asynchronously, invoking a callback when done
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

--- Call GetApplicationSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetApplicationSettingsRequest
-- @return response
-- @return error_message
function M.GetApplicationSettingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetApplicationSettingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEmailChannel asynchronously, invoking a callback when done
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

--- Call UpdateEmailChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEmailChannelRequest
-- @return response
-- @return error_message
function M.UpdateEmailChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEmailChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSmsChannel asynchronously, invoking a callback when done
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

--- Call GetSmsChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSmsChannelRequest
-- @return response
-- @return error_message
function M.GetSmsChannelSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSmsChannelAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSegment asynchronously, invoking a callback when done
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

--- Call UpdateSegment synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSegmentRequest
-- @return response
-- @return error_message
function M.UpdateSegmentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSegmentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSegmentVersions asynchronously, invoking a callback when done
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

--- Call GetSegmentVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSegmentVersionsRequest
-- @return response
-- @return error_message
function M.GetSegmentVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSegmentVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateEndpointsBatch asynchronously, invoking a callback when done
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

--- Call UpdateEndpointsBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateEndpointsBatchRequest
-- @return response
-- @return error_message
function M.UpdateEndpointsBatchSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateEndpointsBatchAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
