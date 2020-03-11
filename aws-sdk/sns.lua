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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] 
-- @return SubscriptionLimitExceededException structure as a key-value pair table
function M.SubscriptionLimitExceededException(args)
	assert(args, "You must provide an argument table when creating SubscriptionLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertSubscriptionLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * phoneNumber [PhoneNumber] <p>The phone number for which you want to check the opt out status.</p>
-- Required key: phoneNumber
-- @return CheckIfPhoneNumberIsOptedOutInput structure as a key-value pair table
function M.CheckIfPhoneNumberIsOptedOutInput(args)
	assert(args, "You must provide an argument table when creating CheckIfPhoneNumberIsOptedOutInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["phoneNumber"] = args["phoneNumber"],
	}
	asserts.AssertCheckIfPhoneNumberIsOptedOutInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [MapStringToString] <p>Attributes include the following:</p> <ul> <li> <p> <code>CustomUserData</code> -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.</p> </li> <li> <p> <code>Enabled</code> -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.</p> </li> <li> <p> <code>Token</code> -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.</p> </li> </ul>
-- @return GetEndpointAttributesResponse structure as a key-value pair table
function M.GetEndpointAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetEndpointAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertGetEndpointAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [String] <p>EndpointArn for GetEndpointAttributes input.</p>
-- Required key: EndpointArn
-- @return GetEndpointAttributesInput structure as a key-value pair table
function M.GetEndpointAttributesInput(args)
	assert(args, "You must provide an argument table when creating GetEndpointAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertGetEndpointAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [attributeName] <p>The name of the attribute you want to set. Only a subset of the topic's attributes are mutable.</p> <p>Valid values: <code>Policy</code> | <code>DisplayName</code> | <code>DeliveryPolicy</code> </p>
-- * AttributeValue [attributeValue] <p>The new value for the attribute.</p>
-- * TopicArn [topicARN] <p>The ARN of the topic to modify.</p>
-- Required key: TopicArn
-- Required key: AttributeName
-- @return SetTopicAttributesInput structure as a key-value pair table
function M.SetTopicAttributesInput(args)
	assert(args, "You must provide an argument table when creating SetTopicAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AttributeValue"] = args["AttributeValue"],
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertSetTopicAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Platform [String] <p>The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push Notification Service), APNS_SANDBOX, and GCM (Google Cloud Messaging).</p>
-- * Name [String] <p>Application names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters long.</p>
-- * Attributes [MapStringToString] <p>For a list of attributes, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html">SetPlatformApplicationAttributes</a> </p>
-- Required key: Name
-- Required key: Platform
-- Required key: Attributes
-- @return CreatePlatformApplicationInput structure as a key-value pair table
function M.CreatePlatformApplicationInput(args)
	assert(args, "You must provide an argument table when creating CreatePlatformApplicationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Platform"] = args["Platform"],
		["Name"] = args["Name"],
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertCreatePlatformApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [MapStringToString] <p>For a list of attributes, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html">SetEndpointAttributes</a>.</p>
-- * Token [String] <p>Unique identifier created by the notification service for an app on a device. The specific name for Token will vary, depending on which notification service is being used. For example, when using APNS as the notification service, you need the device token. Alternatively, when using GCM or ADM, the device token equivalent is called the registration ID.</p>
-- * PlatformApplicationArn [String] <p>PlatformApplicationArn returned from CreatePlatformApplication is used to create a an endpoint.</p>
-- * CustomUserData [String] <p>Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.</p>
-- Required key: PlatformApplicationArn
-- Required key: Token
-- @return CreatePlatformEndpointInput structure as a key-value pair table
function M.CreatePlatformEndpointInput(args)
	assert(args, "You must provide an argument table when creating CreatePlatformEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Token"] = args["Token"],
		["PlatformApplicationArn"] = args["PlatformApplicationArn"],
		["CustomUserData"] = args["CustomUserData"],
	}
	asserts.AssertCreatePlatformEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Token [token] <p>Short-lived token sent to an endpoint during the <code>Subscribe</code> action.</p>
-- * AuthenticateOnUnsubscribe [authenticateOnUnsubscribe] <p>Disallows unauthenticated unsubscribes of the subscription. If the value of this parameter is <code>true</code> and the request has an AWS signature, then only the topic owner and the subscription owner can unsubscribe the endpoint. The unsubscribe action requires AWS authentication. </p>
-- * TopicArn [topicARN] <p>The ARN of the topic for which you wish to confirm a subscription.</p>
-- Required key: TopicArn
-- Required key: Token
-- @return ConfirmSubscriptionInput structure as a key-value pair table
function M.ConfirmSubscriptionInput(args)
	assert(args, "You must provide an argument table when creating ConfirmSubscriptionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Token"] = args["Token"],
		["AuthenticateOnUnsubscribe"] = args["AuthenticateOnUnsubscribe"],
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertConfirmSubscriptionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [nextToken] <p>Token returned by the previous <code>ListSubscriptionsByTopic</code> request.</p>
-- * TopicArn [topicARN] <p>The ARN of the topic for which you wish to find subscriptions.</p>
-- Required key: TopicArn
-- @return ListSubscriptionsByTopicInput structure as a key-value pair table
function M.ListSubscriptionsByTopicInput(args)
	assert(args, "You must provide an argument table when creating ListSubscriptionsByTopicInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertListSubscriptionsByTopicInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [MapStringToString] <p>Attributes for platform application object.</p>
-- * PlatformApplicationArn [String] <p>PlatformApplicationArn for platform application object.</p>
-- @return PlatformApplication structure as a key-value pair table
function M.PlatformApplication(args)
	assert(args, "You must provide an argument table when creating PlatformApplication")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["PlatformApplicationArn"] = args["PlatformApplicationArn"],
	}
	asserts.AssertPlatformApplication(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Message for endpoint disabled.</p>
-- @return EndpointDisabledException structure as a key-value pair table
function M.EndpointDisabledException(args)
	assert(args, "You must provide an argument table when creating EndpointDisabledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertEndpointDisabledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [MapStringToString] <p>The SMS attribute names and their values.</p>
-- @return GetSMSAttributesResponse structure as a key-value pair table
function M.GetSMSAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetSMSAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
	}
	asserts.AssertGetSMSAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicArn [topicARN] <p>The topic's ARN.</p>
-- @return Topic structure as a key-value pair table
function M.Topic(args)
	assert(args, "You must provide an argument table when creating Topic")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertTopic(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [string] <p>A <code>NextToken</code> string is used when you call the <code>ListPhoneNumbersOptedOut</code> action to retrieve additional records that are available after the first page of results.</p>
-- @return ListPhoneNumbersOptedOutInput structure as a key-value pair table
function M.ListPhoneNumbersOptedOutInput(args)
	assert(args, "You must provide an argument table when creating ListPhoneNumbersOptedOutInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListPhoneNumbersOptedOutInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Owner [account] <p>The subscription's owner.</p>
-- * Endpoint [endpoint] <p>The subscription's endpoint (format depends on the protocol).</p>
-- * Protocol [protocol] <p>The subscription's protocol.</p>
-- * TopicArn [topicARN] <p>The ARN of the subscription's topic.</p>
-- * SubscriptionArn [subscriptionARN] <p>The subscription's ARN.</p>
-- @return Subscription structure as a key-value pair table
function M.Subscription(args)
	assert(args, "You must provide an argument table when creating Subscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Owner"] = args["Owner"],
		["Endpoint"] = args["Endpoint"],
		["Protocol"] = args["Protocol"],
		["TopicArn"] = args["TopicArn"],
		["SubscriptionArn"] = args["SubscriptionArn"],
	}
	asserts.AssertSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [nextToken] <p>Token to pass along to the next <code>ListSubscriptions</code> request. This element is returned if there are more subscriptions to retrieve.</p>
-- * Subscriptions [SubscriptionsList] <p>A list of subscriptions.</p>
-- @return ListSubscriptionsResponse structure as a key-value pair table
function M.ListSubscriptionsResponse(args)
	assert(args, "You must provide an argument table when creating ListSubscriptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Subscriptions"] = args["Subscriptions"],
	}
	asserts.AssertListSubscriptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Topics [TopicsList] <p>A list of topic ARNs.</p>
-- * NextToken [nextToken] <p>Token to pass along to the next <code>ListTopics</code> request. This element is returned if there are additional topics to retrieve.</p>
-- @return ListTopicsResponse structure as a key-value pair table
function M.ListTopicsResponse(args)
	assert(args, "You must provide an argument table when creating ListTopicsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Topics"] = args["Topics"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTopicsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * phoneNumber [PhoneNumber] <p>The phone number to opt in.</p>
-- Required key: phoneNumber
-- @return OptInPhoneNumberInput structure as a key-value pair table
function M.OptInPhoneNumberInput(args)
	assert(args, "You must provide an argument table when creating OptInPhoneNumberInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["phoneNumber"] = args["phoneNumber"],
	}
	asserts.AssertOptInPhoneNumberInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>NextToken string is used when calling ListPlatformApplications action to retrieve additional records that are available after the first page results.</p>
-- @return ListPlatformApplicationsInput structure as a key-value pair table
function M.ListPlatformApplicationsInput(args)
	assert(args, "You must provide an argument table when creating ListPlatformApplicationsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListPlatformApplicationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FilterPolicyLimitExceededException = { ["message"] = true, nil }

function asserts.AssertFilterPolicyLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilterPolicyLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.Assertstring(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.FilterPolicyLimitExceededException[k], "FilterPolicyLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilterPolicyLimitExceededException
-- <p>Indicates that the number of filter polices in your AWS account exceeds the limit. To add more filter polices, submit an SNS Limit Increase case in the AWS Support Center.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] 
-- @return FilterPolicyLimitExceededException structure as a key-value pair table
function M.FilterPolicyLimitExceededException(args)
	assert(args, "You must provide an argument table when creating FilterPolicyLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertFilterPolicyLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionArn [subscriptionARN] <p>The ARN of the subscription whose properties you want to get.</p>
-- Required key: SubscriptionArn
-- @return GetSubscriptionAttributesInput structure as a key-value pair table
function M.GetSubscriptionAttributesInput(args)
	assert(args, "You must provide an argument table when creating GetSubscriptionAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionArn"] = args["SubscriptionArn"],
	}
	asserts.AssertGetSubscriptionAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [String] <p>EndpointArn returned from CreateEndpoint action.</p>
-- @return CreateEndpointResponse structure as a key-value pair table
function M.CreateEndpointResponse(args)
	assert(args, "You must provide an argument table when creating CreateEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertCreateEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] 
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
		["message"] = args["message"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformApplicationArn [String] <p>PlatformApplicationArn for GetPlatformApplicationAttributesInput.</p>
-- Required key: PlatformApplicationArn
-- @return GetPlatformApplicationAttributesInput structure as a key-value pair table
function M.GetPlatformApplicationAttributesInput(args)
	assert(args, "You must provide an argument table when creating GetPlatformApplicationAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformApplicationArn"] = args["PlatformApplicationArn"],
	}
	asserts.AssertGetPlatformApplicationAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [ListString] <p>A list of the individual attribute names, such as <code>MonthlySpendLimit</code>, for which you want values.</p> <p>For all attribute names, see <a href="http://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html">SetSMSAttributes</a>.</p> <p>If you don't use this parameter, Amazon SNS returns all SMS attributes.</p>
-- @return GetSMSAttributesInput structure as a key-value pair table
function M.GetSMSAttributesInput(args)
	assert(args, "You must provide an argument table when creating GetSMSAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
	}
	asserts.AssertGetSMSAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionArn [subscriptionARN] <p>The ARN of the created subscription.</p>
-- @return ConfirmSubscriptionResponse structure as a key-value pair table
function M.ConfirmSubscriptionResponse(args)
	assert(args, "You must provide an argument table when creating ConfirmSubscriptionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionArn"] = args["SubscriptionArn"],
	}
	asserts.AssertConfirmSubscriptionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicArn [topicARN] <p>The ARN of the topic you want to delete.</p>
-- Required key: TopicArn
-- @return DeleteTopicInput structure as a key-value pair table
function M.DeleteTopicInput(args)
	assert(args, "You must provide an argument table when creating DeleteTopicInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertDeleteTopicInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] 
-- @return TopicLimitExceededException structure as a key-value pair table
function M.TopicLimitExceededException(args)
	assert(args, "You must provide an argument table when creating TopicLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTopicLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [MapStringToString] <p>The default settings for sending SMS messages from your account. You can set values for the following attribute names:</p> <p> <code>MonthlySpendLimit</code> – The maximum amount in USD that you are willing to spend each month to send SMS messages. When Amazon SNS determines that sending an SMS message would incur a cost that exceeds this limit, it stops sending SMS messages within minutes.</p> <important> <p>Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During that interval, if you continue to send SMS messages, you will incur costs that exceed your limit.</p> </important> <p>By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to raise the limit, submit an <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&amp;limitType=service-code-sns">SNS Limit Increase case</a>. For <b>New limit value</b>, enter your desired monthly spend limit. In the <b>Use Case Description</b> field, explain that you are requesting an SMS monthly spend limit increase.</p> <p> <code>DeliveryStatusIAMRole</code> – The ARN of the IAM role that allows Amazon SNS to write logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS writes a log that includes the message price, the success or failure status, the reason for failure (if the message failed), the message dwell time, and other information.</p> <p> <code>DeliveryStatusSuccessSamplingRate</code> – The percentage of successful SMS deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an integer from 0 - 100. For example, to write logs only for failed deliveries, set this value to <code>0</code>. To write logs for 10% of your successful deliveries, set it to <code>10</code>.</p> <p> <code>DefaultSenderID</code> – A string, such as your business brand, that is displayed as the sender on the receiving device. Support for sender IDs varies by country. The sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one letter.</p> <p> <code>DefaultSMSType</code> – The type of SMS message that you will send by default. You can assign the following values:</p> <ul> <li> <p> <code>Promotional</code> – (Default) Noncritical messages, such as marketing messages. Amazon SNS optimizes the message delivery to incur the lowest cost.</p> </li> <li> <p> <code>Transactional</code> – Critical messages that support customer transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS optimizes the message delivery to achieve the highest reliability.</p> </li> </ul> <p> <code>UsageReportS3Bucket</code> – The name of the Amazon S3 bucket to receive daily SMS usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to the bucket. The report includes the following information for each SMS message that was successfully delivered by your account:</p> <ul> <li> <p>Time that the message was published (in UTC)</p> </li> <li> <p>Message ID</p> </li> <li> <p>Destination phone number</p> </li> <li> <p>Message type</p> </li> <li> <p>Delivery status</p> </li> <li> <p>Message price (in USD)</p> </li> <li> <p>Part number (a message is split into multiple parts if it is too long for a single message)</p> </li> <li> <p>Total number of parts</p> </li> </ul> <p>To receive the report, the bucket must have a policy that allows the Amazon SNS service principle to perform the <code>s3:PutObject</code> and <code>s3:GetBucketLocation</code> actions.</p> <p>For an example bucket policy and usage report, see <a href="http://docs.aws.amazon.com/sns/latest/dg/sms_stats.html">Monitoring SMS Activity</a> in the <i>Amazon SNS Developer Guide</i>.</p>
-- Required key: attributes
-- @return SetSMSAttributesInput structure as a key-value pair table
function M.SetSMSAttributesInput(args)
	assert(args, "You must provide an argument table when creating SetSMSAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
	}
	asserts.AssertSetSMSAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Throttled request.</p>
-- @return ThrottledException structure as a key-value pair table
function M.ThrottledException(args)
	assert(args, "You must provide an argument table when creating ThrottledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertThrottledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OptInPhoneNumberResponse structure as a key-value pair table
function M.OptInPhoneNumberResponse(args)
	assert(args, "You must provide an argument table when creating OptInPhoneNumberResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOptInPhoneNumberResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [nextToken] <p>Token to pass along to the next <code>ListSubscriptionsByTopic</code> request. This element is returned if there are more subscriptions to retrieve.</p>
-- * Subscriptions [SubscriptionsList] <p>A list of subscriptions.</p>
-- @return ListSubscriptionsByTopicResponse structure as a key-value pair table
function M.ListSubscriptionsByTopicResponse(args)
	assert(args, "You must provide an argument table when creating ListSubscriptionsByTopicResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Subscriptions"] = args["Subscriptions"],
	}
	asserts.AssertListSubscriptionsByTopicResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageStructure [messageStructure] <p>Set <code>MessageStructure</code> to <code>json</code> if you want to send a different message for each protocol. For example, using one publish action, you can send a short message to your SMS subscribers and a longer message to your email subscribers. If you set <code>MessageStructure</code> to <code>json</code>, the value of the <code>Message</code> parameter must: </p> <ul> <li> <p>be a syntactically valid JSON object; and</p> </li> <li> <p>contain at least a top-level JSON key of "default" with a value that is a string.</p> </li> </ul> <p>You can define other top-level keys that define the message you want to send to a specific transport protocol (e.g., "http").</p> <p>For information about sending different messages for each protocol using the AWS Management Console, go to <a href="http://docs.aws.amazon.com/sns/latest/gsg/Publish.html#sns-message-formatting-by-protocol">Create Different Messages for Each Protocol</a> in the <i>Amazon Simple Notification Service Getting Started Guide</i>. </p> <p>Valid value: <code>json</code> </p>
-- * PhoneNumber [String] <p>The phone number to which you want to deliver an SMS message. Use E.164 format.</p> <p>If you don't specify a value for the <code>PhoneNumber</code> parameter, you must specify a value for the <code>TargetArn</code> or <code>TopicArn</code> parameters.</p>
-- * TargetArn [String] <p>Either TopicArn or EndpointArn, but not both.</p> <p>If you don't specify a value for the <code>TargetArn</code> parameter, you must specify a value for the <code>PhoneNumber</code> or <code>TopicArn</code> parameters.</p>
-- * Message [message] <p>The message you want to send.</p> <p>If you are publishing to a topic and you want to send the same message to all transport protocols, include the text of the message as a String value. If you want to send different messages for each transport protocol, set the value of the <code>MessageStructure</code> parameter to <code>json</code> and use a JSON object for the <code>Message</code> parameter. </p> <p/> <p>Constraints:</p> <ul> <li> <p>With the exception of SMS, messages must be UTF-8 encoded strings and at most 256 KB in size (262144 bytes, not 262144 characters).</p> </li> <li> <p>For SMS, each message can contain up to 140 bytes, and the character limit depends on the encoding scheme. For example, an SMS message can contain 160 GSM characters, 140 ASCII characters, or 70 UCS-2 characters. If you publish a message that exceeds the size limit, Amazon SNS sends it as multiple messages, each fitting within the size limit. Messages are not cut off in the middle of a word but on whole-word boundaries. The total size limit for a single SMS publish action is 1600 bytes.</p> </li> </ul> <p>JSON-specific constraints:</p> <ul> <li> <p>Keys in the JSON object that correspond to supported transport protocols must have simple JSON string values.</p> </li> <li> <p>The values will be parsed (unescaped) before they are used in outgoing messages.</p> </li> <li> <p>Outbound notifications are JSON encoded (meaning that the characters will be reescaped for sending).</p> </li> <li> <p>Values have a minimum length of 0 (the empty string, "", is allowed).</p> </li> <li> <p>Values have a maximum length bounded by the overall message size (so, including multiple protocols may limit message sizes).</p> </li> <li> <p>Non-string values will cause the key to be ignored.</p> </li> <li> <p>Keys that do not correspond to supported transport protocols are ignored.</p> </li> <li> <p>Duplicate keys are not allowed.</p> </li> <li> <p>Failure to parse or validate any key or value in the message will cause the <code>Publish</code> call to return an error (no partial delivery).</p> </li> </ul>
-- * MessageAttributes [MessageAttributeMap] <p>Message attributes for Publish action.</p>
-- * TopicArn [topicARN] <p>The topic you want to publish to.</p> <p>If you don't specify a value for the <code>TopicArn</code> parameter, you must specify a value for the <code>PhoneNumber</code> or <code>TargetArn</code> parameters.</p>
-- * Subject [subject] <p>Optional parameter to be used as the "Subject" line when the message is delivered to email endpoints. This field will also be included, if present, in the standard JSON messages delivered to other endpoints.</p> <p>Constraints: Subjects must be ASCII text that begins with a letter, number, or punctuation mark; must not include line breaks or control characters; and must be less than 100 characters long.</p>
-- Required key: Message
-- @return PublishInput structure as a key-value pair table
function M.PublishInput(args)
	assert(args, "You must provide an argument table when creating PublishInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageStructure"] = args["MessageStructure"],
		["PhoneNumber"] = args["PhoneNumber"],
		["TargetArn"] = args["TargetArn"],
		["Message"] = args["Message"],
		["MessageAttributes"] = args["MessageAttributes"],
		["TopicArn"] = args["TopicArn"],
		["Subject"] = args["Subject"],
	}
	asserts.AssertPublishInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeName [attributeName] <p>The name of the attribute you want to set. Only a subset of the subscriptions attributes are mutable.</p> <p>Valid values: <code>DeliveryPolicy</code> | <code>FilterPolicy</code> | <code>RawMessageDelivery</code> </p>
-- * AttributeValue [attributeValue] <p>The new value for the attribute in JSON format.</p>
-- * SubscriptionArn [subscriptionARN] <p>The ARN of the subscription to modify.</p>
-- Required key: SubscriptionArn
-- Required key: AttributeName
-- @return SetSubscriptionAttributesInput structure as a key-value pair table
function M.SetSubscriptionAttributesInput(args)
	assert(args, "You must provide an argument table when creating SetSubscriptionAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeName"] = args["AttributeName"],
		["AttributeValue"] = args["AttributeValue"],
		["SubscriptionArn"] = args["SubscriptionArn"],
	}
	asserts.AssertSetSubscriptionAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [SubscriptionAttributesMap] <p>A map of the subscription's attributes. Attributes in this map include the following:</p> <ul> <li> <p> <code>ConfirmationWasAuthenticated</code> -- <code>true</code> if the subscription confirmation request was authenticated.</p> </li> <li> <p> <code>DeliveryPolicy</code> -- The JSON serialization of the subscription's delivery policy.</p> </li> <li> <p> <code>EffectiveDeliveryPolicy</code> -- The JSON serialization of the effective delivery policy that takes into account the topic delivery policy and account system defaults.</p> </li> <li> <p> <code>FilterPolicy</code> -- The filter policy JSON that is assigned to the subscription.</p> </li> <li> <p> <code>Owner</code> -- The AWS account ID of the subscription's owner.</p> </li> <li> <p> <code>PendingConfirmation</code> -- <code>true</code> if the subscription hasn't been confirmed. To confirm a pending subscription, call the <code>ConfirmSubscription</code> action with a confirmation token.</p> </li> <li> <p> <code>RawMessageDelivery</code> -- <code>true</code> if raw message delivery is enabled for the subscription. Raw messages are free of JSON formatting and can be sent to HTTP/S and Amazon SQS endpoints.</p> </li> <li> <p> <code>SubscriptionArn</code> -- The subscription's ARN.</p> </li> <li> <p> <code>TopicArn</code> -- The topic ARN that the subscription is associated with.</p> </li> </ul>
-- @return GetSubscriptionAttributesResponse structure as a key-value pair table
function M.GetSubscriptionAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetSubscriptionAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertGetSubscriptionAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicArn [topicARN] <p>The Amazon Resource Name (ARN) assigned to the created topic.</p>
-- @return CreateTopicResponse structure as a key-value pair table
function M.CreateTopicResponse(args)
	assert(args, "You must provide an argument table when creating CreateTopicResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertCreateTopicResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] 
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
		["message"] = args["message"],
	}
	asserts.AssertInternalErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [TopicAttributesMap] <p>A map of the topic's attributes. Attributes in this map include the following:</p> <ul> <li> <p> <code>TopicArn</code> -- the topic's ARN</p> </li> <li> <p> <code>Owner</code> -- the AWS account ID of the topic's owner</p> </li> <li> <p> <code>Policy</code> -- the JSON serialization of the topic's access control policy</p> </li> <li> <p> <code>DisplayName</code> -- the human-readable name used in the "From" field for notifications to email and email-json endpoints</p> </li> <li> <p> <code>SubscriptionsPending</code> -- the number of subscriptions pending confirmation on this topic</p> </li> <li> <p> <code>SubscriptionsConfirmed</code> -- the number of confirmed subscriptions on this topic</p> </li> <li> <p> <code>SubscriptionsDeleted</code> -- the number of deleted subscriptions on this topic</p> </li> <li> <p> <code>DeliveryPolicy</code> -- the JSON serialization of the topic's delivery policy</p> </li> <li> <p> <code>EffectiveDeliveryPolicy</code> -- the JSON serialization of the effective delivery policy that takes into account system defaults</p> </li> </ul>
-- @return GetTopicAttributesResponse structure as a key-value pair table
function M.GetTopicAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetTopicAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertGetTopicAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * phoneNumbers [PhoneNumberList] <p>A list of phone numbers that are opted out of receiving SMS messages. The list is paginated, and each page can contain up to 100 phone numbers.</p>
-- * nextToken [string] <p>A <code>NextToken</code> string is returned when you call the <code>ListPhoneNumbersOptedOut</code> action if additional records are available after the first page of results.</p>
-- @return ListPhoneNumbersOptedOutResponse structure as a key-value pair table
function M.ListPhoneNumbersOptedOutResponse(args)
	assert(args, "You must provide an argument table when creating ListPhoneNumbersOptedOutResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["phoneNumbers"] = args["phoneNumbers"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListPhoneNumbersOptedOutResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformApplicationArn [String] <p>PlatformApplicationArn is returned.</p>
-- @return CreatePlatformApplicationResponse structure as a key-value pair table
function M.CreatePlatformApplicationResponse(args)
	assert(args, "You must provide an argument table when creating CreatePlatformApplicationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformApplicationArn"] = args["PlatformApplicationArn"],
	}
	asserts.AssertCreatePlatformApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] 
-- @return AuthorizationErrorException structure as a key-value pair table
function M.AuthorizationErrorException(args)
	assert(args, "You must provide an argument table when creating AuthorizationErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertAuthorizationErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [MapStringToString] <p>A map of the platform application attributes. Attributes in this map include the following:</p> <ul> <li> <p> <code>PlatformCredential</code> -- The credential received from the notification service. For APNS/APNS_SANDBOX, PlatformCredential is private key. For GCM, PlatformCredential is "API key". For ADM, PlatformCredential is "client secret".</p> </li> <li> <p> <code>PlatformPrincipal</code> -- The principal received from the notification service. For APNS/APNS_SANDBOX, PlatformPrincipal is SSL certificate. For GCM, PlatformPrincipal is not applicable. For ADM, PlatformPrincipal is "client id".</p> </li> <li> <p> <code>EventEndpointCreated</code> -- Topic ARN to which EndpointCreated event notifications should be sent.</p> </li> <li> <p> <code>EventEndpointDeleted</code> -- Topic ARN to which EndpointDeleted event notifications should be sent.</p> </li> <li> <p> <code>EventEndpointUpdated</code> -- Topic ARN to which EndpointUpdate event notifications should be sent.</p> </li> <li> <p> <code>EventDeliveryFailure</code> -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.</p> </li> <li> <p> <code>SuccessFeedbackRoleArn</code> -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.</p> </li> <li> <p> <code>FailureFeedbackRoleArn</code> -- IAM role ARN used to give Amazon SNS write access to use CloudWatch Logs on your behalf.</p> </li> <li> <p> <code>SuccessFeedbackSampleRate</code> -- Sample rate percentage (0-100) of successfully delivered messages.</p> </li> </ul>
-- * PlatformApplicationArn [String] <p>PlatformApplicationArn for SetPlatformApplicationAttributes action.</p>
-- Required key: PlatformApplicationArn
-- Required key: Attributes
-- @return SetPlatformApplicationAttributesInput structure as a key-value pair table
function M.SetPlatformApplicationAttributesInput(args)
	assert(args, "You must provide an argument table when creating SetPlatformApplicationAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["PlatformApplicationArn"] = args["PlatformApplicationArn"],
	}
	asserts.AssertSetPlatformApplicationAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionArn [subscriptionARN] <p>The ARN of the subscription to be deleted.</p>
-- Required key: SubscriptionArn
-- @return UnsubscribeInput structure as a key-value pair table
function M.UnsubscribeInput(args)
	assert(args, "You must provide an argument table when creating UnsubscribeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionArn"] = args["SubscriptionArn"],
	}
	asserts.AssertUnsubscribeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>The parameter value is invalid.</p>
-- @return InvalidParameterValueException structure as a key-value pair table
function M.InvalidParameterValueException(args)
	assert(args, "You must provide an argument table when creating InvalidParameterValueException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterValueException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoints [ListOfEndpoints] <p>Endpoints returned for ListEndpointsByPlatformApplication action.</p>
-- * NextToken [String] <p>NextToken string is returned when calling ListEndpointsByPlatformApplication action if additional records are available after the first page results.</p>
-- @return ListEndpointsByPlatformApplicationResponse structure as a key-value pair table
function M.ListEndpointsByPlatformApplicationResponse(args)
	assert(args, "You must provide an argument table when creating ListEndpointsByPlatformApplicationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Endpoints"] = args["Endpoints"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListEndpointsByPlatformApplicationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscribeInput = { ["Attributes"] = true, ["Endpoint"] = true, ["Protocol"] = true, ["TopicArn"] = true, ["ReturnSubscriptionArn"] = true, nil }

function asserts.AssertSubscribeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeInput to be of type 'table'")
	assert(struct["TopicArn"], "Expected key TopicArn to exist in table")
	assert(struct["Protocol"], "Expected key Protocol to exist in table")
	if struct["Attributes"] then asserts.AssertSubscriptionAttributesMap(struct["Attributes"]) end
	if struct["Endpoint"] then asserts.Assertendpoint(struct["Endpoint"]) end
	if struct["Protocol"] then asserts.Assertprotocol(struct["Protocol"]) end
	if struct["TopicArn"] then asserts.AsserttopicARN(struct["TopicArn"]) end
	if struct["ReturnSubscriptionArn"] then asserts.Assertboolean(struct["ReturnSubscriptionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeInput[k], "SubscribeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeInput
-- <p>Input for Subscribe action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [SubscriptionAttributesMap] <p>Assigns attributes to the subscription as a map of key-value pairs. You can assign any attribute that is supported by the <code>SetSubscriptionAttributes</code> action.</p>
-- * Endpoint [endpoint] <p>The endpoint that you want to receive notifications. Endpoints vary by protocol:</p> <ul> <li> <p>For the <code>http</code> protocol, the endpoint is an URL beginning with "http://"</p> </li> <li> <p>For the <code>https</code> protocol, the endpoint is a URL beginning with "https://"</p> </li> <li> <p>For the <code>email</code> protocol, the endpoint is an email address</p> </li> <li> <p>For the <code>email-json</code> protocol, the endpoint is an email address</p> </li> <li> <p>For the <code>sms</code> protocol, the endpoint is a phone number of an SMS-enabled device</p> </li> <li> <p>For the <code>sqs</code> protocol, the endpoint is the ARN of an Amazon SQS queue</p> </li> <li> <p>For the <code>application</code> protocol, the endpoint is the EndpointArn of a mobile app and device.</p> </li> <li> <p>For the <code>lambda</code> protocol, the endpoint is the ARN of an AWS Lambda function.</p> </li> </ul>
-- * Protocol [protocol] <p>The protocol you want to use. Supported protocols include:</p> <ul> <li> <p> <code>http</code> -- delivery of JSON-encoded message via HTTP POST</p> </li> <li> <p> <code>https</code> -- delivery of JSON-encoded message via HTTPS POST</p> </li> <li> <p> <code>email</code> -- delivery of message via SMTP</p> </li> <li> <p> <code>email-json</code> -- delivery of JSON-encoded message via SMTP</p> </li> <li> <p> <code>sms</code> -- delivery of message via SMS</p> </li> <li> <p> <code>sqs</code> -- delivery of JSON-encoded message to an Amazon SQS queue</p> </li> <li> <p> <code>application</code> -- delivery of JSON-encoded message to an EndpointArn for a mobile app and device.</p> </li> <li> <p> <code>lambda</code> -- delivery of JSON-encoded message to an AWS Lambda function.</p> </li> </ul>
-- * TopicArn [topicARN] <p>The ARN of the topic you want to subscribe to.</p>
-- * ReturnSubscriptionArn [boolean] <p>Sets whether the response from the <code>Subscribe</code> request includes the subscription ARN, even if the subscription is not yet confirmed.</p> <p>If you set this parameter to <code>false</code>, the response includes the ARN for confirmed subscriptions, but it includes an ARN value of "pending subscription" for subscriptions that are not yet confirmed. A subscription becomes confirmed when the subscriber calls the <code>ConfirmSubscription</code> action with a confirmation token.</p> <p>If you set this parameter to <code>true</code>, the response includes the ARN in all cases, even if the subscription is not yet confirmed.</p> <p>The default value is <code>false</code>.</p>
-- Required key: TopicArn
-- Required key: Protocol
-- @return SubscribeInput structure as a key-value pair table
function M.SubscribeInput(args)
	assert(args, "You must provide an argument table when creating SubscribeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Endpoint"] = args["Endpoint"],
		["Protocol"] = args["Protocol"],
		["TopicArn"] = args["TopicArn"],
		["ReturnSubscriptionArn"] = args["ReturnSubscriptionArn"],
	}
	asserts.AssertSubscribeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlatformApplicationArn [String] <p>PlatformApplicationArn of platform application object to delete.</p>
-- Required key: PlatformApplicationArn
-- @return DeletePlatformApplicationInput structure as a key-value pair table
function M.DeletePlatformApplicationInput(args)
	assert(args, "You must provide an argument table when creating DeletePlatformApplicationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlatformApplicationArn"] = args["PlatformApplicationArn"],
	}
	asserts.AssertDeletePlatformApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageId [messageId] <p>Unique identifier assigned to the published message.</p> <p>Length Constraint: Maximum 100 characters</p>
-- @return PublishResponse structure as a key-value pair table
function M.PublishResponse(args)
	assert(args, "You must provide an argument table when creating PublishResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageId"] = args["MessageId"],
	}
	asserts.AssertPublishResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataType [String] <p>Amazon SNS supports the following logical data types: String, String.Array, Number, and Binary. For more information, see <a href="http://docs.aws.amazon.com/sns/latest/dg/SNSMessageAttributes.html#SNSMessageAttributes.DataTypes">Message Attribute Data Types</a>.</p>
-- * StringValue [String] <p>Strings are Unicode with UTF8 binary encoding. For a list of code values, see <a href="http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters">http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters</a>.</p>
-- * BinaryValue [Binary] <p>Binary type attributes can store any binary data, for example, compressed data, encrypted data, or images.</p>
-- Required key: DataType
-- @return MessageAttributeValue structure as a key-value pair table
function M.MessageAttributeValue(args)
	assert(args, "You must provide an argument table when creating MessageAttributeValue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataType"] = args["DataType"],
		["StringValue"] = args["StringValue"],
		["BinaryValue"] = args["BinaryValue"],
	}
	asserts.AssertMessageAttributeValue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * isOptedOut [boolean] <p>Indicates whether the phone number is opted out:</p> <ul> <li> <p> <code>true</code> – The phone number is opted out, meaning you cannot publish SMS messages to it.</p> </li> <li> <p> <code>false</code> – The phone number is opted in, meaning you can publish SMS messages to it.</p> </li> </ul>
-- @return CheckIfPhoneNumberIsOptedOutResponse structure as a key-value pair table
function M.CheckIfPhoneNumberIsOptedOutResponse(args)
	assert(args, "You must provide an argument table when creating CheckIfPhoneNumberIsOptedOutResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["isOptedOut"] = args["isOptedOut"],
	}
	asserts.AssertCheckIfPhoneNumberIsOptedOutResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>NextToken string is used when calling ListEndpointsByPlatformApplication action to retrieve additional records that are available after the first page results.</p>
-- * PlatformApplicationArn [String] <p>PlatformApplicationArn for ListEndpointsByPlatformApplicationInput action.</p>
-- Required key: PlatformApplicationArn
-- @return ListEndpointsByPlatformApplicationInput structure as a key-value pair table
function M.ListEndpointsByPlatformApplicationInput(args)
	assert(args, "You must provide an argument table when creating ListEndpointsByPlatformApplicationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["PlatformApplicationArn"] = args["PlatformApplicationArn"],
	}
	asserts.AssertListEndpointsByPlatformApplicationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SetSMSAttributesResponse structure as a key-value pair table
function M.SetSMSAttributesResponse(args)
	assert(args, "You must provide an argument table when creating SetSMSAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSetSMSAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicArn [topicARN] <p>The ARN of the topic whose access control policy you wish to modify.</p>
-- * Label [label] <p>The unique label of the statement you want to remove.</p>
-- Required key: TopicArn
-- Required key: Label
-- @return RemovePermissionInput structure as a key-value pair table
function M.RemovePermissionInput(args)
	assert(args, "You must provide an argument table when creating RemovePermissionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicArn"] = args["TopicArn"],
		["Label"] = args["Label"],
	}
	asserts.AssertRemovePermissionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] 
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
		["message"] = args["message"],
	}
	asserts.AssertInvalidParameterException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [topicName] <p>The name of the topic you want to create.</p> <p>Constraints: Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long.</p>
-- Required key: Name
-- @return CreateTopicInput structure as a key-value pair table
function M.CreateTopicInput(args)
	assert(args, "You must provide an argument table when creating CreateTopicInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertCreateTopicInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointArn [String] <p>EndpointArn of endpoint to delete.</p>
-- Required key: EndpointArn
-- @return DeleteEndpointInput structure as a key-value pair table
function M.DeleteEndpointInput(args)
	assert(args, "You must provide an argument table when creating DeleteEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertDeleteEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [MapStringToString] <p>A map of the endpoint attributes. Attributes in this map include the following:</p> <ul> <li> <p> <code>CustomUserData</code> -- arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and less than 2KB.</p> </li> <li> <p> <code>Enabled</code> -- flag that enables/disables delivery to the endpoint. Amazon SNS will set this to false when a notification service indicates to Amazon SNS that the endpoint is invalid. Users can set it back to true, typically after updating Token.</p> </li> <li> <p> <code>Token</code> -- device token, also referred to as a registration id, for an app and mobile device. This is returned from the notification service when an app and mobile device are registered with the notification service.</p> </li> </ul>
-- * EndpointArn [String] <p>EndpointArn used for SetEndpointAttributes action.</p>
-- Required key: EndpointArn
-- Required key: Attributes
-- @return SetEndpointAttributesInput structure as a key-value pair table
function M.SetEndpointAttributesInput(args)
	assert(args, "You must provide an argument table when creating SetEndpointAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertSetEndpointAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [MapStringToString] <p>Attributes for endpoint.</p>
-- * EndpointArn [String] <p>EndpointArn for mobile app and device.</p>
-- @return Endpoint structure as a key-value pair table
function M.Endpoint(args)
	assert(args, "You must provide an argument table when creating Endpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["EndpointArn"] = args["EndpointArn"],
	}
	asserts.AssertEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [nextToken] <p>Token returned by the previous <code>ListTopics</code> request.</p>
-- @return ListTopicsInput structure as a key-value pair table
function M.ListTopicsInput(args)
	assert(args, "You must provide an argument table when creating ListTopicsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTopicsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [nextToken] <p>Token returned by the previous <code>ListSubscriptions</code> request.</p>
-- @return ListSubscriptionsInput structure as a key-value pair table
function M.ListSubscriptionsInput(args)
	assert(args, "You must provide an argument table when creating ListSubscriptionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListSubscriptionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubscriptionArn [subscriptionARN] <p>The ARN of the subscription if it is confirmed, or the string "pending confirmation" if the subscription requires confirmation. However, if the API request parameter <code>ReturnSubscriptionArn</code> is true, then the value is always the subscription ARN, even if the subscription requires confirmation.</p>
-- @return SubscribeResponse structure as a key-value pair table
function M.SubscribeResponse(args)
	assert(args, "You must provide an argument table when creating SubscribeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubscriptionArn"] = args["SubscriptionArn"],
	}
	asserts.AssertSubscribeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>NextToken string is returned when calling ListPlatformApplications action if additional records are available after the first page results.</p>
-- * PlatformApplications [ListOfPlatformApplications] <p>Platform applications returned when calling ListPlatformApplications action.</p>
-- @return ListPlatformApplicationsResponse structure as a key-value pair table
function M.ListPlatformApplicationsResponse(args)
	assert(args, "You must provide an argument table when creating ListPlatformApplicationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["PlatformApplications"] = args["PlatformApplications"],
	}
	asserts.AssertListPlatformApplicationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TopicArn [topicARN] <p>The ARN of the topic whose properties you want to get.</p>
-- Required key: TopicArn
-- @return GetTopicAttributesInput structure as a key-value pair table
function M.GetTopicAttributesInput(args)
	assert(args, "You must provide an argument table when creating GetTopicAttributesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TopicArn"] = args["TopicArn"],
	}
	asserts.AssertGetTopicAttributesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ActionName [ActionsList] <p>The action you want to allow for the specified principal(s).</p> <p>Valid values: any Amazon SNS action name.</p>
-- * AWSAccountId [DelegatesList] <p>The AWS account IDs of the users (principals) who will be given access to the specified actions. The users must have AWS accounts, but do not need to be signed up for this service.</p>
-- * TopicArn [topicARN] <p>The ARN of the topic whose access control policy you wish to modify.</p>
-- * Label [label] <p>A unique identifier for the new policy statement.</p>
-- Required key: TopicArn
-- Required key: Label
-- Required key: AWSAccountId
-- Required key: ActionName
-- @return AddPermissionInput structure as a key-value pair table
function M.AddPermissionInput(args)
	assert(args, "You must provide an argument table when creating AddPermissionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ActionName"] = args["ActionName"],
		["AWSAccountId"] = args["AWSAccountId"],
		["TopicArn"] = args["TopicArn"],
		["Label"] = args["Label"],
	}
	asserts.AssertAddPermissionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [MapStringToString] <p>Attributes include the following:</p> <ul> <li> <p> <code>EventEndpointCreated</code> -- Topic ARN to which EndpointCreated event notifications should be sent.</p> </li> <li> <p> <code>EventEndpointDeleted</code> -- Topic ARN to which EndpointDeleted event notifications should be sent.</p> </li> <li> <p> <code>EventEndpointUpdated</code> -- Topic ARN to which EndpointUpdate event notifications should be sent.</p> </li> <li> <p> <code>EventDeliveryFailure</code> -- Topic ARN to which DeliveryFailure event notifications should be sent upon Direct Publish delivery failure (permanent) to one of the application's endpoints.</p> </li> </ul>
-- @return GetPlatformApplicationAttributesResponse structure as a key-value pair table
function M.GetPlatformApplicationAttributesResponse(args)
	assert(args, "You must provide an argument table when creating GetPlatformApplicationAttributesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertGetPlatformApplicationAttributesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [string] <p>Message for platform application disabled.</p>
-- @return PlatformApplicationDisabledException structure as a key-value pair table
function M.PlatformApplicationDisabledException(args)
	assert(args, "You must provide an argument table when creating PlatformApplicationDisabledException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertPlatformApplicationDisabledException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(type(blob) == "string", "Expected Binary to be of type 'string'")
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call ListPlatformApplications asynchronously, invoking a callback when done
-- @param ListPlatformApplicationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPlatformApplicationsAsync(ListPlatformApplicationsInput, cb)
	assert(ListPlatformApplicationsInput, "You must provide a ListPlatformApplicationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPlatformApplications",
	}
	for header,value in pairs(ListPlatformApplicationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListPlatformApplicationsSync(ListPlatformApplicationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPlatformApplicationsAsync(ListPlatformApplicationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetPlatformApplicationAttributes asynchronously, invoking a callback when done
-- @param SetPlatformApplicationAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetPlatformApplicationAttributesAsync(SetPlatformApplicationAttributesInput, cb)
	assert(SetPlatformApplicationAttributesInput, "You must provide a SetPlatformApplicationAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetPlatformApplicationAttributes",
	}
	for header,value in pairs(SetPlatformApplicationAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.SetPlatformApplicationAttributesSync(SetPlatformApplicationAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetPlatformApplicationAttributesAsync(SetPlatformApplicationAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSubscriptionsByTopic asynchronously, invoking a callback when done
-- @param ListSubscriptionsByTopicInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSubscriptionsByTopicAsync(ListSubscriptionsByTopicInput, cb)
	assert(ListSubscriptionsByTopicInput, "You must provide a ListSubscriptionsByTopicInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSubscriptionsByTopic",
	}
	for header,value in pairs(ListSubscriptionsByTopicInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListSubscriptionsByTopicSync(ListSubscriptionsByTopicInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscriptionsByTopicAsync(ListSubscriptionsByTopicInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSubscriptions asynchronously, invoking a callback when done
-- @param ListSubscriptionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSubscriptionsAsync(ListSubscriptionsInput, cb)
	assert(ListSubscriptionsInput, "You must provide a ListSubscriptionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSubscriptions",
	}
	for header,value in pairs(ListSubscriptionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListSubscriptionsSync(ListSubscriptionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSubscriptionsAsync(ListSubscriptionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPhoneNumbersOptedOut asynchronously, invoking a callback when done
-- @param ListPhoneNumbersOptedOutInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPhoneNumbersOptedOutAsync(ListPhoneNumbersOptedOutInput, cb)
	assert(ListPhoneNumbersOptedOutInput, "You must provide a ListPhoneNumbersOptedOutInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPhoneNumbersOptedOut",
	}
	for header,value in pairs(ListPhoneNumbersOptedOutInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListPhoneNumbersOptedOutSync(ListPhoneNumbersOptedOutInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPhoneNumbersOptedOutAsync(ListPhoneNumbersOptedOutInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ConfirmSubscription asynchronously, invoking a callback when done
-- @param ConfirmSubscriptionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ConfirmSubscriptionAsync(ConfirmSubscriptionInput, cb)
	assert(ConfirmSubscriptionInput, "You must provide a ConfirmSubscriptionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ConfirmSubscription",
	}
	for header,value in pairs(ConfirmSubscriptionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ConfirmSubscriptionSync(ConfirmSubscriptionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ConfirmSubscriptionAsync(ConfirmSubscriptionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTopicAttributes asynchronously, invoking a callback when done
-- @param SetTopicAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetTopicAttributesAsync(SetTopicAttributesInput, cb)
	assert(SetTopicAttributesInput, "You must provide a SetTopicAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetTopicAttributes",
	}
	for header,value in pairs(SetTopicAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.SetTopicAttributesSync(SetTopicAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTopicAttributesAsync(SetTopicAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetEndpointAttributes asynchronously, invoking a callback when done
-- @param SetEndpointAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetEndpointAttributesAsync(SetEndpointAttributesInput, cb)
	assert(SetEndpointAttributesInput, "You must provide a SetEndpointAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetEndpointAttributes",
	}
	for header,value in pairs(SetEndpointAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.SetEndpointAttributesSync(SetEndpointAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetEndpointAttributesAsync(SetEndpointAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CheckIfPhoneNumberIsOptedOut asynchronously, invoking a callback when done
-- @param CheckIfPhoneNumberIsOptedOutInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CheckIfPhoneNumberIsOptedOutAsync(CheckIfPhoneNumberIsOptedOutInput, cb)
	assert(CheckIfPhoneNumberIsOptedOutInput, "You must provide a CheckIfPhoneNumberIsOptedOutInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CheckIfPhoneNumberIsOptedOut",
	}
	for header,value in pairs(CheckIfPhoneNumberIsOptedOutInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CheckIfPhoneNumberIsOptedOutSync(CheckIfPhoneNumberIsOptedOutInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CheckIfPhoneNumberIsOptedOutAsync(CheckIfPhoneNumberIsOptedOutInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddPermission asynchronously, invoking a callback when done
-- @param AddPermissionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddPermissionAsync(AddPermissionInput, cb)
	assert(AddPermissionInput, "You must provide a AddPermissionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".AddPermission",
	}
	for header,value in pairs(AddPermissionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.AddPermissionSync(AddPermissionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddPermissionAsync(AddPermissionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Unsubscribe asynchronously, invoking a callback when done
-- @param UnsubscribeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UnsubscribeAsync(UnsubscribeInput, cb)
	assert(UnsubscribeInput, "You must provide a UnsubscribeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Unsubscribe",
	}
	for header,value in pairs(UnsubscribeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.UnsubscribeSync(UnsubscribeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnsubscribeAsync(UnsubscribeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSubscriptionAttributes asynchronously, invoking a callback when done
-- @param GetSubscriptionAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSubscriptionAttributesAsync(GetSubscriptionAttributesInput, cb)
	assert(GetSubscriptionAttributesInput, "You must provide a GetSubscriptionAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSubscriptionAttributes",
	}
	for header,value in pairs(GetSubscriptionAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetSubscriptionAttributesSync(GetSubscriptionAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSubscriptionAttributesAsync(GetSubscriptionAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePlatformEndpoint asynchronously, invoking a callback when done
-- @param CreatePlatformEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePlatformEndpointAsync(CreatePlatformEndpointInput, cb)
	assert(CreatePlatformEndpointInput, "You must provide a CreatePlatformEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePlatformEndpoint",
	}
	for header,value in pairs(CreatePlatformEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreatePlatformEndpointSync(CreatePlatformEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePlatformEndpointAsync(CreatePlatformEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemovePermission asynchronously, invoking a callback when done
-- @param RemovePermissionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemovePermissionAsync(RemovePermissionInput, cb)
	assert(RemovePermissionInput, "You must provide a RemovePermissionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RemovePermission",
	}
	for header,value in pairs(RemovePermissionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.RemovePermissionSync(RemovePermissionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemovePermissionAsync(RemovePermissionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTopic asynchronously, invoking a callback when done
-- @param CreateTopicInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTopicAsync(CreateTopicInput, cb)
	assert(CreateTopicInput, "You must provide a CreateTopicInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateTopic",
	}
	for header,value in pairs(CreateTopicInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateTopicSync(CreateTopicInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTopicAsync(CreateTopicInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetSubscriptionAttributes asynchronously, invoking a callback when done
-- @param SetSubscriptionAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetSubscriptionAttributesAsync(SetSubscriptionAttributesInput, cb)
	assert(SetSubscriptionAttributesInput, "You must provide a SetSubscriptionAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetSubscriptionAttributes",
	}
	for header,value in pairs(SetSubscriptionAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.SetSubscriptionAttributesSync(SetSubscriptionAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetSubscriptionAttributesAsync(SetSubscriptionAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePlatformApplication asynchronously, invoking a callback when done
-- @param CreatePlatformApplicationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePlatformApplicationAsync(CreatePlatformApplicationInput, cb)
	assert(CreatePlatformApplicationInput, "You must provide a CreatePlatformApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePlatformApplication",
	}
	for header,value in pairs(CreatePlatformApplicationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreatePlatformApplicationSync(CreatePlatformApplicationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePlatformApplicationAsync(CreatePlatformApplicationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPlatformApplicationAttributes asynchronously, invoking a callback when done
-- @param GetPlatformApplicationAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPlatformApplicationAttributesAsync(GetPlatformApplicationAttributesInput, cb)
	assert(GetPlatformApplicationAttributesInput, "You must provide a GetPlatformApplicationAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPlatformApplicationAttributes",
	}
	for header,value in pairs(GetPlatformApplicationAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetPlatformApplicationAttributesSync(GetPlatformApplicationAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPlatformApplicationAttributesAsync(GetPlatformApplicationAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSMSAttributes asynchronously, invoking a callback when done
-- @param GetSMSAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSMSAttributesAsync(GetSMSAttributesInput, cb)
	assert(GetSMSAttributesInput, "You must provide a GetSMSAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSMSAttributes",
	}
	for header,value in pairs(GetSMSAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetSMSAttributesSync(GetSMSAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSMSAttributesAsync(GetSMSAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Publish asynchronously, invoking a callback when done
-- @param PublishInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PublishAsync(PublishInput, cb)
	assert(PublishInput, "You must provide a PublishInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Publish",
	}
	for header,value in pairs(PublishInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.PublishSync(PublishInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PublishAsync(PublishInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetSMSAttributes asynchronously, invoking a callback when done
-- @param SetSMSAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetSMSAttributesAsync(SetSMSAttributesInput, cb)
	assert(SetSMSAttributesInput, "You must provide a SetSMSAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetSMSAttributes",
	}
	for header,value in pairs(SetSMSAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.SetSMSAttributesSync(SetSMSAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetSMSAttributesAsync(SetSMSAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListEndpointsByPlatformApplication asynchronously, invoking a callback when done
-- @param ListEndpointsByPlatformApplicationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListEndpointsByPlatformApplicationAsync(ListEndpointsByPlatformApplicationInput, cb)
	assert(ListEndpointsByPlatformApplicationInput, "You must provide a ListEndpointsByPlatformApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListEndpointsByPlatformApplication",
	}
	for header,value in pairs(ListEndpointsByPlatformApplicationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListEndpointsByPlatformApplicationSync(ListEndpointsByPlatformApplicationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEndpointsByPlatformApplicationAsync(ListEndpointsByPlatformApplicationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEndpointAttributes asynchronously, invoking a callback when done
-- @param GetEndpointAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetEndpointAttributesAsync(GetEndpointAttributesInput, cb)
	assert(GetEndpointAttributesInput, "You must provide a GetEndpointAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetEndpointAttributes",
	}
	for header,value in pairs(GetEndpointAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetEndpointAttributesSync(GetEndpointAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEndpointAttributesAsync(GetEndpointAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteEndpoint asynchronously, invoking a callback when done
-- @param DeleteEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteEndpointAsync(DeleteEndpointInput, cb)
	assert(DeleteEndpointInput, "You must provide a DeleteEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteEndpoint",
	}
	for header,value in pairs(DeleteEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteEndpointSync(DeleteEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteEndpointAsync(DeleteEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePlatformApplication asynchronously, invoking a callback when done
-- @param DeletePlatformApplicationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePlatformApplicationAsync(DeletePlatformApplicationInput, cb)
	assert(DeletePlatformApplicationInput, "You must provide a DeletePlatformApplicationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePlatformApplication",
	}
	for header,value in pairs(DeletePlatformApplicationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeletePlatformApplicationSync(DeletePlatformApplicationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePlatformApplicationAsync(DeletePlatformApplicationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTopicAttributes asynchronously, invoking a callback when done
-- @param GetTopicAttributesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTopicAttributesAsync(GetTopicAttributesInput, cb)
	assert(GetTopicAttributesInput, "You must provide a GetTopicAttributesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTopicAttributes",
	}
	for header,value in pairs(GetTopicAttributesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetTopicAttributesSync(GetTopicAttributesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTopicAttributesAsync(GetTopicAttributesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Subscribe asynchronously, invoking a callback when done
-- @param SubscribeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SubscribeAsync(SubscribeInput, cb)
	assert(SubscribeInput, "You must provide a SubscribeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Subscribe",
	}
	for header,value in pairs(SubscribeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.SubscribeSync(SubscribeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SubscribeAsync(SubscribeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTopic asynchronously, invoking a callback when done
-- @param DeleteTopicInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTopicAsync(DeleteTopicInput, cb)
	assert(DeleteTopicInput, "You must provide a DeleteTopicInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteTopic",
	}
	for header,value in pairs(DeleteTopicInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteTopicSync(DeleteTopicInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTopicAsync(DeleteTopicInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call OptInPhoneNumber asynchronously, invoking a callback when done
-- @param OptInPhoneNumberInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.OptInPhoneNumberAsync(OptInPhoneNumberInput, cb)
	assert(OptInPhoneNumberInput, "You must provide a OptInPhoneNumberInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".OptInPhoneNumber",
	}
	for header,value in pairs(OptInPhoneNumberInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.OptInPhoneNumberSync(OptInPhoneNumberInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.OptInPhoneNumberAsync(OptInPhoneNumberInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTopics asynchronously, invoking a callback when done
-- @param ListTopicsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTopicsAsync(ListTopicsInput, cb)
	assert(ListTopicsInput, "You must provide a ListTopicsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTopics",
	}
	for header,value in pairs(ListTopicsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListTopicsSync(ListTopicsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTopicsAsync(ListTopicsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
