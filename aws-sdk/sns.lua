--- GENERATED CODE - DO NOT MODIFY
-- Amazon Simple Notification Service (sns-2010-03-31)

local M = {}

M.metadata = {
	api_version = "2010-03-31",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "sns",
	service_abbreviation = "Amazon SNS",
	service_full_name = "Amazon Simple Notification Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "sns-2010-03-31",
}

local SubscriptionLimitExceededException_keys = { "message" = true, nil }

function M.AssertSubscriptionLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionLimitExceededException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(SubscriptionLimitExceededException_keys[k], "SubscriptionLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionLimitExceededException
-- &lt;p&gt;Indicates that the customer already owns the maximum allowed number of subscriptions.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Indicates that the customer already owns the maximum allowed number of subscriptions.&lt;/p&gt;
function M.SubscriptionLimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionLimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertSubscriptionLimitExceededException(t)
	return t
end

local CheckIfPhoneNumberIsOptedOutInput_keys = { "phoneNumber" = true, nil }

function M.AssertCheckIfPhoneNumberIsOptedOutInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckIfPhoneNumberIsOptedOutInput to be of type 'table'")
	assert(struct["phoneNumber"], "Expected key phoneNumber to exist in table")
	if struct["phoneNumber"] then M.AssertPhoneNumber(struct["phoneNumber"]) end
	for k,_ in pairs(struct) do
		assert(CheckIfPhoneNumberIsOptedOutInput_keys[k], "CheckIfPhoneNumberIsOptedOutInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckIfPhoneNumberIsOptedOutInput
-- &lt;p&gt;The input for the &lt;code&gt;CheckIfPhoneNumberIsOptedOut&lt;/code&gt; action.&lt;/p&gt;
-- @param phoneNumber [PhoneNumber] &lt;p&gt;The phone number for which you want to check the opt out status.&lt;/p&gt;
-- Required parameter: phoneNumber
function M.CheckIfPhoneNumberIsOptedOutInput(phoneNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CheckIfPhoneNumberIsOptedOutInput")
	local t = { 
		["phoneNumber"] = phoneNumber,
	}
	M.AssertCheckIfPhoneNumberIsOptedOutInput(t)
	return t
end

local GetEndpointAttributesResponse_keys = { "Attributes" = true, nil }

function M.AssertGetEndpointAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEndpointAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertMapStringToString(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(GetEndpointAttributesResponse_keys[k], "GetEndpointAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEndpointAttributesResponse
-- &lt;p&gt;Response from GetEndpointAttributes of the EndpointArn.&lt;/p&gt;
-- @param Attributes [MapStringToString] &lt;p&gt;Attributes include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CustomUserData&lt;/code&gt; -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Enabled&lt;/code&gt; -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Token&lt;/code&gt; -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetEndpointAttributesResponse(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEndpointAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertGetEndpointAttributesResponse(t)
	return t
end

local GetEndpointAttributesInput_keys = { "EndpointArn" = true, nil }

function M.AssertGetEndpointAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEndpointAttributesInput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(GetEndpointAttributesInput_keys[k], "GetEndpointAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEndpointAttributesInput
-- &lt;p&gt;Input for GetEndpointAttributes action.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;EndpointArn for GetEndpointAttributes input.&lt;/p&gt;
-- Required parameter: EndpointArn
function M.GetEndpointAttributesInput(EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEndpointAttributesInput")
	local t = { 
		["EndpointArn"] = EndpointArn,
	}
	M.AssertGetEndpointAttributesInput(t)
	return t
end

local SetTopicAttributesInput_keys = { "AttributeName" = true, "AttributeValue" = true, "TopicArn" = true, nil }

function M.AssertSetTopicAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTopicAttributesInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["AttributeName"] then M.AssertattributeName(struct["AttributeName"]) end
	if struct["AttributeValue"] then M.AssertattributeValue(struct["AttributeValue"]) end
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(SetTopicAttributesInput_keys[k], "SetTopicAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTopicAttributesInput
-- &lt;p&gt;Input for SetTopicAttributes action.&lt;/p&gt;
-- @param AttributeName [attributeName] &lt;p&gt;The name of the attribute you want to set. Only a subset of the topic's attributes are mutable.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;Policy&lt;/code&gt; | &lt;code&gt;DisplayName&lt;/code&gt; | &lt;code&gt;DeliveryPolicy&lt;/code&gt; &lt;/p&gt;
-- @param AttributeValue [attributeValue] &lt;p&gt;The new value for the attribute.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the topic to modify.&lt;/p&gt;
-- Required parameter: TopicArn
-- Required parameter: AttributeName
function M.SetTopicAttributesInput(AttributeName, AttributeValue, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTopicAttributesInput")
	local t = { 
		["AttributeName"] = AttributeName,
		["AttributeValue"] = AttributeValue,
		["TopicArn"] = TopicArn,
	}
	M.AssertSetTopicAttributesInput(t)
	return t
end

local CreatePlatformApplicationInput_keys = { "Platform" = true, "Name" = true, "Attributes" = true, nil }

function M.AssertCreatePlatformApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlatformApplicationInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Platform"], "Expected key Platform to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Platform"] then M.AssertString(struct["Platform"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Attributes"] then M.AssertMapStringToString(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(CreatePlatformApplicationInput_keys[k], "CreatePlatformApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlatformApplicationInput
-- &lt;p&gt;Input for CreatePlatformApplication action.&lt;/p&gt;
-- @param Platform [String] &lt;p&gt;The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Google Cloud Messaging).&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Application names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters long.&lt;/p&gt;
-- @param Attributes [MapStringToString] &lt;p&gt;For a list of attributes, see &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html&quot;&gt;SetPlatformApplicationAttributes&lt;/a&gt; &lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Platform
-- Required parameter: Attributes
function M.CreatePlatformApplicationInput(Platform, Name, Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlatformApplicationInput")
	local t = { 
		["Platform"] = Platform,
		["Name"] = Name,
		["Attributes"] = Attributes,
	}
	M.AssertCreatePlatformApplicationInput(t)
	return t
end

local CreatePlatformEndpointInput_keys = { "Attributes" = true, "Token" = true, "PlatformApplicationArn" = true, "CustomUserData" = true, nil }

function M.AssertCreatePlatformEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlatformEndpointInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	assert(struct["Token"], "Expected key Token to exist in table")
	if struct["Attributes"] then M.AssertMapStringToString(struct["Attributes"]) end
	if struct["Token"] then M.AssertString(struct["Token"]) end
	if struct["PlatformApplicationArn"] then M.AssertString(struct["PlatformApplicationArn"]) end
	if struct["CustomUserData"] then M.AssertString(struct["CustomUserData"]) end
	for k,_ in pairs(struct) do
		assert(CreatePlatformEndpointInput_keys[k], "CreatePlatformEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlatformEndpointInput
-- &lt;p&gt;Input for CreatePlatformEndpoint action.&lt;/p&gt;
-- @param Attributes [MapStringToString] &lt;p&gt;For a list of attributes, see &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html&quot;&gt;SetEndpointAttributes&lt;/a&gt;.&lt;/p&gt;
-- @param Token [String] &lt;p&gt;Unique identifier created by the notification service for an app on a device. The specific name for Token will vary, depending on which notification service is being used. For example, when using APNS as the notification service, you need the device token. Alternatively, when using GCM or ADM, the device token equivalent is called the registration ID.&lt;/p&gt;
-- @param PlatformApplicationArn [String] &lt;p&gt;PlatformApplicationArn returned from CreatePlatformApplication is used to create a an endpoint.&lt;/p&gt;
-- @param CustomUserData [String] &lt;p&gt;Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.&lt;/p&gt;
-- Required parameter: PlatformApplicationArn
-- Required parameter: Token
function M.CreatePlatformEndpointInput(Attributes, Token, PlatformApplicationArn, CustomUserData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlatformEndpointInput")
	local t = { 
		["Attributes"] = Attributes,
		["Token"] = Token,
		["PlatformApplicationArn"] = PlatformApplicationArn,
		["CustomUserData"] = CustomUserData,
	}
	M.AssertCreatePlatformEndpointInput(t)
	return t
end

local ConfirmSubscriptionInput_keys = { "Token" = true, "AuthenticateOnUnsubscribe" = true, "TopicArn" = true, nil }

function M.AssertConfirmSubscriptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSubscriptionInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Token"], "Expected key Token to exist in table")
	if struct["Token"] then M.Asserttoken(struct["Token"]) end
	if struct["AuthenticateOnUnsubscribe"] then M.AssertauthenticateOnUnsubscribe(struct["AuthenticateOnUnsubscribe"]) end
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmSubscriptionInput_keys[k], "ConfirmSubscriptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSubscriptionInput
-- &lt;p&gt;Input for ConfirmSubscription action.&lt;/p&gt;
-- @param Token [token] &lt;p&gt;Short-lived token sent to an endpoint during the &lt;code&gt;Subscribe&lt;/code&gt; action.&lt;/p&gt;
-- @param AuthenticateOnUnsubscribe [authenticateOnUnsubscribe] &lt;p&gt;Disallows unauthenticated unsubscribes of the subscription. If the value of this parameter is &lt;code&gt;true&lt;/code&gt; and the request has an AWS signature, then only the topic owner and the subscription owner can unsubscribe the endpoint. The unsubscribe action requires AWS authentication. &lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the topic for which you wish to confirm a subscription.&lt;/p&gt;
-- Required parameter: TopicArn
-- Required parameter: Token
function M.ConfirmSubscriptionInput(Token, AuthenticateOnUnsubscribe, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmSubscriptionInput")
	local t = { 
		["Token"] = Token,
		["AuthenticateOnUnsubscribe"] = AuthenticateOnUnsubscribe,
		["TopicArn"] = TopicArn,
	}
	M.AssertConfirmSubscriptionInput(t)
	return t
end

local ListSubscriptionsByTopicInput_keys = { "NextToken" = true, "TopicArn" = true, nil }

function M.AssertListSubscriptionsByTopicInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionsByTopicInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	if struct["NextToken"] then M.AssertnextToken(struct["NextToken"]) end
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(ListSubscriptionsByTopicInput_keys[k], "ListSubscriptionsByTopicInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionsByTopicInput
-- &lt;p&gt;Input for ListSubscriptionsByTopic action.&lt;/p&gt;
-- @param NextToken [nextToken] &lt;p&gt;Token returned by the previous &lt;code&gt;ListSubscriptionsByTopic&lt;/code&gt; request.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the topic for which you wish to find subscriptions.&lt;/p&gt;
-- Required parameter: TopicArn
function M.ListSubscriptionsByTopicInput(NextToken, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionsByTopicInput")
	local t = { 
		["NextToken"] = NextToken,
		["TopicArn"] = TopicArn,
	}
	M.AssertListSubscriptionsByTopicInput(t)
	return t
end

local PlatformApplication_keys = { "Attributes" = true, "PlatformApplicationArn" = true, nil }

function M.AssertPlatformApplication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformApplication to be of type 'table'")
	if struct["Attributes"] then M.AssertMapStringToString(struct["Attributes"]) end
	if struct["PlatformApplicationArn"] then M.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(PlatformApplication_keys[k], "PlatformApplication contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformApplication
-- &lt;p&gt;Platform application object.&lt;/p&gt;
-- @param Attributes [MapStringToString] &lt;p&gt;Attributes for platform application object.&lt;/p&gt;
-- @param PlatformApplicationArn [String] &lt;p&gt;PlatformApplicationArn for platform application object.&lt;/p&gt;
function M.PlatformApplication(Attributes, PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlatformApplication")
	local t = { 
		["Attributes"] = Attributes,
		["PlatformApplicationArn"] = PlatformApplicationArn,
	}
	M.AssertPlatformApplication(t)
	return t
end

local EndpointDisabledException_keys = { "message" = true, nil }

function M.AssertEndpointDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointDisabledException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(EndpointDisabledException_keys[k], "EndpointDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointDisabledException
-- &lt;p&gt;Exception error indicating endpoint disabled.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Message for endpoint disabled.&lt;/p&gt;
function M.EndpointDisabledException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointDisabledException")
	local t = { 
		["message"] = message,
	}
	M.AssertEndpointDisabledException(t)
	return t
end

local GetSMSAttributesResponse_keys = { "attributes" = true, nil }

function M.AssertGetSMSAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSMSAttributesResponse to be of type 'table'")
	if struct["attributes"] then M.AssertMapStringToString(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(GetSMSAttributesResponse_keys[k], "GetSMSAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSMSAttributesResponse
-- &lt;p&gt;The response from the &lt;code&gt;GetSMSAttributes&lt;/code&gt; request.&lt;/p&gt;
-- @param attributes [MapStringToString] &lt;p&gt;The SMS attribute names and their values.&lt;/p&gt;
function M.GetSMSAttributesResponse(attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSMSAttributesResponse")
	local t = { 
		["attributes"] = attributes,
	}
	M.AssertGetSMSAttributesResponse(t)
	return t
end

local Topic_keys = { "TopicArn" = true, nil }

function M.AssertTopic(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Topic to be of type 'table'")
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(Topic_keys[k], "Topic contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Topic
-- &lt;p&gt;A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's attributes, use &lt;code&gt;GetTopicAttributes&lt;/code&gt;.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The topic's ARN.&lt;/p&gt;
function M.Topic(TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Topic")
	local t = { 
		["TopicArn"] = TopicArn,
	}
	M.AssertTopic(t)
	return t
end

local ListPhoneNumbersOptedOutInput_keys = { "nextToken" = true, nil }

function M.AssertListPhoneNumbersOptedOutInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPhoneNumbersOptedOutInput to be of type 'table'")
	if struct["nextToken"] then M.Assertstring(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListPhoneNumbersOptedOutInput_keys[k], "ListPhoneNumbersOptedOutInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPhoneNumbersOptedOutInput
-- &lt;p&gt;The input for the &lt;code&gt;ListPhoneNumbersOptedOut&lt;/code&gt; action.&lt;/p&gt;
-- @param nextToken [string] &lt;p&gt;A &lt;code&gt;NextToken&lt;/code&gt; string is used when you call the &lt;code&gt;ListPhoneNumbersOptedOut&lt;/code&gt; action to retrieve additional records that are available after the first page of results.&lt;/p&gt;
function M.ListPhoneNumbersOptedOutInput(nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPhoneNumbersOptedOutInput")
	local t = { 
		["nextToken"] = nextToken,
	}
	M.AssertListPhoneNumbersOptedOutInput(t)
	return t
end

local Subscription_keys = { "Owner" = true, "Endpoint" = true, "Protocol" = true, "TopicArn" = true, "SubscriptionArn" = true, nil }

function M.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["Owner"] then M.Assertaccount(struct["Owner"]) end
	if struct["Endpoint"] then M.Assertendpoint(struct["Endpoint"]) end
	if struct["Protocol"] then M.Assertprotocol(struct["Protocol"]) end
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	if struct["SubscriptionArn"] then M.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(Subscription_keys[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- &lt;p&gt;A wrapper type for the attributes of an Amazon SNS subscription.&lt;/p&gt;
-- @param Owner [account] &lt;p&gt;The subscription's owner.&lt;/p&gt;
-- @param Endpoint [endpoint] &lt;p&gt;The subscription's endpoint (format depends on the protocol).&lt;/p&gt;
-- @param Protocol [protocol] &lt;p&gt;The subscription's protocol.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the subscription's topic.&lt;/p&gt;
-- @param SubscriptionArn [subscriptionARN] &lt;p&gt;The subscription's ARN.&lt;/p&gt;
function M.Subscription(Owner, Endpoint, Protocol, TopicArn, SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["Owner"] = Owner,
		["Endpoint"] = Endpoint,
		["Protocol"] = Protocol,
		["TopicArn"] = TopicArn,
		["SubscriptionArn"] = SubscriptionArn,
	}
	M.AssertSubscription(t)
	return t
end

local ListSubscriptionsResponse_keys = { "NextToken" = true, "Subscriptions" = true, nil }

function M.AssertListSubscriptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertnextToken(struct["NextToken"]) end
	if struct["Subscriptions"] then M.AssertSubscriptionsList(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(ListSubscriptionsResponse_keys[k], "ListSubscriptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionsResponse
-- &lt;p&gt;Response for ListSubscriptions action&lt;/p&gt;
-- @param NextToken [nextToken] &lt;p&gt;Token to pass along to the next &lt;code&gt;ListSubscriptions&lt;/code&gt; request. This element is returned if there are more subscriptions to retrieve.&lt;/p&gt;
-- @param Subscriptions [SubscriptionsList] &lt;p&gt;A list of subscriptions.&lt;/p&gt;
function M.ListSubscriptionsResponse(NextToken, Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Subscriptions"] = Subscriptions,
	}
	M.AssertListSubscriptionsResponse(t)
	return t
end

local ListTopicsResponse_keys = { "Topics" = true, "NextToken" = true, nil }

function M.AssertListTopicsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicsResponse to be of type 'table'")
	if struct["Topics"] then M.AssertTopicsList(struct["Topics"]) end
	if struct["NextToken"] then M.AssertnextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTopicsResponse_keys[k], "ListTopicsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicsResponse
-- &lt;p&gt;Response for ListTopics action.&lt;/p&gt;
-- @param Topics [TopicsList] &lt;p&gt;A list of topic ARNs.&lt;/p&gt;
-- @param NextToken [nextToken] &lt;p&gt;Token to pass along to the next &lt;code&gt;ListTopics&lt;/code&gt; request. This element is returned if there are additional topics to retrieve.&lt;/p&gt;
function M.ListTopicsResponse(Topics, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTopicsResponse")
	local t = { 
		["Topics"] = Topics,
		["NextToken"] = NextToken,
	}
	M.AssertListTopicsResponse(t)
	return t
end

local OptInPhoneNumberInput_keys = { "phoneNumber" = true, nil }

function M.AssertOptInPhoneNumberInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptInPhoneNumberInput to be of type 'table'")
	assert(struct["phoneNumber"], "Expected key phoneNumber to exist in table")
	if struct["phoneNumber"] then M.AssertPhoneNumber(struct["phoneNumber"]) end
	for k,_ in pairs(struct) do
		assert(OptInPhoneNumberInput_keys[k], "OptInPhoneNumberInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptInPhoneNumberInput
-- &lt;p&gt;Input for the OptInPhoneNumber action.&lt;/p&gt;
-- @param phoneNumber [PhoneNumber] &lt;p&gt;The phone number to opt in.&lt;/p&gt;
-- Required parameter: phoneNumber
function M.OptInPhoneNumberInput(phoneNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptInPhoneNumberInput")
	local t = { 
		["phoneNumber"] = phoneNumber,
	}
	M.AssertOptInPhoneNumberInput(t)
	return t
end

local ListPlatformApplicationsInput_keys = { "NextToken" = true, nil }

function M.AssertListPlatformApplicationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlatformApplicationsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListPlatformApplicationsInput_keys[k], "ListPlatformApplicationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlatformApplicationsInput
-- &lt;p&gt;Input for ListPlatformApplications action.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;NextToken string is used when calling ListPlatformApplications action to retrieve additional records that are available after the first page results.&lt;/p&gt;
function M.ListPlatformApplicationsInput(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPlatformApplicationsInput")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListPlatformApplicationsInput(t)
	return t
end

local GetSubscriptionAttributesInput_keys = { "SubscriptionArn" = true, nil }

function M.AssertGetSubscriptionAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionAttributesInput to be of type 'table'")
	assert(struct["SubscriptionArn"], "Expected key SubscriptionArn to exist in table")
	if struct["SubscriptionArn"] then M.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(GetSubscriptionAttributesInput_keys[k], "GetSubscriptionAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionAttributesInput
-- &lt;p&gt;Input for GetSubscriptionAttributes.&lt;/p&gt;
-- @param SubscriptionArn [subscriptionARN] &lt;p&gt;The ARN of the subscription whose properties you want to get.&lt;/p&gt;
-- Required parameter: SubscriptionArn
function M.GetSubscriptionAttributesInput(SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionAttributesInput")
	local t = { 
		["SubscriptionArn"] = SubscriptionArn,
	}
	M.AssertGetSubscriptionAttributesInput(t)
	return t
end

local CreateEndpointResponse_keys = { "EndpointArn" = true, nil }

function M.AssertCreateEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointResponse to be of type 'table'")
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateEndpointResponse_keys[k], "CreateEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointResponse
-- &lt;p&gt;Response from CreateEndpoint action.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;EndpointArn returned from CreateEndpoint action.&lt;/p&gt;
function M.CreateEndpointResponse(EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEndpointResponse")
	local t = { 
		["EndpointArn"] = EndpointArn,
	}
	M.AssertCreateEndpointResponse(t)
	return t
end

local NotFoundException_keys = { "message" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- &lt;p&gt;Indicates that the requested resource does not exist.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Indicates that the requested resource does not exist.&lt;/p&gt;
function M.NotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotFoundException(t)
	return t
end

local GetPlatformApplicationAttributesInput_keys = { "PlatformApplicationArn" = true, nil }

function M.AssertGetPlatformApplicationAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPlatformApplicationAttributesInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	if struct["PlatformApplicationArn"] then M.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(GetPlatformApplicationAttributesInput_keys[k], "GetPlatformApplicationAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPlatformApplicationAttributesInput
-- &lt;p&gt;Input for GetPlatformApplicationAttributes action.&lt;/p&gt;
-- @param PlatformApplicationArn [String] &lt;p&gt;PlatformApplicationArn for GetPlatformApplicationAttributesInput.&lt;/p&gt;
-- Required parameter: PlatformApplicationArn
function M.GetPlatformApplicationAttributesInput(PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPlatformApplicationAttributesInput")
	local t = { 
		["PlatformApplicationArn"] = PlatformApplicationArn,
	}
	M.AssertGetPlatformApplicationAttributesInput(t)
	return t
end

local GetSMSAttributesInput_keys = { "attributes" = true, nil }

function M.AssertGetSMSAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSMSAttributesInput to be of type 'table'")
	if struct["attributes"] then M.AssertListString(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(GetSMSAttributesInput_keys[k], "GetSMSAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSMSAttributesInput
-- &lt;p&gt;The input for the &lt;code&gt;GetSMSAttributes&lt;/code&gt; request.&lt;/p&gt;
-- @param attributes [ListString] &lt;p&gt;A list of the individual attribute names, such as &lt;code&gt;MonthlySpendLimit&lt;/code&gt;, for which you want values.&lt;/p&gt; &lt;p&gt;For all attribute names, see &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html&quot;&gt;SetSMSAttributes&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;If you don't use this parameter, Amazon SNS returns all SMS attributes.&lt;/p&gt;
function M.GetSMSAttributesInput(attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSMSAttributesInput")
	local t = { 
		["attributes"] = attributes,
	}
	M.AssertGetSMSAttributesInput(t)
	return t
end

local ConfirmSubscriptionResponse_keys = { "SubscriptionArn" = true, nil }

function M.AssertConfirmSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSubscriptionResponse to be of type 'table'")
	if struct["SubscriptionArn"] then M.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(ConfirmSubscriptionResponse_keys[k], "ConfirmSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSubscriptionResponse
-- &lt;p&gt;Response for ConfirmSubscriptions action.&lt;/p&gt;
-- @param SubscriptionArn [subscriptionARN] &lt;p&gt;The ARN of the created subscription.&lt;/p&gt;
function M.ConfirmSubscriptionResponse(SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmSubscriptionResponse")
	local t = { 
		["SubscriptionArn"] = SubscriptionArn,
	}
	M.AssertConfirmSubscriptionResponse(t)
	return t
end

local DeleteTopicInput_keys = { "TopicArn" = true, nil }

function M.AssertDeleteTopicInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTopicInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTopicInput_keys[k], "DeleteTopicInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTopicInput
--  
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the topic you want to delete.&lt;/p&gt;
-- Required parameter: TopicArn
function M.DeleteTopicInput(TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTopicInput")
	local t = { 
		["TopicArn"] = TopicArn,
	}
	M.AssertDeleteTopicInput(t)
	return t
end

local TopicLimitExceededException_keys = { "message" = true, nil }

function M.AssertTopicLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicLimitExceededException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TopicLimitExceededException_keys[k], "TopicLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicLimitExceededException
-- &lt;p&gt;Indicates that the customer already owns the maximum allowed number of topics.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Indicates that the customer already owns the maximum allowed number of topics.&lt;/p&gt;
function M.TopicLimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicLimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertTopicLimitExceededException(t)
	return t
end

local SetSMSAttributesInput_keys = { "attributes" = true, nil }

function M.AssertSetSMSAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSMSAttributesInput to be of type 'table'")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then M.AssertMapStringToString(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(SetSMSAttributesInput_keys[k], "SetSMSAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSMSAttributesInput
-- &lt;p&gt;The input for the SetSMSAttributes action.&lt;/p&gt;
-- @param attributes [MapStringToString] &lt;p&gt;The default settings for sending SMS messages from your account. You can set values for the following attribute names:&lt;/p&gt; &lt;p&gt; &lt;code&gt;MonthlySpendLimit&lt;/code&gt; – The maximum amount in USD that you are willing to spend each month to send SMS messages. When Amazon SNS determines that sending an SMS message would incur a cost that exceeds this limit, it stops sending SMS messages within minutes.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During that interval, if you continue to send SMS messages, you will incur costs that exceed your limit.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to exceed the maximum, contact &lt;a href=&quot;https://aws.amazon.com/premiumsupport/&quot;&gt;AWS Support&lt;/a&gt; or your AWS sales representative for a service limit increase.&lt;/p&gt; &lt;p&gt; &lt;code&gt;DeliveryStatusIAMRole&lt;/code&gt; – The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS writes a log that includes the message price, the success or failure status, the reason for failure (if the message failed), the message dwell time, and other information.&lt;/p&gt; &lt;p&gt; &lt;code&gt;DeliveryStatusSuccessSamplingRate&lt;/code&gt; – The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an integer from 0 - 100. For example, to write logs only for failed deliveries, set this value to &lt;code&gt;0&lt;/code&gt;. To write logs for 10% of your successful deliveries, set it to &lt;code&gt;10&lt;/code&gt;.&lt;/p&gt; &lt;p&gt; &lt;code&gt;DefaultSenderID&lt;/code&gt; – A string, such as your business brand, that is displayed as the sender on the receiving device. Support for sender IDs varies by country. The sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one letter.&lt;/p&gt; &lt;p&gt; &lt;code&gt;DefaultSMSType&lt;/code&gt; – The type of SMS message that you will send by default. You can assign the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Promotional&lt;/code&gt; – (Default) Noncritical messages, such as marketing messages. Amazon SNS optimizes the message delivery to incur the lowest cost.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Transactional&lt;/code&gt; – Critical messages that support customer transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;code&gt;UsageReportS3Bucket&lt;/code&gt; – The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to the bucket. The report includes the following information for each SMS message that was successfully delivered by your account:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Time that the message was published (in UTC)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Message ID&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Destination phone number&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Message type&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Delivery status&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Message price (in USD)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Part number (a message is split into multiple parts if it is too long for a single message)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Total number of parts&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;To receive the report, the bucket must have a policy that allows the Amazon SNS service principle to perform the &lt;code&gt;s3:PutObject&lt;/code&gt; and &lt;code&gt;s3:GetBucketLocation&lt;/code&gt; actions.&lt;/p&gt; &lt;p&gt;For an example bucket policy and usage report, see &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/sms_stats.html&quot;&gt;Monitoring SMS Activity&lt;/a&gt; in the &lt;i&gt;Amazon SNS Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: attributes
function M.SetSMSAttributesInput(attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSMSAttributesInput")
	local t = { 
		["attributes"] = attributes,
	}
	M.AssertSetSMSAttributesInput(t)
	return t
end

local ThrottledException_keys = { "message" = true, nil }

function M.AssertThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottledException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ThrottledException_keys[k], "ThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottledException
-- &lt;p&gt;Indicates that the rate at which requests have been submitted for this action exceeds the limit for your account.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Throttled request.&lt;/p&gt;
function M.ThrottledException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottledException")
	local t = { 
		["message"] = message,
	}
	M.AssertThrottledException(t)
	return t
end

local OptInPhoneNumberResponse_keys = { nil }

function M.AssertOptInPhoneNumberResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptInPhoneNumberResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(OptInPhoneNumberResponse_keys[k], "OptInPhoneNumberResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptInPhoneNumberResponse
-- &lt;p&gt;The response for the OptInPhoneNumber action.&lt;/p&gt;
function M.OptInPhoneNumberResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptInPhoneNumberResponse")
	local t = { 
	}
	M.AssertOptInPhoneNumberResponse(t)
	return t
end

local ListSubscriptionsByTopicResponse_keys = { "NextToken" = true, "Subscriptions" = true, nil }

function M.AssertListSubscriptionsByTopicResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionsByTopicResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertnextToken(struct["NextToken"]) end
	if struct["Subscriptions"] then M.AssertSubscriptionsList(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(ListSubscriptionsByTopicResponse_keys[k], "ListSubscriptionsByTopicResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionsByTopicResponse
-- &lt;p&gt;Response for ListSubscriptionsByTopic action.&lt;/p&gt;
-- @param NextToken [nextToken] &lt;p&gt;Token to pass along to the next &lt;code&gt;ListSubscriptionsByTopic&lt;/code&gt; request. This element is returned if there are more subscriptions to retrieve.&lt;/p&gt;
-- @param Subscriptions [SubscriptionsList] &lt;p&gt;A list of subscriptions.&lt;/p&gt;
function M.ListSubscriptionsByTopicResponse(NextToken, Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionsByTopicResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Subscriptions"] = Subscriptions,
	}
	M.AssertListSubscriptionsByTopicResponse(t)
	return t
end

local PublishInput_keys = { "MessageStructure" = true, "PhoneNumber" = true, "TargetArn" = true, "Message" = true, "MessageAttributes" = true, "TopicArn" = true, "Subject" = true, nil }

function M.AssertPublishInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishInput to be of type 'table'")
	assert(struct["Message"], "Expected key Message to exist in table")
	if struct["MessageStructure"] then M.AssertmessageStructure(struct["MessageStructure"]) end
	if struct["PhoneNumber"] then M.AssertString(struct["PhoneNumber"]) end
	if struct["TargetArn"] then M.AssertString(struct["TargetArn"]) end
	if struct["Message"] then M.Assertmessage(struct["Message"]) end
	if struct["MessageAttributes"] then M.AssertMessageAttributeMap(struct["MessageAttributes"]) end
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	if struct["Subject"] then M.Assertsubject(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(PublishInput_keys[k], "PublishInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishInput
-- &lt;p&gt;Input for Publish action.&lt;/p&gt;
-- @param MessageStructure [messageStructure] &lt;p&gt;Set &lt;code&gt;MessageStructure&lt;/code&gt; to &lt;code&gt;json&lt;/code&gt; if you want to send a different message for each protocol. For example, using one publish action, you can send a short message to your SMS subscribers and a longer message to your email subscribers. If you set &lt;code&gt;MessageStructure&lt;/code&gt; to &lt;code&gt;json&lt;/code&gt;, the value of the &lt;code&gt;Message&lt;/code&gt; parameter must: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;be a syntactically valid JSON object; and&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;contain at least a top-level JSON key of &quot;default&quot; with a value that is a string.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;You can define other top-level keys that define the message you want to send to a specific transport protocol (e.g., &quot;http&quot;).&lt;/p&gt; &lt;p&gt;For information about sending different messages for each protocol using the AWS Management Console, go to &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/gsg/Publish.html#sns-message-formatting-by-protocol&quot;&gt;Create Different Messages for Each Protocol&lt;/a&gt; in the &lt;i&gt;Amazon Simple Notification Service Getting Started Guide&lt;/i&gt;. &lt;/p&gt; &lt;p&gt;Valid value: &lt;code&gt;json&lt;/code&gt; &lt;/p&gt;
-- @param PhoneNumber [String] &lt;p&gt;The phone number to which you want to deliver an SMS message. Use E.164 format.&lt;/p&gt; &lt;p&gt;If you don't specify a value for the &lt;code&gt;PhoneNumber&lt;/code&gt; parameter, you must specify a value for the &lt;code&gt;TargetArn&lt;/code&gt; or &lt;code&gt;TopicArn&lt;/code&gt; parameters.&lt;/p&gt;
-- @param TargetArn [String] &lt;p&gt;Either TopicArn or EndpointArn, but not both.&lt;/p&gt; &lt;p&gt;If you don't specify a value for the &lt;code&gt;TargetArn&lt;/code&gt; parameter, you must specify a value for the &lt;code&gt;PhoneNumber&lt;/code&gt; or &lt;code&gt;TopicArn&lt;/code&gt; parameters.&lt;/p&gt;
-- @param Message [message] &lt;p&gt;The message you want to send to the topic.&lt;/p&gt; &lt;p&gt;If you want to send the same message to all transport protocols, include the text of the message as a String value.&lt;/p&gt; &lt;p&gt;If you want to send different messages for each transport protocol, set the value of the &lt;code&gt;MessageStructure&lt;/code&gt; parameter to &lt;code&gt;json&lt;/code&gt; and use a JSON object for the &lt;code&gt;Message&lt;/code&gt; parameter. &lt;/p&gt; &lt;p&gt;Constraints: Messages must be UTF-8 encoded strings at most 256 KB in size (262144 bytes, not 262144 characters).&lt;/p&gt; &lt;p&gt;JSON-specific constraints:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Keys in the JSON object that correspond to supported transport protocols must have simple JSON string values.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The values will be parsed (unescaped) before they are used in outgoing messages.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Outbound notifications are JSON encoded (meaning that the characters will be reescaped for sending).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Values have a minimum length of 0 (the empty string, &quot;&quot;, is allowed).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Values have a maximum length bounded by the overall message size (so, including multiple protocols may limit message sizes).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Non-string values will cause the key to be ignored.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Keys that do not correspond to supported transport protocols are ignored.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Duplicate keys are not allowed.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Failure to parse or validate any key or value in the message will cause the &lt;code&gt;Publish&lt;/code&gt; call to return an error (no partial delivery).&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MessageAttributes [MessageAttributeMap] &lt;p&gt;Message attributes for Publish action.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The topic you want to publish to.&lt;/p&gt; &lt;p&gt;If you don't specify a value for the &lt;code&gt;TopicArn&lt;/code&gt; parameter, you must specify a value for the &lt;code&gt;PhoneNumber&lt;/code&gt; or &lt;code&gt;TargetArn&lt;/code&gt; parameters.&lt;/p&gt;
-- @param Subject [subject] &lt;p&gt;Optional parameter to be used as the &quot;Subject&quot; line when the message is delivered to email endpoints. This field will also be included, if present, in the standard JSON messages delivered to other endpoints.&lt;/p&gt; &lt;p&gt;Constraints: Subjects must be ASCII text that begins with a letter, number, or punctuation mark; must not include line breaks or control characters; and must be less than 100 characters long.&lt;/p&gt;
-- Required parameter: Message
function M.PublishInput(MessageStructure, PhoneNumber, TargetArn, Message, MessageAttributes, TopicArn, Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishInput")
	local t = { 
		["MessageStructure"] = MessageStructure,
		["PhoneNumber"] = PhoneNumber,
		["TargetArn"] = TargetArn,
		["Message"] = Message,
		["MessageAttributes"] = MessageAttributes,
		["TopicArn"] = TopicArn,
		["Subject"] = Subject,
	}
	M.AssertPublishInput(t)
	return t
end

local SetSubscriptionAttributesInput_keys = { "AttributeName" = true, "AttributeValue" = true, "SubscriptionArn" = true, nil }

function M.AssertSetSubscriptionAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSubscriptionAttributesInput to be of type 'table'")
	assert(struct["SubscriptionArn"], "Expected key SubscriptionArn to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["AttributeName"] then M.AssertattributeName(struct["AttributeName"]) end
	if struct["AttributeValue"] then M.AssertattributeValue(struct["AttributeValue"]) end
	if struct["SubscriptionArn"] then M.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(SetSubscriptionAttributesInput_keys[k], "SetSubscriptionAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSubscriptionAttributesInput
-- &lt;p&gt;Input for SetSubscriptionAttributes action.&lt;/p&gt;
-- @param AttributeName [attributeName] &lt;p&gt;The name of the attribute you want to set. Only a subset of the subscriptions attributes are mutable.&lt;/p&gt; &lt;p&gt;Valid values: &lt;code&gt;DeliveryPolicy&lt;/code&gt; | &lt;code&gt;RawMessageDelivery&lt;/code&gt; &lt;/p&gt;
-- @param AttributeValue [attributeValue] &lt;p&gt;The new value for the attribute in JSON format.&lt;/p&gt;
-- @param SubscriptionArn [subscriptionARN] &lt;p&gt;The ARN of the subscription to modify.&lt;/p&gt;
-- Required parameter: SubscriptionArn
-- Required parameter: AttributeName
function M.SetSubscriptionAttributesInput(AttributeName, AttributeValue, SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSubscriptionAttributesInput")
	local t = { 
		["AttributeName"] = AttributeName,
		["AttributeValue"] = AttributeValue,
		["SubscriptionArn"] = SubscriptionArn,
	}
	M.AssertSetSubscriptionAttributesInput(t)
	return t
end

local GetSubscriptionAttributesResponse_keys = { "Attributes" = true, nil }

function M.AssertGetSubscriptionAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertSubscriptionAttributesMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(GetSubscriptionAttributesResponse_keys[k], "GetSubscriptionAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionAttributesResponse
-- &lt;p&gt;Response for GetSubscriptionAttributes action.&lt;/p&gt;
-- @param Attributes [SubscriptionAttributesMap] &lt;p&gt;A map of the subscription's attributes. Attributes in this map include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SubscriptionArn&lt;/code&gt; -- the subscription's ARN&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TopicArn&lt;/code&gt; -- the topic ARN that the subscription is associated with&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Owner&lt;/code&gt; -- the AWS account ID of the subscription's owner&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ConfirmationWasAuthenticated&lt;/code&gt; -- true if the subscription confirmation request was authenticated&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DeliveryPolicy&lt;/code&gt; -- the JSON serialization of the subscription's delivery policy&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EffectiveDeliveryPolicy&lt;/code&gt; -- the JSON serialization of the effective delivery policy that takes into account the topic delivery policy and account system defaults&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetSubscriptionAttributesResponse(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertGetSubscriptionAttributesResponse(t)
	return t
end

local CreateTopicResponse_keys = { "TopicArn" = true, nil }

function M.AssertCreateTopicResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTopicResponse to be of type 'table'")
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateTopicResponse_keys[k], "CreateTopicResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTopicResponse
-- &lt;p&gt;Response from CreateTopic action.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The Amazon Resource Name (ARN) assigned to the created topic.&lt;/p&gt;
function M.CreateTopicResponse(TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTopicResponse")
	local t = { 
		["TopicArn"] = TopicArn,
	}
	M.AssertCreateTopicResponse(t)
	return t
end

local InternalErrorException_keys = { "message" = true, nil }

function M.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalErrorException_keys[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- &lt;p&gt;Indicates an internal service error.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Indicates an internal service error.&lt;/p&gt;
function M.InternalErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalErrorException(t)
	return t
end

local GetTopicAttributesResponse_keys = { "Attributes" = true, nil }

function M.AssertGetTopicAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertTopicAttributesMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(GetTopicAttributesResponse_keys[k], "GetTopicAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicAttributesResponse
-- &lt;p&gt;Response for GetTopicAttributes action.&lt;/p&gt;
-- @param Attributes [TopicAttributesMap] &lt;p&gt;A map of the topic's attributes. Attributes in this map include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;TopicArn&lt;/code&gt; -- the topic's ARN&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Owner&lt;/code&gt; -- the AWS account ID of the topic's owner&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Policy&lt;/code&gt; -- the JSON serialization of the topic's access control policy&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DisplayName&lt;/code&gt; -- the human-readable name used in the &quot;From&quot; field for notifications to email and email-json endpoints&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SubscriptionsPending&lt;/code&gt; -- the number of subscriptions pending confirmation on this topic&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SubscriptionsConfirmed&lt;/code&gt; -- the number of confirmed subscriptions on this topic&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SubscriptionsDeleted&lt;/code&gt; -- the number of deleted subscriptions on this topic&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;DeliveryPolicy&lt;/code&gt; -- the JSON serialization of the topic's delivery policy&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EffectiveDeliveryPolicy&lt;/code&gt; -- the JSON serialization of the effective delivery policy that takes into account system defaults&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetTopicAttributesResponse(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTopicAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertGetTopicAttributesResponse(t)
	return t
end

local ListPhoneNumbersOptedOutResponse_keys = { "phoneNumbers" = true, "nextToken" = true, nil }

function M.AssertListPhoneNumbersOptedOutResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPhoneNumbersOptedOutResponse to be of type 'table'")
	if struct["phoneNumbers"] then M.AssertPhoneNumberList(struct["phoneNumbers"]) end
	if struct["nextToken"] then M.Assertstring(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListPhoneNumbersOptedOutResponse_keys[k], "ListPhoneNumbersOptedOutResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPhoneNumbersOptedOutResponse
-- &lt;p&gt;The response from the &lt;code&gt;ListPhoneNumbersOptedOut&lt;/code&gt; action.&lt;/p&gt;
-- @param phoneNumbers [PhoneNumberList] &lt;p&gt;A list of phone numbers that are opted out of receiving SMS messages. The list is paginated, and each page can contain up to 100 phone numbers.&lt;/p&gt;
-- @param nextToken [string] &lt;p&gt;A &lt;code&gt;NextToken&lt;/code&gt; string is returned when you call the &lt;code&gt;ListPhoneNumbersOptedOut&lt;/code&gt; action if additional records are available after the first page of results.&lt;/p&gt;
function M.ListPhoneNumbersOptedOutResponse(phoneNumbers, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPhoneNumbersOptedOutResponse")
	local t = { 
		["phoneNumbers"] = phoneNumbers,
		["nextToken"] = nextToken,
	}
	M.AssertListPhoneNumbersOptedOutResponse(t)
	return t
end

local CreatePlatformApplicationResponse_keys = { "PlatformApplicationArn" = true, nil }

function M.AssertCreatePlatformApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlatformApplicationResponse to be of type 'table'")
	if struct["PlatformApplicationArn"] then M.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(CreatePlatformApplicationResponse_keys[k], "CreatePlatformApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlatformApplicationResponse
-- &lt;p&gt;Response from CreatePlatformApplication action.&lt;/p&gt;
-- @param PlatformApplicationArn [String] &lt;p&gt;PlatformApplicationArn is returned.&lt;/p&gt;
function M.CreatePlatformApplicationResponse(PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlatformApplicationResponse")
	local t = { 
		["PlatformApplicationArn"] = PlatformApplicationArn,
	}
	M.AssertCreatePlatformApplicationResponse(t)
	return t
end

local AuthorizationErrorException_keys = { "message" = true, nil }

function M.AssertAuthorizationErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationErrorException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AuthorizationErrorException_keys[k], "AuthorizationErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationErrorException
-- &lt;p&gt;Indicates that the user has been denied access to the requested resource.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Indicates that the user has been denied access to the requested resource.&lt;/p&gt;
function M.AuthorizationErrorException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationErrorException")
	local t = { 
		["message"] = message,
	}
	M.AssertAuthorizationErrorException(t)
	return t
end

local SetPlatformApplicationAttributesInput_keys = { "Attributes" = true, "PlatformApplicationArn" = true, nil }

function M.AssertSetPlatformApplicationAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetPlatformApplicationAttributesInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then M.AssertMapStringToString(struct["Attributes"]) end
	if struct["PlatformApplicationArn"] then M.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(SetPlatformApplicationAttributesInput_keys[k], "SetPlatformApplicationAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetPlatformApplicationAttributesInput
-- &lt;p&gt;Input for SetPlatformApplicationAttributes action.&lt;/p&gt;
-- @param Attributes [MapStringToString] &lt;p&gt;A map of the platform application attributes. Attributes in this map include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PlatformCredential&lt;/code&gt; -- The credential received from the notification service. For APNS/APNS_SANDBOX, PlatformCredential is private key. For GCM, PlatformCredential is &quot;API key&quot;. For ADM, PlatformCredential is &quot;client secret&quot;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;PlatformPrincipal&lt;/code&gt; -- The principal received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is SSL certificate. For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is &quot;client id&quot;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EventEndpointCreated&lt;/code&gt; -- Topic ARN to which EndpointCreated event notifications should be sent.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EventEndpointDeleted&lt;/code&gt; -- Topic ARN to which EndpointDeleted event notifications should be sent.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EventEndpointUpdated&lt;/code&gt; -- Topic ARN to which EndpointUpdate event notifications should be sent.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EventDeliveryFailure&lt;/code&gt; -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SuccessFeedbackRoleArn&lt;/code&gt; -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FailureFeedbackRoleArn&lt;/code&gt; -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;SuccessFeedbackSampleRate&lt;/code&gt; -- Sample rate percentage (0-100) of successfully delivered messages.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param PlatformApplicationArn [String] &lt;p&gt;PlatformApplicationArn for SetPlatformApplicationAttributes action.&lt;/p&gt;
-- Required parameter: PlatformApplicationArn
-- Required parameter: Attributes
function M.SetPlatformApplicationAttributesInput(Attributes, PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetPlatformApplicationAttributesInput")
	local t = { 
		["Attributes"] = Attributes,
		["PlatformApplicationArn"] = PlatformApplicationArn,
	}
	M.AssertSetPlatformApplicationAttributesInput(t)
	return t
end

local UnsubscribeInput_keys = { "SubscriptionArn" = true, nil }

function M.AssertUnsubscribeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsubscribeInput to be of type 'table'")
	assert(struct["SubscriptionArn"], "Expected key SubscriptionArn to exist in table")
	if struct["SubscriptionArn"] then M.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(UnsubscribeInput_keys[k], "UnsubscribeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsubscribeInput
-- &lt;p&gt;Input for Unsubscribe action.&lt;/p&gt;
-- @param SubscriptionArn [subscriptionARN] &lt;p&gt;The ARN of the subscription to be deleted.&lt;/p&gt;
-- Required parameter: SubscriptionArn
function M.UnsubscribeInput(SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsubscribeInput")
	local t = { 
		["SubscriptionArn"] = SubscriptionArn,
	}
	M.AssertUnsubscribeInput(t)
	return t
end

local InvalidParameterValueException_keys = { "message" = true, nil }

function M.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterValueException_keys[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- &lt;p&gt;Indicates that a request parameter does not comply with the associated constraints.&lt;/p&gt;
-- @param message [string] &lt;p&gt;The parameter value is invalid.&lt;/p&gt;
function M.InvalidParameterValueException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterValueException(t)
	return t
end

local ListEndpointsByPlatformApplicationResponse_keys = { "Endpoints" = true, "NextToken" = true, nil }

function M.AssertListEndpointsByPlatformApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEndpointsByPlatformApplicationResponse to be of type 'table'")
	if struct["Endpoints"] then M.AssertListOfEndpoints(struct["Endpoints"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListEndpointsByPlatformApplicationResponse_keys[k], "ListEndpointsByPlatformApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEndpointsByPlatformApplicationResponse
-- &lt;p&gt;Response for ListEndpointsByPlatformApplication action.&lt;/p&gt;
-- @param Endpoints [ListOfEndpoints] &lt;p&gt;Endpoints returned for ListEndpointsByPlatformApplication action.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;NextToken string is returned when calling ListEndpointsByPlatformApplication action if additional records are available after the first page results.&lt;/p&gt;
function M.ListEndpointsByPlatformApplicationResponse(Endpoints, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEndpointsByPlatformApplicationResponse")
	local t = { 
		["Endpoints"] = Endpoints,
		["NextToken"] = NextToken,
	}
	M.AssertListEndpointsByPlatformApplicationResponse(t)
	return t
end

local SubscribeInput_keys = { "Endpoint" = true, "Protocol" = true, "TopicArn" = true, nil }

function M.AssertSubscribeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	if struct["Endpoint"] then M.Assertendpoint(struct["Endpoint"]) end
	if struct["Protocol"] then M.Assertprotocol(struct["Protocol"]) end
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(SubscribeInput_keys[k], "SubscribeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeInput
-- &lt;p&gt;Input for Subscribe action.&lt;/p&gt;
-- @param Endpoint [endpoint] &lt;p&gt;The endpoint that you want to receive notifications. Endpoints vary by protocol:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For the &lt;code&gt;http&lt;/code&gt; protocol, the endpoint is an URL beginning with &quot;http://&quot;&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For the &lt;code&gt;https&lt;/code&gt; protocol, the endpoint is a URL beginning with &quot;https://&quot;&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For the &lt;code&gt;email&lt;/code&gt; protocol, the endpoint is an email address&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For the &lt;code&gt;email-json&lt;/code&gt; protocol, the endpoint is an email address&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For the &lt;code&gt;sms&lt;/code&gt; protocol, the endpoint is a phone number of an SMS-enabled device&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For the &lt;code&gt;sqs&lt;/code&gt; protocol, the endpoint is the ARN of an Amazon SQS queue&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For the &lt;code&gt;application&lt;/code&gt; protocol, the endpoint is the EndpointArn of a mobile app and device.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For the &lt;code&gt;lambda&lt;/code&gt; protocol, the endpoint is the ARN of an AWS Lambda function.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Protocol [protocol] &lt;p&gt;The protocol you want to use. Supported protocols include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;http&lt;/code&gt; -- delivery of JSON-encoded message via HTTP POST&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;https&lt;/code&gt; -- delivery of JSON-encoded message via HTTPS POST&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;email&lt;/code&gt; -- delivery of message via SMTP&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;email-json&lt;/code&gt; -- delivery of JSON-encoded message via SMTP&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sms&lt;/code&gt; -- delivery of message via SMS&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;sqs&lt;/code&gt; -- delivery of JSON-encoded message to an Amazon SQS queue&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;application&lt;/code&gt; -- delivery of JSON-encoded message to an EndpointArn for a mobile app and device.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;lambda&lt;/code&gt; -- delivery of JSON-encoded message to an AWS Lambda function.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the topic you want to subscribe to.&lt;/p&gt;
-- Required parameter: TopicArn
-- Required parameter: Protocol
function M.SubscribeInput(Endpoint, Protocol, TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeInput")
	local t = { 
		["Endpoint"] = Endpoint,
		["Protocol"] = Protocol,
		["TopicArn"] = TopicArn,
	}
	M.AssertSubscribeInput(t)
	return t
end

local DeletePlatformApplicationInput_keys = { "PlatformApplicationArn" = true, nil }

function M.AssertDeletePlatformApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePlatformApplicationInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	if struct["PlatformApplicationArn"] then M.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(DeletePlatformApplicationInput_keys[k], "DeletePlatformApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePlatformApplicationInput
-- &lt;p&gt;Input for DeletePlatformApplication action.&lt;/p&gt;
-- @param PlatformApplicationArn [String] &lt;p&gt;PlatformApplicationArn of platform application object to delete.&lt;/p&gt;
-- Required parameter: PlatformApplicationArn
function M.DeletePlatformApplicationInput(PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePlatformApplicationInput")
	local t = { 
		["PlatformApplicationArn"] = PlatformApplicationArn,
	}
	M.AssertDeletePlatformApplicationInput(t)
	return t
end

local PublishResponse_keys = { "MessageId" = true, nil }

function M.AssertPublishResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishResponse to be of type 'table'")
	if struct["MessageId"] then M.AssertmessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(PublishResponse_keys[k], "PublishResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishResponse
-- &lt;p&gt;Response for Publish action.&lt;/p&gt;
-- @param MessageId [messageId] &lt;p&gt;Unique identifier assigned to the published message.&lt;/p&gt; &lt;p&gt;Length Constraint: Maximum 100 characters&lt;/p&gt;
function M.PublishResponse(MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishResponse")
	local t = { 
		["MessageId"] = MessageId,
	}
	M.AssertPublishResponse(t)
	return t
end

local MessageAttributeValue_keys = { "DataType" = true, "StringValue" = true, "BinaryValue" = true, nil }

function M.AssertMessageAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageAttributeValue to be of type 'table'")
	assert(struct["DataType"], "Expected key DataType to exist in table")
	if struct["DataType"] then M.AssertString(struct["DataType"]) end
	if struct["StringValue"] then M.AssertString(struct["StringValue"]) end
	if struct["BinaryValue"] then M.AssertBinary(struct["BinaryValue"]) end
	for k,_ in pairs(struct) do
		assert(MessageAttributeValue_keys[k], "MessageAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageAttributeValue
-- &lt;p&gt;The user-specified message attribute value. For string data types, the value attribute has the same restrictions on the content as the message body. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/api/API_Publish.html&quot;&gt;Publish&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;Name, type, and value must not be empty or null. In addition, the message body should not be empty or null. All parts of the message attribute, including name, type, and value, are included in the message size restriction, which is currently 256 KB (262,144 bytes). For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html&quot;&gt;Using Amazon SNS Message Attributes&lt;/a&gt;.&lt;/p&gt;
-- @param DataType [String] &lt;p&gt;Amazon SNS supports the following logical data types: String, Number, and Binary. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html#SNSMessageAttributes.DataTypes&quot;&gt;Message Attribute Data Types&lt;/a&gt;.&lt;/p&gt;
-- @param StringValue [String] &lt;p&gt;Strings are Unicode with UTF8 binary encoding. For a list of code values, see &lt;a href=&quot;http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters&quot;&gt;http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters&lt;/a&gt;.&lt;/p&gt;
-- @param BinaryValue [Binary] &lt;p&gt;Binary type attributes can store any binary data, for example, compressed data, encrypted data, or images.&lt;/p&gt;
-- Required parameter: DataType
function M.MessageAttributeValue(DataType, StringValue, BinaryValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageAttributeValue")
	local t = { 
		["DataType"] = DataType,
		["StringValue"] = StringValue,
		["BinaryValue"] = BinaryValue,
	}
	M.AssertMessageAttributeValue(t)
	return t
end

local CheckIfPhoneNumberIsOptedOutResponse_keys = { "isOptedOut" = true, nil }

function M.AssertCheckIfPhoneNumberIsOptedOutResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckIfPhoneNumberIsOptedOutResponse to be of type 'table'")
	if struct["isOptedOut"] then M.Assertboolean(struct["isOptedOut"]) end
	for k,_ in pairs(struct) do
		assert(CheckIfPhoneNumberIsOptedOutResponse_keys[k], "CheckIfPhoneNumberIsOptedOutResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckIfPhoneNumberIsOptedOutResponse
-- &lt;p&gt;The response from the &lt;code&gt;CheckIfPhoneNumberIsOptedOut&lt;/code&gt; action.&lt;/p&gt;
-- @param isOptedOut [boolean] &lt;p&gt;Indicates whether the phone number is opted out:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;true&lt;/code&gt; – The phone number is opted out, meaning you cannot publish SMS messages to it.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;false&lt;/code&gt; – The phone number is opted in, meaning you can publish SMS messages to it.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.CheckIfPhoneNumberIsOptedOutResponse(isOptedOut, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CheckIfPhoneNumberIsOptedOutResponse")
	local t = { 
		["isOptedOut"] = isOptedOut,
	}
	M.AssertCheckIfPhoneNumberIsOptedOutResponse(t)
	return t
end

local ListEndpointsByPlatformApplicationInput_keys = { "NextToken" = true, "PlatformApplicationArn" = true, nil }

function M.AssertListEndpointsByPlatformApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEndpointsByPlatformApplicationInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["PlatformApplicationArn"] then M.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(ListEndpointsByPlatformApplicationInput_keys[k], "ListEndpointsByPlatformApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEndpointsByPlatformApplicationInput
-- &lt;p&gt;Input for ListEndpointsByPlatformApplication action.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;NextToken string is used when calling ListEndpointsByPlatformApplication action to retrieve additional records that are available after the first page results.&lt;/p&gt;
-- @param PlatformApplicationArn [String] &lt;p&gt;PlatformApplicationArn for ListEndpointsByPlatformApplicationInput action.&lt;/p&gt;
-- Required parameter: PlatformApplicationArn
function M.ListEndpointsByPlatformApplicationInput(NextToken, PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEndpointsByPlatformApplicationInput")
	local t = { 
		["NextToken"] = NextToken,
		["PlatformApplicationArn"] = PlatformApplicationArn,
	}
	M.AssertListEndpointsByPlatformApplicationInput(t)
	return t
end

local SetSMSAttributesResponse_keys = { nil }

function M.AssertSetSMSAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSMSAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SetSMSAttributesResponse_keys[k], "SetSMSAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSMSAttributesResponse
-- &lt;p&gt;The response for the SetSMSAttributes action.&lt;/p&gt;
function M.SetSMSAttributesResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSMSAttributesResponse")
	local t = { 
	}
	M.AssertSetSMSAttributesResponse(t)
	return t
end

local RemovePermissionInput_keys = { "TopicArn" = true, "Label" = true, nil }

function M.AssertRemovePermissionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	if struct["Label"] then M.Assertlabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(RemovePermissionInput_keys[k], "RemovePermissionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionInput
-- &lt;p&gt;Input for RemovePermission action.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the topic whose access control policy you wish to modify.&lt;/p&gt;
-- @param Label [label] &lt;p&gt;The unique label of the statement you want to remove.&lt;/p&gt;
-- Required parameter: TopicArn
-- Required parameter: Label
function M.RemovePermissionInput(TopicArn, Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemovePermissionInput")
	local t = { 
		["TopicArn"] = TopicArn,
		["Label"] = Label,
	}
	M.AssertRemovePermissionInput(t)
	return t
end

local InvalidParameterException_keys = { "message" = true, nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- &lt;p&gt;Indicates that a request parameter does not comply with the associated constraints.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Indicates that a request parameter does not comply with the associated constraints.&lt;/p&gt;
function M.InvalidParameterException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidParameterException(t)
	return t
end

local CreateTopicInput_keys = { "Name" = true, nil }

function M.AssertCreateTopicInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTopicInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AsserttopicName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreateTopicInput_keys[k], "CreateTopicInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTopicInput
-- &lt;p&gt;Input for CreateTopic action.&lt;/p&gt;
-- @param Name [topicName] &lt;p&gt;The name of the topic you want to create.&lt;/p&gt; &lt;p&gt;Constraints: Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long.&lt;/p&gt;
-- Required parameter: Name
function M.CreateTopicInput(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTopicInput")
	local t = { 
		["Name"] = Name,
	}
	M.AssertCreateTopicInput(t)
	return t
end

local DeleteEndpointInput_keys = { "EndpointArn" = true, nil }

function M.AssertDeleteEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointInput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteEndpointInput_keys[k], "DeleteEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointInput
-- &lt;p&gt;Input for DeleteEndpoint action.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;EndpointArn of endpoint to delete.&lt;/p&gt;
-- Required parameter: EndpointArn
function M.DeleteEndpointInput(EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEndpointInput")
	local t = { 
		["EndpointArn"] = EndpointArn,
	}
	M.AssertDeleteEndpointInput(t)
	return t
end

local SetEndpointAttributesInput_keys = { "Attributes" = true, "EndpointArn" = true, nil }

function M.AssertSetEndpointAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetEndpointAttributesInput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then M.AssertMapStringToString(struct["Attributes"]) end
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(SetEndpointAttributesInput_keys[k], "SetEndpointAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetEndpointAttributesInput
-- &lt;p&gt;Input for SetEndpointAttributes action.&lt;/p&gt;
-- @param Attributes [MapStringToString] &lt;p&gt;A map of the endpoint attributes. Attributes in this map include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;CustomUserData&lt;/code&gt; -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Enabled&lt;/code&gt; -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Token&lt;/code&gt; -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param EndpointArn [String] &lt;p&gt;EndpointArn used for SetEndpointAttributes action.&lt;/p&gt;
-- Required parameter: EndpointArn
-- Required parameter: Attributes
function M.SetEndpointAttributesInput(Attributes, EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetEndpointAttributesInput")
	local t = { 
		["Attributes"] = Attributes,
		["EndpointArn"] = EndpointArn,
	}
	M.AssertSetEndpointAttributesInput(t)
	return t
end

local Endpoint_keys = { "Attributes" = true, "EndpointArn" = true, nil }

function M.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["Attributes"] then M.AssertMapStringToString(struct["Attributes"]) end
	if struct["EndpointArn"] then M.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(Endpoint_keys[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- &lt;p&gt;Endpoint for mobile app and device.&lt;/p&gt;
-- @param Attributes [MapStringToString] &lt;p&gt;Attributes for endpoint.&lt;/p&gt;
-- @param EndpointArn [String] &lt;p&gt;EndpointArn for mobile app and device.&lt;/p&gt;
function M.Endpoint(Attributes, EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Attributes"] = Attributes,
		["EndpointArn"] = EndpointArn,
	}
	M.AssertEndpoint(t)
	return t
end

local ListTopicsInput_keys = { "NextToken" = true, nil }

function M.AssertListTopicsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertnextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTopicsInput_keys[k], "ListTopicsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicsInput
--  
-- @param NextToken [nextToken] &lt;p&gt;Token returned by the previous &lt;code&gt;ListTopics&lt;/code&gt; request.&lt;/p&gt;
function M.ListTopicsInput(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTopicsInput")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListTopicsInput(t)
	return t
end

local ListSubscriptionsInput_keys = { "NextToken" = true, nil }

function M.AssertListSubscriptionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertnextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListSubscriptionsInput_keys[k], "ListSubscriptionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionsInput
-- &lt;p&gt;Input for ListSubscriptions action.&lt;/p&gt;
-- @param NextToken [nextToken] &lt;p&gt;Token returned by the previous &lt;code&gt;ListSubscriptions&lt;/code&gt; request.&lt;/p&gt;
function M.ListSubscriptionsInput(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionsInput")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListSubscriptionsInput(t)
	return t
end

local SubscribeResponse_keys = { "SubscriptionArn" = true, nil }

function M.AssertSubscribeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeResponse to be of type 'table'")
	if struct["SubscriptionArn"] then M.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(SubscribeResponse_keys[k], "SubscribeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeResponse
-- &lt;p&gt;Response for Subscribe action.&lt;/p&gt;
-- @param SubscriptionArn [subscriptionARN] &lt;p&gt;The ARN of the subscription, if the service was able to create a subscription immediately (without requiring endpoint owner confirmation).&lt;/p&gt;
function M.SubscribeResponse(SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeResponse")
	local t = { 
		["SubscriptionArn"] = SubscriptionArn,
	}
	M.AssertSubscribeResponse(t)
	return t
end

local ListPlatformApplicationsResponse_keys = { "NextToken" = true, "PlatformApplications" = true, nil }

function M.AssertListPlatformApplicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlatformApplicationsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["PlatformApplications"] then M.AssertListOfPlatformApplications(struct["PlatformApplications"]) end
	for k,_ in pairs(struct) do
		assert(ListPlatformApplicationsResponse_keys[k], "ListPlatformApplicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlatformApplicationsResponse
-- &lt;p&gt;Response for ListPlatformApplications action.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;NextToken string is returned when calling ListPlatformApplications action if additional records are available after the first page results.&lt;/p&gt;
-- @param PlatformApplications [ListOfPlatformApplications] &lt;p&gt;Platform applications returned when calling ListPlatformApplications action.&lt;/p&gt;
function M.ListPlatformApplicationsResponse(NextToken, PlatformApplications, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPlatformApplicationsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["PlatformApplications"] = PlatformApplications,
	}
	M.AssertListPlatformApplicationsResponse(t)
	return t
end

local GetTopicAttributesInput_keys = { "TopicArn" = true, nil }

function M.AssertGetTopicAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicAttributesInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(GetTopicAttributesInput_keys[k], "GetTopicAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicAttributesInput
-- &lt;p&gt;Input for GetTopicAttributes action.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the topic whose properties you want to get.&lt;/p&gt;
-- Required parameter: TopicArn
function M.GetTopicAttributesInput(TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTopicAttributesInput")
	local t = { 
		["TopicArn"] = TopicArn,
	}
	M.AssertGetTopicAttributesInput(t)
	return t
end

local AddPermissionInput_keys = { "ActionName" = true, "AWSAccountId" = true, "TopicArn" = true, "Label" = true, nil }

function M.AssertAddPermissionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	assert(struct["AWSAccountId"], "Expected key AWSAccountId to exist in table")
	assert(struct["ActionName"], "Expected key ActionName to exist in table")
	if struct["ActionName"] then M.AssertActionsList(struct["ActionName"]) end
	if struct["AWSAccountId"] then M.AssertDelegatesList(struct["AWSAccountId"]) end
	if struct["TopicArn"] then M.AsserttopicARN(struct["TopicArn"]) end
	if struct["Label"] then M.Assertlabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(AddPermissionInput_keys[k], "AddPermissionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionInput
--  
-- @param ActionName [ActionsList] &lt;p&gt;The action you want to allow for the specified principal(s).&lt;/p&gt; &lt;p&gt;Valid values: any Amazon SNS action name.&lt;/p&gt;
-- @param AWSAccountId [DelegatesList] &lt;p&gt;The AWS account IDs of the users (principals) who will be given access to the specified actions. The users must have AWS accounts, but do not need to be signed up for this service.&lt;/p&gt;
-- @param TopicArn [topicARN] &lt;p&gt;The ARN of the topic whose access control policy you wish to modify.&lt;/p&gt;
-- @param Label [label] &lt;p&gt;A unique identifier for the new policy statement.&lt;/p&gt;
-- Required parameter: TopicArn
-- Required parameter: Label
-- Required parameter: AWSAccountId
-- Required parameter: ActionName
function M.AddPermissionInput(ActionName, AWSAccountId, TopicArn, Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddPermissionInput")
	local t = { 
		["ActionName"] = ActionName,
		["AWSAccountId"] = AWSAccountId,
		["TopicArn"] = TopicArn,
		["Label"] = Label,
	}
	M.AssertAddPermissionInput(t)
	return t
end

local GetPlatformApplicationAttributesResponse_keys = { "Attributes" = true, nil }

function M.AssertGetPlatformApplicationAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPlatformApplicationAttributesResponse to be of type 'table'")
	if struct["Attributes"] then M.AssertMapStringToString(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(GetPlatformApplicationAttributesResponse_keys[k], "GetPlatformApplicationAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPlatformApplicationAttributesResponse
-- &lt;p&gt;Response for GetPlatformApplicationAttributes action.&lt;/p&gt;
-- @param Attributes [MapStringToString] &lt;p&gt;Attributes include the following:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EventEndpointCreated&lt;/code&gt; -- Topic ARN to which EndpointCreated event notifications should be sent.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EventEndpointDeleted&lt;/code&gt; -- Topic ARN to which EndpointDeleted event notifications should be sent.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EventEndpointUpdated&lt;/code&gt; -- Topic ARN to which EndpointUpdate event notifications should be sent.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;EventDeliveryFailure&lt;/code&gt; -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.GetPlatformApplicationAttributesResponse(Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPlatformApplicationAttributesResponse")
	local t = { 
		["Attributes"] = Attributes,
	}
	M.AssertGetPlatformApplicationAttributesResponse(t)
	return t
end

local PlatformApplicationDisabledException_keys = { "message" = true, nil }

function M.AssertPlatformApplicationDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformApplicationDisabledException to be of type 'table'")
	if struct["message"] then M.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PlatformApplicationDisabledException_keys[k], "PlatformApplicationDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformApplicationDisabledException
-- &lt;p&gt;Exception error indicating platform application disabled.&lt;/p&gt;
-- @param message [string] &lt;p&gt;Message for platform application disabled.&lt;/p&gt;
function M.PlatformApplicationDisabledException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlatformApplicationDisabledException")
	local t = { 
		["message"] = message,
	}
	M.AssertPlatformApplicationDisabledException(t)
	return t
end

function M.Assertprotocol(str)
	assert(str)
	assert(type(str) == "string", "Expected protocol to be of type 'string'")
end

--  
function M.protocol(str)
	M.Assertprotocol(str)
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

function M.AssertattributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected attributeName to be of type 'string'")
end

--  
function M.attributeName(str)
	M.AssertattributeName(str)
	return str
end

function M.AssertPhoneNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected PhoneNumber to be of type 'string'")
end

--  
function M.PhoneNumber(str)
	M.AssertPhoneNumber(str)
	return str
end

function M.AsserttopicName(str)
	assert(str)
	assert(type(str) == "string", "Expected topicName to be of type 'string'")
end

--  
function M.topicName(str)
	M.AsserttopicName(str)
	return str
end

function M.Asserttoken(str)
	assert(str)
	assert(type(str) == "string", "Expected token to be of type 'string'")
end

--  
function M.token(str)
	M.Asserttoken(str)
	return str
end

function M.Assertdelegate(str)
	assert(str)
	assert(type(str) == "string", "Expected delegate to be of type 'string'")
end

--  
function M.delegate(str)
	M.Assertdelegate(str)
	return str
end

function M.AssertmessageId(str)
	assert(str)
	assert(type(str) == "string", "Expected messageId to be of type 'string'")
end

--  
function M.messageId(str)
	M.AssertmessageId(str)
	return str
end

function M.Assertsubject(str)
	assert(str)
	assert(type(str) == "string", "Expected subject to be of type 'string'")
end

--  
function M.subject(str)
	M.Assertsubject(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.Assertlabel(str)
	assert(str)
	assert(type(str) == "string", "Expected label to be of type 'string'")
end

--  
function M.label(str)
	M.Assertlabel(str)
	return str
end

function M.Assertaction(str)
	assert(str)
	assert(type(str) == "string", "Expected action to be of type 'string'")
end

--  
function M.action(str)
	M.Assertaction(str)
	return str
end

function M.AsserttopicARN(str)
	assert(str)
	assert(type(str) == "string", "Expected topicARN to be of type 'string'")
end

--  
function M.topicARN(str)
	M.AsserttopicARN(str)
	return str
end

function M.Assertmessage(str)
	assert(str)
	assert(type(str) == "string", "Expected message to be of type 'string'")
end

--  
function M.message(str)
	M.Assertmessage(str)
	return str
end

function M.Assertaccount(str)
	assert(str)
	assert(type(str) == "string", "Expected account to be of type 'string'")
end

--  
function M.account(str)
	M.Assertaccount(str)
	return str
end

function M.Assertendpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected endpoint to be of type 'string'")
end

--  
function M.endpoint(str)
	M.Assertendpoint(str)
	return str
end

function M.AssertnextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected nextToken to be of type 'string'")
end

--  
function M.nextToken(str)
	M.AssertnextToken(str)
	return str
end

function M.AssertauthenticateOnUnsubscribe(str)
	assert(str)
	assert(type(str) == "string", "Expected authenticateOnUnsubscribe to be of type 'string'")
end

--  
function M.authenticateOnUnsubscribe(str)
	M.AssertauthenticateOnUnsubscribe(str)
	return str
end

function M.AssertsubscriptionARN(str)
	assert(str)
	assert(type(str) == "string", "Expected subscriptionARN to be of type 'string'")
end

--  
function M.subscriptionARN(str)
	M.AssertsubscriptionARN(str)
	return str
end

function M.AssertattributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected attributeValue to be of type 'string'")
end

--  
function M.attributeValue(str)
	M.AssertattributeValue(str)
	return str
end

function M.AssertmessageStructure(str)
	assert(str)
	assert(type(str) == "string", "Expected messageStructure to be of type 'string'")
end

--  
function M.messageStructure(str)
	M.AssertmessageStructure(str)
	return str
end

function M.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	M.Assertboolean(boolean)
	return boolean
end

function M.AssertSubscriptionAttributesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected SubscriptionAttributesMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertattributeName(k)
		M.AssertattributeValue(v)
	end
end

function M.SubscriptionAttributesMap(map)
	M.AssertSubscriptionAttributesMap(map)
	return map
end

function M.AssertMessageAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MessageAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertMessageAttributeValue(v)
	end
end

function M.MessageAttributeMap(map)
	M.AssertMessageAttributeMap(map)
	return map
end

function M.AssertMapStringToString(map)
	assert(map)
	assert(type(map) == "table", "Expected MapStringToString to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.MapStringToString(map)
	M.AssertMapStringToString(map)
	return map
end

function M.AssertTopicAttributesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TopicAttributesMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertattributeName(k)
		M.AssertattributeValue(v)
	end
end

function M.TopicAttributesMap(map)
	M.AssertTopicAttributesMap(map)
	return map
end

function M.AssertBinary(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Binary to be of type 'string'")
end

function M.Binary(blob)
	M.AssertBinary(blob)
	return blob
end

function M.AssertSubscriptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscriptionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubscription(v)
	end
end

--  
-- List of Subscription objects
function M.SubscriptionsList(list)
	M.AssertSubscriptionsList(list)
	return list
end

function M.AssertActionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionsList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertaction(v)
	end
end

--  
-- List of action objects
function M.ActionsList(list)
	M.AssertActionsList(list)
	return list
end

function M.AssertTopicsList(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTopic(v)
	end
end

--  
-- List of Topic objects
function M.TopicsList(list)
	M.AssertTopicsList(list)
	return list
end

function M.AssertDelegatesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DelegatesList to be of type ''table")
	for _,v in ipairs(list) do
		M.Assertdelegate(v)
	end
end

--  
-- List of delegate objects
function M.DelegatesList(list)
	M.AssertDelegatesList(list)
	return list
end

function M.AssertPhoneNumberList(list)
	assert(list)
	assert(type(list) == "table", "Expected PhoneNumberList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPhoneNumber(v)
	end
end

--  
-- List of PhoneNumber objects
function M.PhoneNumberList(list)
	M.AssertPhoneNumberList(list)
	return list
end

function M.AssertListOfPlatformApplications(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfPlatformApplications to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlatformApplication(v)
	end
end

--  
-- List of PlatformApplication objects
function M.ListOfPlatformApplications(list)
	M.AssertListOfPlatformApplications(list)
	return list
end

function M.AssertListString(list)
	assert(list)
	assert(type(list) == "table", "Expected ListString to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ListString(list)
	M.AssertListString(list)
	return list
end

function M.AssertListOfEndpoints(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfEndpoints to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEndpoint(v)
	end
end

--  
-- List of Endpoint objects
function M.ListOfEndpoints(list)
	M.AssertListOfEndpoints(list)
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
			return "sns.amazonaws.com"
		end
	end
	local ss = { "sns" }
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
--- ListPlatformApplications
-- @param ListPlatformApplicationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPlatformApplicationsAsync(ListPlatformApplicationsInput, cb)
	assert(ListPlatformApplicationsInput, "You must provide a ListPlatformApplicationsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPlatformApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPlatformApplicationsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetPlatformApplicationAttributes
-- @param SetPlatformApplicationAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetPlatformApplicationAttributesAsync(SetPlatformApplicationAttributesInput, cb)
	assert(SetPlatformApplicationAttributesInput, "You must provide a SetPlatformApplicationAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetPlatformApplicationAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetPlatformApplicationAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSubscriptionsByTopic
-- @param ListSubscriptionsByTopicInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListSubscriptionsByTopicAsync(ListSubscriptionsByTopicInput, cb)
	assert(ListSubscriptionsByTopicInput, "You must provide a ListSubscriptionsByTopicInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListSubscriptionsByTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSubscriptionsByTopicInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListSubscriptions
-- @param ListSubscriptionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListSubscriptionsAsync(ListSubscriptionsInput, cb)
	assert(ListSubscriptionsInput, "You must provide a ListSubscriptionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListSubscriptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListSubscriptionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPhoneNumbersOptedOut
-- @param ListPhoneNumbersOptedOutInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPhoneNumbersOptedOutAsync(ListPhoneNumbersOptedOutInput, cb)
	assert(ListPhoneNumbersOptedOutInput, "You must provide a ListPhoneNumbersOptedOutInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPhoneNumbersOptedOut",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPhoneNumbersOptedOutInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ConfirmSubscription
-- @param ConfirmSubscriptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmSubscriptionAsync(ConfirmSubscriptionInput, cb)
	assert(ConfirmSubscriptionInput, "You must provide a ConfirmSubscriptionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ConfirmSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ConfirmSubscriptionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetTopicAttributes
-- @param SetTopicAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetTopicAttributesAsync(SetTopicAttributesInput, cb)
	assert(SetTopicAttributesInput, "You must provide a SetTopicAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetTopicAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetTopicAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetEndpointAttributes
-- @param SetEndpointAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetEndpointAttributesAsync(SetEndpointAttributesInput, cb)
	assert(SetEndpointAttributesInput, "You must provide a SetEndpointAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetEndpointAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetEndpointAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CheckIfPhoneNumberIsOptedOut
-- @param CheckIfPhoneNumberIsOptedOutInput
-- @param cb Callback function accepting two args: response, error_message
function M.CheckIfPhoneNumberIsOptedOutAsync(CheckIfPhoneNumberIsOptedOutInput, cb)
	assert(CheckIfPhoneNumberIsOptedOutInput, "You must provide a CheckIfPhoneNumberIsOptedOutInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CheckIfPhoneNumberIsOptedOut",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CheckIfPhoneNumberIsOptedOutInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddPermission
-- @param AddPermissionInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddPermissionAsync(AddPermissionInput, cb)
	assert(AddPermissionInput, "You must provide a AddPermissionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddPermissionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Unsubscribe
-- @param UnsubscribeInput
-- @param cb Callback function accepting two args: response, error_message
function M.UnsubscribeAsync(UnsubscribeInput, cb)
	assert(UnsubscribeInput, "You must provide a UnsubscribeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Unsubscribe",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UnsubscribeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSubscriptionAttributes
-- @param GetSubscriptionAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetSubscriptionAttributesAsync(GetSubscriptionAttributesInput, cb)
	assert(GetSubscriptionAttributesInput, "You must provide a GetSubscriptionAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSubscriptionAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSubscriptionAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePlatformEndpoint
-- @param CreatePlatformEndpointInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePlatformEndpointAsync(CreatePlatformEndpointInput, cb)
	assert(CreatePlatformEndpointInput, "You must provide a CreatePlatformEndpointInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreatePlatformEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePlatformEndpointInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemovePermission
-- @param RemovePermissionInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemovePermissionAsync(RemovePermissionInput, cb)
	assert(RemovePermissionInput, "You must provide a RemovePermissionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemovePermissionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTopic
-- @param CreateTopicInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTopicAsync(CreateTopicInput, cb)
	assert(CreateTopicInput, "You must provide a CreateTopicInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTopicInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetSubscriptionAttributes
-- @param SetSubscriptionAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetSubscriptionAttributesAsync(SetSubscriptionAttributesInput, cb)
	assert(SetSubscriptionAttributesInput, "You must provide a SetSubscriptionAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetSubscriptionAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetSubscriptionAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePlatformApplication
-- @param CreatePlatformApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePlatformApplicationAsync(CreatePlatformApplicationInput, cb)
	assert(CreatePlatformApplicationInput, "You must provide a CreatePlatformApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreatePlatformApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePlatformApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPlatformApplicationAttributes
-- @param GetPlatformApplicationAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetPlatformApplicationAttributesAsync(GetPlatformApplicationAttributesInput, cb)
	assert(GetPlatformApplicationAttributesInput, "You must provide a GetPlatformApplicationAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetPlatformApplicationAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPlatformApplicationAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSMSAttributes
-- @param GetSMSAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetSMSAttributesAsync(GetSMSAttributesInput, cb)
	assert(GetSMSAttributesInput, "You must provide a GetSMSAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSMSAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetSMSAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Publish
-- @param PublishInput
-- @param cb Callback function accepting two args: response, error_message
function M.PublishAsync(PublishInput, cb)
	assert(PublishInput, "You must provide a PublishInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Publish",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PublishInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetSMSAttributes
-- @param SetSMSAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetSMSAttributesAsync(SetSMSAttributesInput, cb)
	assert(SetSMSAttributesInput, "You must provide a SetSMSAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetSMSAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetSMSAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListEndpointsByPlatformApplication
-- @param ListEndpointsByPlatformApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListEndpointsByPlatformApplicationAsync(ListEndpointsByPlatformApplicationInput, cb)
	assert(ListEndpointsByPlatformApplicationInput, "You must provide a ListEndpointsByPlatformApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListEndpointsByPlatformApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListEndpointsByPlatformApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetEndpointAttributes
-- @param GetEndpointAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetEndpointAttributesAsync(GetEndpointAttributesInput, cb)
	assert(GetEndpointAttributesInput, "You must provide a GetEndpointAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetEndpointAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetEndpointAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteEndpoint
-- @param DeleteEndpointInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEndpointAsync(DeleteEndpointInput, cb)
	assert(DeleteEndpointInput, "You must provide a DeleteEndpointInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteEndpointInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePlatformApplication
-- @param DeletePlatformApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePlatformApplicationAsync(DeletePlatformApplicationInput, cb)
	assert(DeletePlatformApplicationInput, "You must provide a DeletePlatformApplicationInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeletePlatformApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePlatformApplicationInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTopicAttributes
-- @param GetTopicAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetTopicAttributesAsync(GetTopicAttributesInput, cb)
	assert(GetTopicAttributesInput, "You must provide a GetTopicAttributesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTopicAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetTopicAttributesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Subscribe
-- @param SubscribeInput
-- @param cb Callback function accepting two args: response, error_message
function M.SubscribeAsync(SubscribeInput, cb)
	assert(SubscribeInput, "You must provide a SubscribeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Subscribe",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SubscribeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteTopic
-- @param DeleteTopicInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTopicAsync(DeleteTopicInput, cb)
	assert(DeleteTopicInput, "You must provide a DeleteTopicInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTopicInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- OptInPhoneNumber
-- @param OptInPhoneNumberInput
-- @param cb Callback function accepting two args: response, error_message
function M.OptInPhoneNumberAsync(OptInPhoneNumberInput, cb)
	assert(OptInPhoneNumberInput, "You must provide a OptInPhoneNumberInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".OptInPhoneNumber",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", OptInPhoneNumberInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTopics
-- @param ListTopicsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTopicsAsync(ListTopicsInput, cb)
	assert(ListTopicsInput, "You must provide a ListTopicsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListTopics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTopicsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
