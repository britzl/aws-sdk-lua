--- GENERATED CODE - DO NOT MODIFY
-- AWS Budgets (budgets-2016-10-20)

local M = {}

M.metadata = {
	api_version = "2016-10-20",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "budgets",
	service_abbreviation = "AWSBudgets",
	service_full_name = "AWS Budgets",
	signature_version = "v4",
	target_prefix = "AWSBudgetServiceGateway",
	timestamp_format = "",
	global_endpoint = "",
	uid = "budgets-2016-10-20",
}

local keys = {}
local asserts = {}

keys.DuplicateRecordException = { ["Message"] = true, nil }

function asserts.AssertDuplicateRecordException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRecordException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateRecordException[k], "DuplicateRecordException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRecordException
-- The exception is thrown when customer tries to create a record (e.g. budget) that already exists.
-- @param _Message [errorMessage] 
function M.DuplicateRecordException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateRecordException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDuplicateRecordException(t)
	return t
end

keys.CalculatedSpend = { ["ForecastedSpend"] = true, ["ActualSpend"] = true, nil }

function asserts.AssertCalculatedSpend(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CalculatedSpend to be of type 'table'")
	assert(struct["ActualSpend"], "Expected key ActualSpend to exist in table")
	if struct["ForecastedSpend"] then asserts.AssertSpend(struct["ForecastedSpend"]) end
	if struct["ActualSpend"] then asserts.AssertSpend(struct["ActualSpend"]) end
	for k,_ in pairs(struct) do
		assert(keys.CalculatedSpend[k], "CalculatedSpend contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CalculatedSpend
-- A structure holds the actual and forecasted spend for a budget.
-- @param _ForecastedSpend [Spend] 
-- @param _ActualSpend [Spend] 
-- Required parameter: ActualSpend
function M.CalculatedSpend(_ForecastedSpend, _ActualSpend, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CalculatedSpend")
	local t = { 
		["ForecastedSpend"] = _ForecastedSpend,
		["ActualSpend"] = _ActualSpend,
	}
	asserts.AssertCalculatedSpend(t)
	return t
end

keys.Subscriber = { ["SubscriptionType"] = true, ["Address"] = true, nil }

function asserts.AssertSubscriber(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscriber to be of type 'table'")
	assert(struct["SubscriptionType"], "Expected key SubscriptionType to exist in table")
	assert(struct["Address"], "Expected key Address to exist in table")
	if struct["SubscriptionType"] then asserts.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["Address"] then asserts.AssertGenericString(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subscriber[k], "Subscriber contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscriber
-- Subscriber model. Each notification may contain multiple subscribers with different addresses.
-- @param _SubscriptionType [SubscriptionType] 
-- @param _Address [GenericString] 
-- Required parameter: SubscriptionType
-- Required parameter: Address
function M.Subscriber(_SubscriptionType, _Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscriber")
	local t = { 
		["SubscriptionType"] = _SubscriptionType,
		["Address"] = _Address,
	}
	asserts.AssertSubscriber(t)
	return t
end

keys.CreateNotificationResponse = { nil }

function asserts.AssertCreateNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotificationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateNotificationResponse[k], "CreateNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotificationResponse
-- Response of CreateNotification
function M.CreateNotificationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNotificationResponse")
	local t = { 
	}
	asserts.AssertCreateNotificationResponse(t)
	return t
end

keys.InternalErrorException = { ["Message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- This exception is thrown on an unknown internal failure.
-- @param _Message [errorMessage] 
function M.InternalErrorException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInternalErrorException(t)
	return t
end

keys.DescribeNotificationsForBudgetRequest = { ["NextToken"] = true, ["BudgetName"] = true, ["MaxResults"] = true, ["AccountId"] = true, nil }

function asserts.AssertDescribeNotificationsForBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationsForBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotificationsForBudgetRequest[k], "DescribeNotificationsForBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationsForBudgetRequest
-- Request of DescribeNotificationsForBudget
-- @param _NextToken [GenericString] 
-- @param _BudgetName [BudgetName] 
-- @param _MaxResults [MaxResults] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
function M.DescribeNotificationsForBudgetRequest(_NextToken, _BudgetName, _MaxResults, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationsForBudgetRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["BudgetName"] = _BudgetName,
		["MaxResults"] = _MaxResults,
		["AccountId"] = _AccountId,
	}
	asserts.AssertDescribeNotificationsForBudgetRequest(t)
	return t
end

keys.CostTypes = { ["IncludeTax"] = true, ["UseBlended"] = true, ["IncludeSubscription"] = true, nil }

function asserts.AssertCostTypes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CostTypes to be of type 'table'")
	assert(struct["IncludeTax"], "Expected key IncludeTax to exist in table")
	assert(struct["IncludeSubscription"], "Expected key IncludeSubscription to exist in table")
	assert(struct["UseBlended"], "Expected key UseBlended to exist in table")
	if struct["IncludeTax"] then asserts.AssertGenericBoolean(struct["IncludeTax"]) end
	if struct["UseBlended"] then asserts.AssertGenericBoolean(struct["UseBlended"]) end
	if struct["IncludeSubscription"] then asserts.AssertGenericBoolean(struct["IncludeSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CostTypes[k], "CostTypes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CostTypes
-- This includes the options for getting the cost of a budget.
-- @param _IncludeTax [GenericBoolean] 
-- @param _UseBlended [GenericBoolean] 
-- @param _IncludeSubscription [GenericBoolean] 
-- Required parameter: IncludeTax
-- Required parameter: IncludeSubscription
-- Required parameter: UseBlended
function M.CostTypes(_IncludeTax, _UseBlended, _IncludeSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CostTypes")
	local t = { 
		["IncludeTax"] = _IncludeTax,
		["UseBlended"] = _UseBlended,
		["IncludeSubscription"] = _IncludeSubscription,
	}
	asserts.AssertCostTypes(t)
	return t
end

keys.InvalidNextTokenException = { ["Message"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- This exception is thrown if paging token signature didn't match the token, or the paging token isn't for this request
-- @param _Message [errorMessage] 
function M.InvalidNextTokenException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
end

keys.DeleteBudgetRequest = { ["BudgetName"] = true, ["AccountId"] = true, nil }

function asserts.AssertDeleteBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBudgetRequest[k], "DeleteBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBudgetRequest
-- Request of DeleteBudget
-- @param _BudgetName [BudgetName] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
function M.DeleteBudgetRequest(_BudgetName, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBudgetRequest")
	local t = { 
		["BudgetName"] = _BudgetName,
		["AccountId"] = _AccountId,
	}
	asserts.AssertDeleteBudgetRequest(t)
	return t
end

keys.DescribeNotificationsForBudgetResponse = { ["Notifications"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeNotificationsForBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationsForBudgetResponse to be of type 'table'")
	if struct["Notifications"] then asserts.AssertNotifications(struct["Notifications"]) end
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeNotificationsForBudgetResponse[k], "DescribeNotificationsForBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationsForBudgetResponse
-- Response of GetNotificationsForBudget
-- @param _Notifications [Notifications] 
-- @param _NextToken [GenericString] 
function M.DescribeNotificationsForBudgetResponse(_Notifications, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationsForBudgetResponse")
	local t = { 
		["Notifications"] = _Notifications,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeNotificationsForBudgetResponse(t)
	return t
end

keys.UpdateSubscriberRequest = { ["Notification"] = true, ["OldSubscriber"] = true, ["BudgetName"] = true, ["NewSubscriber"] = true, ["AccountId"] = true, nil }

function asserts.AssertUpdateSubscriberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriberRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["OldSubscriber"], "Expected key OldSubscriber to exist in table")
	assert(struct["NewSubscriber"], "Expected key NewSubscriber to exist in table")
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["OldSubscriber"] then asserts.AssertSubscriber(struct["OldSubscriber"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["NewSubscriber"] then asserts.AssertSubscriber(struct["NewSubscriber"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateSubscriberRequest[k], "UpdateSubscriberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriberRequest
-- Request of UpdateSubscriber
-- @param _Notification [Notification] 
-- @param _OldSubscriber [Subscriber] 
-- @param _BudgetName [BudgetName] 
-- @param _NewSubscriber [Subscriber] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
-- Required parameter: OldSubscriber
-- Required parameter: NewSubscriber
function M.UpdateSubscriberRequest(_Notification, _OldSubscriber, _BudgetName, _NewSubscriber, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubscriberRequest")
	local t = { 
		["Notification"] = _Notification,
		["OldSubscriber"] = _OldSubscriber,
		["BudgetName"] = _BudgetName,
		["NewSubscriber"] = _NewSubscriber,
		["AccountId"] = _AccountId,
	}
	asserts.AssertUpdateSubscriberRequest(t)
	return t
end

keys.ExpiredNextTokenException = { ["Message"] = true, nil }

function asserts.AssertExpiredNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredNextTokenException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExpiredNextTokenException[k], "ExpiredNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredNextTokenException
-- This exception is thrown if the paging token is expired - past its TTL
-- @param _Message [errorMessage] 
function M.ExpiredNextTokenException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredNextTokenException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertExpiredNextTokenException(t)
	return t
end

keys.DescribeBudgetRequest = { ["BudgetName"] = true, ["AccountId"] = true, nil }

function asserts.AssertDescribeBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBudgetRequest[k], "DescribeBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBudgetRequest
-- Request of DescribeBudget
-- @param _BudgetName [BudgetName] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
function M.DescribeBudgetRequest(_BudgetName, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBudgetRequest")
	local t = { 
		["BudgetName"] = _BudgetName,
		["AccountId"] = _AccountId,
	}
	asserts.AssertDescribeBudgetRequest(t)
	return t
end

keys.InvalidParameterException = { ["Message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- This exception is thrown if any request is given an invalid parameter. E.g., if a required Date field is null.
-- @param _Message [errorMessage] 
function M.InvalidParameterException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.CreateNotificationRequest = { ["Notification"] = true, ["BudgetName"] = true, ["Subscribers"] = true, ["AccountId"] = true, nil }

function asserts.AssertCreateNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotificationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["Subscribers"], "Expected key Subscribers to exist in table")
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["Subscribers"] then asserts.AssertSubscribers(struct["Subscribers"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNotificationRequest[k], "CreateNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotificationRequest
-- Request of CreateNotification
-- @param _Notification [Notification] 
-- @param _BudgetName [BudgetName] 
-- @param _Subscribers [Subscribers] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
-- Required parameter: Subscribers
function M.CreateNotificationRequest(_Notification, _BudgetName, _Subscribers, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNotificationRequest")
	local t = { 
		["Notification"] = _Notification,
		["BudgetName"] = _BudgetName,
		["Subscribers"] = _Subscribers,
		["AccountId"] = _AccountId,
	}
	asserts.AssertCreateNotificationRequest(t)
	return t
end

keys.Notification = { ["Threshold"] = true, ["ComparisonOperator"] = true, ["NotificationType"] = true, nil }

function asserts.AssertNotification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Notification to be of type 'table'")
	assert(struct["NotificationType"], "Expected key NotificationType to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	if struct["Threshold"] then asserts.AssertNotificationThreshold(struct["Threshold"]) end
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["NotificationType"] then asserts.AssertNotificationType(struct["NotificationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Notification[k], "Notification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Notification
-- Notification model. Each budget may contain multiple notifications with different settings.
-- @param _Threshold [NotificationThreshold] 
-- @param _ComparisonOperator [ComparisonOperator] 
-- @param _NotificationType [NotificationType] 
-- Required parameter: NotificationType
-- Required parameter: ComparisonOperator
-- Required parameter: Threshold
function M.Notification(_Threshold, _ComparisonOperator, _NotificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Notification")
	local t = { 
		["Threshold"] = _Threshold,
		["ComparisonOperator"] = _ComparisonOperator,
		["NotificationType"] = _NotificationType,
	}
	asserts.AssertNotification(t)
	return t
end

keys.TimePeriod = { ["Start"] = true, ["End"] = true, nil }

function asserts.AssertTimePeriod(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimePeriod to be of type 'table'")
	assert(struct["Start"], "Expected key Start to exist in table")
	assert(struct["End"], "Expected key End to exist in table")
	if struct["Start"] then asserts.AssertGenericTimestamp(struct["Start"]) end
	if struct["End"] then asserts.AssertGenericTimestamp(struct["End"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimePeriod[k], "TimePeriod contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimePeriod
-- A time period indicated the start date and end date of a budget.
-- @param _Start [GenericTimestamp] 
-- @param _End [GenericTimestamp] 
-- Required parameter: Start
-- Required parameter: End
function M.TimePeriod(_Start, _End, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimePeriod")
	local t = { 
		["Start"] = _Start,
		["End"] = _End,
	}
	asserts.AssertTimePeriod(t)
	return t
end

keys.DeleteNotificationResponse = { nil }

function asserts.AssertDeleteNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteNotificationResponse[k], "DeleteNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationResponse
-- Response of DeleteNotification
function M.DeleteNotificationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNotificationResponse")
	local t = { 
	}
	asserts.AssertDeleteNotificationResponse(t)
	return t
end

keys.UpdateBudgetResponse = { nil }

function asserts.AssertUpdateBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBudgetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateBudgetResponse[k], "UpdateBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBudgetResponse
-- Response of UpdateBudget
function M.UpdateBudgetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBudgetResponse")
	local t = { 
	}
	asserts.AssertUpdateBudgetResponse(t)
	return t
end

keys.CreateBudgetRequest = { ["NotificationsWithSubscribers"] = true, ["Budget"] = true, ["AccountId"] = true, nil }

function asserts.AssertCreateBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["Budget"], "Expected key Budget to exist in table")
	if struct["NotificationsWithSubscribers"] then asserts.AssertNotificationWithSubscribersList(struct["NotificationsWithSubscribers"]) end
	if struct["Budget"] then asserts.AssertBudget(struct["Budget"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBudgetRequest[k], "CreateBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBudgetRequest
-- Request of CreateBudget
-- @param _NotificationsWithSubscribers [NotificationWithSubscribersList] 
-- @param _Budget [Budget] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: Budget
function M.CreateBudgetRequest(_NotificationsWithSubscribers, _Budget, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBudgetRequest")
	local t = { 
		["NotificationsWithSubscribers"] = _NotificationsWithSubscribers,
		["Budget"] = _Budget,
		["AccountId"] = _AccountId,
	}
	asserts.AssertCreateBudgetRequest(t)
	return t
end

keys.CreateSubscriberResponse = { nil }

function asserts.AssertCreateSubscriberResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriberResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriberResponse[k], "CreateSubscriberResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriberResponse
-- Response of CreateSubscriber
function M.CreateSubscriberResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriberResponse")
	local t = { 
	}
	asserts.AssertCreateSubscriberResponse(t)
	return t
end

keys.DescribeBudgetsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["AccountId"] = true, nil }

function asserts.AssertDescribeBudgetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBudgetsRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBudgetsRequest[k], "DescribeBudgetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBudgetsRequest
-- Request of DescribeBudgets
-- @param _NextToken [GenericString] 
-- @param _MaxResults [MaxResults] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
function M.DescribeBudgetsRequest(_NextToken, _MaxResults, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBudgetsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["AccountId"] = _AccountId,
	}
	asserts.AssertDescribeBudgetsRequest(t)
	return t
end

keys.DeleteSubscriberResponse = { nil }

function asserts.AssertDeleteSubscriberResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriberResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriberResponse[k], "DeleteSubscriberResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriberResponse
-- Response of DeleteSubscriber
function M.DeleteSubscriberResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriberResponse")
	local t = { 
	}
	asserts.AssertDeleteSubscriberResponse(t)
	return t
end

keys.DescribeSubscribersForNotificationResponse = { ["NextToken"] = true, ["Subscribers"] = true, nil }

function asserts.AssertDescribeSubscribersForNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscribersForNotificationResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["Subscribers"] then asserts.AssertSubscribers(struct["Subscribers"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubscribersForNotificationResponse[k], "DescribeSubscribersForNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscribersForNotificationResponse
-- Response of DescribeSubscribersForNotification
-- @param _NextToken [GenericString] 
-- @param _Subscribers [Subscribers] 
function M.DescribeSubscribersForNotificationResponse(_NextToken, _Subscribers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscribersForNotificationResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Subscribers"] = _Subscribers,
	}
	asserts.AssertDescribeSubscribersForNotificationResponse(t)
	return t
end

keys.UpdateNotificationRequest = { ["NewNotification"] = true, ["BudgetName"] = true, ["OldNotification"] = true, ["AccountId"] = true, nil }

function asserts.AssertUpdateNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotificationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["OldNotification"], "Expected key OldNotification to exist in table")
	assert(struct["NewNotification"], "Expected key NewNotification to exist in table")
	if struct["NewNotification"] then asserts.AssertNotification(struct["NewNotification"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["OldNotification"] then asserts.AssertNotification(struct["OldNotification"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateNotificationRequest[k], "UpdateNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotificationRequest
-- Request of UpdateNotification
-- @param _NewNotification [Notification] 
-- @param _BudgetName [BudgetName] 
-- @param _OldNotification [Notification] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: OldNotification
-- Required parameter: NewNotification
function M.UpdateNotificationRequest(_NewNotification, _BudgetName, _OldNotification, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNotificationRequest")
	local t = { 
		["NewNotification"] = _NewNotification,
		["BudgetName"] = _BudgetName,
		["OldNotification"] = _OldNotification,
		["AccountId"] = _AccountId,
	}
	asserts.AssertUpdateNotificationRequest(t)
	return t
end

keys.CreateBudgetResponse = { nil }

function asserts.AssertCreateBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBudgetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateBudgetResponse[k], "CreateBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBudgetResponse
-- Response of CreateBudget
function M.CreateBudgetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBudgetResponse")
	local t = { 
	}
	asserts.AssertCreateBudgetResponse(t)
	return t
end

keys.DeleteBudgetResponse = { nil }

function asserts.AssertDeleteBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBudgetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteBudgetResponse[k], "DeleteBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBudgetResponse
-- Response of DeleteBudget
function M.DeleteBudgetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBudgetResponse")
	local t = { 
	}
	asserts.AssertDeleteBudgetResponse(t)
	return t
end

keys.UpdateSubscriberResponse = { nil }

function asserts.AssertUpdateSubscriberResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriberResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateSubscriberResponse[k], "UpdateSubscriberResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriberResponse
-- Response of UpdateSubscriber
function M.UpdateSubscriberResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubscriberResponse")
	local t = { 
	}
	asserts.AssertUpdateSubscriberResponse(t)
	return t
end

keys.Budget = { ["CalculatedSpend"] = true, ["BudgetType"] = true, ["BudgetLimit"] = true, ["BudgetName"] = true, ["CostTypes"] = true, ["TimeUnit"] = true, ["TimePeriod"] = true, ["CostFilters"] = true, nil }

function asserts.AssertBudget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Budget to be of type 'table'")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["BudgetLimit"], "Expected key BudgetLimit to exist in table")
	assert(struct["CostTypes"], "Expected key CostTypes to exist in table")
	assert(struct["TimeUnit"], "Expected key TimeUnit to exist in table")
	assert(struct["TimePeriod"], "Expected key TimePeriod to exist in table")
	assert(struct["BudgetType"], "Expected key BudgetType to exist in table")
	if struct["CalculatedSpend"] then asserts.AssertCalculatedSpend(struct["CalculatedSpend"]) end
	if struct["BudgetType"] then asserts.AssertBudgetType(struct["BudgetType"]) end
	if struct["BudgetLimit"] then asserts.AssertSpend(struct["BudgetLimit"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["CostTypes"] then asserts.AssertCostTypes(struct["CostTypes"]) end
	if struct["TimeUnit"] then asserts.AssertTimeUnit(struct["TimeUnit"]) end
	if struct["TimePeriod"] then asserts.AssertTimePeriod(struct["TimePeriod"]) end
	if struct["CostFilters"] then asserts.AssertCostFilters(struct["CostFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.Budget[k], "Budget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Budget
-- AWS Budget model
-- @param _CalculatedSpend [CalculatedSpend] 
-- @param _BudgetType [BudgetType] 
-- @param _BudgetLimit [Spend] 
-- @param _BudgetName [BudgetName] 
-- @param _CostTypes [CostTypes] 
-- @param _TimeUnit [TimeUnit] 
-- @param _TimePeriod [TimePeriod] 
-- @param _CostFilters [CostFilters] 
-- Required parameter: BudgetName
-- Required parameter: BudgetLimit
-- Required parameter: CostTypes
-- Required parameter: TimeUnit
-- Required parameter: TimePeriod
-- Required parameter: BudgetType
function M.Budget(_CalculatedSpend, _BudgetType, _BudgetLimit, _BudgetName, _CostTypes, _TimeUnit, _TimePeriod, _CostFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Budget")
	local t = { 
		["CalculatedSpend"] = _CalculatedSpend,
		["BudgetType"] = _BudgetType,
		["BudgetLimit"] = _BudgetLimit,
		["BudgetName"] = _BudgetName,
		["CostTypes"] = _CostTypes,
		["TimeUnit"] = _TimeUnit,
		["TimePeriod"] = _TimePeriod,
		["CostFilters"] = _CostFilters,
	}
	asserts.AssertBudget(t)
	return t
end

keys.DeleteSubscriberRequest = { ["Subscriber"] = true, ["Notification"] = true, ["BudgetName"] = true, ["AccountId"] = true, nil }

function asserts.AssertDeleteSubscriberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriberRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["Subscriber"], "Expected key Subscriber to exist in table")
	if struct["Subscriber"] then asserts.AssertSubscriber(struct["Subscriber"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriberRequest[k], "DeleteSubscriberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriberRequest
-- Request of DeleteSubscriber
-- @param _Subscriber [Subscriber] 
-- @param _Notification [Notification] 
-- @param _BudgetName [BudgetName] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
-- Required parameter: Subscriber
function M.DeleteSubscriberRequest(_Subscriber, _Notification, _BudgetName, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriberRequest")
	local t = { 
		["Subscriber"] = _Subscriber,
		["Notification"] = _Notification,
		["BudgetName"] = _BudgetName,
		["AccountId"] = _AccountId,
	}
	asserts.AssertDeleteSubscriberRequest(t)
	return t
end

keys.CreateSubscriberRequest = { ["Subscriber"] = true, ["Notification"] = true, ["BudgetName"] = true, ["AccountId"] = true, nil }

function asserts.AssertCreateSubscriberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriberRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["Subscriber"], "Expected key Subscriber to exist in table")
	if struct["Subscriber"] then asserts.AssertSubscriber(struct["Subscriber"]) end
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSubscriberRequest[k], "CreateSubscriberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriberRequest
-- Request of CreateSubscriber
-- @param _Subscriber [Subscriber] 
-- @param _Notification [Notification] 
-- @param _BudgetName [BudgetName] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
-- Required parameter: Subscriber
function M.CreateSubscriberRequest(_Subscriber, _Notification, _BudgetName, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriberRequest")
	local t = { 
		["Subscriber"] = _Subscriber,
		["Notification"] = _Notification,
		["BudgetName"] = _BudgetName,
		["AccountId"] = _AccountId,
	}
	asserts.AssertCreateSubscriberRequest(t)
	return t
end

keys.UpdateBudgetRequest = { ["NewBudget"] = true, ["AccountId"] = true, nil }

function asserts.AssertUpdateBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["NewBudget"], "Expected key NewBudget to exist in table")
	if struct["NewBudget"] then asserts.AssertBudget(struct["NewBudget"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateBudgetRequest[k], "UpdateBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBudgetRequest
-- Request of UpdateBudget
-- @param _NewBudget [Budget] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: NewBudget
function M.UpdateBudgetRequest(_NewBudget, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBudgetRequest")
	local t = { 
		["NewBudget"] = _NewBudget,
		["AccountId"] = _AccountId,
	}
	asserts.AssertUpdateBudgetRequest(t)
	return t
end

keys.Spend = { ["Amount"] = true, ["Unit"] = true, nil }

function asserts.AssertSpend(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Spend to be of type 'table'")
	assert(struct["Amount"], "Expected key Amount to exist in table")
	assert(struct["Unit"], "Expected key Unit to exist in table")
	if struct["Amount"] then asserts.AssertNumericValue(struct["Amount"]) end
	if struct["Unit"] then asserts.AssertGenericString(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.Spend[k], "Spend contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Spend
-- A structure represent either a cost spend or usage spend. Contains an amount and a unit.
-- @param _Amount [NumericValue] 
-- @param _Unit [GenericString] 
-- Required parameter: Amount
-- Required parameter: Unit
function M.Spend(_Amount, _Unit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Spend")
	local t = { 
		["Amount"] = _Amount,
		["Unit"] = _Unit,
	}
	asserts.AssertSpend(t)
	return t
end

keys.DescribeSubscribersForNotificationRequest = { ["Notification"] = true, ["NextToken"] = true, ["BudgetName"] = true, ["MaxResults"] = true, ["AccountId"] = true, nil }

function asserts.AssertDescribeSubscribersForNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscribersForNotificationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubscribersForNotificationRequest[k], "DescribeSubscribersForNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscribersForNotificationRequest
-- Request of DescribeSubscribersForNotification
-- @param _Notification [Notification] 
-- @param _NextToken [GenericString] 
-- @param _BudgetName [BudgetName] 
-- @param _MaxResults [MaxResults] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
function M.DescribeSubscribersForNotificationRequest(_Notification, _NextToken, _BudgetName, _MaxResults, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscribersForNotificationRequest")
	local t = { 
		["Notification"] = _Notification,
		["NextToken"] = _NextToken,
		["BudgetName"] = _BudgetName,
		["MaxResults"] = _MaxResults,
		["AccountId"] = _AccountId,
	}
	asserts.AssertDescribeSubscribersForNotificationRequest(t)
	return t
end

keys.NotFoundException = { ["Message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- This exception is thrown if a requested entity is not found. E.g., if a budget id doesn't exist for an account ID.
-- @param _Message [errorMessage] 
function M.NotFoundException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertNotFoundException(t)
	return t
end

keys.DeleteNotificationRequest = { ["Notification"] = true, ["BudgetName"] = true, ["AccountId"] = true, nil }

function asserts.AssertDeleteNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["BudgetName"] then asserts.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then asserts.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNotificationRequest[k], "DeleteNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationRequest
-- Request of DeleteNotification
-- @param _Notification [Notification] 
-- @param _BudgetName [BudgetName] 
-- @param _AccountId [AccountId] 
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
function M.DeleteNotificationRequest(_Notification, _BudgetName, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNotificationRequest")
	local t = { 
		["Notification"] = _Notification,
		["BudgetName"] = _BudgetName,
		["AccountId"] = _AccountId,
	}
	asserts.AssertDeleteNotificationRequest(t)
	return t
end

keys.NotificationWithSubscribers = { ["Notification"] = true, ["Subscribers"] = true, nil }

function asserts.AssertNotificationWithSubscribers(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationWithSubscribers to be of type 'table'")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["Subscribers"], "Expected key Subscribers to exist in table")
	if struct["Notification"] then asserts.AssertNotification(struct["Notification"]) end
	if struct["Subscribers"] then asserts.AssertSubscribers(struct["Subscribers"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationWithSubscribers[k], "NotificationWithSubscribers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationWithSubscribers
-- A structure to relate notification and a list of subscribers who belong to the notification.
-- @param _Notification [Notification] 
-- @param _Subscribers [Subscribers] 
-- Required parameter: Notification
-- Required parameter: Subscribers
function M.NotificationWithSubscribers(_Notification, _Subscribers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationWithSubscribers")
	local t = { 
		["Notification"] = _Notification,
		["Subscribers"] = _Subscribers,
	}
	asserts.AssertNotificationWithSubscribers(t)
	return t
end

keys.CreationLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertCreationLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreationLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreationLimitExceededException[k], "CreationLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreationLimitExceededException
-- The exception is thrown when customer tries to create a record (e.g. budget), but the number this record already exceeds the limitation.
-- @param _Message [errorMessage] 
function M.CreationLimitExceededException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreationLimitExceededException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertCreationLimitExceededException(t)
	return t
end

keys.DescribeBudgetsResponse = { ["NextToken"] = true, ["Budgets"] = true, nil }

function asserts.AssertDescribeBudgetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBudgetsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["Budgets"] then asserts.AssertBudgets(struct["Budgets"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBudgetsResponse[k], "DescribeBudgetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBudgetsResponse
-- Response of DescribeBudgets
-- @param _NextToken [GenericString] 
-- @param _Budgets [Budgets] 
function M.DescribeBudgetsResponse(_NextToken, _Budgets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBudgetsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Budgets"] = _Budgets,
	}
	asserts.AssertDescribeBudgetsResponse(t)
	return t
end

keys.UpdateNotificationResponse = { nil }

function asserts.AssertUpdateNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotificationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateNotificationResponse[k], "UpdateNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotificationResponse
-- Response of UpdateNotification
function M.UpdateNotificationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNotificationResponse")
	local t = { 
	}
	asserts.AssertUpdateNotificationResponse(t)
	return t
end

keys.DescribeBudgetResponse = { ["Budget"] = true, nil }

function asserts.AssertDescribeBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBudgetResponse to be of type 'table'")
	if struct["Budget"] then asserts.AssertBudget(struct["Budget"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeBudgetResponse[k], "DescribeBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBudgetResponse
-- Response of DescribeBudget
-- @param _Budget [Budget] 
function M.DescribeBudgetResponse(_Budget, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBudgetResponse")
	local t = { 
		["Budget"] = _Budget,
	}
	asserts.AssertDescribeBudgetResponse(t)
	return t
end

function asserts.AssertNumericValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumericValue to be of type 'string'")
end

-- A string to represent NumericValue.
function M.NumericValue(str)
	asserts.AssertNumericValue(str)
	return str
end

function asserts.AssertBudgetType(str)
	assert(str)
	assert(type(str) == "string", "Expected BudgetType to be of type 'string'")
end

-- The type of a budget. Can be COST or USAGE.
function M.BudgetType(str)
	asserts.AssertBudgetType(str)
	return str
end

function asserts.AssertNotificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationType to be of type 'string'")
end

-- The type of a notification. It should be ACTUAL or FORECASTED.
function M.NotificationType(str)
	asserts.AssertNotificationType(str)
	return str
end

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

-- The error message the exception carries.
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
	return str
end

function asserts.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

-- A generic String.
function M.GenericString(str)
	asserts.AssertGenericString(str)
	return str
end

function asserts.AssertSubscriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionType to be of type 'string'")
end

-- The subscription type of the subscriber. It can be SMS or EMAIL.
function M.SubscriptionType(str)
	asserts.AssertSubscriptionType(str)
	return str
end

function asserts.AssertBudgetName(str)
	assert(str)
	assert(type(str) == "string", "Expected BudgetName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

-- A string represents the budget name. No ":" character is allowed.
function M.BudgetName(str)
	asserts.AssertBudgetName(str)
	return str
end

function asserts.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

-- The comparison operator of a notification. Currently we support less than, equal to and greater than.
function M.ComparisonOperator(str)
	asserts.AssertComparisonOperator(str)
	return str
end

function asserts.AssertTimeUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeUnit to be of type 'string'")
end

-- The time unit of the budget. e.g. weekly, monthly, etc.
function M.TimeUnit(str)
	asserts.AssertTimeUnit(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
	assert(#str <= 12, "Expected string to be max 12 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

-- Account Id of the customer. It should be a 12 digit number.
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertNotificationThreshold(double)
	assert(double)
	assert(type(double) == "number", "Expected NotificationThreshold to be of type 'number'")
end

function M.NotificationThreshold(double)
	asserts.AssertNotificationThreshold(double)
	return double
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertGenericBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected GenericBoolean to be of type 'boolean'")
end

function M.GenericBoolean(boolean)
	asserts.AssertGenericBoolean(boolean)
	return boolean
end

function asserts.AssertCostFilters(map)
	assert(map)
	assert(type(map) == "table", "Expected CostFilters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertGenericString(k)
		asserts.AssertDimensionValues(v)
	end
end

function M.CostFilters(map)
	asserts.AssertCostFilters(map)
	return map
end

function asserts.AssertGenericTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected GenericTimestamp to be of type 'string'")
end

function M.GenericTimestamp(timestamp)
	asserts.AssertGenericTimestamp(timestamp)
	return timestamp
end

function asserts.AssertNotifications(list)
	assert(list)
	assert(type(list) == "table", "Expected Notifications to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNotification(v)
	end
end

-- A list of notifications.
-- List of Notification objects
function M.Notifications(list)
	asserts.AssertNotifications(list)
	return list
end

function asserts.AssertSubscribers(list)
	assert(list)
	assert(type(list) == "table", "Expected Subscribers to be of type ''table")
	assert(#list <= 11, "Expected list to be contain 11 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertSubscriber(v)
	end
end

-- A list of subscribers.
-- List of Subscriber objects
function M.Subscribers(list)
	asserts.AssertSubscribers(list)
	return list
end

function asserts.AssertDimensionValues(list)
	assert(list)
	assert(type(list) == "table", "Expected DimensionValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGenericString(v)
	end
end

--  
-- List of GenericString objects
function M.DimensionValues(list)
	asserts.AssertDimensionValues(list)
	return list
end

function asserts.AssertBudgets(list)
	assert(list)
	assert(type(list) == "table", "Expected Budgets to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBudget(v)
	end
end

-- A list of budgets
-- List of Budget objects
function M.Budgets(list)
	asserts.AssertBudgets(list)
	return list
end

function asserts.AssertNotificationWithSubscribersList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationWithSubscribersList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertNotificationWithSubscribers(v)
	end
end

-- A list of Notifications, each with a list of subscribers.
-- List of NotificationWithSubscribers objects
function M.NotificationWithSubscribersList(list)
	asserts.AssertNotificationWithSubscribersList(list)
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
			return "budgets.amazonaws.com"
		end
	end
	local ss = { "budgets" }
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
--- Call DescribeBudget asynchronously, invoking a callback when done
-- @param DescribeBudgetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeBudgetAsync(DescribeBudgetRequest, cb)
	assert(DescribeBudgetRequest, "You must provide a DescribeBudgetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DescribeBudget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeBudgetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBudgetRequest
-- @return response
-- @return error_message
function M.DescribeBudgetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBudgetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeNotificationsForBudget asynchronously, invoking a callback when done
-- @param DescribeNotificationsForBudgetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeNotificationsForBudgetAsync(DescribeNotificationsForBudgetRequest, cb)
	assert(DescribeNotificationsForBudgetRequest, "You must provide a DescribeNotificationsForBudgetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DescribeNotificationsForBudget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeNotificationsForBudgetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeNotificationsForBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNotificationsForBudgetRequest
-- @return response
-- @return error_message
function M.DescribeNotificationsForBudgetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNotificationsForBudgetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSubscriber asynchronously, invoking a callback when done
-- @param CreateSubscriberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSubscriberAsync(CreateSubscriberRequest, cb)
	assert(CreateSubscriberRequest, "You must provide a CreateSubscriberRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.CreateSubscriber",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateSubscriberRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSubscriber synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSubscriberRequest
-- @return response
-- @return error_message
function M.CreateSubscriberSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubscriberAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNotification asynchronously, invoking a callback when done
-- @param CreateNotificationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateNotificationAsync(CreateNotificationRequest, cb)
	assert(CreateNotificationRequest, "You must provide a CreateNotificationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.CreateNotification",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateNotificationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNotificationRequest
-- @return response
-- @return error_message
function M.CreateNotificationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNotificationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateNotification asynchronously, invoking a callback when done
-- @param UpdateNotificationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateNotificationAsync(UpdateNotificationRequest, cb)
	assert(UpdateNotificationRequest, "You must provide a UpdateNotificationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.UpdateNotification",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateNotificationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateNotificationRequest
-- @return response
-- @return error_message
function M.UpdateNotificationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateNotificationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBudget asynchronously, invoking a callback when done
-- @param UpdateBudgetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateBudgetAsync(UpdateBudgetRequest, cb)
	assert(UpdateBudgetRequest, "You must provide a UpdateBudgetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.UpdateBudget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateBudgetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBudgetRequest
-- @return response
-- @return error_message
function M.UpdateBudgetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBudgetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBudget asynchronously, invoking a callback when done
-- @param CreateBudgetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBudgetAsync(CreateBudgetRequest, cb)
	assert(CreateBudgetRequest, "You must provide a CreateBudgetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.CreateBudget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateBudgetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBudgetRequest
-- @return response
-- @return error_message
function M.CreateBudgetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBudgetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNotification asynchronously, invoking a callback when done
-- @param DeleteNotificationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteNotificationAsync(DeleteNotificationRequest, cb)
	assert(DeleteNotificationRequest, "You must provide a DeleteNotificationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DeleteNotification",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteNotificationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNotificationRequest
-- @return response
-- @return error_message
function M.DeleteNotificationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNotificationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSubscribersForNotification asynchronously, invoking a callback when done
-- @param DescribeSubscribersForNotificationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSubscribersForNotificationAsync(DescribeSubscribersForNotificationRequest, cb)
	assert(DescribeSubscribersForNotificationRequest, "You must provide a DescribeSubscribersForNotificationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DescribeSubscribersForNotification",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSubscribersForNotificationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSubscribersForNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSubscribersForNotificationRequest
-- @return response
-- @return error_message
function M.DescribeSubscribersForNotificationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSubscribersForNotificationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSubscriber asynchronously, invoking a callback when done
-- @param DeleteSubscriberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSubscriberAsync(DeleteSubscriberRequest, cb)
	assert(DeleteSubscriberRequest, "You must provide a DeleteSubscriberRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DeleteSubscriber",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSubscriberRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSubscriber synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSubscriberRequest
-- @return response
-- @return error_message
function M.DeleteSubscriberSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSubscriberAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBudgets asynchronously, invoking a callback when done
-- @param DescribeBudgetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeBudgetsAsync(DescribeBudgetsRequest, cb)
	assert(DescribeBudgetsRequest, "You must provide a DescribeBudgetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DescribeBudgets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeBudgetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBudgets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBudgetsRequest
-- @return response
-- @return error_message
function M.DescribeBudgetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBudgetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBudget asynchronously, invoking a callback when done
-- @param DeleteBudgetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBudgetAsync(DeleteBudgetRequest, cb)
	assert(DeleteBudgetRequest, "You must provide a DeleteBudgetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DeleteBudget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteBudgetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBudgetRequest
-- @return response
-- @return error_message
function M.DeleteBudgetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBudgetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSubscriber asynchronously, invoking a callback when done
-- @param UpdateSubscriberRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateSubscriberAsync(UpdateSubscriberRequest, cb)
	assert(UpdateSubscriberRequest, "You must provide a UpdateSubscriberRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.UpdateSubscriber",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateSubscriberRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSubscriber synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSubscriberRequest
-- @return response
-- @return error_message
function M.UpdateSubscriberSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSubscriberAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
