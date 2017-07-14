--- GENERATED CODE - DO NOT MODIFY
-- Amazon Polly (polly-2016-06-10)

local M = {}

M.metadata = {
	api_version = "2016-06-10",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "polly",
	service_abbreviation = "",
	service_full_name = "Amazon Polly",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "polly-2016-06-10",
}

local LexiconSizeExceededException_keys = { "message" = true, nil }

function M.AssertLexiconSizeExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LexiconSizeExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LexiconSizeExceededException_keys[k], "LexiconSizeExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LexiconSizeExceededException
-- <p>The maximum size of the specified lexicon would be exceeded by this operation.</p>
-- @param message [ErrorMessage] <p>The maximum size of the specified lexicon would be exceeded by this operation.</p>
function M.LexiconSizeExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LexiconSizeExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertLexiconSizeExceededException(t)
	return t
end

local DeleteLexiconInput_keys = { "Name" = true, nil }

function M.AssertDeleteLexiconInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLexiconInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLexiconInput_keys[k], "DeleteLexiconInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLexiconInput
--  
-- @param Name [LexiconName] <p>The name of the lexicon to delete. Must be an existing lexicon in the region.</p>
-- Required parameter: Name
function M.DeleteLexiconInput(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLexiconInput")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteLexiconInput(t)
	return t
end

local SynthesizeSpeechOutput_keys = { "ContentType" = true, "AudioStream" = true, "RequestCharacters" = true, nil }

function M.AssertSynthesizeSpeechOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SynthesizeSpeechOutput to be of type 'table'")
	if struct["ContentType"] then M.AssertContentType(struct["ContentType"]) end
	if struct["AudioStream"] then M.AssertAudioStream(struct["AudioStream"]) end
	if struct["RequestCharacters"] then M.AssertRequestCharacters(struct["RequestCharacters"]) end
	for k,_ in pairs(struct) do
		assert(SynthesizeSpeechOutput_keys[k], "SynthesizeSpeechOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SynthesizeSpeechOutput
--  
-- @param ContentType [ContentType] <p> Specifies the type audio stream. This should reflect the <code>OutputFormat</code> parameter in your request. </p> <ul> <li> <p> If you request <code>mp3</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/mpeg. </p> </li> <li> <p> If you request <code>ogg_vorbis</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/ogg. </p> </li> <li> <p> If you request <code>pcm</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. </p> </li> <li> <p>If you request <code>json</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/json.</p> </li> </ul> <p> </p>
-- @param AudioStream [AudioStream] <p> Stream containing the synthesized speech. </p>
-- @param RequestCharacters [RequestCharacters] <p>Number of characters synthesized.</p>
function M.SynthesizeSpeechOutput(ContentType, AudioStream, RequestCharacters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SynthesizeSpeechOutput")
	local t = { 
		["ContentType"] = ContentType,
		["AudioStream"] = AudioStream,
		["RequestCharacters"] = RequestCharacters,
	}
	M.AssertSynthesizeSpeechOutput(t)
	return t
end

local InvalidSampleRateException_keys = { "message" = true, nil }

function M.AssertInvalidSampleRateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSampleRateException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSampleRateException_keys[k], "InvalidSampleRateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSampleRateException
-- <p>The specified sample rate is not valid.</p>
-- @param message [ErrorMessage] <p>The specified sample rate is not valid.</p>
function M.InvalidSampleRateException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSampleRateException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidSampleRateException(t)
	return t
end

local DeleteLexiconOutput_keys = { nil }

function M.AssertDeleteLexiconOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLexiconOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteLexiconOutput_keys[k], "DeleteLexiconOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLexiconOutput
--  
function M.DeleteLexiconOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLexiconOutput")
	local t = { 
	}
	M.AssertDeleteLexiconOutput(t)
	return t
end

local InvalidNextTokenException_keys = { "message" = true, nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The NextToken is invalid. Verify that it's spelled correctly, and then try again.</p>
-- @param message [ErrorMessage] <p>The NextToken is invalid. Verify that it's spelled correctly, and then try again.</p>
function M.InvalidNextTokenException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local LexiconNotFoundException_keys = { "message" = true, nil }

function M.AssertLexiconNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LexiconNotFoundException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LexiconNotFoundException_keys[k], "LexiconNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LexiconNotFoundException
-- <p>Amazon Polly can't find the specified lexicon. This could be caused by a lexicon that is missing, its name is misspelled or specifying a lexicon that is in a different region.</p> <p>Verify that the lexicon exists, is in the region (see <a>ListLexicons</a>) and that you spelled its name is spelled correctly. Then try again.</p>
-- @param message [ErrorMessage] <p>Amazon Polly can't find the specified lexicon. This could be caused by a lexicon that is missing, its name is misspelled or specifying a lexicon that is in a different region.</p> <p>Verify that the lexicon exists, is in the region (see <a>ListLexicons</a>) and that you spelled its name is spelled correctly. Then try again.</p>
function M.LexiconNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LexiconNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertLexiconNotFoundException(t)
	return t
end

local UnsupportedPlsAlphabetException_keys = { "message" = true, nil }

function M.AssertUnsupportedPlsAlphabetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedPlsAlphabetException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedPlsAlphabetException_keys[k], "UnsupportedPlsAlphabetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedPlsAlphabetException
-- <p>The alphabet specified by the lexicon is not a supported alphabet. Valid values are <code>x-sampa</code> and <code>ipa</code>.</p>
-- @param message [ErrorMessage] <p>The alphabet specified by the lexicon is not a supported alphabet. Valid values are <code>x-sampa</code> and <code>ipa</code>.</p>
function M.UnsupportedPlsAlphabetException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedPlsAlphabetException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedPlsAlphabetException(t)
	return t
end

local ServiceFailureException_keys = { "message" = true, nil }

function M.AssertServiceFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceFailureException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceFailureException_keys[k], "ServiceFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceFailureException
-- <p>An unknown condition has caused a service failure.</p>
-- @param message [ErrorMessage] <p>An unknown condition has caused a service failure.</p>
function M.ServiceFailureException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceFailureException")
	local t = { 
		["message"] = message,
	}
	M.AssertServiceFailureException(t)
	return t
end

local DescribeVoicesInput_keys = { "LanguageCode" = true, "NextToken" = true, nil }

function M.AssertDescribeVoicesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVoicesInput to be of type 'table'")
	if struct["LanguageCode"] then M.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVoicesInput_keys[k], "DescribeVoicesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVoicesInput
--  
-- @param LanguageCode [LanguageCode] <p> The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned. </p>
-- @param NextToken [NextToken] <p>An opaque pagination token returned from the previous <code>DescribeVoices</code> operation. If present, this indicates where to continue the listing.</p>
function M.DescribeVoicesInput(LanguageCode, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVoicesInput")
	local t = { 
		["LanguageCode"] = LanguageCode,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeVoicesInput(t)
	return t
end

local MarksNotSupportedForFormatException_keys = { "message" = true, nil }

function M.AssertMarksNotSupportedForFormatException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MarksNotSupportedForFormatException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MarksNotSupportedForFormatException_keys[k], "MarksNotSupportedForFormatException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MarksNotSupportedForFormatException
-- <p>Speech marks are not supported for the <code>OutputFormat</code> selected. Speech marks are only available for content in <code>json</code> format.</p>
-- @param message [ErrorMessage] <p>Speech marks are not supported for the <code>OutputFormat</code> selected. Speech marks are only available for content in <code>json</code> format.</p>
function M.MarksNotSupportedForFormatException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MarksNotSupportedForFormatException")
	local t = { 
		["message"] = message,
	}
	M.AssertMarksNotSupportedForFormatException(t)
	return t
end

local InvalidSsmlException_keys = { "message" = true, nil }

function M.AssertInvalidSsmlException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSsmlException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSsmlException_keys[k], "InvalidSsmlException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSsmlException
-- <p>The SSML you provided is invalid. Verify the SSML syntax, spelling of tags and values, and then try again.</p>
-- @param message [ErrorMessage] <p>The SSML you provided is invalid. Verify the SSML syntax, spelling of tags and values, and then try again.</p>
function M.InvalidSsmlException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSsmlException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidSsmlException(t)
	return t
end

local DescribeVoicesOutput_keys = { "NextToken" = true, "Voices" = true, nil }

function M.AssertDescribeVoicesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVoicesOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Voices"] then M.AssertVoiceList(struct["Voices"]) end
	for k,_ in pairs(struct) do
		assert(DescribeVoicesOutput_keys[k], "DescribeVoicesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVoicesOutput
--  
-- @param NextToken [NextToken] <p>The pagination token to use in the next request to continue the listing of voices. <code>NextToken</code> is returned only if the response is truncated.</p>
-- @param Voices [VoiceList] <p>A list of voices with their properties.</p>
function M.DescribeVoicesOutput(NextToken, Voices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVoicesOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Voices"] = Voices,
	}
	M.AssertDescribeVoicesOutput(t)
	return t
end

local LexiconAttributes_keys = { "LanguageCode" = true, "LastModified" = true, "Alphabet" = true, "LexemesCount" = true, "LexiconArn" = true, "Size" = true, nil }

function M.AssertLexiconAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LexiconAttributes to be of type 'table'")
	if struct["LanguageCode"] then M.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["LastModified"] then M.AssertLastModified(struct["LastModified"]) end
	if struct["Alphabet"] then M.AssertAlphabet(struct["Alphabet"]) end
	if struct["LexemesCount"] then M.AssertLexemesCount(struct["LexemesCount"]) end
	if struct["LexiconArn"] then M.AssertLexiconArn(struct["LexiconArn"]) end
	if struct["Size"] then M.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(LexiconAttributes_keys[k], "LexiconAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LexiconAttributes
-- <p>Contains metadata describing the lexicon such as the number of lexemes, language code, and so on. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
-- @param LanguageCode [LanguageCode] <p>Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.</p>
-- @param LastModified [LastModified] <p>Date lexicon was last modified (a timestamp value).</p>
-- @param Alphabet [Alphabet] <p>Phonetic alphabet used in the lexicon. Valid values are <code>ipa</code> and <code>x-sampa</code>.</p>
-- @param LexemesCount [LexemesCount] <p>Number of lexemes in the lexicon.</p>
-- @param LexiconArn [LexiconArn] <p>Amazon Resource Name (ARN) of the lexicon.</p>
-- @param Size [Size] <p>Total size of the lexicon, in characters.</p>
function M.LexiconAttributes(LanguageCode, LastModified, Alphabet, LexemesCount, LexiconArn, Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LexiconAttributes")
	local t = { 
		["LanguageCode"] = LanguageCode,
		["LastModified"] = LastModified,
		["Alphabet"] = Alphabet,
		["LexemesCount"] = LexemesCount,
		["LexiconArn"] = LexiconArn,
		["Size"] = Size,
	}
	M.AssertLexiconAttributes(t)
	return t
end

local GetLexiconOutput_keys = { "Lexicon" = true, "LexiconAttributes" = true, nil }

function M.AssertGetLexiconOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLexiconOutput to be of type 'table'")
	if struct["Lexicon"] then M.AssertLexicon(struct["Lexicon"]) end
	if struct["LexiconAttributes"] then M.AssertLexiconAttributes(struct["LexiconAttributes"]) end
	for k,_ in pairs(struct) do
		assert(GetLexiconOutput_keys[k], "GetLexiconOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLexiconOutput
--  
-- @param Lexicon [Lexicon] <p>Lexicon object that provides name and the string content of the lexicon. </p>
-- @param LexiconAttributes [LexiconAttributes] <p>Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.</p>
function M.GetLexiconOutput(Lexicon, LexiconAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLexiconOutput")
	local t = { 
		["Lexicon"] = Lexicon,
		["LexiconAttributes"] = LexiconAttributes,
	}
	M.AssertGetLexiconOutput(t)
	return t
end

local MaxLexiconsNumberExceededException_keys = { "message" = true, nil }

function M.AssertMaxLexiconsNumberExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxLexiconsNumberExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MaxLexiconsNumberExceededException_keys[k], "MaxLexiconsNumberExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxLexiconsNumberExceededException
-- <p>The maximum number of lexicons would be exceeded by this operation.</p>
-- @param message [ErrorMessage] <p>The maximum number of lexicons would be exceeded by this operation.</p>
function M.MaxLexiconsNumberExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxLexiconsNumberExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertMaxLexiconsNumberExceededException(t)
	return t
end

local ListLexiconsOutput_keys = { "NextToken" = true, "Lexicons" = true, nil }

function M.AssertListLexiconsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLexiconsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Lexicons"] then M.AssertLexiconDescriptionList(struct["Lexicons"]) end
	for k,_ in pairs(struct) do
		assert(ListLexiconsOutput_keys[k], "ListLexiconsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLexiconsOutput
--  
-- @param NextToken [NextToken] <p>The pagination token to use in the next request to continue the listing of lexicons. <code>NextToken</code> is returned only if the response is truncated.</p>
-- @param Lexicons [LexiconDescriptionList] <p>A list of lexicon names and attributes.</p>
function M.ListLexiconsOutput(NextToken, Lexicons, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLexiconsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Lexicons"] = Lexicons,
	}
	M.AssertListLexiconsOutput(t)
	return t
end

local ListLexiconsInput_keys = { "NextToken" = true, nil }

function M.AssertListLexiconsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLexiconsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListLexiconsInput_keys[k], "ListLexiconsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLexiconsInput
--  
-- @param NextToken [NextToken] <p>An opaque pagination token returned from previous <code>ListLexicons</code> operation. If present, indicates where to continue the list of lexicons.</p>
function M.ListLexiconsInput(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLexiconsInput")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListLexiconsInput(t)
	return t
end

local TextLengthExceededException_keys = { "message" = true, nil }

function M.AssertTextLengthExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TextLengthExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TextLengthExceededException_keys[k], "TextLengthExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TextLengthExceededException
-- <p>The value of the "Text" parameter is longer than the accepted limits. The limit for input text is a maximum of 3000 characters total, of which no more than 1500 can be billed characters. SSML tags are not counted as billed characters.</p>
-- @param message [ErrorMessage] <p>The value of the "Text" parameter is longer than the accepted limits. The limit for input text is a maximum of 3000 characters total, of which no more than 1500 can be billed characters. SSML tags are not counted as billed characters.</p>
function M.TextLengthExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TextLengthExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertTextLengthExceededException(t)
	return t
end

local Voice_keys = { "Gender" = true, "Name" = true, "LanguageName" = true, "Id" = true, "LanguageCode" = true, nil }

function M.AssertVoice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Voice to be of type 'table'")
	if struct["Gender"] then M.AssertGender(struct["Gender"]) end
	if struct["Name"] then M.AssertVoiceName(struct["Name"]) end
	if struct["LanguageName"] then M.AssertLanguageName(struct["LanguageName"]) end
	if struct["Id"] then M.AssertVoiceId(struct["Id"]) end
	if struct["LanguageCode"] then M.AssertLanguageCode(struct["LanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(Voice_keys[k], "Voice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Voice
-- <p>Description of the voice.</p>
-- @param Gender [Gender] <p>Gender of the voice.</p>
-- @param Name [VoiceName] <p>Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.</p>
-- @param LanguageName [LanguageName] <p>Human readable name of the language in English.</p>
-- @param Id [VoiceId] <p>Amazon Polly assigned voice ID. This is the ID that you specify when calling the <code>SynthesizeSpeech</code> operation.</p>
-- @param LanguageCode [LanguageCode] <p>Language code of the voice.</p>
function M.Voice(Gender, Name, LanguageName, Id, LanguageCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Voice")
	local t = { 
		["Gender"] = Gender,
		["Name"] = Name,
		["LanguageName"] = LanguageName,
		["Id"] = Id,
		["LanguageCode"] = LanguageCode,
	}
	M.AssertVoice(t)
	return t
end

local SsmlMarksNotSupportedForTextTypeException_keys = { "message" = true, nil }

function M.AssertSsmlMarksNotSupportedForTextTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SsmlMarksNotSupportedForTextTypeException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(SsmlMarksNotSupportedForTextTypeException_keys[k], "SsmlMarksNotSupportedForTextTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SsmlMarksNotSupportedForTextTypeException
-- <p>SSML speech marks are not supported for plain text-type input.</p>
-- @param message [ErrorMessage] <p>SSML speech marks are not supported for plain text-type input.</p>
function M.SsmlMarksNotSupportedForTextTypeException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SsmlMarksNotSupportedForTextTypeException")
	local t = { 
		["message"] = message,
	}
	M.AssertSsmlMarksNotSupportedForTextTypeException(t)
	return t
end

local Lexicon_keys = { "Content" = true, "Name" = true, nil }

function M.AssertLexicon(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Lexicon to be of type 'table'")
	if struct["Content"] then M.AssertLexiconContent(struct["Content"]) end
	if struct["Name"] then M.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Lexicon_keys[k], "Lexicon contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Lexicon
-- <p>Provides lexicon name and lexicon content in string format. For more information, see <a href="https://www.w3.org/TR/pronunciation-lexicon/">Pronunciation Lexicon Specification (PLS) Version 1.0</a>.</p>
-- @param Content [LexiconContent] <p>Lexicon content in string format. The content of a lexicon must be in PLS format.</p>
-- @param Name [LexiconName] <p>Name of the lexicon.</p>
function M.Lexicon(Content, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Lexicon")
	local t = { 
		["Content"] = Content,
		["Name"] = Name,
	}
	M.AssertLexicon(t)
	return t
end

local MaxLexemeLengthExceededException_keys = { "message" = true, nil }

function M.AssertMaxLexemeLengthExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxLexemeLengthExceededException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MaxLexemeLengthExceededException_keys[k], "MaxLexemeLengthExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxLexemeLengthExceededException
-- <p>The maximum size of the lexeme would be exceeded by this operation.</p>
-- @param message [ErrorMessage] <p>The maximum size of the lexeme would be exceeded by this operation.</p>
function M.MaxLexemeLengthExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxLexemeLengthExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertMaxLexemeLengthExceededException(t)
	return t
end

local PutLexiconInput_keys = { "Content" = true, "Name" = true, nil }

function M.AssertPutLexiconInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLexiconInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Content"], "Expected key Content to exist in table")
	if struct["Content"] then M.AssertLexiconContent(struct["Content"]) end
	if struct["Name"] then M.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(PutLexiconInput_keys[k], "PutLexiconInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLexiconInput
--  
-- @param Content [LexiconContent] <p>Content of the PLS lexicon as string data.</p>
-- @param Name [LexiconName] <p>Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long. </p>
-- Required parameter: Name
-- Required parameter: Content
function M.PutLexiconInput(Content, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutLexiconInput")
	local t = { 
		["Content"] = Content,
		["Name"] = Name,
	}
	M.AssertPutLexiconInput(t)
	return t
end

local UnsupportedPlsLanguageException_keys = { "message" = true, nil }

function M.AssertUnsupportedPlsLanguageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedPlsLanguageException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedPlsLanguageException_keys[k], "UnsupportedPlsLanguageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedPlsLanguageException
-- <p>The language specified in the lexicon is unsupported. For a list of supported languages, see <a href="http://docs.aws.amazon.com/polly/latest/dg/API_LexiconAttributes.html">Lexicon Attributes</a>.</p>
-- @param message [ErrorMessage] <p>The language specified in the lexicon is unsupported. For a list of supported languages, see <a href="http://docs.aws.amazon.com/polly/latest/dg/API_LexiconAttributes.html">Lexicon Attributes</a>.</p>
function M.UnsupportedPlsLanguageException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedPlsLanguageException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedPlsLanguageException(t)
	return t
end

local LexiconDescription_keys = { "Attributes" = true, "Name" = true, nil }

function M.AssertLexiconDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LexiconDescription to be of type 'table'")
	if struct["Attributes"] then M.AssertLexiconAttributes(struct["Attributes"]) end
	if struct["Name"] then M.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(LexiconDescription_keys[k], "LexiconDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LexiconDescription
-- <p>Describes the content of the lexicon.</p>
-- @param Attributes [LexiconAttributes] <p>Provides lexicon metadata.</p>
-- @param Name [LexiconName] <p>Name of the lexicon.</p>
function M.LexiconDescription(Attributes, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LexiconDescription")
	local t = { 
		["Attributes"] = Attributes,
		["Name"] = Name,
	}
	M.AssertLexiconDescription(t)
	return t
end

local GetLexiconInput_keys = { "Name" = true, nil }

function M.AssertGetLexiconInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLexiconInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(GetLexiconInput_keys[k], "GetLexiconInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLexiconInput
--  
-- @param Name [LexiconName] <p>Name of the lexicon.</p>
-- Required parameter: Name
function M.GetLexiconInput(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLexiconInput")
	local t = { 
		["Name"] = Name,
	}
	M.AssertGetLexiconInput(t)
	return t
end

local SynthesizeSpeechInput_keys = { "OutputFormat" = true, "SpeechMarkTypes" = true, "VoiceId" = true, "Text" = true, "LexiconNames" = true, "SampleRate" = true, "TextType" = true, nil }

function M.AssertSynthesizeSpeechInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SynthesizeSpeechInput to be of type 'table'")
	assert(struct["OutputFormat"], "Expected key OutputFormat to exist in table")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["VoiceId"], "Expected key VoiceId to exist in table")
	if struct["OutputFormat"] then M.AssertOutputFormat(struct["OutputFormat"]) end
	if struct["SpeechMarkTypes"] then M.AssertSpeechMarkTypeList(struct["SpeechMarkTypes"]) end
	if struct["VoiceId"] then M.AssertVoiceId(struct["VoiceId"]) end
	if struct["Text"] then M.AssertText(struct["Text"]) end
	if struct["LexiconNames"] then M.AssertLexiconNameList(struct["LexiconNames"]) end
	if struct["SampleRate"] then M.AssertSampleRate(struct["SampleRate"]) end
	if struct["TextType"] then M.AssertTextType(struct["TextType"]) end
	for k,_ in pairs(struct) do
		assert(SynthesizeSpeechInput_keys[k], "SynthesizeSpeechInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SynthesizeSpeechInput
--  
-- @param OutputFormat [OutputFormat] <p> The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>
-- @param SpeechMarkTypes [SpeechMarkTypeList] <p>The type of speech marks returned for the input text.</p>
-- @param VoiceId [VoiceId] <p> Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the <a href="http://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation. </p>
-- @param Text [Text] <p> Input text to synthesize. If you specify <code>ssml</code> as the <code>TextType</code>, follow the SSML format for the input text. </p>
-- @param LexiconNames [LexiconNameList] <p>List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see <a href="http://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html">PutLexicon</a>.</p>
-- @param SampleRate [SampleRate] <p> The audio frequency specified in Hz. </p> <p>The valid values for <code>mp3</code> and <code>ogg_vorbis</code> are "8000", "16000", and "22050". The default value is "22050". </p> <p> Valid values for <code>pcm</code> are "8000" and "16000" The default value is "16000". </p>
-- @param TextType [TextType] <p> Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/ssml.html">Using SSML</a>.</p>
-- Required parameter: OutputFormat
-- Required parameter: Text
-- Required parameter: VoiceId
function M.SynthesizeSpeechInput(OutputFormat, SpeechMarkTypes, VoiceId, Text, LexiconNames, SampleRate, TextType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SynthesizeSpeechInput")
	local t = { 
		["OutputFormat"] = OutputFormat,
		["SpeechMarkTypes"] = SpeechMarkTypes,
		["VoiceId"] = VoiceId,
		["Text"] = Text,
		["LexiconNames"] = LexiconNames,
		["SampleRate"] = SampleRate,
		["TextType"] = TextType,
	}
	M.AssertSynthesizeSpeechInput(t)
	return t
end

local InvalidLexiconException_keys = { "message" = true, nil }

function M.AssertInvalidLexiconException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLexiconException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidLexiconException_keys[k], "InvalidLexiconException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLexiconException
-- <p>Amazon Polly can't find the specified lexicon. Verify that the lexicon's name is spelled correctly, and then try again.</p>
-- @param message [ErrorMessage] <p>Amazon Polly can't find the specified lexicon. Verify that the lexicon's name is spelled correctly, and then try again.</p>
function M.InvalidLexiconException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLexiconException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidLexiconException(t)
	return t
end

local PutLexiconOutput_keys = { nil }

function M.AssertPutLexiconOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLexiconOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PutLexiconOutput_keys[k], "PutLexiconOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLexiconOutput
--  
function M.PutLexiconOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutLexiconOutput")
	local t = { 
	}
	M.AssertPutLexiconOutput(t)
	return t
end

function M.AssertOutputFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputFormat to be of type 'string'")
end

--  
function M.OutputFormat(str)
	M.AssertOutputFormat(str)
	return str
end

function M.AssertLexiconName(str)
	assert(str)
	assert(type(str) == "string", "Expected LexiconName to be of type 'string'")
	assert(str:match("[0-9A-Za-z]{1,20}"), "Expected string to match pattern '[0-9A-Za-z]{1,20}'")
end

--  
function M.LexiconName(str)
	M.AssertLexiconName(str)
	return str
end

function M.AssertVoiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected VoiceName to be of type 'string'")
end

--  
function M.VoiceName(str)
	M.AssertVoiceName(str)
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

function M.AssertLanguageCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageCode to be of type 'string'")
end

--  
function M.LanguageCode(str)
	M.AssertLanguageCode(str)
	return str
end

function M.AssertLexiconContent(str)
	assert(str)
	assert(type(str) == "string", "Expected LexiconContent to be of type 'string'")
end

--  
function M.LexiconContent(str)
	M.AssertLexiconContent(str)
	return str
end

function M.AssertSpeechMarkType(str)
	assert(str)
	assert(type(str) == "string", "Expected SpeechMarkType to be of type 'string'")
end

--  
function M.SpeechMarkType(str)
	M.AssertSpeechMarkType(str)
	return str
end

function M.AssertAlphabet(str)
	assert(str)
	assert(type(str) == "string", "Expected Alphabet to be of type 'string'")
end

--  
function M.Alphabet(str)
	M.AssertAlphabet(str)
	return str
end

function M.AssertVoiceId(str)
	assert(str)
	assert(type(str) == "string", "Expected VoiceId to be of type 'string'")
end

--  
function M.VoiceId(str)
	M.AssertVoiceId(str)
	return str
end

function M.AssertGender(str)
	assert(str)
	assert(type(str) == "string", "Expected Gender to be of type 'string'")
end

--  
function M.Gender(str)
	M.AssertGender(str)
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

function M.AssertLanguageName(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageName to be of type 'string'")
end

--  
function M.LanguageName(str)
	M.AssertLanguageName(str)
	return str
end

function M.AssertSampleRate(str)
	assert(str)
	assert(type(str) == "string", "Expected SampleRate to be of type 'string'")
end

--  
function M.SampleRate(str)
	M.AssertSampleRate(str)
	return str
end

function M.AssertLexiconArn(str)
	assert(str)
	assert(type(str) == "string", "Expected LexiconArn to be of type 'string'")
end

--  
function M.LexiconArn(str)
	M.AssertLexiconArn(str)
	return str
end

function M.AssertTextType(str)
	assert(str)
	assert(type(str) == "string", "Expected TextType to be of type 'string'")
end

--  
function M.TextType(str)
	M.AssertTextType(str)
	return str
end

function M.AssertRequestCharacters(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RequestCharacters to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RequestCharacters(integer)
	M.AssertRequestCharacters(integer)
	return integer
end

function M.AssertLexemesCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LexemesCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.LexemesCount(integer)
	M.AssertLexemesCount(integer)
	return integer
end

function M.AssertSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Size to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Size(integer)
	M.AssertSize(integer)
	return integer
end

function M.AssertLastModified(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModified to be of type 'string'")
end

function M.LastModified(timestamp)
	M.AssertLastModified(timestamp)
	return timestamp
end

function M.AssertAudioStream(blob)
	assert(blob)
	assert(type(string) == "string", "Expected AudioStream to be of type 'string'")
end

function M.AudioStream(blob)
	M.AssertAudioStream(blob)
	return blob
end

function M.AssertLexiconNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected LexiconNameList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertLexiconName(v)
	end
end

--  
-- List of LexiconName objects
function M.LexiconNameList(list)
	M.AssertLexiconNameList(list)
	return list
end

function M.AssertLexiconDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected LexiconDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLexiconDescription(v)
	end
end

--  
-- List of LexiconDescription objects
function M.LexiconDescriptionList(list)
	M.AssertLexiconDescriptionList(list)
	return list
end

function M.AssertSpeechMarkTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected SpeechMarkTypeList to be of type ''table")
	assert(#list <= 4, "Expected list to be contain 4 elements")
	for _,v in ipairs(list) do
		M.AssertSpeechMarkType(v)
	end
end

--  
-- List of SpeechMarkType objects
function M.SpeechMarkTypeList(list)
	M.AssertSpeechMarkTypeList(list)
	return list
end

function M.AssertVoiceList(list)
	assert(list)
	assert(type(list) == "table", "Expected VoiceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertVoice(v)
	end
end

--  
-- List of Voice objects
function M.VoiceList(list)
	M.AssertVoiceList(list)
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
			return "polly.amazonaws.com"
		end
	end
	local ss = { "polly" }
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
--- DescribeVoices
-- @param DescribeVoicesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeVoicesAsync(DescribeVoicesInput, cb)
	assert(DescribeVoicesInput, "You must provide a DescribeVoicesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeVoices",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/voices", DescribeVoicesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetLexicon
-- @param GetLexiconInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetLexiconAsync(GetLexiconInput, cb)
	assert(GetLexiconInput, "You must provide a GetLexiconInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetLexicon",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/lexicons/{LexiconName}", GetLexiconInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutLexicon
-- @param PutLexiconInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutLexiconAsync(PutLexiconInput, cb)
	assert(PutLexiconInput, "You must provide a PutLexiconInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutLexicon",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/v1/lexicons/{LexiconName}", PutLexiconInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListLexicons
-- @param ListLexiconsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListLexiconsAsync(ListLexiconsInput, cb)
	assert(ListLexiconsInput, "You must provide a ListLexiconsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListLexicons",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/v1/lexicons", ListLexiconsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SynthesizeSpeech
-- @param SynthesizeSpeechInput
-- @param cb Callback function accepting two args: response, error_message
function M.SynthesizeSpeechAsync(SynthesizeSpeechInput, cb)
	assert(SynthesizeSpeechInput, "You must provide a SynthesizeSpeechInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SynthesizeSpeech",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/v1/speech", SynthesizeSpeechInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLexicon
-- @param DeleteLexiconInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLexiconAsync(DeleteLexiconInput, cb)
	assert(DeleteLexiconInput, "You must provide a DeleteLexiconInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteLexicon",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/v1/lexicons/{LexiconName}", DeleteLexiconInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
