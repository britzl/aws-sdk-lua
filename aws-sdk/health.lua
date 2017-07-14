--- GENERATED CODE - DO NOT MODIFY
-- AWS Health APIs and Notifications (health-2016-08-04)

local M = {}

M.metadata = {
	api_version = "2016-08-04",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "health",
	service_abbreviation = "AWSHealth",
	service_full_name = "AWS Health APIs and Notifications",
	signature_version = "v4",
	target_prefix = "AWSHealth_20160804",
	timestamp_format = "",
	global_endpoint = "",
	uid = "health-2016-08-04",
}

local UnsupportedLocale_keys = { "message" = true, nil }

function M.AssertUnsupportedLocale(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedLocale to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedLocale_keys[k], "UnsupportedLocale contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedLocale
-- <p>The specified locale is not supported.</p>
-- @param message [string] <p>The specified locale is not supported.</p>
function M.UnsupportedLocale(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedLocale")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedLocale(t)
	return t
end

local DescribeEventAggregatesResponse_keys = { "nextToken" = true, "eventAggregates" = true, nil }

function M.AssertDescribeEventAggregatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventAggregatesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertnextToken(struct["nextToken"]) end
	if struct["eventAggregates"] then M.AssertEventAggregateList(struct["eventAggregates"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventAggregatesResponse_keys[k], "DescribeEventAggregatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventAggregatesResponse
--  
-- @param nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param eventAggregates [EventAggregateList] <p>The number of events in each category that meet the optional filter criteria.</p>
function M.DescribeEventAggregatesResponse(nextToken, eventAggregates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventAggregatesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["eventAggregates"] = eventAggregates,
	}
	M.AssertDescribeEventAggregatesResponse(t)
	return t
end

local EntityFilter_keys = { "eventArns" = true, "statusCodes" = true, "entityValues" = true, "entityArns" = true, "lastUpdatedTimes" = true, "tags" = true, nil }

function M.AssertEntityFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityFilter to be of type 'table'")
	assert(struct["eventArns"], "Expected key eventArns to exist in table")
	if struct["eventArns"] then M.AsserteventArnList(struct["eventArns"]) end
	if struct["statusCodes"] then M.AssertentityStatusCodeList(struct["statusCodes"]) end
	if struct["entityValues"] then M.AssertentityValueList(struct["entityValues"]) end
	if struct["entityArns"] then M.AssertentityArnList(struct["entityArns"]) end
	if struct["lastUpdatedTimes"] then M.AssertdateTimeRangeList(struct["lastUpdatedTimes"]) end
	if struct["tags"] then M.AsserttagFilter(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(EntityFilter_keys[k], "EntityFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityFilter
-- <p>The values to use to filter results from the <a>DescribeAffectedEntities</a> operation.</p>
-- @param eventArns [eventArnList] <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"</code> </p>
-- @param statusCodes [entityStatusCodeList] <p>A list of entity status codes (<code>IMPAIRED</code>, <code>UNIMPAIRED</code>, or <code>UNKNOWN</code>).</p>
-- @param entityValues [entityValueList] <p>A list of IDs for affected entities.</p>
-- @param entityArns [entityArnList] <p>A list of entity ARNs (unique identifiers).</p>
-- @param lastUpdatedTimes [dateTimeRangeList] <p>A list of the most recent dates and times that the entity was updated.</p>
-- @param tags [tagFilter] <p>A map of entity tags attached to the affected entity.</p>
-- Required parameter: eventArns
function M.EntityFilter(eventArns, statusCodes, entityValues, entityArns, lastUpdatedTimes, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityFilter")
	local t = { 
		["eventArns"] = eventArns,
		["statusCodes"] = statusCodes,
		["entityValues"] = entityValues,
		["entityArns"] = entityArns,
		["lastUpdatedTimes"] = lastUpdatedTimes,
		["tags"] = tags,
	}
	M.AssertEntityFilter(t)
	return t
end

local EventDetails_keys = { "eventMetadata" = true, "event" = true, "eventDescription" = true, nil }

function M.AssertEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDetails to be of type 'table'")
	if struct["eventMetadata"] then M.AsserteventMetadata(struct["eventMetadata"]) end
	if struct["event"] then M.AssertEvent(struct["event"]) end
	if struct["eventDescription"] then M.AssertEventDescription(struct["eventDescription"]) end
	for k,_ in pairs(struct) do
		assert(EventDetails_keys[k], "EventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDetails
-- <p>Detailed information about an event. A combination of an <a>Event</a> object, an <a>EventDescription</a> object, and additional metadata about the event. Returned by the <a>DescribeEventDetails</a> operation.</p>
-- @param eventMetadata [eventMetadata] <p>Additional metadata about the event.</p>
-- @param event [Event] <p>Summary information about the event.</p>
-- @param eventDescription [EventDescription] <p>The most recent description of the event.</p>
function M.EventDetails(eventMetadata, event, eventDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDetails")
	local t = { 
		["eventMetadata"] = eventMetadata,
		["event"] = event,
		["eventDescription"] = eventDescription,
	}
	M.AssertEventDetails(t)
	return t
end

local DescribeEventTypesResponse_keys = { "eventTypes" = true, "nextToken" = true, nil }

function M.AssertDescribeEventTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventTypesResponse to be of type 'table'")
	if struct["eventTypes"] then M.AssertEventTypeList(struct["eventTypes"]) end
	if struct["nextToken"] then M.AssertnextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventTypesResponse_keys[k], "DescribeEventTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventTypesResponse
--  
-- @param eventTypes [EventTypeList] <p>A list of event types that match the filter criteria. Event types have a category (<code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>), a service (for example, <code>EC2</code>, <code>RDS</code>, <code>DATAPIPELINE</code>, <code>BILLING</code>), and a code (in the format <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>
-- @param nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
function M.DescribeEventTypesResponse(eventTypes, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventTypesResponse")
	local t = { 
		["eventTypes"] = eventTypes,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeEventTypesResponse(t)
	return t
end

local DescribeAffectedEntitiesRequest_keys = { "filter" = true, "locale" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertDescribeAffectedEntitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAffectedEntitiesRequest to be of type 'table'")
	assert(struct["filter"], "Expected key filter to exist in table")
	if struct["filter"] then M.AssertEntityFilter(struct["filter"]) end
	if struct["locale"] then M.Assertlocale(struct["locale"]) end
	if struct["nextToken"] then M.AssertnextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertmaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAffectedEntitiesRequest_keys[k], "DescribeAffectedEntitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAffectedEntitiesRequest
--  
-- @param filter [EntityFilter] <p>Values to narrow the results returned. At least one event ARN is required. </p>
-- @param locale [locale] <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
-- @param nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param maxResults [maxResults] <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
-- Required parameter: filter
function M.DescribeAffectedEntitiesRequest(filter, locale, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAffectedEntitiesRequest")
	local t = { 
		["filter"] = filter,
		["locale"] = locale,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeAffectedEntitiesRequest(t)
	return t
end

local AffectedEntity_keys = { "entityValue" = true, "lastUpdatedTime" = true, "tags" = true, "entityArn" = true, "awsAccountId" = true, "eventArn" = true, "statusCode" = true, nil }

function M.AssertAffectedEntity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AffectedEntity to be of type 'table'")
	if struct["entityValue"] then M.AssertentityValue(struct["entityValue"]) end
	if struct["lastUpdatedTime"] then M.Asserttimestamp(struct["lastUpdatedTime"]) end
	if struct["tags"] then M.AsserttagSet(struct["tags"]) end
	if struct["entityArn"] then M.AssertentityArn(struct["entityArn"]) end
	if struct["awsAccountId"] then M.AssertaccountId(struct["awsAccountId"]) end
	if struct["eventArn"] then M.AsserteventArn(struct["eventArn"]) end
	if struct["statusCode"] then M.AssertentityStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(AffectedEntity_keys[k], "AffectedEntity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AffectedEntity
-- <p>Information about an entity that is affected by a Health event.</p>
-- @param entityValue [entityValue] <p>The ID of the affected entity.</p>
-- @param lastUpdatedTime [timestamp] <p>The most recent time that the entity was updated.</p>
-- @param tags [tagSet] <p>A map of entity tags attached to the affected entity.</p>
-- @param entityArn [entityArn] <p>The unique identifier for the entity. Format: <code>arn:aws:health:<i>entity-region</i>:<i>aws-account</i>:entity/<i>entity-id</i> </code>. Example: <code>arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K</code> </p>
-- @param awsAccountId [accountId] <p>The 12-digit AWS account number that contains the affected entity.</p>
-- @param eventArn [eventArn] <p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331</code> </p>
-- @param statusCode [entityStatusCode] <p>The most recent status of the entity affected by the event. The possible values are <code>IMPAIRED</code>, <code>UNIMPAIRED</code>, and <code>UNKNOWN</code>.</p>
function M.AffectedEntity(entityValue, lastUpdatedTime, tags, entityArn, awsAccountId, eventArn, statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AffectedEntity")
	local t = { 
		["entityValue"] = entityValue,
		["lastUpdatedTime"] = lastUpdatedTime,
		["tags"] = tags,
		["entityArn"] = entityArn,
		["awsAccountId"] = awsAccountId,
		["eventArn"] = eventArn,
		["statusCode"] = statusCode,
	}
	M.AssertAffectedEntity(t)
	return t
end

local DescribeEventAggregatesRequest_keys = { "filter" = true, "aggregateField" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertDescribeEventAggregatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventAggregatesRequest to be of type 'table'")
	assert(struct["aggregateField"], "Expected key aggregateField to exist in table")
	if struct["filter"] then M.AssertEventFilter(struct["filter"]) end
	if struct["aggregateField"] then M.AsserteventAggregateField(struct["aggregateField"]) end
	if struct["nextToken"] then M.AssertnextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertmaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventAggregatesRequest_keys[k], "DescribeEventAggregatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventAggregatesRequest
--  
-- @param filter [EventFilter] <p>Values to narrow the results returned.</p>
-- @param aggregateField [eventAggregateField] <p>The only currently supported value is <code>eventTypeCategory</code>.</p>
-- @param nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param maxResults [maxResults] <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
-- Required parameter: aggregateField
function M.DescribeEventAggregatesRequest(filter, aggregateField, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventAggregatesRequest")
	local t = { 
		["filter"] = filter,
		["aggregateField"] = aggregateField,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeEventAggregatesRequest(t)
	return t
end

local DescribeEventsResponse_keys = { "nextToken" = true, "events" = true, nil }

function M.AssertDescribeEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertnextToken(struct["nextToken"]) end
	if struct["events"] then M.AssertEventList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsResponse_keys[k], "DescribeEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsResponse
--  
-- @param nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param events [EventList] <p>The events that match the specified filter criteria.</p>
function M.DescribeEventsResponse(nextToken, events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["events"] = events,
	}
	M.AssertDescribeEventsResponse(t)
	return t
end

local EventDescription_keys = { "latestDescription" = true, nil }

function M.AssertEventDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDescription to be of type 'table'")
	if struct["latestDescription"] then M.AsserteventDescription(struct["latestDescription"]) end
	for k,_ in pairs(struct) do
		assert(EventDescription_keys[k], "EventDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDescription
-- <p>The detailed description of the event. Included in the information returned by the <a>DescribeEventDetails</a> operation.</p>
-- @param latestDescription [eventDescription] <p>The most recent description of the event.</p>
function M.EventDescription(latestDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDescription")
	local t = { 
		["latestDescription"] = latestDescription,
	}
	M.AssertEventDescription(t)
	return t
end

local EventType_keys = { "category" = true, "code" = true, "service" = true, nil }

function M.AssertEventType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventType to be of type 'table'")
	if struct["category"] then M.AsserteventTypeCategory(struct["category"]) end
	if struct["code"] then M.AsserteventTypeCode(struct["code"]) end
	if struct["service"] then M.Assertservice(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(EventType_keys[k], "EventType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventType
-- <p>Metadata about a type of event that is reported by AWS Health. Data consists of the category (for example, <code>issue</code>), the service (for example, <code>EC2</code>), and the event type code (for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>
-- @param category [eventTypeCategory] <p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>
-- @param code [eventTypeCode] <p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>
-- @param service [service] <p>The AWS service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
function M.EventType(category, code, service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventType")
	local t = { 
		["category"] = category,
		["code"] = code,
		["service"] = service,
	}
	M.AssertEventType(t)
	return t
end

local DescribeEntityAggregatesResponse_keys = { "entityAggregates" = true, nil }

function M.AssertDescribeEntityAggregatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEntityAggregatesResponse to be of type 'table'")
	if struct["entityAggregates"] then M.AssertEntityAggregateList(struct["entityAggregates"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEntityAggregatesResponse_keys[k], "DescribeEntityAggregatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEntityAggregatesResponse
--  
-- @param entityAggregates [EntityAggregateList] <p>The number of entities that are affected by each of the specified events.</p>
function M.DescribeEntityAggregatesResponse(entityAggregates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEntityAggregatesResponse")
	local t = { 
		["entityAggregates"] = entityAggregates,
	}
	M.AssertDescribeEntityAggregatesResponse(t)
	return t
end

local EventDetailsErrorItem_keys = { "errorMessage" = true, "eventArn" = true, "errorName" = true, nil }

function M.AssertEventDetailsErrorItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDetailsErrorItem to be of type 'table'")
	if struct["errorMessage"] then M.Assertstring(struct["errorMessage"]) end
	if struct["eventArn"] then M.AsserteventArn(struct["eventArn"]) end
	if struct["errorName"] then M.Assertstring(struct["errorName"]) end
	for k,_ in pairs(struct) do
		assert(EventDetailsErrorItem_keys[k], "EventDetailsErrorItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDetailsErrorItem
-- <p>Error information returned when a <a>DescribeEventDetails</a> operation cannot find a specified event.</p>
-- @param errorMessage [string] <p>A message that describes the error.</p>
-- @param eventArn [eventArn] <p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331</code> </p>
-- @param errorName [string] <p>The name of the error.</p>
function M.EventDetailsErrorItem(errorMessage, eventArn, errorName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDetailsErrorItem")
	local t = { 
		["errorMessage"] = errorMessage,
		["eventArn"] = eventArn,
		["errorName"] = errorName,
	}
	M.AssertEventDetailsErrorItem(t)
	return t
end

local EventTypeFilter_keys = { "eventTypeCodes" = true, "services" = true, "eventTypeCategories" = true, nil }

function M.AssertEventTypeFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventTypeFilter to be of type 'table'")
	if struct["eventTypeCodes"] then M.AssertEventTypeCodeList(struct["eventTypeCodes"]) end
	if struct["services"] then M.AssertserviceList(struct["services"]) end
	if struct["eventTypeCategories"] then M.AssertEventTypeCategoryList(struct["eventTypeCategories"]) end
	for k,_ in pairs(struct) do
		assert(EventTypeFilter_keys[k], "EventTypeFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventTypeFilter
-- <p>The values to use to filter results from the <a>DescribeEventTypes</a> operation.</p>
-- @param eventTypeCodes [EventTypeCodeList] <p>A list of event type codes.</p>
-- @param services [serviceList] <p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
-- @param eventTypeCategories [EventTypeCategoryList] <p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>
function M.EventTypeFilter(eventTypeCodes, services, eventTypeCategories, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventTypeFilter")
	local t = { 
		["eventTypeCodes"] = eventTypeCodes,
		["services"] = services,
		["eventTypeCategories"] = eventTypeCategories,
	}
	M.AssertEventTypeFilter(t)
	return t
end

local DateTimeRange_keys = { "to" = true, "from" = true, nil }

function M.AssertDateTimeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DateTimeRange to be of type 'table'")
	if struct["to"] then M.Asserttimestamp(struct["to"]) end
	if struct["from"] then M.Asserttimestamp(struct["from"]) end
	for k,_ in pairs(struct) do
		assert(DateTimeRange_keys[k], "DateTimeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DateTimeRange
-- <p>A range of dates and times that is used by the <a>EventFilter</a> and <a>EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set: match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code> inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set and <code>to</code> is set: match items where the timestamp value is equal to or before <code>to</code>.</p>
-- @param to [timestamp] <p>The ending date and time of a time range.</p>
-- @param from [timestamp] <p>The starting date and time of a time range.</p>
function M.DateTimeRange(to, from, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DateTimeRange")
	local t = { 
		["to"] = to,
		["from"] = from,
	}
	M.AssertDateTimeRange(t)
	return t
end

local InvalidPaginationToken_keys = { "message" = true, nil }

function M.AssertInvalidPaginationToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPaginationToken to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidPaginationToken_keys[k], "InvalidPaginationToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPaginationToken
-- <p>The specified pagination token (<code>nextToken</code>) is not valid.</p>
-- @param message [string] <p>The specified pagination token (<code>nextToken</code>) is not valid.</p>
function M.InvalidPaginationToken(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPaginationToken")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidPaginationToken(t)
	return t
end

local EventFilter_keys = { "startTimes" = true, "eventArns" = true, "entityValues" = true, "eventTypeCodes" = true, "eventTypeCategories" = true, "endTimes" = true, "regions" = true, "eventStatusCodes" = true, "entityArns" = true, "services" = true, "availabilityZones" = true, "lastUpdatedTimes" = true, "tags" = true, nil }

function M.AssertEventFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventFilter to be of type 'table'")
	if struct["startTimes"] then M.AssertdateTimeRangeList(struct["startTimes"]) end
	if struct["eventArns"] then M.AsserteventArnList(struct["eventArns"]) end
	if struct["entityValues"] then M.AssertentityValueList(struct["entityValues"]) end
	if struct["eventTypeCodes"] then M.AsserteventTypeList(struct["eventTypeCodes"]) end
	if struct["eventTypeCategories"] then M.AsserteventTypeCategoryList(struct["eventTypeCategories"]) end
	if struct["endTimes"] then M.AssertdateTimeRangeList(struct["endTimes"]) end
	if struct["regions"] then M.AssertregionList(struct["regions"]) end
	if struct["eventStatusCodes"] then M.AsserteventStatusCodeList(struct["eventStatusCodes"]) end
	if struct["entityArns"] then M.AssertentityArnList(struct["entityArns"]) end
	if struct["services"] then M.AssertserviceList(struct["services"]) end
	if struct["availabilityZones"] then M.AssertavailabilityZones(struct["availabilityZones"]) end
	if struct["lastUpdatedTimes"] then M.AssertdateTimeRangeList(struct["lastUpdatedTimes"]) end
	if struct["tags"] then M.AsserttagFilter(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(EventFilter_keys[k], "EventFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventFilter
-- <p>The values to use to filter results from the <a>DescribeEvents</a> and <a>DescribeEventAggregates</a> operations.</p>
-- @param startTimes [dateTimeRangeList] <p>A list of dates and times that the event began.</p>
-- @param eventArns [eventArnList] <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"</code> </p>
-- @param entityValues [entityValueList] <p>A list of entity identifiers, such as EC2 instance IDs (<code>i-34ab692e</code>) or EBS volumes (<code>vol-426ab23e</code>).</p>
-- @param eventTypeCodes [eventTypeList] <p>A list of unique identifiers for event types. For example, <code>"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED"</code> </p>
-- @param eventTypeCategories [eventTypeCategoryList] <p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>
-- @param endTimes [dateTimeRangeList] <p>A list of dates and times that the event ended.</p>
-- @param regions [regionList] <p>A list of AWS regions.</p>
-- @param eventStatusCodes [eventStatusCodeList] <p>A list of event status codes.</p>
-- @param entityArns [entityArnList] <p>A list of entity ARNs (unique identifiers).</p>
-- @param services [serviceList] <p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
-- @param availabilityZones [availabilityZones] <p>A list of AWS availability zones.</p>
-- @param lastUpdatedTimes [dateTimeRangeList] <p>A list of dates and times that the event was last updated.</p>
-- @param tags [tagFilter] <p>A map of entity tags attached to the affected entity.</p>
function M.EventFilter(startTimes, eventArns, entityValues, eventTypeCodes, eventTypeCategories, endTimes, regions, eventStatusCodes, entityArns, services, availabilityZones, lastUpdatedTimes, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventFilter")
	local t = { 
		["startTimes"] = startTimes,
		["eventArns"] = eventArns,
		["entityValues"] = entityValues,
		["eventTypeCodes"] = eventTypeCodes,
		["eventTypeCategories"] = eventTypeCategories,
		["endTimes"] = endTimes,
		["regions"] = regions,
		["eventStatusCodes"] = eventStatusCodes,
		["entityArns"] = entityArns,
		["services"] = services,
		["availabilityZones"] = availabilityZones,
		["lastUpdatedTimes"] = lastUpdatedTimes,
		["tags"] = tags,
	}
	M.AssertEventFilter(t)
	return t
end

local DescribeAffectedEntitiesResponse_keys = { "entities" = true, "nextToken" = true, nil }

function M.AssertDescribeAffectedEntitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAffectedEntitiesResponse to be of type 'table'")
	if struct["entities"] then M.AssertEntityList(struct["entities"]) end
	if struct["nextToken"] then M.AssertnextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAffectedEntitiesResponse_keys[k], "DescribeAffectedEntitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAffectedEntitiesResponse
--  
-- @param entities [EntityList] <p>The entities that match the filter criteria.</p>
-- @param nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
function M.DescribeAffectedEntitiesResponse(entities, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAffectedEntitiesResponse")
	local t = { 
		["entities"] = entities,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeAffectedEntitiesResponse(t)
	return t
end

local DescribeEventTypesRequest_keys = { "filter" = true, "locale" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertDescribeEventTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventTypesRequest to be of type 'table'")
	if struct["filter"] then M.AssertEventTypeFilter(struct["filter"]) end
	if struct["locale"] then M.Assertlocale(struct["locale"]) end
	if struct["nextToken"] then M.AssertnextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertmaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventTypesRequest_keys[k], "DescribeEventTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventTypesRequest
--  
-- @param filter [EventTypeFilter] <p>Values to narrow the results returned.</p>
-- @param locale [locale] <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
-- @param nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param maxResults [maxResults] <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
function M.DescribeEventTypesRequest(filter, locale, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventTypesRequest")
	local t = { 
		["filter"] = filter,
		["locale"] = locale,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeEventTypesRequest(t)
	return t
end

local DescribeEventDetailsRequest_keys = { "locale" = true, "eventArns" = true, nil }

function M.AssertDescribeEventDetailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventDetailsRequest to be of type 'table'")
	assert(struct["eventArns"], "Expected key eventArns to exist in table")
	if struct["locale"] then M.Assertlocale(struct["locale"]) end
	if struct["eventArns"] then M.AsserteventArnList(struct["eventArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventDetailsRequest_keys[k], "DescribeEventDetailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventDetailsRequest
--  
-- @param locale [locale] <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
-- @param eventArns [eventArnList] <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"</code> </p>
-- Required parameter: eventArns
function M.DescribeEventDetailsRequest(locale, eventArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventDetailsRequest")
	local t = { 
		["locale"] = locale,
		["eventArns"] = eventArns,
	}
	M.AssertDescribeEventDetailsRequest(t)
	return t
end

local DescribeEventDetailsResponse_keys = { "failedSet" = true, "successfulSet" = true, nil }

function M.AssertDescribeEventDetailsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventDetailsResponse to be of type 'table'")
	if struct["failedSet"] then M.AssertDescribeEventDetailsFailedSet(struct["failedSet"]) end
	if struct["successfulSet"] then M.AssertDescribeEventDetailsSuccessfulSet(struct["successfulSet"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventDetailsResponse_keys[k], "DescribeEventDetailsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventDetailsResponse
--  
-- @param failedSet [DescribeEventDetailsFailedSet] <p>Error messages for any events that could not be retrieved.</p>
-- @param successfulSet [DescribeEventDetailsSuccessfulSet] <p>Information about the events that could be retrieved.</p>
function M.DescribeEventDetailsResponse(failedSet, successfulSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventDetailsResponse")
	local t = { 
		["failedSet"] = failedSet,
		["successfulSet"] = successfulSet,
	}
	M.AssertDescribeEventDetailsResponse(t)
	return t
end

local DescribeEventsRequest_keys = { "filter" = true, "locale" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertDescribeEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsRequest to be of type 'table'")
	if struct["filter"] then M.AssertEventFilter(struct["filter"]) end
	if struct["locale"] then M.Assertlocale(struct["locale"]) end
	if struct["nextToken"] then M.AssertnextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertmaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEventsRequest_keys[k], "DescribeEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsRequest
--  
-- @param filter [EventFilter] <p>Values to narrow the results returned.</p>
-- @param locale [locale] <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
-- @param nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param maxResults [maxResults] <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
function M.DescribeEventsRequest(filter, locale, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsRequest")
	local t = { 
		["filter"] = filter,
		["locale"] = locale,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertDescribeEventsRequest(t)
	return t
end

local EntityAggregate_keys = { "count" = true, "eventArn" = true, nil }

function M.AssertEntityAggregate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAggregate to be of type 'table'")
	if struct["count"] then M.Assertcount(struct["count"]) end
	if struct["eventArn"] then M.AsserteventArn(struct["eventArn"]) end
	for k,_ in pairs(struct) do
		assert(EntityAggregate_keys[k], "EntityAggregate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAggregate
-- <p>The number of entities that are affected by one or more events. Returned by the <a>DescribeEntityAggregates</a> operation.</p>
-- @param count [count] <p>The number entities that match the criteria for the specified events.</p>
-- @param eventArn [eventArn] <p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331</code> </p>
function M.EntityAggregate(count, eventArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityAggregate")
	local t = { 
		["count"] = count,
		["eventArn"] = eventArn,
	}
	M.AssertEntityAggregate(t)
	return t
end

local DescribeEntityAggregatesRequest_keys = { "eventArns" = true, nil }

function M.AssertDescribeEntityAggregatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEntityAggregatesRequest to be of type 'table'")
	if struct["eventArns"] then M.AssertEventArnsList(struct["eventArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEntityAggregatesRequest_keys[k], "DescribeEntityAggregatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEntityAggregatesRequest
--  
-- @param eventArns [EventArnsList] <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"</code> </p>
function M.DescribeEntityAggregatesRequest(eventArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEntityAggregatesRequest")
	local t = { 
		["eventArns"] = eventArns,
	}
	M.AssertDescribeEntityAggregatesRequest(t)
	return t
end

local EventAggregate_keys = { "count" = true, "aggregateValue" = true, nil }

function M.AssertEventAggregate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventAggregate to be of type 'table'")
	if struct["count"] then M.Assertcount(struct["count"]) end
	if struct["aggregateValue"] then M.AssertaggregateValue(struct["aggregateValue"]) end
	for k,_ in pairs(struct) do
		assert(EventAggregate_keys[k], "EventAggregate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventAggregate
-- <p>The number of events of each issue type. Returned by the <a>DescribeEventAggregates</a> operation.</p>
-- @param count [count] <p>The number of events of the associated issue type.</p>
-- @param aggregateValue [aggregateValue] <p>The issue type for the associated count.</p>
function M.EventAggregate(count, aggregateValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventAggregate")
	local t = { 
		["count"] = count,
		["aggregateValue"] = aggregateValue,
	}
	M.AssertEventAggregate(t)
	return t
end

local Event_keys = { "availabilityZone" = true, "lastUpdatedTime" = true, "service" = true, "eventTypeCode" = true, "startTime" = true, "eventTypeCategory" = true, "endTime" = true, "region" = true, "arn" = true, "statusCode" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["availabilityZone"] then M.AssertavailabilityZone(struct["availabilityZone"]) end
	if struct["lastUpdatedTime"] then M.Asserttimestamp(struct["lastUpdatedTime"]) end
	if struct["service"] then M.Assertservice(struct["service"]) end
	if struct["eventTypeCode"] then M.AsserteventTypeCode(struct["eventTypeCode"]) end
	if struct["startTime"] then M.Asserttimestamp(struct["startTime"]) end
	if struct["eventTypeCategory"] then M.AsserteventTypeCategory(struct["eventTypeCategory"]) end
	if struct["endTime"] then M.Asserttimestamp(struct["endTime"]) end
	if struct["region"] then M.Assertregion(struct["region"]) end
	if struct["arn"] then M.AsserteventArn(struct["arn"]) end
	if struct["statusCode"] then M.AsserteventStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Summary information about an event, returned by the <a>DescribeEvents</a> operation. The <a>DescribeEventDetails</a> operation also returns this information, as well as the <a>EventDescription</a> and additional event metadata.</p>
-- @param availabilityZone [availabilityZone] <p>The AWS Availability Zone of the event. For example, us-east-1a.</p>
-- @param lastUpdatedTime [timestamp] <p>The most recent date and time that the event was updated.</p>
-- @param service [service] <p>The AWS service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
-- @param eventTypeCode [eventTypeCode] <p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>
-- @param startTime [timestamp] <p>The date and time that the event began.</p>
-- @param eventTypeCategory [eventTypeCategory] <p>The </p>
-- @param endTime [timestamp] <p>The date and time that the event ended.</p>
-- @param region [region] <p>The AWS region name of the event.</p>
-- @param arn [eventArn] <p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331</code> </p>
-- @param statusCode [eventStatusCode] <p>The most recent status of the event. Possible values are <code>open</code>, <code>closed</code>, and <code>upcoming</code>.</p>
function M.Event(availabilityZone, lastUpdatedTime, service, eventTypeCode, startTime, eventTypeCategory, endTime, region, arn, statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["availabilityZone"] = availabilityZone,
		["lastUpdatedTime"] = lastUpdatedTime,
		["service"] = service,
		["eventTypeCode"] = eventTypeCode,
		["startTime"] = startTime,
		["eventTypeCategory"] = eventTypeCategory,
		["endTime"] = endTime,
		["region"] = region,
		["arn"] = arn,
		["statusCode"] = statusCode,
	}
	M.AssertEvent(t)
	return t
end

function M.AsserttagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected tagKey to be of type 'string'")
	assert(#str <= 127, "Expected string to be max 127 characters")
end

--  
function M.tagKey(str)
	M.AsserttagKey(str)
	return str
end

function M.AsserteventDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected eventDescription to be of type 'string'")
end

--  
function M.eventDescription(str)
	M.AsserteventDescription(str)
	return str
end

function M.AssertentityValue(str)
	assert(str)
	assert(type(str) == "string", "Expected entityValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.entityValue(str)
	M.AssertentityValue(str)
	return str
end

function M.Assertlocale(str)
	assert(str)
	assert(type(str) == "string", "Expected locale to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.locale(str)
	M.Assertlocale(str)
	return str
end

function M.AsserteventType(str)
	assert(str)
	assert(type(str) == "string", "Expected eventType to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.eventType(str)
	M.AsserteventType(str)
	return str
end

function M.AssertmetadataValue(str)
	assert(str)
	assert(type(str) == "string", "Expected metadataValue to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

--  
function M.metadataValue(str)
	M.AssertmetadataValue(str)
	return str
end

function M.AsserteventTypeCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected eventTypeCategory to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.eventTypeCategory(str)
	M.AsserteventTypeCategory(str)
	return str
end

function M.AssertaccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected accountId to be of type 'string'")
	assert(str:match("[0-9]{12}"), "Expected string to match pattern '[0-9]{12}'")
end

--  
function M.accountId(str)
	M.AssertaccountId(str)
	return str
end

function M.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	M.Assertstring(str)
	return str
end

function M.AsserttagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected tagValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.tagValue(str)
	M.AsserttagValue(str)
	return str
end

function M.AssertaggregateValue(str)
	assert(str)
	assert(type(str) == "string", "Expected aggregateValue to be of type 'string'")
end

--  
function M.aggregateValue(str)
	M.AssertaggregateValue(str)
	return str
end

function M.AsserteventTypeCode(str)
	assert(str)
	assert(type(str) == "string", "Expected eventTypeCode to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.eventTypeCode(str)
	M.AsserteventTypeCode(str)
	return str
end

function M.AssertavailabilityZone(str)
	assert(str)
	assert(type(str) == "string", "Expected availabilityZone to be of type 'string'")
	assert(str:match("[a-z]{2}%-[0-9a-z%-]{4,16}"), "Expected string to match pattern '[a-z]{2}%-[0-9a-z%-]{4,16}'")
end

--  
function M.availabilityZone(str)
	M.AssertavailabilityZone(str)
	return str
end

function M.AssertentityStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected entityStatusCode to be of type 'string'")
end

--  
function M.entityStatusCode(str)
	M.AssertentityStatusCode(str)
	return str
end

function M.AsserteventStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected eventStatusCode to be of type 'string'")
end

--  
function M.eventStatusCode(str)
	M.AsserteventStatusCode(str)
	return str
end

function M.Assertservice(str)
	assert(str)
	assert(type(str) == "string", "Expected service to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.service(str)
	M.Assertservice(str)
	return str
end

function M.AsserteventArn(str)
	assert(str)
	assert(type(str) == "string", "Expected eventArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(str:match("arn:aws:health:[^:]*:[^:]*:event/[%w-]+"), "Expected string to match pattern 'arn:aws:health:[^:]*:[^:]*:event/[%w-]+'")
end

--  
function M.eventArn(str)
	M.AsserteventArn(str)
	return str
end

function M.AssertentityArn(str)
	assert(str)
	assert(type(str) == "string", "Expected entityArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
end

--  
function M.entityArn(str)
	M.AssertentityArn(str)
	return str
end

function M.AsserteventAggregateField(str)
	assert(str)
	assert(type(str) == "string", "Expected eventAggregateField to be of type 'string'")
end

--  
function M.eventAggregateField(str)
	M.AsserteventAggregateField(str)
	return str
end

function M.Assertregion(str)
	assert(str)
	assert(type(str) == "string", "Expected region to be of type 'string'")
	assert(str:match("[^:/]{2,25}"), "Expected string to match pattern '[^:/]{2,25}'")
end

--  
function M.region(str)
	M.Assertregion(str)
	return str
end

function M.AssertnextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected nextToken to be of type 'string'")
	assert(str:match("[a-zA-Z0-9=/+_.-]{4,512}"), "Expected string to match pattern '[a-zA-Z0-9=/+_.-]{4,512}'")
end

--  
function M.nextToken(str)
	M.AssertnextToken(str)
	return str
end

function M.AssertmetadataKey(str)
	assert(str)
	assert(type(str) == "string", "Expected metadataKey to be of type 'string'")
end

--  
function M.metadataKey(str)
	M.AssertmetadataKey(str)
	return str
end

function M.AssertmaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected maxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.maxResults(integer)
	M.AssertmaxResults(integer)
	return integer
end

function M.Assertcount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.count(integer)
	M.Assertcount(integer)
	return integer
end

function M.AsserttagSet(map)
	assert(map)
	assert(type(map) == "table", "Expected tagSet to be of type 'table'")
	for k,v in pairs(map) do
		M.AsserttagKey(k)
		M.AsserttagValue(v)
	end
end

function M.tagSet(map)
	M.AsserttagSet(map)
	return map
end

function M.AsserteventMetadata(map)
	assert(map)
	assert(type(map) == "table", "Expected eventMetadata to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertmetadataKey(k)
		M.AssertmetadataValue(v)
	end
end

function M.eventMetadata(map)
	M.AsserteventMetadata(map)
	return map
end

function M.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	M.Asserttimestamp(timestamp)
	return timestamp
end

function M.AssertDescribeEventDetailsFailedSet(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeEventDetailsFailedSet to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventDetailsErrorItem(v)
	end
end

--  
-- List of EventDetailsErrorItem objects
function M.DescribeEventDetailsFailedSet(list)
	M.AssertDescribeEventDetailsFailedSet(list)
	return list
end

function M.AssertentityArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected entityArnList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertentityArn(v)
	end
end

--  
-- List of entityArn objects
function M.entityArnList(list)
	M.AssertentityArnList(list)
	return list
end

function M.AssertEventTypeCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypeCodeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AsserteventTypeCode(v)
	end
end

--  
-- List of eventTypeCode objects
function M.EventTypeCodeList(list)
	M.AssertEventTypeCodeList(list)
	return list
end

function M.AssertEventTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventType(v)
	end
end

--  
-- List of EventType objects
function M.EventTypeList(list)
	M.AssertEventTypeList(list)
	return list
end

function M.AsserttagFilter(list)
	assert(list)
	assert(type(list) == "table", "Expected tagFilter to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AsserttagSet(v)
	end
end

--  
-- List of tagSet objects
function M.tagFilter(list)
	M.AsserttagFilter(list)
	return list
end

function M.AssertavailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected availabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertavailabilityZone(v)
	end
end

--  
-- List of availabilityZone objects
function M.availabilityZones(list)
	M.AssertavailabilityZones(list)
	return list
end

function M.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	M.AssertEventList(list)
	return list
end

function M.AssertdateTimeRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected dateTimeRangeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertDateTimeRange(v)
	end
end

--  
-- List of DateTimeRange objects
function M.dateTimeRangeList(list)
	M.AssertdateTimeRangeList(list)
	return list
end

function M.AssertserviceList(list)
	assert(list)
	assert(type(list) == "table", "Expected serviceList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.Assertservice(v)
	end
end

--  
-- List of service objects
function M.serviceList(list)
	M.AssertserviceList(list)
	return list
end

function M.AsserteventArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected eventArnList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AsserteventArn(v)
	end
end

--  
-- List of eventArn objects
function M.eventArnList(list)
	M.AsserteventArnList(list)
	return list
end

function M.AssertEventAggregateList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventAggregateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventAggregate(v)
	end
end

--  
-- List of EventAggregate objects
function M.EventAggregateList(list)
	M.AssertEventAggregateList(list)
	return list
end

function M.AsserteventTypeCategoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected eventTypeCategoryList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AsserteventTypeCategory(v)
	end
end

--  
-- List of eventTypeCategory objects
function M.eventTypeCategoryList(list)
	M.AsserteventTypeCategoryList(list)
	return list
end

function M.AssertregionList(list)
	assert(list)
	assert(type(list) == "table", "Expected regionList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.Assertregion(v)
	end
end

--  
-- List of region objects
function M.regionList(list)
	M.AssertregionList(list)
	return list
end

function M.AssertEventArnsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventArnsList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AsserteventArn(v)
	end
end

--  
-- List of eventArn objects
function M.EventArnsList(list)
	M.AssertEventArnsList(list)
	return list
end

function M.AssertentityValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected entityValueList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertentityValue(v)
	end
end

--  
-- List of entityValue objects
function M.entityValueList(list)
	M.AssertentityValueList(list)
	return list
end

function M.AssertEntityList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAffectedEntity(v)
	end
end

--  
-- List of AffectedEntity objects
function M.EntityList(list)
	M.AssertEntityList(list)
	return list
end

function M.AssertEventTypeCategoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypeCategoryList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AsserteventTypeCategory(v)
	end
end

--  
-- List of eventTypeCategory objects
function M.EventTypeCategoryList(list)
	M.AssertEventTypeCategoryList(list)
	return list
end

function M.AssertentityStatusCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected entityStatusCodeList to be of type ''table")
	assert(#list <= 3, "Expected list to be contain 3 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertentityStatusCode(v)
	end
end

--  
-- List of entityStatusCode objects
function M.entityStatusCodeList(list)
	M.AssertentityStatusCodeList(list)
	return list
end

function M.AsserteventStatusCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected eventStatusCodeList to be of type ''table")
	assert(#list <= 6, "Expected list to be contain 6 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AsserteventStatusCode(v)
	end
end

--  
-- List of eventStatusCode objects
function M.eventStatusCodeList(list)
	M.AsserteventStatusCodeList(list)
	return list
end

function M.AssertEntityAggregateList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntityAggregateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEntityAggregate(v)
	end
end

--  
-- List of EntityAggregate objects
function M.EntityAggregateList(list)
	M.AssertEntityAggregateList(list)
	return list
end

function M.AsserteventTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected eventTypeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AsserteventType(v)
	end
end

--  
-- List of eventType objects
function M.eventTypeList(list)
	M.AsserteventTypeList(list)
	return list
end

function M.AssertDescribeEventDetailsSuccessfulSet(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeEventDetailsSuccessfulSet to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventDetails(v)
	end
end

--  
-- List of EventDetails objects
function M.DescribeEventDetailsSuccessfulSet(list)
	M.AssertDescribeEventDetailsSuccessfulSet(list)
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
			return "health.amazonaws.com"
		end
	end
	local ss = { "health" }
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
--- DescribeAffectedEntities
-- @param DescribeAffectedEntitiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAffectedEntitiesAsync(DescribeAffectedEntitiesRequest, cb)
	assert(DescribeAffectedEntitiesRequest, "You must provide a DescribeAffectedEntitiesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeAffectedEntities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAffectedEntitiesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEventDetails
-- @param DescribeEventDetailsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventDetailsAsync(DescribeEventDetailsRequest, cb)
	assert(DescribeEventDetailsRequest, "You must provide a DescribeEventDetailsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEventDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventDetailsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEventTypes
-- @param DescribeEventTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventTypesAsync(DescribeEventTypesRequest, cb)
	assert(DescribeEventTypesRequest, "You must provide a DescribeEventTypesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEventTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventTypesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEvents
-- @param DescribeEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventsAsync(DescribeEventsRequest, cb)
	assert(DescribeEventsRequest, "You must provide a DescribeEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEntityAggregates
-- @param DescribeEntityAggregatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEntityAggregatesAsync(DescribeEntityAggregatesRequest, cb)
	assert(DescribeEntityAggregatesRequest, "You must provide a DescribeEntityAggregatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEntityAggregates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEntityAggregatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEventAggregates
-- @param DescribeEventAggregatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventAggregatesAsync(DescribeEventAggregatesRequest, cb)
	assert(DescribeEventAggregatesRequest, "You must provide a DescribeEventAggregatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEventAggregates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEventAggregatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
