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

local keys = {}
local asserts = {}

keys.UnsupportedLocale = { ["message"] = true, nil }

function asserts.AssertUnsupportedLocale(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedLocale to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedLocale[k], "UnsupportedLocale contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedLocale
-- <p>The specified locale is not supported.</p>
-- @param _message [string] 
function M.UnsupportedLocale(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedLocale")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnsupportedLocale(t)
	return t
end

keys.DescribeEventAggregatesResponse = { ["nextToken"] = true, ["eventAggregates"] = true, nil }

function asserts.AssertDescribeEventAggregatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventAggregatesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertnextToken(struct["nextToken"]) end
	if struct["eventAggregates"] then asserts.AssertEventAggregateList(struct["eventAggregates"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventAggregatesResponse[k], "DescribeEventAggregatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventAggregatesResponse
--  
-- @param _nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param _eventAggregates [EventAggregateList] <p>The number of events in each category that meet the optional filter criteria.</p>
function M.DescribeEventAggregatesResponse(_nextToken, _eventAggregates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventAggregatesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["eventAggregates"] = _eventAggregates,
	}
	asserts.AssertDescribeEventAggregatesResponse(t)
	return t
end

keys.EntityFilter = { ["eventArns"] = true, ["statusCodes"] = true, ["entityValues"] = true, ["entityArns"] = true, ["lastUpdatedTimes"] = true, ["tags"] = true, nil }

function asserts.AssertEntityFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityFilter to be of type 'table'")
	assert(struct["eventArns"], "Expected key eventArns to exist in table")
	if struct["eventArns"] then asserts.AsserteventArnList(struct["eventArns"]) end
	if struct["statusCodes"] then asserts.AssertentityStatusCodeList(struct["statusCodes"]) end
	if struct["entityValues"] then asserts.AssertentityValueList(struct["entityValues"]) end
	if struct["entityArns"] then asserts.AssertentityArnList(struct["entityArns"]) end
	if struct["lastUpdatedTimes"] then asserts.AssertdateTimeRangeList(struct["lastUpdatedTimes"]) end
	if struct["tags"] then asserts.AsserttagFilter(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityFilter[k], "EntityFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityFilter
-- <p>The values to use to filter results from the <a>DescribeAffectedEntities</a> operation.</p>
-- @param _eventArns [eventArnList] <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"</code> </p>
-- @param _statusCodes [entityStatusCodeList] <p>A list of entity status codes (<code>IMPAIRED</code>, <code>UNIMPAIRED</code>, or <code>UNKNOWN</code>).</p>
-- @param _entityValues [entityValueList] <p>A list of IDs for affected entities.</p>
-- @param _entityArns [entityArnList] <p>A list of entity ARNs (unique identifiers).</p>
-- @param _lastUpdatedTimes [dateTimeRangeList] <p>A list of the most recent dates and times that the entity was updated.</p>
-- @param _tags [tagFilter] <p>A map of entity tags attached to the affected entity.</p>
-- Required parameter: eventArns
function M.EntityFilter(_eventArns, _statusCodes, _entityValues, _entityArns, _lastUpdatedTimes, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityFilter")
	local t = { 
		["eventArns"] = _eventArns,
		["statusCodes"] = _statusCodes,
		["entityValues"] = _entityValues,
		["entityArns"] = _entityArns,
		["lastUpdatedTimes"] = _lastUpdatedTimes,
		["tags"] = _tags,
	}
	asserts.AssertEntityFilter(t)
	return t
end

keys.EventDetails = { ["eventMetadata"] = true, ["event"] = true, ["eventDescription"] = true, nil }

function asserts.AssertEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDetails to be of type 'table'")
	if struct["eventMetadata"] then asserts.AsserteventMetadata(struct["eventMetadata"]) end
	if struct["event"] then asserts.AssertEvent(struct["event"]) end
	if struct["eventDescription"] then asserts.AssertEventDescription(struct["eventDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDetails[k], "EventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDetails
-- <p>Detailed information about an event. A combination of an <a>Event</a> object, an <a>EventDescription</a> object, and additional metadata about the event. Returned by the <a>DescribeEventDetails</a> operation.</p>
-- @param _eventMetadata [eventMetadata] <p>Additional metadata about the event.</p>
-- @param _event [Event] <p>Summary information about the event.</p>
-- @param _eventDescription [EventDescription] <p>The most recent description of the event.</p>
function M.EventDetails(_eventMetadata, _event, _eventDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDetails")
	local t = { 
		["eventMetadata"] = _eventMetadata,
		["event"] = _event,
		["eventDescription"] = _eventDescription,
	}
	asserts.AssertEventDetails(t)
	return t
end

keys.DescribeEventTypesResponse = { ["eventTypes"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeEventTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventTypesResponse to be of type 'table'")
	if struct["eventTypes"] then asserts.AssertEventTypeList(struct["eventTypes"]) end
	if struct["nextToken"] then asserts.AssertnextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventTypesResponse[k], "DescribeEventTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventTypesResponse
--  
-- @param _eventTypes [EventTypeList] <p>A list of event types that match the filter criteria. Event types have a category (<code>issue</code>, <code>accountNotification</code>, or <code>scheduledChange</code>), a service (for example, <code>EC2</code>, <code>RDS</code>, <code>DATAPIPELINE</code>, <code>BILLING</code>), and a code (in the format <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>
-- @param _nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
function M.DescribeEventTypesResponse(_eventTypes, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventTypesResponse")
	local t = { 
		["eventTypes"] = _eventTypes,
		["nextToken"] = _nextToken,
	}
	asserts.AssertDescribeEventTypesResponse(t)
	return t
end

keys.DescribeAffectedEntitiesRequest = { ["filter"] = true, ["locale"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeAffectedEntitiesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAffectedEntitiesRequest to be of type 'table'")
	assert(struct["filter"], "Expected key filter to exist in table")
	if struct["filter"] then asserts.AssertEntityFilter(struct["filter"]) end
	if struct["locale"] then asserts.Assertlocale(struct["locale"]) end
	if struct["nextToken"] then asserts.AssertnextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertmaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAffectedEntitiesRequest[k], "DescribeAffectedEntitiesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAffectedEntitiesRequest
--  
-- @param _filter [EntityFilter] <p>Values to narrow the results returned. At least one event ARN is required. </p>
-- @param _locale [locale] <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
-- @param _nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param _maxResults [maxResults] <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
-- Required parameter: filter
function M.DescribeAffectedEntitiesRequest(_filter, _locale, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAffectedEntitiesRequest")
	local t = { 
		["filter"] = _filter,
		["locale"] = _locale,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertDescribeAffectedEntitiesRequest(t)
	return t
end

keys.AffectedEntity = { ["entityValue"] = true, ["lastUpdatedTime"] = true, ["tags"] = true, ["entityArn"] = true, ["awsAccountId"] = true, ["eventArn"] = true, ["statusCode"] = true, nil }

function asserts.AssertAffectedEntity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AffectedEntity to be of type 'table'")
	if struct["entityValue"] then asserts.AssertentityValue(struct["entityValue"]) end
	if struct["lastUpdatedTime"] then asserts.Asserttimestamp(struct["lastUpdatedTime"]) end
	if struct["tags"] then asserts.AsserttagSet(struct["tags"]) end
	if struct["entityArn"] then asserts.AssertentityArn(struct["entityArn"]) end
	if struct["awsAccountId"] then asserts.AssertaccountId(struct["awsAccountId"]) end
	if struct["eventArn"] then asserts.AsserteventArn(struct["eventArn"]) end
	if struct["statusCode"] then asserts.AssertentityStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.AffectedEntity[k], "AffectedEntity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AffectedEntity
-- <p>Information about an entity that is affected by a Health event.</p>
-- @param _entityValue [entityValue] <p>The ID of the affected entity.</p>
-- @param _lastUpdatedTime [timestamp] <p>The most recent time that the entity was updated.</p>
-- @param _tags [tagSet] <p>A map of entity tags attached to the affected entity.</p>
-- @param _entityArn [entityArn] <p>The unique identifier for the entity. Format: <code>arn:aws:health:<i>entity-region</i>:<i>aws-account</i>:entity/<i>entity-id</i> </code>. Example: <code>arn:aws:health:us-east-1:111222333444:entity/AVh5GGT7ul1arKr1sE1K</code> </p>
-- @param _awsAccountId [accountId] <p>The 12-digit AWS account number that contains the affected entity.</p>
-- @param _eventArn [eventArn] <p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331</code> </p>
-- @param _statusCode [entityStatusCode] <p>The most recent status of the entity affected by the event. The possible values are <code>IMPAIRED</code>, <code>UNIMPAIRED</code>, and <code>UNKNOWN</code>.</p>
function M.AffectedEntity(_entityValue, _lastUpdatedTime, _tags, _entityArn, _awsAccountId, _eventArn, _statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AffectedEntity")
	local t = { 
		["entityValue"] = _entityValue,
		["lastUpdatedTime"] = _lastUpdatedTime,
		["tags"] = _tags,
		["entityArn"] = _entityArn,
		["awsAccountId"] = _awsAccountId,
		["eventArn"] = _eventArn,
		["statusCode"] = _statusCode,
	}
	asserts.AssertAffectedEntity(t)
	return t
end

keys.DescribeEventAggregatesRequest = { ["filter"] = true, ["aggregateField"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeEventAggregatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventAggregatesRequest to be of type 'table'")
	assert(struct["aggregateField"], "Expected key aggregateField to exist in table")
	if struct["filter"] then asserts.AssertEventFilter(struct["filter"]) end
	if struct["aggregateField"] then asserts.AsserteventAggregateField(struct["aggregateField"]) end
	if struct["nextToken"] then asserts.AssertnextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertmaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventAggregatesRequest[k], "DescribeEventAggregatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventAggregatesRequest
--  
-- @param _filter [EventFilter] <p>Values to narrow the results returned.</p>
-- @param _aggregateField [eventAggregateField] <p>The only currently supported value is <code>eventTypeCategory</code>.</p>
-- @param _nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param _maxResults [maxResults] <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
-- Required parameter: aggregateField
function M.DescribeEventAggregatesRequest(_filter, _aggregateField, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventAggregatesRequest")
	local t = { 
		["filter"] = _filter,
		["aggregateField"] = _aggregateField,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertDescribeEventAggregatesRequest(t)
	return t
end

keys.DescribeEventsResponse = { ["nextToken"] = true, ["events"] = true, nil }

function asserts.AssertDescribeEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertnextToken(struct["nextToken"]) end
	if struct["events"] then asserts.AssertEventList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsResponse[k], "DescribeEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsResponse
--  
-- @param _nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param _events [EventList] <p>The events that match the specified filter criteria.</p>
function M.DescribeEventsResponse(_nextToken, _events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["events"] = _events,
	}
	asserts.AssertDescribeEventsResponse(t)
	return t
end

keys.EventDescription = { ["latestDescription"] = true, nil }

function asserts.AssertEventDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDescription to be of type 'table'")
	if struct["latestDescription"] then asserts.AsserteventDescription(struct["latestDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDescription[k], "EventDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDescription
-- <p>The detailed description of the event. Included in the information returned by the <a>DescribeEventDetails</a> operation.</p>
-- @param _latestDescription [eventDescription] <p>The most recent description of the event.</p>
function M.EventDescription(_latestDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDescription")
	local t = { 
		["latestDescription"] = _latestDescription,
	}
	asserts.AssertEventDescription(t)
	return t
end

keys.EventType = { ["category"] = true, ["code"] = true, ["service"] = true, nil }

function asserts.AssertEventType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventType to be of type 'table'")
	if struct["category"] then asserts.AsserteventTypeCategory(struct["category"]) end
	if struct["code"] then asserts.AsserteventTypeCode(struct["code"]) end
	if struct["service"] then asserts.Assertservice(struct["service"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventType[k], "EventType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventType
-- <p>Metadata about a type of event that is reported by AWS Health. Data consists of the category (for example, <code>issue</code>), the service (for example, <code>EC2</code>), and the event type code (for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>).</p>
-- @param _category [eventTypeCategory] <p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>
-- @param _code [eventTypeCode] <p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>
-- @param _service [service] <p>The AWS service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
function M.EventType(_category, _code, _service, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventType")
	local t = { 
		["category"] = _category,
		["code"] = _code,
		["service"] = _service,
	}
	asserts.AssertEventType(t)
	return t
end

keys.DescribeEntityAggregatesResponse = { ["entityAggregates"] = true, nil }

function asserts.AssertDescribeEntityAggregatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEntityAggregatesResponse to be of type 'table'")
	if struct["entityAggregates"] then asserts.AssertEntityAggregateList(struct["entityAggregates"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEntityAggregatesResponse[k], "DescribeEntityAggregatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEntityAggregatesResponse
--  
-- @param _entityAggregates [EntityAggregateList] <p>The number of entities that are affected by each of the specified events.</p>
function M.DescribeEntityAggregatesResponse(_entityAggregates, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEntityAggregatesResponse")
	local t = { 
		["entityAggregates"] = _entityAggregates,
	}
	asserts.AssertDescribeEntityAggregatesResponse(t)
	return t
end

keys.EventDetailsErrorItem = { ["errorMessage"] = true, ["eventArn"] = true, ["errorName"] = true, nil }

function asserts.AssertEventDetailsErrorItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventDetailsErrorItem to be of type 'table'")
	if struct["errorMessage"] then asserts.Assertstring(struct["errorMessage"]) end
	if struct["eventArn"] then asserts.AsserteventArn(struct["eventArn"]) end
	if struct["errorName"] then asserts.Assertstring(struct["errorName"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventDetailsErrorItem[k], "EventDetailsErrorItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventDetailsErrorItem
-- <p>Error information returned when a <a>DescribeEventDetails</a> operation cannot find a specified event.</p>
-- @param _errorMessage [string] <p>A message that describes the error.</p>
-- @param _eventArn [eventArn] <p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331</code> </p>
-- @param _errorName [string] <p>The name of the error.</p>
function M.EventDetailsErrorItem(_errorMessage, _eventArn, _errorName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventDetailsErrorItem")
	local t = { 
		["errorMessage"] = _errorMessage,
		["eventArn"] = _eventArn,
		["errorName"] = _errorName,
	}
	asserts.AssertEventDetailsErrorItem(t)
	return t
end

keys.EventTypeFilter = { ["eventTypeCodes"] = true, ["services"] = true, ["eventTypeCategories"] = true, nil }

function asserts.AssertEventTypeFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventTypeFilter to be of type 'table'")
	if struct["eventTypeCodes"] then asserts.AssertEventTypeCodeList(struct["eventTypeCodes"]) end
	if struct["services"] then asserts.AssertserviceList(struct["services"]) end
	if struct["eventTypeCategories"] then asserts.AssertEventTypeCategoryList(struct["eventTypeCategories"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventTypeFilter[k], "EventTypeFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventTypeFilter
-- <p>The values to use to filter results from the <a>DescribeEventTypes</a> operation.</p>
-- @param _eventTypeCodes [EventTypeCodeList] <p>A list of event type codes.</p>
-- @param _services [serviceList] <p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
-- @param _eventTypeCategories [EventTypeCategoryList] <p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>
function M.EventTypeFilter(_eventTypeCodes, _services, _eventTypeCategories, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventTypeFilter")
	local t = { 
		["eventTypeCodes"] = _eventTypeCodes,
		["services"] = _services,
		["eventTypeCategories"] = _eventTypeCategories,
	}
	asserts.AssertEventTypeFilter(t)
	return t
end

keys.DateTimeRange = { ["to"] = true, ["from"] = true, nil }

function asserts.AssertDateTimeRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DateTimeRange to be of type 'table'")
	if struct["to"] then asserts.Asserttimestamp(struct["to"]) end
	if struct["from"] then asserts.Asserttimestamp(struct["from"]) end
	for k,_ in pairs(struct) do
		assert(keys.DateTimeRange[k], "DateTimeRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DateTimeRange
-- <p>A range of dates and times that is used by the <a>EventFilter</a> and <a>EntityFilter</a> objects. If <code>from</code> is set and <code>to</code> is set: match items where the timestamp (<code>startTime</code>, <code>endTime</code>, or <code>lastUpdatedTime</code>) is between <code>from</code> and <code>to</code> inclusive. If <code>from</code> is set and <code>to</code> is not set: match items where the timestamp value is equal to or after <code>from</code>. If <code>from</code> is not set and <code>to</code> is set: match items where the timestamp value is equal to or before <code>to</code>.</p>
-- @param _to [timestamp] <p>The ending date and time of a time range.</p>
-- @param _from [timestamp] <p>The starting date and time of a time range.</p>
function M.DateTimeRange(_to, _from, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DateTimeRange")
	local t = { 
		["to"] = _to,
		["from"] = _from,
	}
	asserts.AssertDateTimeRange(t)
	return t
end

keys.InvalidPaginationToken = { ["message"] = true, nil }

function asserts.AssertInvalidPaginationToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPaginationToken to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidPaginationToken[k], "InvalidPaginationToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPaginationToken
-- <p>The specified pagination token (<code>nextToken</code>) is not valid.</p>
-- @param _message [string] 
function M.InvalidPaginationToken(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPaginationToken")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidPaginationToken(t)
	return t
end

keys.EventFilter = { ["startTimes"] = true, ["eventArns"] = true, ["entityValues"] = true, ["eventTypeCodes"] = true, ["eventTypeCategories"] = true, ["endTimes"] = true, ["regions"] = true, ["eventStatusCodes"] = true, ["entityArns"] = true, ["services"] = true, ["availabilityZones"] = true, ["lastUpdatedTimes"] = true, ["tags"] = true, nil }

function asserts.AssertEventFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventFilter to be of type 'table'")
	if struct["startTimes"] then asserts.AssertdateTimeRangeList(struct["startTimes"]) end
	if struct["eventArns"] then asserts.AsserteventArnList(struct["eventArns"]) end
	if struct["entityValues"] then asserts.AssertentityValueList(struct["entityValues"]) end
	if struct["eventTypeCodes"] then asserts.AsserteventTypeList(struct["eventTypeCodes"]) end
	if struct["eventTypeCategories"] then asserts.AsserteventTypeCategoryList(struct["eventTypeCategories"]) end
	if struct["endTimes"] then asserts.AssertdateTimeRangeList(struct["endTimes"]) end
	if struct["regions"] then asserts.AssertregionList(struct["regions"]) end
	if struct["eventStatusCodes"] then asserts.AsserteventStatusCodeList(struct["eventStatusCodes"]) end
	if struct["entityArns"] then asserts.AssertentityArnList(struct["entityArns"]) end
	if struct["services"] then asserts.AssertserviceList(struct["services"]) end
	if struct["availabilityZones"] then asserts.AssertavailabilityZones(struct["availabilityZones"]) end
	if struct["lastUpdatedTimes"] then asserts.AssertdateTimeRangeList(struct["lastUpdatedTimes"]) end
	if struct["tags"] then asserts.AsserttagFilter(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventFilter[k], "EventFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventFilter
-- <p>The values to use to filter results from the <a>DescribeEvents</a> and <a>DescribeEventAggregates</a> operations.</p>
-- @param _startTimes [dateTimeRangeList] <p>A list of dates and times that the event began.</p>
-- @param _eventArns [eventArnList] <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"</code> </p>
-- @param _entityValues [entityValueList] <p>A list of entity identifiers, such as EC2 instance IDs (<code>i-34ab692e</code>) or EBS volumes (<code>vol-426ab23e</code>).</p>
-- @param _eventTypeCodes [eventTypeList] <p>A list of unique identifiers for event types. For example, <code>"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED"</code> </p>
-- @param _eventTypeCategories [eventTypeCategoryList] <p>A list of event type category codes (<code>issue</code>, <code>scheduledChange</code>, or <code>accountNotification</code>).</p>
-- @param _endTimes [dateTimeRangeList] <p>A list of dates and times that the event ended.</p>
-- @param _regions [regionList] <p>A list of AWS regions.</p>
-- @param _eventStatusCodes [eventStatusCodeList] <p>A list of event status codes.</p>
-- @param _entityArns [entityArnList] <p>A list of entity ARNs (unique identifiers).</p>
-- @param _services [serviceList] <p>The AWS services associated with the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
-- @param _availabilityZones [availabilityZones] <p>A list of AWS availability zones.</p>
-- @param _lastUpdatedTimes [dateTimeRangeList] <p>A list of dates and times that the event was last updated.</p>
-- @param _tags [tagFilter] <p>A map of entity tags attached to the affected entity.</p>
function M.EventFilter(_startTimes, _eventArns, _entityValues, _eventTypeCodes, _eventTypeCategories, _endTimes, _regions, _eventStatusCodes, _entityArns, _services, _availabilityZones, _lastUpdatedTimes, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventFilter")
	local t = { 
		["startTimes"] = _startTimes,
		["eventArns"] = _eventArns,
		["entityValues"] = _entityValues,
		["eventTypeCodes"] = _eventTypeCodes,
		["eventTypeCategories"] = _eventTypeCategories,
		["endTimes"] = _endTimes,
		["regions"] = _regions,
		["eventStatusCodes"] = _eventStatusCodes,
		["entityArns"] = _entityArns,
		["services"] = _services,
		["availabilityZones"] = _availabilityZones,
		["lastUpdatedTimes"] = _lastUpdatedTimes,
		["tags"] = _tags,
	}
	asserts.AssertEventFilter(t)
	return t
end

keys.DescribeAffectedEntitiesResponse = { ["entities"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeAffectedEntitiesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAffectedEntitiesResponse to be of type 'table'")
	if struct["entities"] then asserts.AssertEntityList(struct["entities"]) end
	if struct["nextToken"] then asserts.AssertnextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAffectedEntitiesResponse[k], "DescribeAffectedEntitiesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAffectedEntitiesResponse
--  
-- @param _entities [EntityList] <p>The entities that match the filter criteria.</p>
-- @param _nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
function M.DescribeAffectedEntitiesResponse(_entities, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAffectedEntitiesResponse")
	local t = { 
		["entities"] = _entities,
		["nextToken"] = _nextToken,
	}
	asserts.AssertDescribeAffectedEntitiesResponse(t)
	return t
end

keys.DescribeEventTypesRequest = { ["filter"] = true, ["locale"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeEventTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventTypesRequest to be of type 'table'")
	if struct["filter"] then asserts.AssertEventTypeFilter(struct["filter"]) end
	if struct["locale"] then asserts.Assertlocale(struct["locale"]) end
	if struct["nextToken"] then asserts.AssertnextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertmaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventTypesRequest[k], "DescribeEventTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventTypesRequest
--  
-- @param _filter [EventTypeFilter] <p>Values to narrow the results returned.</p>
-- @param _locale [locale] <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
-- @param _nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param _maxResults [maxResults] <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
function M.DescribeEventTypesRequest(_filter, _locale, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventTypesRequest")
	local t = { 
		["filter"] = _filter,
		["locale"] = _locale,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertDescribeEventTypesRequest(t)
	return t
end

keys.DescribeEventDetailsRequest = { ["locale"] = true, ["eventArns"] = true, nil }

function asserts.AssertDescribeEventDetailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventDetailsRequest to be of type 'table'")
	assert(struct["eventArns"], "Expected key eventArns to exist in table")
	if struct["locale"] then asserts.Assertlocale(struct["locale"]) end
	if struct["eventArns"] then asserts.AsserteventArnList(struct["eventArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventDetailsRequest[k], "DescribeEventDetailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventDetailsRequest
--  
-- @param _locale [locale] <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
-- @param _eventArns [eventArnList] <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"</code> </p>
-- Required parameter: eventArns
function M.DescribeEventDetailsRequest(_locale, _eventArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventDetailsRequest")
	local t = { 
		["locale"] = _locale,
		["eventArns"] = _eventArns,
	}
	asserts.AssertDescribeEventDetailsRequest(t)
	return t
end

keys.DescribeEventDetailsResponse = { ["failedSet"] = true, ["successfulSet"] = true, nil }

function asserts.AssertDescribeEventDetailsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventDetailsResponse to be of type 'table'")
	if struct["failedSet"] then asserts.AssertDescribeEventDetailsFailedSet(struct["failedSet"]) end
	if struct["successfulSet"] then asserts.AssertDescribeEventDetailsSuccessfulSet(struct["successfulSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventDetailsResponse[k], "DescribeEventDetailsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventDetailsResponse
--  
-- @param _failedSet [DescribeEventDetailsFailedSet] <p>Error messages for any events that could not be retrieved.</p>
-- @param _successfulSet [DescribeEventDetailsSuccessfulSet] <p>Information about the events that could be retrieved.</p>
function M.DescribeEventDetailsResponse(_failedSet, _successfulSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventDetailsResponse")
	local t = { 
		["failedSet"] = _failedSet,
		["successfulSet"] = _successfulSet,
	}
	asserts.AssertDescribeEventDetailsResponse(t)
	return t
end

keys.DescribeEventsRequest = { ["filter"] = true, ["locale"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertDescribeEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventsRequest to be of type 'table'")
	if struct["filter"] then asserts.AssertEventFilter(struct["filter"]) end
	if struct["locale"] then asserts.Assertlocale(struct["locale"]) end
	if struct["nextToken"] then asserts.AssertnextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertmaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventsRequest[k], "DescribeEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventsRequest
--  
-- @param _filter [EventFilter] <p>Values to narrow the results returned.</p>
-- @param _locale [locale] <p>The locale (language) to return information in. English (en) is the default and the only supported value at this time.</p>
-- @param _nextToken [nextToken] <p>If the results of a search are large, only a portion of the results are returned, and a <code>nextToken</code> pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.</p>
-- @param _maxResults [maxResults] <p>The maximum number of items to return in one batch, between 10 and 100, inclusive.</p>
function M.DescribeEventsRequest(_filter, _locale, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEventsRequest")
	local t = { 
		["filter"] = _filter,
		["locale"] = _locale,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertDescribeEventsRequest(t)
	return t
end

keys.EntityAggregate = { ["count"] = true, ["eventArn"] = true, nil }

function asserts.AssertEntityAggregate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EntityAggregate to be of type 'table'")
	if struct["count"] then asserts.Assertcount(struct["count"]) end
	if struct["eventArn"] then asserts.AsserteventArn(struct["eventArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.EntityAggregate[k], "EntityAggregate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EntityAggregate
-- <p>The number of entities that are affected by one or more events. Returned by the <a>DescribeEntityAggregates</a> operation.</p>
-- @param _count [count] <p>The number entities that match the criteria for the specified events.</p>
-- @param _eventArn [eventArn] <p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331</code> </p>
function M.EntityAggregate(_count, _eventArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EntityAggregate")
	local t = { 
		["count"] = _count,
		["eventArn"] = _eventArn,
	}
	asserts.AssertEntityAggregate(t)
	return t
end

keys.DescribeEntityAggregatesRequest = { ["eventArns"] = true, nil }

function asserts.AssertDescribeEntityAggregatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEntityAggregatesRequest to be of type 'table'")
	if struct["eventArns"] then asserts.AssertEventArnsList(struct["eventArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEntityAggregatesRequest[k], "DescribeEntityAggregatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEntityAggregatesRequest
--  
-- @param _eventArns [EventArnsList] <p>A list of event ARNs (unique identifiers). For example: <code>"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331", "arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz"</code> </p>
function M.DescribeEntityAggregatesRequest(_eventArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEntityAggregatesRequest")
	local t = { 
		["eventArns"] = _eventArns,
	}
	asserts.AssertDescribeEntityAggregatesRequest(t)
	return t
end

keys.EventAggregate = { ["count"] = true, ["aggregateValue"] = true, nil }

function asserts.AssertEventAggregate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventAggregate to be of type 'table'")
	if struct["count"] then asserts.Assertcount(struct["count"]) end
	if struct["aggregateValue"] then asserts.AssertaggregateValue(struct["aggregateValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventAggregate[k], "EventAggregate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventAggregate
-- <p>The number of events of each issue type. Returned by the <a>DescribeEventAggregates</a> operation.</p>
-- @param _count [count] <p>The number of events of the associated issue type.</p>
-- @param _aggregateValue [aggregateValue] <p>The issue type for the associated count.</p>
function M.EventAggregate(_count, _aggregateValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventAggregate")
	local t = { 
		["count"] = _count,
		["aggregateValue"] = _aggregateValue,
	}
	asserts.AssertEventAggregate(t)
	return t
end

keys.Event = { ["availabilityZone"] = true, ["lastUpdatedTime"] = true, ["service"] = true, ["eventTypeCode"] = true, ["startTime"] = true, ["eventTypeCategory"] = true, ["endTime"] = true, ["region"] = true, ["arn"] = true, ["statusCode"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["availabilityZone"] then asserts.AssertavailabilityZone(struct["availabilityZone"]) end
	if struct["lastUpdatedTime"] then asserts.Asserttimestamp(struct["lastUpdatedTime"]) end
	if struct["service"] then asserts.Assertservice(struct["service"]) end
	if struct["eventTypeCode"] then asserts.AsserteventTypeCode(struct["eventTypeCode"]) end
	if struct["startTime"] then asserts.Asserttimestamp(struct["startTime"]) end
	if struct["eventTypeCategory"] then asserts.AsserteventTypeCategory(struct["eventTypeCategory"]) end
	if struct["endTime"] then asserts.Asserttimestamp(struct["endTime"]) end
	if struct["region"] then asserts.Assertregion(struct["region"]) end
	if struct["arn"] then asserts.AsserteventArn(struct["arn"]) end
	if struct["statusCode"] then asserts.AsserteventStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Summary information about an event, returned by the <a>DescribeEvents</a> operation. The <a>DescribeEventDetails</a> operation also returns this information, as well as the <a>EventDescription</a> and additional event metadata.</p>
-- @param _availabilityZone [availabilityZone] <p>The AWS Availability Zone of the event. For example, us-east-1a.</p>
-- @param _lastUpdatedTime [timestamp] <p>The most recent date and time that the event was updated.</p>
-- @param _service [service] <p>The AWS service that is affected by the event. For example, <code>EC2</code>, <code>RDS</code>.</p>
-- @param _eventTypeCode [eventTypeCode] <p>The unique identifier for the event type. The format is <code>AWS_<i>SERVICE</i>_<i>DESCRIPTION</i> </code>; for example, <code>AWS_EC2_SYSTEM_MAINTENANCE_EVENT</code>.</p>
-- @param _startTime [timestamp] <p>The date and time that the event began.</p>
-- @param _eventTypeCategory [eventTypeCategory] <p>The </p>
-- @param _endTime [timestamp] <p>The date and time that the event ended.</p>
-- @param _region [region] <p>The AWS region name of the event.</p>
-- @param _arn [eventArn] <p>The unique identifier for the event. Format: <code>arn:aws:health:<i>event-region</i>::event/<i>EVENT_TYPE_PLUS_ID</i> </code>. Example: <code>arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331</code> </p>
-- @param _statusCode [eventStatusCode] <p>The most recent status of the event. Possible values are <code>open</code>, <code>closed</code>, and <code>upcoming</code>.</p>
function M.Event(_availabilityZone, _lastUpdatedTime, _service, _eventTypeCode, _startTime, _eventTypeCategory, _endTime, _region, _arn, _statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["availabilityZone"] = _availabilityZone,
		["lastUpdatedTime"] = _lastUpdatedTime,
		["service"] = _service,
		["eventTypeCode"] = _eventTypeCode,
		["startTime"] = _startTime,
		["eventTypeCategory"] = _eventTypeCategory,
		["endTime"] = _endTime,
		["region"] = _region,
		["arn"] = _arn,
		["statusCode"] = _statusCode,
	}
	asserts.AssertEvent(t)
	return t
end

function asserts.AsserttagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected tagKey to be of type 'string'")
	assert(#str <= 127, "Expected string to be max 127 characters")
end

--  
function M.tagKey(str)
	asserts.AsserttagKey(str)
	return str
end

function asserts.AsserteventDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected eventDescription to be of type 'string'")
end

--  
function M.eventDescription(str)
	asserts.AsserteventDescription(str)
	return str
end

function asserts.AssertentityValue(str)
	assert(str)
	assert(type(str) == "string", "Expected entityValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.entityValue(str)
	asserts.AssertentityValue(str)
	return str
end

function asserts.Assertlocale(str)
	assert(str)
	assert(type(str) == "string", "Expected locale to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.locale(str)
	asserts.Assertlocale(str)
	return str
end

function asserts.AsserteventType(str)
	assert(str)
	assert(type(str) == "string", "Expected eventType to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.eventType(str)
	asserts.AsserteventType(str)
	return str
end

function asserts.AssertmetadataValue(str)
	assert(str)
	assert(type(str) == "string", "Expected metadataValue to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
end

--  
function M.metadataValue(str)
	asserts.AssertmetadataValue(str)
	return str
end

function asserts.AsserteventTypeCategory(str)
	assert(str)
	assert(type(str) == "string", "Expected eventTypeCategory to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.eventTypeCategory(str)
	asserts.AsserteventTypeCategory(str)
	return str
end

function asserts.AssertaccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected accountId to be of type 'string'")
end

--  
function M.accountId(str)
	asserts.AssertaccountId(str)
	return str
end

function asserts.Assertstring(str)
	assert(str)
	assert(type(str) == "string", "Expected string to be of type 'string'")
end

--  
function M.string(str)
	asserts.Assertstring(str)
	return str
end

function asserts.AsserttagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected tagValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.tagValue(str)
	asserts.AsserttagValue(str)
	return str
end

function asserts.AssertaggregateValue(str)
	assert(str)
	assert(type(str) == "string", "Expected aggregateValue to be of type 'string'")
end

--  
function M.aggregateValue(str)
	asserts.AssertaggregateValue(str)
	return str
end

function asserts.AsserteventTypeCode(str)
	assert(str)
	assert(type(str) == "string", "Expected eventTypeCode to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.eventTypeCode(str)
	asserts.AsserteventTypeCode(str)
	return str
end

function asserts.AssertavailabilityZone(str)
	assert(str)
	assert(type(str) == "string", "Expected availabilityZone to be of type 'string'")
end

--  
function M.availabilityZone(str)
	asserts.AssertavailabilityZone(str)
	return str
end

function asserts.AssertentityStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected entityStatusCode to be of type 'string'")
end

--  
function M.entityStatusCode(str)
	asserts.AssertentityStatusCode(str)
	return str
end

function asserts.AsserteventStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected eventStatusCode to be of type 'string'")
end

--  
function M.eventStatusCode(str)
	asserts.AsserteventStatusCode(str)
	return str
end

function asserts.Assertservice(str)
	assert(str)
	assert(type(str) == "string", "Expected service to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.service(str)
	asserts.Assertservice(str)
	return str
end

function asserts.AsserteventArn(str)
	assert(str)
	assert(type(str) == "string", "Expected eventArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
end

--  
function M.eventArn(str)
	asserts.AsserteventArn(str)
	return str
end

function asserts.AssertentityArn(str)
	assert(str)
	assert(type(str) == "string", "Expected entityArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
end

--  
function M.entityArn(str)
	asserts.AssertentityArn(str)
	return str
end

function asserts.AsserteventAggregateField(str)
	assert(str)
	assert(type(str) == "string", "Expected eventAggregateField to be of type 'string'")
end

--  
function M.eventAggregateField(str)
	asserts.AsserteventAggregateField(str)
	return str
end

function asserts.Assertregion(str)
	assert(str)
	assert(type(str) == "string", "Expected region to be of type 'string'")
end

--  
function M.region(str)
	asserts.Assertregion(str)
	return str
end

function asserts.AssertnextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected nextToken to be of type 'string'")
end

--  
function M.nextToken(str)
	asserts.AssertnextToken(str)
	return str
end

function asserts.AssertmetadataKey(str)
	assert(str)
	assert(type(str) == "string", "Expected metadataKey to be of type 'string'")
end

--  
function M.metadataKey(str)
	asserts.AssertmetadataKey(str)
	return str
end

function asserts.AssertmaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected maxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.maxResults(integer)
	asserts.AssertmaxResults(integer)
	return integer
end

function asserts.Assertcount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.count(integer)
	asserts.Assertcount(integer)
	return integer
end

function asserts.AsserttagSet(map)
	assert(map)
	assert(type(map) == "table", "Expected tagSet to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AsserttagKey(k)
		asserts.AsserttagValue(v)
	end
end

function M.tagSet(map)
	asserts.AsserttagSet(map)
	return map
end

function asserts.AsserteventMetadata(map)
	assert(map)
	assert(type(map) == "table", "Expected eventMetadata to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertmetadataKey(k)
		asserts.AssertmetadataValue(v)
	end
end

function M.eventMetadata(map)
	asserts.AsserteventMetadata(map)
	return map
end

function asserts.Asserttimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected timestamp to be of type 'string'")
end

function M.timestamp(timestamp)
	asserts.Asserttimestamp(timestamp)
	return timestamp
end

function asserts.AssertDescribeEventDetailsFailedSet(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeEventDetailsFailedSet to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventDetailsErrorItem(v)
	end
end

--  
-- List of EventDetailsErrorItem objects
function M.DescribeEventDetailsFailedSet(list)
	asserts.AssertDescribeEventDetailsFailedSet(list)
	return list
end

function asserts.AssertentityArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected entityArnList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertentityArn(v)
	end
end

--  
-- List of entityArn objects
function M.entityArnList(list)
	asserts.AssertentityArnList(list)
	return list
end

function asserts.AssertEventTypeCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypeCodeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AsserteventTypeCode(v)
	end
end

--  
-- List of eventTypeCode objects
function M.EventTypeCodeList(list)
	asserts.AssertEventTypeCodeList(list)
	return list
end

function asserts.AssertEventTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventType(v)
	end
end

--  
-- List of EventType objects
function M.EventTypeList(list)
	asserts.AssertEventTypeList(list)
	return list
end

function asserts.AsserttagFilter(list)
	assert(list)
	assert(type(list) == "table", "Expected tagFilter to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AsserttagSet(v)
	end
end

--  
-- List of tagSet objects
function M.tagFilter(list)
	asserts.AsserttagFilter(list)
	return list
end

function asserts.AssertavailabilityZones(list)
	assert(list)
	assert(type(list) == "table", "Expected availabilityZones to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertavailabilityZone(v)
	end
end

--  
-- List of availabilityZone objects
function M.availabilityZones(list)
	asserts.AssertavailabilityZones(list)
	return list
end

function asserts.AssertEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventList(list)
	asserts.AssertEventList(list)
	return list
end

function asserts.AssertdateTimeRangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected dateTimeRangeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDateTimeRange(v)
	end
end

--  
-- List of DateTimeRange objects
function M.dateTimeRangeList(list)
	asserts.AssertdateTimeRangeList(list)
	return list
end

function asserts.AssertserviceList(list)
	assert(list)
	assert(type(list) == "table", "Expected serviceList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.Assertservice(v)
	end
end

--  
-- List of service objects
function M.serviceList(list)
	asserts.AssertserviceList(list)
	return list
end

function asserts.AsserteventArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected eventArnList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AsserteventArn(v)
	end
end

--  
-- List of eventArn objects
function M.eventArnList(list)
	asserts.AsserteventArnList(list)
	return list
end

function asserts.AssertEventAggregateList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventAggregateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventAggregate(v)
	end
end

--  
-- List of EventAggregate objects
function M.EventAggregateList(list)
	asserts.AssertEventAggregateList(list)
	return list
end

function asserts.AsserteventTypeCategoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected eventTypeCategoryList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AsserteventTypeCategory(v)
	end
end

--  
-- List of eventTypeCategory objects
function M.eventTypeCategoryList(list)
	asserts.AsserteventTypeCategoryList(list)
	return list
end

function asserts.AssertregionList(list)
	assert(list)
	assert(type(list) == "table", "Expected regionList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.Assertregion(v)
	end
end

--  
-- List of region objects
function M.regionList(list)
	asserts.AssertregionList(list)
	return list
end

function asserts.AssertEventArnsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventArnsList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AsserteventArn(v)
	end
end

--  
-- List of eventArn objects
function M.EventArnsList(list)
	asserts.AssertEventArnsList(list)
	return list
end

function asserts.AssertentityValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected entityValueList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertentityValue(v)
	end
end

--  
-- List of entityValue objects
function M.entityValueList(list)
	asserts.AssertentityValueList(list)
	return list
end

function asserts.AssertEntityList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAffectedEntity(v)
	end
end

--  
-- List of AffectedEntity objects
function M.EntityList(list)
	asserts.AssertEntityList(list)
	return list
end

function asserts.AssertEventTypeCategoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventTypeCategoryList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AsserteventTypeCategory(v)
	end
end

--  
-- List of eventTypeCategory objects
function M.EventTypeCategoryList(list)
	asserts.AssertEventTypeCategoryList(list)
	return list
end

function asserts.AssertentityStatusCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected entityStatusCodeList to be of type ''table")
	assert(#list <= 3, "Expected list to be contain 3 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertentityStatusCode(v)
	end
end

--  
-- List of entityStatusCode objects
function M.entityStatusCodeList(list)
	asserts.AssertentityStatusCodeList(list)
	return list
end

function asserts.AsserteventStatusCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected eventStatusCodeList to be of type ''table")
	assert(#list <= 6, "Expected list to be contain 6 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AsserteventStatusCode(v)
	end
end

--  
-- List of eventStatusCode objects
function M.eventStatusCodeList(list)
	asserts.AsserteventStatusCodeList(list)
	return list
end

function asserts.AssertEntityAggregateList(list)
	assert(list)
	assert(type(list) == "table", "Expected EntityAggregateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEntityAggregate(v)
	end
end

--  
-- List of EntityAggregate objects
function M.EntityAggregateList(list)
	asserts.AssertEntityAggregateList(list)
	return list
end

function asserts.AsserteventTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected eventTypeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AsserteventType(v)
	end
end

--  
-- List of eventType objects
function M.eventTypeList(list)
	asserts.AsserteventTypeList(list)
	return list
end

function asserts.AssertDescribeEventDetailsSuccessfulSet(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeEventDetailsSuccessfulSet to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventDetails(v)
	end
end

--  
-- List of EventDetails objects
function M.DescribeEventDetailsSuccessfulSet(list)
	asserts.AssertDescribeEventDetailsSuccessfulSet(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DescribeAffectedEntities asynchronously, invoking a callback when done
-- @param DescribeAffectedEntitiesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAffectedEntitiesAsync(DescribeAffectedEntitiesRequest, cb)
	assert(DescribeAffectedEntitiesRequest, "You must provide a DescribeAffectedEntitiesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeAffectedEntities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAffectedEntitiesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAffectedEntities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAffectedEntitiesRequest
-- @return response
-- @return error_message
function M.DescribeAffectedEntitiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAffectedEntitiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventDetails asynchronously, invoking a callback when done
-- @param DescribeEventDetailsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventDetailsAsync(DescribeEventDetailsRequest, cb)
	assert(DescribeEventDetailsRequest, "You must provide a DescribeEventDetailsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEventDetails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventDetailsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventDetails synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventDetailsRequest
-- @return response
-- @return error_message
function M.DescribeEventDetailsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventDetailsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventTypes asynchronously, invoking a callback when done
-- @param DescribeEventTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventTypesAsync(DescribeEventTypesRequest, cb)
	assert(DescribeEventTypesRequest, "You must provide a DescribeEventTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEventTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventTypesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventTypesRequest
-- @return response
-- @return error_message
function M.DescribeEventTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventTypesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEvents asynchronously, invoking a callback when done
-- @param DescribeEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventsAsync(DescribeEventsRequest, cb)
	assert(DescribeEventsRequest, "You must provide a DescribeEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventsRequest
-- @return response
-- @return error_message
function M.DescribeEventsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEntityAggregates asynchronously, invoking a callback when done
-- @param DescribeEntityAggregatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEntityAggregatesAsync(DescribeEntityAggregatesRequest, cb)
	assert(DescribeEntityAggregatesRequest, "You must provide a DescribeEntityAggregatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEntityAggregates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEntityAggregatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEntityAggregates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEntityAggregatesRequest
-- @return response
-- @return error_message
function M.DescribeEntityAggregatesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEntityAggregatesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventAggregates asynchronously, invoking a callback when done
-- @param DescribeEventAggregatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEventAggregatesAsync(DescribeEventAggregatesRequest, cb)
	assert(DescribeEventAggregatesRequest, "You must provide a DescribeEventAggregatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSHealth_20160804.DescribeEventAggregates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventAggregatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventAggregates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventAggregatesRequest
-- @return response
-- @return error_message
function M.DescribeEventAggregatesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventAggregatesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
