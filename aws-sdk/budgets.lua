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

local DuplicateRecordException_keys = { "Message" = true, nil }

function M.AssertDuplicateRecordException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateRecordException to be of type 'table'")
	if struct["Message"] then M.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateRecordException_keys[k], "DuplicateRecordException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateRecordException
-- The exception is thrown when customer tries to create a record (e.g. budget) that already exists.
-- @param Message [errorMessage] The exception is thrown when customer tries to create a record (e.g. budget) that already exists.
function M.DuplicateRecordException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateRecordException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDuplicateRecordException(t)
	return t
end

local CalculatedSpend_keys = { "ForecastedSpend" = true, "ActualSpend" = true, nil }

function M.AssertCalculatedSpend(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CalculatedSpend to be of type 'table'")
	assert(struct["ActualSpend"], "Expected key ActualSpend to exist in table")
	if struct["ForecastedSpend"] then M.AssertSpend(struct["ForecastedSpend"]) end
	if struct["ActualSpend"] then M.AssertSpend(struct["ActualSpend"]) end
	for k,_ in pairs(struct) do
		assert(CalculatedSpend_keys[k], "CalculatedSpend contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CalculatedSpend
-- A structure holds the actual and forecasted spend for a budget.
-- @param ForecastedSpend [Spend] A structure holds the actual and forecasted spend for a budget.
-- @param ActualSpend [Spend] A structure holds the actual and forecasted spend for a budget.
-- Required parameter: ActualSpend
function M.CalculatedSpend(ForecastedSpend, ActualSpend, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CalculatedSpend")
	local t = { 
		["ForecastedSpend"] = ForecastedSpend,
		["ActualSpend"] = ActualSpend,
	}
	M.AssertCalculatedSpend(t)
	return t
end

local Subscriber_keys = { "SubscriptionType" = true, "Address" = true, nil }

function M.AssertSubscriber(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscriber to be of type 'table'")
	assert(struct["SubscriptionType"], "Expected key SubscriptionType to exist in table")
	assert(struct["Address"], "Expected key Address to exist in table")
	if struct["SubscriptionType"] then M.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["Address"] then M.AssertGenericString(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(Subscriber_keys[k], "Subscriber contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscriber
-- Subscriber model. Each notification may contain multiple subscribers with different addresses.
-- @param SubscriptionType [SubscriptionType] Subscriber model. Each notification may contain multiple subscribers with different addresses.
-- @param Address [GenericString] Subscriber model. Each notification may contain multiple subscribers with different addresses.
-- Required parameter: SubscriptionType
-- Required parameter: Address
function M.Subscriber(SubscriptionType, Address, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscriber")
	local t = { 
		["SubscriptionType"] = SubscriptionType,
		["Address"] = Address,
	}
	M.AssertSubscriber(t)
	return t
end

local CreateNotificationResponse_keys = { nil }

function M.AssertCreateNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotificationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateNotificationResponse_keys[k], "CreateNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotificationResponse
-- Response of CreateNotification
function M.CreateNotificationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNotificationResponse")
	local t = { 
	}
	M.AssertCreateNotificationResponse(t)
	return t
end

local InternalErrorException_keys = { "Message" = true, nil }

function M.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["Message"] then M.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalErrorException_keys[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- This exception is thrown on an unknown internal failure.
-- @param Message [errorMessage] This exception is thrown on an unknown internal failure.
function M.InternalErrorException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalErrorException(t)
	return t
end

local DescribeNotificationsForBudgetRequest_keys = { "NextToken" = true, "BudgetName" = true, "MaxResults" = true, "AccountId" = true, nil }

function M.AssertDescribeNotificationsForBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationsForBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	if struct["NextToken"] then M.AssertGenericString(struct["NextToken"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNotificationsForBudgetRequest_keys[k], "DescribeNotificationsForBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationsForBudgetRequest
-- Request of DescribeNotificationsForBudget
-- @param NextToken [GenericString] Request of DescribeNotificationsForBudget
-- @param BudgetName [BudgetName] Request of DescribeNotificationsForBudget
-- @param MaxResults [MaxResults] Request of DescribeNotificationsForBudget
-- @param AccountId [AccountId] Request of DescribeNotificationsForBudget
-- Required parameter: AccountId
-- Required parameter: BudgetName
function M.DescribeNotificationsForBudgetRequest(NextToken, BudgetName, MaxResults, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationsForBudgetRequest")
	local t = { 
		["NextToken"] = NextToken,
		["BudgetName"] = BudgetName,
		["MaxResults"] = MaxResults,
		["AccountId"] = AccountId,
	}
	M.AssertDescribeNotificationsForBudgetRequest(t)
	return t
end

local CostTypes_keys = { "IncludeTax" = true, "UseBlended" = true, "IncludeSubscription" = true, nil }

function M.AssertCostTypes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CostTypes to be of type 'table'")
	assert(struct["IncludeTax"], "Expected key IncludeTax to exist in table")
	assert(struct["IncludeSubscription"], "Expected key IncludeSubscription to exist in table")
	assert(struct["UseBlended"], "Expected key UseBlended to exist in table")
	if struct["IncludeTax"] then M.AssertGenericBoolean(struct["IncludeTax"]) end
	if struct["UseBlended"] then M.AssertGenericBoolean(struct["UseBlended"]) end
	if struct["IncludeSubscription"] then M.AssertGenericBoolean(struct["IncludeSubscription"]) end
	for k,_ in pairs(struct) do
		assert(CostTypes_keys[k], "CostTypes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CostTypes
-- This includes the options for getting the cost of a budget.
-- @param IncludeTax [GenericBoolean] This includes the options for getting the cost of a budget.
-- @param UseBlended [GenericBoolean] This includes the options for getting the cost of a budget.
-- @param IncludeSubscription [GenericBoolean] This includes the options for getting the cost of a budget.
-- Required parameter: IncludeTax
-- Required parameter: IncludeSubscription
-- Required parameter: UseBlended
function M.CostTypes(IncludeTax, UseBlended, IncludeSubscription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CostTypes")
	local t = { 
		["IncludeTax"] = IncludeTax,
		["UseBlended"] = UseBlended,
		["IncludeSubscription"] = IncludeSubscription,
	}
	M.AssertCostTypes(t)
	return t
end

local InvalidNextTokenException_keys = { "Message" = true, nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["Message"] then M.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- This exception is thrown if paging token signature didn't match the token, or the paging token isn't for this request
-- @param Message [errorMessage] This exception is thrown if paging token signature didn't match the token, or the paging token isn't for this request
function M.InvalidNextTokenException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local DeleteBudgetRequest_keys = { "BudgetName" = true, "AccountId" = true, nil }

function M.AssertDeleteBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBudgetRequest_keys[k], "DeleteBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBudgetRequest
-- Request of DeleteBudget
-- @param BudgetName [BudgetName] Request of DeleteBudget
-- @param AccountId [AccountId] Request of DeleteBudget
-- Required parameter: AccountId
-- Required parameter: BudgetName
function M.DeleteBudgetRequest(BudgetName, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBudgetRequest")
	local t = { 
		["BudgetName"] = BudgetName,
		["AccountId"] = AccountId,
	}
	M.AssertDeleteBudgetRequest(t)
	return t
end

local DescribeNotificationsForBudgetResponse_keys = { "Notifications" = true, "NextToken" = true, nil }

function M.AssertDescribeNotificationsForBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeNotificationsForBudgetResponse to be of type 'table'")
	if struct["Notifications"] then M.AssertNotifications(struct["Notifications"]) end
	if struct["NextToken"] then M.AssertGenericString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeNotificationsForBudgetResponse_keys[k], "DescribeNotificationsForBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeNotificationsForBudgetResponse
-- Response of GetNotificationsForBudget
-- @param Notifications [Notifications] Response of GetNotificationsForBudget
-- @param NextToken [GenericString] Response of GetNotificationsForBudget
function M.DescribeNotificationsForBudgetResponse(Notifications, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeNotificationsForBudgetResponse")
	local t = { 
		["Notifications"] = Notifications,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeNotificationsForBudgetResponse(t)
	return t
end

local UpdateSubscriberRequest_keys = { "Notification" = true, "OldSubscriber" = true, "BudgetName" = true, "NewSubscriber" = true, "AccountId" = true, nil }

function M.AssertUpdateSubscriberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriberRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["OldSubscriber"], "Expected key OldSubscriber to exist in table")
	assert(struct["NewSubscriber"], "Expected key NewSubscriber to exist in table")
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["OldSubscriber"] then M.AssertSubscriber(struct["OldSubscriber"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["NewSubscriber"] then M.AssertSubscriber(struct["NewSubscriber"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateSubscriberRequest_keys[k], "UpdateSubscriberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriberRequest
-- Request of UpdateSubscriber
-- @param Notification [Notification] Request of UpdateSubscriber
-- @param OldSubscriber [Subscriber] Request of UpdateSubscriber
-- @param BudgetName [BudgetName] Request of UpdateSubscriber
-- @param NewSubscriber [Subscriber] Request of UpdateSubscriber
-- @param AccountId [AccountId] Request of UpdateSubscriber
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
-- Required parameter: OldSubscriber
-- Required parameter: NewSubscriber
function M.UpdateSubscriberRequest(Notification, OldSubscriber, BudgetName, NewSubscriber, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubscriberRequest")
	local t = { 
		["Notification"] = Notification,
		["OldSubscriber"] = OldSubscriber,
		["BudgetName"] = BudgetName,
		["NewSubscriber"] = NewSubscriber,
		["AccountId"] = AccountId,
	}
	M.AssertUpdateSubscriberRequest(t)
	return t
end

local ExpiredNextTokenException_keys = { "Message" = true, nil }

function M.AssertExpiredNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExpiredNextTokenException to be of type 'table'")
	if struct["Message"] then M.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ExpiredNextTokenException_keys[k], "ExpiredNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExpiredNextTokenException
-- This exception is thrown if the paging token is expired - past its TTL
-- @param Message [errorMessage] This exception is thrown if the paging token is expired - past its TTL
function M.ExpiredNextTokenException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExpiredNextTokenException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertExpiredNextTokenException(t)
	return t
end

local DescribeBudgetRequest_keys = { "BudgetName" = true, "AccountId" = true, nil }

function M.AssertDescribeBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBudgetRequest_keys[k], "DescribeBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBudgetRequest
-- Request of DescribeBudget
-- @param BudgetName [BudgetName] Request of DescribeBudget
-- @param AccountId [AccountId] Request of DescribeBudget
-- Required parameter: AccountId
-- Required parameter: BudgetName
function M.DescribeBudgetRequest(BudgetName, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBudgetRequest")
	local t = { 
		["BudgetName"] = BudgetName,
		["AccountId"] = AccountId,
	}
	M.AssertDescribeBudgetRequest(t)
	return t
end

local InvalidParameterException_keys = { "Message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["Message"] then M.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- This exception is thrown if any request is given an invalid parameter. E.g., if a required Date field is null.
-- @param Message [errorMessage] This exception is thrown if any request is given an invalid parameter. E.g., if a required Date field is null.
function M.InvalidParameterException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local CreateNotificationRequest_keys = { "Notification" = true, "BudgetName" = true, "Subscribers" = true, "AccountId" = true, nil }

function M.AssertCreateNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNotificationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["Subscribers"], "Expected key Subscribers to exist in table")
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["Subscribers"] then M.AssertSubscribers(struct["Subscribers"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(CreateNotificationRequest_keys[k], "CreateNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNotificationRequest
-- Request of CreateNotification
-- @param Notification [Notification] Request of CreateNotification
-- @param BudgetName [BudgetName] Request of CreateNotification
-- @param Subscribers [Subscribers] Request of CreateNotification
-- @param AccountId [AccountId] Request of CreateNotification
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
-- Required parameter: Subscribers
function M.CreateNotificationRequest(Notification, BudgetName, Subscribers, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNotificationRequest")
	local t = { 
		["Notification"] = Notification,
		["BudgetName"] = BudgetName,
		["Subscribers"] = Subscribers,
		["AccountId"] = AccountId,
	}
	M.AssertCreateNotificationRequest(t)
	return t
end

local Notification_keys = { "Threshold" = true, "ComparisonOperator" = true, "NotificationType" = true, nil }

function M.AssertNotification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Notification to be of type 'table'")
	assert(struct["NotificationType"], "Expected key NotificationType to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	if struct["Threshold"] then M.AssertNotificationThreshold(struct["Threshold"]) end
	if struct["ComparisonOperator"] then M.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["NotificationType"] then M.AssertNotificationType(struct["NotificationType"]) end
	for k,_ in pairs(struct) do
		assert(Notification_keys[k], "Notification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Notification
-- Notification model. Each budget may contain multiple notifications with different settings.
-- @param Threshold [NotificationThreshold] Notification model. Each budget may contain multiple notifications with different settings.
-- @param ComparisonOperator [ComparisonOperator] Notification model. Each budget may contain multiple notifications with different settings.
-- @param NotificationType [NotificationType] Notification model. Each budget may contain multiple notifications with different settings.
-- Required parameter: NotificationType
-- Required parameter: ComparisonOperator
-- Required parameter: Threshold
function M.Notification(Threshold, ComparisonOperator, NotificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Notification")
	local t = { 
		["Threshold"] = Threshold,
		["ComparisonOperator"] = ComparisonOperator,
		["NotificationType"] = NotificationType,
	}
	M.AssertNotification(t)
	return t
end

local TimePeriod_keys = { "Start" = true, "End" = true, nil }

function M.AssertTimePeriod(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimePeriod to be of type 'table'")
	assert(struct["Start"], "Expected key Start to exist in table")
	assert(struct["End"], "Expected key End to exist in table")
	if struct["Start"] then M.AssertGenericTimestamp(struct["Start"]) end
	if struct["End"] then M.AssertGenericTimestamp(struct["End"]) end
	for k,_ in pairs(struct) do
		assert(TimePeriod_keys[k], "TimePeriod contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimePeriod
-- A time period indicated the start date and end date of a budget.
-- @param Start [GenericTimestamp] A time period indicated the start date and end date of a budget.
-- @param End [GenericTimestamp] A time period indicated the start date and end date of a budget.
-- Required parameter: Start
-- Required parameter: End
function M.TimePeriod(Start, End, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimePeriod")
	local t = { 
		["Start"] = Start,
		["End"] = End,
	}
	M.AssertTimePeriod(t)
	return t
end

local DeleteNotificationResponse_keys = { nil }

function M.AssertDeleteNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteNotificationResponse_keys[k], "DeleteNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationResponse
-- Response of DeleteNotification
function M.DeleteNotificationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNotificationResponse")
	local t = { 
	}
	M.AssertDeleteNotificationResponse(t)
	return t
end

local UpdateBudgetResponse_keys = { nil }

function M.AssertUpdateBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBudgetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateBudgetResponse_keys[k], "UpdateBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBudgetResponse
-- Response of UpdateBudget
function M.UpdateBudgetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBudgetResponse")
	local t = { 
	}
	M.AssertUpdateBudgetResponse(t)
	return t
end

local CreateBudgetRequest_keys = { "NotificationsWithSubscribers" = true, "Budget" = true, "AccountId" = true, nil }

function M.AssertCreateBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["Budget"], "Expected key Budget to exist in table")
	if struct["NotificationsWithSubscribers"] then M.AssertNotificationWithSubscribersList(struct["NotificationsWithSubscribers"]) end
	if struct["Budget"] then M.AssertBudget(struct["Budget"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(CreateBudgetRequest_keys[k], "CreateBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBudgetRequest
-- Request of CreateBudget
-- @param NotificationsWithSubscribers [NotificationWithSubscribersList] Request of CreateBudget
-- @param Budget [Budget] Request of CreateBudget
-- @param AccountId [AccountId] Request of CreateBudget
-- Required parameter: AccountId
-- Required parameter: Budget
function M.CreateBudgetRequest(NotificationsWithSubscribers, Budget, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBudgetRequest")
	local t = { 
		["NotificationsWithSubscribers"] = NotificationsWithSubscribers,
		["Budget"] = Budget,
		["AccountId"] = AccountId,
	}
	M.AssertCreateBudgetRequest(t)
	return t
end

local CreateSubscriberResponse_keys = { nil }

function M.AssertCreateSubscriberResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriberResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateSubscriberResponse_keys[k], "CreateSubscriberResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriberResponse
-- Response of CreateSubscriber
function M.CreateSubscriberResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriberResponse")
	local t = { 
	}
	M.AssertCreateSubscriberResponse(t)
	return t
end

local DescribeBudgetsRequest_keys = { "NextToken" = true, "MaxResults" = true, "AccountId" = true, nil }

function M.AssertDescribeBudgetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBudgetsRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	if struct["NextToken"] then M.AssertGenericString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBudgetsRequest_keys[k], "DescribeBudgetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBudgetsRequest
-- Request of DescribeBudgets
-- @param NextToken [GenericString] Request of DescribeBudgets
-- @param MaxResults [MaxResults] Request of DescribeBudgets
-- @param AccountId [AccountId] Request of DescribeBudgets
-- Required parameter: AccountId
function M.DescribeBudgetsRequest(NextToken, MaxResults, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBudgetsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["AccountId"] = AccountId,
	}
	M.AssertDescribeBudgetsRequest(t)
	return t
end

local DeleteSubscriberResponse_keys = { nil }

function M.AssertDeleteSubscriberResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriberResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteSubscriberResponse_keys[k], "DeleteSubscriberResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriberResponse
-- Response of DeleteSubscriber
function M.DeleteSubscriberResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriberResponse")
	local t = { 
	}
	M.AssertDeleteSubscriberResponse(t)
	return t
end

local DescribeSubscribersForNotificationResponse_keys = { "NextToken" = true, "Subscribers" = true, nil }

function M.AssertDescribeSubscribersForNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscribersForNotificationResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertGenericString(struct["NextToken"]) end
	if struct["Subscribers"] then M.AssertSubscribers(struct["Subscribers"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSubscribersForNotificationResponse_keys[k], "DescribeSubscribersForNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscribersForNotificationResponse
-- Response of DescribeSubscribersForNotification
-- @param NextToken [GenericString] Response of DescribeSubscribersForNotification
-- @param Subscribers [Subscribers] Response of DescribeSubscribersForNotification
function M.DescribeSubscribersForNotificationResponse(NextToken, Subscribers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscribersForNotificationResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Subscribers"] = Subscribers,
	}
	M.AssertDescribeSubscribersForNotificationResponse(t)
	return t
end

local UpdateNotificationRequest_keys = { "NewNotification" = true, "BudgetName" = true, "OldNotification" = true, "AccountId" = true, nil }

function M.AssertUpdateNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotificationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["OldNotification"], "Expected key OldNotification to exist in table")
	assert(struct["NewNotification"], "Expected key NewNotification to exist in table")
	if struct["NewNotification"] then M.AssertNotification(struct["NewNotification"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["OldNotification"] then M.AssertNotification(struct["OldNotification"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateNotificationRequest_keys[k], "UpdateNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotificationRequest
-- Request of UpdateNotification
-- @param NewNotification [Notification] Request of UpdateNotification
-- @param BudgetName [BudgetName] Request of UpdateNotification
-- @param OldNotification [Notification] Request of UpdateNotification
-- @param AccountId [AccountId] Request of UpdateNotification
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: OldNotification
-- Required parameter: NewNotification
function M.UpdateNotificationRequest(NewNotification, BudgetName, OldNotification, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNotificationRequest")
	local t = { 
		["NewNotification"] = NewNotification,
		["BudgetName"] = BudgetName,
		["OldNotification"] = OldNotification,
		["AccountId"] = AccountId,
	}
	M.AssertUpdateNotificationRequest(t)
	return t
end

local CreateBudgetResponse_keys = { nil }

function M.AssertCreateBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBudgetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CreateBudgetResponse_keys[k], "CreateBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBudgetResponse
-- Response of CreateBudget
function M.CreateBudgetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBudgetResponse")
	local t = { 
	}
	M.AssertCreateBudgetResponse(t)
	return t
end

local DeleteBudgetResponse_keys = { nil }

function M.AssertDeleteBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBudgetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteBudgetResponse_keys[k], "DeleteBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBudgetResponse
-- Response of DeleteBudget
function M.DeleteBudgetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBudgetResponse")
	local t = { 
	}
	M.AssertDeleteBudgetResponse(t)
	return t
end

local UpdateSubscriberResponse_keys = { nil }

function M.AssertUpdateSubscriberResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateSubscriberResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateSubscriberResponse_keys[k], "UpdateSubscriberResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateSubscriberResponse
-- Response of UpdateSubscriber
function M.UpdateSubscriberResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateSubscriberResponse")
	local t = { 
	}
	M.AssertUpdateSubscriberResponse(t)
	return t
end

local Budget_keys = { "CalculatedSpend" = true, "BudgetType" = true, "BudgetLimit" = true, "BudgetName" = true, "CostTypes" = true, "TimeUnit" = true, "TimePeriod" = true, "CostFilters" = true, nil }

function M.AssertBudget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Budget to be of type 'table'")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["BudgetLimit"], "Expected key BudgetLimit to exist in table")
	assert(struct["CostTypes"], "Expected key CostTypes to exist in table")
	assert(struct["TimeUnit"], "Expected key TimeUnit to exist in table")
	assert(struct["TimePeriod"], "Expected key TimePeriod to exist in table")
	assert(struct["BudgetType"], "Expected key BudgetType to exist in table")
	if struct["CalculatedSpend"] then M.AssertCalculatedSpend(struct["CalculatedSpend"]) end
	if struct["BudgetType"] then M.AssertBudgetType(struct["BudgetType"]) end
	if struct["BudgetLimit"] then M.AssertSpend(struct["BudgetLimit"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["CostTypes"] then M.AssertCostTypes(struct["CostTypes"]) end
	if struct["TimeUnit"] then M.AssertTimeUnit(struct["TimeUnit"]) end
	if struct["TimePeriod"] then M.AssertTimePeriod(struct["TimePeriod"]) end
	if struct["CostFilters"] then M.AssertCostFilters(struct["CostFilters"]) end
	for k,_ in pairs(struct) do
		assert(Budget_keys[k], "Budget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Budget
-- AWS Budget model
-- @param CalculatedSpend [CalculatedSpend] AWS Budget model
-- @param BudgetType [BudgetType] AWS Budget model
-- @param BudgetLimit [Spend] AWS Budget model
-- @param BudgetName [BudgetName] AWS Budget model
-- @param CostTypes [CostTypes] AWS Budget model
-- @param TimeUnit [TimeUnit] AWS Budget model
-- @param TimePeriod [TimePeriod] AWS Budget model
-- @param CostFilters [CostFilters] AWS Budget model
-- Required parameter: BudgetName
-- Required parameter: BudgetLimit
-- Required parameter: CostTypes
-- Required parameter: TimeUnit
-- Required parameter: TimePeriod
-- Required parameter: BudgetType
function M.Budget(CalculatedSpend, BudgetType, BudgetLimit, BudgetName, CostTypes, TimeUnit, TimePeriod, CostFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Budget")
	local t = { 
		["CalculatedSpend"] = CalculatedSpend,
		["BudgetType"] = BudgetType,
		["BudgetLimit"] = BudgetLimit,
		["BudgetName"] = BudgetName,
		["CostTypes"] = CostTypes,
		["TimeUnit"] = TimeUnit,
		["TimePeriod"] = TimePeriod,
		["CostFilters"] = CostFilters,
	}
	M.AssertBudget(t)
	return t
end

local DeleteSubscriberRequest_keys = { "Subscriber" = true, "Notification" = true, "BudgetName" = true, "AccountId" = true, nil }

function M.AssertDeleteSubscriberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriberRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["Subscriber"], "Expected key Subscriber to exist in table")
	if struct["Subscriber"] then M.AssertSubscriber(struct["Subscriber"]) end
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSubscriberRequest_keys[k], "DeleteSubscriberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriberRequest
-- Request of DeleteSubscriber
-- @param Subscriber [Subscriber] Request of DeleteSubscriber
-- @param Notification [Notification] Request of DeleteSubscriber
-- @param BudgetName [BudgetName] Request of DeleteSubscriber
-- @param AccountId [AccountId] Request of DeleteSubscriber
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
-- Required parameter: Subscriber
function M.DeleteSubscriberRequest(Subscriber, Notification, BudgetName, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriberRequest")
	local t = { 
		["Subscriber"] = Subscriber,
		["Notification"] = Notification,
		["BudgetName"] = BudgetName,
		["AccountId"] = AccountId,
	}
	M.AssertDeleteSubscriberRequest(t)
	return t
end

local CreateSubscriberRequest_keys = { "Subscriber" = true, "Notification" = true, "BudgetName" = true, "AccountId" = true, nil }

function M.AssertCreateSubscriberRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSubscriberRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["Subscriber"], "Expected key Subscriber to exist in table")
	if struct["Subscriber"] then M.AssertSubscriber(struct["Subscriber"]) end
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(CreateSubscriberRequest_keys[k], "CreateSubscriberRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSubscriberRequest
-- Request of CreateSubscriber
-- @param Subscriber [Subscriber] Request of CreateSubscriber
-- @param Notification [Notification] Request of CreateSubscriber
-- @param BudgetName [BudgetName] Request of CreateSubscriber
-- @param AccountId [AccountId] Request of CreateSubscriber
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
-- Required parameter: Subscriber
function M.CreateSubscriberRequest(Subscriber, Notification, BudgetName, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSubscriberRequest")
	local t = { 
		["Subscriber"] = Subscriber,
		["Notification"] = Notification,
		["BudgetName"] = BudgetName,
		["AccountId"] = AccountId,
	}
	M.AssertCreateSubscriberRequest(t)
	return t
end

local UpdateBudgetRequest_keys = { "NewBudget" = true, "AccountId" = true, nil }

function M.AssertUpdateBudgetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateBudgetRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["NewBudget"], "Expected key NewBudget to exist in table")
	if struct["NewBudget"] then M.AssertBudget(struct["NewBudget"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateBudgetRequest_keys[k], "UpdateBudgetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateBudgetRequest
-- Request of UpdateBudget
-- @param NewBudget [Budget] Request of UpdateBudget
-- @param AccountId [AccountId] Request of UpdateBudget
-- Required parameter: AccountId
-- Required parameter: NewBudget
function M.UpdateBudgetRequest(NewBudget, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateBudgetRequest")
	local t = { 
		["NewBudget"] = NewBudget,
		["AccountId"] = AccountId,
	}
	M.AssertUpdateBudgetRequest(t)
	return t
end

local Spend_keys = { "Amount" = true, "Unit" = true, nil }

function M.AssertSpend(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Spend to be of type 'table'")
	assert(struct["Amount"], "Expected key Amount to exist in table")
	assert(struct["Unit"], "Expected key Unit to exist in table")
	if struct["Amount"] then M.AssertNumericValue(struct["Amount"]) end
	if struct["Unit"] then M.AssertGenericString(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(Spend_keys[k], "Spend contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Spend
-- A structure represent either a cost spend or usage spend. Contains an amount and a unit.
-- @param Amount [NumericValue] A structure represent either a cost spend or usage spend. Contains an amount and a unit.
-- @param Unit [GenericString] A structure represent either a cost spend or usage spend. Contains an amount and a unit.
-- Required parameter: Amount
-- Required parameter: Unit
function M.Spend(Amount, Unit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Spend")
	local t = { 
		["Amount"] = Amount,
		["Unit"] = Unit,
	}
	M.AssertSpend(t)
	return t
end

local DescribeSubscribersForNotificationRequest_keys = { "Notification" = true, "NextToken" = true, "BudgetName" = true, "MaxResults" = true, "AccountId" = true, nil }

function M.AssertDescribeSubscribersForNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscribersForNotificationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["NextToken"] then M.AssertGenericString(struct["NextToken"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSubscribersForNotificationRequest_keys[k], "DescribeSubscribersForNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscribersForNotificationRequest
-- Request of DescribeSubscribersForNotification
-- @param Notification [Notification] Request of DescribeSubscribersForNotification
-- @param NextToken [GenericString] Request of DescribeSubscribersForNotification
-- @param BudgetName [BudgetName] Request of DescribeSubscribersForNotification
-- @param MaxResults [MaxResults] Request of DescribeSubscribersForNotification
-- @param AccountId [AccountId] Request of DescribeSubscribersForNotification
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
function M.DescribeSubscribersForNotificationRequest(Notification, NextToken, BudgetName, MaxResults, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscribersForNotificationRequest")
	local t = { 
		["Notification"] = Notification,
		["NextToken"] = NextToken,
		["BudgetName"] = BudgetName,
		["MaxResults"] = MaxResults,
		["AccountId"] = AccountId,
	}
	M.AssertDescribeSubscribersForNotificationRequest(t)
	return t
end

local NotFoundException_keys = { "Message" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["Message"] then M.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- This exception is thrown if a requested entity is not found. E.g., if a budget id doesn't exist for an account ID.
-- @param Message [errorMessage] This exception is thrown if a requested entity is not found. E.g., if a budget id doesn't exist for an account ID.
function M.NotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertNotFoundException(t)
	return t
end

local DeleteNotificationRequest_keys = { "Notification" = true, "BudgetName" = true, "AccountId" = true, nil }

function M.AssertDeleteNotificationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNotificationRequest to be of type 'table'")
	assert(struct["AccountId"], "Expected key AccountId to exist in table")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["BudgetName"] then M.AssertBudgetName(struct["BudgetName"]) end
	if struct["AccountId"] then M.AssertAccountId(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteNotificationRequest_keys[k], "DeleteNotificationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNotificationRequest
-- Request of DeleteNotification
-- @param Notification [Notification] Request of DeleteNotification
-- @param BudgetName [BudgetName] Request of DeleteNotification
-- @param AccountId [AccountId] Request of DeleteNotification
-- Required parameter: AccountId
-- Required parameter: BudgetName
-- Required parameter: Notification
function M.DeleteNotificationRequest(Notification, BudgetName, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNotificationRequest")
	local t = { 
		["Notification"] = Notification,
		["BudgetName"] = BudgetName,
		["AccountId"] = AccountId,
	}
	M.AssertDeleteNotificationRequest(t)
	return t
end

local NotificationWithSubscribers_keys = { "Notification" = true, "Subscribers" = true, nil }

function M.AssertNotificationWithSubscribers(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationWithSubscribers to be of type 'table'")
	assert(struct["Notification"], "Expected key Notification to exist in table")
	assert(struct["Subscribers"], "Expected key Subscribers to exist in table")
	if struct["Notification"] then M.AssertNotification(struct["Notification"]) end
	if struct["Subscribers"] then M.AssertSubscribers(struct["Subscribers"]) end
	for k,_ in pairs(struct) do
		assert(NotificationWithSubscribers_keys[k], "NotificationWithSubscribers contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationWithSubscribers
-- A structure to relate notification and a list of subscribers who belong to the notification.
-- @param Notification [Notification] A structure to relate notification and a list of subscribers who belong to the notification.
-- @param Subscribers [Subscribers] A structure to relate notification and a list of subscribers who belong to the notification.
-- Required parameter: Notification
-- Required parameter: Subscribers
function M.NotificationWithSubscribers(Notification, Subscribers, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationWithSubscribers")
	local t = { 
		["Notification"] = Notification,
		["Subscribers"] = Subscribers,
	}
	M.AssertNotificationWithSubscribers(t)
	return t
end

local CreationLimitExceededException_keys = { "Message" = true, nil }

function M.AssertCreationLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreationLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AsserterrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(CreationLimitExceededException_keys[k], "CreationLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreationLimitExceededException
-- The exception is thrown when customer tries to create a record (e.g. budget), but the number this record already exceeds the limitation.
-- @param Message [errorMessage] The exception is thrown when customer tries to create a record (e.g. budget), but the number this record already exceeds the limitation.
function M.CreationLimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreationLimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertCreationLimitExceededException(t)
	return t
end

local DescribeBudgetsResponse_keys = { "NextToken" = true, "Budgets" = true, nil }

function M.AssertDescribeBudgetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBudgetsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertGenericString(struct["NextToken"]) end
	if struct["Budgets"] then M.AssertBudgets(struct["Budgets"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBudgetsResponse_keys[k], "DescribeBudgetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBudgetsResponse
-- Response of DescribeBudgets
-- @param NextToken [GenericString] Response of DescribeBudgets
-- @param Budgets [Budgets] Response of DescribeBudgets
function M.DescribeBudgetsResponse(NextToken, Budgets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBudgetsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Budgets"] = Budgets,
	}
	M.AssertDescribeBudgetsResponse(t)
	return t
end

local UpdateNotificationResponse_keys = { nil }

function M.AssertUpdateNotificationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateNotificationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateNotificationResponse_keys[k], "UpdateNotificationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateNotificationResponse
-- Response of UpdateNotification
function M.UpdateNotificationResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateNotificationResponse")
	local t = { 
	}
	M.AssertUpdateNotificationResponse(t)
	return t
end

local DescribeBudgetResponse_keys = { "Budget" = true, nil }

function M.AssertDescribeBudgetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeBudgetResponse to be of type 'table'")
	if struct["Budget"] then M.AssertBudget(struct["Budget"]) end
	for k,_ in pairs(struct) do
		assert(DescribeBudgetResponse_keys[k], "DescribeBudgetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeBudgetResponse
-- Response of DescribeBudget
-- @param Budget [Budget] Response of DescribeBudget
function M.DescribeBudgetResponse(Budget, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeBudgetResponse")
	local t = { 
		["Budget"] = Budget,
	}
	M.AssertDescribeBudgetResponse(t)
	return t
end

function M.AssertNumericValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumericValue to be of type 'string'")
	assert(str:match("[0-9]*(%.)?[0-9]+"), "Expected string to match pattern '[0-9]*(%.)?[0-9]+'")
end

-- A string to represent NumericValue.
function M.NumericValue(str)
	M.AssertNumericValue(str)
	return str
end

function M.AssertBudgetType(str)
	assert(str)
	assert(type(str) == "string", "Expected BudgetType to be of type 'string'")
end

-- The type of a budget. Can be COST or USAGE.
function M.BudgetType(str)
	M.AssertBudgetType(str)
	return str
end

function M.AssertNotificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationType to be of type 'string'")
end

-- The type of a notification. It should be ACTUAL or FORECASTED.
function M.NotificationType(str)
	M.AssertNotificationType(str)
	return str
end

function M.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

-- The error message the exception carries.
function M.errorMessage(str)
	M.AsserterrorMessage(str)
	return str
end

function M.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

-- A generic String.
function M.GenericString(str)
	M.AssertGenericString(str)
	return str
end

function M.AssertSubscriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionType to be of type 'string'")
end

-- The subscription type of the subscriber. It can be SMS or EMAIL.
function M.SubscriptionType(str)
	M.AssertSubscriptionType(str)
	return str
end

function M.AssertBudgetName(str)
	assert(str)
	assert(type(str) == "string", "Expected BudgetName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(str:match("[^:]+"), "Expected string to match pattern '[^:]+'")
end

-- A string represents the budget name. No ":" character is allowed.
function M.BudgetName(str)
	M.AssertBudgetName(str)
	return str
end

function M.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

-- The comparison operator of a notification. Currently we support less than, equal to and greater than.
function M.ComparisonOperator(str)
	M.AssertComparisonOperator(str)
	return str
end

function M.AssertTimeUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeUnit to be of type 'string'")
end

-- The time unit of the budget. e.g. weekly, monthly, etc.
function M.TimeUnit(str)
	M.AssertTimeUnit(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
	assert(#str <= 12, "Expected string to be max 12 characters")
	assert(#str >= 12, "Expected string to be min 12 characters")
end

-- Account Id of the customer. It should be a 12 digit number.
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertNotificationThreshold(double)
	assert(double)
	assert(type(double) == "number", "Expected NotificationThreshold to be of type 'number'")
end

function M.NotificationThreshold(double)
	M.AssertNotificationThreshold(double)
	return double
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertGenericBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected GenericBoolean to be of type 'boolean'")
end

function M.GenericBoolean(boolean)
	M.AssertGenericBoolean(boolean)
	return boolean
end

function M.AssertCostFilters(map)
	assert(map)
	assert(type(map) == "table", "Expected CostFilters to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertGenericString(k)
		M.AssertDimensionValues(v)
	end
end

function M.CostFilters(map)
	M.AssertCostFilters(map)
	return map
end

function M.AssertGenericTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected GenericTimestamp to be of type 'string'")
end

function M.GenericTimestamp(timestamp)
	M.AssertGenericTimestamp(timestamp)
	return timestamp
end

function M.AssertNotifications(list)
	assert(list)
	assert(type(list) == "table", "Expected Notifications to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNotification(v)
	end
end

-- A list of notifications.
-- List of Notification objects
function M.Notifications(list)
	M.AssertNotifications(list)
	return list
end

function M.AssertSubscribers(list)
	assert(list)
	assert(type(list) == "table", "Expected Subscribers to be of type ''table")
	assert(#list <= 11, "Expected list to be contain 11 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertSubscriber(v)
	end
end

-- A list of subscribers.
-- List of Subscriber objects
function M.Subscribers(list)
	M.AssertSubscribers(list)
	return list
end

function M.AssertDimensionValues(list)
	assert(list)
	assert(type(list) == "table", "Expected DimensionValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertGenericString(v)
	end
end

--  
-- List of GenericString objects
function M.DimensionValues(list)
	M.AssertDimensionValues(list)
	return list
end

function M.AssertBudgets(list)
	assert(list)
	assert(type(list) == "table", "Expected Budgets to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBudget(v)
	end
end

-- A list of budgets
-- List of Budget objects
function M.Budgets(list)
	M.AssertBudgets(list)
	return list
end

function M.AssertNotificationWithSubscribersList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationWithSubscribersList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertNotificationWithSubscribers(v)
	end
end

-- A list of Notifications, each with a list of subscribers.
-- List of NotificationWithSubscribers objects
function M.NotificationWithSubscribersList(list)
	M.AssertNotificationWithSubscribersList(list)
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
--- DescribeBudget
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

--- DescribeNotificationsForBudget
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

--- CreateSubscriber
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

--- CreateNotification
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

--- UpdateNotification
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

--- UpdateBudget
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

--- CreateBudget
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

--- DeleteNotification
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

--- DescribeSubscribersForNotification
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

--- DeleteSubscriber
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

--- DescribeBudgets
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

--- DeleteBudget
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

--- UpdateSubscriber
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


return M
