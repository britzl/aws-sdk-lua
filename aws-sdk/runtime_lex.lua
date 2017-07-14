--- GENERATED CODE - DO NOT MODIFY
-- Amazon Lex Runtime Service (runtime.lex-2016-11-28)

local M = {}

M.metadata = {
	api_version = "2016-11-28",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "runtime.lex",
	service_abbreviation = "",
	service_full_name = "Amazon Lex Runtime Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "runtime.lex-2016-11-28",
}

local LimitExceededException_keys = { "message" = true, "retryAfterSeconds" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then M.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;Exceeded a limit.&lt;/p&gt;
-- @param message [String] &lt;p&gt;Exceeded a limit.&lt;/p&gt;
-- @param retryAfterSeconds [String] &lt;p&gt;Exceeded a limit.&lt;/p&gt;
function M.LimitExceededException(message, retryAfterSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
		["retryAfterSeconds"] = retryAfterSeconds,
	}
	M.AssertLimitExceededException(t)
	return t
end

local BadRequestException_keys = { "message" = true, nil }

function M.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(BadRequestException_keys[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- &lt;p&gt; Request validation failed, there is no usable message in the context, or the bot build failed. &lt;/p&gt;
-- @param message [String] &lt;p&gt; Request validation failed, there is no usable message in the context, or the bot build failed. &lt;/p&gt;
function M.BadRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertBadRequestException(t)
	return t
end

local PostTextRequest_keys = { "inputText" = true, "userId" = true, "botName" = true, "sessionAttributes" = true, "botAlias" = true, nil }

function M.AssertPostTextRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostTextRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	assert(struct["userId"], "Expected key userId to exist in table")
	assert(struct["inputText"], "Expected key inputText to exist in table")
	if struct["inputText"] then M.AssertText(struct["inputText"]) end
	if struct["userId"] then M.AssertUserId(struct["userId"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["sessionAttributes"] then M.AssertStringMap(struct["sessionAttributes"]) end
	if struct["botAlias"] then M.AssertBotAlias(struct["botAlias"]) end
	for k,_ in pairs(struct) do
		assert(PostTextRequest_keys[k], "PostTextRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostTextRequest
--  
-- @param inputText [Text] &lt;p&gt;The text that the user entered (Amazon Lex interprets this text).&lt;/p&gt;
-- @param userId [UserId] &lt;p&gt;The ID of the client application user. The application developer decides the user IDs. At runtime, each request must include the user ID. Typically, each of your application users should have a unique ID. Note the following considerations: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; If you want a user to start a conversation on one device and continue the conversation on another device, you might choose a user-specific identifier, such as a login or Amazon Cognito user ID (assuming your application is using Amazon Cognito). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If you want the same user to be able to have two independent conversations on two different devices, you might choose a device-specific identifier, such as device ID, or some globally unique identifier. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param botName [BotName] &lt;p&gt;The name of the Amazon Lex bot.&lt;/p&gt;
-- @param sessionAttributes [StringMap] &lt;p&gt; By using session attributes, a client application can pass contextual information in the request to Amazon Lex For example, &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;In Getting Started Exercise 1, the example bot uses the &lt;code&gt;price&lt;/code&gt; session attribute to maintain the price of the flowers ordered (for example, &quot;Price&quot;:25). The code hook (the Lambda function) sets this attribute based on the type of flowers ordered. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lex/latest/dg/gs-bp-details-after-lambda.html&quot;&gt;Review the Details of Information Flow&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;In the BookTrip bot exercise, the bot uses the &lt;code&gt;currentReservation&lt;/code&gt; session attribute to maintain slot data during the in-progress conversation to book a hotel or book a car. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lex/latest/dg/book-trip-detail-flow.html&quot;&gt;Details of Information Flow&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You might use the session attributes (key, value pairs) to track the requestID of user requests.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; Amazon Lex simply passes these session attributes to the Lambda functions configured for the intent.&lt;/p&gt; &lt;p&gt;In your Lambda function, you can also use the session attributes for initialization and customization (prompts and response cards). Some examples are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; Initialization - In a pizza ordering bot, if you can pass the user location as a session attribute (for example, &lt;code&gt;&quot;Location&quot; : &quot;111 Maple street&quot;&lt;/code&gt;), then your Lambda function might use this information to determine the closest pizzeria to place the order (perhaps to set the storeAddress slot value). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; Personalize prompts - For example, you can configure prompts to refer to the user name. (For example, &quot;Hey [FirstName], what toppings would you like?&quot;). You can pass the user name as a session attribute (&lt;code&gt;&quot;FirstName&quot; : &quot;Joe&quot;&lt;/code&gt;) so that Amazon Lex can substitute the placeholder to provide a personalize prompt to the user (&quot;Hey Joe, what toppings would you like?&quot;). &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt; Amazon Lex does not persist session attributes. &lt;/p&gt; &lt;p&gt; If you configure a code hook for the intent, Amazon Lex passes the incoming session attributes to the Lambda function. If you want Amazon Lex to return these session attributes back to the client, the Lambda function must return them. &lt;/p&gt; &lt;p&gt; If there is no code hook configured for the intent, Amazon Lex simply returns the session attributes back to the client application. &lt;/p&gt; &lt;/note&gt;
-- @param botAlias [BotAlias] &lt;p&gt;The alias of the Amazon Lex bot.&lt;/p&gt;
-- Required parameter: botName
-- Required parameter: botAlias
-- Required parameter: userId
-- Required parameter: inputText
function M.PostTextRequest(inputText, userId, botName, sessionAttributes, botAlias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PostTextRequest")
	local t = { 
		["inputText"] = inputText,
		["userId"] = userId,
		["botName"] = botName,
		["sessionAttributes"] = sessionAttributes,
		["botAlias"] = botAlias,
	}
	M.AssertPostTextRequest(t)
	return t
end

local DependencyFailedException_keys = { "Message" = true, nil }

function M.AssertDependencyFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DependencyFailedException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DependencyFailedException_keys[k], "DependencyFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DependencyFailedException
-- &lt;p&gt; One of the downstream dependencies, such as AWS Lambda or Amazon Polly, threw an exception. For example, if Amazon Lex does not have sufficient permissions to call a Lambda function, it results in Lambda throwing an exception. &lt;/p&gt;
-- @param Message [ErrorMessage] &lt;p&gt; One of the downstream dependencies, such as AWS Lambda or Amazon Polly, threw an exception. For example, if Amazon Lex does not have sufficient permissions to call a Lambda function, it results in Lambda throwing an exception. &lt;/p&gt;
function M.DependencyFailedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DependencyFailedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDependencyFailedException(t)
	return t
end

local RequestTimeoutException_keys = { "message" = true, nil }

function M.AssertRequestTimeoutException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestTimeoutException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RequestTimeoutException_keys[k], "RequestTimeoutException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestTimeoutException
-- &lt;p&gt;The input speech is too long.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The input speech is too long.&lt;/p&gt;
function M.RequestTimeoutException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestTimeoutException")
	local t = { 
		["message"] = message,
	}
	M.AssertRequestTimeoutException(t)
	return t
end

local LoopDetectedException_keys = { "Message" = true, nil }

function M.AssertLoopDetectedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoopDetectedException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(LoopDetectedException_keys[k], "LoopDetectedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoopDetectedException
-- &lt;p&gt;Lambda fulfilment function returned &lt;code&gt;DelegateDialogAction&lt;/code&gt; to Amazon Lex without changing any slot values. &lt;/p&gt;
-- @param Message [ErrorMessage] &lt;p&gt;Lambda fulfilment function returned &lt;code&gt;DelegateDialogAction&lt;/code&gt; to Amazon Lex without changing any slot values. &lt;/p&gt;
function M.LoopDetectedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoopDetectedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertLoopDetectedException(t)
	return t
end

local PostContentRequest_keys = { "contentType" = true, "userId" = true, "botAlias" = true, "accept" = true, "inputStream" = true, "botName" = true, "sessionAttributes" = true, nil }

function M.AssertPostContentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostContentRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	assert(struct["userId"], "Expected key userId to exist in table")
	assert(struct["contentType"], "Expected key contentType to exist in table")
	assert(struct["inputStream"], "Expected key inputStream to exist in table")
	if struct["contentType"] then M.AssertHttpContentType(struct["contentType"]) end
	if struct["userId"] then M.AssertUserId(struct["userId"]) end
	if struct["botAlias"] then M.AssertBotAlias(struct["botAlias"]) end
	if struct["accept"] then M.AssertAccept(struct["accept"]) end
	if struct["inputStream"] then M.AssertBlobStream(struct["inputStream"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["sessionAttributes"] then M.AssertString(struct["sessionAttributes"]) end
	for k,_ in pairs(struct) do
		assert(PostContentRequest_keys[k], "PostContentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostContentRequest
--  
-- @param contentType [HttpContentType] &lt;p&gt; You pass this values as the &lt;code&gt;Content-Type&lt;/code&gt; HTTP header. &lt;/p&gt; &lt;p&gt; Indicates the audio format or text. The header value must start with one of the following prefixes: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;PCM format&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;audio/l16; rate=16000; channels=1&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;audio/x-l16; sample-rate=16000; channel-count=1&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Opus format&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=1; frame-size-milliseconds=1.1&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Text format&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;text/plain; charset=utf-8&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param userId [UserId] &lt;p&gt;ID of the client application user. Typically, each of your application users should have a unique ID. The application developer decides the user IDs. At runtime, each request must include the user ID. Note the following considerations:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; If you want a user to start conversation on one device and continue the conversation on another device, you might choose a user-specific identifier, such as the user's login, or Amazon Cognito user ID (assuming your application is using Amazon Cognito). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If you want the same user to be able to have two independent conversations on two different devices, you might choose device-specific identifier, such as device ID, or some globally unique identifier. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param botAlias [BotAlias] &lt;p&gt;Alias of the Amazon Lex bot.&lt;/p&gt;
-- @param accept [Accept] &lt;p&gt; You pass this value as the &lt;code&gt;Accept&lt;/code&gt; HTTP header. &lt;/p&gt; &lt;p&gt; The message Amazon Lex returns in the response can be either text or speech based on the &lt;code&gt;Accept&lt;/code&gt; HTTP header value in the request. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; If the value is &lt;code&gt;text/plain; charset=utf-8&lt;/code&gt;, Amazon Lex returns text in the response. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; If the value begins with &lt;code&gt;audio/&lt;/code&gt;, Amazon Lex returns speech in the response. Amazon Lex uses Amazon Polly to generate the speech (using the configuration you specified in the &lt;code&gt;Accept&lt;/code&gt; header). For example, if you specify &lt;code&gt;audio/mpeg&lt;/code&gt; as the value, Amazon Lex returns speech in the MPEG format.&lt;/p&gt; &lt;p&gt;The following are the accepted values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;audio/mpeg&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;audio/ogg&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;audio/pcm&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;text/plain; charset=utf-8&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;audio/* (defaults to mpeg)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param inputStream [BlobStream] &lt;p&gt; User input in PCM or Opus audio format or text format as described in the &lt;code&gt;Content-Type&lt;/code&gt; HTTP header. &lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;Name of the Amazon Lex bot.&lt;/p&gt;
-- @param sessionAttributes [String] &lt;p&gt;You pass this value in the &lt;code&gt;x-amz-lex-session-attributes&lt;/code&gt; HTTP header. The value must be map (keys and values must be strings) that is JSON serialized and then base64 encoded.&lt;/p&gt; &lt;p&gt; A session represents dialog between a user and Amazon Lex. At runtime, a client application can pass contextual information, in the request to Amazon Lex. For example, &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You might use session attributes to track the requestID of user requests.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;In Getting Started Exercise 1, the example bot uses the price session attribute to maintain the price of flowers ordered (for example, &quot;price&quot;:25). The code hook (Lambda function) sets this attribute based on the type of flowers ordered. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lex/latest/dg/gs-bp-details-after-lambda.html&quot;&gt;Review the Details of Information Flow&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;In the BookTrip bot exercise, the bot uses the &lt;code&gt;currentReservation&lt;/code&gt; session attribute to maintains the slot data during the in-progress conversation to book a hotel or book a car. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/lex/latest/dg/book-trip-detail-flow.html&quot;&gt;Details of Information Flow&lt;/a&gt;. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; Amazon Lex passes these session attributes to the Lambda functions configured for the intent In the your Lambda function, you can use the session attributes for initialization and customization (prompts). Some examples are: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; Initialization - In a pizza ordering bot, if you pass user location (for example, &lt;code&gt;&quot;Location : 111 Maple Street&quot;&lt;/code&gt;), then your Lambda function might use this information to determine the closest pizzeria to place the order (and perhaps set the storeAddress slot value as well). &lt;/p&gt; &lt;p&gt; Personalized prompts - For example, you can configure prompts to refer to the user by name (for example, &quot;Hey [firstName], what toppings would you like?&quot;). You can pass the user's name as a session attribute (&quot;firstName&quot;: &quot;Joe&quot;) so that Amazon Lex can substitute the placeholder to provide a personalized prompt to the user (&quot;Hey Joe, what toppings would you like?&quot;). &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt; Amazon Lex does not persist session attributes. &lt;/p&gt; &lt;p&gt; If you configured a code hook for the intent, Amazon Lex passes the incoming session attributes to the Lambda function. The Lambda function must return these session attributes if you want Amazon Lex to return them to the client. &lt;/p&gt; &lt;p&gt; If there is no code hook configured for the intent Amazon Lex simply returns the session attributes to the client application. &lt;/p&gt; &lt;/note&gt;
-- Required parameter: botName
-- Required parameter: botAlias
-- Required parameter: userId
-- Required parameter: contentType
-- Required parameter: inputStream
function M.PostContentRequest(contentType, userId, botAlias, accept, inputStream, botName, sessionAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PostContentRequest")
	local t = { 
		["contentType"] = contentType,
		["userId"] = userId,
		["botAlias"] = botAlias,
		["accept"] = accept,
		["inputStream"] = inputStream,
		["botName"] = botName,
		["sessionAttributes"] = sessionAttributes,
	}
	M.AssertPostContentRequest(t)
	return t
end

local ResponseCard_keys = { "genericAttachments" = true, "version" = true, "contentType" = true, nil }

function M.AssertResponseCard(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResponseCard to be of type 'table'")
	if struct["genericAttachments"] then M.AssertgenericAttachmentList(struct["genericAttachments"]) end
	if struct["version"] then M.AssertString(struct["version"]) end
	if struct["contentType"] then M.AssertContentType(struct["contentType"]) end
	for k,_ in pairs(struct) do
		assert(ResponseCard_keys[k], "ResponseCard contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResponseCard
-- &lt;p&gt;If you configure a response card when creating your bots, Amazon Lex substitutes the session attributes and slot values that are available, and then returns it. The response card can also come from a Lambda function ( &lt;code&gt;dialogCodeHook&lt;/code&gt; and &lt;code&gt;fulfillmentActivity&lt;/code&gt; on an intent).&lt;/p&gt;
-- @param genericAttachments [genericAttachmentList] &lt;p&gt;An array of attachment objects representing options.&lt;/p&gt;
-- @param version [String] &lt;p&gt;The version of the response card format.&lt;/p&gt;
-- @param contentType [ContentType] &lt;p&gt;The content type of the response.&lt;/p&gt;
function M.ResponseCard(genericAttachments, version, contentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResponseCard")
	local t = { 
		["genericAttachments"] = genericAttachments,
		["version"] = version,
		["contentType"] = contentType,
	}
	M.AssertResponseCard(t)
	return t
end

local NotFoundException_keys = { "message" = true, nil }

function M.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotFoundException_keys[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- &lt;p&gt;The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The resource (such as the Amazon Lex bot or an alias) that is referred to is not found.&lt;/p&gt;
function M.NotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotFoundException(t)
	return t
end

local InternalFailureException_keys = { "message" = true, nil }

function M.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalFailureException_keys[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- &lt;p&gt;Internal service error. Retry the call.&lt;/p&gt;
-- @param message [String] &lt;p&gt;Internal service error. Retry the call.&lt;/p&gt;
function M.InternalFailureException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalFailureException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalFailureException(t)
	return t
end

local Button_keys = { "text" = true, "value" = true, nil }

function M.AssertButton(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Button to be of type 'table'")
	assert(struct["text"], "Expected key text to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["text"] then M.AssertButtonTextStringWithLength(struct["text"]) end
	if struct["value"] then M.AssertButtonValueStringWithLength(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(Button_keys[k], "Button contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Button
-- &lt;p&gt;Represents an option to be shown on the client platform (Facebook, Slack, etc.)&lt;/p&gt;
-- @param text [ButtonTextStringWithLength] &lt;p&gt;Text that is visible to the user on the button.&lt;/p&gt;
-- @param value [ButtonValueStringWithLength] &lt;p&gt;The value sent to Amazon Lex when a user chooses the button. For example, consider button text &quot;NYC.&quot; When the user chooses the button, the value sent can be &quot;New York City.&quot;&lt;/p&gt;
-- Required parameter: text
-- Required parameter: value
function M.Button(text, value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Button")
	local t = { 
		["text"] = text,
		["value"] = value,
	}
	M.AssertButton(t)
	return t
end

local UnsupportedMediaTypeException_keys = { "message" = true, nil }

function M.AssertUnsupportedMediaTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedMediaTypeException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedMediaTypeException_keys[k], "UnsupportedMediaTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedMediaTypeException
-- &lt;p&gt;The Content-Type header (&lt;code&gt;PostContent&lt;/code&gt; API) has an invalid value. &lt;/p&gt;
-- @param message [String] &lt;p&gt;The Content-Type header (&lt;code&gt;PostContent&lt;/code&gt; API) has an invalid value. &lt;/p&gt;
function M.UnsupportedMediaTypeException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedMediaTypeException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedMediaTypeException(t)
	return t
end

local BadGatewayException_keys = { "Message" = true, nil }

function M.AssertBadGatewayException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadGatewayException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(BadGatewayException_keys[k], "BadGatewayException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadGatewayException
-- &lt;p&gt;Either the Amazon Lex bot is still building, or one of the dependent services (Amazon Polly, AWS Lambda) failed with an internal service error.&lt;/p&gt;
-- @param Message [ErrorMessage] &lt;p&gt;Either the Amazon Lex bot is still building, or one of the dependent services (Amazon Polly, AWS Lambda) failed with an internal service error.&lt;/p&gt;
function M.BadGatewayException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadGatewayException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertBadGatewayException(t)
	return t
end

local ConflictException_keys = { "message" = true, nil }

function M.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConflictException_keys[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- &lt;p&gt; Two clients are using the same AWS account, Amazon Lex bot, and user ID. &lt;/p&gt;
-- @param message [String] &lt;p&gt; Two clients are using the same AWS account, Amazon Lex bot, and user ID. &lt;/p&gt;
function M.ConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertConflictException(t)
	return t
end

local GenericAttachment_keys = { "buttons" = true, "imageUrl" = true, "attachmentLinkUrl" = true, "subTitle" = true, "title" = true, nil }

function M.AssertGenericAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GenericAttachment to be of type 'table'")
	if struct["buttons"] then M.AssertlistOfButtons(struct["buttons"]) end
	if struct["imageUrl"] then M.AssertStringUrlWithLength(struct["imageUrl"]) end
	if struct["attachmentLinkUrl"] then M.AssertStringUrlWithLength(struct["attachmentLinkUrl"]) end
	if struct["subTitle"] then M.AssertStringWithLength(struct["subTitle"]) end
	if struct["title"] then M.AssertStringWithLength(struct["title"]) end
	for k,_ in pairs(struct) do
		assert(GenericAttachment_keys[k], "GenericAttachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GenericAttachment
-- &lt;p&gt;Represents an option rendered to the user when a prompt is shown. It could be an image, a button, a link, or text. &lt;/p&gt;
-- @param buttons [listOfButtons] &lt;p&gt;The list of options to show to the user.&lt;/p&gt;
-- @param imageUrl [StringUrlWithLength] &lt;p&gt;The URL of an image that is displayed to the user.&lt;/p&gt;
-- @param attachmentLinkUrl [StringUrlWithLength] &lt;p&gt;The URL of an attachment to the response card.&lt;/p&gt;
-- @param subTitle [StringWithLength] &lt;p&gt;The subtitle shown below the title.&lt;/p&gt;
-- @param title [StringWithLength] &lt;p&gt;The title of the option.&lt;/p&gt;
function M.GenericAttachment(buttons, imageUrl, attachmentLinkUrl, subTitle, title, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GenericAttachment")
	local t = { 
		["buttons"] = buttons,
		["imageUrl"] = imageUrl,
		["attachmentLinkUrl"] = attachmentLinkUrl,
		["subTitle"] = subTitle,
		["title"] = title,
	}
	M.AssertGenericAttachment(t)
	return t
end

local PostContentResponse_keys = { "contentType" = true, "slotToElicit" = true, "dialogState" = true, "intentName" = true, "audioStream" = true, "inputTranscript" = true, "slots" = true, "message" = true, "sessionAttributes" = true, nil }

function M.AssertPostContentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostContentResponse to be of type 'table'")
	if struct["contentType"] then M.AssertHttpContentType(struct["contentType"]) end
	if struct["slotToElicit"] then M.AssertString(struct["slotToElicit"]) end
	if struct["dialogState"] then M.AssertDialogState(struct["dialogState"]) end
	if struct["intentName"] then M.AssertIntentName(struct["intentName"]) end
	if struct["audioStream"] then M.AssertBlobStream(struct["audioStream"]) end
	if struct["inputTranscript"] then M.AssertString(struct["inputTranscript"]) end
	if struct["slots"] then M.AssertString(struct["slots"]) end
	if struct["message"] then M.AssertText(struct["message"]) end
	if struct["sessionAttributes"] then M.AssertString(struct["sessionAttributes"]) end
	for k,_ in pairs(struct) do
		assert(PostContentResponse_keys[k], "PostContentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostContentResponse
--  
-- @param contentType [HttpContentType] &lt;p&gt;Content type as specified in the &lt;code&gt;Accept&lt;/code&gt; HTTP header in the request.&lt;/p&gt;
-- @param slotToElicit [String] &lt;p&gt; If the &lt;code&gt;dialogState&lt;/code&gt; value is &lt;code&gt;ElicitSlot&lt;/code&gt;, returns the name of the slot for which Amazon Lex is eliciting a value. &lt;/p&gt;
-- @param dialogState [DialogState] &lt;p&gt;Identifies the current state of the user interaction. Amazon Lex returns one of the following values as &lt;code&gt;dialogState&lt;/code&gt;. The client can optionally use this information to customize the user interface. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ElicitIntent&lt;/code&gt; – Amazon Lex wants to elicit the user's intent. Consider the following examples: &lt;/p&gt; &lt;p&gt; For example, a user might utter an intent (&quot;I want to order a pizza&quot;). If Amazon Lex cannot infer the user intent from this utterance, it will return this dialog state. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ConfirmIntent&lt;/code&gt; – Amazon Lex is expecting a &quot;yes&quot; or &quot;no&quot; response. &lt;/p&gt; &lt;p&gt;For example, Amazon Lex wants user confirmation before fulfilling an intent. Instead of a simple &quot;yes&quot; or &quot;no&quot; response, a user might respond with additional information. For example, &quot;yes, but make it a thick crust pizza&quot; or &quot;no, I want to order a drink.&quot; Amazon Lex can process such additional information (in these examples, update the crust type slot or change the intent from OrderPizza to OrderDrink). &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ElicitSlot&lt;/code&gt; – Amazon Lex is expecting the value of a slot for the current intent. &lt;/p&gt; &lt;p&gt; For example, suppose that in the response Amazon Lex sends this message: &quot;What size pizza would you like?&quot;. A user might reply with the slot value (e.g., &quot;medium&quot;). The user might also provide additional information in the response (e.g., &quot;medium thick crust pizza&quot;). Amazon Lex can process such additional information appropriately. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fulfilled&lt;/code&gt; – Conveys that the Lambda function has successfully fulfilled the intent. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReadyForFulfillment&lt;/code&gt; – Conveys that the client has to fullfill the request. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Failed&lt;/code&gt; – Conveys that the conversation with the user failed. &lt;/p&gt; &lt;p&gt; This can happen for various reasons, including that the user does not provide an appropriate response to prompts from the service (you can configure how many times Amazon Lex can prompt a user for specific information), or if the Lambda function fails to fulfill the intent. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param intentName [IntentName] &lt;p&gt;Current user intent that Amazon Lex is aware of.&lt;/p&gt;
-- @param audioStream [BlobStream] &lt;p&gt;The prompt (or statement) to convey to the user. This is based on the bot configuration and context. For example, if Amazon Lex did not understand the user intent, it sends the &lt;code&gt;clarificationPrompt&lt;/code&gt; configured for the bot. If the intent requires confirmation before taking the fulfillment action, it sends the &lt;code&gt;confirmationPrompt&lt;/code&gt;. Another example: Suppose that the Lambda function successfully fulfilled the intent, and sent a message to convey to the user. Then Amazon Lex sends that message in the response. &lt;/p&gt;
-- @param inputTranscript [String] &lt;p&gt;Transcript of the voice input to the operation.&lt;/p&gt;
-- @param slots [String] &lt;p&gt;Map of zero or more intent slots (name/value pairs) Amazon Lex detected from the user input during the conversation.&lt;/p&gt;
-- @param message [Text] &lt;p&gt; Message to convey to the user. It can come from the bot's configuration or a code hook (Lambda function). If the current intent is not configured with a code hook or if the code hook returned &lt;code&gt;Delegate&lt;/code&gt; as the &lt;code&gt;dialogAction.type&lt;/code&gt; in its response, then Amazon Lex decides the next course of action and selects an appropriate message from the bot configuration based on the current user interaction context. For example, if Amazon Lex is not able to understand the user input, it uses a clarification prompt message (For more information, see the Error Handling section in the Amazon Lex console). Another example: if the intent requires confirmation before fulfillment, then Amazon Lex uses the confirmation prompt message in the intent configuration. If the code hook returns a message, Amazon Lex passes it as-is in its response to the client. &lt;/p&gt;
-- @param sessionAttributes [String] &lt;p&gt; Map of key/value pairs representing the session-specific context information. &lt;/p&gt;
function M.PostContentResponse(contentType, slotToElicit, dialogState, intentName, audioStream, inputTranscript, slots, message, sessionAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PostContentResponse")
	local t = { 
		["contentType"] = contentType,
		["slotToElicit"] = slotToElicit,
		["dialogState"] = dialogState,
		["intentName"] = intentName,
		["audioStream"] = audioStream,
		["inputTranscript"] = inputTranscript,
		["slots"] = slots,
		["message"] = message,
		["sessionAttributes"] = sessionAttributes,
	}
	M.AssertPostContentResponse(t)
	return t
end

local NotAcceptableException_keys = { "message" = true, nil }

function M.AssertNotAcceptableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAcceptableException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NotAcceptableException_keys[k], "NotAcceptableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAcceptableException
-- &lt;p&gt;The accept header in the request does not have a valid value.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The accept header in the request does not have a valid value.&lt;/p&gt;
function M.NotAcceptableException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotAcceptableException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotAcceptableException(t)
	return t
end

local PostTextResponse_keys = { "slotToElicit" = true, "dialogState" = true, "intentName" = true, "responseCard" = true, "slots" = true, "message" = true, "sessionAttributes" = true, nil }

function M.AssertPostTextResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PostTextResponse to be of type 'table'")
	if struct["slotToElicit"] then M.AssertString(struct["slotToElicit"]) end
	if struct["dialogState"] then M.AssertDialogState(struct["dialogState"]) end
	if struct["intentName"] then M.AssertIntentName(struct["intentName"]) end
	if struct["responseCard"] then M.AssertResponseCard(struct["responseCard"]) end
	if struct["slots"] then M.AssertStringMap(struct["slots"]) end
	if struct["message"] then M.AssertText(struct["message"]) end
	if struct["sessionAttributes"] then M.AssertStringMap(struct["sessionAttributes"]) end
	for k,_ in pairs(struct) do
		assert(PostTextResponse_keys[k], "PostTextResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PostTextResponse
--  
-- @param slotToElicit [String] &lt;p&gt;If the &lt;code&gt;dialogState&lt;/code&gt; value is &lt;code&gt;ElicitSlot&lt;/code&gt;, returns the name of the slot for which Amazon Lex is eliciting a value. &lt;/p&gt;
-- @param dialogState [DialogState] &lt;p&gt; Identifies the current state of the user interaction. Amazon Lex returns one of the following values as &lt;code&gt;dialogState&lt;/code&gt;. The client can optionally use this information to customize the user interface. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ElicitIntent&lt;/code&gt; – Amazon Lex wants to elicit user intent. &lt;/p&gt; &lt;p&gt;For example, a user might utter an intent (&quot;I want to order a pizza&quot;). If Amazon Lex cannot infer the user intent from this utterance, it will return this dialogState.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ConfirmIntent&lt;/code&gt; – Amazon Lex is expecting a &quot;yes&quot; or &quot;no&quot; response. &lt;/p&gt; &lt;p&gt; For example, Amazon Lex wants user confirmation before fulfilling an intent. &lt;/p&gt; &lt;p&gt;Instead of a simple &quot;yes&quot; or &quot;no,&quot; a user might respond with additional information. For example, &quot;yes, but make it thick crust pizza&quot; or &quot;no, I want to order a drink&quot;. Amazon Lex can process such additional information (in these examples, update the crust type slot value, or change intent from OrderPizza to OrderDrink).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ElicitSlot&lt;/code&gt; – Amazon Lex is expecting a slot value for the current intent. &lt;/p&gt; &lt;p&gt;For example, suppose that in the response Amazon Lex sends this message: &quot;What size pizza would you like?&quot;. A user might reply with the slot value (e.g., &quot;medium&quot;). The user might also provide additional information in the response (e.g., &quot;medium thick crust pizza&quot;). Amazon Lex can process such additional information appropriately. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fulfilled&lt;/code&gt; – Conveys that the Lambda function configured for the intent has successfully fulfilled the intent. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ReadyForFulfillment&lt;/code&gt; – Conveys that the client has to fulfill the intent. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Failed&lt;/code&gt; – Conveys that the conversation with the user failed. &lt;/p&gt; &lt;p&gt; This can happen for various reasons including that the user did not provide an appropriate response to prompts from the service (you can configure how many times Amazon Lex can prompt a user for specific information), or the Lambda function failed to fulfill the intent. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param intentName [IntentName] &lt;p&gt;The current user intent that Amazon Lex is aware of.&lt;/p&gt;
-- @param responseCard [ResponseCard] &lt;p&gt;Represents the options that the user has to respond to the current prompt. Response Card can come from the bot configuration (in the Amazon Lex console, choose the settings button next to a slot) or from a code hook (Lambda function). &lt;/p&gt;
-- @param slots [StringMap] &lt;p&gt; The intent slots (name/value pairs) that Amazon Lex detected so far from the user input in the conversation. &lt;/p&gt;
-- @param message [Text] &lt;p&gt; A message to convey to the user. It can come from the bot's configuration or a code hook (Lambda function). If the current intent is not configured with a code hook or the code hook returned &lt;code&gt;Delegate&lt;/code&gt; as the &lt;code&gt;dialogAction.type&lt;/code&gt; in its response, then Amazon Lex decides the next course of action and selects an appropriate message from the bot configuration based on the current user interaction context. For example, if Amazon Lex is not able to understand the user input, it uses a clarification prompt message (for more information, see the Error Handling section in the Amazon Lex console). Another example: if the intent requires confirmation before fulfillment, then Amazon Lex uses the confirmation prompt message in the intent configuration. If the code hook returns a message, Amazon Lex passes it as-is in its response to the client. &lt;/p&gt;
-- @param sessionAttributes [StringMap] &lt;p&gt;A map of key-value pairs representing the session-specific context information.&lt;/p&gt;
function M.PostTextResponse(slotToElicit, dialogState, intentName, responseCard, slots, message, sessionAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PostTextResponse")
	local t = { 
		["slotToElicit"] = slotToElicit,
		["dialogState"] = dialogState,
		["intentName"] = intentName,
		["responseCard"] = responseCard,
		["slots"] = slots,
		["message"] = message,
		["sessionAttributes"] = sessionAttributes,
	}
	M.AssertPostTextResponse(t)
	return t
end

function M.AssertHttpContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected HttpContentType to be of type 'string'")
end

--  
function M.HttpContentType(str)
	M.AssertHttpContentType(str)
	return str
end

function M.AssertButtonTextStringWithLength(str)
	assert(str)
	assert(type(str) == "string", "Expected ButtonTextStringWithLength to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ButtonTextStringWithLength(str)
	M.AssertButtonTextStringWithLength(str)
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

function M.AssertUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected UserId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("[0-9a-zA-Z._:-]+"), "Expected string to match pattern '[0-9a-zA-Z._:-]+'")
end

--  
function M.UserId(str)
	M.AssertUserId(str)
	return str
end

function M.AssertIntentName(str)
	assert(str)
	assert(type(str) == "string", "Expected IntentName to be of type 'string'")
end

--  
function M.IntentName(str)
	M.AssertIntentName(str)
	return str
end

function M.AssertStringUrlWithLength(str)
	assert(str)
	assert(type(str) == "string", "Expected StringUrlWithLength to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringUrlWithLength(str)
	M.AssertStringUrlWithLength(str)
	return str
end

function M.AssertButtonValueStringWithLength(str)
	assert(str)
	assert(type(str) == "string", "Expected ButtonValueStringWithLength to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ButtonValueStringWithLength(str)
	M.AssertButtonValueStringWithLength(str)
	return str
end

function M.AssertBotAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected BotAlias to be of type 'string'")
end

--  
function M.BotAlias(str)
	M.AssertBotAlias(str)
	return str
end

function M.AssertStringWithLength(str)
	assert(str)
	assert(type(str) == "string", "Expected StringWithLength to be of type 'string'")
	assert(#str <= 80, "Expected string to be max 80 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StringWithLength(str)
	M.AssertStringWithLength(str)
	return str
end

function M.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
end

--  
function M.ContentType(str)
	M.AssertContentType(str)
	return str
end

function M.AssertText(str)
	assert(str)
	assert(type(str) == "string", "Expected Text to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Text(str)
	M.AssertText(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertDialogState(str)
	assert(str)
	assert(type(str) == "string", "Expected DialogState to be of type 'string'")
end

--  
function M.DialogState(str)
	M.AssertDialogState(str)
	return str
end

function M.AssertAccept(str)
	assert(str)
	assert(type(str) == "string", "Expected Accept to be of type 'string'")
end

--  
function M.Accept(str)
	M.AssertAccept(str)
	return str
end

function M.AssertBotName(str)
	assert(str)
	assert(type(str) == "string", "Expected BotName to be of type 'string'")
end

--  
function M.BotName(str)
	M.AssertBotName(str)
	return str
end

function M.AssertStringMap(map)
	assert(map)
	assert(type(map) == "table", "Expected StringMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.StringMap(map)
	M.AssertStringMap(map)
	return map
end

function M.AssertBlobStream(blob)
	assert(blob)
	assert(type(string) == "string", "Expected BlobStream to be of type 'string'")
end

function M.BlobStream(blob)
	M.AssertBlobStream(blob)
	return blob
end

function M.AssertgenericAttachmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected genericAttachmentList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertGenericAttachment(v)
	end
end

--  
-- List of GenericAttachment objects
function M.genericAttachmentList(list)
	M.AssertgenericAttachmentList(list)
	return list
end

function M.AssertlistOfButtons(list)
	assert(list)
	assert(type(list) == "table", "Expected listOfButtons to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertButton(v)
	end
end

--  
-- List of Button objects
function M.listOfButtons(list)
	M.AssertlistOfButtons(list)
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
			return "runtime.lex.amazonaws.com"
		end
	end
	local ss = { "runtime.lex" }
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
--- PostContent
-- @param PostContentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PostContentAsync(PostContentRequest, cb)
	assert(PostContentRequest, "You must provide a PostContentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PostContent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/bot/{botName}/alias/{botAlias}/user/{userId}/content", PostContentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PostText
-- @param PostTextRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PostTextAsync(PostTextRequest, cb)
	assert(PostTextRequest, "You must provide a PostTextRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PostText",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/bot/{botName}/alias/{botAlias}/user/{userId}/text", PostTextRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
