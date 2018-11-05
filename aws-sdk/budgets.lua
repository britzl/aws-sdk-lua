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
-- <p>The budget name already exists. Budget names must be unique within an account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return DuplicateRecordException structure as a key-value pair table
function M.DuplicateRecordException(args)
	assert(args, "You must provide an argument table when creating DuplicateRecordException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDuplicateRecordException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The spend objects associated with this budget. The <code>actualSpend</code> tracks how much you've used, cost, usage, or RI units, and the <code>forecastedSpend</code> tracks how much you are predicted to spend if your current usage remains steady.</p> <p>For example, if it is the 20th of the month and you have spent <code>50</code> dollars on Amazon EC2, your <code>actualSpend</code> is <code>50 USD</code>, and your <code>forecastedSpend</code> is <code>75 USD</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ForecastedSpend [Spend] <p>The amount of cost, usage, or RI units that you are forecasted to use.</p>
-- * ActualSpend [Spend] <p>The amount of cost, usage, or RI units that you have used.</p>
-- Required key: ActualSpend
-- @return CalculatedSpend structure as a key-value pair table
function M.CalculatedSpend(args)
	assert(args, "You must provide an argument table when creating CalculatedSpend")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ForecastedSpend"] = args["ForecastedSpend"],
		["ActualSpend"] = args["ActualSpend"],
	}
	asserts.AssertCalculatedSpend(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Subscriber = { ["SubscriptionType"] = true, ["Address"] = true, nil }

function asserts.AssertSubscriber(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscriber to be of type 'table'")
	assert(struct["SubscriptionType"], "Expected key SubscriptionType to exist in table")
	assert(struct["Address"], "Expected key Address to exist in table")
	if struct["SubscriptionType"] then asserts.AssertSubscriptionType(struct["SubscriptionType"]) end
	if struct["Address"] then asserts.AssertSubscriberAddress(struct["Address"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subscriber[k], "Subscriber contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscriber
-- <p>The subscriber to a budget notification. The subscriber consists of a subscription type and either an Amazon Simple Notification Service topic or an email address.</p> <p>For example, an email subscriber would have the following parameters:</p> <ul> <li> <p>A <code>subscriptionType</code> of <code>EMAIL</code> </p> </li> <li> <p>An <code>address</code> of <code>example@example.com</code> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionType [SubscriptionType] <p>The type of notification that AWS sends to a subscriber.</p>
-- * Address [SubscriberAddress] <p>The address that AWS sends budget notifications to, either an SNS topic or an email.</p>
-- Required key: SubscriptionType
-- Required key: Address
-- @return Subscriber structure as a key-value pair table
function M.Subscriber(args)
	assert(args, "You must provide an argument table when creating Subscriber")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionType"] = args["SubscriptionType"],
		["Address"] = args["Address"],
	}
	asserts.AssertSubscriber(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of CreateNotification </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateNotificationResponse structure as a key-value pair table
function M.CreateNotificationResponse(args)
	assert(args, "You must provide an argument table when creating CreateNotificationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateNotificationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>An error on the server occurred during the processing of your request. Try again later.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return InternalErrorException structure as a key-value pair table
function M.InternalErrorException(args)
	assert(args, "You must provide an argument table when creating InternalErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of DescribeNotificationsForBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * BudgetName [BudgetName] <p>The name of the budget whose notifications you want descriptions of.</p>
-- * MaxResults [MaxResults] <p>Optional integer. Specifies the maximum number of results to return in response.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget whose notifications you want descriptions of.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- @return DescribeNotificationsForBudgetRequest structure as a key-value pair table
function M.DescribeNotificationsForBudgetRequest(args)
	assert(args, "You must provide an argument table when creating DescribeNotificationsForBudgetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["BudgetName"] = args["BudgetName"],
		["MaxResults"] = args["MaxResults"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDescribeNotificationsForBudgetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CostTypes = { ["IncludeOtherSubscription"] = true, ["IncludeUpfront"] = true, ["IncludeRefund"] = true, ["UseBlended"] = true, ["IncludeDiscount"] = true, ["UseAmortized"] = true, ["IncludeTax"] = true, ["IncludeCredit"] = true, ["IncludeSupport"] = true, ["IncludeRecurring"] = true, ["IncludeSubscription"] = true, nil }

function asserts.AssertCostTypes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CostTypes to be of type 'table'")
	if struct["IncludeOtherSubscription"] then asserts.AssertNullableBoolean(struct["IncludeOtherSubscription"]) end
	if struct["IncludeUpfront"] then asserts.AssertNullableBoolean(struct["IncludeUpfront"]) end
	if struct["IncludeRefund"] then asserts.AssertNullableBoolean(struct["IncludeRefund"]) end
	if struct["UseBlended"] then asserts.AssertNullableBoolean(struct["UseBlended"]) end
	if struct["IncludeDiscount"] then asserts.AssertNullableBoolean(struct["IncludeDiscount"]) end
	if struct["UseAmortized"] then asserts.AssertNullableBoolean(struct["UseAmortized"]) end
	if struct["IncludeTax"] then asserts.AssertNullableBoolean(struct["IncludeTax"]) end
	if struct["IncludeCredit"] then asserts.AssertNullableBoolean(struct["IncludeCredit"]) end
	if struct["IncludeSupport"] then asserts.AssertNullableBoolean(struct["IncludeSupport"]) end
	if struct["IncludeRecurring"] then asserts.AssertNullableBoolean(struct["IncludeRecurring"]) end
	if struct["IncludeSubscription"] then asserts.AssertNullableBoolean(struct["IncludeSubscription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CostTypes[k], "CostTypes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CostTypes
-- <p>The types of cost included in a budget, such as tax and subscriptions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeOtherSubscription [NullableBoolean] <p>Specifies whether a budget includes non-RI subscription costs.</p> <p>The default value is <code>true</code>.</p>
-- * IncludeUpfront [NullableBoolean] <p>Specifies whether a budget includes upfront RI costs.</p> <p>The default value is <code>true</code>.</p>
-- * IncludeRefund [NullableBoolean] <p>Specifies whether a budget includes refunds.</p> <p>The default value is <code>true</code>.</p>
-- * UseBlended [NullableBoolean] <p>Specifies whether a budget uses blended rate.</p> <p>The default value is <code>false</code>.</p>
-- * IncludeDiscount [NullableBoolean] <p>Specifies whether a budget includes discounts.</p> <p>The default value is <code>true</code>.</p>
-- * UseAmortized [NullableBoolean] <p>Specifies whether a budget uses the amortized rate.</p> <p>The default value is <code>false</code>.</p>
-- * IncludeTax [NullableBoolean] <p>Specifies whether a budget includes taxes.</p> <p>The default value is <code>true</code>.</p>
-- * IncludeCredit [NullableBoolean] <p>Specifies whether a budget includes credits.</p> <p>The default value is <code>true</code>.</p>
-- * IncludeSupport [NullableBoolean] <p>Specifies whether a budget includes support subscription fees.</p> <p>The default value is <code>true</code>.</p>
-- * IncludeRecurring [NullableBoolean] <p>Specifies whether a budget includes recurring fees such as monthly RI fees.</p> <p>The default value is <code>true</code>.</p>
-- * IncludeSubscription [NullableBoolean] <p>Specifies whether a budget includes subscriptions.</p> <p>The default value is <code>true</code>.</p>
-- @return CostTypes structure as a key-value pair table
function M.CostTypes(args)
	assert(args, "You must provide an argument table when creating CostTypes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeOtherSubscription"] = args["IncludeOtherSubscription"],
		["IncludeUpfront"] = args["IncludeUpfront"],
		["IncludeRefund"] = args["IncludeRefund"],
		["UseBlended"] = args["UseBlended"],
		["IncludeDiscount"] = args["IncludeDiscount"],
		["UseAmortized"] = args["UseAmortized"],
		["IncludeTax"] = args["IncludeTax"],
		["IncludeCredit"] = args["IncludeCredit"],
		["IncludeSupport"] = args["IncludeSupport"],
		["IncludeRecurring"] = args["IncludeRecurring"],
		["IncludeSubscription"] = args["IncludeSubscription"],
	}
	asserts.AssertCostTypes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The pagination token is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return InvalidNextTokenException structure as a key-value pair table
function M.InvalidNextTokenException(args)
	assert(args, "You must provide an argument table when creating InvalidNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of DeleteBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BudgetName [BudgetName] <p>The name of the budget that you want to delete.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget that you want to delete.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- @return DeleteBudgetRequest structure as a key-value pair table
function M.DeleteBudgetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteBudgetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BudgetName"] = args["BudgetName"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDeleteBudgetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of GetNotificationsForBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notifications [Notifications] <p>A list of notifications associated with a budget.</p>
-- * NextToken [GenericString] <p>The pagination token that indicates the next set of results that you can retrieve.</p>
-- @return DescribeNotificationsForBudgetResponse structure as a key-value pair table
function M.DescribeNotificationsForBudgetResponse(args)
	assert(args, "You must provide an argument table when creating DescribeNotificationsForBudgetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notifications"] = args["Notifications"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeNotificationsForBudgetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of UpdateSubscriber </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notification [Notification] <p>The notification whose subscriber you want to update.</p>
-- * OldSubscriber [Subscriber] <p>The previous subscriber associated with a budget notification.</p>
-- * BudgetName [BudgetName] <p>The name of the budget whose subscriber you want to update.</p>
-- * NewSubscriber [Subscriber] <p>The updated subscriber associated with a budget notification.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget whose subscriber you want to update.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- Required key: Notification
-- Required key: OldSubscriber
-- Required key: NewSubscriber
-- @return UpdateSubscriberRequest structure as a key-value pair table
function M.UpdateSubscriberRequest(args)
	assert(args, "You must provide an argument table when creating UpdateSubscriberRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notification"] = args["Notification"],
		["OldSubscriber"] = args["OldSubscriber"],
		["BudgetName"] = args["BudgetName"],
		["NewSubscriber"] = args["NewSubscriber"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertUpdateSubscriberRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The pagination token expired.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return ExpiredNextTokenException structure as a key-value pair table
function M.ExpiredNextTokenException(args)
	assert(args, "You must provide an argument table when creating ExpiredNextTokenException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertExpiredNextTokenException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of DescribeBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BudgetName [BudgetName] <p>The name of the budget that you want a description of.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget that you want a description of.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- @return DescribeBudgetRequest structure as a key-value pair table
function M.DescribeBudgetRequest(args)
	assert(args, "You must provide an argument table when creating DescribeBudgetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["BudgetName"] = args["BudgetName"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDescribeBudgetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>An error on the client occurred. Typically, the cause is an invalid input value.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return InvalidParameterException structure as a key-value pair table
function M.InvalidParameterException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of CreateNotification </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notification [Notification] <p>The notification that you want to create.</p>
-- * BudgetName [BudgetName] <p>The name of the budget that you want AWS to notified you about. Budget names must be unique within an account.</p>
-- * Subscribers [Subscribers] <p>A list of subscribers that you want to associate with the notification. Each notification can have one SNS subscriber and up to ten email subscribers.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget that you want to create a notification for.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- Required key: Notification
-- Required key: Subscribers
-- @return CreateNotificationRequest structure as a key-value pair table
function M.CreateNotificationRequest(args)
	assert(args, "You must provide an argument table when creating CreateNotificationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notification"] = args["Notification"],
		["BudgetName"] = args["BudgetName"],
		["Subscribers"] = args["Subscribers"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertCreateNotificationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Notification = { ["Threshold"] = true, ["ComparisonOperator"] = true, ["ThresholdType"] = true, ["NotificationType"] = true, nil }

function asserts.AssertNotification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Notification to be of type 'table'")
	assert(struct["NotificationType"], "Expected key NotificationType to exist in table")
	assert(struct["ComparisonOperator"], "Expected key ComparisonOperator to exist in table")
	assert(struct["Threshold"], "Expected key Threshold to exist in table")
	if struct["Threshold"] then asserts.AssertNotificationThreshold(struct["Threshold"]) end
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["ThresholdType"] then asserts.AssertThresholdType(struct["ThresholdType"]) end
	if struct["NotificationType"] then asserts.AssertNotificationType(struct["NotificationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Notification[k], "Notification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Notification
-- <p>A notification associated with a budget. A budget can have up to five notifications. </p> <p>Each notification must have at least one subscriber. A notification can have one SNS subscriber and up to ten email subscribers, for a total of 11 subscribers.</p> <p>For example, if you have a budget for 200 dollars and you want to be notified when you go over 160 dollars, create a notification with the following parameters:</p> <ul> <li> <p>A notificationType of <code>ACTUAL</code> </p> </li> <li> <p>A comparisonOperator of <code>GREATER_THAN</code> </p> </li> <li> <p>A notification threshold of <code>80</code> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Threshold [NotificationThreshold] <p>The threshold associated with a notification. Thresholds are always a percentage.</p>
-- * ComparisonOperator [ComparisonOperator] <p>The comparison used for this notification.</p>
-- * ThresholdType [ThresholdType] <p>The type of threshold for a notification. For <code>ACTUAL</code> thresholds, AWS notifies you when you go over the threshold, and for <code>FORECASTED</code> thresholds AWS notifies you when you are forecasted to go over the threshold.</p>
-- * NotificationType [NotificationType] <p>Whether the notification is for how much you have spent (<code>ACTUAL</code>) or for how much you are forecasted to spend (<code>FORECASTED</code>).</p>
-- Required key: NotificationType
-- Required key: ComparisonOperator
-- Required key: Threshold
-- @return Notification structure as a key-value pair table
function M.Notification(args)
	assert(args, "You must provide an argument table when creating Notification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Threshold"] = args["Threshold"],
		["ComparisonOperator"] = args["ComparisonOperator"],
		["ThresholdType"] = args["ThresholdType"],
		["NotificationType"] = args["NotificationType"],
	}
	asserts.AssertNotification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimePeriod = { ["Start"] = true, ["End"] = true, nil }

function asserts.AssertTimePeriod(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimePeriod to be of type 'table'")
	if struct["Start"] then asserts.AssertGenericTimestamp(struct["Start"]) end
	if struct["End"] then asserts.AssertGenericTimestamp(struct["End"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimePeriod[k], "TimePeriod contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimePeriod
-- <p>The period of time covered by a budget. Has a start date and an end date. The start date must come before the end date. There are no restrictions on the end date. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Start [GenericTimestamp] <p>The start date for a budget. If you created your budget and didn't specify a start date, AWS defaults to the start of your chosen time period (i.e. DAILY, MONTHLY, QUARTERLY, ANNUALLY). For example, if you created your budget on January 24th 2018, chose <code>DAILY</code>, and didn't set a start date, AWS set your start date to <code>01/24/18 00:00 UTC</code>. If you chose <code>MONTHLY</code>, AWS set your start date to <code>01/01/18 00:00 UTC</code>. The defaults are the same for the AWS Billing and Cost Management console and the API.</p> <p>You can change your start date with the <code>UpdateBudget</code> operation.</p>
-- * End [GenericTimestamp] <p>The end date for a budget. If you didn't specify an end date, AWS set your end date to <code>06/15/87 00:00 UTC</code>. The defaults are the same for the AWS Billing and Cost Management console and the API.</p> <p>After the end date, AWS deletes the budget and all associated notifications and subscribers. You can change your end date with the <code>UpdateBudget</code> operation.</p>
-- @return TimePeriod structure as a key-value pair table
function M.TimePeriod(args)
	assert(args, "You must provide an argument table when creating TimePeriod")
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
	asserts.AssertTimePeriod(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of DeleteNotification </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteNotificationResponse structure as a key-value pair table
function M.DeleteNotificationResponse(args)
	assert(args, "You must provide an argument table when creating DeleteNotificationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteNotificationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of UpdateBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateBudgetResponse structure as a key-value pair table
function M.UpdateBudgetResponse(args)
	assert(args, "You must provide an argument table when creating UpdateBudgetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateBudgetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of CreateBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationsWithSubscribers [NotificationWithSubscribersList] <p>A notification that you want to associate with a budget. A budget can have up to five notifications, and each notification can have one SNS subscriber and up to ten email subscribers. If you include notifications and subscribers in your <code>CreateBudget</code> call, AWS creates the notifications and subscribers for you.</p>
-- * Budget [Budget] <p>The budget object that you want to create.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget.</p>
-- Required key: AccountId
-- Required key: Budget
-- @return CreateBudgetRequest structure as a key-value pair table
function M.CreateBudgetRequest(args)
	assert(args, "You must provide an argument table when creating CreateBudgetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotificationsWithSubscribers"] = args["NotificationsWithSubscribers"],
		["Budget"] = args["Budget"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertCreateBudgetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of CreateSubscriber </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateSubscriberResponse structure as a key-value pair table
function M.CreateSubscriberResponse(args)
	assert(args, "You must provide an argument table when creating CreateSubscriberResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateSubscriberResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of DescribeBudgets </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * MaxResults [MaxResults] <p>Optional integer. Specifies the maximum number of results to return in response.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budgets that you want descriptions of.</p>
-- Required key: AccountId
-- @return DescribeBudgetsRequest structure as a key-value pair table
function M.DescribeBudgetsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeBudgetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDescribeBudgetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of DeleteSubscriber </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteSubscriberResponse structure as a key-value pair table
function M.DeleteSubscriberResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSubscriberResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteSubscriberResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of DescribeSubscribersForNotification </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>The pagination token that indicates the next set of results that you can retrieve.</p>
-- * Subscribers [Subscribers] <p>A list of subscribers associated with a notification.</p>
-- @return DescribeSubscribersForNotificationResponse structure as a key-value pair table
function M.DescribeSubscribersForNotificationResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSubscribersForNotificationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Subscribers"] = args["Subscribers"],
	}
	asserts.AssertDescribeSubscribersForNotificationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of UpdateNotification </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NewNotification [Notification] <p>The updated notification to be associated with a budget.</p>
-- * BudgetName [BudgetName] <p>The name of the budget whose notification you want to update.</p>
-- * OldNotification [Notification] <p>The previous notification associated with a budget.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget whose notification you want to update.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- Required key: OldNotification
-- Required key: NewNotification
-- @return UpdateNotificationRequest structure as a key-value pair table
function M.UpdateNotificationRequest(args)
	assert(args, "You must provide an argument table when creating UpdateNotificationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NewNotification"] = args["NewNotification"],
		["BudgetName"] = args["BudgetName"],
		["OldNotification"] = args["OldNotification"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertUpdateNotificationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of CreateBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateBudgetResponse structure as a key-value pair table
function M.CreateBudgetResponse(args)
	assert(args, "You must provide an argument table when creating CreateBudgetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateBudgetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of DeleteBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteBudgetResponse structure as a key-value pair table
function M.DeleteBudgetResponse(args)
	assert(args, "You must provide an argument table when creating DeleteBudgetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteBudgetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of UpdateSubscriber </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateSubscriberResponse structure as a key-value pair table
function M.UpdateSubscriberResponse(args)
	assert(args, "You must provide an argument table when creating UpdateSubscriberResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateSubscriberResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Budget = { ["CalculatedSpend"] = true, ["BudgetType"] = true, ["BudgetLimit"] = true, ["BudgetName"] = true, ["CostTypes"] = true, ["TimeUnit"] = true, ["TimePeriod"] = true, ["CostFilters"] = true, nil }

function asserts.AssertBudget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Budget to be of type 'table'")
	assert(struct["BudgetName"], "Expected key BudgetName to exist in table")
	assert(struct["TimeUnit"], "Expected key TimeUnit to exist in table")
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
-- <p>Represents the output of the <code>CreateBudget</code> operation. The content consists of the detailed metadata and data file information, and the current status of the <code>budget</code>.</p> <p>The ARN pattern for a budget is: <code>arn:aws:budgetservice::AccountId:budget/budgetName</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CalculatedSpend [CalculatedSpend] <p>The actual and forecasted cost or usage being tracked by a budget.</p>
-- * BudgetType [BudgetType] <p>Whether this budget tracks monetary costs, usage, or RI utilization.</p>
-- * BudgetLimit [Spend] <p>The total amount of cost, usage, or RI utilization that you want to track with your budget.</p> <p> <code>BudgetLimit</code> is required for cost or usage budgets, but optional for RI utilization budgets. RI utilization budgets default to the only valid value for RI utilization budgets, which is <code>100</code>.</p>
-- * BudgetName [BudgetName] <p>The name of a budget. Unique within accounts. <code>:</code> and <code>\</code> characters are not allowed in the <code>BudgetName</code>.</p>
-- * CostTypes [CostTypes] <p>The types of costs included in this budget.</p>
-- * TimeUnit [TimeUnit] <p>The length of time until a budget resets the actual and forecasted spend.</p>
-- * TimePeriod [TimePeriod] <p>The period of time covered by a budget. Has a start date and an end date. The start date must come before the end date. There are no restrictions on the end date. </p> <p>If you created your budget and didn't specify a start date, AWS defaults to the start of your chosen time period (i.e. DAILY, MONTHLY, QUARTERLY, ANNUALLY). For example, if you created your budget on January 24th 2018, chose <code>DAILY</code>, and didn't set a start date, AWS set your start date to <code>01/24/18 00:00 UTC</code>. If you chose <code>MONTHLY</code>, AWS set your start date to <code>01/01/18 00:00 UTC</code>. If you didn't specify an end date, AWS set your end date to <code>06/15/87 00:00 UTC</code>. The defaults are the same for the AWS Billing and Cost Management console and the API. </p> <p>You can change either date with the <code>UpdateBudget</code> operation.</p> <p>After the end date, AWS deletes the budget and all associated notifications and subscribers.</p>
-- * CostFilters [CostFilters] <p>The cost filters applied to a budget, such as service or region.</p>
-- Required key: BudgetName
-- Required key: TimeUnit
-- Required key: BudgetType
-- @return Budget structure as a key-value pair table
function M.Budget(args)
	assert(args, "You must provide an argument table when creating Budget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CalculatedSpend"] = args["CalculatedSpend"],
		["BudgetType"] = args["BudgetType"],
		["BudgetLimit"] = args["BudgetLimit"],
		["BudgetName"] = args["BudgetName"],
		["CostTypes"] = args["CostTypes"],
		["TimeUnit"] = args["TimeUnit"],
		["TimePeriod"] = args["TimePeriod"],
		["CostFilters"] = args["CostFilters"],
	}
	asserts.AssertBudget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of DeleteSubscriber </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subscriber [Subscriber] <p>The subscriber that you want to delete.</p>
-- * Notification [Notification] <p>The notification whose subscriber you want to delete.</p>
-- * BudgetName [BudgetName] <p>The name of the budget whose subscriber you want to delete.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget whose subscriber you want to delete.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- Required key: Notification
-- Required key: Subscriber
-- @return DeleteSubscriberRequest structure as a key-value pair table
function M.DeleteSubscriberRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSubscriberRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subscriber"] = args["Subscriber"],
		["Notification"] = args["Notification"],
		["BudgetName"] = args["BudgetName"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDeleteSubscriberRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of CreateSubscriber </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subscriber [Subscriber] <p>The subscriber that you want to associate with a budget notification.</p>
-- * Notification [Notification] <p>The notification that you want to create a subscriber for.</p>
-- * BudgetName [BudgetName] <p>The name of the budget that you want to subscribe to. Budget names must be unique within an account.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> associated with the budget that you want to create a subscriber for.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- Required key: Notification
-- Required key: Subscriber
-- @return CreateSubscriberRequest structure as a key-value pair table
function M.CreateSubscriberRequest(args)
	assert(args, "You must provide an argument table when creating CreateSubscriberRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subscriber"] = args["Subscriber"],
		["Notification"] = args["Notification"],
		["BudgetName"] = args["BudgetName"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertCreateSubscriberRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of UpdateBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NewBudget [Budget] <p>The budget that you want to update your budget to.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget that you want to update.</p>
-- Required key: AccountId
-- Required key: NewBudget
-- @return UpdateBudgetRequest structure as a key-value pair table
function M.UpdateBudgetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateBudgetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NewBudget"] = args["NewBudget"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertUpdateBudgetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Spend = { ["Amount"] = true, ["Unit"] = true, nil }

function asserts.AssertSpend(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Spend to be of type 'table'")
	assert(struct["Amount"], "Expected key Amount to exist in table")
	assert(struct["Unit"], "Expected key Unit to exist in table")
	if struct["Amount"] then asserts.AssertNumericValue(struct["Amount"]) end
	if struct["Unit"] then asserts.AssertUnitValue(struct["Unit"]) end
	for k,_ in pairs(struct) do
		assert(keys.Spend[k], "Spend contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Spend
-- <p>The amount of cost or usage being measured for a budget.</p> <p>For example, a <code>Spend</code> for <code>3 GB</code> of S3 usage would have the following parameters:</p> <ul> <li> <p>An <code>Amount</code> of <code>3</code> </p> </li> <li> <p>A <code>unit</code> of <code>GB</code> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Amount [NumericValue] <p>The cost or usage amount associated with a budget forecast, actual spend, or budget threshold.</p>
-- * Unit [UnitValue] <p>The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB.</p>
-- Required key: Amount
-- Required key: Unit
-- @return Spend structure as a key-value pair table
function M.Spend(args)
	assert(args, "You must provide an argument table when creating Spend")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Amount"] = args["Amount"],
		["Unit"] = args["Unit"],
	}
	asserts.AssertSpend(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of DescribeSubscribersForNotification </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notification [Notification] <p>The notification whose subscribers you want to list.</p>
-- * NextToken [GenericString] <p>The pagination token that indicates the next set of results to retrieve.</p>
-- * BudgetName [BudgetName] <p>The name of the budget whose subscribers you want descriptions of.</p>
-- * MaxResults [MaxResults] <p>Optional integer. Specifies the maximum number of results to return in response.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget whose subscribers you want descriptions of.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- Required key: Notification
-- @return DescribeSubscribersForNotificationRequest structure as a key-value pair table
function M.DescribeSubscribersForNotificationRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSubscribersForNotificationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notification"] = args["Notification"],
		["NextToken"] = args["NextToken"],
		["BudgetName"] = args["BudgetName"],
		["MaxResults"] = args["MaxResults"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDescribeSubscribersForNotificationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>We can’t locate the resource that you specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
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
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Request of DeleteNotification </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notification [Notification] <p>The notification that you want to delete.</p>
-- * BudgetName [BudgetName] <p>The name of the budget whose notification you want to delete.</p>
-- * AccountId [AccountId] <p>The <code>accountId</code> that is associated with the budget whose notification you want to delete.</p>
-- Required key: AccountId
-- Required key: BudgetName
-- Required key: Notification
-- @return DeleteNotificationRequest structure as a key-value pair table
function M.DeleteNotificationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteNotificationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notification"] = args["Notification"],
		["BudgetName"] = args["BudgetName"],
		["AccountId"] = args["AccountId"],
	}
	asserts.AssertDeleteNotificationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>A notification with subscribers. A notification can have one SNS subscriber and up to ten email subscribers, for a total of 11 subscribers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Notification [Notification] <p>The notification associated with a budget.</p>
-- * Subscribers [Subscribers] <p>A list of subscribers who are subscribed to this notification.</p>
-- Required key: Notification
-- Required key: Subscribers
-- @return NotificationWithSubscribers structure as a key-value pair table
function M.NotificationWithSubscribers(args)
	assert(args, "You must provide an argument table when creating NotificationWithSubscribers")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Notification"] = args["Notification"],
		["Subscribers"] = args["Subscribers"],
	}
	asserts.AssertNotificationWithSubscribers(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>You've exceeded the notification or subscriber limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [errorMessage] 
-- @return CreationLimitExceededException structure as a key-value pair table
function M.CreationLimitExceededException(args)
	assert(args, "You must provide an argument table when creating CreationLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertCreationLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of DescribeBudgets </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>The pagination token that indicates the next set of results that you can retrieve.</p>
-- * Budgets [Budgets] <p>A list of budgets.</p>
-- @return DescribeBudgetsResponse structure as a key-value pair table
function M.DescribeBudgetsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeBudgetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Budgets"] = args["Budgets"],
	}
	asserts.AssertDescribeBudgetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of UpdateNotification </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateNotificationResponse structure as a key-value pair table
function M.UpdateNotificationResponse(args)
	assert(args, "You must provide an argument table when creating UpdateNotificationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateNotificationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Response of DescribeBudget </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Budget [Budget] <p>The description of the budget.</p>
-- @return DescribeBudgetResponse structure as a key-value pair table
function M.DescribeBudgetResponse(args)
	assert(args, "You must provide an argument table when creating DescribeBudgetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Budget"] = args["Budget"],
	}
	asserts.AssertDescribeBudgetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertUnitValue(str)
	assert(str)
	assert(type(str) == "string", "Expected UnitValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p> A string to represent budget spend unit. It should be not null and not empty.</p>
function M.UnitValue(str)
	asserts.AssertUnitValue(str)
	return str
end

function asserts.AssertNumericValue(str)
	assert(str)
	assert(type(str) == "string", "Expected NumericValue to be of type 'string'")
end

-- <p> A string to represent NumericValue.</p>
function M.NumericValue(str)
	asserts.AssertNumericValue(str)
	return str
end

function asserts.AssertBudgetType(str)
	assert(str)
	assert(type(str) == "string", "Expected BudgetType to be of type 'string'")
end

-- <p> The type of a budget. It should be COST, USAGE, or RI_UTILIZATION.</p>
function M.BudgetType(str)
	asserts.AssertBudgetType(str)
	return str
end

function asserts.AssertNotificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationType to be of type 'string'")
end

-- <p> The type of a notification. It should be ACTUAL or FORECASTED.</p>
function M.NotificationType(str)
	asserts.AssertNotificationType(str)
	return str
end

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

-- <p>The error message the exception carries.</p>
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
	return str
end

function asserts.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

-- <p> A generic String.</p>
function M.GenericString(str)
	asserts.AssertGenericString(str)
	return str
end

function asserts.AssertSubscriptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriptionType to be of type 'string'")
end

-- <p> The subscription type of the subscriber. It can be SMS or EMAIL.</p>
function M.SubscriptionType(str)
	asserts.AssertSubscriptionType(str)
	return str
end

function asserts.AssertBudgetName(str)
	assert(str)
	assert(type(str) == "string", "Expected BudgetName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

-- <p> A string represents the budget name. No ":" and "\" character is allowed.</p>
function M.BudgetName(str)
	asserts.AssertBudgetName(str)
	return str
end

function asserts.AssertSubscriberAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected SubscriberAddress to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p> String containing email or sns topic for the subscriber address.</p>
function M.SubscriberAddress(str)
	asserts.AssertSubscriberAddress(str)
	return str
end

function asserts.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

-- <p> The comparison operator of a notification. Currently we support less than, equal to and greater than.</p>
function M.ComparisonOperator(str)
	asserts.AssertComparisonOperator(str)
	return str
end

function asserts.AssertThresholdType(str)
	assert(str)
	assert(type(str) == "string", "Expected ThresholdType to be of type 'string'")
end

-- <p> The type of threshold for a notification. It can be PERCENTAGE or ABSOLUTE_VALUE.</p>
function M.ThresholdType(str)
	asserts.AssertThresholdType(str)
	return str
end

function asserts.AssertTimeUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeUnit to be of type 'string'")
end

-- <p> The time unit of the budget. e.g. MONTHLY, QUARTERLY, etc.</p>
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

-- <p>The account ID of the customer. It should be a 12 digit number.</p>
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

function asserts.AssertNullableBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullableBoolean to be of type 'boolean'")
end

function M.NullableBoolean(boolean)
	asserts.AssertNullableBoolean(boolean)
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

-- <p> A list of notifications.</p>
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

-- <p> A list of subscribers.</p>
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

-- <p> A list of budgets</p>
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

-- <p> A list of Notifications, each with a list of subscribers.</p>
-- List of NotificationWithSubscribers objects
function M.NotificationWithSubscribersList(list)
	asserts.AssertNotificationWithSubscribersList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call DescribeBudget asynchronously, invoking a callback when done
-- @param DescribeBudgetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBudgetAsync(DescribeBudgetRequest, cb)
	assert(DescribeBudgetRequest, "You must provide a DescribeBudgetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DescribeBudget",
	}
	for header,value in pairs(DescribeBudgetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeBudgetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBudgetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBudgetSync(DescribeBudgetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBudgetAsync(DescribeBudgetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeNotificationsForBudget asynchronously, invoking a callback when done
-- @param DescribeNotificationsForBudgetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeNotificationsForBudgetAsync(DescribeNotificationsForBudgetRequest, cb)
	assert(DescribeNotificationsForBudgetRequest, "You must provide a DescribeNotificationsForBudgetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DescribeNotificationsForBudget",
	}
	for header,value in pairs(DescribeNotificationsForBudgetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeNotificationsForBudgetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeNotificationsForBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeNotificationsForBudgetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeNotificationsForBudgetSync(DescribeNotificationsForBudgetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeNotificationsForBudgetAsync(DescribeNotificationsForBudgetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSubscriber asynchronously, invoking a callback when done
-- @param CreateSubscriberRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSubscriberAsync(CreateSubscriberRequest, cb)
	assert(CreateSubscriberRequest, "You must provide a CreateSubscriberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.CreateSubscriber",
	}
	for header,value in pairs(CreateSubscriberRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSubscriberRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSubscriber synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSubscriberRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSubscriberSync(CreateSubscriberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSubscriberAsync(CreateSubscriberRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNotification asynchronously, invoking a callback when done
-- @param CreateNotificationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateNotificationAsync(CreateNotificationRequest, cb)
	assert(CreateNotificationRequest, "You must provide a CreateNotificationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.CreateNotification",
	}
	for header,value in pairs(CreateNotificationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateNotificationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNotificationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateNotificationSync(CreateNotificationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNotificationAsync(CreateNotificationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateNotification asynchronously, invoking a callback when done
-- @param UpdateNotificationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateNotificationAsync(UpdateNotificationRequest, cb)
	assert(UpdateNotificationRequest, "You must provide a UpdateNotificationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.UpdateNotification",
	}
	for header,value in pairs(UpdateNotificationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateNotificationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateNotificationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateNotificationSync(UpdateNotificationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateNotificationAsync(UpdateNotificationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateBudget asynchronously, invoking a callback when done
-- @param UpdateBudgetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateBudgetAsync(UpdateBudgetRequest, cb)
	assert(UpdateBudgetRequest, "You must provide a UpdateBudgetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.UpdateBudget",
	}
	for header,value in pairs(UpdateBudgetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateBudgetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateBudgetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateBudgetSync(UpdateBudgetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateBudgetAsync(UpdateBudgetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateBudget asynchronously, invoking a callback when done
-- @param CreateBudgetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateBudgetAsync(CreateBudgetRequest, cb)
	assert(CreateBudgetRequest, "You must provide a CreateBudgetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.CreateBudget",
	}
	for header,value in pairs(CreateBudgetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateBudgetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBudgetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateBudgetSync(CreateBudgetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBudgetAsync(CreateBudgetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNotification asynchronously, invoking a callback when done
-- @param DeleteNotificationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNotificationAsync(DeleteNotificationRequest, cb)
	assert(DeleteNotificationRequest, "You must provide a DeleteNotificationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DeleteNotification",
	}
	for header,value in pairs(DeleteNotificationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteNotificationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNotificationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNotificationSync(DeleteNotificationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNotificationAsync(DeleteNotificationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSubscribersForNotification asynchronously, invoking a callback when done
-- @param DescribeSubscribersForNotificationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSubscribersForNotificationAsync(DescribeSubscribersForNotificationRequest, cb)
	assert(DescribeSubscribersForNotificationRequest, "You must provide a DescribeSubscribersForNotificationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DescribeSubscribersForNotification",
	}
	for header,value in pairs(DescribeSubscribersForNotificationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSubscribersForNotificationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSubscribersForNotification synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSubscribersForNotificationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSubscribersForNotificationSync(DescribeSubscribersForNotificationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSubscribersForNotificationAsync(DescribeSubscribersForNotificationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSubscriber asynchronously, invoking a callback when done
-- @param DeleteSubscriberRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSubscriberAsync(DeleteSubscriberRequest, cb)
	assert(DeleteSubscriberRequest, "You must provide a DeleteSubscriberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DeleteSubscriber",
	}
	for header,value in pairs(DeleteSubscriberRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSubscriberRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSubscriber synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSubscriberRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSubscriberSync(DeleteSubscriberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSubscriberAsync(DeleteSubscriberRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeBudgets asynchronously, invoking a callback when done
-- @param DescribeBudgetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeBudgetsAsync(DescribeBudgetsRequest, cb)
	assert(DescribeBudgetsRequest, "You must provide a DescribeBudgetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DescribeBudgets",
	}
	for header,value in pairs(DescribeBudgetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeBudgetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeBudgets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeBudgetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeBudgetsSync(DescribeBudgetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeBudgetsAsync(DescribeBudgetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBudget asynchronously, invoking a callback when done
-- @param DeleteBudgetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteBudgetAsync(DeleteBudgetRequest, cb)
	assert(DeleteBudgetRequest, "You must provide a DeleteBudgetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.DeleteBudget",
	}
	for header,value in pairs(DeleteBudgetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteBudgetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBudget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBudgetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteBudgetSync(DeleteBudgetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBudgetAsync(DeleteBudgetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateSubscriber asynchronously, invoking a callback when done
-- @param UpdateSubscriberRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateSubscriberAsync(UpdateSubscriberRequest, cb)
	assert(UpdateSubscriberRequest, "You must provide a UpdateSubscriberRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSBudgetServiceGateway.UpdateSubscriber",
	}
	for header,value in pairs(UpdateSubscriberRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateSubscriberRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateSubscriber synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateSubscriberRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateSubscriberSync(UpdateSubscriberRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateSubscriberAsync(UpdateSubscriberRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
