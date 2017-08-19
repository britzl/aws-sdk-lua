--- GENERATED CODE - DO NOT MODIFY
-- Amazon Lex Model Building Service (lex-models-2017-04-19)

local M = {}

M.metadata = {
	api_version = "2017-04-19",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "models.lex",
	service_abbreviation = "",
	service_full_name = "Amazon Lex Model Building Service",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "lex-models-2017-04-19",
}

local keys = {}
local asserts = {}

keys.GetBotChannelAssociationRequest = { ["botAlias"] = true, ["name"] = true, ["botName"] = true, nil }

function asserts.AssertGetBotChannelAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotChannelAssociationRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	if struct["botAlias"] then asserts.AssertAliasName(struct["botAlias"]) end
	if struct["name"] then asserts.AssertBotChannelName(struct["name"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotChannelAssociationRequest[k], "GetBotChannelAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotChannelAssociationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * botAlias [AliasName] <p>An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.</p>
-- * name [BotChannelName] <p>The name of the association between the bot and the channel. The name is case sensitive. </p>
-- * botName [BotName] <p>The name of the Amazon Lex bot.</p>
-- Required key: name
-- Required key: botName
-- Required key: botAlias
-- @return GetBotChannelAssociationRequest structure as a key-value pair table
function M.GetBotChannelAssociationRequest(args)
	assert(args, "You must provdide an argument table when creating GetBotChannelAssociationRequest")
	local t = { 
		["botAlias"] = args["botAlias"],
		["name"] = args["name"],
		["botName"] = args["botName"],
	}
	asserts.AssertGetBotChannelAssociationRequest(t)
	return t
end

keys.BadRequestException = { ["message"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- <p>The request is not well formed. For example, a value is invalid or a required field is missing. Check the field values, and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return BadRequestException structure as a key-value pair table
function M.BadRequestException(args)
	assert(args, "You must provdide an argument table when creating BadRequestException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertBadRequestException(t)
	return t
end

keys.GetBuiltinSlotTypesResponse = { ["nextToken"] = true, ["slotTypes"] = true, nil }

function asserts.AssertGetBuiltinSlotTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinSlotTypesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["slotTypes"] then asserts.AssertBuiltinSlotTypeMetadataList(struct["slotTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBuiltinSlotTypesResponse[k], "GetBuiltinSlotTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinSlotTypesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If the response is truncated, the response includes a pagination token that you can use in your next request to fetch the next page of slot types.</p>
-- * slotTypes [BuiltinSlotTypeMetadataList] <p>An array of <code>BuiltInSlotTypeMetadata</code> objects, one entry for each slot type returned.</p>
-- @return GetBuiltinSlotTypesResponse structure as a key-value pair table
function M.GetBuiltinSlotTypesResponse(args)
	assert(args, "You must provdide an argument table when creating GetBuiltinSlotTypesResponse")
	local t = { 
		["nextToken"] = args["nextToken"],
		["slotTypes"] = args["slotTypes"],
	}
	asserts.AssertGetBuiltinSlotTypesResponse(t)
	return t
end

keys.Statement = { ["messages"] = true, ["responseCard"] = true, nil }

function asserts.AssertStatement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Statement to be of type 'table'")
	assert(struct["messages"], "Expected key messages to exist in table")
	if struct["messages"] then asserts.AssertMessageList(struct["messages"]) end
	if struct["responseCard"] then asserts.AssertResponseCard(struct["responseCard"]) end
	for k,_ in pairs(struct) do
		assert(keys.Statement[k], "Statement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Statement
-- <p>A collection of messages that convey information to the user. At runtime, Amazon Lex selects the message to convey. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * messages [MessageList] <p>A collection of message objects.</p>
-- * responseCard [ResponseCard] <p> At runtime, if the client is using the API, Amazon Lex includes the response card in the response. It substitutes all of the session attributes and slot values for placeholders in the response card. </p>
-- Required key: messages
-- @return Statement structure as a key-value pair table
function M.Statement(args)
	assert(args, "You must provdide an argument table when creating Statement")
	local t = { 
		["messages"] = args["messages"],
		["responseCard"] = args["responseCard"],
	}
	asserts.AssertStatement(t)
	return t
end

keys.GetBotChannelAssociationsRequest = { ["nameContains"] = true, ["nextToken"] = true, ["botName"] = true, ["maxResults"] = true, ["botAlias"] = true, nil }

function asserts.AssertGetBotChannelAssociationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotChannelAssociationsRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	if struct["nameContains"] then asserts.AssertBotChannelName(struct["nameContains"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["botAlias"] then asserts.AssertAliasNameOrListAll(struct["botAlias"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotChannelAssociationsRequest[k], "GetBotChannelAssociationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotChannelAssociationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nameContains [BotChannelName] <p>Substring to match in channel association names. An association will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To return all bot channel associations, use a hyphen ("-") as the <code>nameContains</code> parameter.</p>
-- * nextToken [NextToken] <p>A pagination token for fetching the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request. </p>
-- * botName [BotName] <p>The name of the Amazon Lex bot in the association.</p>
-- * maxResults [MaxResults] <p>The maximum number of associations to return in the response. The default is 50. </p>
-- * botAlias [AliasNameOrListAll] <p>An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.</p>
-- Required key: botName
-- Required key: botAlias
-- @return GetBotChannelAssociationsRequest structure as a key-value pair table
function M.GetBotChannelAssociationsRequest(args)
	assert(args, "You must provdide an argument table when creating GetBotChannelAssociationsRequest")
	local t = { 
		["nameContains"] = args["nameContains"],
		["nextToken"] = args["nextToken"],
		["botName"] = args["botName"],
		["maxResults"] = args["maxResults"],
		["botAlias"] = args["botAlias"],
	}
	asserts.AssertGetBotChannelAssociationsRequest(t)
	return t
end

keys.CreateIntentVersionRequest = { ["checksum"] = true, ["name"] = true, nil }

function asserts.AssertCreateIntentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIntentVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIntentVersionRequest[k], "CreateIntentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIntentVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checksum [String] <p>Checksum of the <code>$LATEST</code> version of the intent that should be used to create the new version. If you specify a checksum and the <code>$LATEST</code> version of the intent has a different checksum, Amazon Lex returns a <code>PreconditionFailedException</code> exception and doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the <code>$LATEST</code> version.</p>
-- * name [IntentName] <p>The name of the intent that you want to create a new version of. The name is case sensitive. </p>
-- Required key: name
-- @return CreateIntentVersionRequest structure as a key-value pair table
function M.CreateIntentVersionRequest(args)
	assert(args, "You must provdide an argument table when creating CreateIntentVersionRequest")
	local t = { 
		["checksum"] = args["checksum"],
		["name"] = args["name"],
	}
	asserts.AssertCreateIntentVersionRequest(t)
	return t
end

keys.GetBotsResponse = { ["bots"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetBotsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotsResponse to be of type 'table'")
	if struct["bots"] then asserts.AssertBotMetadataList(struct["bots"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotsResponse[k], "GetBotsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bots [BotMetadataList] <p>An array of <code>botMetadata</code> objects, with one entry for each bot. </p>
-- * nextToken [NextToken] <p>If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of bots. </p>
-- @return GetBotsResponse structure as a key-value pair table
function M.GetBotsResponse(args)
	assert(args, "You must provdide an argument table when creating GetBotsResponse")
	local t = { 
		["bots"] = args["bots"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetBotsResponse(t)
	return t
end

keys.GetSlotTypeVersionsResponse = { ["nextToken"] = true, ["slotTypes"] = true, nil }

function asserts.AssertGetSlotTypeVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypeVersionsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["slotTypes"] then asserts.AssertSlotTypeMetadataList(struct["slotTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSlotTypeVersionsResponse[k], "GetSlotTypeVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypeVersionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>
-- * slotTypes [SlotTypeMetadataList] <p>An array of <code>SlotTypeMetadata</code> objects, one for each numbered version of the slot type plus one for the <code>$LATEST</code> version.</p>
-- @return GetSlotTypeVersionsResponse structure as a key-value pair table
function M.GetSlotTypeVersionsResponse(args)
	assert(args, "You must provdide an argument table when creating GetSlotTypeVersionsResponse")
	local t = { 
		["nextToken"] = args["nextToken"],
		["slotTypes"] = args["slotTypes"],
	}
	asserts.AssertGetSlotTypeVersionsResponse(t)
	return t
end

keys.Intent = { ["intentVersion"] = true, ["intentName"] = true, nil }

function asserts.AssertIntent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Intent to be of type 'table'")
	assert(struct["intentName"], "Expected key intentName to exist in table")
	assert(struct["intentVersion"], "Expected key intentVersion to exist in table")
	if struct["intentVersion"] then asserts.AssertVersion(struct["intentVersion"]) end
	if struct["intentName"] then asserts.AssertIntentName(struct["intentName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Intent[k], "Intent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Intent
-- <p>Identifies the specific version of an intent.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * intentVersion [Version] <p>The version of the intent.</p>
-- * intentName [IntentName] <p>The name of the intent.</p>
-- Required key: intentName
-- Required key: intentVersion
-- @return Intent structure as a key-value pair table
function M.Intent(args)
	assert(args, "You must provdide an argument table when creating Intent")
	local t = { 
		["intentVersion"] = args["intentVersion"],
		["intentName"] = args["intentName"],
	}
	asserts.AssertIntent(t)
	return t
end

keys.GetBotChannelAssociationResponse = { ["name"] = true, ["botConfiguration"] = true, ["botAlias"] = true, ["createdDate"] = true, ["type"] = true, ["botName"] = true, ["description"] = true, nil }

function asserts.AssertGetBotChannelAssociationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotChannelAssociationResponse to be of type 'table'")
	if struct["name"] then asserts.AssertBotChannelName(struct["name"]) end
	if struct["botConfiguration"] then asserts.AssertChannelConfigurationMap(struct["botConfiguration"]) end
	if struct["botAlias"] then asserts.AssertAliasName(struct["botAlias"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["type"] then asserts.AssertChannelType(struct["type"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotChannelAssociationResponse[k], "GetBotChannelAssociationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotChannelAssociationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [BotChannelName] <p>The name of the association between the bot and the channel.</p>
-- * botConfiguration [ChannelConfigurationMap] <p>Provides information that the messaging platform needs to communicate with the Amazon Lex bot.</p>
-- * botAlias [AliasName] <p>An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.</p>
-- * createdDate [Timestamp] <p>The date that the association between the bot and the channel was created.</p>
-- * type [ChannelType] <p>The type of the messaging platform.</p>
-- * botName [BotName] <p>The name of the Amazon Lex bot.</p>
-- * description [Description] <p>A description of the association between the bot and the channel.</p>
-- @return GetBotChannelAssociationResponse structure as a key-value pair table
function M.GetBotChannelAssociationResponse(args)
	assert(args, "You must provdide an argument table when creating GetBotChannelAssociationResponse")
	local t = { 
		["name"] = args["name"],
		["botConfiguration"] = args["botConfiguration"],
		["botAlias"] = args["botAlias"],
		["createdDate"] = args["createdDate"],
		["type"] = args["type"],
		["botName"] = args["botName"],
		["description"] = args["description"],
	}
	asserts.AssertGetBotChannelAssociationResponse(t)
	return t
end

keys.GetBuiltinSlotTypesRequest = { ["locale"] = true, ["nextToken"] = true, ["signatureContains"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetBuiltinSlotTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinSlotTypesRequest to be of type 'table'")
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["signatureContains"] then asserts.AssertString(struct["signatureContains"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBuiltinSlotTypesRequest[k], "GetBuiltinSlotTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinSlotTypesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locale [Locale] <p>A list of locales that the slot type supports.</p>
-- * nextToken [NextToken] <p>A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of slot types, specify the pagination token in the next request.</p>
-- * signatureContains [String] <p>Substring to match in built-in slot type signatures. A slot type will be returned if any part of its signature matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."</p>
-- * maxResults [MaxResults] <p>The maximum number of slot types to return in the response. The default is 10.</p>
-- @return GetBuiltinSlotTypesRequest structure as a key-value pair table
function M.GetBuiltinSlotTypesRequest(args)
	assert(args, "You must provdide an argument table when creating GetBuiltinSlotTypesRequest")
	local t = { 
		["locale"] = args["locale"],
		["nextToken"] = args["nextToken"],
		["signatureContains"] = args["signatureContains"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetBuiltinSlotTypesRequest(t)
	return t
end

keys.BuiltinIntentMetadata = { ["supportedLocales"] = true, ["signature"] = true, nil }

function asserts.AssertBuiltinIntentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuiltinIntentMetadata to be of type 'table'")
	if struct["supportedLocales"] then asserts.AssertLocaleList(struct["supportedLocales"]) end
	if struct["signature"] then asserts.AssertBuiltinIntentSignature(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuiltinIntentMetadata[k], "BuiltinIntentMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuiltinIntentMetadata
-- <p>Provides metadata for a built-in intent.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * supportedLocales [LocaleList] <p>A list of identifiers for the locales that the intent supports.</p>
-- * signature [BuiltinIntentSignature] <p>A unique identifier for the built-in intent. To find the signature for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>
-- @return BuiltinIntentMetadata structure as a key-value pair table
function M.BuiltinIntentMetadata(args)
	assert(args, "You must provdide an argument table when creating BuiltinIntentMetadata")
	local t = { 
		["supportedLocales"] = args["supportedLocales"],
		["signature"] = args["signature"],
	}
	asserts.AssertBuiltinIntentMetadata(t)
	return t
end

keys.PutBotAliasResponse = { ["name"] = true, ["checksum"] = true, ["description"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["botName"] = true, ["botVersion"] = true, nil }

function asserts.AssertPutBotAliasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBotAliasResponse to be of type 'table'")
	if struct["name"] then asserts.AssertAliasName(struct["name"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["botVersion"] then asserts.AssertVersion(struct["botVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBotAliasResponse[k], "PutBotAliasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBotAliasResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [AliasName] <p>The name of the alias.</p>
-- * checksum [String] <p>The checksum for the current version of the alias.</p>
-- * description [Description] <p>A description of the alias.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.</p>
-- * createdDate [Timestamp] <p>The date that the bot alias was created.</p>
-- * botName [BotName] <p>The name of the bot that the alias points to.</p>
-- * botVersion [Version] <p>The version of the bot that the alias points to.</p>
-- @return PutBotAliasResponse structure as a key-value pair table
function M.PutBotAliasResponse(args)
	assert(args, "You must provdide an argument table when creating PutBotAliasResponse")
	local t = { 
		["name"] = args["name"],
		["checksum"] = args["checksum"],
		["description"] = args["description"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["botName"] = args["botName"],
		["botVersion"] = args["botVersion"],
	}
	asserts.AssertPutBotAliasResponse(t)
	return t
end

keys.BotChannelAssociation = { ["name"] = true, ["botConfiguration"] = true, ["botAlias"] = true, ["createdDate"] = true, ["type"] = true, ["botName"] = true, ["description"] = true, nil }

function asserts.AssertBotChannelAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BotChannelAssociation to be of type 'table'")
	if struct["name"] then asserts.AssertBotChannelName(struct["name"]) end
	if struct["botConfiguration"] then asserts.AssertChannelConfigurationMap(struct["botConfiguration"]) end
	if struct["botAlias"] then asserts.AssertAliasName(struct["botAlias"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["type"] then asserts.AssertChannelType(struct["type"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.BotChannelAssociation[k], "BotChannelAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BotChannelAssociation
-- <p>Represents an association between an Amazon Lex bot and an external messaging platform.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [BotChannelName] <p>The name of the association between the bot and the channel. </p>
-- * botConfiguration [ChannelConfigurationMap] <p>Provides information necessary to communicate with the messaging platform. </p>
-- * botAlias [AliasName] <p>An alias pointing to the specific version of the Amazon Lex bot to which this association is being made. </p>
-- * createdDate [Timestamp] <p>The date that the association between the Amazon Lex bot and the channel was created. </p>
-- * type [ChannelType] <p>Specifies the type of association by indicating the type of channel being established between the Amazon Lex bot and the external messaging platform.</p>
-- * botName [BotName] <p>The name of the Amazon Lex bot to which this association is being made. </p> <note> <p>Currently, Amazon Lex supports associations with Facebook and Slack, and Twilio.</p> </note>
-- * description [Description] <p>A text description of the association you are creating. </p>
-- @return BotChannelAssociation structure as a key-value pair table
function M.BotChannelAssociation(args)
	assert(args, "You must provdide an argument table when creating BotChannelAssociation")
	local t = { 
		["name"] = args["name"],
		["botConfiguration"] = args["botConfiguration"],
		["botAlias"] = args["botAlias"],
		["createdDate"] = args["createdDate"],
		["type"] = args["type"],
		["botName"] = args["botName"],
		["description"] = args["description"],
	}
	asserts.AssertBotChannelAssociation(t)
	return t
end

keys.CodeHook = { ["uri"] = true, ["messageVersion"] = true, nil }

function asserts.AssertCodeHook(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeHook to be of type 'table'")
	assert(struct["uri"], "Expected key uri to exist in table")
	assert(struct["messageVersion"], "Expected key messageVersion to exist in table")
	if struct["uri"] then asserts.AssertLambdaARN(struct["uri"]) end
	if struct["messageVersion"] then asserts.AssertMessageVersion(struct["messageVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeHook[k], "CodeHook contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeHook
-- <p>Specifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot..</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * uri [LambdaARN] <p>The Amazon Resource Name (ARN) of the Lambda function.</p>
-- * messageVersion [MessageVersion] <p>The version of the request-response that you want Amazon Lex to use to invoke your Lambda function. For more information, see <a>using-lambda</a>.</p>
-- Required key: uri
-- Required key: messageVersion
-- @return CodeHook structure as a key-value pair table
function M.CodeHook(args)
	assert(args, "You must provdide an argument table when creating CodeHook")
	local t = { 
		["uri"] = args["uri"],
		["messageVersion"] = args["messageVersion"],
	}
	asserts.AssertCodeHook(t)
	return t
end

keys.DeleteUtterancesRequest = { ["userId"] = true, ["botName"] = true, nil }

function asserts.AssertDeleteUtterancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUtterancesRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["userId"], "Expected key userId to exist in table")
	if struct["userId"] then asserts.AssertUserId(struct["userId"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUtterancesRequest[k], "DeleteUtterancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUtterancesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * userId [UserId] <p> The unique identifier for the user that made the utterances. This is the user ID that was sent in the or operation request that contained the utterance.</p>
-- * botName [BotName] <p>The name of the bot that stored the utterances.</p>
-- Required key: botName
-- Required key: userId
-- @return DeleteUtterancesRequest structure as a key-value pair table
function M.DeleteUtterancesRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteUtterancesRequest")
	local t = { 
		["userId"] = args["userId"],
		["botName"] = args["botName"],
	}
	asserts.AssertDeleteUtterancesRequest(t)
	return t
end

keys.UtteranceData = { ["count"] = true, ["utteranceString"] = true, ["lastUtteredDate"] = true, ["distinctUsers"] = true, ["firstUtteredDate"] = true, nil }

function asserts.AssertUtteranceData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UtteranceData to be of type 'table'")
	if struct["count"] then asserts.AssertCount(struct["count"]) end
	if struct["utteranceString"] then asserts.AssertUtteranceString(struct["utteranceString"]) end
	if struct["lastUtteredDate"] then asserts.AssertTimestamp(struct["lastUtteredDate"]) end
	if struct["distinctUsers"] then asserts.AssertCount(struct["distinctUsers"]) end
	if struct["firstUtteredDate"] then asserts.AssertTimestamp(struct["firstUtteredDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UtteranceData[k], "UtteranceData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UtteranceData
-- <p>Provides information about a single utterance that was made to your bot. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * count [Count] <p>The number of times that the utterance was processed.</p>
-- * utteranceString [UtteranceString] <p>The text that was entered by the user or the text representation of an audio clip.</p>
-- * lastUtteredDate [Timestamp] <p>The date that the utterance was last recorded.</p>
-- * distinctUsers [Count] <p>The total number of individuals that used the utterance.</p>
-- * firstUtteredDate [Timestamp] <p>The date that the utterance was first recorded.</p>
-- @return UtteranceData structure as a key-value pair table
function M.UtteranceData(args)
	assert(args, "You must provdide an argument table when creating UtteranceData")
	local t = { 
		["count"] = args["count"],
		["utteranceString"] = args["utteranceString"],
		["lastUtteredDate"] = args["lastUtteredDate"],
		["distinctUsers"] = args["distinctUsers"],
		["firstUtteredDate"] = args["firstUtteredDate"],
	}
	asserts.AssertUtteranceData(t)
	return t
end

keys.GetBotResponse = { ["status"] = true, ["intents"] = true, ["name"] = true, ["locale"] = true, ["checksum"] = true, ["createdDate"] = true, ["version"] = true, ["lastUpdatedDate"] = true, ["abortStatement"] = true, ["clarificationPrompt"] = true, ["voiceId"] = true, ["failureReason"] = true, ["childDirected"] = true, ["idleSessionTTLInSeconds"] = true, ["description"] = true, nil }

function asserts.AssertGetBotResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotResponse to be of type 'table'")
	if struct["status"] then asserts.AssertStatus(struct["status"]) end
	if struct["intents"] then asserts.AssertIntentList(struct["intents"]) end
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["abortStatement"] then asserts.AssertStatement(struct["abortStatement"]) end
	if struct["clarificationPrompt"] then asserts.AssertPrompt(struct["clarificationPrompt"]) end
	if struct["voiceId"] then asserts.AssertString(struct["voiceId"]) end
	if struct["failureReason"] then asserts.AssertString(struct["failureReason"]) end
	if struct["childDirected"] then asserts.AssertBoolean(struct["childDirected"]) end
	if struct["idleSessionTTLInSeconds"] then asserts.AssertSessionTTL(struct["idleSessionTTLInSeconds"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotResponse[k], "GetBotResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [Status] <p>The status of the bot. If the bot is ready to run, the status is <code>READY</code>. If there was a problem with building the bot, the status is <code>FAILED</code> and the <code>failureReason</code> explains why the bot did not build. If the bot was saved but not built, the status is <code>NOT BUILT</code>.</p>
-- * intents [IntentList] <p>An array of <code>intent</code> objects. For more information, see .</p>
-- * name [BotName] <p>The name of the bot.</p>
-- * locale [Locale] <p> The target locale for the bot. </p>
-- * checksum [String] <p>Checksum of the bot used to identify a specific revision of the bot's <code>$LATEST</code> version.</p>
-- * createdDate [Timestamp] <p>The date that the bot was created.</p>
-- * version [Version] <p>The version of the bot. For a new bot, the version is always <code>$LATEST</code>.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the bot was updated. When you create a resource, the creation date and last updated date are the same. </p>
-- * abortStatement [Statement] <p>The message that Amazon Lex returns when the user elects to end the conversation without completing it. For more information, see .</p>
-- * clarificationPrompt [Prompt] <p>The message Amazon Lex uses when it doesn't understand the user's request. For more information, see . </p>
-- * voiceId [String] <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. For more information, see .</p>
-- * failureReason [String] <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex explains why it failed to build the bot.</p>
-- * childDirected [Boolean] <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying <code>true</code> or <code>false</code> in the <code>childDirected</code> field. By specifying <code>true</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying <code>false</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is not</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the <code>childDirected</code> field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.</p> <p>If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs#data-security">Amazon Lex FAQ.</a> </p>
-- * idleSessionTTLInSeconds [SessionTTL] <p>The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see .</p>
-- * description [Description] <p>A description of the bot.</p>
-- @return GetBotResponse structure as a key-value pair table
function M.GetBotResponse(args)
	assert(args, "You must provdide an argument table when creating GetBotResponse")
	local t = { 
		["status"] = args["status"],
		["intents"] = args["intents"],
		["name"] = args["name"],
		["locale"] = args["locale"],
		["checksum"] = args["checksum"],
		["createdDate"] = args["createdDate"],
		["version"] = args["version"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["abortStatement"] = args["abortStatement"],
		["clarificationPrompt"] = args["clarificationPrompt"],
		["voiceId"] = args["voiceId"],
		["failureReason"] = args["failureReason"],
		["childDirected"] = args["childDirected"],
		["idleSessionTTLInSeconds"] = args["idleSessionTTLInSeconds"],
		["description"] = args["description"],
	}
	asserts.AssertGetBotResponse(t)
	return t
end

keys.GetIntentsResponse = { ["intents"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetIntentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentsResponse to be of type 'table'")
	if struct["intents"] then asserts.AssertIntentMetadataList(struct["intents"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntentsResponse[k], "GetIntentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * intents [IntentMetadataList] <p>An array of <code>Intent</code> objects. For more information, see .</p>
-- * nextToken [NextToken] <p>If the response is truncated, the response includes a pagination token that you can specify in your next request to fetch the next page of intents. </p>
-- @return GetIntentsResponse structure as a key-value pair table
function M.GetIntentsResponse(args)
	assert(args, "You must provdide an argument table when creating GetIntentsResponse")
	local t = { 
		["intents"] = args["intents"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetIntentsResponse(t)
	return t
end

keys.DeleteBotChannelAssociationRequest = { ["botAlias"] = true, ["name"] = true, ["botName"] = true, nil }

function asserts.AssertDeleteBotChannelAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBotChannelAssociationRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	if struct["botAlias"] then asserts.AssertAliasName(struct["botAlias"]) end
	if struct["name"] then asserts.AssertBotChannelName(struct["name"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBotChannelAssociationRequest[k], "DeleteBotChannelAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBotChannelAssociationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * botAlias [AliasName] <p>An alias that points to the specific version of the Amazon Lex bot to which this association is being made.</p>
-- * name [BotChannelName] <p>The name of the association. The name is case sensitive. </p>
-- * botName [BotName] <p>The name of the Amazon Lex bot.</p>
-- Required key: name
-- Required key: botName
-- Required key: botAlias
-- @return DeleteBotChannelAssociationRequest structure as a key-value pair table
function M.DeleteBotChannelAssociationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBotChannelAssociationRequest")
	local t = { 
		["botAlias"] = args["botAlias"],
		["name"] = args["name"],
		["botName"] = args["botName"],
	}
	asserts.AssertDeleteBotChannelAssociationRequest(t)
	return t
end

keys.Slot = { ["slotType"] = true, ["name"] = true, ["slotConstraint"] = true, ["valueElicitationPrompt"] = true, ["responseCard"] = true, ["priority"] = true, ["slotTypeVersion"] = true, ["sampleUtterances"] = true, ["description"] = true, nil }

function asserts.AssertSlot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Slot to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["slotConstraint"], "Expected key slotConstraint to exist in table")
	if struct["slotType"] then asserts.AssertCustomOrBuiltinSlotTypeName(struct["slotType"]) end
	if struct["name"] then asserts.AssertSlotName(struct["name"]) end
	if struct["slotConstraint"] then asserts.AssertSlotConstraint(struct["slotConstraint"]) end
	if struct["valueElicitationPrompt"] then asserts.AssertPrompt(struct["valueElicitationPrompt"]) end
	if struct["responseCard"] then asserts.AssertResponseCard(struct["responseCard"]) end
	if struct["priority"] then asserts.AssertPriority(struct["priority"]) end
	if struct["slotTypeVersion"] then asserts.AssertVersion(struct["slotTypeVersion"]) end
	if struct["sampleUtterances"] then asserts.AssertSlotUtteranceList(struct["sampleUtterances"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Slot[k], "Slot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Slot
-- <p>Identifies the version of a specific slot.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * slotType [CustomOrBuiltinSlotTypeName] <p>The type of the slot, either a custom slot type that you defined or one of the built-in slot types.</p>
-- * name [SlotName] <p>The name of the slot.</p>
-- * slotConstraint [SlotConstraint] <p>Specifies whether the slot is required or optional. </p>
-- * valueElicitationPrompt [Prompt] <p>The prompt that Amazon Lex uses to elicit the slot value from the user.</p>
-- * responseCard [ResponseCard] <p> A set of possible responses for the slot type used by text-based clients. A user chooses an option from the response card, instead of using text to reply. </p>
-- * priority [Priority] <p> Directs Lex the order in which to elicit this slot value from the user. For example, if the intent has two slots with priorities 1 and 2, AWS Lex first elicits a value for the slot with priority 1.</p> <p>If multiple slots share the same priority, the order in which Lex elicits values is arbitrary.</p>
-- * slotTypeVersion [Version] <p>The version of the slot type.</p>
-- * sampleUtterances [SlotUtteranceList] <p> If you know a specific pattern with which users might respond to an Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This is optional. In most cases, Amazon Lex is capable of understanding user utterances. </p>
-- * description [Description] <p>A description of the slot.</p>
-- Required key: name
-- Required key: slotConstraint
-- @return Slot structure as a key-value pair table
function M.Slot(args)
	assert(args, "You must provdide an argument table when creating Slot")
	local t = { 
		["slotType"] = args["slotType"],
		["name"] = args["name"],
		["slotConstraint"] = args["slotConstraint"],
		["valueElicitationPrompt"] = args["valueElicitationPrompt"],
		["responseCard"] = args["responseCard"],
		["priority"] = args["priority"],
		["slotTypeVersion"] = args["slotTypeVersion"],
		["sampleUtterances"] = args["sampleUtterances"],
		["description"] = args["description"],
	}
	asserts.AssertSlot(t)
	return t
end

keys.PutIntentResponse = { ["dialogCodeHook"] = true, ["confirmationPrompt"] = true, ["followUpPrompt"] = true, ["name"] = true, ["checksum"] = true, ["conclusionStatement"] = true, ["parentIntentSignature"] = true, ["version"] = true, ["rejectionStatement"] = true, ["createdDate"] = true, ["lastUpdatedDate"] = true, ["sampleUtterances"] = true, ["slots"] = true, ["fulfillmentActivity"] = true, ["description"] = true, nil }

function asserts.AssertPutIntentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIntentResponse to be of type 'table'")
	if struct["dialogCodeHook"] then asserts.AssertCodeHook(struct["dialogCodeHook"]) end
	if struct["confirmationPrompt"] then asserts.AssertPrompt(struct["confirmationPrompt"]) end
	if struct["followUpPrompt"] then asserts.AssertFollowUpPrompt(struct["followUpPrompt"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["conclusionStatement"] then asserts.AssertStatement(struct["conclusionStatement"]) end
	if struct["parentIntentSignature"] then asserts.AssertBuiltinIntentSignature(struct["parentIntentSignature"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["rejectionStatement"] then asserts.AssertStatement(struct["rejectionStatement"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["sampleUtterances"] then asserts.AssertIntentUtteranceList(struct["sampleUtterances"]) end
	if struct["slots"] then asserts.AssertSlotList(struct["slots"]) end
	if struct["fulfillmentActivity"] then asserts.AssertFulfillmentActivity(struct["fulfillmentActivity"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutIntentResponse[k], "PutIntentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dialogCodeHook [CodeHook] <p>If defined in the intent, Amazon Lex invokes this Lambda function for each user input.</p>
-- * confirmationPrompt [Prompt] <p>If defined in the intent, Amazon Lex prompts the user to confirm the intent before fulfilling it.</p>
-- * followUpPrompt [FollowUpPrompt] <p>If defined in the intent, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled.</p>
-- * name [IntentName] <p>The name of the intent.</p>
-- * checksum [String] <p>Checksum of the <code>$LATEST</code>version of the intent created or updated.</p>
-- * conclusionStatement [Statement] <p>After the Lambda function specified in the<code>fulfillmentActivity</code>intent fulfills the intent, Amazon Lex conveys this statement to the user.</p>
-- * parentIntentSignature [BuiltinIntentSignature] <p>A unique identifier for the built-in intent that this intent is based on.</p>
-- * version [Version] <p>The version of the intent. For a new intent, the version is always <code>$LATEST</code>.</p>
-- * rejectionStatement [Statement] <p>If the user answers "no" to the question defined in <code>confirmationPrompt</code> Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p>
-- * createdDate [Timestamp] <p>The date that the intent was created.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the intent was updated. When you create a resource, the creation date and last update dates are the same.</p>
-- * sampleUtterances [IntentUtteranceList] <p> An array of sample utterances that are configured for the intent. </p>
-- * slots [SlotList] <p>An array of intent slots that are configured for the intent.</p>
-- * fulfillmentActivity [FulfillmentActivity] <p>If defined in the intent, Amazon Lex invokes this Lambda function to fulfill the intent after the user provides all of the information required by the intent.</p>
-- * description [Description] <p>A description of the intent.</p>
-- @return PutIntentResponse structure as a key-value pair table
function M.PutIntentResponse(args)
	assert(args, "You must provdide an argument table when creating PutIntentResponse")
	local t = { 
		["dialogCodeHook"] = args["dialogCodeHook"],
		["confirmationPrompt"] = args["confirmationPrompt"],
		["followUpPrompt"] = args["followUpPrompt"],
		["name"] = args["name"],
		["checksum"] = args["checksum"],
		["conclusionStatement"] = args["conclusionStatement"],
		["parentIntentSignature"] = args["parentIntentSignature"],
		["version"] = args["version"],
		["rejectionStatement"] = args["rejectionStatement"],
		["createdDate"] = args["createdDate"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["sampleUtterances"] = args["sampleUtterances"],
		["slots"] = args["slots"],
		["fulfillmentActivity"] = args["fulfillmentActivity"],
		["description"] = args["description"],
	}
	asserts.AssertPutIntentResponse(t)
	return t
end

keys.GetIntentVersionsRequest = { ["nextToken"] = true, ["name"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetIntentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentVersionsRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntentVersionsRequest[k], "GetIntentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>A pagination token for fetching the next page of intent versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>
-- * name [IntentName] <p>The name of the intent for which versions should be returned.</p>
-- * maxResults [MaxResults] <p>The maximum number of intent versions to return in the response. The default is 10.</p>
-- Required key: name
-- @return GetIntentVersionsRequest structure as a key-value pair table
function M.GetIntentVersionsRequest(args)
	assert(args, "You must provdide an argument table when creating GetIntentVersionsRequest")
	local t = { 
		["nextToken"] = args["nextToken"],
		["name"] = args["name"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetIntentVersionsRequest(t)
	return t
end

keys.LimitExceededException = { ["message"] = true, ["retryAfterSeconds"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	if struct["retryAfterSeconds"] then asserts.AssertString(struct["retryAfterSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request exceeded a limit. Try your request again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- * retryAfterSeconds [String] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
		["message"] = args["message"],
		["retryAfterSeconds"] = args["retryAfterSeconds"],
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.BotMetadata = { ["status"] = true, ["name"] = true, ["version"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["description"] = true, nil }

function asserts.AssertBotMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BotMetadata to be of type 'table'")
	if struct["status"] then asserts.AssertStatus(struct["status"]) end
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.BotMetadata[k], "BotMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BotMetadata
-- <p>Provides information about a bot. .</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [Status] <p>The status of the bot.</p>
-- * name [BotName] <p>The name of the bot. </p>
-- * version [Version] <p>The version of the bot. For a new bot, the version is always <code>$LATEST</code>.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the bot was updated. When you create a bot, the creation date and last updated date are the same. </p>
-- * createdDate [Timestamp] <p>The date that the bot was created.</p>
-- * description [Description] <p>A description of the bot.</p>
-- @return BotMetadata structure as a key-value pair table
function M.BotMetadata(args)
	assert(args, "You must provdide an argument table when creating BotMetadata")
	local t = { 
		["status"] = args["status"],
		["name"] = args["name"],
		["version"] = args["version"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["description"] = args["description"],
	}
	asserts.AssertBotMetadata(t)
	return t
end

keys.DeleteBotAliasRequest = { ["name"] = true, ["botName"] = true, nil }

function asserts.AssertDeleteBotAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBotAliasRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	if struct["name"] then asserts.AssertAliasName(struct["name"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBotAliasRequest[k], "DeleteBotAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBotAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [AliasName] <p>The name of the alias to delete. The name is case sensitive. </p>
-- * botName [BotName] <p>The name of the bot that the alias points to.</p>
-- Required key: name
-- Required key: botName
-- @return DeleteBotAliasRequest structure as a key-value pair table
function M.DeleteBotAliasRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBotAliasRequest")
	local t = { 
		["name"] = args["name"],
		["botName"] = args["botName"],
	}
	asserts.AssertDeleteBotAliasRequest(t)
	return t
end

keys.GetSlotTypeRequest = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertGetSlotTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypeRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSlotTypeRequest[k], "GetSlotTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [Version] <p>The version of the slot type. </p>
-- * name [SlotTypeName] <p>The name of the slot type. The name is case sensitive. </p>
-- Required key: name
-- Required key: version
-- @return GetSlotTypeRequest structure as a key-value pair table
function M.GetSlotTypeRequest(args)
	assert(args, "You must provdide an argument table when creating GetSlotTypeRequest")
	local t = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertGetSlotTypeRequest(t)
	return t
end

keys.DeleteBotVersionRequest = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertDeleteBotVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBotVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then asserts.AssertNumericalVersion(struct["version"]) end
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBotVersionRequest[k], "DeleteBotVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBotVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [NumericalVersion] <p>The version of the bot to delete. You cannot delete the <code>$LATEST</code> version of the bot. To delete the <code>$LATEST</code> version, use the operation.</p>
-- * name [BotName] <p>The name of the bot.</p>
-- Required key: name
-- Required key: version
-- @return DeleteBotVersionRequest structure as a key-value pair table
function M.DeleteBotVersionRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBotVersionRequest")
	local t = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertDeleteBotVersionRequest(t)
	return t
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The resource specified in the request was not found. Check the resource and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provdide an argument table when creating NotFoundException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertNotFoundException(t)
	return t
end

keys.IntentMetadata = { ["version"] = true, ["createdDate"] = true, ["name"] = true, ["lastUpdatedDate"] = true, ["description"] = true, nil }

function asserts.AssertIntentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntentMetadata to be of type 'table'")
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.IntentMetadata[k], "IntentMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntentMetadata
-- <p>Provides information about an intent.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [Version] <p>The version of the intent.</p>
-- * createdDate [Timestamp] <p>The date that the intent was created.</p>
-- * name [IntentName] <p>The name of the intent.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the intent was updated. When you create an intent, the creation date and last updated date are the same.</p>
-- * description [Description] <p>A description of the intent.</p>
-- @return IntentMetadata structure as a key-value pair table
function M.IntentMetadata(args)
	assert(args, "You must provdide an argument table when creating IntentMetadata")
	local t = { 
		["version"] = args["version"],
		["createdDate"] = args["createdDate"],
		["name"] = args["name"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["description"] = args["description"],
	}
	asserts.AssertIntentMetadata(t)
	return t
end

keys.GetSlotTypesRequest = { ["nameContains"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetSlotTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypesRequest to be of type 'table'")
	if struct["nameContains"] then asserts.AssertSlotTypeName(struct["nameContains"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSlotTypesRequest[k], "GetSlotTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nameContains [SlotTypeName] <p>Substring to match in slot type names. A slot type will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."</p>
-- * nextToken [NextToken] <p>A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch next page of slot types, specify the pagination token in the next request.</p>
-- * maxResults [MaxResults] <p>The maximum number of slot types to return in the response. The default is 10.</p>
-- @return GetSlotTypesRequest structure as a key-value pair table
function M.GetSlotTypesRequest(args)
	assert(args, "You must provdide an argument table when creating GetSlotTypesRequest")
	local t = { 
		["nameContains"] = args["nameContains"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetSlotTypesRequest(t)
	return t
end

keys.CreateBotVersionRequest = { ["checksum"] = true, ["name"] = true, nil }

function asserts.AssertCreateBotVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBotVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBotVersionRequest[k], "CreateBotVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBotVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checksum [String] <p>Identifies a specific revision of the <code>$LATEST</code> version of the bot. If you specify a checksum and the <code>$LATEST</code> version of the bot has a different checksum, a <code>PreconditionFailedException</code> exception is returned and Amazon Lex doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the <code>$LATEST</code> version.</p>
-- * name [BotName] <p>The name of the bot that you want to create a new version of. The name is case sensitive. </p>
-- Required key: name
-- @return CreateBotVersionRequest structure as a key-value pair table
function M.CreateBotVersionRequest(args)
	assert(args, "You must provdide an argument table when creating CreateBotVersionRequest")
	local t = { 
		["checksum"] = args["checksum"],
		["name"] = args["name"],
	}
	asserts.AssertCreateBotVersionRequest(t)
	return t
end

keys.GetSlotTypeVersionsRequest = { ["nextToken"] = true, ["name"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetSlotTypeVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypeVersionsRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSlotTypeVersionsRequest[k], "GetSlotTypeVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypeVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>
-- * name [SlotTypeName] <p>The name of the slot type for which versions should be returned.</p>
-- * maxResults [MaxResults] <p>The maximum number of slot type versions to return in the response. The default is 10.</p>
-- Required key: name
-- @return GetSlotTypeVersionsRequest structure as a key-value pair table
function M.GetSlotTypeVersionsRequest(args)
	assert(args, "You must provdide an argument table when creating GetSlotTypeVersionsRequest")
	local t = { 
		["nextToken"] = args["nextToken"],
		["name"] = args["name"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetSlotTypeVersionsRequest(t)
	return t
end

keys.GetSlotTypeResponse = { ["name"] = true, ["enumerationValues"] = true, ["checksum"] = true, ["version"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["description"] = true, nil }

function asserts.AssertGetSlotTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypeResponse to be of type 'table'")
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	if struct["enumerationValues"] then asserts.AssertEnumerationValues(struct["enumerationValues"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSlotTypeResponse[k], "GetSlotTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [SlotTypeName] <p>The name of the slot type.</p>
-- * enumerationValues [EnumerationValues] <p>A list of <code>EnumerationValue</code> objects that defines the values that the slot type can take.</p>
-- * checksum [String] <p>Checksum of the <code>$LATEST</code> version of the slot type.</p>
-- * version [Version] <p>The version of the slot type.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.</p>
-- * createdDate [Timestamp] <p>The date that the slot type was created.</p>
-- * description [Description] <p>A description of the slot type.</p>
-- @return GetSlotTypeResponse structure as a key-value pair table
function M.GetSlotTypeResponse(args)
	assert(args, "You must provdide an argument table when creating GetSlotTypeResponse")
	local t = { 
		["name"] = args["name"],
		["enumerationValues"] = args["enumerationValues"],
		["checksum"] = args["checksum"],
		["version"] = args["version"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["description"] = args["description"],
	}
	asserts.AssertGetSlotTypeResponse(t)
	return t
end

keys.Prompt = { ["maxAttempts"] = true, ["messages"] = true, ["responseCard"] = true, nil }

function asserts.AssertPrompt(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Prompt to be of type 'table'")
	assert(struct["messages"], "Expected key messages to exist in table")
	assert(struct["maxAttempts"], "Expected key maxAttempts to exist in table")
	if struct["maxAttempts"] then asserts.AssertPromptMaxAttempts(struct["maxAttempts"]) end
	if struct["messages"] then asserts.AssertMessageList(struct["messages"]) end
	if struct["responseCard"] then asserts.AssertResponseCard(struct["responseCard"]) end
	for k,_ in pairs(struct) do
		assert(keys.Prompt[k], "Prompt contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Prompt
-- <p>Obtains information from the user. To define a prompt, provide one or more messages and specify the number of attempts to get information from the user. If you provide more than one message, Amazon Lex chooses one of the messages to use to prompt the user. For more information, see <a>how-it-works</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * maxAttempts [PromptMaxAttempts] <p>The number of times to prompt the user for information.</p>
-- * messages [MessageList] <p>An array of objects, each of which provides a message string and its type. You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).</p>
-- * responseCard [ResponseCard] <p>A response card. Amazon Lex uses this prompt at runtime, in the <code>PostText</code> API response. It substitutes session attributes and slot values for placeholders in the response card. For more information, see <a>ex-resp-card</a>. </p>
-- Required key: messages
-- Required key: maxAttempts
-- @return Prompt structure as a key-value pair table
function M.Prompt(args)
	assert(args, "You must provdide an argument table when creating Prompt")
	local t = { 
		["maxAttempts"] = args["maxAttempts"],
		["messages"] = args["messages"],
		["responseCard"] = args["responseCard"],
	}
	asserts.AssertPrompt(t)
	return t
end

keys.DeleteIntentRequest = { ["name"] = true, nil }

function asserts.AssertDeleteIntentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIntentRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIntentRequest[k], "DeleteIntentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIntentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [IntentName] <p>The name of the intent. The name is case sensitive. </p>
-- Required key: name
-- @return DeleteIntentRequest structure as a key-value pair table
function M.DeleteIntentRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteIntentRequest")
	local t = { 
		["name"] = args["name"],
	}
	asserts.AssertDeleteIntentRequest(t)
	return t
end

keys.ResourceInUseException = { ["exampleReference"] = true, ["referenceType"] = true, nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["exampleReference"] then asserts.AssertResourceReference(struct["exampleReference"]) end
	if struct["referenceType"] then asserts.AssertReferenceType(struct["referenceType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The resource that you are attempting to delete is referred to by another resource. Use this information to remove references to the resource that you are trying to delete.</p> <p>The body of the exception contains a JSON object that describes the resource.</p> <p> <code>{ "resourceType": BOT | BOTALIAS | BOTCHANNEL | INTENT,</code> </p> <p> <code>"resourceReference": {</code> </p> <p> <code>"name": <i>string</i>, "version": <i>string</i> } }</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exampleReference [ResourceReference] 
-- * referenceType [ReferenceType] 
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provdide an argument table when creating ResourceInUseException")
	local t = { 
		["exampleReference"] = args["exampleReference"],
		["referenceType"] = args["referenceType"],
	}
	asserts.AssertResourceInUseException(t)
	return t
end

keys.GetBuiltinIntentRequest = { ["signature"] = true, nil }

function asserts.AssertGetBuiltinIntentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinIntentRequest to be of type 'table'")
	assert(struct["signature"], "Expected key signature to exist in table")
	if struct["signature"] then asserts.AssertBuiltinIntentSignature(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBuiltinIntentRequest[k], "GetBuiltinIntentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinIntentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * signature [BuiltinIntentSignature] <p>The unique identifier for a built-in intent. To find the signature for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>
-- Required key: signature
-- @return GetBuiltinIntentRequest structure as a key-value pair table
function M.GetBuiltinIntentRequest(args)
	assert(args, "You must provdide an argument table when creating GetBuiltinIntentRequest")
	local t = { 
		["signature"] = args["signature"],
	}
	asserts.AssertGetBuiltinIntentRequest(t)
	return t
end

keys.Message = { ["content"] = true, ["contentType"] = true, nil }

function asserts.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	assert(struct["contentType"], "Expected key contentType to exist in table")
	assert(struct["content"], "Expected key content to exist in table")
	if struct["content"] then asserts.AssertContentString(struct["content"]) end
	if struct["contentType"] then asserts.AssertContentType(struct["contentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.Message[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- <p>The message object that provides the message text and its type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * content [ContentString] <p>The text of the message.</p>
-- * contentType [ContentType] <p>The content type of the message string.</p>
-- Required key: contentType
-- Required key: content
-- @return Message structure as a key-value pair table
function M.Message(args)
	assert(args, "You must provdide an argument table when creating Message")
	local t = { 
		["content"] = args["content"],
		["contentType"] = args["contentType"],
	}
	asserts.AssertMessage(t)
	return t
end

keys.GetIntentResponse = { ["dialogCodeHook"] = true, ["confirmationPrompt"] = true, ["followUpPrompt"] = true, ["name"] = true, ["checksum"] = true, ["conclusionStatement"] = true, ["parentIntentSignature"] = true, ["version"] = true, ["rejectionStatement"] = true, ["createdDate"] = true, ["lastUpdatedDate"] = true, ["sampleUtterances"] = true, ["slots"] = true, ["fulfillmentActivity"] = true, ["description"] = true, nil }

function asserts.AssertGetIntentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentResponse to be of type 'table'")
	if struct["dialogCodeHook"] then asserts.AssertCodeHook(struct["dialogCodeHook"]) end
	if struct["confirmationPrompt"] then asserts.AssertPrompt(struct["confirmationPrompt"]) end
	if struct["followUpPrompt"] then asserts.AssertFollowUpPrompt(struct["followUpPrompt"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["conclusionStatement"] then asserts.AssertStatement(struct["conclusionStatement"]) end
	if struct["parentIntentSignature"] then asserts.AssertBuiltinIntentSignature(struct["parentIntentSignature"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["rejectionStatement"] then asserts.AssertStatement(struct["rejectionStatement"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["sampleUtterances"] then asserts.AssertIntentUtteranceList(struct["sampleUtterances"]) end
	if struct["slots"] then asserts.AssertSlotList(struct["slots"]) end
	if struct["fulfillmentActivity"] then asserts.AssertFulfillmentActivity(struct["fulfillmentActivity"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntentResponse[k], "GetIntentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dialogCodeHook [CodeHook] <p>If defined in the bot, Amazon Amazon Lex invokes this Lambda function for each user input. For more information, see . </p>
-- * confirmationPrompt [Prompt] <p>If defined in the bot, Amazon Lex uses prompt to confirm the intent before fulfilling the user's request. For more information, see . </p>
-- * followUpPrompt [FollowUpPrompt] <p>If defined in the bot, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled. For more information, see .</p>
-- * name [IntentName] <p>The name of the intent.</p>
-- * checksum [String] <p>Checksum of the intent.</p>
-- * conclusionStatement [Statement] <p>After the Lambda function specified in the <code>fulfillmentActivity</code> element fulfills the intent, Amazon Lex conveys this statement to the user.</p>
-- * parentIntentSignature [BuiltinIntentSignature] <p>A unique identifier for a built-in intent.</p>
-- * version [Version] <p>The version of the intent.</p>
-- * rejectionStatement [Statement] <p>If the user answers "no" to the question defined in <code>confirmationPrompt</code>, Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p>
-- * createdDate [Timestamp] <p>The date that the intent was created.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the intent was updated. When you create a resource, the creation date and the last updated date are the same. </p>
-- * sampleUtterances [IntentUtteranceList] <p>An array of sample utterances configured for the intent.</p>
-- * slots [SlotList] <p>An array of intent slots configured for the intent.</p>
-- * fulfillmentActivity [FulfillmentActivity] <p>Describes how the intent is fulfilled. For more information, see . </p>
-- * description [Description] <p>A description of the intent.</p>
-- @return GetIntentResponse structure as a key-value pair table
function M.GetIntentResponse(args)
	assert(args, "You must provdide an argument table when creating GetIntentResponse")
	local t = { 
		["dialogCodeHook"] = args["dialogCodeHook"],
		["confirmationPrompt"] = args["confirmationPrompt"],
		["followUpPrompt"] = args["followUpPrompt"],
		["name"] = args["name"],
		["checksum"] = args["checksum"],
		["conclusionStatement"] = args["conclusionStatement"],
		["parentIntentSignature"] = args["parentIntentSignature"],
		["version"] = args["version"],
		["rejectionStatement"] = args["rejectionStatement"],
		["createdDate"] = args["createdDate"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["sampleUtterances"] = args["sampleUtterances"],
		["slots"] = args["slots"],
		["fulfillmentActivity"] = args["fulfillmentActivity"],
		["description"] = args["description"],
	}
	asserts.AssertGetIntentResponse(t)
	return t
end

keys.PutIntentRequest = { ["dialogCodeHook"] = true, ["confirmationPrompt"] = true, ["followUpPrompt"] = true, ["name"] = true, ["checksum"] = true, ["conclusionStatement"] = true, ["parentIntentSignature"] = true, ["rejectionStatement"] = true, ["sampleUtterances"] = true, ["slots"] = true, ["fulfillmentActivity"] = true, ["description"] = true, nil }

function asserts.AssertPutIntentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIntentRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["dialogCodeHook"] then asserts.AssertCodeHook(struct["dialogCodeHook"]) end
	if struct["confirmationPrompt"] then asserts.AssertPrompt(struct["confirmationPrompt"]) end
	if struct["followUpPrompt"] then asserts.AssertFollowUpPrompt(struct["followUpPrompt"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["conclusionStatement"] then asserts.AssertStatement(struct["conclusionStatement"]) end
	if struct["parentIntentSignature"] then asserts.AssertBuiltinIntentSignature(struct["parentIntentSignature"]) end
	if struct["rejectionStatement"] then asserts.AssertStatement(struct["rejectionStatement"]) end
	if struct["sampleUtterances"] then asserts.AssertIntentUtteranceList(struct["sampleUtterances"]) end
	if struct["slots"] then asserts.AssertSlotList(struct["slots"]) end
	if struct["fulfillmentActivity"] then asserts.AssertFulfillmentActivity(struct["fulfillmentActivity"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutIntentRequest[k], "PutIntentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dialogCodeHook [CodeHook] <p> Specifies a Lambda function to invoke for each user input. You can invoke this Lambda function to personalize user interaction. </p> <p>For example, suppose your bot determines that the user is John. Your Lambda function might retrieve John's information from a backend database and prepopulate some of the values. For example, if you find that John is gluten intolerant, you might set the corresponding intent slot, <code>GlutenIntolerant</code>, to true. You might find John's phone number and set the corresponding session attribute. </p>
-- * confirmationPrompt [Prompt] <p>Prompts the user to confirm the intent. This question should have a yes or no answer.</p> <p>Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. For example, with the <code>OrderPizza</code> intent, you might want to confirm that the order is correct before placing it. For other intents, such as intents that simply respond to user questions, you might not need to ask the user for confirmation before providing the information. </p> <note> <p>You you must provide both the <code>rejectionStatement</code> and the <code>confirmationPrompt</code>, or neither.</p> </note>
-- * followUpPrompt [FollowUpPrompt] <p>A user prompt for additional activity after an intent is fulfilled. For example, after the <code>OrderPizza</code> intent is fulfilled (your Lambda function placed an order with a pizzeria), you might prompt the user to find if they want to order a drink (assuming that you have defined an <code>OrderDrink</code> intent in your bot).</p> <note> <p>The <code>followUpPrompt</code> and <code>conclusionStatement</code> are mutually exclusive. You can specify only one. For example, your bot may not solicit both the following: </p> <p> Follow up prompt - "<code>$session.FirstName</code>, your pizza order has been placed. Would you like to order a drink or a dessert?" </p> <p> Conclusion statement - "<code>$session.FirstName</code>, your pizza order has been placed." </p> </note>
-- * name [IntentName] <p>The name of the intent. The name is <i>not</i> case sensitive. </p> <p>The name can't match a built-in intent name, or a built-in intent name with "AMAZON." removed. For example, because there is a built-in intent called <code>AMAZON.HelpIntent</code>, you can't create a custom intent called <code>HelpIntent</code>.</p> <p>For a list of built-in intents, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>
-- * checksum [String] <p>Identifies a specific revision of the <code>$LATEST</code> version.</p> <p>When you create a new intent, leave the <code>checksum</code> field blank. If you specify a checksum you get a <code>BadRequestException</code> exception.</p> <p>When you want to update a intent, set the <code>checksum</code> field to the checksum of the most recent revision of the <code>$LATEST</code> version. If you don't specify the <code> checksum</code> field, or if the checksum does not match the <code>$LATEST</code> version, you get a <code>PreconditionFailedException</code> exception.</p>
-- * conclusionStatement [Statement] <p> The statement that you want Amazon Lex to convey to the user after the intent is successfully fulfilled by the Lambda function. </p> <p>This element is relevant only if you provide a Lambda function in the <code>fulfillmentActivity</code>. If you return the intent to the client application, you can't specify this element.</p> <note> <p>The <code>followUpPrompt</code> and <code>conclusionStatement</code> are mutually exclusive. You can specify only one.</p> </note>
-- * parentIntentSignature [BuiltinIntentSignature] <p>A unique identifier for the built-in intent to base this intent on. To find the signature for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>
-- * rejectionStatement [Statement] <p>When the user answers "no" to the question defined in <code>confirmationPrompt</code>, Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p> <note> <p>You must provide both the <code>rejectionStatement</code> and the <code>confirmationPrompt</code>, or neither.</p> </note>
-- * sampleUtterances [IntentUtteranceList] <p>An array of utterances (strings) that a user might say to signal the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity} {PizzaSize} pizzas". </p> <p>In each utterance, a slot name is enclosed in curly braces. </p>
-- * slots [SlotList] <p>An array of intent slots. At runtime, Amazon Lex elicits required slot values from the user using prompts defined in the slots. For more information, see &lt;xref linkend="how-it-works"/&gt;. </p>
-- * fulfillmentActivity [FulfillmentActivity] <p> Describes how the intent is fulfilled. For example, after a user provides all of the information for a pizza order, <code>fulfillmentActivity</code> defines how the bot places an order with a local pizza store. </p> <p> You might configure Amazon Lex to return all of the intent information to the client application, or direct it to invoke a Lambda function that can process the intent (for example, place an order with a pizzeria). </p>
-- * description [Description] <p>A description of the intent.</p>
-- Required key: name
-- @return PutIntentRequest structure as a key-value pair table
function M.PutIntentRequest(args)
	assert(args, "You must provdide an argument table when creating PutIntentRequest")
	local t = { 
		["dialogCodeHook"] = args["dialogCodeHook"],
		["confirmationPrompt"] = args["confirmationPrompt"],
		["followUpPrompt"] = args["followUpPrompt"],
		["name"] = args["name"],
		["checksum"] = args["checksum"],
		["conclusionStatement"] = args["conclusionStatement"],
		["parentIntentSignature"] = args["parentIntentSignature"],
		["rejectionStatement"] = args["rejectionStatement"],
		["sampleUtterances"] = args["sampleUtterances"],
		["slots"] = args["slots"],
		["fulfillmentActivity"] = args["fulfillmentActivity"],
		["description"] = args["description"],
	}
	asserts.AssertPutIntentRequest(t)
	return t
end

keys.GetBotChannelAssociationsResponse = { ["nextToken"] = true, ["botChannelAssociations"] = true, nil }

function asserts.AssertGetBotChannelAssociationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotChannelAssociationsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["botChannelAssociations"] then asserts.AssertBotChannelAssociationList(struct["botChannelAssociations"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotChannelAssociationsResponse[k], "GetBotChannelAssociationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotChannelAssociationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>A pagination token that fetches the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request. </p>
-- * botChannelAssociations [BotChannelAssociationList] <p>An array of objects, one for each association, that provides information about the Amazon Lex bot and its association with the channel. </p>
-- @return GetBotChannelAssociationsResponse structure as a key-value pair table
function M.GetBotChannelAssociationsResponse(args)
	assert(args, "You must provdide an argument table when creating GetBotChannelAssociationsResponse")
	local t = { 
		["nextToken"] = args["nextToken"],
		["botChannelAssociations"] = args["botChannelAssociations"],
	}
	asserts.AssertGetBotChannelAssociationsResponse(t)
	return t
end

keys.PutBotResponse = { ["status"] = true, ["intents"] = true, ["name"] = true, ["locale"] = true, ["checksum"] = true, ["createdDate"] = true, ["version"] = true, ["lastUpdatedDate"] = true, ["abortStatement"] = true, ["clarificationPrompt"] = true, ["voiceId"] = true, ["failureReason"] = true, ["childDirected"] = true, ["idleSessionTTLInSeconds"] = true, ["description"] = true, nil }

function asserts.AssertPutBotResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBotResponse to be of type 'table'")
	if struct["status"] then asserts.AssertStatus(struct["status"]) end
	if struct["intents"] then asserts.AssertIntentList(struct["intents"]) end
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["abortStatement"] then asserts.AssertStatement(struct["abortStatement"]) end
	if struct["clarificationPrompt"] then asserts.AssertPrompt(struct["clarificationPrompt"]) end
	if struct["voiceId"] then asserts.AssertString(struct["voiceId"]) end
	if struct["failureReason"] then asserts.AssertString(struct["failureReason"]) end
	if struct["childDirected"] then asserts.AssertBoolean(struct["childDirected"]) end
	if struct["idleSessionTTLInSeconds"] then asserts.AssertSessionTTL(struct["idleSessionTTLInSeconds"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBotResponse[k], "PutBotResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBotResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [Status] <p> When you send a request to create a bot with <code>processBehavior</code> set to <code>BUILD</code>, Amazon Lex sets the <code>status</code> response element to <code>BUILDING</code>. After Amazon Lex builds the bot, it sets <code>status</code> to <code>READY</code>. If Amazon Lex can't build the bot, Amazon Lex sets <code>status</code> to <code>FAILED</code>. Amazon Lex returns the reason for the failure in the <code>failureReason</code> response element. </p> <p>When you set <code>processBehavior</code>to <code>SAVE</code>, Amazon Lex sets the status code to <code>NOT BUILT</code>.</p>
-- * intents [IntentList] <p>An array of <code>Intent</code> objects. For more information, see .</p>
-- * name [BotName] <p>The name of the bot.</p>
-- * locale [Locale] <p> The target locale for the bot. </p>
-- * checksum [String] <p>Checksum of the bot that you created.</p>
-- * createdDate [Timestamp] <p>The date that the bot was created.</p>
-- * version [Version] <p>The version of the bot. For a new bot, the version is always <code>$LATEST</code>.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the bot was updated. When you create a resource, the creation date and last updated date are the same.</p>
-- * abortStatement [Statement] <p>The message that Amazon Lex uses to abort a conversation. For more information, see .</p>
-- * clarificationPrompt [Prompt] <p> The prompts that Amazon Lex uses when it doesn't understand the user's intent. For more information, see . </p>
-- * voiceId [String] <p>The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. For more information, see .</p>
-- * failureReason [String] <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the reason that it failed to build the bot.</p>
-- * childDirected [Boolean] <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying <code>true</code> or <code>false</code> in the <code>childDirected</code> field. By specifying <code>true</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying <code>false</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is not</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the <code>childDirected</code> field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.</p> <p>If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs#data-security">Amazon Lex FAQ.</a> </p>
-- * idleSessionTTLInSeconds [SessionTTL] <p>The maximum length of time that Amazon Lex retains the data gathered in a conversation. For more information, see .</p>
-- * description [Description] <p>A description of the bot.</p>
-- @return PutBotResponse structure as a key-value pair table
function M.PutBotResponse(args)
	assert(args, "You must provdide an argument table when creating PutBotResponse")
	local t = { 
		["status"] = args["status"],
		["intents"] = args["intents"],
		["name"] = args["name"],
		["locale"] = args["locale"],
		["checksum"] = args["checksum"],
		["createdDate"] = args["createdDate"],
		["version"] = args["version"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["abortStatement"] = args["abortStatement"],
		["clarificationPrompt"] = args["clarificationPrompt"],
		["voiceId"] = args["voiceId"],
		["failureReason"] = args["failureReason"],
		["childDirected"] = args["childDirected"],
		["idleSessionTTLInSeconds"] = args["idleSessionTTLInSeconds"],
		["description"] = args["description"],
	}
	asserts.AssertPutBotResponse(t)
	return t
end

keys.GetIntentsRequest = { ["nameContains"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetIntentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentsRequest to be of type 'table'")
	if struct["nameContains"] then asserts.AssertIntentName(struct["nameContains"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntentsRequest[k], "GetIntentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nameContains [IntentName] <p>Substring to match in intent names. An intent will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."</p>
-- * nextToken [NextToken] <p>A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request. </p>
-- * maxResults [MaxResults] <p>The maximum number of intents to return in the response. The default is 10.</p>
-- @return GetIntentsRequest structure as a key-value pair table
function M.GetIntentsRequest(args)
	assert(args, "You must provdide an argument table when creating GetIntentsRequest")
	local t = { 
		["nameContains"] = args["nameContains"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetIntentsRequest(t)
	return t
end

keys.DeleteBotRequest = { ["name"] = true, nil }

function asserts.AssertDeleteBotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBotRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteBotRequest[k], "DeleteBotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [BotName] <p>The name of the bot. The name is case sensitive. </p>
-- Required key: name
-- @return DeleteBotRequest structure as a key-value pair table
function M.DeleteBotRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteBotRequest")
	local t = { 
		["name"] = args["name"],
	}
	asserts.AssertDeleteBotRequest(t)
	return t
end

keys.GetUtterancesViewResponse = { ["botName"] = true, ["utterances"] = true, nil }

function asserts.AssertGetUtterancesViewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUtterancesViewResponse to be of type 'table'")
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["utterances"] then asserts.AssertListsOfUtterances(struct["utterances"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUtterancesViewResponse[k], "GetUtterancesViewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUtterancesViewResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * botName [BotName] <p>The name of the bot for which utterance information was returned.</p>
-- * utterances [ListsOfUtterances] <p>An array of objects, each containing a list of objects describing the utterances that were processed by your bot. The response contains a maximum of 100 <code>UtteranceData</code> objects for each version.</p>
-- @return GetUtterancesViewResponse structure as a key-value pair table
function M.GetUtterancesViewResponse(args)
	assert(args, "You must provdide an argument table when creating GetUtterancesViewResponse")
	local t = { 
		["botName"] = args["botName"],
		["utterances"] = args["utterances"],
	}
	asserts.AssertGetUtterancesViewResponse(t)
	return t
end

keys.GetBotAliasRequest = { ["name"] = true, ["botName"] = true, nil }

function asserts.AssertGetBotAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotAliasRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	if struct["name"] then asserts.AssertAliasName(struct["name"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotAliasRequest[k], "GetBotAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [AliasName] <p>The name of the bot alias. The name is case sensitive.</p>
-- * botName [BotName] <p>The name of the bot.</p>
-- Required key: name
-- Required key: botName
-- @return GetBotAliasRequest structure as a key-value pair table
function M.GetBotAliasRequest(args)
	assert(args, "You must provdide an argument table when creating GetBotAliasRequest")
	local t = { 
		["name"] = args["name"],
		["botName"] = args["botName"],
	}
	asserts.AssertGetBotAliasRequest(t)
	return t
end

keys.BotAliasMetadata = { ["name"] = true, ["checksum"] = true, ["description"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["botName"] = true, ["botVersion"] = true, nil }

function asserts.AssertBotAliasMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BotAliasMetadata to be of type 'table'")
	if struct["name"] then asserts.AssertAliasName(struct["name"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["botVersion"] then asserts.AssertVersion(struct["botVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.BotAliasMetadata[k], "BotAliasMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BotAliasMetadata
-- <p>Provides information about a bot alias.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [AliasName] <p>The name of the bot alias.</p>
-- * checksum [String] <p>Checksum of the bot alias.</p>
-- * description [Description] <p>A description of the bot alias.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the bot alias was updated. When you create a resource, the creation date and last updated date are the same.</p>
-- * createdDate [Timestamp] <p>The date that the bot alias was created.</p>
-- * botName [BotName] <p>The name of the bot to which the alias points.</p>
-- * botVersion [Version] <p>The version of the Amazon Lex bot to which the alias points.</p>
-- @return BotAliasMetadata structure as a key-value pair table
function M.BotAliasMetadata(args)
	assert(args, "You must provdide an argument table when creating BotAliasMetadata")
	local t = { 
		["name"] = args["name"],
		["checksum"] = args["checksum"],
		["description"] = args["description"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["botName"] = args["botName"],
		["botVersion"] = args["botVersion"],
	}
	asserts.AssertBotAliasMetadata(t)
	return t
end

keys.EnumerationValue = { ["value"] = true, nil }

function asserts.AssertEnumerationValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnumerationValue to be of type 'table'")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then asserts.AssertValue(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnumerationValue[k], "EnumerationValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnumerationValue
-- <p>Each slot type can have a set of values. Each enumeration value represents a value the slot type can take. </p> <p>For example, a pizza ordering bot could have a slot type that specifies the type of crust that the pizza should have. The slot type could include the values </p> <ul> <li> <p>thick</p> </li> <li> <p>thin</p> </li> <li> <p>stuffed</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [Value] <p>The value of the slot type.</p>
-- Required key: value
-- @return EnumerationValue structure as a key-value pair table
function M.EnumerationValue(args)
	assert(args, "You must provdide an argument table when creating EnumerationValue")
	local t = { 
		["value"] = args["value"],
	}
	asserts.AssertEnumerationValue(t)
	return t
end

keys.GetSlotTypesResponse = { ["nextToken"] = true, ["slotTypes"] = true, nil }

function asserts.AssertGetSlotTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["slotTypes"] then asserts.AssertSlotTypeMetadataList(struct["slotTypes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSlotTypesResponse[k], "GetSlotTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of slot types.</p>
-- * slotTypes [SlotTypeMetadataList] <p>An array of objects, one for each slot type, that provides information such as the name of the slot type, the version, and a description.</p>
-- @return GetSlotTypesResponse structure as a key-value pair table
function M.GetSlotTypesResponse(args)
	assert(args, "You must provdide an argument table when creating GetSlotTypesResponse")
	local t = { 
		["nextToken"] = args["nextToken"],
		["slotTypes"] = args["slotTypes"],
	}
	asserts.AssertGetSlotTypesResponse(t)
	return t
end

keys.PutSlotTypeResponse = { ["name"] = true, ["enumerationValues"] = true, ["checksum"] = true, ["version"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["description"] = true, nil }

function asserts.AssertPutSlotTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSlotTypeResponse to be of type 'table'")
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	if struct["enumerationValues"] then asserts.AssertEnumerationValues(struct["enumerationValues"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSlotTypeResponse[k], "PutSlotTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSlotTypeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [SlotTypeName] <p>The name of the slot type.</p>
-- * enumerationValues [EnumerationValues] <p>A list of <code>EnumerationValue</code> objects that defines the values that the slot type can take.</p>
-- * checksum [String] <p>Checksum of the <code>$LATEST</code> version of the slot type.</p>
-- * version [Version] <p>The version of the slot type. For a new slot type, the version is always <code>$LATEST</code>. </p>
-- * lastUpdatedDate [Timestamp] <p>The date that the slot type was updated. When you create a slot type, the creation date and last update date are the same.</p>
-- * createdDate [Timestamp] <p>The date that the slot type was created.</p>
-- * description [Description] <p>A description of the slot type.</p>
-- @return PutSlotTypeResponse structure as a key-value pair table
function M.PutSlotTypeResponse(args)
	assert(args, "You must provdide an argument table when creating PutSlotTypeResponse")
	local t = { 
		["name"] = args["name"],
		["enumerationValues"] = args["enumerationValues"],
		["checksum"] = args["checksum"],
		["version"] = args["version"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["description"] = args["description"],
	}
	asserts.AssertPutSlotTypeResponse(t)
	return t
end

keys.GetBuiltinIntentResponse = { ["slots"] = true, ["supportedLocales"] = true, ["signature"] = true, nil }

function asserts.AssertGetBuiltinIntentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinIntentResponse to be of type 'table'")
	if struct["slots"] then asserts.AssertBuiltinIntentSlotList(struct["slots"]) end
	if struct["supportedLocales"] then asserts.AssertLocaleList(struct["supportedLocales"]) end
	if struct["signature"] then asserts.AssertBuiltinIntentSignature(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBuiltinIntentResponse[k], "GetBuiltinIntentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinIntentResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * slots [BuiltinIntentSlotList] <p>An array of <code>BuiltinIntentSlot</code> objects, one entry for each slot type in the intent.</p>
-- * supportedLocales [LocaleList] <p>A list of locales that the intent supports.</p>
-- * signature [BuiltinIntentSignature] <p>The unique identifier for a built-in intent.</p>
-- @return GetBuiltinIntentResponse structure as a key-value pair table
function M.GetBuiltinIntentResponse(args)
	assert(args, "You must provdide an argument table when creating GetBuiltinIntentResponse")
	local t = { 
		["slots"] = args["slots"],
		["supportedLocales"] = args["supportedLocales"],
		["signature"] = args["signature"],
	}
	asserts.AssertGetBuiltinIntentResponse(t)
	return t
end

keys.FollowUpPrompt = { ["prompt"] = true, ["rejectionStatement"] = true, nil }

function asserts.AssertFollowUpPrompt(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FollowUpPrompt to be of type 'table'")
	assert(struct["prompt"], "Expected key prompt to exist in table")
	assert(struct["rejectionStatement"], "Expected key rejectionStatement to exist in table")
	if struct["prompt"] then asserts.AssertPrompt(struct["prompt"]) end
	if struct["rejectionStatement"] then asserts.AssertStatement(struct["rejectionStatement"]) end
	for k,_ in pairs(struct) do
		assert(keys.FollowUpPrompt[k], "FollowUpPrompt contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FollowUpPrompt
-- <p>After an intent is fulfilled, you might prompt the user for additional activity. For example, after the <code>OrderPizza</code> intent is fulfilled (the pizza order is placed with a pizzeria), you might prompt the user to find out whether the user wants to order drinks (another intent you defined in your bot).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * prompt [Prompt] <p>Obtains information from the user. </p>
-- * rejectionStatement [Statement] <p>If the user answers "no" to the question defined in <code>confirmationPrompt</code>, Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p>
-- Required key: prompt
-- Required key: rejectionStatement
-- @return FollowUpPrompt structure as a key-value pair table
function M.FollowUpPrompt(args)
	assert(args, "You must provdide an argument table when creating FollowUpPrompt")
	local t = { 
		["prompt"] = args["prompt"],
		["rejectionStatement"] = args["rejectionStatement"],
	}
	asserts.AssertFollowUpPrompt(t)
	return t
end

keys.BuiltinSlotTypeMetadata = { ["supportedLocales"] = true, ["signature"] = true, nil }

function asserts.AssertBuiltinSlotTypeMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuiltinSlotTypeMetadata to be of type 'table'")
	if struct["supportedLocales"] then asserts.AssertLocaleList(struct["supportedLocales"]) end
	if struct["signature"] then asserts.AssertBuiltinSlotTypeSignature(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuiltinSlotTypeMetadata[k], "BuiltinSlotTypeMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuiltinSlotTypeMetadata
-- <p>Provides information about a built in slot type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * supportedLocales [LocaleList] <p>A list of target locales for the slot. </p>
-- * signature [BuiltinSlotTypeSignature] <p>A unique identifier for the built-in slot type. To find the signature for a slot type, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills Kit</i>.</p>
-- @return BuiltinSlotTypeMetadata structure as a key-value pair table
function M.BuiltinSlotTypeMetadata(args)
	assert(args, "You must provdide an argument table when creating BuiltinSlotTypeMetadata")
	local t = { 
		["supportedLocales"] = args["supportedLocales"],
		["signature"] = args["signature"],
	}
	asserts.AssertBuiltinSlotTypeMetadata(t)
	return t
end

keys.InternalFailureException = { ["message"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p>An internal Amazon Lex error occurred. Try your request again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InternalFailureException structure as a key-value pair table
function M.InternalFailureException(args)
	assert(args, "You must provdide an argument table when creating InternalFailureException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalFailureException(t)
	return t
end

keys.GetIntentRequest = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertGetIntentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntentRequest[k], "GetIntentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [Version] <p>The version of the intent.</p>
-- * name [IntentName] <p>The name of the intent. The name is case sensitive. </p>
-- Required key: name
-- Required key: version
-- @return GetIntentRequest structure as a key-value pair table
function M.GetIntentRequest(args)
	assert(args, "You must provdide an argument table when creating GetIntentRequest")
	local t = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertGetIntentRequest(t)
	return t
end

keys.GetBotAliasesResponse = { ["nextToken"] = true, ["BotAliases"] = true, nil }

function asserts.AssertGetBotAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotAliasesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["BotAliases"] then asserts.AssertBotAliasMetadataList(struct["BotAliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotAliasesResponse[k], "GetBotAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotAliasesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>A pagination token for fetching next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request. </p>
-- * BotAliases [BotAliasMetadataList] <p>An array of <code>BotAliasMetadata</code> objects, each describing a bot alias.</p>
-- @return GetBotAliasesResponse structure as a key-value pair table
function M.GetBotAliasesResponse(args)
	assert(args, "You must provdide an argument table when creating GetBotAliasesResponse")
	local t = { 
		["nextToken"] = args["nextToken"],
		["BotAliases"] = args["BotAliases"],
	}
	asserts.AssertGetBotAliasesResponse(t)
	return t
end

keys.GetBotsRequest = { ["nameContains"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetBotsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotsRequest to be of type 'table'")
	if struct["nameContains"] then asserts.AssertBotName(struct["nameContains"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotsRequest[k], "GetBotsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nameContains [BotName] <p>Substring to match in bot names. A bot will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."</p>
-- * nextToken [NextToken] <p>A pagination token that fetches the next page of bots. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of bots, specify the pagination token in the next request. </p>
-- * maxResults [MaxResults] <p>The maximum number of bots to return in the response that the request will return. The default is 10.</p>
-- @return GetBotsRequest structure as a key-value pair table
function M.GetBotsRequest(args)
	assert(args, "You must provdide an argument table when creating GetBotsRequest")
	local t = { 
		["nameContains"] = args["nameContains"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetBotsRequest(t)
	return t
end

keys.ConflictException = { ["message"] = true, nil }

function asserts.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConflictException[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- <p> There was a conflict processing the request. Try your request again. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ConflictException structure as a key-value pair table
function M.ConflictException(args)
	assert(args, "You must provdide an argument table when creating ConflictException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertConflictException(t)
	return t
end

keys.GetUtterancesViewRequest = { ["statusType"] = true, ["botName"] = true, ["botVersions"] = true, nil }

function asserts.AssertGetUtterancesViewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUtterancesViewRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botVersions"], "Expected key botVersions to exist in table")
	assert(struct["statusType"], "Expected key statusType to exist in table")
	if struct["statusType"] then asserts.AssertStatusType(struct["statusType"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["botVersions"] then asserts.AssertBotVersions(struct["botVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUtterancesViewRequest[k], "GetUtterancesViewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUtterancesViewRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * statusType [StatusType] <p>To return utterances that were recognized and handled, use<code>Detected</code>. To return utterances that were not recognized, use <code>Missed</code>.</p>
-- * botName [BotName] <p>The name of the bot for which utterance information should be returned.</p>
-- * botVersions [BotVersions] <p>An array of bot versions for which utterance information should be returned. The limit is 5 versions per request.</p>
-- Required key: botName
-- Required key: botVersions
-- Required key: statusType
-- @return GetUtterancesViewRequest structure as a key-value pair table
function M.GetUtterancesViewRequest(args)
	assert(args, "You must provdide an argument table when creating GetUtterancesViewRequest")
	local t = { 
		["statusType"] = args["statusType"],
		["botName"] = args["botName"],
		["botVersions"] = args["botVersions"],
	}
	asserts.AssertGetUtterancesViewRequest(t)
	return t
end

keys.GetBotRequest = { ["name"] = true, ["versionOrAlias"] = true, nil }

function asserts.AssertGetBotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["versionOrAlias"], "Expected key versionOrAlias to exist in table")
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	if struct["versionOrAlias"] then asserts.AssertString(struct["versionOrAlias"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotRequest[k], "GetBotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [BotName] <p>The name of the bot. The name is case sensitive. </p>
-- * versionOrAlias [String] <p>The version or alias of the bot.</p>
-- Required key: name
-- Required key: versionOrAlias
-- @return GetBotRequest structure as a key-value pair table
function M.GetBotRequest(args)
	assert(args, "You must provdide an argument table when creating GetBotRequest")
	local t = { 
		["name"] = args["name"],
		["versionOrAlias"] = args["versionOrAlias"],
	}
	asserts.AssertGetBotRequest(t)
	return t
end

keys.SlotTypeMetadata = { ["version"] = true, ["createdDate"] = true, ["name"] = true, ["lastUpdatedDate"] = true, ["description"] = true, nil }

function asserts.AssertSlotTypeMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SlotTypeMetadata to be of type 'table'")
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.SlotTypeMetadata[k], "SlotTypeMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SlotTypeMetadata
-- <p>Provides information about a slot type..</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [Version] <p>The version of the slot type.</p>
-- * createdDate [Timestamp] <p>The date that the slot type was created.</p>
-- * name [SlotTypeName] <p>The name of the slot type.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the slot type was updated. When you create a resource, the creation date and last updated date are the same. </p>
-- * description [Description] <p>A description of the slot type.</p>
-- @return SlotTypeMetadata structure as a key-value pair table
function M.SlotTypeMetadata(args)
	assert(args, "You must provdide an argument table when creating SlotTypeMetadata")
	local t = { 
		["version"] = args["version"],
		["createdDate"] = args["createdDate"],
		["name"] = args["name"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["description"] = args["description"],
	}
	asserts.AssertSlotTypeMetadata(t)
	return t
end

keys.GetIntentVersionsResponse = { ["intents"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetIntentVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentVersionsResponse to be of type 'table'")
	if struct["intents"] then asserts.AssertIntentMetadataList(struct["intents"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntentVersionsResponse[k], "GetIntentVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentVersionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * intents [IntentMetadataList] <p>An array of <code>IntentMetadata</code> objects, one for each numbered version of the intent plus one for the <code>$LATEST</code> version.</p>
-- * nextToken [NextToken] <p>A pagination token for fetching the next page of intent versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>
-- @return GetIntentVersionsResponse structure as a key-value pair table
function M.GetIntentVersionsResponse(args)
	assert(args, "You must provdide an argument table when creating GetIntentVersionsResponse")
	local t = { 
		["intents"] = args["intents"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetIntentVersionsResponse(t)
	return t
end

keys.GetBotAliasResponse = { ["name"] = true, ["checksum"] = true, ["description"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["botName"] = true, ["botVersion"] = true, nil }

function asserts.AssertGetBotAliasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotAliasResponse to be of type 'table'")
	if struct["name"] then asserts.AssertAliasName(struct["name"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["botVersion"] then asserts.AssertVersion(struct["botVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotAliasResponse[k], "GetBotAliasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotAliasResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [AliasName] <p>The name of the bot alias.</p>
-- * checksum [String] <p>Checksum of the bot alias.</p>
-- * description [Description] <p>A description of the bot alias.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.</p>
-- * createdDate [Timestamp] <p>The date that the bot alias was created.</p>
-- * botName [BotName] <p>The name of the bot that the alias points to.</p>
-- * botVersion [Version] <p>The version of the bot that the alias points to.</p>
-- @return GetBotAliasResponse structure as a key-value pair table
function M.GetBotAliasResponse(args)
	assert(args, "You must provdide an argument table when creating GetBotAliasResponse")
	local t = { 
		["name"] = args["name"],
		["checksum"] = args["checksum"],
		["description"] = args["description"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["botName"] = args["botName"],
		["botVersion"] = args["botVersion"],
	}
	asserts.AssertGetBotAliasResponse(t)
	return t
end

keys.DeleteIntentVersionRequest = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertDeleteIntentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIntentVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then asserts.AssertNumericalVersion(struct["version"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteIntentVersionRequest[k], "DeleteIntentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIntentVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [NumericalVersion] <p>The version of the intent to delete. You cannot delete the <code>$LATEST</code> version of the intent. To delete the <code>$LATEST</code> version, use the operation.</p>
-- * name [IntentName] <p>The name of the intent.</p>
-- Required key: name
-- Required key: version
-- @return DeleteIntentVersionRequest structure as a key-value pair table
function M.DeleteIntentVersionRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteIntentVersionRequest")
	local t = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertDeleteIntentVersionRequest(t)
	return t
end

keys.GetBotAliasesRequest = { ["nameContains"] = true, ["nextToken"] = true, ["botName"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetBotAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotAliasesRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	if struct["nameContains"] then asserts.AssertAliasName(struct["nameContains"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotAliasesRequest[k], "GetBotAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotAliasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nameContains [AliasName] <p>Substring to match in bot alias names. An alias will be returned if any part of its name matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz."</p>
-- * nextToken [NextToken] <p>A pagination token for fetching the next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request. </p>
-- * botName [BotName] <p>The name of the bot.</p>
-- * maxResults [MaxResults] <p>The maximum number of aliases to return in the response. The default is 50. . </p>
-- Required key: botName
-- @return GetBotAliasesRequest structure as a key-value pair table
function M.GetBotAliasesRequest(args)
	assert(args, "You must provdide an argument table when creating GetBotAliasesRequest")
	local t = { 
		["nameContains"] = args["nameContains"],
		["nextToken"] = args["nextToken"],
		["botName"] = args["botName"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetBotAliasesRequest(t)
	return t
end

keys.CreateSlotTypeVersionResponse = { ["name"] = true, ["enumerationValues"] = true, ["checksum"] = true, ["version"] = true, ["lastUpdatedDate"] = true, ["createdDate"] = true, ["description"] = true, nil }

function asserts.AssertCreateSlotTypeVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSlotTypeVersionResponse to be of type 'table'")
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	if struct["enumerationValues"] then asserts.AssertEnumerationValues(struct["enumerationValues"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSlotTypeVersionResponse[k], "CreateSlotTypeVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSlotTypeVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [SlotTypeName] <p>The name of the slot type.</p>
-- * enumerationValues [EnumerationValues] <p>A list of <code>EnumerationValue</code> objects that defines the values that the slot type can take.</p>
-- * checksum [String] <p>Checksum of the <code>$LATEST</code> version of the slot type.</p>
-- * version [Version] <p>The version assigned to the new slot type version. </p>
-- * lastUpdatedDate [Timestamp] <p>The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.</p>
-- * createdDate [Timestamp] <p>The date that the slot type was created.</p>
-- * description [Description] <p>A description of the slot type.</p>
-- @return CreateSlotTypeVersionResponse structure as a key-value pair table
function M.CreateSlotTypeVersionResponse(args)
	assert(args, "You must provdide an argument table when creating CreateSlotTypeVersionResponse")
	local t = { 
		["name"] = args["name"],
		["enumerationValues"] = args["enumerationValues"],
		["checksum"] = args["checksum"],
		["version"] = args["version"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["createdDate"] = args["createdDate"],
		["description"] = args["description"],
	}
	asserts.AssertCreateSlotTypeVersionResponse(t)
	return t
end

keys.PreconditionFailedException = { ["message"] = true, nil }

function asserts.AssertPreconditionFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreconditionFailedException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.PreconditionFailedException[k], "PreconditionFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreconditionFailedException
-- <p> The checksum of the resource that you are trying to change does not match the checksum in the request. Check the resource's checksum and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return PreconditionFailedException structure as a key-value pair table
function M.PreconditionFailedException(args)
	assert(args, "You must provdide an argument table when creating PreconditionFailedException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertPreconditionFailedException(t)
	return t
end

keys.PutBotAliasRequest = { ["checksum"] = true, ["botVersion"] = true, ["name"] = true, ["botName"] = true, ["description"] = true, nil }

function asserts.AssertPutBotAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBotAliasRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botVersion"], "Expected key botVersion to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["botVersion"] then asserts.AssertVersion(struct["botVersion"]) end
	if struct["name"] then asserts.AssertAliasName(struct["name"]) end
	if struct["botName"] then asserts.AssertBotName(struct["botName"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBotAliasRequest[k], "PutBotAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBotAliasRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checksum [String] <p>Identifies a specific revision of the <code>$LATEST</code> version.</p> <p>When you create a new bot alias, leave the <code>checksum</code> field blank. If you specify a checksum you get a <code>BadRequestException</code> exception.</p> <p>When you want to update a bot alias, set the <code>checksum</code> field to the checksum of the most recent revision of the <code>$LATEST</code> version. If you don't specify the <code> checksum</code> field, or if the checksum does not match the <code>$LATEST</code> version, you get a <code>PreconditionFailedException</code> exception.</p>
-- * botVersion [Version] <p>The version of the bot.</p>
-- * name [AliasName] <p>The name of the alias. The name is <i>not</i> case sensitive.</p>
-- * botName [BotName] <p>The name of the bot.</p>
-- * description [Description] <p>A description of the alias.</p>
-- Required key: name
-- Required key: botVersion
-- Required key: botName
-- @return PutBotAliasRequest structure as a key-value pair table
function M.PutBotAliasRequest(args)
	assert(args, "You must provdide an argument table when creating PutBotAliasRequest")
	local t = { 
		["checksum"] = args["checksum"],
		["botVersion"] = args["botVersion"],
		["name"] = args["name"],
		["botName"] = args["botName"],
		["description"] = args["description"],
	}
	asserts.AssertPutBotAliasRequest(t)
	return t
end

keys.DeleteSlotTypeRequest = { ["name"] = true, nil }

function asserts.AssertDeleteSlotTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSlotTypeRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSlotTypeRequest[k], "DeleteSlotTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSlotTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [SlotTypeName] <p>The name of the slot type. The name is case sensitive. </p>
-- Required key: name
-- @return DeleteSlotTypeRequest structure as a key-value pair table
function M.DeleteSlotTypeRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteSlotTypeRequest")
	local t = { 
		["name"] = args["name"],
	}
	asserts.AssertDeleteSlotTypeRequest(t)
	return t
end

keys.CreateBotVersionResponse = { ["status"] = true, ["intents"] = true, ["name"] = true, ["locale"] = true, ["checksum"] = true, ["createdDate"] = true, ["version"] = true, ["lastUpdatedDate"] = true, ["abortStatement"] = true, ["clarificationPrompt"] = true, ["voiceId"] = true, ["failureReason"] = true, ["childDirected"] = true, ["idleSessionTTLInSeconds"] = true, ["description"] = true, nil }

function asserts.AssertCreateBotVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBotVersionResponse to be of type 'table'")
	if struct["status"] then asserts.AssertStatus(struct["status"]) end
	if struct["intents"] then asserts.AssertIntentList(struct["intents"]) end
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["abortStatement"] then asserts.AssertStatement(struct["abortStatement"]) end
	if struct["clarificationPrompt"] then asserts.AssertPrompt(struct["clarificationPrompt"]) end
	if struct["voiceId"] then asserts.AssertString(struct["voiceId"]) end
	if struct["failureReason"] then asserts.AssertString(struct["failureReason"]) end
	if struct["childDirected"] then asserts.AssertBoolean(struct["childDirected"]) end
	if struct["idleSessionTTLInSeconds"] then asserts.AssertSessionTTL(struct["idleSessionTTLInSeconds"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateBotVersionResponse[k], "CreateBotVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBotVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [Status] <p> When you send a request to create or update a bot, Amazon Lex sets the <code>status</code> response element to <code>BUILDING</code>. After Amazon Lex builds the bot, it sets <code>status</code> to <code>READY</code>. If Amazon Lex can't build the bot, it sets <code>status</code> to <code>FAILED</code>. Amazon Lex returns the reason for the failure in the <code>failureReason</code> response element. </p>
-- * intents [IntentList] <p>An array of <code>Intent</code> objects. For more information, see .</p>
-- * name [BotName] <p>The name of the bot.</p>
-- * locale [Locale] <p> Specifies the target locale for the bot. </p>
-- * checksum [String] <p>Checksum identifying the version of the bot that was created.</p>
-- * createdDate [Timestamp] <p>The date when the bot version was created.</p>
-- * version [Version] <p>The version of the bot. </p>
-- * lastUpdatedDate [Timestamp] <p>The date when the <code>$LATEST</code> version of this bot was updated. </p>
-- * abortStatement [Statement] <p>The message that Amazon Lex uses to abort a conversation. For more information, see .</p>
-- * clarificationPrompt [Prompt] <p>The message that Amazon Lex uses when it doesn't understand the user's request. For more information, see . </p>
-- * voiceId [String] <p>The Amazon Polly voice ID that Amazon Lex uses for voice interactions with the user.</p>
-- * failureReason [String] <p>If <code>status</code> is <code>FAILED</code>, Amazon Lex provides the reason that it failed to build the bot.</p>
-- * childDirected [Boolean] <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying <code>true</code> or <code>false</code> in the <code>childDirected</code> field. By specifying <code>true</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying <code>false</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is not</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the <code>childDirected</code> field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.</p> <p>If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs#data-security">Amazon Lex FAQ.</a> </p>
-- * idleSessionTTLInSeconds [SessionTTL] <p>The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see .</p>
-- * description [Description] <p>A description of the bot.</p>
-- @return CreateBotVersionResponse structure as a key-value pair table
function M.CreateBotVersionResponse(args)
	assert(args, "You must provdide an argument table when creating CreateBotVersionResponse")
	local t = { 
		["status"] = args["status"],
		["intents"] = args["intents"],
		["name"] = args["name"],
		["locale"] = args["locale"],
		["checksum"] = args["checksum"],
		["createdDate"] = args["createdDate"],
		["version"] = args["version"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["abortStatement"] = args["abortStatement"],
		["clarificationPrompt"] = args["clarificationPrompt"],
		["voiceId"] = args["voiceId"],
		["failureReason"] = args["failureReason"],
		["childDirected"] = args["childDirected"],
		["idleSessionTTLInSeconds"] = args["idleSessionTTLInSeconds"],
		["description"] = args["description"],
	}
	asserts.AssertCreateBotVersionResponse(t)
	return t
end

keys.CreateIntentVersionResponse = { ["dialogCodeHook"] = true, ["confirmationPrompt"] = true, ["followUpPrompt"] = true, ["name"] = true, ["checksum"] = true, ["conclusionStatement"] = true, ["parentIntentSignature"] = true, ["version"] = true, ["rejectionStatement"] = true, ["createdDate"] = true, ["lastUpdatedDate"] = true, ["sampleUtterances"] = true, ["slots"] = true, ["fulfillmentActivity"] = true, ["description"] = true, nil }

function asserts.AssertCreateIntentVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIntentVersionResponse to be of type 'table'")
	if struct["dialogCodeHook"] then asserts.AssertCodeHook(struct["dialogCodeHook"]) end
	if struct["confirmationPrompt"] then asserts.AssertPrompt(struct["confirmationPrompt"]) end
	if struct["followUpPrompt"] then asserts.AssertFollowUpPrompt(struct["followUpPrompt"]) end
	if struct["name"] then asserts.AssertIntentName(struct["name"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["conclusionStatement"] then asserts.AssertStatement(struct["conclusionStatement"]) end
	if struct["parentIntentSignature"] then asserts.AssertBuiltinIntentSignature(struct["parentIntentSignature"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["rejectionStatement"] then asserts.AssertStatement(struct["rejectionStatement"]) end
	if struct["createdDate"] then asserts.AssertTimestamp(struct["createdDate"]) end
	if struct["lastUpdatedDate"] then asserts.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["sampleUtterances"] then asserts.AssertIntentUtteranceList(struct["sampleUtterances"]) end
	if struct["slots"] then asserts.AssertSlotList(struct["slots"]) end
	if struct["fulfillmentActivity"] then asserts.AssertFulfillmentActivity(struct["fulfillmentActivity"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateIntentVersionResponse[k], "CreateIntentVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIntentVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dialogCodeHook [CodeHook] <p>If defined, Amazon Lex invokes this Lambda function for each user input.</p>
-- * confirmationPrompt [Prompt] <p>If defined, the prompt that Amazon Lex uses to confirm the user's intent before fulfilling it. </p>
-- * followUpPrompt [FollowUpPrompt] <p>If defined, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled. </p>
-- * name [IntentName] <p>The name of the intent.</p>
-- * checksum [String] <p>Checksum of the intent version created.</p>
-- * conclusionStatement [Statement] <p>After the Lambda function specified in the <code>fulfillmentActivity</code> field fulfills the intent, Amazon Lex conveys this statement to the user. </p>
-- * parentIntentSignature [BuiltinIntentSignature] <p>A unique identifier for a built-in intent.</p>
-- * version [Version] <p>The version number assigned to the new version of the intent.</p>
-- * rejectionStatement [Statement] <p>If the user answers "no" to the question defined in <code>confirmationPrompt</code>, Amazon Lex responds with this statement to acknowledge that the intent was canceled. </p>
-- * createdDate [Timestamp] <p>The date that the intent was created.</p>
-- * lastUpdatedDate [Timestamp] <p>The date that the intent was updated. </p>
-- * sampleUtterances [IntentUtteranceList] <p>An array of sample utterances configured for the intent. </p>
-- * slots [SlotList] <p>An array of slot types that defines the information required to fulfill the intent.</p>
-- * fulfillmentActivity [FulfillmentActivity] <p> Describes how the intent is fulfilled. </p>
-- * description [Description] <p>A description of the intent.</p>
-- @return CreateIntentVersionResponse structure as a key-value pair table
function M.CreateIntentVersionResponse(args)
	assert(args, "You must provdide an argument table when creating CreateIntentVersionResponse")
	local t = { 
		["dialogCodeHook"] = args["dialogCodeHook"],
		["confirmationPrompt"] = args["confirmationPrompt"],
		["followUpPrompt"] = args["followUpPrompt"],
		["name"] = args["name"],
		["checksum"] = args["checksum"],
		["conclusionStatement"] = args["conclusionStatement"],
		["parentIntentSignature"] = args["parentIntentSignature"],
		["version"] = args["version"],
		["rejectionStatement"] = args["rejectionStatement"],
		["createdDate"] = args["createdDate"],
		["lastUpdatedDate"] = args["lastUpdatedDate"],
		["sampleUtterances"] = args["sampleUtterances"],
		["slots"] = args["slots"],
		["fulfillmentActivity"] = args["fulfillmentActivity"],
		["description"] = args["description"],
	}
	asserts.AssertCreateIntentVersionResponse(t)
	return t
end

keys.PutBotRequest = { ["intents"] = true, ["name"] = true, ["locale"] = true, ["checksum"] = true, ["processBehavior"] = true, ["childDirected"] = true, ["abortStatement"] = true, ["clarificationPrompt"] = true, ["voiceId"] = true, ["idleSessionTTLInSeconds"] = true, ["description"] = true, nil }

function asserts.AssertPutBotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBotRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["locale"], "Expected key locale to exist in table")
	assert(struct["childDirected"], "Expected key childDirected to exist in table")
	if struct["intents"] then asserts.AssertIntentList(struct["intents"]) end
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["processBehavior"] then asserts.AssertProcessBehavior(struct["processBehavior"]) end
	if struct["childDirected"] then asserts.AssertBoolean(struct["childDirected"]) end
	if struct["abortStatement"] then asserts.AssertStatement(struct["abortStatement"]) end
	if struct["clarificationPrompt"] then asserts.AssertPrompt(struct["clarificationPrompt"]) end
	if struct["voiceId"] then asserts.AssertString(struct["voiceId"]) end
	if struct["idleSessionTTLInSeconds"] then asserts.AssertSessionTTL(struct["idleSessionTTLInSeconds"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutBotRequest[k], "PutBotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBotRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * intents [IntentList] <p>An array of <code>Intent</code> objects. Each intent represents a command that a user can express. For example, a pizza ordering bot might support an OrderPizza intent. For more information, see <a>how-it-works</a>.</p>
-- * name [BotName] <p>The name of the bot. The name is <i>not</i> case sensitive. </p>
-- * locale [Locale] <p> Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. </p> <p>The default is <code>en-US</code>.</p>
-- * checksum [String] <p>Identifies a specific revision of the <code>$LATEST</code> version.</p> <p>When you create a new bot, leave the <code>checksum</code> field blank. If you specify a checksum you get a <code>BadRequestException</code> exception.</p> <p>When you want to update a bot, set the <code>checksum</code> field to the checksum of the most recent revision of the <code>$LATEST</code> version. If you don't specify the <code> checksum</code> field, or if the checksum does not match the <code>$LATEST</code> version, you get a <code>PreconditionFailedException</code> exception.</p>
-- * processBehavior [ProcessBehavior] <p>If you set the <code>processBehavior</code> element to <code>Build</code>, Amazon Lex builds the bot so that it can be run. If you set the element to <code>Save</code>Amazon Lex saves the bot, but doesn't build it. </p> <p>If you don't specify this value, the default value is <code>Save</code>.</p>
-- * childDirected [Boolean] <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying <code>true</code> or <code>false</code> in the <code>childDirected</code> field. By specifying <code>true</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying <code>false</code> in the <code>childDirected</code> field, you confirm that your use of Amazon Lex <b>is not</b> related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the <code>childDirected</code> field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.</p> <p>If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs#data-security">Amazon Lex FAQ.</a> </p>
-- * abortStatement [Statement] <p>When Amazon Lex can't understand the user's input in context, it tries to elicit the information a few times. After that, Amazon Lex sends the message defined in <code>abortStatement</code> to the user, and then aborts the conversation. To set the number of retries, use the <code>valueElicitationPrompt</code> field for the slot type. </p> <p>For example, in a pizza ordering bot, Amazon Lex might ask a user "What type of crust would you like?" If the user's response is not one of the expected responses (for example, "thin crust, "deep dish," etc.), Amazon Lex tries to elicit a correct response a few more times. </p> <p>For example, in a pizza ordering application, <code>OrderPizza</code> might be one of the intents. This intent might require the <code>CrustType</code> slot. You specify the <code>valueElicitationPrompt</code> field when you create the <code>CrustType</code> slot.</p>
-- * clarificationPrompt [Prompt] <p>When Amazon Lex doesn't understand the user's intent, it uses one of these messages to get clarification. For example, "Sorry, I didn't understand. Please repeat." Amazon Lex repeats the clarification prompt the number of times specified in <code>maxAttempts</code>. If Amazon Lex still can't understand, it sends the message specified in <code>abortStatement</code>. </p>
-- * voiceId [String] <p>The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/API_Voice.html">Voice</a> in the <i>Amazon Polly Developer Guide</i>.</p>
-- * idleSessionTTLInSeconds [SessionTTL] <p>The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.</p> <p>A user interaction session remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Lex deletes any data provided before the timeout.</p> <p>For example, suppose that a user chooses the OrderPizza intent, but gets sidetracked halfway through placing an order. If the user doesn't complete the order within the specified time, Amazon Lex discards the slot information that it gathered, and the user must start over.</p> <p>If you don't include the <code>idleSessionTTLInSeconds</code> element in a <code>PutBot</code> operation request, Amazon Lex uses the default value. This is also true if the request replaces an existing bot.</p> <p>The default is 300 seconds (5 minutes).</p>
-- * description [Description] <p>A description of the bot.</p>
-- Required key: name
-- Required key: locale
-- Required key: childDirected
-- @return PutBotRequest structure as a key-value pair table
function M.PutBotRequest(args)
	assert(args, "You must provdide an argument table when creating PutBotRequest")
	local t = { 
		["intents"] = args["intents"],
		["name"] = args["name"],
		["locale"] = args["locale"],
		["checksum"] = args["checksum"],
		["processBehavior"] = args["processBehavior"],
		["childDirected"] = args["childDirected"],
		["abortStatement"] = args["abortStatement"],
		["clarificationPrompt"] = args["clarificationPrompt"],
		["voiceId"] = args["voiceId"],
		["idleSessionTTLInSeconds"] = args["idleSessionTTLInSeconds"],
		["description"] = args["description"],
	}
	asserts.AssertPutBotRequest(t)
	return t
end

keys.ResourceReference = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertResourceReference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceReference to be of type 'table'")
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceReference[k], "ResourceReference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceReference
-- <p>Describes the resource that refers to the resource that you are attempting to delete. This object is returned as part of the <code>ResourceInUseException</code> exception. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [Version] <p>The version of the resource that is using the resource that you are trying to delete.</p>
-- * name [Name] <p>The name of the resource that is using the resource that you are trying to delete.</p>
-- @return ResourceReference structure as a key-value pair table
function M.ResourceReference(args)
	assert(args, "You must provdide an argument table when creating ResourceReference")
	local t = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertResourceReference(t)
	return t
end

keys.GetBotVersionsRequest = { ["nextToken"] = true, ["name"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetBotVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotVersionsRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["name"] then asserts.AssertBotName(struct["name"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotVersionsRequest[k], "GetBotVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>A pagination token for fetching the next page of bot versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>
-- * name [BotName] <p>The name of the bot for which versions should be returned.</p>
-- * maxResults [MaxResults] <p>The maximum number of bot versions to return in the response. The default is 10.</p>
-- Required key: name
-- @return GetBotVersionsRequest structure as a key-value pair table
function M.GetBotVersionsRequest(args)
	assert(args, "You must provdide an argument table when creating GetBotVersionsRequest")
	local t = { 
		["nextToken"] = args["nextToken"],
		["name"] = args["name"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetBotVersionsRequest(t)
	return t
end

keys.CreateSlotTypeVersionRequest = { ["checksum"] = true, ["name"] = true, nil }

function asserts.AssertCreateSlotTypeVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSlotTypeVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSlotTypeVersionRequest[k], "CreateSlotTypeVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSlotTypeVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checksum [String] <p>Checksum for the <code>$LATEST</code> version of the slot type that you want to publish. If you specify a checksum and the <code>$LATEST</code> version of the slot type has a different checksum, Amazon Lex returns a <code>PreconditionFailedException</code> exception and doesn't publish the new version. If you don't specify a checksum, Amazon Lex publishes the <code>$LATEST</code> version.</p>
-- * name [SlotTypeName] <p>The name of the slot type that you want to create a new version for. The name is case sensitive. </p>
-- Required key: name
-- @return CreateSlotTypeVersionRequest structure as a key-value pair table
function M.CreateSlotTypeVersionRequest(args)
	assert(args, "You must provdide an argument table when creating CreateSlotTypeVersionRequest")
	local t = { 
		["checksum"] = args["checksum"],
		["name"] = args["name"],
	}
	asserts.AssertCreateSlotTypeVersionRequest(t)
	return t
end

keys.PutSlotTypeRequest = { ["checksum"] = true, ["name"] = true, ["enumerationValues"] = true, ["description"] = true, nil }

function asserts.AssertPutSlotTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSlotTypeRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["checksum"] then asserts.AssertString(struct["checksum"]) end
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	if struct["enumerationValues"] then asserts.AssertEnumerationValues(struct["enumerationValues"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSlotTypeRequest[k], "PutSlotTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSlotTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * checksum [String] <p>Identifies a specific revision of the <code>$LATEST</code> version.</p> <p>When you create a new slot type, leave the <code>checksum</code> field blank. If you specify a checksum you get a <code>BadRequestException</code> exception.</p> <p>When you want to update a slot type, set the <code>checksum</code> field to the checksum of the most recent revision of the <code>$LATEST</code> version. If you don't specify the <code> checksum</code> field, or if the checksum does not match the <code>$LATEST</code> version, you get a <code>PreconditionFailedException</code> exception.</p>
-- * name [SlotTypeName] <p>The name of the slot type. The name is <i>not</i> case sensitive. </p> <p>The name can't match a built-in slot type name, or a built-in slot type name with "AMAZON." removed. For example, because there is a built-in slot type called <code>AMAZON.DATE</code>, you can't create a custom slot type called <code>DATE</code>.</p> <p>For a list of built-in slot types, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills Kit</i>.</p>
-- * enumerationValues [EnumerationValues] <p>A list of <code>EnumerationValue</code> objects that defines the values that the slot type can take.</p>
-- * description [Description] <p>A description of the slot type.</p>
-- Required key: name
-- @return PutSlotTypeRequest structure as a key-value pair table
function M.PutSlotTypeRequest(args)
	assert(args, "You must provdide an argument table when creating PutSlotTypeRequest")
	local t = { 
		["checksum"] = args["checksum"],
		["name"] = args["name"],
		["enumerationValues"] = args["enumerationValues"],
		["description"] = args["description"],
	}
	asserts.AssertPutSlotTypeRequest(t)
	return t
end

keys.GetBuiltinIntentsRequest = { ["locale"] = true, ["nextToken"] = true, ["signatureContains"] = true, ["maxResults"] = true, nil }

function asserts.AssertGetBuiltinIntentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinIntentsRequest to be of type 'table'")
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["signatureContains"] then asserts.AssertString(struct["signatureContains"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBuiltinIntentsRequest[k], "GetBuiltinIntentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinIntentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locale [Locale] <p>A list of locales that the intent supports.</p>
-- * nextToken [NextToken] <p>A pagination token that fetches the next page of intents. If this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, use the pagination token in the next request.</p>
-- * signatureContains [String] <p>Substring to match in built-in intent signatures. An intent will be returned if any part of its signature matches the substring. For example, "xyz" matches both "xyzabc" and "abcxyz." To find the signature for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills Kit</i>.</p>
-- * maxResults [MaxResults] <p>The maximum number of intents to return in the response. The default is 10.</p>
-- @return GetBuiltinIntentsRequest structure as a key-value pair table
function M.GetBuiltinIntentsRequest(args)
	assert(args, "You must provdide an argument table when creating GetBuiltinIntentsRequest")
	local t = { 
		["locale"] = args["locale"],
		["nextToken"] = args["nextToken"],
		["signatureContains"] = args["signatureContains"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertGetBuiltinIntentsRequest(t)
	return t
end

keys.GetBotVersionsResponse = { ["bots"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetBotVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotVersionsResponse to be of type 'table'")
	if struct["bots"] then asserts.AssertBotMetadataList(struct["bots"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBotVersionsResponse[k], "GetBotVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotVersionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * bots [BotMetadataList] <p>An array of <code>BotMetadata</code> objects, one for each numbered version of the bot plus one for the <code>$LATEST</code> version.</p>
-- * nextToken [NextToken] <p>A pagination token for fetching the next page of bot versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. </p>
-- @return GetBotVersionsResponse structure as a key-value pair table
function M.GetBotVersionsResponse(args)
	assert(args, "You must provdide an argument table when creating GetBotVersionsResponse")
	local t = { 
		["bots"] = args["bots"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetBotVersionsResponse(t)
	return t
end

keys.DeleteSlotTypeVersionRequest = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertDeleteSlotTypeVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSlotTypeVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then asserts.AssertNumericalVersion(struct["version"]) end
	if struct["name"] then asserts.AssertSlotTypeName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSlotTypeVersionRequest[k], "DeleteSlotTypeVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSlotTypeVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [NumericalVersion] <p>The version of the slot type to delete. You cannot delete the <code>$LATEST</code> version of the slot type. To delete the <code>$LATEST</code> version, use the operation.</p>
-- * name [SlotTypeName] <p>The name of the slot type.</p>
-- Required key: name
-- Required key: version
-- @return DeleteSlotTypeVersionRequest structure as a key-value pair table
function M.DeleteSlotTypeVersionRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteSlotTypeVersionRequest")
	local t = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertDeleteSlotTypeVersionRequest(t)
	return t
end

keys.UtteranceList = { ["utterances"] = true, ["botVersion"] = true, nil }

function asserts.AssertUtteranceList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UtteranceList to be of type 'table'")
	if struct["utterances"] then asserts.AssertListOfUtterance(struct["utterances"]) end
	if struct["botVersion"] then asserts.AssertVersion(struct["botVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UtteranceList[k], "UtteranceList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UtteranceList
-- <p>Provides a list of utterances that have been made to a specific version of your bot. The list contains a maximum of 100 utterances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * utterances [ListOfUtterance] <p>One or more objects that contain information about the utterances that have been made to a bot. The maximum number of object is 100.</p>
-- * botVersion [Version] <p>The version of the bot that processed the list.</p>
-- @return UtteranceList structure as a key-value pair table
function M.UtteranceList(args)
	assert(args, "You must provdide an argument table when creating UtteranceList")
	local t = { 
		["utterances"] = args["utterances"],
		["botVersion"] = args["botVersion"],
	}
	asserts.AssertUtteranceList(t)
	return t
end

keys.BuiltinIntentSlot = { ["name"] = true, nil }

function asserts.AssertBuiltinIntentSlot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuiltinIntentSlot to be of type 'table'")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.BuiltinIntentSlot[k], "BuiltinIntentSlot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuiltinIntentSlot
-- <p>Provides information about a slot used in a built-in intent.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>A list of the slots defined for the intent.</p>
-- @return BuiltinIntentSlot structure as a key-value pair table
function M.BuiltinIntentSlot(args)
	assert(args, "You must provdide an argument table when creating BuiltinIntentSlot")
	local t = { 
		["name"] = args["name"],
	}
	asserts.AssertBuiltinIntentSlot(t)
	return t
end

keys.FulfillmentActivity = { ["type"] = true, ["codeHook"] = true, nil }

function asserts.AssertFulfillmentActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FulfillmentActivity to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["type"] then asserts.AssertFulfillmentActivityType(struct["type"]) end
	if struct["codeHook"] then asserts.AssertCodeHook(struct["codeHook"]) end
	for k,_ in pairs(struct) do
		assert(keys.FulfillmentActivity[k], "FulfillmentActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FulfillmentActivity
-- <p> Describes how the intent is fulfilled after the user provides all of the information required for the intent. You can provide a Lambda function to process the intent, or you can return the intent information to the client application. We recommend that you use a Lambda function so that the relevant logic lives in the Cloud and limit the client-side code primarily to presentation. If you need to update the logic, you only update the Lambda function; you don't need to upgrade your client application. </p> <p>Consider the following examples:</p> <ul> <li> <p>In a pizza ordering application, after the user provides all of the information for placing an order, you use a Lambda function to place an order with a pizzeria. </p> </li> <li> <p>In a gaming application, when a user says "pick up a rock," this information must go back to the client application so that it can perform the operation and update the graphics. In this case, you want Amazon Lex to return the intent data to the client. </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [FulfillmentActivityType] <p> How the intent should be fulfilled, either by running a Lambda function or by returning the slot data to the client application. </p>
-- * codeHook [CodeHook] <p> A description of the Lambda function that is run to fulfill the intent. </p>
-- Required key: type
-- @return FulfillmentActivity structure as a key-value pair table
function M.FulfillmentActivity(args)
	assert(args, "You must provdide an argument table when creating FulfillmentActivity")
	local t = { 
		["type"] = args["type"],
		["codeHook"] = args["codeHook"],
	}
	asserts.AssertFulfillmentActivity(t)
	return t
end

keys.GetBuiltinIntentsResponse = { ["intents"] = true, ["nextToken"] = true, nil }

function asserts.AssertGetBuiltinIntentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinIntentsResponse to be of type 'table'")
	if struct["intents"] then asserts.AssertBuiltinIntentMetadataList(struct["intents"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetBuiltinIntentsResponse[k], "GetBuiltinIntentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinIntentsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * intents [BuiltinIntentMetadataList] <p>An array of <code>builtinIntentMetadata</code> objects, one for each intent in the response.</p>
-- * nextToken [NextToken] <p>A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.</p>
-- @return GetBuiltinIntentsResponse structure as a key-value pair table
function M.GetBuiltinIntentsResponse(args)
	assert(args, "You must provdide an argument table when creating GetBuiltinIntentsResponse")
	local t = { 
		["intents"] = args["intents"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertGetBuiltinIntentsResponse(t)
	return t
end

function asserts.AssertAliasName(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AliasName(str)
	asserts.AssertAliasName(str)
	return str
end

function asserts.AssertProcessBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessBehavior to be of type 'string'")
end

--  
function M.ProcessBehavior(str)
	asserts.AssertProcessBehavior(str)
	return str
end

function asserts.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Value(str)
	asserts.AssertValue(str)
	return str
end

function asserts.AssertSlotTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected SlotTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SlotTypeName(str)
	asserts.AssertSlotTypeName(str)
	return str
end

function asserts.AssertBotName(str)
	assert(str)
	assert(type(str) == "string", "Expected BotName to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.BotName(str)
	asserts.AssertBotName(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusType to be of type 'string'")
end

--  
function M.StatusType(str)
	asserts.AssertStatusType(str)
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

function asserts.AssertIntentName(str)
	assert(str)
	assert(type(str) == "string", "Expected IntentName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IntentName(str)
	asserts.AssertIntentName(str)
	return str
end

function asserts.AssertResponseCard(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseCard to be of type 'string'")
	assert(#str <= 50000, "Expected string to be max 50000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResponseCard(str)
	asserts.AssertResponseCard(str)
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

function asserts.AssertSlotName(str)
	assert(str)
	assert(type(str) == "string", "Expected SlotName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SlotName(str)
	asserts.AssertSlotName(str)
	return str
end

function asserts.AssertMessageVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageVersion to be of type 'string'")
	assert(#str <= 5, "Expected string to be max 5 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MessageVersion(str)
	asserts.AssertMessageVersion(str)
	return str
end

function asserts.AssertFulfillmentActivityType(str)
	assert(str)
	assert(type(str) == "string", "Expected FulfillmentActivityType to be of type 'string'")
end

--  
function M.FulfillmentActivityType(str)
	asserts.AssertFulfillmentActivityType(str)
	return str
end

function asserts.AssertReferenceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReferenceType to be of type 'string'")
end

--  
function M.ReferenceType(str)
	asserts.AssertReferenceType(str)
	return str
end

function asserts.AssertStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected Status to be of type 'string'")
end

--  
function M.Status(str)
	asserts.AssertStatus(str)
	return str
end

function asserts.AssertLambdaARN(str)
	assert(str)
	assert(type(str) == "string", "Expected LambdaARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.LambdaARN(str)
	asserts.AssertLambdaARN(str)
	return str
end

function asserts.AssertCustomOrBuiltinSlotTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomOrBuiltinSlotTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CustomOrBuiltinSlotTypeName(str)
	asserts.AssertCustomOrBuiltinSlotTypeName(str)
	return str
end

function asserts.AssertUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected UserId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.UserId(str)
	asserts.AssertUserId(str)
	return str
end

function asserts.AssertBuiltinIntentSignature(str)
	assert(str)
	assert(type(str) == "string", "Expected BuiltinIntentSignature to be of type 'string'")
end

--  
function M.BuiltinIntentSignature(str)
	asserts.AssertBuiltinIntentSignature(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertContentString(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentString to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContentString(str)
	asserts.AssertContentString(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertSlotConstraint(str)
	assert(str)
	assert(type(str) == "string", "Expected SlotConstraint to be of type 'string'")
end

--  
function M.SlotConstraint(str)
	asserts.AssertSlotConstraint(str)
	return str
end

function asserts.AssertAliasNameOrListAll(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasNameOrListAll to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AliasNameOrListAll(str)
	asserts.AssertAliasNameOrListAll(str)
	return str
end

function asserts.AssertBuiltinSlotTypeSignature(str)
	assert(str)
	assert(type(str) == "string", "Expected BuiltinSlotTypeSignature to be of type 'string'")
end

--  
function M.BuiltinSlotTypeSignature(str)
	asserts.AssertBuiltinSlotTypeSignature(str)
	return str
end

function asserts.AssertUtterance(str)
	assert(str)
	assert(type(str) == "string", "Expected Utterance to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Utterance(str)
	asserts.AssertUtterance(str)
	return str
end

function asserts.AssertUtteranceString(str)
	assert(str)
	assert(type(str) == "string", "Expected UtteranceString to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UtteranceString(str)
	asserts.AssertUtteranceString(str)
	return str
end

function asserts.AssertBotChannelName(str)
	assert(str)
	assert(type(str) == "string", "Expected BotChannelName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BotChannelName(str)
	asserts.AssertBotChannelName(str)
	return str
end

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
	return str
end

function asserts.AssertLocale(str)
	assert(str)
	assert(type(str) == "string", "Expected Locale to be of type 'string'")
end

--  
function M.Locale(str)
	asserts.AssertLocale(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertNumericalVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected NumericalVersion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NumericalVersion(str)
	asserts.AssertNumericalVersion(str)
	return str
end

function asserts.AssertPromptMaxAttempts(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PromptMaxAttempts to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PromptMaxAttempts(integer)
	asserts.AssertPromptMaxAttempts(integer)
	return integer
end

function asserts.AssertPriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Priority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.Priority(integer)
	asserts.AssertPriority(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertSessionTTL(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SessionTTL to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 86400, "Expected integer to be max 86400")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.SessionTTL(integer)
	asserts.AssertSessionTTL(integer)
	return integer
end

function asserts.AssertCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Count(integer)
	asserts.AssertCount(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertChannelConfigurationMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ChannelConfigurationMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.ChannelConfigurationMap(map)
	asserts.AssertChannelConfigurationMap(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertBuiltinIntentMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuiltinIntentMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBuiltinIntentMetadata(v)
	end
end

--  
-- List of BuiltinIntentMetadata objects
function M.BuiltinIntentMetadataList(list)
	asserts.AssertBuiltinIntentMetadataList(list)
	return list
end

function asserts.AssertBotChannelAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected BotChannelAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBotChannelAssociation(v)
	end
end

--  
-- List of BotChannelAssociation objects
function M.BotChannelAssociationList(list)
	asserts.AssertBotChannelAssociationList(list)
	return list
end

function asserts.AssertSlotTypeMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected SlotTypeMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSlotTypeMetadata(v)
	end
end

--  
-- List of SlotTypeMetadata objects
function M.SlotTypeMetadataList(list)
	asserts.AssertSlotTypeMetadataList(list)
	return list
end

function asserts.AssertListsOfUtterances(list)
	assert(list)
	assert(type(list) == "table", "Expected ListsOfUtterances to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUtteranceList(v)
	end
end

--  
-- List of UtteranceList objects
function M.ListsOfUtterances(list)
	asserts.AssertListsOfUtterances(list)
	return list
end

function asserts.AssertBuiltinIntentSlotList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuiltinIntentSlotList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBuiltinIntentSlot(v)
	end
end

--  
-- List of BuiltinIntentSlot objects
function M.BuiltinIntentSlotList(list)
	asserts.AssertBuiltinIntentSlotList(list)
	return list
end

function asserts.AssertBotMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected BotMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBotMetadata(v)
	end
end

--  
-- List of BotMetadata objects
function M.BotMetadataList(list)
	asserts.AssertBotMetadataList(list)
	return list
end

function asserts.AssertListOfUtterance(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfUtterance to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUtteranceData(v)
	end
end

--  
-- List of UtteranceData objects
function M.ListOfUtterance(list)
	asserts.AssertListOfUtterance(list)
	return list
end

function asserts.AssertEnumerationValues(list)
	assert(list)
	assert(type(list) == "table", "Expected EnumerationValues to be of type ''table")
	assert(#list <= 10000, "Expected list to be contain 10000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertEnumerationValue(v)
	end
end

--  
-- List of EnumerationValue objects
function M.EnumerationValues(list)
	asserts.AssertEnumerationValues(list)
	return list
end

function asserts.AssertIntentMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected IntentMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIntentMetadata(v)
	end
end

--  
-- List of IntentMetadata objects
function M.IntentMetadataList(list)
	asserts.AssertIntentMetadataList(list)
	return list
end

function asserts.AssertSlotList(list)
	assert(list)
	assert(type(list) == "table", "Expected SlotList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertSlot(v)
	end
end

--  
-- List of Slot objects
function M.SlotList(list)
	asserts.AssertSlotList(list)
	return list
end

function asserts.AssertBotVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected BotVersions to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertVersion(v)
	end
end

--  
-- List of Version objects
function M.BotVersions(list)
	asserts.AssertBotVersions(list)
	return list
end

function asserts.AssertIntentUtteranceList(list)
	assert(list)
	assert(type(list) == "table", "Expected IntentUtteranceList to be of type ''table")
	assert(#list <= 1500, "Expected list to be contain 1500 elements")
	for _,v in ipairs(list) do
		asserts.AssertUtterance(v)
	end
end

--  
-- List of Utterance objects
function M.IntentUtteranceList(list)
	asserts.AssertIntentUtteranceList(list)
	return list
end

function asserts.AssertBotAliasMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected BotAliasMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBotAliasMetadata(v)
	end
end

--  
-- List of BotAliasMetadata objects
function M.BotAliasMetadataList(list)
	asserts.AssertBotAliasMetadataList(list)
	return list
end

function asserts.AssertMessageList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertMessage(v)
	end
end

--  
-- List of Message objects
function M.MessageList(list)
	asserts.AssertMessageList(list)
	return list
end

function asserts.AssertBuiltinSlotTypeMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuiltinSlotTypeMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBuiltinSlotTypeMetadata(v)
	end
end

--  
-- List of BuiltinSlotTypeMetadata objects
function M.BuiltinSlotTypeMetadataList(list)
	asserts.AssertBuiltinSlotTypeMetadataList(list)
	return list
end

function asserts.AssertSlotUtteranceList(list)
	assert(list)
	assert(type(list) == "table", "Expected SlotUtteranceList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertUtterance(v)
	end
end

--  
-- List of Utterance objects
function M.SlotUtteranceList(list)
	asserts.AssertSlotUtteranceList(list)
	return list
end

function asserts.AssertLocaleList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocaleList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLocale(v)
	end
end

--  
-- List of Locale objects
function M.LocaleList(list)
	asserts.AssertLocaleList(list)
	return list
end

function asserts.AssertIntentList(list)
	assert(list)
	assert(type(list) == "table", "Expected IntentList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertIntent(v)
	end
end

--  
-- List of Intent objects
function M.IntentList(list)
	asserts.AssertIntentList(list)
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
			return "models.lex.amazonaws.com"
		end
	end
	local ss = { "models.lex" }
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
--- Call CreateBotVersion asynchronously, invoking a callback when done
-- @param CreateBotVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBotVersionAsync(CreateBotVersionRequest, cb)
	assert(CreateBotVersionRequest, "You must provide a CreateBotVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateBotVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/bots/{name}/versions", CreateBotVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateBotVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateBotVersionRequest
-- @return response
-- @return error_message
function M.CreateBotVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateBotVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBotAlias asynchronously, invoking a callback when done
-- @param DeleteBotAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBotAliasAsync(DeleteBotAliasRequest, cb)
	assert(DeleteBotAliasRequest, "You must provide a DeleteBotAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBotAlias",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/bots/{botName}/aliases/{name}", DeleteBotAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBotAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBotAliasRequest
-- @return response
-- @return error_message
function M.DeleteBotAliasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBotAliasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIntents asynchronously, invoking a callback when done
-- @param GetIntentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntentsAsync(GetIntentsRequest, cb)
	assert(GetIntentsRequest, "You must provide a GetIntentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIntents",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/intents/", GetIntentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIntents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIntentsRequest
-- @return response
-- @return error_message
function M.GetIntentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIntentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSlotTypes asynchronously, invoking a callback when done
-- @param GetSlotTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSlotTypesAsync(GetSlotTypesRequest, cb)
	assert(GetSlotTypesRequest, "You must provide a GetSlotTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSlotTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/slottypes/", GetSlotTypesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSlotTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSlotTypesRequest
-- @return response
-- @return error_message
function M.GetSlotTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSlotTypesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSlotTypeVersion asynchronously, invoking a callback when done
-- @param DeleteSlotTypeVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSlotTypeVersionAsync(DeleteSlotTypeVersionRequest, cb)
	assert(DeleteSlotTypeVersionRequest, "You must provide a DeleteSlotTypeVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSlotTypeVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/slottypes/{name}/version/{version}", DeleteSlotTypeVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSlotTypeVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSlotTypeVersionRequest
-- @return response
-- @return error_message
function M.DeleteSlotTypeVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSlotTypeVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSlotTypeVersion asynchronously, invoking a callback when done
-- @param CreateSlotTypeVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSlotTypeVersionAsync(CreateSlotTypeVersionRequest, cb)
	assert(CreateSlotTypeVersionRequest, "You must provide a CreateSlotTypeVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateSlotTypeVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/slottypes/{name}/versions", CreateSlotTypeVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSlotTypeVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSlotTypeVersionRequest
-- @return response
-- @return error_message
function M.CreateSlotTypeVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSlotTypeVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIntentVersions asynchronously, invoking a callback when done
-- @param GetIntentVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntentVersionsAsync(GetIntentVersionsRequest, cb)
	assert(GetIntentVersionsRequest, "You must provide a GetIntentVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIntentVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/intents/{name}/versions/", GetIntentVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIntentVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIntentVersionsRequest
-- @return response
-- @return error_message
function M.GetIntentVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIntentVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBuiltinSlotTypes asynchronously, invoking a callback when done
-- @param GetBuiltinSlotTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBuiltinSlotTypesAsync(GetBuiltinSlotTypesRequest, cb)
	assert(GetBuiltinSlotTypesRequest, "You must provide a GetBuiltinSlotTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBuiltinSlotTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/builtins/slottypes/", GetBuiltinSlotTypesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBuiltinSlotTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBuiltinSlotTypesRequest
-- @return response
-- @return error_message
function M.GetBuiltinSlotTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBuiltinSlotTypesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateIntentVersion asynchronously, invoking a callback when done
-- @param CreateIntentVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIntentVersionAsync(CreateIntentVersionRequest, cb)
	assert(CreateIntentVersionRequest, "You must provide a CreateIntentVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateIntentVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/intents/{name}/versions", CreateIntentVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateIntentVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateIntentVersionRequest
-- @return response
-- @return error_message
function M.CreateIntentVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateIntentVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUtterancesView asynchronously, invoking a callback when done
-- @param GetUtterancesViewRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUtterancesViewAsync(GetUtterancesViewRequest, cb)
	assert(GetUtterancesViewRequest, "You must provide a GetUtterancesViewRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetUtterancesView",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/bots/{botname}/utterances?view=aggregation", GetUtterancesViewRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUtterancesView synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUtterancesViewRequest
-- @return response
-- @return error_message
function M.GetUtterancesViewSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUtterancesViewAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBot asynchronously, invoking a callback when done
-- @param GetBotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotAsync(GetBotRequest, cb)
	assert(GetBotRequest, "You must provide a GetBotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBot",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/bots/{name}/versions/{versionoralias}", GetBotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBotRequest
-- @return response
-- @return error_message
function M.GetBotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSlotTypeVersions asynchronously, invoking a callback when done
-- @param GetSlotTypeVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSlotTypeVersionsAsync(GetSlotTypeVersionsRequest, cb)
	assert(GetSlotTypeVersionsRequest, "You must provide a GetSlotTypeVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSlotTypeVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/slottypes/{name}/versions/", GetSlotTypeVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSlotTypeVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSlotTypeVersionsRequest
-- @return response
-- @return error_message
function M.GetSlotTypeVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSlotTypeVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIntentVersion asynchronously, invoking a callback when done
-- @param DeleteIntentVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIntentVersionAsync(DeleteIntentVersionRequest, cb)
	assert(DeleteIntentVersionRequest, "You must provide a DeleteIntentVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIntentVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/intents/{name}/versions/{version}", DeleteIntentVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIntentVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIntentVersionRequest
-- @return response
-- @return error_message
function M.DeleteIntentVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIntentVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUtterances asynchronously, invoking a callback when done
-- @param DeleteUtterancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUtterancesAsync(DeleteUtterancesRequest, cb)
	assert(DeleteUtterancesRequest, "You must provide a DeleteUtterancesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteUtterances",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/bots/{botName}/utterances/{userId}", DeleteUtterancesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUtterances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUtterancesRequest
-- @return response
-- @return error_message
function M.DeleteUtterancesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUtterancesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBotAlias asynchronously, invoking a callback when done
-- @param GetBotAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotAliasAsync(GetBotAliasRequest, cb)
	assert(GetBotAliasRequest, "You must provide a GetBotAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBotAlias",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/bots/{botName}/aliases/{name}", GetBotAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBotAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBotAliasRequest
-- @return response
-- @return error_message
function M.GetBotAliasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBotAliasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteIntent asynchronously, invoking a callback when done
-- @param DeleteIntentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIntentAsync(DeleteIntentRequest, cb)
	assert(DeleteIntentRequest, "You must provide a DeleteIntentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteIntent",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/intents/{name}", DeleteIntentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteIntent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteIntentRequest
-- @return response
-- @return error_message
function M.DeleteIntentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteIntentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBotVersions asynchronously, invoking a callback when done
-- @param GetBotVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotVersionsAsync(GetBotVersionsRequest, cb)
	assert(GetBotVersionsRequest, "You must provide a GetBotVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBotVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/bots/{name}/versions/", GetBotVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBotVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBotVersionsRequest
-- @return response
-- @return error_message
function M.GetBotVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBotVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBotAlias asynchronously, invoking a callback when done
-- @param PutBotAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBotAliasAsync(PutBotAliasRequest, cb)
	assert(PutBotAliasRequest, "You must provide a PutBotAliasRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBotAlias",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/bots/{botName}/aliases/{name}", PutBotAliasRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBotAlias synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBotAliasRequest
-- @return response
-- @return error_message
function M.PutBotAliasSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBotAliasAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBotChannelAssociation asynchronously, invoking a callback when done
-- @param DeleteBotChannelAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBotChannelAssociationAsync(DeleteBotChannelAssociationRequest, cb)
	assert(DeleteBotChannelAssociationRequest, "You must provide a DeleteBotChannelAssociationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBotChannelAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/bots/{botName}/aliases/{aliasName}/channels/{name}", DeleteBotChannelAssociationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBotChannelAssociation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBotChannelAssociationRequest
-- @return response
-- @return error_message
function M.DeleteBotChannelAssociationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBotChannelAssociationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBotVersion asynchronously, invoking a callback when done
-- @param DeleteBotVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBotVersionAsync(DeleteBotVersionRequest, cb)
	assert(DeleteBotVersionRequest, "You must provide a DeleteBotVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBotVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/bots/{name}/versions/{version}", DeleteBotVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBotVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBotVersionRequest
-- @return response
-- @return error_message
function M.DeleteBotVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBotVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBotChannelAssociations asynchronously, invoking a callback when done
-- @param GetBotChannelAssociationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotChannelAssociationsAsync(GetBotChannelAssociationsRequest, cb)
	assert(GetBotChannelAssociationsRequest, "You must provide a GetBotChannelAssociationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBotChannelAssociations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/bots/{botName}/aliases/{aliasName}/channels/", GetBotChannelAssociationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBotChannelAssociations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBotChannelAssociationsRequest
-- @return response
-- @return error_message
function M.GetBotChannelAssociationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBotChannelAssociationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutBot asynchronously, invoking a callback when done
-- @param PutBotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBotAsync(PutBotRequest, cb)
	assert(PutBotRequest, "You must provide a PutBotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutBot",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/bots/{name}/versions/$LATEST", PutBotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutBot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutBotRequest
-- @return response
-- @return error_message
function M.PutBotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutBotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBotChannelAssociation asynchronously, invoking a callback when done
-- @param GetBotChannelAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotChannelAssociationAsync(GetBotChannelAssociationRequest, cb)
	assert(GetBotChannelAssociationRequest, "You must provide a GetBotChannelAssociationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBotChannelAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/bots/{botName}/aliases/{aliasName}/channels/{name}", GetBotChannelAssociationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBotChannelAssociation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBotChannelAssociationRequest
-- @return response
-- @return error_message
function M.GetBotChannelAssociationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBotChannelAssociationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBotAliases asynchronously, invoking a callback when done
-- @param GetBotAliasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotAliasesAsync(GetBotAliasesRequest, cb)
	assert(GetBotAliasesRequest, "You must provide a GetBotAliasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBotAliases",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/bots/{botName}/aliases/", GetBotAliasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBotAliases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBotAliasesRequest
-- @return response
-- @return error_message
function M.GetBotAliasesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBotAliasesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteBot asynchronously, invoking a callback when done
-- @param DeleteBotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBotAsync(DeleteBotRequest, cb)
	assert(DeleteBotRequest, "You must provide a DeleteBotRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteBot",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/bots/{name}", DeleteBotRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteBot synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteBotRequest
-- @return response
-- @return error_message
function M.DeleteBotSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteBotAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBuiltinIntents asynchronously, invoking a callback when done
-- @param GetBuiltinIntentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBuiltinIntentsAsync(GetBuiltinIntentsRequest, cb)
	assert(GetBuiltinIntentsRequest, "You must provide a GetBuiltinIntentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBuiltinIntents",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/builtins/intents/", GetBuiltinIntentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBuiltinIntents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBuiltinIntentsRequest
-- @return response
-- @return error_message
function M.GetBuiltinIntentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBuiltinIntentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBots asynchronously, invoking a callback when done
-- @param GetBotsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotsAsync(GetBotsRequest, cb)
	assert(GetBotsRequest, "You must provide a GetBotsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBots",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/bots/", GetBotsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBots synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBotsRequest
-- @return response
-- @return error_message
function M.GetBotsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBotsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSlotType asynchronously, invoking a callback when done
-- @param DeleteSlotTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSlotTypeAsync(DeleteSlotTypeRequest, cb)
	assert(DeleteSlotTypeRequest, "You must provide a DeleteSlotTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteSlotType",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(settings.uri, "/slottypes/{name}", DeleteSlotTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSlotType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSlotTypeRequest
-- @return response
-- @return error_message
function M.DeleteSlotTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSlotTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSlotType asynchronously, invoking a callback when done
-- @param GetSlotTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSlotTypeAsync(GetSlotTypeRequest, cb)
	assert(GetSlotTypeRequest, "You must provide a GetSlotTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSlotType",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/slottypes/{name}/versions/{version}", GetSlotTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSlotType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSlotTypeRequest
-- @return response
-- @return error_message
function M.GetSlotTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSlotTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIntent asynchronously, invoking a callback when done
-- @param GetIntentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntentAsync(GetIntentRequest, cb)
	assert(GetIntentRequest, "You must provide a GetIntentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIntent",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/intents/{name}/versions/{version}", GetIntentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIntent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIntentRequest
-- @return response
-- @return error_message
function M.GetIntentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIntentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutSlotType asynchronously, invoking a callback when done
-- @param PutSlotTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutSlotTypeAsync(PutSlotTypeRequest, cb)
	assert(PutSlotTypeRequest, "You must provide a PutSlotTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutSlotType",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/slottypes/{name}/versions/$LATEST", PutSlotTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutSlotType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutSlotTypeRequest
-- @return response
-- @return error_message
function M.PutSlotTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutSlotTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetBuiltinIntent asynchronously, invoking a callback when done
-- @param GetBuiltinIntentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBuiltinIntentAsync(GetBuiltinIntentRequest, cb)
	assert(GetBuiltinIntentRequest, "You must provide a GetBuiltinIntentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetBuiltinIntent",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(settings.uri, "/builtins/intents/{signature}", GetBuiltinIntentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetBuiltinIntent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetBuiltinIntentRequest
-- @return response
-- @return error_message
function M.GetBuiltinIntentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetBuiltinIntentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutIntent asynchronously, invoking a callback when done
-- @param PutIntentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutIntentAsync(PutIntentRequest, cb)
	assert(PutIntentRequest, "You must provide a PutIntentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutIntent",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(settings.uri, "/intents/{name}/versions/$LATEST", PutIntentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutIntent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutIntentRequest
-- @return response
-- @return error_message
function M.PutIntentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutIntentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
