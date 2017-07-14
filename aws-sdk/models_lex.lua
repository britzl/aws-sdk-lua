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

local GetBotChannelAssociationRequest_keys = { "botAlias" = true, "name" = true, "botName" = true, nil }

function M.AssertGetBotChannelAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotChannelAssociationRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	if struct["botAlias"] then M.AssertAliasName(struct["botAlias"]) end
	if struct["name"] then M.AssertBotChannelName(struct["name"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(GetBotChannelAssociationRequest_keys[k], "GetBotChannelAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotChannelAssociationRequest
--  
-- @param botAlias [AliasName] &lt;p&gt;An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.&lt;/p&gt;
-- @param name [BotChannelName] &lt;p&gt;The name of the association between the bot and the channel. The name is case sensitive. &lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the Amazon Lex bot.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: botName
-- Required parameter: botAlias
function M.GetBotChannelAssociationRequest(botAlias, name, botName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotChannelAssociationRequest")
	local t = { 
		["botAlias"] = botAlias,
		["name"] = name,
		["botName"] = botName,
	}
	M.AssertGetBotChannelAssociationRequest(t)
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
-- &lt;p&gt;The request is not well formed. For example, a value is invalid or a required field is missing. Check the field values, and try again.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The request is not well formed. For example, a value is invalid or a required field is missing. Check the field values, and try again.&lt;/p&gt;
function M.BadRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertBadRequestException(t)
	return t
end

local GetBuiltinSlotTypesResponse_keys = { "nextToken" = true, "slotTypes" = true, nil }

function M.AssertGetBuiltinSlotTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinSlotTypesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["slotTypes"] then M.AssertBuiltinSlotTypeMetadataList(struct["slotTypes"]) end
	for k,_ in pairs(struct) do
		assert(GetBuiltinSlotTypesResponse_keys[k], "GetBuiltinSlotTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinSlotTypesResponse
--  
-- @param nextToken [NextToken] &lt;p&gt;If the response is truncated, the response includes a pagination token that you can use in your next request to fetch the next page of slot types.&lt;/p&gt;
-- @param slotTypes [BuiltinSlotTypeMetadataList] &lt;p&gt;An array of &lt;code&gt;BuiltInSlotTypeMetadata&lt;/code&gt; objects, one entry for each slot type returned.&lt;/p&gt;
function M.GetBuiltinSlotTypesResponse(nextToken, slotTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBuiltinSlotTypesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["slotTypes"] = slotTypes,
	}
	M.AssertGetBuiltinSlotTypesResponse(t)
	return t
end

local Statement_keys = { "messages" = true, "responseCard" = true, nil }

function M.AssertStatement(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Statement to be of type 'table'")
	assert(struct["messages"], "Expected key messages to exist in table")
	if struct["messages"] then M.AssertMessageList(struct["messages"]) end
	if struct["responseCard"] then M.AssertResponseCard(struct["responseCard"]) end
	for k,_ in pairs(struct) do
		assert(Statement_keys[k], "Statement contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Statement
-- &lt;p&gt;A collection of messages that convey information to the user. At runtime, Amazon Lex selects the message to convey. &lt;/p&gt;
-- @param messages [MessageList] &lt;p&gt;A collection of message objects.&lt;/p&gt;
-- @param responseCard [ResponseCard] &lt;p&gt; At runtime, if the client is using the API, Amazon Lex includes the response card in the response. It substitutes all of the session attributes and slot values for placeholders in the response card. &lt;/p&gt;
-- Required parameter: messages
function M.Statement(messages, responseCard, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Statement")
	local t = { 
		["messages"] = messages,
		["responseCard"] = responseCard,
	}
	M.AssertStatement(t)
	return t
end

local GetBotChannelAssociationsRequest_keys = { "nameContains" = true, "nextToken" = true, "botName" = true, "maxResults" = true, "botAlias" = true, nil }

function M.AssertGetBotChannelAssociationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotChannelAssociationsRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	if struct["nameContains"] then M.AssertBotChannelName(struct["nameContains"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	if struct["botAlias"] then M.AssertAliasNameOrListAll(struct["botAlias"]) end
	for k,_ in pairs(struct) do
		assert(GetBotChannelAssociationsRequest_keys[k], "GetBotChannelAssociationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotChannelAssociationsRequest
--  
-- @param nameContains [BotChannelName] &lt;p&gt;Substring to match in channel association names. An association will be returned if any part of its name matches the substring. For example, &quot;xyz&quot; matches both &quot;xyzabc&quot; and &quot;abcxyz.&quot; To return all bot channel associations, use a hyphen (&quot;-&quot;) as the &lt;code&gt;nameContains&lt;/code&gt; parameter.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request. &lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the Amazon Lex bot in the association.&lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of associations to return in the response. The default is 50. &lt;/p&gt;
-- @param botAlias [AliasNameOrListAll] &lt;p&gt;An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.&lt;/p&gt;
-- Required parameter: botName
-- Required parameter: botAlias
function M.GetBotChannelAssociationsRequest(nameContains, nextToken, botName, maxResults, botAlias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotChannelAssociationsRequest")
	local t = { 
		["nameContains"] = nameContains,
		["nextToken"] = nextToken,
		["botName"] = botName,
		["maxResults"] = maxResults,
		["botAlias"] = botAlias,
	}
	M.AssertGetBotChannelAssociationsRequest(t)
	return t
end

local CreateIntentVersionRequest_keys = { "checksum" = true, "name" = true, nil }

function M.AssertCreateIntentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIntentVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(CreateIntentVersionRequest_keys[k], "CreateIntentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIntentVersionRequest
--  
-- @param checksum [String] &lt;p&gt;Checksum of the &lt;code&gt;$LATEST&lt;/code&gt; version of the intent that should be used to create the new version. If you specify a checksum and the &lt;code&gt;$LATEST&lt;/code&gt; version of the intent has a different checksum, Amazon Lex returns a &lt;code&gt;PreconditionFailedException&lt;/code&gt; exception and doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent that you want to create a new version of. The name is case sensitive. &lt;/p&gt;
-- Required parameter: name
function M.CreateIntentVersionRequest(checksum, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIntentVersionRequest")
	local t = { 
		["checksum"] = checksum,
		["name"] = name,
	}
	M.AssertCreateIntentVersionRequest(t)
	return t
end

local GetBotsResponse_keys = { "bots" = true, "nextToken" = true, nil }

function M.AssertGetBotsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotsResponse to be of type 'table'")
	if struct["bots"] then M.AssertBotMetadataList(struct["bots"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetBotsResponse_keys[k], "GetBotsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotsResponse
--  
-- @param bots [BotMetadataList] &lt;p&gt;An array of &lt;code&gt;botMetadata&lt;/code&gt; objects, with one entry for each bot. &lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of bots. &lt;/p&gt;
function M.GetBotsResponse(bots, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotsResponse")
	local t = { 
		["bots"] = bots,
		["nextToken"] = nextToken,
	}
	M.AssertGetBotsResponse(t)
	return t
end

local GetSlotTypeVersionsResponse_keys = { "nextToken" = true, "slotTypes" = true, nil }

function M.AssertGetSlotTypeVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypeVersionsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["slotTypes"] then M.AssertSlotTypeMetadataList(struct["slotTypes"]) end
	for k,_ in pairs(struct) do
		assert(GetSlotTypeVersionsResponse_keys[k], "GetSlotTypeVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypeVersionsResponse
--  
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. &lt;/p&gt;
-- @param slotTypes [SlotTypeMetadataList] &lt;p&gt;An array of &lt;code&gt;SlotTypeMetadata&lt;/code&gt; objects, one for each numbered version of the slot type plus one for the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt;
function M.GetSlotTypeVersionsResponse(nextToken, slotTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSlotTypeVersionsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["slotTypes"] = slotTypes,
	}
	M.AssertGetSlotTypeVersionsResponse(t)
	return t
end

local Intent_keys = { "intentVersion" = true, "intentName" = true, nil }

function M.AssertIntent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Intent to be of type 'table'")
	assert(struct["intentName"], "Expected key intentName to exist in table")
	assert(struct["intentVersion"], "Expected key intentVersion to exist in table")
	if struct["intentVersion"] then M.AssertVersion(struct["intentVersion"]) end
	if struct["intentName"] then M.AssertIntentName(struct["intentName"]) end
	for k,_ in pairs(struct) do
		assert(Intent_keys[k], "Intent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Intent
-- &lt;p&gt;Identifies the specific version of an intent.&lt;/p&gt;
-- @param intentVersion [Version] &lt;p&gt;The version of the intent.&lt;/p&gt;
-- @param intentName [IntentName] &lt;p&gt;The name of the intent.&lt;/p&gt;
-- Required parameter: intentName
-- Required parameter: intentVersion
function M.Intent(intentVersion, intentName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Intent")
	local t = { 
		["intentVersion"] = intentVersion,
		["intentName"] = intentName,
	}
	M.AssertIntent(t)
	return t
end

local GetBotChannelAssociationResponse_keys = { "name" = true, "botConfiguration" = true, "botAlias" = true, "createdDate" = true, "type" = true, "botName" = true, "description" = true, nil }

function M.AssertGetBotChannelAssociationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotChannelAssociationResponse to be of type 'table'")
	if struct["name"] then M.AssertBotChannelName(struct["name"]) end
	if struct["botConfiguration"] then M.AssertChannelConfigurationMap(struct["botConfiguration"]) end
	if struct["botAlias"] then M.AssertAliasName(struct["botAlias"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["type"] then M.AssertChannelType(struct["type"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(GetBotChannelAssociationResponse_keys[k], "GetBotChannelAssociationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotChannelAssociationResponse
--  
-- @param name [BotChannelName] &lt;p&gt;The name of the association between the bot and the channel.&lt;/p&gt;
-- @param botConfiguration [ChannelConfigurationMap] &lt;p&gt;Provides information that the messaging platform needs to communicate with the Amazon Lex bot.&lt;/p&gt;
-- @param botAlias [AliasName] &lt;p&gt;An alias pointing to the specific version of the Amazon Lex bot to which this association is being made.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the association between the bot and the channel was created.&lt;/p&gt;
-- @param type [ChannelType] &lt;p&gt;The type of the messaging platform.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the Amazon Lex bot.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the association between the bot and the channel.&lt;/p&gt;
function M.GetBotChannelAssociationResponse(name, botConfiguration, botAlias, createdDate, type, botName, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotChannelAssociationResponse")
	local t = { 
		["name"] = name,
		["botConfiguration"] = botConfiguration,
		["botAlias"] = botAlias,
		["createdDate"] = createdDate,
		["type"] = type,
		["botName"] = botName,
		["description"] = description,
	}
	M.AssertGetBotChannelAssociationResponse(t)
	return t
end

local GetBuiltinSlotTypesRequest_keys = { "locale" = true, "nextToken" = true, "signatureContains" = true, "maxResults" = true, nil }

function M.AssertGetBuiltinSlotTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinSlotTypesRequest to be of type 'table'")
	if struct["locale"] then M.AssertLocale(struct["locale"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["signatureContains"] then M.AssertString(struct["signatureContains"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetBuiltinSlotTypesRequest_keys[k], "GetBuiltinSlotTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinSlotTypesRequest
--  
-- @param locale [Locale] &lt;p&gt;A list of locales that the slot type supports.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of slot types, specify the pagination token in the next request.&lt;/p&gt;
-- @param signatureContains [String] &lt;p&gt;Substring to match in built-in slot type signatures. A slot type will be returned if any part of its signature matches the substring. For example, &quot;xyz&quot; matches both &quot;xyzabc&quot; and &quot;abcxyz.&quot;&lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of slot types to return in the response. The default is 10.&lt;/p&gt;
function M.GetBuiltinSlotTypesRequest(locale, nextToken, signatureContains, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBuiltinSlotTypesRequest")
	local t = { 
		["locale"] = locale,
		["nextToken"] = nextToken,
		["signatureContains"] = signatureContains,
		["maxResults"] = maxResults,
	}
	M.AssertGetBuiltinSlotTypesRequest(t)
	return t
end

local BuiltinIntentMetadata_keys = { "supportedLocales" = true, "signature" = true, nil }

function M.AssertBuiltinIntentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuiltinIntentMetadata to be of type 'table'")
	if struct["supportedLocales"] then M.AssertLocaleList(struct["supportedLocales"]) end
	if struct["signature"] then M.AssertBuiltinIntentSignature(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(BuiltinIntentMetadata_keys[k], "BuiltinIntentMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuiltinIntentMetadata
-- &lt;p&gt;Provides metadata for a built-in intent.&lt;/p&gt;
-- @param supportedLocales [LocaleList] &lt;p&gt;A list of identifiers for the locales that the intent supports.&lt;/p&gt;
-- @param signature [BuiltinIntentSignature] &lt;p&gt;A unique identifier for the built-in intent. To find the signature for an intent, see &lt;a href=&quot;https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents&quot;&gt;Standard Built-in Intents&lt;/a&gt; in the &lt;i&gt;Alexa Skills Kit&lt;/i&gt;.&lt;/p&gt;
function M.BuiltinIntentMetadata(supportedLocales, signature, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuiltinIntentMetadata")
	local t = { 
		["supportedLocales"] = supportedLocales,
		["signature"] = signature,
	}
	M.AssertBuiltinIntentMetadata(t)
	return t
end

local PutBotAliasResponse_keys = { "name" = true, "checksum" = true, "description" = true, "lastUpdatedDate" = true, "createdDate" = true, "botName" = true, "botVersion" = true, nil }

function M.AssertPutBotAliasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBotAliasResponse to be of type 'table'")
	if struct["name"] then M.AssertAliasName(struct["name"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["botVersion"] then M.AssertVersion(struct["botVersion"]) end
	for k,_ in pairs(struct) do
		assert(PutBotAliasResponse_keys[k], "PutBotAliasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBotAliasResponse
--  
-- @param name [AliasName] &lt;p&gt;The name of the alias.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;The checksum for the current version of the alias.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the alias.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the bot alias was created.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot that the alias points to.&lt;/p&gt;
-- @param botVersion [Version] &lt;p&gt;The version of the bot that the alias points to.&lt;/p&gt;
function M.PutBotAliasResponse(name, checksum, description, lastUpdatedDate, createdDate, botName, botVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBotAliasResponse")
	local t = { 
		["name"] = name,
		["checksum"] = checksum,
		["description"] = description,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["botName"] = botName,
		["botVersion"] = botVersion,
	}
	M.AssertPutBotAliasResponse(t)
	return t
end

local BotChannelAssociation_keys = { "name" = true, "botConfiguration" = true, "botAlias" = true, "createdDate" = true, "type" = true, "botName" = true, "description" = true, nil }

function M.AssertBotChannelAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BotChannelAssociation to be of type 'table'")
	if struct["name"] then M.AssertBotChannelName(struct["name"]) end
	if struct["botConfiguration"] then M.AssertChannelConfigurationMap(struct["botConfiguration"]) end
	if struct["botAlias"] then M.AssertAliasName(struct["botAlias"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["type"] then M.AssertChannelType(struct["type"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(BotChannelAssociation_keys[k], "BotChannelAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BotChannelAssociation
-- &lt;p&gt;Represents an association between an Amazon Lex bot and an external messaging platform.&lt;/p&gt;
-- @param name [BotChannelName] &lt;p&gt;The name of the association between the bot and the channel. &lt;/p&gt;
-- @param botConfiguration [ChannelConfigurationMap] &lt;p&gt;Provides information necessary to communicate with the messaging platform. &lt;/p&gt;
-- @param botAlias [AliasName] &lt;p&gt;An alias pointing to the specific version of the Amazon Lex bot to which this association is being made. &lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the association between the Amazon Lex bot and the channel was created. &lt;/p&gt;
-- @param type [ChannelType] &lt;p&gt;Specifies the type of association by indicating the type of channel being established between the Amazon Lex bot and the external messaging platform.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the Amazon Lex bot to which this association is being made. &lt;/p&gt; &lt;note&gt; &lt;p&gt;Currently, Amazon Lex supports associations with Facebook and Slack, and Twilio.&lt;/p&gt; &lt;/note&gt;
-- @param description [Description] &lt;p&gt;A text description of the association you are creating. &lt;/p&gt;
function M.BotChannelAssociation(name, botConfiguration, botAlias, createdDate, type, botName, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BotChannelAssociation")
	local t = { 
		["name"] = name,
		["botConfiguration"] = botConfiguration,
		["botAlias"] = botAlias,
		["createdDate"] = createdDate,
		["type"] = type,
		["botName"] = botName,
		["description"] = description,
	}
	M.AssertBotChannelAssociation(t)
	return t
end

local CodeHook_keys = { "uri" = true, "messageVersion" = true, nil }

function M.AssertCodeHook(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeHook to be of type 'table'")
	assert(struct["uri"], "Expected key uri to exist in table")
	assert(struct["messageVersion"], "Expected key messageVersion to exist in table")
	if struct["uri"] then M.AssertLambdaARN(struct["uri"]) end
	if struct["messageVersion"] then M.AssertMessageVersion(struct["messageVersion"]) end
	for k,_ in pairs(struct) do
		assert(CodeHook_keys[k], "CodeHook contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeHook
-- &lt;p&gt;Specifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot..&lt;/p&gt;
-- @param uri [LambdaARN] &lt;p&gt;The Amazon Resource Name (ARN) of the Lambda function.&lt;/p&gt;
-- @param messageVersion [MessageVersion] &lt;p&gt;The version of the request-response that you want Amazon Lex to use to invoke your Lambda function. For more information, see &lt;a&gt;using-lambda&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: uri
-- Required parameter: messageVersion
function M.CodeHook(uri, messageVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CodeHook")
	local t = { 
		["uri"] = uri,
		["messageVersion"] = messageVersion,
	}
	M.AssertCodeHook(t)
	return t
end

local DeleteUtterancesRequest_keys = { "userId" = true, "botName" = true, nil }

function M.AssertDeleteUtterancesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUtterancesRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["userId"], "Expected key userId to exist in table")
	if struct["userId"] then M.AssertUserId(struct["userId"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteUtterancesRequest_keys[k], "DeleteUtterancesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUtterancesRequest
--  
-- @param userId [UserId] &lt;p&gt; The unique identifier for the user that made the utterances. This is the user ID that was sent in the or operation request that contained the utterance.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot that stored the utterances.&lt;/p&gt;
-- Required parameter: botName
-- Required parameter: userId
function M.DeleteUtterancesRequest(userId, botName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteUtterancesRequest")
	local t = { 
		["userId"] = userId,
		["botName"] = botName,
	}
	M.AssertDeleteUtterancesRequest(t)
	return t
end

local UtteranceData_keys = { "count" = true, "utteranceString" = true, "lastUtteredDate" = true, "distinctUsers" = true, "firstUtteredDate" = true, nil }

function M.AssertUtteranceData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UtteranceData to be of type 'table'")
	if struct["count"] then M.AssertCount(struct["count"]) end
	if struct["utteranceString"] then M.AssertUtteranceString(struct["utteranceString"]) end
	if struct["lastUtteredDate"] then M.AssertTimestamp(struct["lastUtteredDate"]) end
	if struct["distinctUsers"] then M.AssertCount(struct["distinctUsers"]) end
	if struct["firstUtteredDate"] then M.AssertTimestamp(struct["firstUtteredDate"]) end
	for k,_ in pairs(struct) do
		assert(UtteranceData_keys[k], "UtteranceData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UtteranceData
-- &lt;p&gt;Provides information about a single utterance that was made to your bot. &lt;/p&gt;
-- @param count [Count] &lt;p&gt;The number of times that the utterance was processed.&lt;/p&gt;
-- @param utteranceString [UtteranceString] &lt;p&gt;The text that was entered by the user or the text representation of an audio clip.&lt;/p&gt;
-- @param lastUtteredDate [Timestamp] &lt;p&gt;The date that the utterance was last recorded.&lt;/p&gt;
-- @param distinctUsers [Count] &lt;p&gt;The total number of individuals that used the utterance.&lt;/p&gt;
-- @param firstUtteredDate [Timestamp] &lt;p&gt;The date that the utterance was first recorded.&lt;/p&gt;
function M.UtteranceData(count, utteranceString, lastUtteredDate, distinctUsers, firstUtteredDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UtteranceData")
	local t = { 
		["count"] = count,
		["utteranceString"] = utteranceString,
		["lastUtteredDate"] = lastUtteredDate,
		["distinctUsers"] = distinctUsers,
		["firstUtteredDate"] = firstUtteredDate,
	}
	M.AssertUtteranceData(t)
	return t
end

local GetBotResponse_keys = { "status" = true, "intents" = true, "name" = true, "locale" = true, "checksum" = true, "createdDate" = true, "version" = true, "lastUpdatedDate" = true, "abortStatement" = true, "clarificationPrompt" = true, "voiceId" = true, "failureReason" = true, "childDirected" = true, "idleSessionTTLInSeconds" = true, "description" = true, nil }

function M.AssertGetBotResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotResponse to be of type 'table'")
	if struct["status"] then M.AssertStatus(struct["status"]) end
	if struct["intents"] then M.AssertIntentList(struct["intents"]) end
	if struct["name"] then M.AssertBotName(struct["name"]) end
	if struct["locale"] then M.AssertLocale(struct["locale"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["abortStatement"] then M.AssertStatement(struct["abortStatement"]) end
	if struct["clarificationPrompt"] then M.AssertPrompt(struct["clarificationPrompt"]) end
	if struct["voiceId"] then M.AssertString(struct["voiceId"]) end
	if struct["failureReason"] then M.AssertString(struct["failureReason"]) end
	if struct["childDirected"] then M.AssertBoolean(struct["childDirected"]) end
	if struct["idleSessionTTLInSeconds"] then M.AssertSessionTTL(struct["idleSessionTTLInSeconds"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(GetBotResponse_keys[k], "GetBotResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotResponse
--  
-- @param status [Status] &lt;p&gt;The status of the bot. If the bot is ready to run, the status is &lt;code&gt;READY&lt;/code&gt;. If there was a problem with building the bot, the status is &lt;code&gt;FAILED&lt;/code&gt; and the &lt;code&gt;failureReason&lt;/code&gt; explains why the bot did not build. If the bot was saved but not built, the status is &lt;code&gt;NOT BUILT&lt;/code&gt;.&lt;/p&gt;
-- @param intents [IntentList] &lt;p&gt;An array of &lt;code&gt;intent&lt;/code&gt; objects. For more information, see .&lt;/p&gt;
-- @param name [BotName] &lt;p&gt;The name of the bot.&lt;/p&gt;
-- @param locale [Locale] &lt;p&gt; The target locale for the bot. &lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the bot used to identify a specific revision of the bot's &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the bot was created.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the bot. For a new bot, the version is always &lt;code&gt;$LATEST&lt;/code&gt;.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the bot was updated. When you create a resource, the creation date and last updated date are the same. &lt;/p&gt;
-- @param abortStatement [Statement] &lt;p&gt;The message that Amazon Lex returns when the user elects to end the conversation without completing it. For more information, see .&lt;/p&gt;
-- @param clarificationPrompt [Prompt] &lt;p&gt;The message Amazon Lex uses when it doesn't understand the user's request. For more information, see . &lt;/p&gt;
-- @param voiceId [String] &lt;p&gt;The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. For more information, see .&lt;/p&gt;
-- @param failureReason [String] &lt;p&gt;If &lt;code&gt;status&lt;/code&gt; is &lt;code&gt;FAILED&lt;/code&gt;, Amazon Lex explains why it failed to build the bot.&lt;/p&gt;
-- @param childDirected [Boolean] &lt;p&gt;For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field. By specifying &lt;code&gt;true&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field, you confirm that your use of Amazon Lex &lt;b&gt;is&lt;/b&gt; related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying &lt;code&gt;false&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field, you confirm that your use of Amazon Lex &lt;b&gt;is not&lt;/b&gt; related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the &lt;code&gt;childDirected&lt;/code&gt; field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.&lt;/p&gt; &lt;p&gt;If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the &lt;a href=&quot;https://aws.amazon.com/lex/faqs#data-security&quot;&gt;Amazon Lex FAQ.&lt;/a&gt; &lt;/p&gt;
-- @param idleSessionTTLInSeconds [SessionTTL] &lt;p&gt;The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see .&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the bot.&lt;/p&gt;
function M.GetBotResponse(status, intents, name, locale, checksum, createdDate, version, lastUpdatedDate, abortStatement, clarificationPrompt, voiceId, failureReason, childDirected, idleSessionTTLInSeconds, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotResponse")
	local t = { 
		["status"] = status,
		["intents"] = intents,
		["name"] = name,
		["locale"] = locale,
		["checksum"] = checksum,
		["createdDate"] = createdDate,
		["version"] = version,
		["lastUpdatedDate"] = lastUpdatedDate,
		["abortStatement"] = abortStatement,
		["clarificationPrompt"] = clarificationPrompt,
		["voiceId"] = voiceId,
		["failureReason"] = failureReason,
		["childDirected"] = childDirected,
		["idleSessionTTLInSeconds"] = idleSessionTTLInSeconds,
		["description"] = description,
	}
	M.AssertGetBotResponse(t)
	return t
end

local GetIntentsResponse_keys = { "intents" = true, "nextToken" = true, nil }

function M.AssertGetIntentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentsResponse to be of type 'table'")
	if struct["intents"] then M.AssertIntentMetadataList(struct["intents"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetIntentsResponse_keys[k], "GetIntentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentsResponse
--  
-- @param intents [IntentMetadataList] &lt;p&gt;An array of &lt;code&gt;Intent&lt;/code&gt; objects. For more information, see .&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;If the response is truncated, the response includes a pagination token that you can specify in your next request to fetch the next page of intents. &lt;/p&gt;
function M.GetIntentsResponse(intents, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIntentsResponse")
	local t = { 
		["intents"] = intents,
		["nextToken"] = nextToken,
	}
	M.AssertGetIntentsResponse(t)
	return t
end

local DeleteBotChannelAssociationRequest_keys = { "botAlias" = true, "name" = true, "botName" = true, nil }

function M.AssertDeleteBotChannelAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBotChannelAssociationRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botAlias"], "Expected key botAlias to exist in table")
	if struct["botAlias"] then M.AssertAliasName(struct["botAlias"]) end
	if struct["name"] then M.AssertBotChannelName(struct["name"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBotChannelAssociationRequest_keys[k], "DeleteBotChannelAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBotChannelAssociationRequest
--  
-- @param botAlias [AliasName] &lt;p&gt;An alias that points to the specific version of the Amazon Lex bot to which this association is being made.&lt;/p&gt;
-- @param name [BotChannelName] &lt;p&gt;The name of the association. The name is case sensitive. &lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the Amazon Lex bot.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: botName
-- Required parameter: botAlias
function M.DeleteBotChannelAssociationRequest(botAlias, name, botName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBotChannelAssociationRequest")
	local t = { 
		["botAlias"] = botAlias,
		["name"] = name,
		["botName"] = botName,
	}
	M.AssertDeleteBotChannelAssociationRequest(t)
	return t
end

local Slot_keys = { "slotType" = true, "name" = true, "slotConstraint" = true, "valueElicitationPrompt" = true, "responseCard" = true, "priority" = true, "slotTypeVersion" = true, "sampleUtterances" = true, "description" = true, nil }

function M.AssertSlot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Slot to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["slotConstraint"], "Expected key slotConstraint to exist in table")
	if struct["slotType"] then M.AssertCustomOrBuiltinSlotTypeName(struct["slotType"]) end
	if struct["name"] then M.AssertSlotName(struct["name"]) end
	if struct["slotConstraint"] then M.AssertSlotConstraint(struct["slotConstraint"]) end
	if struct["valueElicitationPrompt"] then M.AssertPrompt(struct["valueElicitationPrompt"]) end
	if struct["responseCard"] then M.AssertResponseCard(struct["responseCard"]) end
	if struct["priority"] then M.AssertPriority(struct["priority"]) end
	if struct["slotTypeVersion"] then M.AssertVersion(struct["slotTypeVersion"]) end
	if struct["sampleUtterances"] then M.AssertSlotUtteranceList(struct["sampleUtterances"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(Slot_keys[k], "Slot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Slot
-- &lt;p&gt;Identifies the version of a specific slot.&lt;/p&gt;
-- @param slotType [CustomOrBuiltinSlotTypeName] &lt;p&gt;The type of the slot, either a custom slot type that you defined or one of the built-in slot types.&lt;/p&gt;
-- @param name [SlotName] &lt;p&gt;The name of the slot.&lt;/p&gt;
-- @param slotConstraint [SlotConstraint] &lt;p&gt;Specifies whether the slot is required or optional. &lt;/p&gt;
-- @param valueElicitationPrompt [Prompt] &lt;p&gt;The prompt that Amazon Lex uses to elicit the slot value from the user.&lt;/p&gt;
-- @param responseCard [ResponseCard] &lt;p&gt; A set of possible responses for the slot type used by text-based clients. A user chooses an option from the response card, instead of using text to reply. &lt;/p&gt;
-- @param priority [Priority] &lt;p&gt; Directs Lex the order in which to elicit this slot value from the user. For example, if the intent has two slots with priorities 1 and 2, AWS Lex first elicits a value for the slot with priority 1.&lt;/p&gt; &lt;p&gt;If multiple slots share the same priority, the order in which Lex elicits values is arbitrary.&lt;/p&gt;
-- @param slotTypeVersion [Version] &lt;p&gt;The version of the slot type.&lt;/p&gt;
-- @param sampleUtterances [SlotUtteranceList] &lt;p&gt; If you know a specific pattern with which users might respond to an Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This is optional. In most cases, Amazon Lex is capable of understanding user utterances. &lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the slot.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: slotConstraint
function M.Slot(slotType, name, slotConstraint, valueElicitationPrompt, responseCard, priority, slotTypeVersion, sampleUtterances, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Slot")
	local t = { 
		["slotType"] = slotType,
		["name"] = name,
		["slotConstraint"] = slotConstraint,
		["valueElicitationPrompt"] = valueElicitationPrompt,
		["responseCard"] = responseCard,
		["priority"] = priority,
		["slotTypeVersion"] = slotTypeVersion,
		["sampleUtterances"] = sampleUtterances,
		["description"] = description,
	}
	M.AssertSlot(t)
	return t
end

local PutIntentResponse_keys = { "dialogCodeHook" = true, "confirmationPrompt" = true, "followUpPrompt" = true, "name" = true, "checksum" = true, "conclusionStatement" = true, "parentIntentSignature" = true, "version" = true, "rejectionStatement" = true, "createdDate" = true, "lastUpdatedDate" = true, "sampleUtterances" = true, "slots" = true, "fulfillmentActivity" = true, "description" = true, nil }

function M.AssertPutIntentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIntentResponse to be of type 'table'")
	if struct["dialogCodeHook"] then M.AssertCodeHook(struct["dialogCodeHook"]) end
	if struct["confirmationPrompt"] then M.AssertPrompt(struct["confirmationPrompt"]) end
	if struct["followUpPrompt"] then M.AssertFollowUpPrompt(struct["followUpPrompt"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["conclusionStatement"] then M.AssertStatement(struct["conclusionStatement"]) end
	if struct["parentIntentSignature"] then M.AssertBuiltinIntentSignature(struct["parentIntentSignature"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["rejectionStatement"] then M.AssertStatement(struct["rejectionStatement"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["sampleUtterances"] then M.AssertIntentUtteranceList(struct["sampleUtterances"]) end
	if struct["slots"] then M.AssertSlotList(struct["slots"]) end
	if struct["fulfillmentActivity"] then M.AssertFulfillmentActivity(struct["fulfillmentActivity"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(PutIntentResponse_keys[k], "PutIntentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntentResponse
--  
-- @param dialogCodeHook [CodeHook] &lt;p&gt;If defined in the intent, Amazon Lex invokes this Lambda function for each user input.&lt;/p&gt;
-- @param confirmationPrompt [Prompt] &lt;p&gt;If defined in the intent, Amazon Lex prompts the user to confirm the intent before fulfilling it.&lt;/p&gt;
-- @param followUpPrompt [FollowUpPrompt] &lt;p&gt;If defined in the intent, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled.&lt;/p&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the &lt;code&gt;$LATEST&lt;/code&gt;version of the intent created or updated.&lt;/p&gt;
-- @param conclusionStatement [Statement] &lt;p&gt;After the Lambda function specified in the&lt;code&gt;fulfillmentActivity&lt;/code&gt;intent fulfills the intent, Amazon Lex conveys this statement to the user.&lt;/p&gt;
-- @param parentIntentSignature [BuiltinIntentSignature] &lt;p&gt;A unique identifier for the built-in intent that this intent is based on.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the intent. For a new intent, the version is always &lt;code&gt;$LATEST&lt;/code&gt;.&lt;/p&gt;
-- @param rejectionStatement [Statement] &lt;p&gt;If the user answers &quot;no&quot; to the question defined in &lt;code&gt;confirmationPrompt&lt;/code&gt; Amazon Lex responds with this statement to acknowledge that the intent was canceled. &lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the intent was created.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the intent was updated. When you create a resource, the creation date and last update dates are the same.&lt;/p&gt;
-- @param sampleUtterances [IntentUtteranceList] &lt;p&gt; An array of sample utterances that are configured for the intent. &lt;/p&gt;
-- @param slots [SlotList] &lt;p&gt;An array of intent slots that are configured for the intent.&lt;/p&gt;
-- @param fulfillmentActivity [FulfillmentActivity] &lt;p&gt;If defined in the intent, Amazon Lex invokes this Lambda function to fulfill the intent after the user provides all of the information required by the intent.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the intent.&lt;/p&gt;
function M.PutIntentResponse(dialogCodeHook, confirmationPrompt, followUpPrompt, name, checksum, conclusionStatement, parentIntentSignature, version, rejectionStatement, createdDate, lastUpdatedDate, sampleUtterances, slots, fulfillmentActivity, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutIntentResponse")
	local t = { 
		["dialogCodeHook"] = dialogCodeHook,
		["confirmationPrompt"] = confirmationPrompt,
		["followUpPrompt"] = followUpPrompt,
		["name"] = name,
		["checksum"] = checksum,
		["conclusionStatement"] = conclusionStatement,
		["parentIntentSignature"] = parentIntentSignature,
		["version"] = version,
		["rejectionStatement"] = rejectionStatement,
		["createdDate"] = createdDate,
		["lastUpdatedDate"] = lastUpdatedDate,
		["sampleUtterances"] = sampleUtterances,
		["slots"] = slots,
		["fulfillmentActivity"] = fulfillmentActivity,
		["description"] = description,
	}
	M.AssertPutIntentResponse(t)
	return t
end

local GetIntentVersionsRequest_keys = { "nextToken" = true, "name" = true, "maxResults" = true, nil }

function M.AssertGetIntentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentVersionsRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetIntentVersionsRequest_keys[k], "GetIntentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentVersionsRequest
--  
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching the next page of intent versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. &lt;/p&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent for which versions should be returned.&lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of intent versions to return in the response. The default is 10.&lt;/p&gt;
-- Required parameter: name
function M.GetIntentVersionsRequest(nextToken, name, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIntentVersionsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["name"] = name,
		["maxResults"] = maxResults,
	}
	M.AssertGetIntentVersionsRequest(t)
	return t
end

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
-- &lt;p&gt;The request exceeded a limit. Try your request again.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The request exceeded a limit. Try your request again.&lt;/p&gt;
-- @param retryAfterSeconds [String] &lt;p&gt;The request exceeded a limit. Try your request again.&lt;/p&gt;
function M.LimitExceededException(message, retryAfterSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["message"] = message,
		["retryAfterSeconds"] = retryAfterSeconds,
	}
	M.AssertLimitExceededException(t)
	return t
end

local BotMetadata_keys = { "status" = true, "name" = true, "version" = true, "lastUpdatedDate" = true, "createdDate" = true, "description" = true, nil }

function M.AssertBotMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BotMetadata to be of type 'table'")
	if struct["status"] then M.AssertStatus(struct["status"]) end
	if struct["name"] then M.AssertBotName(struct["name"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(BotMetadata_keys[k], "BotMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BotMetadata
-- &lt;p&gt;Provides information about a bot. .&lt;/p&gt;
-- @param status [Status] &lt;p&gt;The status of the bot.&lt;/p&gt;
-- @param name [BotName] &lt;p&gt;The name of the bot. &lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the bot. For a new bot, the version is always &lt;code&gt;$LATEST&lt;/code&gt;.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the bot was updated. When you create a bot, the creation date and last updated date are the same. &lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the bot was created.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the bot.&lt;/p&gt;
function M.BotMetadata(status, name, version, lastUpdatedDate, createdDate, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BotMetadata")
	local t = { 
		["status"] = status,
		["name"] = name,
		["version"] = version,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["description"] = description,
	}
	M.AssertBotMetadata(t)
	return t
end

local DeleteBotAliasRequest_keys = { "name" = true, "botName" = true, nil }

function M.AssertDeleteBotAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBotAliasRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	if struct["name"] then M.AssertAliasName(struct["name"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBotAliasRequest_keys[k], "DeleteBotAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBotAliasRequest
--  
-- @param name [AliasName] &lt;p&gt;The name of the alias to delete. The name is case sensitive. &lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot that the alias points to.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: botName
function M.DeleteBotAliasRequest(name, botName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBotAliasRequest")
	local t = { 
		["name"] = name,
		["botName"] = botName,
	}
	M.AssertDeleteBotAliasRequest(t)
	return t
end

local GetSlotTypeRequest_keys = { "version" = true, "name" = true, nil }

function M.AssertGetSlotTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypeRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(GetSlotTypeRequest_keys[k], "GetSlotTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypeRequest
--  
-- @param version [Version] &lt;p&gt;The version of the slot type. &lt;/p&gt;
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type. The name is case sensitive. &lt;/p&gt;
-- Required parameter: name
-- Required parameter: version
function M.GetSlotTypeRequest(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSlotTypeRequest")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertGetSlotTypeRequest(t)
	return t
end

local DeleteBotVersionRequest_keys = { "version" = true, "name" = true, nil }

function M.AssertDeleteBotVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBotVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then M.AssertNumericalVersion(struct["version"]) end
	if struct["name"] then M.AssertBotName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBotVersionRequest_keys[k], "DeleteBotVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBotVersionRequest
--  
-- @param version [NumericalVersion] &lt;p&gt;The version of the bot to delete. You cannot delete the &lt;code&gt;$LATEST&lt;/code&gt; version of the bot. To delete the &lt;code&gt;$LATEST&lt;/code&gt; version, use the operation.&lt;/p&gt;
-- @param name [BotName] &lt;p&gt;The name of the bot.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: version
function M.DeleteBotVersionRequest(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBotVersionRequest")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertDeleteBotVersionRequest(t)
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
-- &lt;p&gt;The resource specified in the request was not found. Check the resource and try again.&lt;/p&gt;
-- @param message [String] &lt;p&gt;The resource specified in the request was not found. Check the resource and try again.&lt;/p&gt;
function M.NotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertNotFoundException(t)
	return t
end

local IntentMetadata_keys = { "version" = true, "createdDate" = true, "name" = true, "lastUpdatedDate" = true, "description" = true, nil }

function M.AssertIntentMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IntentMetadata to be of type 'table'")
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(IntentMetadata_keys[k], "IntentMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IntentMetadata
-- &lt;p&gt;Provides information about an intent.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the intent.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the intent was created.&lt;/p&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the intent was updated. When you create an intent, the creation date and last updated date are the same.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the intent.&lt;/p&gt;
function M.IntentMetadata(version, createdDate, name, lastUpdatedDate, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IntentMetadata")
	local t = { 
		["version"] = version,
		["createdDate"] = createdDate,
		["name"] = name,
		["lastUpdatedDate"] = lastUpdatedDate,
		["description"] = description,
	}
	M.AssertIntentMetadata(t)
	return t
end

local GetSlotTypesRequest_keys = { "nameContains" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertGetSlotTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypesRequest to be of type 'table'")
	if struct["nameContains"] then M.AssertSlotTypeName(struct["nameContains"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetSlotTypesRequest_keys[k], "GetSlotTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypesRequest
--  
-- @param nameContains [SlotTypeName] &lt;p&gt;Substring to match in slot type names. A slot type will be returned if any part of its name matches the substring. For example, &quot;xyz&quot; matches both &quot;xyzabc&quot; and &quot;abcxyz.&quot;&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token that fetches the next page of slot types. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch next page of slot types, specify the pagination token in the next request.&lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of slot types to return in the response. The default is 10.&lt;/p&gt;
function M.GetSlotTypesRequest(nameContains, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSlotTypesRequest")
	local t = { 
		["nameContains"] = nameContains,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertGetSlotTypesRequest(t)
	return t
end

local CreateBotVersionRequest_keys = { "checksum" = true, "name" = true, nil }

function M.AssertCreateBotVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBotVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["name"] then M.AssertBotName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(CreateBotVersionRequest_keys[k], "CreateBotVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBotVersionRequest
--  
-- @param checksum [String] &lt;p&gt;Identifies a specific revision of the &lt;code&gt;$LATEST&lt;/code&gt; version of the bot. If you specify a checksum and the &lt;code&gt;$LATEST&lt;/code&gt; version of the bot has a different checksum, a &lt;code&gt;PreconditionFailedException&lt;/code&gt; exception is returned and Amazon Lex doesn't publish a new version. If you don't specify a checksum, Amazon Lex publishes the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt;
-- @param name [BotName] &lt;p&gt;The name of the bot that you want to create a new version of. The name is case sensitive. &lt;/p&gt;
-- Required parameter: name
function M.CreateBotVersionRequest(checksum, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBotVersionRequest")
	local t = { 
		["checksum"] = checksum,
		["name"] = name,
	}
	M.AssertCreateBotVersionRequest(t)
	return t
end

local GetSlotTypeVersionsRequest_keys = { "nextToken" = true, "name" = true, "maxResults" = true, nil }

function M.AssertGetSlotTypeVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypeVersionsRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetSlotTypeVersionsRequest_keys[k], "GetSlotTypeVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypeVersionsRequest
--  
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching the next page of slot type versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. &lt;/p&gt;
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type for which versions should be returned.&lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of slot type versions to return in the response. The default is 10.&lt;/p&gt;
-- Required parameter: name
function M.GetSlotTypeVersionsRequest(nextToken, name, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSlotTypeVersionsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["name"] = name,
		["maxResults"] = maxResults,
	}
	M.AssertGetSlotTypeVersionsRequest(t)
	return t
end

local GetSlotTypeResponse_keys = { "name" = true, "enumerationValues" = true, "checksum" = true, "version" = true, "lastUpdatedDate" = true, "createdDate" = true, "description" = true, nil }

function M.AssertGetSlotTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypeResponse to be of type 'table'")
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	if struct["enumerationValues"] then M.AssertEnumerationValues(struct["enumerationValues"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(GetSlotTypeResponse_keys[k], "GetSlotTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypeResponse
--  
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type.&lt;/p&gt;
-- @param enumerationValues [EnumerationValues] &lt;p&gt;A list of &lt;code&gt;EnumerationValue&lt;/code&gt; objects that defines the values that the slot type can take.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the &lt;code&gt;$LATEST&lt;/code&gt; version of the slot type.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the slot type.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the slot type was created.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the slot type.&lt;/p&gt;
function M.GetSlotTypeResponse(name, enumerationValues, checksum, version, lastUpdatedDate, createdDate, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSlotTypeResponse")
	local t = { 
		["name"] = name,
		["enumerationValues"] = enumerationValues,
		["checksum"] = checksum,
		["version"] = version,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["description"] = description,
	}
	M.AssertGetSlotTypeResponse(t)
	return t
end

local Prompt_keys = { "maxAttempts" = true, "messages" = true, "responseCard" = true, nil }

function M.AssertPrompt(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Prompt to be of type 'table'")
	assert(struct["messages"], "Expected key messages to exist in table")
	assert(struct["maxAttempts"], "Expected key maxAttempts to exist in table")
	if struct["maxAttempts"] then M.AssertPromptMaxAttempts(struct["maxAttempts"]) end
	if struct["messages"] then M.AssertMessageList(struct["messages"]) end
	if struct["responseCard"] then M.AssertResponseCard(struct["responseCard"]) end
	for k,_ in pairs(struct) do
		assert(Prompt_keys[k], "Prompt contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Prompt
-- &lt;p&gt;Obtains information from the user. To define a prompt, provide one or more messages and specify the number of attempts to get information from the user. If you provide more than one message, Amazon Lex chooses one of the messages to use to prompt the user. For more information, see &lt;a&gt;how-it-works&lt;/a&gt;.&lt;/p&gt;
-- @param maxAttempts [PromptMaxAttempts] &lt;p&gt;The number of times to prompt the user for information.&lt;/p&gt;
-- @param messages [MessageList] &lt;p&gt;An array of objects, each of which provides a message string and its type. You can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).&lt;/p&gt;
-- @param responseCard [ResponseCard] &lt;p&gt;A response card. Amazon Lex uses this prompt at runtime, in the &lt;code&gt;PostText&lt;/code&gt; API response. It substitutes session attributes and slot values for placeholders in the response card. For more information, see &lt;a&gt;ex-resp-card&lt;/a&gt;. &lt;/p&gt;
-- Required parameter: messages
-- Required parameter: maxAttempts
function M.Prompt(maxAttempts, messages, responseCard, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Prompt")
	local t = { 
		["maxAttempts"] = maxAttempts,
		["messages"] = messages,
		["responseCard"] = responseCard,
	}
	M.AssertPrompt(t)
	return t
end

local DeleteIntentRequest_keys = { "name" = true, nil }

function M.AssertDeleteIntentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIntentRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIntentRequest_keys[k], "DeleteIntentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIntentRequest
--  
-- @param name [IntentName] &lt;p&gt;The name of the intent. The name is case sensitive. &lt;/p&gt;
-- Required parameter: name
function M.DeleteIntentRequest(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIntentRequest")
	local t = { 
		["name"] = name,
	}
	M.AssertDeleteIntentRequest(t)
	return t
end

local ResourceInUseException_keys = { "exampleReference" = true, "referenceType" = true, nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["exampleReference"] then M.AssertResourceReference(struct["exampleReference"]) end
	if struct["referenceType"] then M.AssertReferenceType(struct["referenceType"]) end
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- &lt;p&gt;The resource that you are attempting to delete is referred to by another resource. Use this information to remove references to the resource that you are trying to delete.&lt;/p&gt; &lt;p&gt;The body of the exception contains a JSON object that describes the resource.&lt;/p&gt; &lt;p&gt; &lt;code&gt;{ &quot;resourceType&quot;: BOT | BOTALIAS | BOTCHANNEL | INTENT,&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;resourceReference&quot;: {&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;name&quot;: &lt;i&gt;string&lt;/i&gt;, &quot;version&quot;: &lt;i&gt;string&lt;/i&gt; } }&lt;/code&gt; &lt;/p&gt;
-- @param exampleReference [ResourceReference] &lt;p&gt;The resource that you are attempting to delete is referred to by another resource. Use this information to remove references to the resource that you are trying to delete.&lt;/p&gt; &lt;p&gt;The body of the exception contains a JSON object that describes the resource.&lt;/p&gt; &lt;p&gt; &lt;code&gt;{ &quot;resourceType&quot;: BOT | BOTALIAS | BOTCHANNEL | INTENT,&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;resourceReference&quot;: {&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;name&quot;: &lt;i&gt;string&lt;/i&gt;, &quot;version&quot;: &lt;i&gt;string&lt;/i&gt; } }&lt;/code&gt; &lt;/p&gt;
-- @param referenceType [ReferenceType] &lt;p&gt;The resource that you are attempting to delete is referred to by another resource. Use this information to remove references to the resource that you are trying to delete.&lt;/p&gt; &lt;p&gt;The body of the exception contains a JSON object that describes the resource.&lt;/p&gt; &lt;p&gt; &lt;code&gt;{ &quot;resourceType&quot;: BOT | BOTALIAS | BOTCHANNEL | INTENT,&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;resourceReference&quot;: {&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;code&gt;&quot;name&quot;: &lt;i&gt;string&lt;/i&gt;, &quot;version&quot;: &lt;i&gt;string&lt;/i&gt; } }&lt;/code&gt; &lt;/p&gt;
function M.ResourceInUseException(exampleReference, referenceType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["exampleReference"] = exampleReference,
		["referenceType"] = referenceType,
	}
	M.AssertResourceInUseException(t)
	return t
end

local GetBuiltinIntentRequest_keys = { "signature" = true, nil }

function M.AssertGetBuiltinIntentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinIntentRequest to be of type 'table'")
	assert(struct["signature"], "Expected key signature to exist in table")
	if struct["signature"] then M.AssertBuiltinIntentSignature(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(GetBuiltinIntentRequest_keys[k], "GetBuiltinIntentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinIntentRequest
--  
-- @param signature [BuiltinIntentSignature] &lt;p&gt;The unique identifier for a built-in intent. To find the signature for an intent, see &lt;a href=&quot;https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents&quot;&gt;Standard Built-in Intents&lt;/a&gt; in the &lt;i&gt;Alexa Skills Kit&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: signature
function M.GetBuiltinIntentRequest(signature, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBuiltinIntentRequest")
	local t = { 
		["signature"] = signature,
	}
	M.AssertGetBuiltinIntentRequest(t)
	return t
end

local Message_keys = { "content" = true, "contentType" = true, nil }

function M.AssertMessage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Message to be of type 'table'")
	assert(struct["contentType"], "Expected key contentType to exist in table")
	assert(struct["content"], "Expected key content to exist in table")
	if struct["content"] then M.AssertContentString(struct["content"]) end
	if struct["contentType"] then M.AssertContentType(struct["contentType"]) end
	for k,_ in pairs(struct) do
		assert(Message_keys[k], "Message contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Message
-- &lt;p&gt;The message object that provides the message text and its type.&lt;/p&gt;
-- @param content [ContentString] &lt;p&gt;The text of the message.&lt;/p&gt;
-- @param contentType [ContentType] &lt;p&gt;The content type of the message string.&lt;/p&gt;
-- Required parameter: contentType
-- Required parameter: content
function M.Message(content, contentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Message")
	local t = { 
		["content"] = content,
		["contentType"] = contentType,
	}
	M.AssertMessage(t)
	return t
end

local GetIntentResponse_keys = { "dialogCodeHook" = true, "confirmationPrompt" = true, "followUpPrompt" = true, "name" = true, "checksum" = true, "conclusionStatement" = true, "parentIntentSignature" = true, "version" = true, "rejectionStatement" = true, "createdDate" = true, "lastUpdatedDate" = true, "sampleUtterances" = true, "slots" = true, "fulfillmentActivity" = true, "description" = true, nil }

function M.AssertGetIntentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentResponse to be of type 'table'")
	if struct["dialogCodeHook"] then M.AssertCodeHook(struct["dialogCodeHook"]) end
	if struct["confirmationPrompt"] then M.AssertPrompt(struct["confirmationPrompt"]) end
	if struct["followUpPrompt"] then M.AssertFollowUpPrompt(struct["followUpPrompt"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["conclusionStatement"] then M.AssertStatement(struct["conclusionStatement"]) end
	if struct["parentIntentSignature"] then M.AssertBuiltinIntentSignature(struct["parentIntentSignature"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["rejectionStatement"] then M.AssertStatement(struct["rejectionStatement"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["sampleUtterances"] then M.AssertIntentUtteranceList(struct["sampleUtterances"]) end
	if struct["slots"] then M.AssertSlotList(struct["slots"]) end
	if struct["fulfillmentActivity"] then M.AssertFulfillmentActivity(struct["fulfillmentActivity"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(GetIntentResponse_keys[k], "GetIntentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentResponse
--  
-- @param dialogCodeHook [CodeHook] &lt;p&gt;If defined in the bot, Amazon Amazon Lex invokes this Lambda function for each user input. For more information, see . &lt;/p&gt;
-- @param confirmationPrompt [Prompt] &lt;p&gt;If defined in the bot, Amazon Lex uses prompt to confirm the intent before fulfilling the user's request. For more information, see . &lt;/p&gt;
-- @param followUpPrompt [FollowUpPrompt] &lt;p&gt;If defined in the bot, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled. For more information, see .&lt;/p&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the intent.&lt;/p&gt;
-- @param conclusionStatement [Statement] &lt;p&gt;After the Lambda function specified in the &lt;code&gt;fulfillmentActivity&lt;/code&gt; element fulfills the intent, Amazon Lex conveys this statement to the user.&lt;/p&gt;
-- @param parentIntentSignature [BuiltinIntentSignature] &lt;p&gt;A unique identifier for a built-in intent.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the intent.&lt;/p&gt;
-- @param rejectionStatement [Statement] &lt;p&gt;If the user answers &quot;no&quot; to the question defined in &lt;code&gt;confirmationPrompt&lt;/code&gt;, Amazon Lex responds with this statement to acknowledge that the intent was canceled. &lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the intent was created.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the intent was updated. When you create a resource, the creation date and the last updated date are the same. &lt;/p&gt;
-- @param sampleUtterances [IntentUtteranceList] &lt;p&gt;An array of sample utterances configured for the intent.&lt;/p&gt;
-- @param slots [SlotList] &lt;p&gt;An array of intent slots configured for the intent.&lt;/p&gt;
-- @param fulfillmentActivity [FulfillmentActivity] &lt;p&gt;Describes how the intent is fulfilled. For more information, see . &lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the intent.&lt;/p&gt;
function M.GetIntentResponse(dialogCodeHook, confirmationPrompt, followUpPrompt, name, checksum, conclusionStatement, parentIntentSignature, version, rejectionStatement, createdDate, lastUpdatedDate, sampleUtterances, slots, fulfillmentActivity, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIntentResponse")
	local t = { 
		["dialogCodeHook"] = dialogCodeHook,
		["confirmationPrompt"] = confirmationPrompt,
		["followUpPrompt"] = followUpPrompt,
		["name"] = name,
		["checksum"] = checksum,
		["conclusionStatement"] = conclusionStatement,
		["parentIntentSignature"] = parentIntentSignature,
		["version"] = version,
		["rejectionStatement"] = rejectionStatement,
		["createdDate"] = createdDate,
		["lastUpdatedDate"] = lastUpdatedDate,
		["sampleUtterances"] = sampleUtterances,
		["slots"] = slots,
		["fulfillmentActivity"] = fulfillmentActivity,
		["description"] = description,
	}
	M.AssertGetIntentResponse(t)
	return t
end

local PutIntentRequest_keys = { "dialogCodeHook" = true, "confirmationPrompt" = true, "followUpPrompt" = true, "name" = true, "checksum" = true, "conclusionStatement" = true, "parentIntentSignature" = true, "rejectionStatement" = true, "sampleUtterances" = true, "slots" = true, "fulfillmentActivity" = true, "description" = true, nil }

function M.AssertPutIntentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutIntentRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["dialogCodeHook"] then M.AssertCodeHook(struct["dialogCodeHook"]) end
	if struct["confirmationPrompt"] then M.AssertPrompt(struct["confirmationPrompt"]) end
	if struct["followUpPrompt"] then M.AssertFollowUpPrompt(struct["followUpPrompt"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["conclusionStatement"] then M.AssertStatement(struct["conclusionStatement"]) end
	if struct["parentIntentSignature"] then M.AssertBuiltinIntentSignature(struct["parentIntentSignature"]) end
	if struct["rejectionStatement"] then M.AssertStatement(struct["rejectionStatement"]) end
	if struct["sampleUtterances"] then M.AssertIntentUtteranceList(struct["sampleUtterances"]) end
	if struct["slots"] then M.AssertSlotList(struct["slots"]) end
	if struct["fulfillmentActivity"] then M.AssertFulfillmentActivity(struct["fulfillmentActivity"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(PutIntentRequest_keys[k], "PutIntentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutIntentRequest
--  
-- @param dialogCodeHook [CodeHook] &lt;p&gt; Specifies a Lambda function to invoke for each user input. You can invoke this Lambda function to personalize user interaction. &lt;/p&gt; &lt;p&gt;For example, suppose your bot determines that the user is John. Your Lambda function might retrieve John's information from a backend database and prepopulate some of the values. For example, if you find that John is gluten intolerant, you might set the corresponding intent slot, &lt;code&gt;GlutenIntolerant&lt;/code&gt;, to true. You might find John's phone number and set the corresponding session attribute. &lt;/p&gt;
-- @param confirmationPrompt [Prompt] &lt;p&gt;Prompts the user to confirm the intent. This question should have a yes or no answer.&lt;/p&gt; &lt;p&gt;Amazon Lex uses this prompt to ensure that the user acknowledges that the intent is ready for fulfillment. For example, with the &lt;code&gt;OrderPizza&lt;/code&gt; intent, you might want to confirm that the order is correct before placing it. For other intents, such as intents that simply respond to user questions, you might not need to ask the user for confirmation before providing the information. &lt;/p&gt; &lt;note&gt; &lt;p&gt;You you must provide both the &lt;code&gt;rejectionStatement&lt;/code&gt; and the &lt;code&gt;confirmationPrompt&lt;/code&gt;, or neither.&lt;/p&gt; &lt;/note&gt;
-- @param followUpPrompt [FollowUpPrompt] &lt;p&gt;A user prompt for additional activity after an intent is fulfilled. For example, after the &lt;code&gt;OrderPizza&lt;/code&gt; intent is fulfilled (your Lambda function placed an order with a pizzeria), you might prompt the user to find if they want to order a drink (assuming that you have defined an &lt;code&gt;OrderDrink&lt;/code&gt; intent in your bot).&lt;/p&gt; &lt;note&gt; &lt;p&gt;The &lt;code&gt;followUpPrompt&lt;/code&gt; and &lt;code&gt;conclusionStatement&lt;/code&gt; are mutually exclusive. You can specify only one. For example, your bot may not solicit both the following: &lt;/p&gt; &lt;p&gt; Follow up prompt - &quot;&lt;code&gt;$session.FirstName&lt;/code&gt;, your pizza order has been placed. Would you like to order a drink or a dessert?&quot; &lt;/p&gt; &lt;p&gt; Conclusion statement - &quot;&lt;code&gt;$session.FirstName&lt;/code&gt;, your pizza order has been placed.&quot; &lt;/p&gt; &lt;/note&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent. The name is &lt;i&gt;not&lt;/i&gt; case sensitive. &lt;/p&gt; &lt;p&gt;The name can't match a built-in intent name, or a built-in intent name with &quot;AMAZON.&quot; removed. For example, because there is a built-in intent called &lt;code&gt;AMAZON.HelpIntent&lt;/code&gt;, you can't create a custom intent called &lt;code&gt;HelpIntent&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For a list of built-in intents, see &lt;a href=&quot;https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents&quot;&gt;Standard Built-in Intents&lt;/a&gt; in the &lt;i&gt;Alexa Skills Kit&lt;/i&gt;.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Identifies a specific revision of the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt; &lt;p&gt;When you create a new intent, leave the &lt;code&gt;checksum&lt;/code&gt; field blank. If you specify a checksum you get a &lt;code&gt;BadRequestException&lt;/code&gt; exception.&lt;/p&gt; &lt;p&gt;When you want to update a intent, set the &lt;code&gt;checksum&lt;/code&gt; field to the checksum of the most recent revision of the &lt;code&gt;$LATEST&lt;/code&gt; version. If you don't specify the &lt;code&gt; checksum&lt;/code&gt; field, or if the checksum does not match the &lt;code&gt;$LATEST&lt;/code&gt; version, you get a &lt;code&gt;PreconditionFailedException&lt;/code&gt; exception.&lt;/p&gt;
-- @param conclusionStatement [Statement] &lt;p&gt; The statement that you want Amazon Lex to convey to the user after the intent is successfully fulfilled by the Lambda function. &lt;/p&gt; &lt;p&gt;This element is relevant only if you provide a Lambda function in the &lt;code&gt;fulfillmentActivity&lt;/code&gt;. If you return the intent to the client application, you can't specify this element.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The &lt;code&gt;followUpPrompt&lt;/code&gt; and &lt;code&gt;conclusionStatement&lt;/code&gt; are mutually exclusive. You can specify only one.&lt;/p&gt; &lt;/note&gt;
-- @param parentIntentSignature [BuiltinIntentSignature] &lt;p&gt;A unique identifier for the built-in intent to base this intent on. To find the signature for an intent, see &lt;a href=&quot;https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents&quot;&gt;Standard Built-in Intents&lt;/a&gt; in the &lt;i&gt;Alexa Skills Kit&lt;/i&gt;.&lt;/p&gt;
-- @param rejectionStatement [Statement] &lt;p&gt;When the user answers &quot;no&quot; to the question defined in &lt;code&gt;confirmationPrompt&lt;/code&gt;, Amazon Lex responds with this statement to acknowledge that the intent was canceled. &lt;/p&gt; &lt;note&gt; &lt;p&gt;You must provide both the &lt;code&gt;rejectionStatement&lt;/code&gt; and the &lt;code&gt;confirmationPrompt&lt;/code&gt;, or neither.&lt;/p&gt; &lt;/note&gt;
-- @param sampleUtterances [IntentUtteranceList] &lt;p&gt;An array of utterances (strings) that a user might say to signal the intent. For example, &quot;I want {PizzaSize} pizza&quot;, &quot;Order {Quantity} {PizzaSize} pizzas&quot;. &lt;/p&gt; &lt;p&gt;In each utterance, a slot name is enclosed in curly braces. &lt;/p&gt;
-- @param slots [SlotList] &lt;p&gt;An array of intent slots. At runtime, Amazon Lex elicits required slot values from the user using prompts defined in the slots. For more information, see &amp;lt;xref linkend=&quot;how-it-works&quot;/&amp;gt;. &lt;/p&gt;
-- @param fulfillmentActivity [FulfillmentActivity] &lt;p&gt; Describes how the intent is fulfilled. For example, after a user provides all of the information for a pizza order, &lt;code&gt;fulfillmentActivity&lt;/code&gt; defines how the bot places an order with a local pizza store. &lt;/p&gt; &lt;p&gt; You might configure Amazon Lex to return all of the intent information to the client application, or direct it to invoke a Lambda function that can process the intent (for example, place an order with a pizzeria). &lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the intent.&lt;/p&gt;
-- Required parameter: name
function M.PutIntentRequest(dialogCodeHook, confirmationPrompt, followUpPrompt, name, checksum, conclusionStatement, parentIntentSignature, rejectionStatement, sampleUtterances, slots, fulfillmentActivity, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutIntentRequest")
	local t = { 
		["dialogCodeHook"] = dialogCodeHook,
		["confirmationPrompt"] = confirmationPrompt,
		["followUpPrompt"] = followUpPrompt,
		["name"] = name,
		["checksum"] = checksum,
		["conclusionStatement"] = conclusionStatement,
		["parentIntentSignature"] = parentIntentSignature,
		["rejectionStatement"] = rejectionStatement,
		["sampleUtterances"] = sampleUtterances,
		["slots"] = slots,
		["fulfillmentActivity"] = fulfillmentActivity,
		["description"] = description,
	}
	M.AssertPutIntentRequest(t)
	return t
end

local GetBotChannelAssociationsResponse_keys = { "nextToken" = true, "botChannelAssociations" = true, nil }

function M.AssertGetBotChannelAssociationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotChannelAssociationsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["botChannelAssociations"] then M.AssertBotChannelAssociationList(struct["botChannelAssociations"]) end
	for k,_ in pairs(struct) do
		assert(GetBotChannelAssociationsResponse_keys[k], "GetBotChannelAssociationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotChannelAssociationsResponse
--  
-- @param nextToken [NextToken] &lt;p&gt;A pagination token that fetches the next page of associations. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of associations, specify the pagination token in the next request. &lt;/p&gt;
-- @param botChannelAssociations [BotChannelAssociationList] &lt;p&gt;An array of objects, one for each association, that provides information about the Amazon Lex bot and its association with the channel. &lt;/p&gt;
function M.GetBotChannelAssociationsResponse(nextToken, botChannelAssociations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotChannelAssociationsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["botChannelAssociations"] = botChannelAssociations,
	}
	M.AssertGetBotChannelAssociationsResponse(t)
	return t
end

local PutBotResponse_keys = { "status" = true, "intents" = true, "name" = true, "locale" = true, "checksum" = true, "createdDate" = true, "version" = true, "lastUpdatedDate" = true, "abortStatement" = true, "clarificationPrompt" = true, "voiceId" = true, "failureReason" = true, "childDirected" = true, "idleSessionTTLInSeconds" = true, "description" = true, nil }

function M.AssertPutBotResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBotResponse to be of type 'table'")
	if struct["status"] then M.AssertStatus(struct["status"]) end
	if struct["intents"] then M.AssertIntentList(struct["intents"]) end
	if struct["name"] then M.AssertBotName(struct["name"]) end
	if struct["locale"] then M.AssertLocale(struct["locale"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["abortStatement"] then M.AssertStatement(struct["abortStatement"]) end
	if struct["clarificationPrompt"] then M.AssertPrompt(struct["clarificationPrompt"]) end
	if struct["voiceId"] then M.AssertString(struct["voiceId"]) end
	if struct["failureReason"] then M.AssertString(struct["failureReason"]) end
	if struct["childDirected"] then M.AssertBoolean(struct["childDirected"]) end
	if struct["idleSessionTTLInSeconds"] then M.AssertSessionTTL(struct["idleSessionTTLInSeconds"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(PutBotResponse_keys[k], "PutBotResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBotResponse
--  
-- @param status [Status] &lt;p&gt; When you send a request to create a bot with &lt;code&gt;processBehavior&lt;/code&gt; set to &lt;code&gt;BUILD&lt;/code&gt;, Amazon Lex sets the &lt;code&gt;status&lt;/code&gt; response element to &lt;code&gt;BUILDING&lt;/code&gt;. After Amazon Lex builds the bot, it sets &lt;code&gt;status&lt;/code&gt; to &lt;code&gt;READY&lt;/code&gt;. If Amazon Lex can't build the bot, Amazon Lex sets &lt;code&gt;status&lt;/code&gt; to &lt;code&gt;FAILED&lt;/code&gt;. Amazon Lex returns the reason for the failure in the &lt;code&gt;failureReason&lt;/code&gt; response element. &lt;/p&gt; &lt;p&gt;When you set &lt;code&gt;processBehavior&lt;/code&gt;to &lt;code&gt;SAVE&lt;/code&gt;, Amazon Lex sets the status code to &lt;code&gt;NOT BUILT&lt;/code&gt;.&lt;/p&gt;
-- @param intents [IntentList] &lt;p&gt;An array of &lt;code&gt;Intent&lt;/code&gt; objects. For more information, see .&lt;/p&gt;
-- @param name [BotName] &lt;p&gt;The name of the bot.&lt;/p&gt;
-- @param locale [Locale] &lt;p&gt; The target locale for the bot. &lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the bot that you created.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the bot was created.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the bot. For a new bot, the version is always &lt;code&gt;$LATEST&lt;/code&gt;.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the bot was updated. When you create a resource, the creation date and last updated date are the same.&lt;/p&gt;
-- @param abortStatement [Statement] &lt;p&gt;The message that Amazon Lex uses to abort a conversation. For more information, see .&lt;/p&gt;
-- @param clarificationPrompt [Prompt] &lt;p&gt; The prompts that Amazon Lex uses when it doesn't understand the user's intent. For more information, see . &lt;/p&gt;
-- @param voiceId [String] &lt;p&gt;The Amazon Polly voice ID that Amazon Lex uses for voice interaction with the user. For more information, see .&lt;/p&gt;
-- @param failureReason [String] &lt;p&gt;If &lt;code&gt;status&lt;/code&gt; is &lt;code&gt;FAILED&lt;/code&gt;, Amazon Lex provides the reason that it failed to build the bot.&lt;/p&gt;
-- @param childDirected [Boolean] &lt;p&gt;For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field. By specifying &lt;code&gt;true&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field, you confirm that your use of Amazon Lex &lt;b&gt;is&lt;/b&gt; related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying &lt;code&gt;false&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field, you confirm that your use of Amazon Lex &lt;b&gt;is not&lt;/b&gt; related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the &lt;code&gt;childDirected&lt;/code&gt; field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.&lt;/p&gt; &lt;p&gt;If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the &lt;a href=&quot;https://aws.amazon.com/lex/faqs#data-security&quot;&gt;Amazon Lex FAQ.&lt;/a&gt; &lt;/p&gt;
-- @param idleSessionTTLInSeconds [SessionTTL] &lt;p&gt;The maximum length of time that Amazon Lex retains the data gathered in a conversation. For more information, see .&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the bot.&lt;/p&gt;
function M.PutBotResponse(status, intents, name, locale, checksum, createdDate, version, lastUpdatedDate, abortStatement, clarificationPrompt, voiceId, failureReason, childDirected, idleSessionTTLInSeconds, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBotResponse")
	local t = { 
		["status"] = status,
		["intents"] = intents,
		["name"] = name,
		["locale"] = locale,
		["checksum"] = checksum,
		["createdDate"] = createdDate,
		["version"] = version,
		["lastUpdatedDate"] = lastUpdatedDate,
		["abortStatement"] = abortStatement,
		["clarificationPrompt"] = clarificationPrompt,
		["voiceId"] = voiceId,
		["failureReason"] = failureReason,
		["childDirected"] = childDirected,
		["idleSessionTTLInSeconds"] = idleSessionTTLInSeconds,
		["description"] = description,
	}
	M.AssertPutBotResponse(t)
	return t
end

local GetIntentsRequest_keys = { "nameContains" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertGetIntentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentsRequest to be of type 'table'")
	if struct["nameContains"] then M.AssertIntentName(struct["nameContains"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetIntentsRequest_keys[k], "GetIntentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentsRequest
--  
-- @param nameContains [IntentName] &lt;p&gt;Substring to match in intent names. An intent will be returned if any part of its name matches the substring. For example, &quot;xyz&quot; matches both &quot;xyzabc&quot; and &quot;abcxyz.&quot;&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request. &lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of intents to return in the response. The default is 10.&lt;/p&gt;
function M.GetIntentsRequest(nameContains, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIntentsRequest")
	local t = { 
		["nameContains"] = nameContains,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertGetIntentsRequest(t)
	return t
end

local DeleteBotRequest_keys = { "name" = true, nil }

function M.AssertDeleteBotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteBotRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertBotName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteBotRequest_keys[k], "DeleteBotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteBotRequest
--  
-- @param name [BotName] &lt;p&gt;The name of the bot. The name is case sensitive. &lt;/p&gt;
-- Required parameter: name
function M.DeleteBotRequest(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteBotRequest")
	local t = { 
		["name"] = name,
	}
	M.AssertDeleteBotRequest(t)
	return t
end

local GetUtterancesViewResponse_keys = { "botName" = true, "utterances" = true, nil }

function M.AssertGetUtterancesViewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUtterancesViewResponse to be of type 'table'")
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["utterances"] then M.AssertListsOfUtterances(struct["utterances"]) end
	for k,_ in pairs(struct) do
		assert(GetUtterancesViewResponse_keys[k], "GetUtterancesViewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUtterancesViewResponse
--  
-- @param botName [BotName] &lt;p&gt;The name of the bot for which utterance information was returned.&lt;/p&gt;
-- @param utterances [ListsOfUtterances] &lt;p&gt;An array of objects, each containing a list of objects describing the utterances that were processed by your bot. The response contains a maximum of 100 &lt;code&gt;UtteranceData&lt;/code&gt; objects for each version.&lt;/p&gt;
function M.GetUtterancesViewResponse(botName, utterances, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUtterancesViewResponse")
	local t = { 
		["botName"] = botName,
		["utterances"] = utterances,
	}
	M.AssertGetUtterancesViewResponse(t)
	return t
end

local GetBotAliasRequest_keys = { "name" = true, "botName" = true, nil }

function M.AssertGetBotAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotAliasRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	if struct["name"] then M.AssertAliasName(struct["name"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	for k,_ in pairs(struct) do
		assert(GetBotAliasRequest_keys[k], "GetBotAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotAliasRequest
--  
-- @param name [AliasName] &lt;p&gt;The name of the bot alias. The name is case sensitive.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: botName
function M.GetBotAliasRequest(name, botName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotAliasRequest")
	local t = { 
		["name"] = name,
		["botName"] = botName,
	}
	M.AssertGetBotAliasRequest(t)
	return t
end

local BotAliasMetadata_keys = { "name" = true, "checksum" = true, "description" = true, "lastUpdatedDate" = true, "createdDate" = true, "botName" = true, "botVersion" = true, nil }

function M.AssertBotAliasMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BotAliasMetadata to be of type 'table'")
	if struct["name"] then M.AssertAliasName(struct["name"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["botVersion"] then M.AssertVersion(struct["botVersion"]) end
	for k,_ in pairs(struct) do
		assert(BotAliasMetadata_keys[k], "BotAliasMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BotAliasMetadata
-- &lt;p&gt;Provides information about a bot alias.&lt;/p&gt;
-- @param name [AliasName] &lt;p&gt;The name of the bot alias.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the bot alias.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the bot alias.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the bot alias was updated. When you create a resource, the creation date and last updated date are the same.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the bot alias was created.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot to which the alias points.&lt;/p&gt;
-- @param botVersion [Version] &lt;p&gt;The version of the Amazon Lex bot to which the alias points.&lt;/p&gt;
function M.BotAliasMetadata(name, checksum, description, lastUpdatedDate, createdDate, botName, botVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BotAliasMetadata")
	local t = { 
		["name"] = name,
		["checksum"] = checksum,
		["description"] = description,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["botName"] = botName,
		["botVersion"] = botVersion,
	}
	M.AssertBotAliasMetadata(t)
	return t
end

local EnumerationValue_keys = { "value" = true, nil }

function M.AssertEnumerationValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnumerationValue to be of type 'table'")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then M.AssertValue(struct["value"]) end
	for k,_ in pairs(struct) do
		assert(EnumerationValue_keys[k], "EnumerationValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnumerationValue
-- &lt;p&gt;Each slot type can have a set of values. Each enumeration value represents a value the slot type can take. &lt;/p&gt; &lt;p&gt;For example, a pizza ordering bot could have a slot type that specifies the type of crust that the pizza should have. The slot type could include the values &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;thick&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;thin&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;stuffed&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param value [Value] &lt;p&gt;The value of the slot type.&lt;/p&gt;
-- Required parameter: value
function M.EnumerationValue(value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnumerationValue")
	local t = { 
		["value"] = value,
	}
	M.AssertEnumerationValue(t)
	return t
end

local GetSlotTypesResponse_keys = { "nextToken" = true, "slotTypes" = true, nil }

function M.AssertGetSlotTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSlotTypesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["slotTypes"] then M.AssertSlotTypeMetadataList(struct["slotTypes"]) end
	for k,_ in pairs(struct) do
		assert(GetSlotTypesResponse_keys[k], "GetSlotTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSlotTypesResponse
--  
-- @param nextToken [NextToken] &lt;p&gt;If the response is truncated, it includes a pagination token that you can specify in your next request to fetch the next page of slot types.&lt;/p&gt;
-- @param slotTypes [SlotTypeMetadataList] &lt;p&gt;An array of objects, one for each slot type, that provides information such as the name of the slot type, the version, and a description.&lt;/p&gt;
function M.GetSlotTypesResponse(nextToken, slotTypes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetSlotTypesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["slotTypes"] = slotTypes,
	}
	M.AssertGetSlotTypesResponse(t)
	return t
end

local PutSlotTypeResponse_keys = { "name" = true, "enumerationValues" = true, "checksum" = true, "version" = true, "lastUpdatedDate" = true, "createdDate" = true, "description" = true, nil }

function M.AssertPutSlotTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSlotTypeResponse to be of type 'table'")
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	if struct["enumerationValues"] then M.AssertEnumerationValues(struct["enumerationValues"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(PutSlotTypeResponse_keys[k], "PutSlotTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSlotTypeResponse
--  
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type.&lt;/p&gt;
-- @param enumerationValues [EnumerationValues] &lt;p&gt;A list of &lt;code&gt;EnumerationValue&lt;/code&gt; objects that defines the values that the slot type can take.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the &lt;code&gt;$LATEST&lt;/code&gt; version of the slot type.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the slot type. For a new slot type, the version is always &lt;code&gt;$LATEST&lt;/code&gt;. &lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the slot type was updated. When you create a slot type, the creation date and last update date are the same.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the slot type was created.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the slot type.&lt;/p&gt;
function M.PutSlotTypeResponse(name, enumerationValues, checksum, version, lastUpdatedDate, createdDate, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutSlotTypeResponse")
	local t = { 
		["name"] = name,
		["enumerationValues"] = enumerationValues,
		["checksum"] = checksum,
		["version"] = version,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["description"] = description,
	}
	M.AssertPutSlotTypeResponse(t)
	return t
end

local GetBuiltinIntentResponse_keys = { "slots" = true, "supportedLocales" = true, "signature" = true, nil }

function M.AssertGetBuiltinIntentResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinIntentResponse to be of type 'table'")
	if struct["slots"] then M.AssertBuiltinIntentSlotList(struct["slots"]) end
	if struct["supportedLocales"] then M.AssertLocaleList(struct["supportedLocales"]) end
	if struct["signature"] then M.AssertBuiltinIntentSignature(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(GetBuiltinIntentResponse_keys[k], "GetBuiltinIntentResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinIntentResponse
--  
-- @param slots [BuiltinIntentSlotList] &lt;p&gt;An array of &lt;code&gt;BuiltinIntentSlot&lt;/code&gt; objects, one entry for each slot type in the intent.&lt;/p&gt;
-- @param supportedLocales [LocaleList] &lt;p&gt;A list of locales that the intent supports.&lt;/p&gt;
-- @param signature [BuiltinIntentSignature] &lt;p&gt;The unique identifier for a built-in intent.&lt;/p&gt;
function M.GetBuiltinIntentResponse(slots, supportedLocales, signature, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBuiltinIntentResponse")
	local t = { 
		["slots"] = slots,
		["supportedLocales"] = supportedLocales,
		["signature"] = signature,
	}
	M.AssertGetBuiltinIntentResponse(t)
	return t
end

local FollowUpPrompt_keys = { "prompt" = true, "rejectionStatement" = true, nil }

function M.AssertFollowUpPrompt(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FollowUpPrompt to be of type 'table'")
	assert(struct["prompt"], "Expected key prompt to exist in table")
	assert(struct["rejectionStatement"], "Expected key rejectionStatement to exist in table")
	if struct["prompt"] then M.AssertPrompt(struct["prompt"]) end
	if struct["rejectionStatement"] then M.AssertStatement(struct["rejectionStatement"]) end
	for k,_ in pairs(struct) do
		assert(FollowUpPrompt_keys[k], "FollowUpPrompt contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FollowUpPrompt
-- &lt;p&gt;After an intent is fulfilled, you might prompt the user for additional activity. For example, after the &lt;code&gt;OrderPizza&lt;/code&gt; intent is fulfilled (the pizza order is placed with a pizzeria), you might prompt the user to find out whether the user wants to order drinks (another intent you defined in your bot).&lt;/p&gt;
-- @param prompt [Prompt] &lt;p&gt;Obtains information from the user. &lt;/p&gt;
-- @param rejectionStatement [Statement] &lt;p&gt;If the user answers &quot;no&quot; to the question defined in &lt;code&gt;confirmationPrompt&lt;/code&gt;, Amazon Lex responds with this statement to acknowledge that the intent was canceled. &lt;/p&gt;
-- Required parameter: prompt
-- Required parameter: rejectionStatement
function M.FollowUpPrompt(prompt, rejectionStatement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FollowUpPrompt")
	local t = { 
		["prompt"] = prompt,
		["rejectionStatement"] = rejectionStatement,
	}
	M.AssertFollowUpPrompt(t)
	return t
end

local BuiltinSlotTypeMetadata_keys = { "supportedLocales" = true, "signature" = true, nil }

function M.AssertBuiltinSlotTypeMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuiltinSlotTypeMetadata to be of type 'table'")
	if struct["supportedLocales"] then M.AssertLocaleList(struct["supportedLocales"]) end
	if struct["signature"] then M.AssertBuiltinSlotTypeSignature(struct["signature"]) end
	for k,_ in pairs(struct) do
		assert(BuiltinSlotTypeMetadata_keys[k], "BuiltinSlotTypeMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuiltinSlotTypeMetadata
-- &lt;p&gt;Provides information about a built in slot type.&lt;/p&gt;
-- @param supportedLocales [LocaleList] &lt;p&gt;A list of target locales for the slot. &lt;/p&gt;
-- @param signature [BuiltinSlotTypeSignature] &lt;p&gt;A unique identifier for the built-in slot type. To find the signature for a slot type, see &lt;a href=&quot;https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference&quot;&gt;Slot Type Reference&lt;/a&gt; in the &lt;i&gt;Alexa Skills Kit&lt;/i&gt;.&lt;/p&gt;
function M.BuiltinSlotTypeMetadata(supportedLocales, signature, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuiltinSlotTypeMetadata")
	local t = { 
		["supportedLocales"] = supportedLocales,
		["signature"] = signature,
	}
	M.AssertBuiltinSlotTypeMetadata(t)
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
-- &lt;p&gt;An internal Amazon Lex error occurred. Try your request again.&lt;/p&gt;
-- @param message [String] &lt;p&gt;An internal Amazon Lex error occurred. Try your request again.&lt;/p&gt;
function M.InternalFailureException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalFailureException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalFailureException(t)
	return t
end

local GetIntentRequest_keys = { "version" = true, "name" = true, nil }

function M.AssertGetIntentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(GetIntentRequest_keys[k], "GetIntentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentRequest
--  
-- @param version [Version] &lt;p&gt;The version of the intent.&lt;/p&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent. The name is case sensitive. &lt;/p&gt;
-- Required parameter: name
-- Required parameter: version
function M.GetIntentRequest(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIntentRequest")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertGetIntentRequest(t)
	return t
end

local GetBotAliasesResponse_keys = { "nextToken" = true, "BotAliases" = true, nil }

function M.AssertGetBotAliasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotAliasesResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["BotAliases"] then M.AssertBotAliasMetadataList(struct["BotAliases"]) end
	for k,_ in pairs(struct) do
		assert(GetBotAliasesResponse_keys[k], "GetBotAliasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotAliasesResponse
--  
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request. &lt;/p&gt;
-- @param BotAliases [BotAliasMetadataList] &lt;p&gt;An array of &lt;code&gt;BotAliasMetadata&lt;/code&gt; objects, each describing a bot alias.&lt;/p&gt;
function M.GetBotAliasesResponse(nextToken, BotAliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotAliasesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["BotAliases"] = BotAliases,
	}
	M.AssertGetBotAliasesResponse(t)
	return t
end

local GetBotsRequest_keys = { "nameContains" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertGetBotsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotsRequest to be of type 'table'")
	if struct["nameContains"] then M.AssertBotName(struct["nameContains"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetBotsRequest_keys[k], "GetBotsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotsRequest
--  
-- @param nameContains [BotName] &lt;p&gt;Substring to match in bot names. A bot will be returned if any part of its name matches the substring. For example, &quot;xyz&quot; matches both &quot;xyzabc&quot; and &quot;abcxyz.&quot;&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token that fetches the next page of bots. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of bots, specify the pagination token in the next request. &lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of bots to return in the response that the request will return. The default is 10.&lt;/p&gt;
function M.GetBotsRequest(nameContains, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotsRequest")
	local t = { 
		["nameContains"] = nameContains,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertGetBotsRequest(t)
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
-- &lt;p&gt; There was a conflict processing the request. Try your request again. &lt;/p&gt;
-- @param message [String] &lt;p&gt; There was a conflict processing the request. Try your request again. &lt;/p&gt;
function M.ConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertConflictException(t)
	return t
end

local GetUtterancesViewRequest_keys = { "statusType" = true, "botName" = true, "botVersions" = true, nil }

function M.AssertGetUtterancesViewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUtterancesViewRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	assert(struct["botVersions"], "Expected key botVersions to exist in table")
	assert(struct["statusType"], "Expected key statusType to exist in table")
	if struct["statusType"] then M.AssertStatusType(struct["statusType"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["botVersions"] then M.AssertBotVersions(struct["botVersions"]) end
	for k,_ in pairs(struct) do
		assert(GetUtterancesViewRequest_keys[k], "GetUtterancesViewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUtterancesViewRequest
--  
-- @param statusType [StatusType] &lt;p&gt;To return utterances that were recognized and handled, use&lt;code&gt;Detected&lt;/code&gt;. To return utterances that were not recognized, use &lt;code&gt;Missed&lt;/code&gt;.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot for which utterance information should be returned.&lt;/p&gt;
-- @param botVersions [BotVersions] &lt;p&gt;An array of bot versions for which utterance information should be returned. The limit is 5 versions per request.&lt;/p&gt;
-- Required parameter: botName
-- Required parameter: botVersions
-- Required parameter: statusType
function M.GetUtterancesViewRequest(statusType, botName, botVersions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetUtterancesViewRequest")
	local t = { 
		["statusType"] = statusType,
		["botName"] = botName,
		["botVersions"] = botVersions,
	}
	M.AssertGetUtterancesViewRequest(t)
	return t
end

local GetBotRequest_keys = { "name" = true, "versionOrAlias" = true, nil }

function M.AssertGetBotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["versionOrAlias"], "Expected key versionOrAlias to exist in table")
	if struct["name"] then M.AssertBotName(struct["name"]) end
	if struct["versionOrAlias"] then M.AssertString(struct["versionOrAlias"]) end
	for k,_ in pairs(struct) do
		assert(GetBotRequest_keys[k], "GetBotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotRequest
--  
-- @param name [BotName] &lt;p&gt;The name of the bot. The name is case sensitive. &lt;/p&gt;
-- @param versionOrAlias [String] &lt;p&gt;The version or alias of the bot.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: versionOrAlias
function M.GetBotRequest(name, versionOrAlias, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotRequest")
	local t = { 
		["name"] = name,
		["versionOrAlias"] = versionOrAlias,
	}
	M.AssertGetBotRequest(t)
	return t
end

local SlotTypeMetadata_keys = { "version" = true, "createdDate" = true, "name" = true, "lastUpdatedDate" = true, "description" = true, nil }

function M.AssertSlotTypeMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SlotTypeMetadata to be of type 'table'")
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(SlotTypeMetadata_keys[k], "SlotTypeMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SlotTypeMetadata
-- &lt;p&gt;Provides information about a slot type..&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the slot type.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the slot type was created.&lt;/p&gt;
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the slot type was updated. When you create a resource, the creation date and last updated date are the same. &lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the slot type.&lt;/p&gt;
function M.SlotTypeMetadata(version, createdDate, name, lastUpdatedDate, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SlotTypeMetadata")
	local t = { 
		["version"] = version,
		["createdDate"] = createdDate,
		["name"] = name,
		["lastUpdatedDate"] = lastUpdatedDate,
		["description"] = description,
	}
	M.AssertSlotTypeMetadata(t)
	return t
end

local GetIntentVersionsResponse_keys = { "intents" = true, "nextToken" = true, nil }

function M.AssertGetIntentVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntentVersionsResponse to be of type 'table'")
	if struct["intents"] then M.AssertIntentMetadataList(struct["intents"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetIntentVersionsResponse_keys[k], "GetIntentVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntentVersionsResponse
--  
-- @param intents [IntentMetadataList] &lt;p&gt;An array of &lt;code&gt;IntentMetadata&lt;/code&gt; objects, one for each numbered version of the intent plus one for the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching the next page of intent versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. &lt;/p&gt;
function M.GetIntentVersionsResponse(intents, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetIntentVersionsResponse")
	local t = { 
		["intents"] = intents,
		["nextToken"] = nextToken,
	}
	M.AssertGetIntentVersionsResponse(t)
	return t
end

local GetBotAliasResponse_keys = { "name" = true, "checksum" = true, "description" = true, "lastUpdatedDate" = true, "createdDate" = true, "botName" = true, "botVersion" = true, nil }

function M.AssertGetBotAliasResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotAliasResponse to be of type 'table'")
	if struct["name"] then M.AssertAliasName(struct["name"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["botVersion"] then M.AssertVersion(struct["botVersion"]) end
	for k,_ in pairs(struct) do
		assert(GetBotAliasResponse_keys[k], "GetBotAliasResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotAliasResponse
--  
-- @param name [AliasName] &lt;p&gt;The name of the bot alias.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the bot alias.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the bot alias.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the bot alias was updated. When you create a resource, the creation date and the last updated date are the same.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the bot alias was created.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot that the alias points to.&lt;/p&gt;
-- @param botVersion [Version] &lt;p&gt;The version of the bot that the alias points to.&lt;/p&gt;
function M.GetBotAliasResponse(name, checksum, description, lastUpdatedDate, createdDate, botName, botVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotAliasResponse")
	local t = { 
		["name"] = name,
		["checksum"] = checksum,
		["description"] = description,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["botName"] = botName,
		["botVersion"] = botVersion,
	}
	M.AssertGetBotAliasResponse(t)
	return t
end

local DeleteIntentVersionRequest_keys = { "version" = true, "name" = true, nil }

function M.AssertDeleteIntentVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteIntentVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then M.AssertNumericalVersion(struct["version"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteIntentVersionRequest_keys[k], "DeleteIntentVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteIntentVersionRequest
--  
-- @param version [NumericalVersion] &lt;p&gt;The version of the intent to delete. You cannot delete the &lt;code&gt;$LATEST&lt;/code&gt; version of the intent. To delete the &lt;code&gt;$LATEST&lt;/code&gt; version, use the operation.&lt;/p&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: version
function M.DeleteIntentVersionRequest(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteIntentVersionRequest")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertDeleteIntentVersionRequest(t)
	return t
end

local GetBotAliasesRequest_keys = { "nameContains" = true, "nextToken" = true, "botName" = true, "maxResults" = true, nil }

function M.AssertGetBotAliasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotAliasesRequest to be of type 'table'")
	assert(struct["botName"], "Expected key botName to exist in table")
	if struct["nameContains"] then M.AssertAliasName(struct["nameContains"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetBotAliasesRequest_keys[k], "GetBotAliasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotAliasesRequest
--  
-- @param nameContains [AliasName] &lt;p&gt;Substring to match in bot alias names. An alias will be returned if any part of its name matches the substring. For example, &quot;xyz&quot; matches both &quot;xyzabc&quot; and &quot;abcxyz.&quot;&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching the next page of aliases. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of aliases, specify the pagination token in the next request. &lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot.&lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of aliases to return in the response. The default is 50. . &lt;/p&gt;
-- Required parameter: botName
function M.GetBotAliasesRequest(nameContains, nextToken, botName, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotAliasesRequest")
	local t = { 
		["nameContains"] = nameContains,
		["nextToken"] = nextToken,
		["botName"] = botName,
		["maxResults"] = maxResults,
	}
	M.AssertGetBotAliasesRequest(t)
	return t
end

local CreateSlotTypeVersionResponse_keys = { "name" = true, "enumerationValues" = true, "checksum" = true, "version" = true, "lastUpdatedDate" = true, "createdDate" = true, "description" = true, nil }

function M.AssertCreateSlotTypeVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSlotTypeVersionResponse to be of type 'table'")
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	if struct["enumerationValues"] then M.AssertEnumerationValues(struct["enumerationValues"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateSlotTypeVersionResponse_keys[k], "CreateSlotTypeVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSlotTypeVersionResponse
--  
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type.&lt;/p&gt;
-- @param enumerationValues [EnumerationValues] &lt;p&gt;A list of &lt;code&gt;EnumerationValue&lt;/code&gt; objects that defines the values that the slot type can take.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the &lt;code&gt;$LATEST&lt;/code&gt; version of the slot type.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version assigned to the new slot type version. &lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the slot type was created.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the slot type.&lt;/p&gt;
function M.CreateSlotTypeVersionResponse(name, enumerationValues, checksum, version, lastUpdatedDate, createdDate, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSlotTypeVersionResponse")
	local t = { 
		["name"] = name,
		["enumerationValues"] = enumerationValues,
		["checksum"] = checksum,
		["version"] = version,
		["lastUpdatedDate"] = lastUpdatedDate,
		["createdDate"] = createdDate,
		["description"] = description,
	}
	M.AssertCreateSlotTypeVersionResponse(t)
	return t
end

local PreconditionFailedException_keys = { "message" = true, nil }

function M.AssertPreconditionFailedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreconditionFailedException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(PreconditionFailedException_keys[k], "PreconditionFailedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreconditionFailedException
-- &lt;p&gt; The checksum of the resource that you are trying to change does not match the checksum in the request. Check the resource's checksum and try again.&lt;/p&gt;
-- @param message [String] &lt;p&gt; The checksum of the resource that you are trying to change does not match the checksum in the request. Check the resource's checksum and try again.&lt;/p&gt;
function M.PreconditionFailedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PreconditionFailedException")
	local t = { 
		["message"] = message,
	}
	M.AssertPreconditionFailedException(t)
	return t
end

local PutBotAliasRequest_keys = { "checksum" = true, "botVersion" = true, "name" = true, "botName" = true, "description" = true, nil }

function M.AssertPutBotAliasRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBotAliasRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["botVersion"], "Expected key botVersion to exist in table")
	assert(struct["botName"], "Expected key botName to exist in table")
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["botVersion"] then M.AssertVersion(struct["botVersion"]) end
	if struct["name"] then M.AssertAliasName(struct["name"]) end
	if struct["botName"] then M.AssertBotName(struct["botName"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(PutBotAliasRequest_keys[k], "PutBotAliasRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBotAliasRequest
--  
-- @param checksum [String] &lt;p&gt;Identifies a specific revision of the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt; &lt;p&gt;When you create a new bot alias, leave the &lt;code&gt;checksum&lt;/code&gt; field blank. If you specify a checksum you get a &lt;code&gt;BadRequestException&lt;/code&gt; exception.&lt;/p&gt; &lt;p&gt;When you want to update a bot alias, set the &lt;code&gt;checksum&lt;/code&gt; field to the checksum of the most recent revision of the &lt;code&gt;$LATEST&lt;/code&gt; version. If you don't specify the &lt;code&gt; checksum&lt;/code&gt; field, or if the checksum does not match the &lt;code&gt;$LATEST&lt;/code&gt; version, you get a &lt;code&gt;PreconditionFailedException&lt;/code&gt; exception.&lt;/p&gt;
-- @param botVersion [Version] &lt;p&gt;The version of the bot.&lt;/p&gt;
-- @param name [AliasName] &lt;p&gt;The name of the alias. The name is &lt;i&gt;not&lt;/i&gt; case sensitive.&lt;/p&gt;
-- @param botName [BotName] &lt;p&gt;The name of the bot.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the alias.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: botVersion
-- Required parameter: botName
function M.PutBotAliasRequest(checksum, botVersion, name, botName, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBotAliasRequest")
	local t = { 
		["checksum"] = checksum,
		["botVersion"] = botVersion,
		["name"] = name,
		["botName"] = botName,
		["description"] = description,
	}
	M.AssertPutBotAliasRequest(t)
	return t
end

local DeleteSlotTypeRequest_keys = { "name" = true, nil }

function M.AssertDeleteSlotTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSlotTypeRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSlotTypeRequest_keys[k], "DeleteSlotTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSlotTypeRequest
--  
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type. The name is case sensitive. &lt;/p&gt;
-- Required parameter: name
function M.DeleteSlotTypeRequest(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSlotTypeRequest")
	local t = { 
		["name"] = name,
	}
	M.AssertDeleteSlotTypeRequest(t)
	return t
end

local CreateBotVersionResponse_keys = { "status" = true, "intents" = true, "name" = true, "locale" = true, "checksum" = true, "createdDate" = true, "version" = true, "lastUpdatedDate" = true, "abortStatement" = true, "clarificationPrompt" = true, "voiceId" = true, "failureReason" = true, "childDirected" = true, "idleSessionTTLInSeconds" = true, "description" = true, nil }

function M.AssertCreateBotVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateBotVersionResponse to be of type 'table'")
	if struct["status"] then M.AssertStatus(struct["status"]) end
	if struct["intents"] then M.AssertIntentList(struct["intents"]) end
	if struct["name"] then M.AssertBotName(struct["name"]) end
	if struct["locale"] then M.AssertLocale(struct["locale"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["abortStatement"] then M.AssertStatement(struct["abortStatement"]) end
	if struct["clarificationPrompt"] then M.AssertPrompt(struct["clarificationPrompt"]) end
	if struct["voiceId"] then M.AssertString(struct["voiceId"]) end
	if struct["failureReason"] then M.AssertString(struct["failureReason"]) end
	if struct["childDirected"] then M.AssertBoolean(struct["childDirected"]) end
	if struct["idleSessionTTLInSeconds"] then M.AssertSessionTTL(struct["idleSessionTTLInSeconds"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateBotVersionResponse_keys[k], "CreateBotVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateBotVersionResponse
--  
-- @param status [Status] &lt;p&gt; When you send a request to create or update a bot, Amazon Lex sets the &lt;code&gt;status&lt;/code&gt; response element to &lt;code&gt;BUILDING&lt;/code&gt;. After Amazon Lex builds the bot, it sets &lt;code&gt;status&lt;/code&gt; to &lt;code&gt;READY&lt;/code&gt;. If Amazon Lex can't build the bot, it sets &lt;code&gt;status&lt;/code&gt; to &lt;code&gt;FAILED&lt;/code&gt;. Amazon Lex returns the reason for the failure in the &lt;code&gt;failureReason&lt;/code&gt; response element. &lt;/p&gt;
-- @param intents [IntentList] &lt;p&gt;An array of &lt;code&gt;Intent&lt;/code&gt; objects. For more information, see .&lt;/p&gt;
-- @param name [BotName] &lt;p&gt;The name of the bot.&lt;/p&gt;
-- @param locale [Locale] &lt;p&gt; Specifies the target locale for the bot. &lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum identifying the version of the bot that was created.&lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date when the bot version was created.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the bot. &lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date when the &lt;code&gt;$LATEST&lt;/code&gt; version of this bot was updated. &lt;/p&gt;
-- @param abortStatement [Statement] &lt;p&gt;The message that Amazon Lex uses to abort a conversation. For more information, see .&lt;/p&gt;
-- @param clarificationPrompt [Prompt] &lt;p&gt;The message that Amazon Lex uses when it doesn't understand the user's request. For more information, see . &lt;/p&gt;
-- @param voiceId [String] &lt;p&gt;The Amazon Polly voice ID that Amazon Lex uses for voice interactions with the user.&lt;/p&gt;
-- @param failureReason [String] &lt;p&gt;If &lt;code&gt;status&lt;/code&gt; is &lt;code&gt;FAILED&lt;/code&gt;, Amazon Lex provides the reason that it failed to build the bot.&lt;/p&gt;
-- @param childDirected [Boolean] &lt;p&gt;For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field. By specifying &lt;code&gt;true&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field, you confirm that your use of Amazon Lex &lt;b&gt;is&lt;/b&gt; related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying &lt;code&gt;false&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field, you confirm that your use of Amazon Lex &lt;b&gt;is not&lt;/b&gt; related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the &lt;code&gt;childDirected&lt;/code&gt; field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.&lt;/p&gt; &lt;p&gt;If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the &lt;a href=&quot;https://aws.amazon.com/lex/faqs#data-security&quot;&gt;Amazon Lex FAQ.&lt;/a&gt; &lt;/p&gt;
-- @param idleSessionTTLInSeconds [SessionTTL] &lt;p&gt;The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. For more information, see .&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the bot.&lt;/p&gt;
function M.CreateBotVersionResponse(status, intents, name, locale, checksum, createdDate, version, lastUpdatedDate, abortStatement, clarificationPrompt, voiceId, failureReason, childDirected, idleSessionTTLInSeconds, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateBotVersionResponse")
	local t = { 
		["status"] = status,
		["intents"] = intents,
		["name"] = name,
		["locale"] = locale,
		["checksum"] = checksum,
		["createdDate"] = createdDate,
		["version"] = version,
		["lastUpdatedDate"] = lastUpdatedDate,
		["abortStatement"] = abortStatement,
		["clarificationPrompt"] = clarificationPrompt,
		["voiceId"] = voiceId,
		["failureReason"] = failureReason,
		["childDirected"] = childDirected,
		["idleSessionTTLInSeconds"] = idleSessionTTLInSeconds,
		["description"] = description,
	}
	M.AssertCreateBotVersionResponse(t)
	return t
end

local CreateIntentVersionResponse_keys = { "dialogCodeHook" = true, "confirmationPrompt" = true, "followUpPrompt" = true, "name" = true, "checksum" = true, "conclusionStatement" = true, "parentIntentSignature" = true, "version" = true, "rejectionStatement" = true, "createdDate" = true, "lastUpdatedDate" = true, "sampleUtterances" = true, "slots" = true, "fulfillmentActivity" = true, "description" = true, nil }

function M.AssertCreateIntentVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateIntentVersionResponse to be of type 'table'")
	if struct["dialogCodeHook"] then M.AssertCodeHook(struct["dialogCodeHook"]) end
	if struct["confirmationPrompt"] then M.AssertPrompt(struct["confirmationPrompt"]) end
	if struct["followUpPrompt"] then M.AssertFollowUpPrompt(struct["followUpPrompt"]) end
	if struct["name"] then M.AssertIntentName(struct["name"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["conclusionStatement"] then M.AssertStatement(struct["conclusionStatement"]) end
	if struct["parentIntentSignature"] then M.AssertBuiltinIntentSignature(struct["parentIntentSignature"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["rejectionStatement"] then M.AssertStatement(struct["rejectionStatement"]) end
	if struct["createdDate"] then M.AssertTimestamp(struct["createdDate"]) end
	if struct["lastUpdatedDate"] then M.AssertTimestamp(struct["lastUpdatedDate"]) end
	if struct["sampleUtterances"] then M.AssertIntentUtteranceList(struct["sampleUtterances"]) end
	if struct["slots"] then M.AssertSlotList(struct["slots"]) end
	if struct["fulfillmentActivity"] then M.AssertFulfillmentActivity(struct["fulfillmentActivity"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(CreateIntentVersionResponse_keys[k], "CreateIntentVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateIntentVersionResponse
--  
-- @param dialogCodeHook [CodeHook] &lt;p&gt;If defined, Amazon Lex invokes this Lambda function for each user input.&lt;/p&gt;
-- @param confirmationPrompt [Prompt] &lt;p&gt;If defined, the prompt that Amazon Lex uses to confirm the user's intent before fulfilling it. &lt;/p&gt;
-- @param followUpPrompt [FollowUpPrompt] &lt;p&gt;If defined, Amazon Lex uses this prompt to solicit additional user activity after the intent is fulfilled. &lt;/p&gt;
-- @param name [IntentName] &lt;p&gt;The name of the intent.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Checksum of the intent version created.&lt;/p&gt;
-- @param conclusionStatement [Statement] &lt;p&gt;After the Lambda function specified in the &lt;code&gt;fulfillmentActivity&lt;/code&gt; field fulfills the intent, Amazon Lex conveys this statement to the user. &lt;/p&gt;
-- @param parentIntentSignature [BuiltinIntentSignature] &lt;p&gt;A unique identifier for a built-in intent.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version number assigned to the new version of the intent.&lt;/p&gt;
-- @param rejectionStatement [Statement] &lt;p&gt;If the user answers &quot;no&quot; to the question defined in &lt;code&gt;confirmationPrompt&lt;/code&gt;, Amazon Lex responds with this statement to acknowledge that the intent was canceled. &lt;/p&gt;
-- @param createdDate [Timestamp] &lt;p&gt;The date that the intent was created.&lt;/p&gt;
-- @param lastUpdatedDate [Timestamp] &lt;p&gt;The date that the intent was updated. &lt;/p&gt;
-- @param sampleUtterances [IntentUtteranceList] &lt;p&gt;An array of sample utterances configured for the intent. &lt;/p&gt;
-- @param slots [SlotList] &lt;p&gt;An array of slot types that defines the information required to fulfill the intent.&lt;/p&gt;
-- @param fulfillmentActivity [FulfillmentActivity] &lt;p&gt; Describes how the intent is fulfilled. &lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the intent.&lt;/p&gt;
function M.CreateIntentVersionResponse(dialogCodeHook, confirmationPrompt, followUpPrompt, name, checksum, conclusionStatement, parentIntentSignature, version, rejectionStatement, createdDate, lastUpdatedDate, sampleUtterances, slots, fulfillmentActivity, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateIntentVersionResponse")
	local t = { 
		["dialogCodeHook"] = dialogCodeHook,
		["confirmationPrompt"] = confirmationPrompt,
		["followUpPrompt"] = followUpPrompt,
		["name"] = name,
		["checksum"] = checksum,
		["conclusionStatement"] = conclusionStatement,
		["parentIntentSignature"] = parentIntentSignature,
		["version"] = version,
		["rejectionStatement"] = rejectionStatement,
		["createdDate"] = createdDate,
		["lastUpdatedDate"] = lastUpdatedDate,
		["sampleUtterances"] = sampleUtterances,
		["slots"] = slots,
		["fulfillmentActivity"] = fulfillmentActivity,
		["description"] = description,
	}
	M.AssertCreateIntentVersionResponse(t)
	return t
end

local PutBotRequest_keys = { "intents" = true, "name" = true, "locale" = true, "checksum" = true, "processBehavior" = true, "childDirected" = true, "abortStatement" = true, "clarificationPrompt" = true, "voiceId" = true, "idleSessionTTLInSeconds" = true, "description" = true, nil }

function M.AssertPutBotRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutBotRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["locale"], "Expected key locale to exist in table")
	assert(struct["childDirected"], "Expected key childDirected to exist in table")
	if struct["intents"] then M.AssertIntentList(struct["intents"]) end
	if struct["name"] then M.AssertBotName(struct["name"]) end
	if struct["locale"] then M.AssertLocale(struct["locale"]) end
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["processBehavior"] then M.AssertProcessBehavior(struct["processBehavior"]) end
	if struct["childDirected"] then M.AssertBoolean(struct["childDirected"]) end
	if struct["abortStatement"] then M.AssertStatement(struct["abortStatement"]) end
	if struct["clarificationPrompt"] then M.AssertPrompt(struct["clarificationPrompt"]) end
	if struct["voiceId"] then M.AssertString(struct["voiceId"]) end
	if struct["idleSessionTTLInSeconds"] then M.AssertSessionTTL(struct["idleSessionTTLInSeconds"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(PutBotRequest_keys[k], "PutBotRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutBotRequest
--  
-- @param intents [IntentList] &lt;p&gt;An array of &lt;code&gt;Intent&lt;/code&gt; objects. Each intent represents a command that a user can express. For example, a pizza ordering bot might support an OrderPizza intent. For more information, see &lt;a&gt;how-it-works&lt;/a&gt;.&lt;/p&gt;
-- @param name [BotName] &lt;p&gt;The name of the bot. The name is &lt;i&gt;not&lt;/i&gt; case sensitive. &lt;/p&gt;
-- @param locale [Locale] &lt;p&gt; Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. &lt;/p&gt; &lt;p&gt;The default is &lt;code&gt;en-US&lt;/code&gt;.&lt;/p&gt;
-- @param checksum [String] &lt;p&gt;Identifies a specific revision of the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt; &lt;p&gt;When you create a new bot, leave the &lt;code&gt;checksum&lt;/code&gt; field blank. If you specify a checksum you get a &lt;code&gt;BadRequestException&lt;/code&gt; exception.&lt;/p&gt; &lt;p&gt;When you want to update a bot, set the &lt;code&gt;checksum&lt;/code&gt; field to the checksum of the most recent revision of the &lt;code&gt;$LATEST&lt;/code&gt; version. If you don't specify the &lt;code&gt; checksum&lt;/code&gt; field, or if the checksum does not match the &lt;code&gt;$LATEST&lt;/code&gt; version, you get a &lt;code&gt;PreconditionFailedException&lt;/code&gt; exception.&lt;/p&gt;
-- @param processBehavior [ProcessBehavior] &lt;p&gt;If you set the &lt;code&gt;processBehavior&lt;/code&gt; element to &lt;code&gt;Build&lt;/code&gt;, Amazon Lex builds the bot so that it can be run. If you set the element to &lt;code&gt;Save&lt;/code&gt;Amazon Lex saves the bot, but doesn't build it. &lt;/p&gt; &lt;p&gt;If you don't specify this value, the default value is &lt;code&gt;Save&lt;/code&gt;.&lt;/p&gt;
-- @param childDirected [Boolean] &lt;p&gt;For each Amazon Lex bot created with the Amazon Lex Model Building Service, you must specify whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to the Children's Online Privacy Protection Act (COPPA) by specifying &lt;code&gt;true&lt;/code&gt; or &lt;code&gt;false&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field. By specifying &lt;code&gt;true&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field, you confirm that your use of Amazon Lex &lt;b&gt;is&lt;/b&gt; related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. By specifying &lt;code&gt;false&lt;/code&gt; in the &lt;code&gt;childDirected&lt;/code&gt; field, you confirm that your use of Amazon Lex &lt;b&gt;is not&lt;/b&gt; related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. You may not specify a default value for the &lt;code&gt;childDirected&lt;/code&gt; field that does not accurately reflect whether your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA.&lt;/p&gt; &lt;p&gt;If your use of Amazon Lex relates to a website, program, or other application that is directed in whole or in part, to children under age 13, you must obtain any required verifiable parental consent under COPPA. For information regarding the use of Amazon Lex in connection with websites, programs, or other applications that are directed or targeted, in whole or in part, to children under age 13, see the &lt;a href=&quot;https://aws.amazon.com/lex/faqs#data-security&quot;&gt;Amazon Lex FAQ.&lt;/a&gt; &lt;/p&gt;
-- @param abortStatement [Statement] &lt;p&gt;When Amazon Lex can't understand the user's input in context, it tries to elicit the information a few times. After that, Amazon Lex sends the message defined in &lt;code&gt;abortStatement&lt;/code&gt; to the user, and then aborts the conversation. To set the number of retries, use the &lt;code&gt;valueElicitationPrompt&lt;/code&gt; field for the slot type. &lt;/p&gt; &lt;p&gt;For example, in a pizza ordering bot, Amazon Lex might ask a user &quot;What type of crust would you like?&quot; If the user's response is not one of the expected responses (for example, &quot;thin crust, &quot;deep dish,&quot; etc.), Amazon Lex tries to elicit a correct response a few more times. &lt;/p&gt; &lt;p&gt;For example, in a pizza ordering application, &lt;code&gt;OrderPizza&lt;/code&gt; might be one of the intents. This intent might require the &lt;code&gt;CrustType&lt;/code&gt; slot. You specify the &lt;code&gt;valueElicitationPrompt&lt;/code&gt; field when you create the &lt;code&gt;CrustType&lt;/code&gt; slot.&lt;/p&gt;
-- @param clarificationPrompt [Prompt] &lt;p&gt;When Amazon Lex doesn't understand the user's intent, it uses one of these messages to get clarification. For example, &quot;Sorry, I didn't understand. Please repeat.&quot; Amazon Lex repeats the clarification prompt the number of times specified in &lt;code&gt;maxAttempts&lt;/code&gt;. If Amazon Lex still can't understand, it sends the message specified in &lt;code&gt;abortStatement&lt;/code&gt;. &lt;/p&gt;
-- @param voiceId [String] &lt;p&gt;The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/polly/latest/dg/API_Voice.html&quot;&gt;Voice&lt;/a&gt; in the &lt;i&gt;Amazon Polly Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param idleSessionTTLInSeconds [SessionTTL] &lt;p&gt;The maximum time in seconds that Amazon Lex retains the data gathered in a conversation.&lt;/p&gt; &lt;p&gt;A user interaction session remains active for the amount of time specified. If no conversation occurs during this time, the session expires and Amazon Lex deletes any data provided before the timeout.&lt;/p&gt; &lt;p&gt;For example, suppose that a user chooses the OrderPizza intent, but gets sidetracked halfway through placing an order. If the user doesn't complete the order within the specified time, Amazon Lex discards the slot information that it gathered, and the user must start over.&lt;/p&gt; &lt;p&gt;If you don't include the &lt;code&gt;idleSessionTTLInSeconds&lt;/code&gt; element in a &lt;code&gt;PutBot&lt;/code&gt; operation request, Amazon Lex uses the default value. This is also true if the request replaces an existing bot.&lt;/p&gt; &lt;p&gt;The default is 300 seconds (5 minutes).&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the bot.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: locale
-- Required parameter: childDirected
function M.PutBotRequest(intents, name, locale, checksum, processBehavior, childDirected, abortStatement, clarificationPrompt, voiceId, idleSessionTTLInSeconds, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutBotRequest")
	local t = { 
		["intents"] = intents,
		["name"] = name,
		["locale"] = locale,
		["checksum"] = checksum,
		["processBehavior"] = processBehavior,
		["childDirected"] = childDirected,
		["abortStatement"] = abortStatement,
		["clarificationPrompt"] = clarificationPrompt,
		["voiceId"] = voiceId,
		["idleSessionTTLInSeconds"] = idleSessionTTLInSeconds,
		["description"] = description,
	}
	M.AssertPutBotRequest(t)
	return t
end

local ResourceReference_keys = { "version" = true, "name" = true, nil }

function M.AssertResourceReference(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceReference to be of type 'table'")
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ResourceReference_keys[k], "ResourceReference contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceReference
-- &lt;p&gt;Describes the resource that refers to the resource that you are attempting to delete. This object is returned as part of the &lt;code&gt;ResourceInUseException&lt;/code&gt; exception. &lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the resource that is using the resource that you are trying to delete.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the resource that is using the resource that you are trying to delete.&lt;/p&gt;
function M.ResourceReference(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceReference")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertResourceReference(t)
	return t
end

local GetBotVersionsRequest_keys = { "nextToken" = true, "name" = true, "maxResults" = true, nil }

function M.AssertGetBotVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotVersionsRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["name"] then M.AssertBotName(struct["name"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetBotVersionsRequest_keys[k], "GetBotVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotVersionsRequest
--  
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching the next page of bot versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. &lt;/p&gt;
-- @param name [BotName] &lt;p&gt;The name of the bot for which versions should be returned.&lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of bot versions to return in the response. The default is 10.&lt;/p&gt;
-- Required parameter: name
function M.GetBotVersionsRequest(nextToken, name, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotVersionsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["name"] = name,
		["maxResults"] = maxResults,
	}
	M.AssertGetBotVersionsRequest(t)
	return t
end

local CreateSlotTypeVersionRequest_keys = { "checksum" = true, "name" = true, nil }

function M.AssertCreateSlotTypeVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSlotTypeVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(CreateSlotTypeVersionRequest_keys[k], "CreateSlotTypeVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSlotTypeVersionRequest
--  
-- @param checksum [String] &lt;p&gt;Checksum for the &lt;code&gt;$LATEST&lt;/code&gt; version of the slot type that you want to publish. If you specify a checksum and the &lt;code&gt;$LATEST&lt;/code&gt; version of the slot type has a different checksum, Amazon Lex returns a &lt;code&gt;PreconditionFailedException&lt;/code&gt; exception and doesn't publish the new version. If you don't specify a checksum, Amazon Lex publishes the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt;
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type that you want to create a new version for. The name is case sensitive. &lt;/p&gt;
-- Required parameter: name
function M.CreateSlotTypeVersionRequest(checksum, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateSlotTypeVersionRequest")
	local t = { 
		["checksum"] = checksum,
		["name"] = name,
	}
	M.AssertCreateSlotTypeVersionRequest(t)
	return t
end

local PutSlotTypeRequest_keys = { "checksum" = true, "name" = true, "enumerationValues" = true, "description" = true, nil }

function M.AssertPutSlotTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSlotTypeRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["checksum"] then M.AssertString(struct["checksum"]) end
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	if struct["enumerationValues"] then M.AssertEnumerationValues(struct["enumerationValues"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(PutSlotTypeRequest_keys[k], "PutSlotTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSlotTypeRequest
--  
-- @param checksum [String] &lt;p&gt;Identifies a specific revision of the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt; &lt;p&gt;When you create a new slot type, leave the &lt;code&gt;checksum&lt;/code&gt; field blank. If you specify a checksum you get a &lt;code&gt;BadRequestException&lt;/code&gt; exception.&lt;/p&gt; &lt;p&gt;When you want to update a slot type, set the &lt;code&gt;checksum&lt;/code&gt; field to the checksum of the most recent revision of the &lt;code&gt;$LATEST&lt;/code&gt; version. If you don't specify the &lt;code&gt; checksum&lt;/code&gt; field, or if the checksum does not match the &lt;code&gt;$LATEST&lt;/code&gt; version, you get a &lt;code&gt;PreconditionFailedException&lt;/code&gt; exception.&lt;/p&gt;
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type. The name is &lt;i&gt;not&lt;/i&gt; case sensitive. &lt;/p&gt; &lt;p&gt;The name can't match a built-in slot type name, or a built-in slot type name with &quot;AMAZON.&quot; removed. For example, because there is a built-in slot type called &lt;code&gt;AMAZON.DATE&lt;/code&gt;, you can't create a custom slot type called &lt;code&gt;DATE&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;For a list of built-in slot types, see &lt;a href=&quot;https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference&quot;&gt;Slot Type Reference&lt;/a&gt; in the &lt;i&gt;Alexa Skills Kit&lt;/i&gt;.&lt;/p&gt;
-- @param enumerationValues [EnumerationValues] &lt;p&gt;A list of &lt;code&gt;EnumerationValue&lt;/code&gt; objects that defines the values that the slot type can take.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A description of the slot type.&lt;/p&gt;
-- Required parameter: name
function M.PutSlotTypeRequest(checksum, name, enumerationValues, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutSlotTypeRequest")
	local t = { 
		["checksum"] = checksum,
		["name"] = name,
		["enumerationValues"] = enumerationValues,
		["description"] = description,
	}
	M.AssertPutSlotTypeRequest(t)
	return t
end

local GetBuiltinIntentsRequest_keys = { "locale" = true, "nextToken" = true, "signatureContains" = true, "maxResults" = true, nil }

function M.AssertGetBuiltinIntentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinIntentsRequest to be of type 'table'")
	if struct["locale"] then M.AssertLocale(struct["locale"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["signatureContains"] then M.AssertString(struct["signatureContains"]) end
	if struct["maxResults"] then M.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetBuiltinIntentsRequest_keys[k], "GetBuiltinIntentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinIntentsRequest
--  
-- @param locale [Locale] &lt;p&gt;A list of locales that the intent supports.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token that fetches the next page of intents. If this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, use the pagination token in the next request.&lt;/p&gt;
-- @param signatureContains [String] &lt;p&gt;Substring to match in built-in intent signatures. An intent will be returned if any part of its signature matches the substring. For example, &quot;xyz&quot; matches both &quot;xyzabc&quot; and &quot;abcxyz.&quot; To find the signature for an intent, see &lt;a href=&quot;https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents&quot;&gt;Standard Built-in Intents&lt;/a&gt; in the &lt;i&gt;Alexa Skills Kit&lt;/i&gt;.&lt;/p&gt;
-- @param maxResults [MaxResults] &lt;p&gt;The maximum number of intents to return in the response. The default is 10.&lt;/p&gt;
function M.GetBuiltinIntentsRequest(locale, nextToken, signatureContains, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBuiltinIntentsRequest")
	local t = { 
		["locale"] = locale,
		["nextToken"] = nextToken,
		["signatureContains"] = signatureContains,
		["maxResults"] = maxResults,
	}
	M.AssertGetBuiltinIntentsRequest(t)
	return t
end

local GetBotVersionsResponse_keys = { "bots" = true, "nextToken" = true, nil }

function M.AssertGetBotVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBotVersionsResponse to be of type 'table'")
	if struct["bots"] then M.AssertBotMetadataList(struct["bots"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetBotVersionsResponse_keys[k], "GetBotVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBotVersionsResponse
--  
-- @param bots [BotMetadataList] &lt;p&gt;An array of &lt;code&gt;BotMetadata&lt;/code&gt; objects, one for each numbered version of the bot plus one for the &lt;code&gt;$LATEST&lt;/code&gt; version.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token for fetching the next page of bot versions. If the response to this call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of versions, specify the pagination token in the next request. &lt;/p&gt;
function M.GetBotVersionsResponse(bots, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBotVersionsResponse")
	local t = { 
		["bots"] = bots,
		["nextToken"] = nextToken,
	}
	M.AssertGetBotVersionsResponse(t)
	return t
end

local DeleteSlotTypeVersionRequest_keys = { "version" = true, "name" = true, nil }

function M.AssertDeleteSlotTypeVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSlotTypeVersionRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then M.AssertNumericalVersion(struct["version"]) end
	if struct["name"] then M.AssertSlotTypeName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSlotTypeVersionRequest_keys[k], "DeleteSlotTypeVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSlotTypeVersionRequest
--  
-- @param version [NumericalVersion] &lt;p&gt;The version of the slot type to delete. You cannot delete the &lt;code&gt;$LATEST&lt;/code&gt; version of the slot type. To delete the &lt;code&gt;$LATEST&lt;/code&gt; version, use the operation.&lt;/p&gt;
-- @param name [SlotTypeName] &lt;p&gt;The name of the slot type.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: version
function M.DeleteSlotTypeVersionRequest(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSlotTypeVersionRequest")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertDeleteSlotTypeVersionRequest(t)
	return t
end

local UtteranceList_keys = { "utterances" = true, "botVersion" = true, nil }

function M.AssertUtteranceList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UtteranceList to be of type 'table'")
	if struct["utterances"] then M.AssertListOfUtterance(struct["utterances"]) end
	if struct["botVersion"] then M.AssertVersion(struct["botVersion"]) end
	for k,_ in pairs(struct) do
		assert(UtteranceList_keys[k], "UtteranceList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UtteranceList
-- &lt;p&gt;Provides a list of utterances that have been made to a specific version of your bot. The list contains a maximum of 100 utterances.&lt;/p&gt;
-- @param utterances [ListOfUtterance] &lt;p&gt;One or more objects that contain information about the utterances that have been made to a bot. The maximum number of object is 100.&lt;/p&gt;
-- @param botVersion [Version] &lt;p&gt;The version of the bot that processed the list.&lt;/p&gt;
function M.UtteranceList(utterances, botVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UtteranceList")
	local t = { 
		["utterances"] = utterances,
		["botVersion"] = botVersion,
	}
	M.AssertUtteranceList(t)
	return t
end

local BuiltinIntentSlot_keys = { "name" = true, nil }

function M.AssertBuiltinIntentSlot(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BuiltinIntentSlot to be of type 'table'")
	if struct["name"] then M.AssertString(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(BuiltinIntentSlot_keys[k], "BuiltinIntentSlot contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BuiltinIntentSlot
-- &lt;p&gt;Provides information about a slot used in a built-in intent.&lt;/p&gt;
-- @param name [String] &lt;p&gt;A list of the slots defined for the intent.&lt;/p&gt;
function M.BuiltinIntentSlot(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BuiltinIntentSlot")
	local t = { 
		["name"] = name,
	}
	M.AssertBuiltinIntentSlot(t)
	return t
end

local FulfillmentActivity_keys = { "type" = true, "codeHook" = true, nil }

function M.AssertFulfillmentActivity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FulfillmentActivity to be of type 'table'")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["type"] then M.AssertFulfillmentActivityType(struct["type"]) end
	if struct["codeHook"] then M.AssertCodeHook(struct["codeHook"]) end
	for k,_ in pairs(struct) do
		assert(FulfillmentActivity_keys[k], "FulfillmentActivity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FulfillmentActivity
-- &lt;p&gt; Describes how the intent is fulfilled after the user provides all of the information required for the intent. You can provide a Lambda function to process the intent, or you can return the intent information to the client application. We recommend that you use a Lambda function so that the relevant logic lives in the Cloud and limit the client-side code primarily to presentation. If you need to update the logic, you only update the Lambda function; you don't need to upgrade your client application. &lt;/p&gt; &lt;p&gt;Consider the following examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;In a pizza ordering application, after the user provides all of the information for placing an order, you use a Lambda function to place an order with a pizzeria. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;In a gaming application, when a user says &quot;pick up a rock,&quot; this information must go back to the client application so that it can perform the operation and update the graphics. In this case, you want Amazon Lex to return the intent data to the client. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param type [FulfillmentActivityType] &lt;p&gt; How the intent should be fulfilled, either by running a Lambda function or by returning the slot data to the client application. &lt;/p&gt;
-- @param codeHook [CodeHook] &lt;p&gt; A description of the Lambda function that is run to fulfill the intent. &lt;/p&gt;
-- Required parameter: type
function M.FulfillmentActivity(type, codeHook, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FulfillmentActivity")
	local t = { 
		["type"] = type,
		["codeHook"] = codeHook,
	}
	M.AssertFulfillmentActivity(t)
	return t
end

local GetBuiltinIntentsResponse_keys = { "intents" = true, "nextToken" = true, nil }

function M.AssertGetBuiltinIntentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetBuiltinIntentsResponse to be of type 'table'")
	if struct["intents"] then M.AssertBuiltinIntentMetadataList(struct["intents"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetBuiltinIntentsResponse_keys[k], "GetBuiltinIntentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetBuiltinIntentsResponse
--  
-- @param intents [BuiltinIntentMetadataList] &lt;p&gt;An array of &lt;code&gt;builtinIntentMetadata&lt;/code&gt; objects, one for each intent in the response.&lt;/p&gt;
-- @param nextToken [NextToken] &lt;p&gt;A pagination token that fetches the next page of intents. If the response to this API call is truncated, Amazon Lex returns a pagination token in the response. To fetch the next page of intents, specify the pagination token in the next request.&lt;/p&gt;
function M.GetBuiltinIntentsResponse(intents, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetBuiltinIntentsResponse")
	local t = { 
		["intents"] = intents,
		["nextToken"] = nextToken,
	}
	M.AssertGetBuiltinIntentsResponse(t)
	return t
end

function M.AssertAliasName(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)"), "Expected string to match pattern '^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)'")
end

--  
function M.AliasName(str)
	M.AssertAliasName(str)
	return str
end

function M.AssertProcessBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected ProcessBehavior to be of type 'string'")
end

--  
function M.ProcessBehavior(str)
	M.AssertProcessBehavior(str)
	return str
end

function M.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Value(str)
	M.AssertValue(str)
	return str
end

function M.AssertSlotTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected SlotTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)"), "Expected string to match pattern '^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)'")
end

--  
function M.SlotTypeName(str)
	M.AssertSlotTypeName(str)
	return str
end

function M.AssertBotName(str)
	assert(str)
	assert(type(str) == "string", "Expected BotName to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
	assert(str:match("^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)"), "Expected string to match pattern '^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)'")
end

--  
function M.BotName(str)
	M.AssertBotName(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertStatusType(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusType to be of type 'string'")
end

--  
function M.StatusType(str)
	M.AssertStatusType(str)
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

function M.AssertIntentName(str)
	assert(str)
	assert(type(str) == "string", "Expected IntentName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)"), "Expected string to match pattern '^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)'")
end

--  
function M.IntentName(str)
	M.AssertIntentName(str)
	return str
end

function M.AssertResponseCard(str)
	assert(str)
	assert(type(str) == "string", "Expected ResponseCard to be of type 'string'")
	assert(#str <= 50000, "Expected string to be max 50000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResponseCard(str)
	M.AssertResponseCard(str)
	return str
end

function M.AssertChannelType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelType to be of type 'string'")
end

--  
function M.ChannelType(str)
	M.AssertChannelType(str)
	return str
end

function M.AssertSlotName(str)
	assert(str)
	assert(type(str) == "string", "Expected SlotName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z]+(((_|.)[a-zA-Z]+)*|([a-zA-Z]+(_|.))*|(_|.))"), "Expected string to match pattern '^[a-zA-Z]+(((_|.)[a-zA-Z]+)*|([a-zA-Z]+(_|.))*|(_|.))'")
end

--  
function M.SlotName(str)
	M.AssertSlotName(str)
	return str
end

function M.AssertMessageVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageVersion to be of type 'string'")
	assert(#str <= 5, "Expected string to be max 5 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MessageVersion(str)
	M.AssertMessageVersion(str)
	return str
end

function M.AssertFulfillmentActivityType(str)
	assert(str)
	assert(type(str) == "string", "Expected FulfillmentActivityType to be of type 'string'")
end

--  
function M.FulfillmentActivityType(str)
	M.AssertFulfillmentActivityType(str)
	return str
end

function M.AssertReferenceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReferenceType to be of type 'string'")
end

--  
function M.ReferenceType(str)
	M.AssertReferenceType(str)
	return str
end

function M.AssertStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected Status to be of type 'string'")
end

--  
function M.Status(str)
	M.AssertStatus(str)
	return str
end

function M.AssertLambdaARN(str)
	assert(str)
	assert(type(str) == "string", "Expected LambdaARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?"), "Expected string to match pattern 'arn:aws:lambda:[a-z]+-[a-z]+-[0-9]:[0-9]{12}:function:[a-zA-Z0-9-_]+(/[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12})?(:[a-zA-Z0-9-_]+)?'")
end

--  
function M.LambdaARN(str)
	M.AssertLambdaARN(str)
	return str
end

function M.AssertCustomOrBuiltinSlotTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomOrBuiltinSlotTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([a-zA-Z]|AMAZON.)+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)"), "Expected string to match pattern '^([a-zA-Z]|AMAZON.)+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)'")
end

--  
function M.CustomOrBuiltinSlotTypeName(str)
	M.AssertCustomOrBuiltinSlotTypeName(str)
	return str
end

function M.AssertUserId(str)
	assert(str)
	assert(type(str) == "string", "Expected UserId to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.UserId(str)
	M.AssertUserId(str)
	return str
end

function M.AssertBuiltinIntentSignature(str)
	assert(str)
	assert(type(str) == "string", "Expected BuiltinIntentSignature to be of type 'string'")
end

--  
function M.BuiltinIntentSignature(str)
	M.AssertBuiltinIntentSignature(str)
	return str
end

function M.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z]+"), "Expected string to match pattern '[a-zA-Z]+'")
end

--  
function M.Name(str)
	M.AssertName(str)
	return str
end

function M.AssertContentString(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentString to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContentString(str)
	M.AssertContentString(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertSlotConstraint(str)
	assert(str)
	assert(type(str) == "string", "Expected SlotConstraint to be of type 'string'")
end

--  
function M.SlotConstraint(str)
	M.AssertSlotConstraint(str)
	return str
end

function M.AssertAliasNameOrListAll(str)
	assert(str)
	assert(type(str) == "string", "Expected AliasNameOrListAll to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^(-|^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*))$"), "Expected string to match pattern '^(-|^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*))$'")
end

--  
function M.AliasNameOrListAll(str)
	M.AssertAliasNameOrListAll(str)
	return str
end

function M.AssertBuiltinSlotTypeSignature(str)
	assert(str)
	assert(type(str) == "string", "Expected BuiltinSlotTypeSignature to be of type 'string'")
end

--  
function M.BuiltinSlotTypeSignature(str)
	M.AssertBuiltinSlotTypeSignature(str)
	return str
end

function M.AssertUtterance(str)
	assert(str)
	assert(type(str) == "string", "Expected Utterance to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Utterance(str)
	M.AssertUtterance(str)
	return str
end

function M.AssertUtteranceString(str)
	assert(str)
	assert(type(str) == "string", "Expected UtteranceString to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.UtteranceString(str)
	M.AssertUtteranceString(str)
	return str
end

function M.AssertBotChannelName(str)
	assert(str)
	assert(type(str) == "string", "Expected BotChannelName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)"), "Expected string to match pattern '^[a-zA-Z]+((_[a-zA-Z]+)*|([a-zA-Z]+_)*|_)'")
end

--  
function M.BotChannelName(str)
	M.AssertBotChannelName(str)
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

function M.AssertLocale(str)
	assert(str)
	assert(type(str) == "string", "Expected Locale to be of type 'string'")
end

--  
function M.Locale(str)
	M.AssertLocale(str)
	return str
end

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("%$LATEST|[0-9]+"), "Expected string to match pattern '%$LATEST|[0-9]+'")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertNumericalVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected NumericalVersion to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[0-9]+"), "Expected string to match pattern '[0-9]+'")
end

--  
function M.NumericalVersion(str)
	M.AssertNumericalVersion(str)
	return str
end

function M.AssertPromptMaxAttempts(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PromptMaxAttempts to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PromptMaxAttempts(integer)
	M.AssertPromptMaxAttempts(integer)
	return integer
end

function M.AssertPriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Priority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.Priority(integer)
	M.AssertPriority(integer)
	return integer
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertSessionTTL(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected SessionTTL to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 86400, "Expected integer to be max 86400")
	assert(integer >= 60, "Expected integer to be min 60")
end

function M.SessionTTL(integer)
	M.AssertSessionTTL(integer)
	return integer
end

function M.AssertCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Count(integer)
	M.AssertCount(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertChannelConfigurationMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ChannelConfigurationMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.ChannelConfigurationMap(map)
	M.AssertChannelConfigurationMap(map)
	return map
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertBuiltinIntentMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuiltinIntentMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBuiltinIntentMetadata(v)
	end
end

--  
-- List of BuiltinIntentMetadata objects
function M.BuiltinIntentMetadataList(list)
	M.AssertBuiltinIntentMetadataList(list)
	return list
end

function M.AssertBotChannelAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected BotChannelAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBotChannelAssociation(v)
	end
end

--  
-- List of BotChannelAssociation objects
function M.BotChannelAssociationList(list)
	M.AssertBotChannelAssociationList(list)
	return list
end

function M.AssertSlotTypeMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected SlotTypeMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSlotTypeMetadata(v)
	end
end

--  
-- List of SlotTypeMetadata objects
function M.SlotTypeMetadataList(list)
	M.AssertSlotTypeMetadataList(list)
	return list
end

function M.AssertListsOfUtterances(list)
	assert(list)
	assert(type(list) == "table", "Expected ListsOfUtterances to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUtteranceList(v)
	end
end

--  
-- List of UtteranceList objects
function M.ListsOfUtterances(list)
	M.AssertListsOfUtterances(list)
	return list
end

function M.AssertBuiltinIntentSlotList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuiltinIntentSlotList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBuiltinIntentSlot(v)
	end
end

--  
-- List of BuiltinIntentSlot objects
function M.BuiltinIntentSlotList(list)
	M.AssertBuiltinIntentSlotList(list)
	return list
end

function M.AssertBotMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected BotMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBotMetadata(v)
	end
end

--  
-- List of BotMetadata objects
function M.BotMetadataList(list)
	M.AssertBotMetadataList(list)
	return list
end

function M.AssertListOfUtterance(list)
	assert(list)
	assert(type(list) == "table", "Expected ListOfUtterance to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUtteranceData(v)
	end
end

--  
-- List of UtteranceData objects
function M.ListOfUtterance(list)
	M.AssertListOfUtterance(list)
	return list
end

function M.AssertEnumerationValues(list)
	assert(list)
	assert(type(list) == "table", "Expected EnumerationValues to be of type ''table")
	assert(#list <= 10000, "Expected list to be contain 10000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertEnumerationValue(v)
	end
end

--  
-- List of EnumerationValue objects
function M.EnumerationValues(list)
	M.AssertEnumerationValues(list)
	return list
end

function M.AssertIntentMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected IntentMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertIntentMetadata(v)
	end
end

--  
-- List of IntentMetadata objects
function M.IntentMetadataList(list)
	M.AssertIntentMetadataList(list)
	return list
end

function M.AssertSlotList(list)
	assert(list)
	assert(type(list) == "table", "Expected SlotList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertSlot(v)
	end
end

--  
-- List of Slot objects
function M.SlotList(list)
	M.AssertSlotList(list)
	return list
end

function M.AssertBotVersions(list)
	assert(list)
	assert(type(list) == "table", "Expected BotVersions to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertVersion(v)
	end
end

--  
-- List of Version objects
function M.BotVersions(list)
	M.AssertBotVersions(list)
	return list
end

function M.AssertIntentUtteranceList(list)
	assert(list)
	assert(type(list) == "table", "Expected IntentUtteranceList to be of type ''table")
	assert(#list <= 1500, "Expected list to be contain 1500 elements")
	for _,v in ipairs(list) do
		M.AssertUtterance(v)
	end
end

--  
-- List of Utterance objects
function M.IntentUtteranceList(list)
	M.AssertIntentUtteranceList(list)
	return list
end

function M.AssertBotAliasMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected BotAliasMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBotAliasMetadata(v)
	end
end

--  
-- List of BotAliasMetadata objects
function M.BotAliasMetadataList(list)
	M.AssertBotAliasMetadataList(list)
	return list
end

function M.AssertMessageList(list)
	assert(list)
	assert(type(list) == "table", "Expected MessageList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertMessage(v)
	end
end

--  
-- List of Message objects
function M.MessageList(list)
	M.AssertMessageList(list)
	return list
end

function M.AssertBuiltinSlotTypeMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected BuiltinSlotTypeMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertBuiltinSlotTypeMetadata(v)
	end
end

--  
-- List of BuiltinSlotTypeMetadata objects
function M.BuiltinSlotTypeMetadataList(list)
	M.AssertBuiltinSlotTypeMetadataList(list)
	return list
end

function M.AssertSlotUtteranceList(list)
	assert(list)
	assert(type(list) == "table", "Expected SlotUtteranceList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertUtterance(v)
	end
end

--  
-- List of Utterance objects
function M.SlotUtteranceList(list)
	M.AssertSlotUtteranceList(list)
	return list
end

function M.AssertLocaleList(list)
	assert(list)
	assert(type(list) == "table", "Expected LocaleList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLocale(v)
	end
end

--  
-- List of Locale objects
function M.LocaleList(list)
	M.AssertLocaleList(list)
	return list
end

function M.AssertIntentList(list)
	assert(list)
	assert(type(list) == "table", "Expected IntentList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertIntent(v)
	end
end

--  
-- List of Intent objects
function M.IntentList(list)
	M.AssertIntentList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- CreateBotVersion
-- @param CreateBotVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateBotVersionAsync(CreateBotVersionRequest, cb)
	assert(CreateBotVersionRequest, "You must provide a CreateBotVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateBotVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/bots/{name}/versions", CreateBotVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBotAlias
-- @param DeleteBotAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBotAliasAsync(DeleteBotAliasRequest, cb)
	assert(DeleteBotAliasRequest, "You must provide a DeleteBotAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBotAlias",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/bots/{botName}/aliases/{name}", DeleteBotAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIntents
-- @param GetIntentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntentsAsync(GetIntentsRequest, cb)
	assert(GetIntentsRequest, "You must provide a GetIntentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIntents",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/intents/", GetIntentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSlotTypes
-- @param GetSlotTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSlotTypesAsync(GetSlotTypesRequest, cb)
	assert(GetSlotTypesRequest, "You must provide a GetSlotTypesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSlotTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/slottypes/", GetSlotTypesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSlotTypeVersion
-- @param DeleteSlotTypeVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSlotTypeVersionAsync(DeleteSlotTypeVersionRequest, cb)
	assert(DeleteSlotTypeVersionRequest, "You must provide a DeleteSlotTypeVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSlotTypeVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/slottypes/{name}/version/{version}", DeleteSlotTypeVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateSlotTypeVersion
-- @param CreateSlotTypeVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateSlotTypeVersionAsync(CreateSlotTypeVersionRequest, cb)
	assert(CreateSlotTypeVersionRequest, "You must provide a CreateSlotTypeVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateSlotTypeVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/slottypes/{name}/versions", CreateSlotTypeVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIntentVersions
-- @param GetIntentVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntentVersionsAsync(GetIntentVersionsRequest, cb)
	assert(GetIntentVersionsRequest, "You must provide a GetIntentVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIntentVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/intents/{name}/versions/", GetIntentVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBuiltinSlotTypes
-- @param GetBuiltinSlotTypesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBuiltinSlotTypesAsync(GetBuiltinSlotTypesRequest, cb)
	assert(GetBuiltinSlotTypesRequest, "You must provide a GetBuiltinSlotTypesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBuiltinSlotTypes",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/builtins/slottypes/", GetBuiltinSlotTypesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateIntentVersion
-- @param CreateIntentVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateIntentVersionAsync(CreateIntentVersionRequest, cb)
	assert(CreateIntentVersionRequest, "You must provide a CreateIntentVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateIntentVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/intents/{name}/versions", CreateIntentVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetUtterancesView
-- @param GetUtterancesViewRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetUtterancesViewAsync(GetUtterancesViewRequest, cb)
	assert(GetUtterancesViewRequest, "You must provide a GetUtterancesViewRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetUtterancesView",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/bots/{botname}/utterances?view=aggregation", GetUtterancesViewRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBot
-- @param GetBotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotAsync(GetBotRequest, cb)
	assert(GetBotRequest, "You must provide a GetBotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBot",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/bots/{name}/versions/{versionoralias}", GetBotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSlotTypeVersions
-- @param GetSlotTypeVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSlotTypeVersionsAsync(GetSlotTypeVersionsRequest, cb)
	assert(GetSlotTypeVersionsRequest, "You must provide a GetSlotTypeVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSlotTypeVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/slottypes/{name}/versions/", GetSlotTypeVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIntentVersion
-- @param DeleteIntentVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIntentVersionAsync(DeleteIntentVersionRequest, cb)
	assert(DeleteIntentVersionRequest, "You must provide a DeleteIntentVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteIntentVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/intents/{name}/versions/{version}", DeleteIntentVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteUtterances
-- @param DeleteUtterancesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteUtterancesAsync(DeleteUtterancesRequest, cb)
	assert(DeleteUtterancesRequest, "You must provide a DeleteUtterancesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteUtterances",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/bots/{botName}/utterances/{userId}", DeleteUtterancesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBotAlias
-- @param GetBotAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotAliasAsync(GetBotAliasRequest, cb)
	assert(GetBotAliasRequest, "You must provide a GetBotAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBotAlias",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/bots/{botName}/aliases/{name}", GetBotAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteIntent
-- @param DeleteIntentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteIntentAsync(DeleteIntentRequest, cb)
	assert(DeleteIntentRequest, "You must provide a DeleteIntentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteIntent",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/intents/{name}", DeleteIntentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBotVersions
-- @param GetBotVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotVersionsAsync(GetBotVersionsRequest, cb)
	assert(GetBotVersionsRequest, "You must provide a GetBotVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBotVersions",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/bots/{name}/versions/", GetBotVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBotAlias
-- @param PutBotAliasRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBotAliasAsync(PutBotAliasRequest, cb)
	assert(PutBotAliasRequest, "You must provide a PutBotAliasRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBotAlias",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/bots/{botName}/aliases/{name}", PutBotAliasRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBotChannelAssociation
-- @param DeleteBotChannelAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBotChannelAssociationAsync(DeleteBotChannelAssociationRequest, cb)
	assert(DeleteBotChannelAssociationRequest, "You must provide a DeleteBotChannelAssociationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBotChannelAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/bots/{botName}/aliases/{aliasName}/channels/{name}", DeleteBotChannelAssociationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBotVersion
-- @param DeleteBotVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBotVersionAsync(DeleteBotVersionRequest, cb)
	assert(DeleteBotVersionRequest, "You must provide a DeleteBotVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBotVersion",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/bots/{name}/versions/{version}", DeleteBotVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBotChannelAssociations
-- @param GetBotChannelAssociationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotChannelAssociationsAsync(GetBotChannelAssociationsRequest, cb)
	assert(GetBotChannelAssociationsRequest, "You must provide a GetBotChannelAssociationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBotChannelAssociations",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/bots/{botName}/aliases/{aliasName}/channels/", GetBotChannelAssociationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutBot
-- @param PutBotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutBotAsync(PutBotRequest, cb)
	assert(PutBotRequest, "You must provide a PutBotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutBot",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/bots/{name}/versions/$LATEST", PutBotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBotChannelAssociation
-- @param GetBotChannelAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotChannelAssociationAsync(GetBotChannelAssociationRequest, cb)
	assert(GetBotChannelAssociationRequest, "You must provide a GetBotChannelAssociationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBotChannelAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/bots/{botName}/aliases/{aliasName}/channels/{name}", GetBotChannelAssociationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBotAliases
-- @param GetBotAliasesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotAliasesAsync(GetBotAliasesRequest, cb)
	assert(GetBotAliasesRequest, "You must provide a GetBotAliasesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBotAliases",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/bots/{botName}/aliases/", GetBotAliasesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteBot
-- @param DeleteBotRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteBotAsync(DeleteBotRequest, cb)
	assert(DeleteBotRequest, "You must provide a DeleteBotRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteBot",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/bots/{name}", DeleteBotRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBuiltinIntents
-- @param GetBuiltinIntentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBuiltinIntentsAsync(GetBuiltinIntentsRequest, cb)
	assert(GetBuiltinIntentsRequest, "You must provide a GetBuiltinIntentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBuiltinIntents",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/builtins/intents/", GetBuiltinIntentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBots
-- @param GetBotsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBotsAsync(GetBotsRequest, cb)
	assert(GetBotsRequest, "You must provide a GetBotsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBots",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/bots/", GetBotsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSlotType
-- @param DeleteSlotTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSlotTypeAsync(DeleteSlotTypeRequest, cb)
	assert(DeleteSlotTypeRequest, "You must provide a DeleteSlotTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteSlotType",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/slottypes/{name}", DeleteSlotTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetSlotType
-- @param GetSlotTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetSlotTypeAsync(GetSlotTypeRequest, cb)
	assert(GetSlotTypeRequest, "You must provide a GetSlotTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetSlotType",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/slottypes/{name}/versions/{version}", GetSlotTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetIntent
-- @param GetIntentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetIntentAsync(GetIntentRequest, cb)
	assert(GetIntentRequest, "You must provide a GetIntentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetIntent",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/intents/{name}/versions/{version}", GetIntentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutSlotType
-- @param PutSlotTypeRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutSlotTypeAsync(PutSlotTypeRequest, cb)
	assert(PutSlotTypeRequest, "You must provide a PutSlotTypeRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutSlotType",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/slottypes/{name}/versions/$LATEST", PutSlotTypeRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetBuiltinIntent
-- @param GetBuiltinIntentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetBuiltinIntentAsync(GetBuiltinIntentRequest, cb)
	assert(GetBuiltinIntentRequest, "You must provide a GetBuiltinIntentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetBuiltinIntent",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/builtins/intents/{signature}", GetBuiltinIntentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutIntent
-- @param PutIntentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutIntentAsync(PutIntentRequest, cb)
	assert(PutIntentRequest, "You must provide a PutIntentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutIntent",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/intents/{name}/versions/$LATEST", PutIntentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
