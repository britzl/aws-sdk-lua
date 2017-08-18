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

local keys = {}
local asserts = {}

keys.SubscriptionLimitExceededException = { ["message"] = true, nil }

function asserts.AssertSubscriptionLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionLimitExceededException[k], "SubscriptionLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionLimitExceededException
-- <p>Indicates that the customer already owns the maximum allowed number of subscriptions.</p>
-- @param _message [string] 
function M.SubscriptionLimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionLimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertSubscriptionLimitExceededException(t)
	return t
end

keys.CheckIfPhoneNumberIsOptedOutInput = { ["phoneNumber"] = true, nil }

function asserts.AssertCheckIfPhoneNumberIsOptedOutInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckIfPhoneNumberIsOptedOutInput to be of type 'table'")
	assert(struct["phoneNumber"], "Expected key phoneNumber to exist in table")
	if struct["phoneNumber"] then asserts.AssertPhoneNumber(struct["phoneNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.CheckIfPhoneNumberIsOptedOutInput[k], "CheckIfPhoneNumberIsOptedOutInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckIfPhoneNumberIsOptedOutInput
-- <p>The input for the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
-- @param _phoneNumber [PhoneNumber] <p>The phone number for which you want to check the opt out status.</p>
-- Required parameter: phoneNumber
function M.CheckIfPhoneNumberIsOptedOutInput(_phoneNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CheckIfPhoneNumberIsOptedOutInput")
	local t = { 
		["phoneNumber"] = _phoneNumber,
	}
	asserts.AssertCheckIfPhoneNumberIsOptedOutInput(t)
	return t
end

keys.GetEndpointAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertGetEndpointAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEndpointAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertMapStringToString(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEndpointAttributesResponse[k], "GetEndpointAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEndpointAttributesResponse
-- <p>Response from GetEndpointAttributes of the EndpointArn.</p>
-- @param _Attributes [MapStringToString] <p>Attributes include the following:</p> <ul> <li> <p> <code>CustomUserData</code> -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.</p> </li> <li> <p> <code>Enabled</code> -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.</p> </li> <li> <p> <code>Token</code> -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.</p> </li> </ul>
function M.GetEndpointAttributesResponse(_Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEndpointAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
	}
	asserts.AssertGetEndpointAttributesResponse(t)
	return t
end

keys.GetEndpointAttributesInput = { ["EndpointArn"] = true, nil }

function asserts.AssertGetEndpointAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEndpointAttributesInput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEndpointAttributesInput[k], "GetEndpointAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEndpointAttributesInput
-- <p>Input for GetEndpointAttributes action.</p>
-- @param _EndpointArn [String] <p>EndpointArn for GetEndpointAttributes input.</p>
-- Required parameter: EndpointArn
function M.GetEndpointAttributesInput(_EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEndpointAttributesInput")
	local t = { 
		["EndpointArn"] = _EndpointArn,
	}
	asserts.AssertGetEndpointAttributesInput(t)
	return t
end

keys.SetTopicAttributesInput = { ["AttributeName"] = true, ["AttributeValue"] = true, ["TopicArn"] = true, nil }

function asserts.AssertSetTopicAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTopicAttributesInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["AttributeName"] then asserts.AssertattributeName(struct["AttributeName"]) end
	if struct["AttributeValue"] then asserts.AssertattributeValue(struct["AttributeValue"]) end
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetTopicAttributesInput[k], "SetTopicAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTopicAttributesInput
-- <p>Input for SetTopicAttributes action.</p>
-- @param _AttributeName [attributeName] <p>The name of the attribute you want to set. Only a subset of the topic's attributes are mutable.</p> <p>Valid values: <code>Policy</code> | <code>DisplayName</code> | <code>DeliveryPolicy</code> </p>
-- @param _AttributeValue [attributeValue] <p>The new value for the attribute.</p>
-- @param _TopicArn [topicARN] <p>The ARN of the topic to modify.</p>
-- Required parameter: TopicArn
-- Required parameter: AttributeName
function M.SetTopicAttributesInput(_AttributeName, _AttributeValue, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTopicAttributesInput")
	local t = { 
		["AttributeName"] = _AttributeName,
		["AttributeValue"] = _AttributeValue,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertSetTopicAttributesInput(t)
	return t
end

keys.CreatePlatformApplicationInput = { ["Platform"] = true, ["Name"] = true, ["Attributes"] = true, nil }

function asserts.AssertCreatePlatformApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlatformApplicationInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Platform"], "Expected key Platform to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Platform"] then asserts.AssertString(struct["Platform"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Attributes"] then asserts.AssertMapStringToString(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlatformApplicationInput[k], "CreatePlatformApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlatformApplicationInput
-- <p>Input for CreatePlatformApplication action.</p>
-- @param _Platform [String] <p>The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Google Cloud Messaging).</p>
-- @param _Name [String] <p>Application names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters long.</p>
-- @param _Attributes [MapStringToString] <p>For a list of attributes, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html">SetPlatformApplicationAttributes</a> </p>
-- Required parameter: Name
-- Required parameter: Platform
-- Required parameter: Attributes
function M.CreatePlatformApplicationInput(_Platform, _Name, _Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlatformApplicationInput")
	local t = { 
		["Platform"] = _Platform,
		["Name"] = _Name,
		["Attributes"] = _Attributes,
	}
	asserts.AssertCreatePlatformApplicationInput(t)
	return t
end

keys.CreatePlatformEndpointInput = { ["Attributes"] = true, ["Token"] = true, ["PlatformApplicationArn"] = true, ["CustomUserData"] = true, nil }

function asserts.AssertCreatePlatformEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlatformEndpointInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	assert(struct["Token"], "Expected key Token to exist in table")
	if struct["Attributes"] then asserts.AssertMapStringToString(struct["Attributes"]) end
	if struct["Token"] then asserts.AssertString(struct["Token"]) end
	if struct["PlatformApplicationArn"] then asserts.AssertString(struct["PlatformApplicationArn"]) end
	if struct["CustomUserData"] then asserts.AssertString(struct["CustomUserData"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlatformEndpointInput[k], "CreatePlatformEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlatformEndpointInput
-- <p>Input for CreatePlatformEndpoint action.</p>
-- @param _Attributes [MapStringToString] <p>For a list of attributes, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html">SetEndpointAttributes</a>.</p>
-- @param _Token [String] <p>Unique identifier created by the notification service for an app on a device. The specific name for Token will vary, depending on which notification service is being used. For example, when using APNS as the notification service, you need the device token. Alternatively, when using GCM or ADM, the device token equivalent is called the registration ID.</p>
-- @param _PlatformApplicationArn [String] <p>PlatformApplicationArn returned from CreatePlatformApplication is used to create a an endpoint.</p>
-- @param _CustomUserData [String] <p>Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.</p>
-- Required parameter: PlatformApplicationArn
-- Required parameter: Token
function M.CreatePlatformEndpointInput(_Attributes, _Token, _PlatformApplicationArn, _CustomUserData, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlatformEndpointInput")
	local t = { 
		["Attributes"] = _Attributes,
		["Token"] = _Token,
		["PlatformApplicationArn"] = _PlatformApplicationArn,
		["CustomUserData"] = _CustomUserData,
	}
	asserts.AssertCreatePlatformEndpointInput(t)
	return t
end

keys.ConfirmSubscriptionInput = { ["Token"] = true, ["AuthenticateOnUnsubscribe"] = true, ["TopicArn"] = true, nil }

function asserts.AssertConfirmSubscriptionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSubscriptionInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Token"], "Expected key Token to exist in table")
	if struct["Token"] then asserts.Asserttoken(struct["Token"]) end
	if struct["AuthenticateOnUnsubscribe"] then asserts.AssertauthenticateOnUnsubscribe(struct["AuthenticateOnUnsubscribe"]) end
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmSubscriptionInput[k], "ConfirmSubscriptionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSubscriptionInput
-- <p>Input for ConfirmSubscription action.</p>
-- @param _Token [token] <p>Short-lived token sent to an endpoint during the <code>Subscribe</code> action.</p>
-- @param _AuthenticateOnUnsubscribe [authenticateOnUnsubscribe] <p>Disallows unauthenticated unsubscribes of the subscription. If the value of this parameter is <code>true</code> and the request has an AWS signature, then only the topic owner and the subscription owner can unsubscribe the endpoint. The unsubscribe action requires AWS authentication. </p>
-- @param _TopicArn [topicARN] <p>The ARN of the topic for which you wish to confirm a subscription.</p>
-- Required parameter: TopicArn
-- Required parameter: Token
function M.ConfirmSubscriptionInput(_Token, _AuthenticateOnUnsubscribe, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmSubscriptionInput")
	local t = { 
		["Token"] = _Token,
		["AuthenticateOnUnsubscribe"] = _AuthenticateOnUnsubscribe,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertConfirmSubscriptionInput(t)
	return t
end

keys.ListSubscriptionsByTopicInput = { ["NextToken"] = true, ["TopicArn"] = true, nil }

function asserts.AssertListSubscriptionsByTopicInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionsByTopicInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	if struct["NextToken"] then asserts.AssertnextToken(struct["NextToken"]) end
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscriptionsByTopicInput[k], "ListSubscriptionsByTopicInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionsByTopicInput
-- <p>Input for ListSubscriptionsByTopic action.</p>
-- @param _NextToken [nextToken] <p>Token returned by the previous <code>ListSubscriptionsByTopic</code> request.</p>
-- @param _TopicArn [topicARN] <p>The ARN of the topic for which you wish to find subscriptions.</p>
-- Required parameter: TopicArn
function M.ListSubscriptionsByTopicInput(_NextToken, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionsByTopicInput")
	local t = { 
		["NextToken"] = _NextToken,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertListSubscriptionsByTopicInput(t)
	return t
end

keys.PlatformApplication = { ["Attributes"] = true, ["PlatformApplicationArn"] = true, nil }

function asserts.AssertPlatformApplication(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformApplication to be of type 'table'")
	if struct["Attributes"] then asserts.AssertMapStringToString(struct["Attributes"]) end
	if struct["PlatformApplicationArn"] then asserts.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlatformApplication[k], "PlatformApplication contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformApplication
-- <p>Platform application object.</p>
-- @param _Attributes [MapStringToString] <p>Attributes for platform application object.</p>
-- @param _PlatformApplicationArn [String] <p>PlatformApplicationArn for platform application object.</p>
function M.PlatformApplication(_Attributes, _PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlatformApplication")
	local t = { 
		["Attributes"] = _Attributes,
		["PlatformApplicationArn"] = _PlatformApplicationArn,
	}
	asserts.AssertPlatformApplication(t)
	return t
end

keys.EndpointDisabledException = { ["message"] = true, nil }

function asserts.AssertEndpointDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EndpointDisabledException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.EndpointDisabledException[k], "EndpointDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EndpointDisabledException
-- <p>Exception error indicating endpoint disabled.</p>
-- @param _message [string] <p>Message for endpoint disabled.</p>
function M.EndpointDisabledException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EndpointDisabledException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertEndpointDisabledException(t)
	return t
end

keys.GetSMSAttributesResponse = { ["attributes"] = true, nil }

function asserts.AssertGetSMSAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSMSAttributesResponse to be of type 'table'")
	if struct["attributes"] then asserts.AssertMapStringToString(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSMSAttributesResponse[k], "GetSMSAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSMSAttributesResponse
-- <p>The response from the <code>GetSMSAttributes</code> request.</p>
-- @param _attributes [MapStringToString] <p>The SMS attribute names and their values.</p>
function M.GetSMSAttributesResponse(_attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSMSAttributesResponse")
	local t = { 
		["attributes"] = _attributes,
	}
	asserts.AssertGetSMSAttributesResponse(t)
	return t
end

keys.Topic = { ["TopicArn"] = true, nil }

function asserts.AssertTopic(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Topic to be of type 'table'")
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Topic[k], "Topic contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Topic
-- <p>A wrapper type for the topic's Amazon Resource Name (ARN). To retrieve a topic's attributes, use <code>GetTopicAttributes</code>.</p>
-- @param _TopicArn [topicARN] <p>The topic's ARN.</p>
function M.Topic(_TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Topic")
	local t = { 
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertTopic(t)
	return t
end

keys.ListPhoneNumbersOptedOutInput = { ["nextToken"] = true, nil }

function asserts.AssertListPhoneNumbersOptedOutInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPhoneNumbersOptedOutInput to be of type 'table'")
	if struct["nextToken"] then asserts.Assertstring(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPhoneNumbersOptedOutInput[k], "ListPhoneNumbersOptedOutInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPhoneNumbersOptedOutInput
-- <p>The input for the <code>ListPhoneNumbersOptedOut</code> action.</p>
-- @param _nextToken [string] <p>A <code>NextToken</code> string is used when you call the <code>ListPhoneNumbersOptedOut</code> action to retrieve additional records that are available after the first page of results.</p>
function M.ListPhoneNumbersOptedOutInput(_nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPhoneNumbersOptedOutInput")
	local t = { 
		["nextToken"] = _nextToken,
	}
	asserts.AssertListPhoneNumbersOptedOutInput(t)
	return t
end

keys.Subscription = { ["Owner"] = true, ["Endpoint"] = true, ["Protocol"] = true, ["TopicArn"] = true, ["SubscriptionArn"] = true, nil }

function asserts.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	if struct["Owner"] then asserts.Assertaccount(struct["Owner"]) end
	if struct["Endpoint"] then asserts.Assertendpoint(struct["Endpoint"]) end
	if struct["Protocol"] then asserts.Assertprotocol(struct["Protocol"]) end
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	if struct["SubscriptionArn"] then asserts.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subscription[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- <p>A wrapper type for the attributes of an Amazon SNS subscription.</p>
-- @param _Owner [account] <p>The subscription's owner.</p>
-- @param _Endpoint [endpoint] <p>The subscription's endpoint (format depends on the protocol).</p>
-- @param _Protocol [protocol] <p>The subscription's protocol.</p>
-- @param _TopicArn [topicARN] <p>The ARN of the subscription's topic.</p>
-- @param _SubscriptionArn [subscriptionARN] <p>The subscription's ARN.</p>
function M.Subscription(_Owner, _Endpoint, _Protocol, _TopicArn, _SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["Owner"] = _Owner,
		["Endpoint"] = _Endpoint,
		["Protocol"] = _Protocol,
		["TopicArn"] = _TopicArn,
		["SubscriptionArn"] = _SubscriptionArn,
	}
	asserts.AssertSubscription(t)
	return t
end

keys.ListSubscriptionsResponse = { ["NextToken"] = true, ["Subscriptions"] = true, nil }

function asserts.AssertListSubscriptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertnextToken(struct["NextToken"]) end
	if struct["Subscriptions"] then asserts.AssertSubscriptionsList(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscriptionsResponse[k], "ListSubscriptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionsResponse
-- <p>Response for ListSubscriptions action</p>
-- @param _NextToken [nextToken] <p>Token to pass along to the next <code>ListSubscriptions</code> request. This element is returned if there are more subscriptions to retrieve.</p>
-- @param _Subscriptions [SubscriptionsList] <p>A list of subscriptions.</p>
function M.ListSubscriptionsResponse(_NextToken, _Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Subscriptions"] = _Subscriptions,
	}
	asserts.AssertListSubscriptionsResponse(t)
	return t
end

keys.ListTopicsResponse = { ["Topics"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTopicsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicsResponse to be of type 'table'")
	if struct["Topics"] then asserts.AssertTopicsList(struct["Topics"]) end
	if struct["NextToken"] then asserts.AssertnextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTopicsResponse[k], "ListTopicsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicsResponse
-- <p>Response for ListTopics action.</p>
-- @param _Topics [TopicsList] <p>A list of topic ARNs.</p>
-- @param _NextToken [nextToken] <p>Token to pass along to the next <code>ListTopics</code> request. This element is returned if there are additional topics to retrieve.</p>
function M.ListTopicsResponse(_Topics, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTopicsResponse")
	local t = { 
		["Topics"] = _Topics,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListTopicsResponse(t)
	return t
end

keys.OptInPhoneNumberInput = { ["phoneNumber"] = true, nil }

function asserts.AssertOptInPhoneNumberInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptInPhoneNumberInput to be of type 'table'")
	assert(struct["phoneNumber"], "Expected key phoneNumber to exist in table")
	if struct["phoneNumber"] then asserts.AssertPhoneNumber(struct["phoneNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.OptInPhoneNumberInput[k], "OptInPhoneNumberInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptInPhoneNumberInput
-- <p>Input for the OptInPhoneNumber action.</p>
-- @param _phoneNumber [PhoneNumber] <p>The phone number to opt in.</p>
-- Required parameter: phoneNumber
function M.OptInPhoneNumberInput(_phoneNumber, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptInPhoneNumberInput")
	local t = { 
		["phoneNumber"] = _phoneNumber,
	}
	asserts.AssertOptInPhoneNumberInput(t)
	return t
end

keys.ListPlatformApplicationsInput = { ["NextToken"] = true, nil }

function asserts.AssertListPlatformApplicationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlatformApplicationsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPlatformApplicationsInput[k], "ListPlatformApplicationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlatformApplicationsInput
-- <p>Input for ListPlatformApplications action.</p>
-- @param _NextToken [String] <p>NextToken string is used when calling ListPlatformApplications action to retrieve additional records that are available after the first page results.</p>
function M.ListPlatformApplicationsInput(_NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPlatformApplicationsInput")
	local t = { 
		["NextToken"] = _NextToken,
	}
	asserts.AssertListPlatformApplicationsInput(t)
	return t
end

keys.GetSubscriptionAttributesInput = { ["SubscriptionArn"] = true, nil }

function asserts.AssertGetSubscriptionAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionAttributesInput to be of type 'table'")
	assert(struct["SubscriptionArn"], "Expected key SubscriptionArn to exist in table")
	if struct["SubscriptionArn"] then asserts.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSubscriptionAttributesInput[k], "GetSubscriptionAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionAttributesInput
-- <p>Input for GetSubscriptionAttributes.</p>
-- @param _SubscriptionArn [subscriptionARN] <p>The ARN of the subscription whose properties you want to get.</p>
-- Required parameter: SubscriptionArn
function M.GetSubscriptionAttributesInput(_SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionAttributesInput")
	local t = { 
		["SubscriptionArn"] = _SubscriptionArn,
	}
	asserts.AssertGetSubscriptionAttributesInput(t)
	return t
end

keys.CreateEndpointResponse = { ["EndpointArn"] = true, nil }

function asserts.AssertCreateEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateEndpointResponse to be of type 'table'")
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateEndpointResponse[k], "CreateEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateEndpointResponse
-- <p>Response from CreateEndpoint action.</p>
-- @param _EndpointArn [String] <p>EndpointArn returned from CreateEndpoint action.</p>
function M.CreateEndpointResponse(_EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateEndpointResponse")
	local t = { 
		["EndpointArn"] = _EndpointArn,
	}
	asserts.AssertCreateEndpointResponse(t)
	return t
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>Indicates that the requested resource does not exist.</p>
-- @param _message [string] 
function M.NotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertNotFoundException(t)
	return t
end

keys.GetPlatformApplicationAttributesInput = { ["PlatformApplicationArn"] = true, nil }

function asserts.AssertGetPlatformApplicationAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPlatformApplicationAttributesInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	if struct["PlatformApplicationArn"] then asserts.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPlatformApplicationAttributesInput[k], "GetPlatformApplicationAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPlatformApplicationAttributesInput
-- <p>Input for GetPlatformApplicationAttributes action.</p>
-- @param _PlatformApplicationArn [String] <p>PlatformApplicationArn for GetPlatformApplicationAttributesInput.</p>
-- Required parameter: PlatformApplicationArn
function M.GetPlatformApplicationAttributesInput(_PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPlatformApplicationAttributesInput")
	local t = { 
		["PlatformApplicationArn"] = _PlatformApplicationArn,
	}
	asserts.AssertGetPlatformApplicationAttributesInput(t)
	return t
end

keys.GetSMSAttributesInput = { ["attributes"] = true, nil }

function asserts.AssertGetSMSAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSMSAttributesInput to be of type 'table'")
	if struct["attributes"] then asserts.AssertListString(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSMSAttributesInput[k], "GetSMSAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSMSAttributesInput
-- <p>The input for the <code>GetSMSAttributes</code> request.</p>
-- @param _attributes [ListString] <p>A list of the individual attribute names, such as <code>MonthlySpendLimit</code>, for which you want values.</p> <p>For all attribute names, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html">SetSMSAttributes</a>.</p> <p>If you don't use this parameter, Amazon SNS returns all SMS attributes.</p>
function M.GetSMSAttributesInput(_attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSMSAttributesInput")
	local t = { 
		["attributes"] = _attributes,
	}
	asserts.AssertGetSMSAttributesInput(t)
	return t
end

keys.ConfirmSubscriptionResponse = { ["SubscriptionArn"] = true, nil }

function asserts.AssertConfirmSubscriptionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConfirmSubscriptionResponse to be of type 'table'")
	if struct["SubscriptionArn"] then asserts.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConfirmSubscriptionResponse[k], "ConfirmSubscriptionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConfirmSubscriptionResponse
-- <p>Response for ConfirmSubscriptions action.</p>
-- @param _SubscriptionArn [subscriptionARN] <p>The ARN of the created subscription.</p>
function M.ConfirmSubscriptionResponse(_SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConfirmSubscriptionResponse")
	local t = { 
		["SubscriptionArn"] = _SubscriptionArn,
	}
	asserts.AssertConfirmSubscriptionResponse(t)
	return t
end

keys.DeleteTopicInput = { ["TopicArn"] = true, nil }

function asserts.AssertDeleteTopicInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTopicInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTopicInput[k], "DeleteTopicInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTopicInput
--  
-- @param _TopicArn [topicARN] <p>The ARN of the topic you want to delete.</p>
-- Required parameter: TopicArn
function M.DeleteTopicInput(_TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTopicInput")
	local t = { 
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertDeleteTopicInput(t)
	return t
end

keys.TopicLimitExceededException = { ["message"] = true, nil }

function asserts.AssertTopicLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TopicLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TopicLimitExceededException[k], "TopicLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TopicLimitExceededException
-- <p>Indicates that the customer already owns the maximum allowed number of topics.</p>
-- @param _message [string] 
function M.TopicLimitExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TopicLimitExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTopicLimitExceededException(t)
	return t
end

keys.SetSMSAttributesInput = { ["attributes"] = true, nil }

function asserts.AssertSetSMSAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSMSAttributesInput to be of type 'table'")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then asserts.AssertMapStringToString(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetSMSAttributesInput[k], "SetSMSAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSMSAttributesInput
-- <p>The input for the SetSMSAttributes action.</p>
-- @param _attributes [MapStringToString] <p>The default settings for sending SMS messages from your account. You can set values for the following attribute names:</p> <p> <code>MonthlySpendLimit</code> – The maximum amount in USD that you are willing to spend each month to send SMS messages. When Amazon SNS determines that sending an SMS message would incur a cost that exceeds this limit, it stops sending SMS messages within minutes.</p> <important> <p>Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During that interval, if you continue to send SMS messages, you will incur costs that exceed your limit.</p> </important> <p>By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to exceed the maximum, contact <a href="https://aws.amazon.com/premiumsupport/">AWS Support</a> or your AWS sales representative for a service limit increase.</p> <p> <code>DeliveryStatusIAMRole</code> – The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS writes a log that includes the message price, the success or failure status, the reason for failure (if the message failed), the message dwell time, and other information.</p> <p> <code>DeliveryStatusSuccessSamplingRate</code> – The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an integer from 0 - 100. For example, to write logs only for failed deliveries, set this value to <code>0</code>. To write logs for 10% of your successful deliveries, set it to <code>10</code>.</p> <p> <code>DefaultSenderID</code> – A string, such as your business brand, that is displayed as the sender on the receiving device. Support for sender IDs varies by country. The sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one letter.</p> <p> <code>DefaultSMSType</code> – The type of SMS message that you will send by default. You can assign the following values:</p> <ul> <li> <p> <code>Promotional</code> – (Default) Noncritical messages, such as marketing messages. Amazon SNS optimizes the message delivery to incur the lowest cost.</p> </li> <li> <p> <code>Transactional</code> – Critical messages that support customer transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability.</p> </li> </ul> <p> <code>UsageReportS3Bucket</code> – The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to the bucket. The report includes the following information for each SMS message that was successfully delivered by your account:</p> <ul> <li> <p>Time that the message was published (in UTC)</p> </li> <li> <p>Message ID</p> </li> <li> <p>Destination phone number</p> </li> <li> <p>Message type</p> </li> <li> <p>Delivery status</p> </li> <li> <p>Message price (in USD)</p> </li> <li> <p>Part number (a message is split into multiple parts if it is too long for a single message)</p> </li> <li> <p>Total number of parts</p> </li> </ul> <p>To receive the report, the bucket must have a policy that allows the Amazon SNS service principle to perform the <code>s3:PutObject</code> and <code>s3:GetBucketLocation</code> actions.</p> <p>For an example bucket policy and usage report, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sms_stats.html">Monitoring SMS Activity</a> in the <i>Amazon SNS Developer Guide</i>.</p>
-- Required parameter: attributes
function M.SetSMSAttributesInput(_attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSMSAttributesInput")
	local t = { 
		["attributes"] = _attributes,
	}
	asserts.AssertSetSMSAttributesInput(t)
	return t
end

keys.ThrottledException = { ["message"] = true, nil }

function asserts.AssertThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottledException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottledException[k], "ThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottledException
-- <p>Indicates that the rate at which requests have been submitted for this action exceeds the limit for your account.</p>
-- @param _message [string] <p>Throttled request.</p>
function M.ThrottledException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottledException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertThrottledException(t)
	return t
end

keys.OptInPhoneNumberResponse = { nil }

function asserts.AssertOptInPhoneNumberResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OptInPhoneNumberResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OptInPhoneNumberResponse[k], "OptInPhoneNumberResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OptInPhoneNumberResponse
-- <p>The response for the OptInPhoneNumber action.</p>
function M.OptInPhoneNumberResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OptInPhoneNumberResponse")
	local t = { 
	}
	asserts.AssertOptInPhoneNumberResponse(t)
	return t
end

keys.ListSubscriptionsByTopicResponse = { ["NextToken"] = true, ["Subscriptions"] = true, nil }

function asserts.AssertListSubscriptionsByTopicResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionsByTopicResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertnextToken(struct["NextToken"]) end
	if struct["Subscriptions"] then asserts.AssertSubscriptionsList(struct["Subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscriptionsByTopicResponse[k], "ListSubscriptionsByTopicResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionsByTopicResponse
-- <p>Response for ListSubscriptionsByTopic action.</p>
-- @param _NextToken [nextToken] <p>Token to pass along to the next <code>ListSubscriptionsByTopic</code> request. This element is returned if there are more subscriptions to retrieve.</p>
-- @param _Subscriptions [SubscriptionsList] <p>A list of subscriptions.</p>
function M.ListSubscriptionsByTopicResponse(_NextToken, _Subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionsByTopicResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Subscriptions"] = _Subscriptions,
	}
	asserts.AssertListSubscriptionsByTopicResponse(t)
	return t
end

keys.PublishInput = { ["MessageStructure"] = true, ["PhoneNumber"] = true, ["TargetArn"] = true, ["Message"] = true, ["MessageAttributes"] = true, ["TopicArn"] = true, ["Subject"] = true, nil }

function asserts.AssertPublishInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishInput to be of type 'table'")
	assert(struct["Message"], "Expected key Message to exist in table")
	if struct["MessageStructure"] then asserts.AssertmessageStructure(struct["MessageStructure"]) end
	if struct["PhoneNumber"] then asserts.AssertString(struct["PhoneNumber"]) end
	if struct["TargetArn"] then asserts.AssertString(struct["TargetArn"]) end
	if struct["Message"] then asserts.Assertmessage(struct["Message"]) end
	if struct["MessageAttributes"] then asserts.AssertMessageAttributeMap(struct["MessageAttributes"]) end
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	if struct["Subject"] then asserts.Assertsubject(struct["Subject"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublishInput[k], "PublishInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishInput
-- <p>Input for Publish action.</p>
-- @param _MessageStructure [messageStructure] <p>Set <code>MessageStructure</code> to <code>json</code> if you want to send a different message for each protocol. For example, using one publish action, you can send a short message to your SMS subscribers and a longer message to your email subscribers. If you set <code>MessageStructure</code> to <code>json</code>, the value of the <code>Message</code> parameter must: </p> <ul> <li> <p>be a syntactically valid JSON object; and</p> </li> <li> <p>contain at least a top-level JSON key of "default" with a value that is a string.</p> </li> </ul> <p>You can define other top-level keys that define the message you want to send to a specific transport protocol (e.g., "http").</p> <p>For information about sending different messages for each protocol using the AWS Management Console, go to <a href="http://docs.aws.amazon.com/sns/latest/gsg/Publish.html#sns-message-formatting-by-protocol">Create Different Messages for Each Protocol</a> in the <i>Amazon Simple Notification Service Getting Started Guide</i>. </p> <p>Valid value: <code>json</code> </p>
-- @param _PhoneNumber [String] <p>The phone number to which you want to deliver an SMS message. Use E.164 format.</p> <p>If you don't specify a value for the <code>PhoneNumber</code> parameter, you must specify a value for the <code>TargetArn</code> or <code>TopicArn</code> parameters.</p>
-- @param _TargetArn [String] <p>Either TopicArn or EndpointArn, but not both.</p> <p>If you don't specify a value for the <code>TargetArn</code> parameter, you must specify a value for the <code>PhoneNumber</code> or <code>TopicArn</code> parameters.</p>
-- @param _Message [message] <p>The message you want to send to the topic.</p> <p>If you want to send the same message to all transport protocols, include the text of the message as a String value.</p> <p>If you want to send different messages for each transport protocol, set the value of the <code>MessageStructure</code> parameter to <code>json</code> and use a JSON object for the <code>Message</code> parameter. </p> <p>Constraints: Messages must be UTF-8 encoded strings at most 256 KB in size (262144 bytes, not 262144 characters).</p> <p>JSON-specific constraints:</p> <ul> <li> <p>Keys in the JSON object that correspond to supported transport protocols must have simple JSON string values.</p> </li> <li> <p>The values will be parsed (unescaped) before they are used in outgoing messages.</p> </li> <li> <p>Outbound notifications are JSON encoded (meaning that the characters will be reescaped for sending).</p> </li> <li> <p>Values have a minimum length of 0 (the empty string, "", is allowed).</p> </li> <li> <p>Values have a maximum length bounded by the overall message size (so, including multiple protocols may limit message sizes).</p> </li> <li> <p>Non-string values will cause the key to be ignored.</p> </li> <li> <p>Keys that do not correspond to supported transport protocols are ignored.</p> </li> <li> <p>Duplicate keys are not allowed.</p> </li> <li> <p>Failure to parse or validate any key or value in the message will cause the <code>Publish</code> call to return an error (no partial delivery).</p> </li> </ul>
-- @param _MessageAttributes [MessageAttributeMap] <p>Message attributes for Publish action.</p>
-- @param _TopicArn [topicARN] <p>The topic you want to publish to.</p> <p>If you don't specify a value for the <code>TopicArn</code> parameter, you must specify a value for the <code>PhoneNumber</code> or <code>TargetArn</code> parameters.</p>
-- @param _Subject [subject] <p>Optional parameter to be used as the "Subject" line when the message is delivered to email endpoints. This field will also be included, if present, in the standard JSON messages delivered to other endpoints.</p> <p>Constraints: Subjects must be ASCII text that begins with a letter, number, or punctuation mark; must not include line breaks or control characters; and must be less than 100 characters long.</p>
-- Required parameter: Message
function M.PublishInput(_MessageStructure, _PhoneNumber, _TargetArn, _Message, _MessageAttributes, _TopicArn, _Subject, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishInput")
	local t = { 
		["MessageStructure"] = _MessageStructure,
		["PhoneNumber"] = _PhoneNumber,
		["TargetArn"] = _TargetArn,
		["Message"] = _Message,
		["MessageAttributes"] = _MessageAttributes,
		["TopicArn"] = _TopicArn,
		["Subject"] = _Subject,
	}
	asserts.AssertPublishInput(t)
	return t
end

keys.SetSubscriptionAttributesInput = { ["AttributeName"] = true, ["AttributeValue"] = true, ["SubscriptionArn"] = true, nil }

function asserts.AssertSetSubscriptionAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSubscriptionAttributesInput to be of type 'table'")
	assert(struct["SubscriptionArn"], "Expected key SubscriptionArn to exist in table")
	assert(struct["AttributeName"], "Expected key AttributeName to exist in table")
	if struct["AttributeName"] then asserts.AssertattributeName(struct["AttributeName"]) end
	if struct["AttributeValue"] then asserts.AssertattributeValue(struct["AttributeValue"]) end
	if struct["SubscriptionArn"] then asserts.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetSubscriptionAttributesInput[k], "SetSubscriptionAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSubscriptionAttributesInput
-- <p>Input for SetSubscriptionAttributes action.</p>
-- @param _AttributeName [attributeName] <p>The name of the attribute you want to set. Only a subset of the subscriptions attributes are mutable.</p> <p>Valid values: <code>DeliveryPolicy</code> | <code>RawMessageDelivery</code> </p>
-- @param _AttributeValue [attributeValue] <p>The new value for the attribute in JSON format.</p>
-- @param _SubscriptionArn [subscriptionARN] <p>The ARN of the subscription to modify.</p>
-- Required parameter: SubscriptionArn
-- Required parameter: AttributeName
function M.SetSubscriptionAttributesInput(_AttributeName, _AttributeValue, _SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSubscriptionAttributesInput")
	local t = { 
		["AttributeName"] = _AttributeName,
		["AttributeValue"] = _AttributeValue,
		["SubscriptionArn"] = _SubscriptionArn,
	}
	asserts.AssertSetSubscriptionAttributesInput(t)
	return t
end

keys.GetSubscriptionAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertGetSubscriptionAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSubscriptionAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertSubscriptionAttributesMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSubscriptionAttributesResponse[k], "GetSubscriptionAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSubscriptionAttributesResponse
-- <p>Response for GetSubscriptionAttributes action.</p>
-- @param _Attributes [SubscriptionAttributesMap] <p>A map of the subscription's attributes. Attributes in this map include the following:</p> <ul> <li> <p> <code>SubscriptionArn</code> -- the subscription's ARN</p> </li> <li> <p> <code>TopicArn</code> -- the topic ARN that the subscription is associated with</p> </li> <li> <p> <code>Owner</code> -- the AWS account ID of the subscription's owner</p> </li> <li> <p> <code>ConfirmationWasAuthenticated</code> -- true if the subscription confirmation request was authenticated</p> </li> <li> <p> <code>DeliveryPolicy</code> -- the JSON serialization of the subscription's delivery policy</p> </li> <li> <p> <code>EffectiveDeliveryPolicy</code> -- the JSON serialization of the effective delivery policy that takes into account the topic delivery policy and account system defaults</p> </li> </ul>
function M.GetSubscriptionAttributesResponse(_Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSubscriptionAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
	}
	asserts.AssertGetSubscriptionAttributesResponse(t)
	return t
end

keys.CreateTopicResponse = { ["TopicArn"] = true, nil }

function asserts.AssertCreateTopicResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTopicResponse to be of type 'table'")
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTopicResponse[k], "CreateTopicResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTopicResponse
-- <p>Response from CreateTopic action.</p>
-- @param _TopicArn [topicARN] <p>The Amazon Resource Name (ARN) assigned to the created topic.</p>
function M.CreateTopicResponse(_TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTopicResponse")
	local t = { 
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertCreateTopicResponse(t)
	return t
end

keys.InternalErrorException = { ["message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- <p>Indicates an internal service error.</p>
-- @param _message [string] 
function M.InternalErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalErrorException(t)
	return t
end

keys.GetTopicAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertGetTopicAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertTopicAttributesMap(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTopicAttributesResponse[k], "GetTopicAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicAttributesResponse
-- <p>Response for GetTopicAttributes action.</p>
-- @param _Attributes [TopicAttributesMap] <p>A map of the topic's attributes. Attributes in this map include the following:</p> <ul> <li> <p> <code>TopicArn</code> -- the topic's ARN</p> </li> <li> <p> <code>Owner</code> -- the AWS account ID of the topic's owner</p> </li> <li> <p> <code>Policy</code> -- the JSON serialization of the topic's access control policy</p> </li> <li> <p> <code>DisplayName</code> -- the human-readable name used in the "From" field for notifications to email and email-json endpoints</p> </li> <li> <p> <code>SubscriptionsPending</code> -- the number of subscriptions pending confirmation on this topic</p> </li> <li> <p> <code>SubscriptionsConfirmed</code> -- the number of confirmed subscriptions on this topic</p> </li> <li> <p> <code>SubscriptionsDeleted</code> -- the number of deleted subscriptions on this topic</p> </li> <li> <p> <code>DeliveryPolicy</code> -- the JSON serialization of the topic's delivery policy</p> </li> <li> <p> <code>EffectiveDeliveryPolicy</code> -- the JSON serialization of the effective delivery policy that takes into account system defaults</p> </li> </ul>
function M.GetTopicAttributesResponse(_Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTopicAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
	}
	asserts.AssertGetTopicAttributesResponse(t)
	return t
end

keys.ListPhoneNumbersOptedOutResponse = { ["phoneNumbers"] = true, ["nextToken"] = true, nil }

function asserts.AssertListPhoneNumbersOptedOutResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPhoneNumbersOptedOutResponse to be of type 'table'")
	if struct["phoneNumbers"] then asserts.AssertPhoneNumberList(struct["phoneNumbers"]) end
	if struct["nextToken"] then asserts.Assertstring(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPhoneNumbersOptedOutResponse[k], "ListPhoneNumbersOptedOutResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPhoneNumbersOptedOutResponse
-- <p>The response from the <code>ListPhoneNumbersOptedOut</code> action.</p>
-- @param _phoneNumbers [PhoneNumberList] <p>A list of phone numbers that are opted out of receiving SMS messages. The list is paginated, and each page can contain up to 100 phone numbers.</p>
-- @param _nextToken [string] <p>A <code>NextToken</code> string is returned when you call the <code>ListPhoneNumbersOptedOut</code> action if additional records are available after the first page of results.</p>
function M.ListPhoneNumbersOptedOutResponse(_phoneNumbers, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPhoneNumbersOptedOutResponse")
	local t = { 
		["phoneNumbers"] = _phoneNumbers,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListPhoneNumbersOptedOutResponse(t)
	return t
end

keys.CreatePlatformApplicationResponse = { ["PlatformApplicationArn"] = true, nil }

function asserts.AssertCreatePlatformApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePlatformApplicationResponse to be of type 'table'")
	if struct["PlatformApplicationArn"] then asserts.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePlatformApplicationResponse[k], "CreatePlatformApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePlatformApplicationResponse
-- <p>Response from CreatePlatformApplication action.</p>
-- @param _PlatformApplicationArn [String] <p>PlatformApplicationArn is returned.</p>
function M.CreatePlatformApplicationResponse(_PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePlatformApplicationResponse")
	local t = { 
		["PlatformApplicationArn"] = _PlatformApplicationArn,
	}
	asserts.AssertCreatePlatformApplicationResponse(t)
	return t
end

keys.AuthorizationErrorException = { ["message"] = true, nil }

function asserts.AssertAuthorizationErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AuthorizationErrorException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AuthorizationErrorException[k], "AuthorizationErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AuthorizationErrorException
-- <p>Indicates that the user has been denied access to the requested resource.</p>
-- @param _message [string] 
function M.AuthorizationErrorException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AuthorizationErrorException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertAuthorizationErrorException(t)
	return t
end

keys.SetPlatformApplicationAttributesInput = { ["Attributes"] = true, ["PlatformApplicationArn"] = true, nil }

function asserts.AssertSetPlatformApplicationAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetPlatformApplicationAttributesInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then asserts.AssertMapStringToString(struct["Attributes"]) end
	if struct["PlatformApplicationArn"] then asserts.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetPlatformApplicationAttributesInput[k], "SetPlatformApplicationAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetPlatformApplicationAttributesInput
-- <p>Input for SetPlatformApplicationAttributes action.</p>
-- @param _Attributes [MapStringToString] <p>A map of the platform application attributes. Attributes in this map include the following:</p> <ul> <li> <p> <code>PlatformCredential</code> -- The credential received from the notification service. For APNS/APNS_SANDBOX, PlatformCredential is private key. For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret".</p> </li> <li> <p> <code>PlatformPrincipal</code> -- The principal received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is SSL certificate. For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id".</p> </li> <li> <p> <code>EventEndpointCreated</code> -- Topic ARN to which EndpointCreated event notifications should be sent.</p> </li> <li> <p> <code>EventEndpointDeleted</code> -- Topic ARN to which EndpointDeleted event notifications should be sent.</p> </li> <li> <p> <code>EventEndpointUpdated</code> -- Topic ARN to which EndpointUpdate event notifications should be sent.</p> </li> <li> <p> <code>EventDeliveryFailure</code> -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.</p> </li> <li> <p> <code>SuccessFeedbackRoleArn</code> -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.</p> </li> <li> <p> <code>FailureFeedbackRoleArn</code> -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.</p> </li> <li> <p> <code>SuccessFeedbackSampleRate</code> -- Sample rate percentage (0-100) of successfully delivered messages.</p> </li> </ul>
-- @param _PlatformApplicationArn [String] <p>PlatformApplicationArn for SetPlatformApplicationAttributes action.</p>
-- Required parameter: PlatformApplicationArn
-- Required parameter: Attributes
function M.SetPlatformApplicationAttributesInput(_Attributes, _PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetPlatformApplicationAttributesInput")
	local t = { 
		["Attributes"] = _Attributes,
		["PlatformApplicationArn"] = _PlatformApplicationArn,
	}
	asserts.AssertSetPlatformApplicationAttributesInput(t)
	return t
end

keys.UnsubscribeInput = { ["SubscriptionArn"] = true, nil }

function asserts.AssertUnsubscribeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsubscribeInput to be of type 'table'")
	assert(struct["SubscriptionArn"], "Expected key SubscriptionArn to exist in table")
	if struct["SubscriptionArn"] then asserts.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsubscribeInput[k], "UnsubscribeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsubscribeInput
-- <p>Input for Unsubscribe action.</p>
-- @param _SubscriptionArn [subscriptionARN] <p>The ARN of the subscription to be deleted.</p>
-- Required parameter: SubscriptionArn
function M.UnsubscribeInput(_SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsubscribeInput")
	local t = { 
		["SubscriptionArn"] = _SubscriptionArn,
	}
	asserts.AssertUnsubscribeInput(t)
	return t
end

keys.InvalidParameterValueException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterValueException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterValueException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterValueException[k], "InvalidParameterValueException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterValueException
-- <p>Indicates that a request parameter does not comply with the associated constraints.</p>
-- @param _message [string] <p>The parameter value is invalid.</p>
function M.InvalidParameterValueException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterValueException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterValueException(t)
	return t
end

keys.ListEndpointsByPlatformApplicationResponse = { ["Endpoints"] = true, ["NextToken"] = true, nil }

function asserts.AssertListEndpointsByPlatformApplicationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEndpointsByPlatformApplicationResponse to be of type 'table'")
	if struct["Endpoints"] then asserts.AssertListOfEndpoints(struct["Endpoints"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEndpointsByPlatformApplicationResponse[k], "ListEndpointsByPlatformApplicationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEndpointsByPlatformApplicationResponse
-- <p>Response for ListEndpointsByPlatformApplication action.</p>
-- @param _Endpoints [ListOfEndpoints] <p>Endpoints returned for ListEndpointsByPlatformApplication action.</p>
-- @param _NextToken [String] <p>NextToken string is returned when calling ListEndpointsByPlatformApplication action if additional records are available after the first page results.</p>
function M.ListEndpointsByPlatformApplicationResponse(_Endpoints, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEndpointsByPlatformApplicationResponse")
	local t = { 
		["Endpoints"] = _Endpoints,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListEndpointsByPlatformApplicationResponse(t)
	return t
end

keys.SubscribeInput = { ["Endpoint"] = true, ["Protocol"] = true, ["TopicArn"] = true, nil }

function asserts.AssertSubscribeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	if struct["Endpoint"] then asserts.Assertendpoint(struct["Endpoint"]) end
	if struct["Protocol"] then asserts.Assertprotocol(struct["Protocol"]) end
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeInput[k], "SubscribeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeInput
-- <p>Input for Subscribe action.</p>
-- @param _Endpoint [endpoint] <p>The endpoint that you want to receive notifications. Endpoints vary by protocol:</p> <ul> <li> <p>For the <code>http</code> protocol, the endpoint is an URL beginning with "http://"</p> </li> <li> <p>For the <code>https</code> protocol, the endpoint is a URL beginning with "https://"</p> </li> <li> <p>For the <code>email</code> protocol, the endpoint is an email address</p> </li> <li> <p>For the <code>email-json</code> protocol, the endpoint is an email address</p> </li> <li> <p>For the <code>sms</code> protocol, the endpoint is a phone number of an SMS-enabled device</p> </li> <li> <p>For the <code>sqs</code> protocol, the endpoint is the ARN of an Amazon SQS queue</p> </li> <li> <p>For the <code>application</code> protocol, the endpoint is the EndpointArn of a mobile app and device.</p> </li> <li> <p>For the <code>lambda</code> protocol, the endpoint is the ARN of an AWS Lambda function.</p> </li> </ul>
-- @param _Protocol [protocol] <p>The protocol you want to use. Supported protocols include:</p> <ul> <li> <p> <code>http</code> -- delivery of JSON-encoded message via HTTP POST</p> </li> <li> <p> <code>https</code> -- delivery of JSON-encoded message via HTTPS POST</p> </li> <li> <p> <code>email</code> -- delivery of message via SMTP</p> </li> <li> <p> <code>email-json</code> -- delivery of JSON-encoded message via SMTP</p> </li> <li> <p> <code>sms</code> -- delivery of message via SMS</p> </li> <li> <p> <code>sqs</code> -- delivery of JSON-encoded message to an Amazon SQS queue</p> </li> <li> <p> <code>application</code> -- delivery of JSON-encoded message to an EndpointArn for a mobile app and device.</p> </li> <li> <p> <code>lambda</code> -- delivery of JSON-encoded message to an AWS Lambda function.</p> </li> </ul>
-- @param _TopicArn [topicARN] <p>The ARN of the topic you want to subscribe to.</p>
-- Required parameter: TopicArn
-- Required parameter: Protocol
function M.SubscribeInput(_Endpoint, _Protocol, _TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeInput")
	local t = { 
		["Endpoint"] = _Endpoint,
		["Protocol"] = _Protocol,
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertSubscribeInput(t)
	return t
end

keys.DeletePlatformApplicationInput = { ["PlatformApplicationArn"] = true, nil }

function asserts.AssertDeletePlatformApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePlatformApplicationInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	if struct["PlatformApplicationArn"] then asserts.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePlatformApplicationInput[k], "DeletePlatformApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePlatformApplicationInput
-- <p>Input for DeletePlatformApplication action.</p>
-- @param _PlatformApplicationArn [String] <p>PlatformApplicationArn of platform application object to delete.</p>
-- Required parameter: PlatformApplicationArn
function M.DeletePlatformApplicationInput(_PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePlatformApplicationInput")
	local t = { 
		["PlatformApplicationArn"] = _PlatformApplicationArn,
	}
	asserts.AssertDeletePlatformApplicationInput(t)
	return t
end

keys.PublishResponse = { ["MessageId"] = true, nil }

function asserts.AssertPublishResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishResponse to be of type 'table'")
	if struct["MessageId"] then asserts.AssertmessageId(struct["MessageId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublishResponse[k], "PublishResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishResponse
-- <p>Response for Publish action.</p>
-- @param _MessageId [messageId] <p>Unique identifier assigned to the published message.</p> <p>Length Constraint: Maximum 100 characters</p>
function M.PublishResponse(_MessageId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishResponse")
	local t = { 
		["MessageId"] = _MessageId,
	}
	asserts.AssertPublishResponse(t)
	return t
end

keys.MessageAttributeValue = { ["DataType"] = true, ["StringValue"] = true, ["BinaryValue"] = true, nil }

function asserts.AssertMessageAttributeValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MessageAttributeValue to be of type 'table'")
	assert(struct["DataType"], "Expected key DataType to exist in table")
	if struct["DataType"] then asserts.AssertString(struct["DataType"]) end
	if struct["StringValue"] then asserts.AssertString(struct["StringValue"]) end
	if struct["BinaryValue"] then asserts.AssertBinary(struct["BinaryValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.MessageAttributeValue[k], "MessageAttributeValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MessageAttributeValue
-- <p>The user-specified message attribute value. For string data types, the value attribute has the same restrictions on the content as the message body. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a>.</p> <p>Name, type, and value must not be empty or null. In addition, the message body should not be empty or null. All parts of the message attribute, including name, type, and value, are included in the message size restriction, which is currently 256 KB (262,144 bytes). For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html">Using Amazon SNS Message Attributes</a>.</p>
-- @param _DataType [String] <p>Amazon SNS supports the following logical data types: String, Number, and Binary. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html#SNSMessageAttributes.DataTypes">Message Attribute Data Types</a>.</p>
-- @param _StringValue [String] <p>Strings are Unicode with UTF8 binary encoding. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p>
-- @param _BinaryValue [Binary] <p>Binary type attributes can store any binary data, for example, compressed data, encrypted data, or images.</p>
-- Required parameter: DataType
function M.MessageAttributeValue(_DataType, _StringValue, _BinaryValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MessageAttributeValue")
	local t = { 
		["DataType"] = _DataType,
		["StringValue"] = _StringValue,
		["BinaryValue"] = _BinaryValue,
	}
	asserts.AssertMessageAttributeValue(t)
	return t
end

keys.CheckIfPhoneNumberIsOptedOutResponse = { ["isOptedOut"] = true, nil }

function asserts.AssertCheckIfPhoneNumberIsOptedOutResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CheckIfPhoneNumberIsOptedOutResponse to be of type 'table'")
	if struct["isOptedOut"] then asserts.Assertboolean(struct["isOptedOut"]) end
	for k,_ in pairs(struct) do
		assert(keys.CheckIfPhoneNumberIsOptedOutResponse[k], "CheckIfPhoneNumberIsOptedOutResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CheckIfPhoneNumberIsOptedOutResponse
-- <p>The response from the <code>CheckIfPhoneNumberIsOptedOut</code> action.</p>
-- @param _isOptedOut [boolean] <p>Indicates whether the phone number is opted out:</p> <ul> <li> <p> <code>true</code> – The phone number is opted out, meaning you cannot publish SMS messages to it.</p> </li> <li> <p> <code>false</code> – The phone number is opted in, meaning you can publish SMS messages to it.</p> </li> </ul>
function M.CheckIfPhoneNumberIsOptedOutResponse(_isOptedOut, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CheckIfPhoneNumberIsOptedOutResponse")
	local t = { 
		["isOptedOut"] = _isOptedOut,
	}
	asserts.AssertCheckIfPhoneNumberIsOptedOutResponse(t)
	return t
end

keys.ListEndpointsByPlatformApplicationInput = { ["NextToken"] = true, ["PlatformApplicationArn"] = true, nil }

function asserts.AssertListEndpointsByPlatformApplicationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEndpointsByPlatformApplicationInput to be of type 'table'")
	assert(struct["PlatformApplicationArn"], "Expected key PlatformApplicationArn to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["PlatformApplicationArn"] then asserts.AssertString(struct["PlatformApplicationArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEndpointsByPlatformApplicationInput[k], "ListEndpointsByPlatformApplicationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEndpointsByPlatformApplicationInput
-- <p>Input for ListEndpointsByPlatformApplication action.</p>
-- @param _NextToken [String] <p>NextToken string is used when calling ListEndpointsByPlatformApplication action to retrieve additional records that are available after the first page results.</p>
-- @param _PlatformApplicationArn [String] <p>PlatformApplicationArn for ListEndpointsByPlatformApplicationInput action.</p>
-- Required parameter: PlatformApplicationArn
function M.ListEndpointsByPlatformApplicationInput(_NextToken, _PlatformApplicationArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEndpointsByPlatformApplicationInput")
	local t = { 
		["NextToken"] = _NextToken,
		["PlatformApplicationArn"] = _PlatformApplicationArn,
	}
	asserts.AssertListEndpointsByPlatformApplicationInput(t)
	return t
end

keys.SetSMSAttributesResponse = { nil }

function asserts.AssertSetSMSAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetSMSAttributesResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SetSMSAttributesResponse[k], "SetSMSAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetSMSAttributesResponse
-- <p>The response for the SetSMSAttributes action.</p>
function M.SetSMSAttributesResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetSMSAttributesResponse")
	local t = { 
	}
	asserts.AssertSetSMSAttributesResponse(t)
	return t
end

keys.RemovePermissionInput = { ["TopicArn"] = true, ["Label"] = true, nil }

function asserts.AssertRemovePermissionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	if struct["Label"] then asserts.Assertlabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemovePermissionInput[k], "RemovePermissionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionInput
-- <p>Input for RemovePermission action.</p>
-- @param _TopicArn [topicARN] <p>The ARN of the topic whose access control policy you wish to modify.</p>
-- @param _Label [label] <p>The unique label of the statement you want to remove.</p>
-- Required parameter: TopicArn
-- Required parameter: Label
function M.RemovePermissionInput(_TopicArn, _Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemovePermissionInput")
	local t = { 
		["TopicArn"] = _TopicArn,
		["Label"] = _Label,
	}
	asserts.AssertRemovePermissionInput(t)
	return t
end

keys.InvalidParameterException = { ["message"] = true, nil }

function asserts.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterException[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>Indicates that a request parameter does not comply with the associated constraints.</p>
-- @param _message [string] 
function M.InvalidParameterException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidParameterException(t)
	return t
end

keys.CreateTopicInput = { ["Name"] = true, nil }

function asserts.AssertCreateTopicInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTopicInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AsserttopicName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTopicInput[k], "CreateTopicInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTopicInput
-- <p>Input for CreateTopic action.</p>
-- @param _Name [topicName] <p>The name of the topic you want to create.</p> <p>Constraints: Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long.</p>
-- Required parameter: Name
function M.CreateTopicInput(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTopicInput")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertCreateTopicInput(t)
	return t
end

keys.DeleteEndpointInput = { ["EndpointArn"] = true, nil }

function asserts.AssertDeleteEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteEndpointInput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteEndpointInput[k], "DeleteEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteEndpointInput
-- <p>Input for DeleteEndpoint action.</p>
-- @param _EndpointArn [String] <p>EndpointArn of endpoint to delete.</p>
-- Required parameter: EndpointArn
function M.DeleteEndpointInput(_EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteEndpointInput")
	local t = { 
		["EndpointArn"] = _EndpointArn,
	}
	asserts.AssertDeleteEndpointInput(t)
	return t
end

keys.SetEndpointAttributesInput = { ["Attributes"] = true, ["EndpointArn"] = true, nil }

function asserts.AssertSetEndpointAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetEndpointAttributesInput to be of type 'table'")
	assert(struct["EndpointArn"], "Expected key EndpointArn to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["Attributes"] then asserts.AssertMapStringToString(struct["Attributes"]) end
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetEndpointAttributesInput[k], "SetEndpointAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetEndpointAttributesInput
-- <p>Input for SetEndpointAttributes action.</p>
-- @param _Attributes [MapStringToString] <p>A map of the endpoint attributes. Attributes in this map include the following:</p> <ul> <li> <p> <code>CustomUserData</code> -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.</p> </li> <li> <p> <code>Enabled</code> -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.</p> </li> <li> <p> <code>Token</code> -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.</p> </li> </ul>
-- @param _EndpointArn [String] <p>EndpointArn used for SetEndpointAttributes action.</p>
-- Required parameter: EndpointArn
-- Required parameter: Attributes
function M.SetEndpointAttributesInput(_Attributes, _EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetEndpointAttributesInput")
	local t = { 
		["Attributes"] = _Attributes,
		["EndpointArn"] = _EndpointArn,
	}
	asserts.AssertSetEndpointAttributesInput(t)
	return t
end

keys.Endpoint = { ["Attributes"] = true, ["EndpointArn"] = true, nil }

function asserts.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["Attributes"] then asserts.AssertMapStringToString(struct["Attributes"]) end
	if struct["EndpointArn"] then asserts.AssertString(struct["EndpointArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Endpoint[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- <p>Endpoint for mobile app and device.</p>
-- @param _Attributes [MapStringToString] <p>Attributes for endpoint.</p>
-- @param _EndpointArn [String] <p>EndpointArn for mobile app and device.</p>
function M.Endpoint(_Attributes, _EndpointArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Endpoint")
	local t = { 
		["Attributes"] = _Attributes,
		["EndpointArn"] = _EndpointArn,
	}
	asserts.AssertEndpoint(t)
	return t
end

keys.ListTopicsInput = { ["NextToken"] = true, nil }

function asserts.AssertListTopicsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTopicsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertnextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTopicsInput[k], "ListTopicsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTopicsInput
--  
-- @param _NextToken [nextToken] <p>Token returned by the previous <code>ListTopics</code> request.</p>
function M.ListTopicsInput(_NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTopicsInput")
	local t = { 
		["NextToken"] = _NextToken,
	}
	asserts.AssertListTopicsInput(t)
	return t
end

keys.ListSubscriptionsInput = { ["NextToken"] = true, nil }

function asserts.AssertListSubscriptionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSubscriptionsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertnextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSubscriptionsInput[k], "ListSubscriptionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSubscriptionsInput
-- <p>Input for ListSubscriptions action.</p>
-- @param _NextToken [nextToken] <p>Token returned by the previous <code>ListSubscriptions</code> request.</p>
function M.ListSubscriptionsInput(_NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListSubscriptionsInput")
	local t = { 
		["NextToken"] = _NextToken,
	}
	asserts.AssertListSubscriptionsInput(t)
	return t
end

keys.SubscribeResponse = { ["SubscriptionArn"] = true, nil }

function asserts.AssertSubscribeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeResponse to be of type 'table'")
	if struct["SubscriptionArn"] then asserts.AssertsubscriptionARN(struct["SubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeResponse[k], "SubscribeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeResponse
-- <p>Response for Subscribe action.</p>
-- @param _SubscriptionArn [subscriptionARN] <p>The ARN of the subscription, if the service was able to create a subscription immediately (without requiring endpoint owner confirmation).</p>
function M.SubscribeResponse(_SubscriptionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeResponse")
	local t = { 
		["SubscriptionArn"] = _SubscriptionArn,
	}
	asserts.AssertSubscribeResponse(t)
	return t
end

keys.ListPlatformApplicationsResponse = { ["NextToken"] = true, ["PlatformApplications"] = true, nil }

function asserts.AssertListPlatformApplicationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlatformApplicationsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["PlatformApplications"] then asserts.AssertListOfPlatformApplications(struct["PlatformApplications"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPlatformApplicationsResponse[k], "ListPlatformApplicationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlatformApplicationsResponse
-- <p>Response for ListPlatformApplications action.</p>
-- @param _NextToken [String] <p>NextToken string is returned when calling ListPlatformApplications action if additional records are available after the first page results.</p>
-- @param _PlatformApplications [ListOfPlatformApplications] <p>Platform applications returned when calling ListPlatformApplications action.</p>
function M.ListPlatformApplicationsResponse(_NextToken, _PlatformApplications, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPlatformApplicationsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["PlatformApplications"] = _PlatformApplications,
	}
	asserts.AssertListPlatformApplicationsResponse(t)
	return t
end

keys.GetTopicAttributesInput = { ["TopicArn"] = true, nil }

function asserts.AssertGetTopicAttributesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTopicAttributesInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTopicAttributesInput[k], "GetTopicAttributesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTopicAttributesInput
-- <p>Input for GetTopicAttributes action.</p>
-- @param _TopicArn [topicARN] <p>The ARN of the topic whose properties you want to get.</p>
-- Required parameter: TopicArn
function M.GetTopicAttributesInput(_TopicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTopicAttributesInput")
	local t = { 
		["TopicArn"] = _TopicArn,
	}
	asserts.AssertGetTopicAttributesInput(t)
	return t
end

keys.AddPermissionInput = { ["ActionName"] = true, ["AWSAccountId"] = true, ["TopicArn"] = true, ["Label"] = true, nil }

function asserts.AssertAddPermissionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddPermissionInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Label"], "Expected key Label to exist in table")
	assert(struct["AWSAccountId"], "Expected key AWSAccountId to exist in table")
	assert(struct["ActionName"], "Expected key ActionName to exist in table")
	if struct["ActionName"] then asserts.AssertActionsList(struct["ActionName"]) end
	if struct["AWSAccountId"] then asserts.AssertDelegatesList(struct["AWSAccountId"]) end
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	if struct["Label"] then asserts.Assertlabel(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddPermissionInput[k], "AddPermissionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddPermissionInput
--  
-- @param _ActionName [ActionsList] <p>The action you want to allow for the specified principal(s).</p> <p>Valid values: any Amazon SNS action name.</p>
-- @param _AWSAccountId [DelegatesList] <p>The AWS account IDs of the users (principals) who will be given access to the specified actions. The users must have AWS accounts, but do not need to be signed up for this service.</p>
-- @param _TopicArn [topicARN] <p>The ARN of the topic whose access control policy you wish to modify.</p>
-- @param _Label [label] <p>A unique identifier for the new policy statement.</p>
-- Required parameter: TopicArn
-- Required parameter: Label
-- Required parameter: AWSAccountId
-- Required parameter: ActionName
function M.AddPermissionInput(_ActionName, _AWSAccountId, _TopicArn, _Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddPermissionInput")
	local t = { 
		["ActionName"] = _ActionName,
		["AWSAccountId"] = _AWSAccountId,
		["TopicArn"] = _TopicArn,
		["Label"] = _Label,
	}
	asserts.AssertAddPermissionInput(t)
	return t
end

keys.GetPlatformApplicationAttributesResponse = { ["Attributes"] = true, nil }

function asserts.AssertGetPlatformApplicationAttributesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPlatformApplicationAttributesResponse to be of type 'table'")
	if struct["Attributes"] then asserts.AssertMapStringToString(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPlatformApplicationAttributesResponse[k], "GetPlatformApplicationAttributesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPlatformApplicationAttributesResponse
-- <p>Response for GetPlatformApplicationAttributes action.</p>
-- @param _Attributes [MapStringToString] <p>Attributes include the following:</p> <ul> <li> <p> <code>EventEndpointCreated</code> -- Topic ARN to which EndpointCreated event notifications should be sent.</p> </li> <li> <p> <code>EventEndpointDeleted</code> -- Topic ARN to which EndpointDeleted event notifications should be sent.</p> </li> <li> <p> <code>EventEndpointUpdated</code> -- Topic ARN to which EndpointUpdate event notifications should be sent.</p> </li> <li> <p> <code>EventDeliveryFailure</code> -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.</p> </li> </ul>
function M.GetPlatformApplicationAttributesResponse(_Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPlatformApplicationAttributesResponse")
	local t = { 
		["Attributes"] = _Attributes,
	}
	asserts.AssertGetPlatformApplicationAttributesResponse(t)
	return t
end

keys.PlatformApplicationDisabledException = { ["message"] = true, nil }

function asserts.AssertPlatformApplicationDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlatformApplicationDisabledException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlatformApplicationDisabledException[k], "PlatformApplicationDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlatformApplicationDisabledException
-- <p>Exception error indicating platform application disabled.</p>
-- @param _message [string] <p>Message for platform application disabled.</p>
function M.PlatformApplicationDisabledException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlatformApplicationDisabledException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertPlatformApplicationDisabledException(t)
	return t
end

function asserts.Assertprotocol(str)
	assert(str)
	assert(type(str) == "string", "Expected protocol to be of type 'string'")
end

--  
function M.protocol(str)
	asserts.Assertprotocol(str)
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

function asserts.AssertattributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected attributeName to be of type 'string'")
end

--  
function M.attributeName(str)
	asserts.AssertattributeName(str)
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

function asserts.AsserttopicName(str)
	assert(str)
	assert(type(str) == "string", "Expected topicName to be of type 'string'")
end

--  
function M.topicName(str)
	asserts.AsserttopicName(str)
	return str
end

function asserts.Asserttoken(str)
	assert(str)
	assert(type(str) == "string", "Expected token to be of type 'string'")
end

--  
function M.token(str)
	asserts.Asserttoken(str)
	return str
end

function asserts.Assertdelegate(str)
	assert(str)
	assert(type(str) == "string", "Expected delegate to be of type 'string'")
end

--  
function M.delegate(str)
	asserts.Assertdelegate(str)
	return str
end

function asserts.AssertmessageId(str)
	assert(str)
	assert(type(str) == "string", "Expected messageId to be of type 'string'")
end

--  
function M.messageId(str)
	asserts.AssertmessageId(str)
	return str
end

function asserts.Assertsubject(str)
	assert(str)
	assert(type(str) == "string", "Expected subject to be of type 'string'")
end

--  
function M.subject(str)
	asserts.Assertsubject(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.Assertlabel(str)
	assert(str)
	assert(type(str) == "string", "Expected label to be of type 'string'")
end

--  
function M.label(str)
	asserts.Assertlabel(str)
	return str
end

function asserts.Assertaction(str)
	assert(str)
	assert(type(str) == "string", "Expected action to be of type 'string'")
end

--  
function M.action(str)
	asserts.Assertaction(str)
	return str
end

function asserts.AsserttopicARN(str)
	assert(str)
	assert(type(str) == "string", "Expected topicARN to be of type 'string'")
end

--  
function M.topicARN(str)
	asserts.AsserttopicARN(str)
	return str
end

function asserts.Assertmessage(str)
	assert(str)
	assert(type(str) == "string", "Expected message to be of type 'string'")
end

--  
function M.message(str)
	asserts.Assertmessage(str)
	return str
end

function asserts.Assertaccount(str)
	assert(str)
	assert(type(str) == "string", "Expected account to be of type 'string'")
end

--  
function M.account(str)
	asserts.Assertaccount(str)
	return str
end

function asserts.Assertendpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected endpoint to be of type 'string'")
end

--  
function M.endpoint(str)
	asserts.Assertendpoint(str)
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

function asserts.AssertauthenticateOnUnsubscribe(str)
	assert(str)
	assert(type(str) == "string", "Expected authenticateOnUnsubscribe to be of type 'string'")
end

--  
function M.authenticateOnUnsubscribe(str)
	asserts.AssertauthenticateOnUnsubscribe(str)
	return str
end

function asserts.AssertsubscriptionARN(str)
	assert(str)
	assert(type(str) == "string", "Expected subscriptionARN to be of type 'string'")
end

--  
function M.subscriptionARN(str)
	asserts.AssertsubscriptionARN(str)
	return str
end

function asserts.AssertattributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected attributeValue to be of type 'string'")
end

--  
function M.attributeValue(str)
	asserts.AssertattributeValue(str)
	return str
end

function asserts.AssertmessageStructure(str)
	assert(str)
	assert(type(str) == "string", "Expected messageStructure to be of type 'string'")
end

--  
function M.messageStructure(str)
	asserts.AssertmessageStructure(str)
	return str
end

function asserts.Assertboolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected boolean to be of type 'boolean'")
end

function M.boolean(boolean)
	asserts.Assertboolean(boolean)
	return boolean
end

function asserts.AssertSubscriptionAttributesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected SubscriptionAttributesMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertattributeName(k)
		asserts.AssertattributeValue(v)
	end
end

function M.SubscriptionAttributesMap(map)
	asserts.AssertSubscriptionAttributesMap(map)
	return map
end

function asserts.AssertMessageAttributeMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MessageAttributeMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertMessageAttributeValue(v)
	end
end

function M.MessageAttributeMap(map)
	asserts.AssertMessageAttributeMap(map)
	return map
end

function asserts.AssertMapStringToString(map)
	assert(map)
	assert(type(map) == "table", "Expected MapStringToString to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.MapStringToString(map)
	asserts.AssertMapStringToString(map)
	return map
end

function asserts.AssertTopicAttributesMap(map)
	assert(map)
	assert(type(map) == "table", "Expected TopicAttributesMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertattributeName(k)
		asserts.AssertattributeValue(v)
	end
end

function M.TopicAttributesMap(map)
	asserts.AssertTopicAttributesMap(map)
	return map
end

function asserts.AssertBinary(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Binary to be of type 'string'")
end

function M.Binary(blob)
	asserts.AssertBinary(blob)
	return blob
end

function asserts.AssertSubscriptionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscriptionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubscription(v)
	end
end

--  
-- List of Subscription objects
function M.SubscriptionsList(list)
	asserts.AssertSubscriptionsList(list)
	return list
end

function asserts.AssertActionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertaction(v)
	end
end

--  
-- List of action objects
function M.ActionsList(list)
	asserts.AssertActionsList(list)
	return list
end

function asserts.AssertTopicsList(list)
	assert(list)
	assert(type(list) == "table", "Expected TopicsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTopic(v)
	end
end

--  
-- List of Topic objects
function M.TopicsList(list)
	asserts.AssertTopicsList(list)
	return list
end

function asserts.AssertDelegatesList(list)
	assert(list)
	assert(type(list) == "table", "Expected DelegatesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assertdelegate(v)
	end
end

--  
-- List of delegate objects
function M.DelegatesList(list)
	asserts.AssertDelegatesList(list)
	return list
end

function asserts.AssertPhoneNumberList(list)
	assert(list)
	assert(type(list) == "table", "Expected PhoneNumberList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPhoneNumber(v)
	end
end

--  
-- List of PhoneNumber objects
function M.PhoneNumberList(list)
	asserts.AssertPhoneNumberList(list)
	return list
end

function asserts.AssertListOfPlatformApplications(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfPlatformApplications to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlatformApplication(v)
	end
end

--  
-- List of PlatformApplication objects
function M.ListOfPlatformApplications(list)
	asserts.AssertListOfPlatformApplications(list)
	return list
end

function asserts.AssertListString(list)
	assert(list)
	assert(type(list) == "table", "Expected ListString to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ListString(list)
	asserts.AssertListString(list)
	return list
end

function asserts.AssertListOfEndpoints(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfEndpoints to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpoint(v)
	end
end

--  
-- List of Endpoint objects
function M.ListOfEndpoints(list)
	asserts.AssertListOfEndpoints(list)
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
--- Call ListPlatformApplications asynchronously, invoking a callback when done
-- @param ListPlatformApplicationsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPlatformApplicationsAsync(ListPlatformApplicationsInput, cb)
	assert(ListPlatformApplicationsInput, "You must provide a ListPlatformApplicationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPlatformApplications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPlatformApplicationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPlatformApplications synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPlatformApplicationsInput
-- @return response
-- @return error_message
function M.ListPlatformApplicationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPlatformApplicationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetPlatformApplicationAttributes asynchronously, invoking a callback when done
-- @param SetPlatformApplicationAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetPlatformApplicationAttributesAsync(SetPlatformApplicationAttributesInput, cb)
	assert(SetPlatformApplicationAttributesInput, "You must provide a SetPlatformApplicationAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetPlatformApplicationAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetPlatformApplicationAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetPlatformApplicationAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetPlatformApplicationAttributesInput
-- @return response
-- @return error_message
function M.SetPlatformApplicationAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetPlatformApplicationAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSubscriptionsByTopic asynchronously, invoking a callback when done
-- @param ListSubscriptionsByTopicInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListSubscriptionsByTopicAsync(ListSubscriptionsByTopicInput, cb)
	assert(ListSubscriptionsByTopicInput, "You must provide a ListSubscriptionsByTopicInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSubscriptionsByTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSubscriptionsByTopicInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSubscriptionsByTopic synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSubscriptionsByTopicInput
-- @return response
-- @return error_message
function M.ListSubscriptionsByTopicSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscriptionsByTopicAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSubscriptions asynchronously, invoking a callback when done
-- @param ListSubscriptionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListSubscriptionsAsync(ListSubscriptionsInput, cb)
	assert(ListSubscriptionsInput, "You must provide a ListSubscriptionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSubscriptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListSubscriptionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSubscriptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSubscriptionsInput
-- @return response
-- @return error_message
function M.ListSubscriptionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscriptionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPhoneNumbersOptedOut asynchronously, invoking a callback when done
-- @param ListPhoneNumbersOptedOutInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListPhoneNumbersOptedOutAsync(ListPhoneNumbersOptedOutInput, cb)
	assert(ListPhoneNumbersOptedOutInput, "You must provide a ListPhoneNumbersOptedOutInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPhoneNumbersOptedOut",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPhoneNumbersOptedOutInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPhoneNumbersOptedOut synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPhoneNumbersOptedOutInput
-- @return response
-- @return error_message
function M.ListPhoneNumbersOptedOutSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPhoneNumbersOptedOutAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmSubscription asynchronously, invoking a callback when done
-- @param ConfirmSubscriptionInput
-- @param cb Callback function accepting two args: response, error_message
function M.ConfirmSubscriptionAsync(ConfirmSubscriptionInput, cb)
	assert(ConfirmSubscriptionInput, "You must provide a ConfirmSubscriptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ConfirmSubscription",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ConfirmSubscriptionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ConfirmSubscription synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ConfirmSubscriptionInput
-- @return response
-- @return error_message
function M.ConfirmSubscriptionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmSubscriptionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTopicAttributes asynchronously, invoking a callback when done
-- @param SetTopicAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetTopicAttributesAsync(SetTopicAttributesInput, cb)
	assert(SetTopicAttributesInput, "You must provide a SetTopicAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetTopicAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetTopicAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetTopicAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetTopicAttributesInput
-- @return response
-- @return error_message
function M.SetTopicAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTopicAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetEndpointAttributes asynchronously, invoking a callback when done
-- @param SetEndpointAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetEndpointAttributesAsync(SetEndpointAttributesInput, cb)
	assert(SetEndpointAttributesInput, "You must provide a SetEndpointAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetEndpointAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetEndpointAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetEndpointAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetEndpointAttributesInput
-- @return response
-- @return error_message
function M.SetEndpointAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetEndpointAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CheckIfPhoneNumberIsOptedOut asynchronously, invoking a callback when done
-- @param CheckIfPhoneNumberIsOptedOutInput
-- @param cb Callback function accepting two args: response, error_message
function M.CheckIfPhoneNumberIsOptedOutAsync(CheckIfPhoneNumberIsOptedOutInput, cb)
	assert(CheckIfPhoneNumberIsOptedOutInput, "You must provide a CheckIfPhoneNumberIsOptedOutInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CheckIfPhoneNumberIsOptedOut",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CheckIfPhoneNumberIsOptedOutInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CheckIfPhoneNumberIsOptedOut synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CheckIfPhoneNumberIsOptedOutInput
-- @return response
-- @return error_message
function M.CheckIfPhoneNumberIsOptedOutSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CheckIfPhoneNumberIsOptedOutAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddPermission asynchronously, invoking a callback when done
-- @param AddPermissionInput
-- @param cb Callback function accepting two args: response, error_message
function M.AddPermissionAsync(AddPermissionInput, cb)
	assert(AddPermissionInput, "You must provide a AddPermissionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddPermissionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddPermissionInput
-- @return response
-- @return error_message
function M.AddPermissionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddPermissionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call Unsubscribe asynchronously, invoking a callback when done
-- @param UnsubscribeInput
-- @param cb Callback function accepting two args: response, error_message
function M.UnsubscribeAsync(UnsubscribeInput, cb)
	assert(UnsubscribeInput, "You must provide a UnsubscribeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Unsubscribe",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UnsubscribeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Unsubscribe synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnsubscribeInput
-- @return response
-- @return error_message
function M.UnsubscribeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnsubscribeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSubscriptionAttributes asynchronously, invoking a callback when done
-- @param GetSubscriptionAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetSubscriptionAttributesAsync(GetSubscriptionAttributesInput, cb)
	assert(GetSubscriptionAttributesInput, "You must provide a GetSubscriptionAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSubscriptionAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSubscriptionAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSubscriptionAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSubscriptionAttributesInput
-- @return response
-- @return error_message
function M.GetSubscriptionAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSubscriptionAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePlatformEndpoint asynchronously, invoking a callback when done
-- @param CreatePlatformEndpointInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePlatformEndpointAsync(CreatePlatformEndpointInput, cb)
	assert(CreatePlatformEndpointInput, "You must provide a CreatePlatformEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePlatformEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePlatformEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePlatformEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePlatformEndpointInput
-- @return response
-- @return error_message
function M.CreatePlatformEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePlatformEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemovePermission asynchronously, invoking a callback when done
-- @param RemovePermissionInput
-- @param cb Callback function accepting two args: response, error_message
function M.RemovePermissionAsync(RemovePermissionInput, cb)
	assert(RemovePermissionInput, "You must provide a RemovePermissionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RemovePermissionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemovePermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemovePermissionInput
-- @return response
-- @return error_message
function M.RemovePermissionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemovePermissionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTopic asynchronously, invoking a callback when done
-- @param CreateTopicInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTopicAsync(CreateTopicInput, cb)
	assert(CreateTopicInput, "You must provide a CreateTopicInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTopicInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTopic synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTopicInput
-- @return response
-- @return error_message
function M.CreateTopicSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTopicAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetSubscriptionAttributes asynchronously, invoking a callback when done
-- @param SetSubscriptionAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetSubscriptionAttributesAsync(SetSubscriptionAttributesInput, cb)
	assert(SetSubscriptionAttributesInput, "You must provide a SetSubscriptionAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetSubscriptionAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetSubscriptionAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetSubscriptionAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetSubscriptionAttributesInput
-- @return response
-- @return error_message
function M.SetSubscriptionAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetSubscriptionAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePlatformApplication asynchronously, invoking a callback when done
-- @param CreatePlatformApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePlatformApplicationAsync(CreatePlatformApplicationInput, cb)
	assert(CreatePlatformApplicationInput, "You must provide a CreatePlatformApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePlatformApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePlatformApplicationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePlatformApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePlatformApplicationInput
-- @return response
-- @return error_message
function M.CreatePlatformApplicationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePlatformApplicationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPlatformApplicationAttributes asynchronously, invoking a callback when done
-- @param GetPlatformApplicationAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetPlatformApplicationAttributesAsync(GetPlatformApplicationAttributesInput, cb)
	assert(GetPlatformApplicationAttributesInput, "You must provide a GetPlatformApplicationAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPlatformApplicationAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPlatformApplicationAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPlatformApplicationAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPlatformApplicationAttributesInput
-- @return response
-- @return error_message
function M.GetPlatformApplicationAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPlatformApplicationAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSMSAttributes asynchronously, invoking a callback when done
-- @param GetSMSAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetSMSAttributesAsync(GetSMSAttributesInput, cb)
	assert(GetSMSAttributesInput, "You must provide a GetSMSAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSMSAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSMSAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSMSAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSMSAttributesInput
-- @return response
-- @return error_message
function M.GetSMSAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSMSAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call Publish asynchronously, invoking a callback when done
-- @param PublishInput
-- @param cb Callback function accepting two args: response, error_message
function M.PublishAsync(PublishInput, cb)
	assert(PublishInput, "You must provide a PublishInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Publish",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PublishInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Publish synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PublishInput
-- @return response
-- @return error_message
function M.PublishSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PublishAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetSMSAttributes asynchronously, invoking a callback when done
-- @param SetSMSAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetSMSAttributesAsync(SetSMSAttributesInput, cb)
	assert(SetSMSAttributesInput, "You must provide a SetSMSAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetSMSAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetSMSAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetSMSAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetSMSAttributesInput
-- @return response
-- @return error_message
function M.SetSMSAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetSMSAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListEndpointsByPlatformApplication asynchronously, invoking a callback when done
-- @param ListEndpointsByPlatformApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListEndpointsByPlatformApplicationAsync(ListEndpointsByPlatformApplicationInput, cb)
	assert(ListEndpointsByPlatformApplicationInput, "You must provide a ListEndpointsByPlatformApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListEndpointsByPlatformApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListEndpointsByPlatformApplicationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEndpointsByPlatformApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEndpointsByPlatformApplicationInput
-- @return response
-- @return error_message
function M.ListEndpointsByPlatformApplicationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEndpointsByPlatformApplicationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEndpointAttributes asynchronously, invoking a callback when done
-- @param GetEndpointAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetEndpointAttributesAsync(GetEndpointAttributesInput, cb)
	assert(GetEndpointAttributesInput, "You must provide a GetEndpointAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetEndpointAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetEndpointAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetEndpointAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEndpointAttributesInput
-- @return response
-- @return error_message
function M.GetEndpointAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEndpointAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEndpoint asynchronously, invoking a callback when done
-- @param DeleteEndpointInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteEndpointAsync(DeleteEndpointInput, cb)
	assert(DeleteEndpointInput, "You must provide a DeleteEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEndpoint",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteEndpointInput
-- @return response
-- @return error_message
function M.DeleteEndpointSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEndpointAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePlatformApplication asynchronously, invoking a callback when done
-- @param DeletePlatformApplicationInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePlatformApplicationAsync(DeletePlatformApplicationInput, cb)
	assert(DeletePlatformApplicationInput, "You must provide a DeletePlatformApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePlatformApplication",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePlatformApplicationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePlatformApplication synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePlatformApplicationInput
-- @return response
-- @return error_message
function M.DeletePlatformApplicationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePlatformApplicationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTopicAttributes asynchronously, invoking a callback when done
-- @param GetTopicAttributesInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetTopicAttributesAsync(GetTopicAttributesInput, cb)
	assert(GetTopicAttributesInput, "You must provide a GetTopicAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTopicAttributes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTopicAttributesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTopicAttributes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTopicAttributesInput
-- @return response
-- @return error_message
function M.GetTopicAttributesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTopicAttributesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call Subscribe asynchronously, invoking a callback when done
-- @param SubscribeInput
-- @param cb Callback function accepting two args: response, error_message
function M.SubscribeAsync(SubscribeInput, cb)
	assert(SubscribeInput, "You must provide a SubscribeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Subscribe",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SubscribeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Subscribe synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SubscribeInput
-- @return response
-- @return error_message
function M.SubscribeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SubscribeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTopic asynchronously, invoking a callback when done
-- @param DeleteTopicInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTopicAsync(DeleteTopicInput, cb)
	assert(DeleteTopicInput, "You must provide a DeleteTopicInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTopic",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTopicInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTopic synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTopicInput
-- @return response
-- @return error_message
function M.DeleteTopicSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTopicAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call OptInPhoneNumber asynchronously, invoking a callback when done
-- @param OptInPhoneNumberInput
-- @param cb Callback function accepting two args: response, error_message
function M.OptInPhoneNumberAsync(OptInPhoneNumberInput, cb)
	assert(OptInPhoneNumberInput, "You must provide a OptInPhoneNumberInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".OptInPhoneNumber",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", OptInPhoneNumberInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call OptInPhoneNumber synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param OptInPhoneNumberInput
-- @return response
-- @return error_message
function M.OptInPhoneNumberSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.OptInPhoneNumberAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTopics asynchronously, invoking a callback when done
-- @param ListTopicsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListTopicsAsync(ListTopicsInput, cb)
	assert(ListTopicsInput, "You must provide a ListTopicsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTopics",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTopicsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTopics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTopicsInput
-- @return response
-- @return error_message
function M.ListTopicsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTopicsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
