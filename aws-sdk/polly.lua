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

local keys = {}
local asserts = {}

keys.LexiconSizeExceededException = { ["message"] = true, nil }

function asserts.AssertLexiconSizeExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LexiconSizeExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LexiconSizeExceededException[k], "LexiconSizeExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LexiconSizeExceededException
-- <p>The maximum size of the specified lexicon would be exceeded by this operation.</p>
-- @param _message [ErrorMessage] 
function M.LexiconSizeExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LexiconSizeExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLexiconSizeExceededException(t)
	return t
end

keys.DeleteLexiconInput = { ["Name"] = true, nil }

function asserts.AssertDeleteLexiconInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLexiconInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLexiconInput[k], "DeleteLexiconInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLexiconInput
--  
-- @param _Name [LexiconName] <p>The name of the lexicon to delete. Must be an existing lexicon in the region.</p>
-- Required parameter: Name
function M.DeleteLexiconInput(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLexiconInput")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertDeleteLexiconInput(t)
	return t
end

keys.SynthesizeSpeechOutput = { ["ContentType"] = true, ["AudioStream"] = true, ["RequestCharacters"] = true, nil }

function asserts.AssertSynthesizeSpeechOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SynthesizeSpeechOutput to be of type 'table'")
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["AudioStream"] then asserts.AssertAudioStream(struct["AudioStream"]) end
	if struct["RequestCharacters"] then asserts.AssertRequestCharacters(struct["RequestCharacters"]) end
	for k,_ in pairs(struct) do
		assert(keys.SynthesizeSpeechOutput[k], "SynthesizeSpeechOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SynthesizeSpeechOutput
--  
-- @param _ContentType [ContentType] <p> Specifies the type audio stream. This should reflect the <code>OutputFormat</code> parameter in your request. </p> <ul> <li> <p> If you request <code>mp3</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/mpeg. </p> </li> <li> <p> If you request <code>ogg_vorbis</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/ogg. </p> </li> <li> <p> If you request <code>pcm</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. </p> </li> <li> <p>If you request <code>json</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/json.</p> </li> </ul> <p> </p>
-- @param _AudioStream [AudioStream] <p> Stream containing the synthesized speech. </p>
-- @param _RequestCharacters [RequestCharacters] <p>Number of characters synthesized.</p>
function M.SynthesizeSpeechOutput(_ContentType, _AudioStream, _RequestCharacters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SynthesizeSpeechOutput")
	local t = { 
		["ContentType"] = _ContentType,
		["AudioStream"] = _AudioStream,
		["RequestCharacters"] = _RequestCharacters,
	}
	asserts.AssertSynthesizeSpeechOutput(t)
	return t
end

keys.InvalidSampleRateException = { ["message"] = true, nil }

function asserts.AssertInvalidSampleRateException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSampleRateException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSampleRateException[k], "InvalidSampleRateException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSampleRateException
-- <p>The specified sample rate is not valid.</p>
-- @param _message [ErrorMessage] 
function M.InvalidSampleRateException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSampleRateException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidSampleRateException(t)
	return t
end

keys.DeleteLexiconOutput = { nil }

function asserts.AssertDeleteLexiconOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLexiconOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteLexiconOutput[k], "DeleteLexiconOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLexiconOutput
--  
function M.DeleteLexiconOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLexiconOutput")
	local t = { 
	}
	asserts.AssertDeleteLexiconOutput(t)
	return t
end

keys.InvalidNextTokenException = { ["message"] = true, nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>The NextToken is invalid. Verify that it's spelled correctly, and then try again.</p>
-- @param _message [ErrorMessage] 
function M.InvalidNextTokenException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
end

keys.LexiconNotFoundException = { ["message"] = true, nil }

function asserts.AssertLexiconNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LexiconNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LexiconNotFoundException[k], "LexiconNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LexiconNotFoundException
-- <p>Amazon Polly can't find the specified lexicon. This could be caused by a lexicon that is missing, its name is misspelled or specifying a lexicon that is in a different region.</p> <p>Verify that the lexicon exists, is in the region (see <a>ListLexicons</a>) and that you spelled its name is spelled correctly. Then try again.</p>
-- @param _message [ErrorMessage] 
function M.LexiconNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LexiconNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLexiconNotFoundException(t)
	return t
end

keys.UnsupportedPlsAlphabetException = { ["message"] = true, nil }

function asserts.AssertUnsupportedPlsAlphabetException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedPlsAlphabetException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedPlsAlphabetException[k], "UnsupportedPlsAlphabetException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedPlsAlphabetException
-- <p>The alphabet specified by the lexicon is not a supported alphabet. Valid values are <code>x-sampa</code> and <code>ipa</code>.</p>
-- @param _message [ErrorMessage] 
function M.UnsupportedPlsAlphabetException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedPlsAlphabetException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnsupportedPlsAlphabetException(t)
	return t
end

keys.ServiceFailureException = { ["message"] = true, nil }

function asserts.AssertServiceFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceFailureException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceFailureException[k], "ServiceFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceFailureException
-- <p>An unknown condition has caused a service failure.</p>
-- @param _message [ErrorMessage] 
function M.ServiceFailureException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceFailureException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServiceFailureException(t)
	return t
end

keys.DescribeVoicesInput = { ["LanguageCode"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeVoicesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVoicesInput to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVoicesInput[k], "DescribeVoicesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVoicesInput
--  
-- @param _LanguageCode [LanguageCode] <p> The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned. </p>
-- @param _NextToken [NextToken] <p>An opaque pagination token returned from the previous <code>DescribeVoices</code> operation. If present, this indicates where to continue the listing.</p>
function M.DescribeVoicesInput(_LanguageCode, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVoicesInput")
	local t = { 
		["LanguageCode"] = _LanguageCode,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeVoicesInput(t)
	return t
end

keys.MarksNotSupportedForFormatException = { ["message"] = true, nil }

function asserts.AssertMarksNotSupportedForFormatException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MarksNotSupportedForFormatException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MarksNotSupportedForFormatException[k], "MarksNotSupportedForFormatException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MarksNotSupportedForFormatException
-- <p>Speech marks are not supported for the <code>OutputFormat</code> selected. Speech marks are only available for content in <code>json</code> format.</p>
-- @param _message [ErrorMessage] 
function M.MarksNotSupportedForFormatException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MarksNotSupportedForFormatException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMarksNotSupportedForFormatException(t)
	return t
end

keys.InvalidSsmlException = { ["message"] = true, nil }

function asserts.AssertInvalidSsmlException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSsmlException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSsmlException[k], "InvalidSsmlException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSsmlException
-- <p>The SSML you provided is invalid. Verify the SSML syntax, spelling of tags and values, and then try again.</p>
-- @param _message [ErrorMessage] 
function M.InvalidSsmlException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSsmlException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidSsmlException(t)
	return t
end

keys.DescribeVoicesOutput = { ["NextToken"] = true, ["Voices"] = true, nil }

function asserts.AssertDescribeVoicesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVoicesOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Voices"] then asserts.AssertVoiceList(struct["Voices"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVoicesOutput[k], "DescribeVoicesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVoicesOutput
--  
-- @param _NextToken [NextToken] <p>The pagination token to use in the next request to continue the listing of voices. <code>NextToken</code> is returned only if the response is truncated.</p>
-- @param _Voices [VoiceList] <p>A list of voices with their properties.</p>
function M.DescribeVoicesOutput(_NextToken, _Voices, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeVoicesOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Voices"] = _Voices,
	}
	asserts.AssertDescribeVoicesOutput(t)
	return t
end

keys.LexiconAttributes = { ["LanguageCode"] = true, ["LastModified"] = true, ["Alphabet"] = true, ["LexemesCount"] = true, ["LexiconArn"] = true, ["Size"] = true, nil }

function asserts.AssertLexiconAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LexiconAttributes to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["LastModified"] then asserts.AssertLastModified(struct["LastModified"]) end
	if struct["Alphabet"] then asserts.AssertAlphabet(struct["Alphabet"]) end
	if struct["LexemesCount"] then asserts.AssertLexemesCount(struct["LexemesCount"]) end
	if struct["LexiconArn"] then asserts.AssertLexiconArn(struct["LexiconArn"]) end
	if struct["Size"] then asserts.AssertSize(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.LexiconAttributes[k], "LexiconAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LexiconAttributes
-- <p>Contains metadata describing the lexicon such as the number of lexemes, language code, and so on. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html">Managing Lexicons</a>.</p>
-- @param _LanguageCode [LanguageCode] <p>Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.</p>
-- @param _LastModified [LastModified] <p>Date lexicon was last modified (a timestamp value).</p>
-- @param _Alphabet [Alphabet] <p>Phonetic alphabet used in the lexicon. Valid values are <code>ipa</code> and <code>x-sampa</code>.</p>
-- @param _LexemesCount [LexemesCount] <p>Number of lexemes in the lexicon.</p>
-- @param _LexiconArn [LexiconArn] <p>Amazon Resource Name (ARN) of the lexicon.</p>
-- @param _Size [Size] <p>Total size of the lexicon, in characters.</p>
function M.LexiconAttributes(_LanguageCode, _LastModified, _Alphabet, _LexemesCount, _LexiconArn, _Size, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LexiconAttributes")
	local t = { 
		["LanguageCode"] = _LanguageCode,
		["LastModified"] = _LastModified,
		["Alphabet"] = _Alphabet,
		["LexemesCount"] = _LexemesCount,
		["LexiconArn"] = _LexiconArn,
		["Size"] = _Size,
	}
	asserts.AssertLexiconAttributes(t)
	return t
end

keys.GetLexiconOutput = { ["Lexicon"] = true, ["LexiconAttributes"] = true, nil }

function asserts.AssertGetLexiconOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLexiconOutput to be of type 'table'")
	if struct["Lexicon"] then asserts.AssertLexicon(struct["Lexicon"]) end
	if struct["LexiconAttributes"] then asserts.AssertLexiconAttributes(struct["LexiconAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLexiconOutput[k], "GetLexiconOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLexiconOutput
--  
-- @param _Lexicon [Lexicon] <p>Lexicon object that provides name and the string content of the lexicon. </p>
-- @param _LexiconAttributes [LexiconAttributes] <p>Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.</p>
function M.GetLexiconOutput(_Lexicon, _LexiconAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLexiconOutput")
	local t = { 
		["Lexicon"] = _Lexicon,
		["LexiconAttributes"] = _LexiconAttributes,
	}
	asserts.AssertGetLexiconOutput(t)
	return t
end

keys.MaxLexiconsNumberExceededException = { ["message"] = true, nil }

function asserts.AssertMaxLexiconsNumberExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxLexiconsNumberExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaxLexiconsNumberExceededException[k], "MaxLexiconsNumberExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxLexiconsNumberExceededException
-- <p>The maximum number of lexicons would be exceeded by this operation.</p>
-- @param _message [ErrorMessage] 
function M.MaxLexiconsNumberExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxLexiconsNumberExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMaxLexiconsNumberExceededException(t)
	return t
end

keys.ListLexiconsOutput = { ["NextToken"] = true, ["Lexicons"] = true, nil }

function asserts.AssertListLexiconsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLexiconsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Lexicons"] then asserts.AssertLexiconDescriptionList(struct["Lexicons"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLexiconsOutput[k], "ListLexiconsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLexiconsOutput
--  
-- @param _NextToken [NextToken] <p>The pagination token to use in the next request to continue the listing of lexicons. <code>NextToken</code> is returned only if the response is truncated.</p>
-- @param _Lexicons [LexiconDescriptionList] <p>A list of lexicon names and attributes.</p>
function M.ListLexiconsOutput(_NextToken, _Lexicons, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLexiconsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["Lexicons"] = _Lexicons,
	}
	asserts.AssertListLexiconsOutput(t)
	return t
end

keys.ListLexiconsInput = { ["NextToken"] = true, nil }

function asserts.AssertListLexiconsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListLexiconsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListLexiconsInput[k], "ListLexiconsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListLexiconsInput
--  
-- @param _NextToken [NextToken] <p>An opaque pagination token returned from previous <code>ListLexicons</code> operation. If present, indicates where to continue the list of lexicons.</p>
function M.ListLexiconsInput(_NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListLexiconsInput")
	local t = { 
		["NextToken"] = _NextToken,
	}
	asserts.AssertListLexiconsInput(t)
	return t
end

keys.TextLengthExceededException = { ["message"] = true, nil }

function asserts.AssertTextLengthExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TextLengthExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TextLengthExceededException[k], "TextLengthExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TextLengthExceededException
-- <p>The value of the "Text" parameter is longer than the accepted limits. The limit for input text is a maximum of 3000 characters total, of which no more than 1500 can be billed characters. SSML tags are not counted as billed characters.</p>
-- @param _message [ErrorMessage] 
function M.TextLengthExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TextLengthExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTextLengthExceededException(t)
	return t
end

keys.Voice = { ["Gender"] = true, ["Name"] = true, ["LanguageName"] = true, ["Id"] = true, ["LanguageCode"] = true, nil }

function asserts.AssertVoice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Voice to be of type 'table'")
	if struct["Gender"] then asserts.AssertGender(struct["Gender"]) end
	if struct["Name"] then asserts.AssertVoiceName(struct["Name"]) end
	if struct["LanguageName"] then asserts.AssertLanguageName(struct["LanguageName"]) end
	if struct["Id"] then asserts.AssertVoiceId(struct["Id"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Voice[k], "Voice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Voice
-- <p>Description of the voice.</p>
-- @param _Gender [Gender] <p>Gender of the voice.</p>
-- @param _Name [VoiceName] <p>Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.</p>
-- @param _LanguageName [LanguageName] <p>Human readable name of the language in English.</p>
-- @param _Id [VoiceId] <p>Amazon Polly assigned voice ID. This is the ID that you specify when calling the <code>SynthesizeSpeech</code> operation.</p>
-- @param _LanguageCode [LanguageCode] <p>Language code of the voice.</p>
function M.Voice(_Gender, _Name, _LanguageName, _Id, _LanguageCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Voice")
	local t = { 
		["Gender"] = _Gender,
		["Name"] = _Name,
		["LanguageName"] = _LanguageName,
		["Id"] = _Id,
		["LanguageCode"] = _LanguageCode,
	}
	asserts.AssertVoice(t)
	return t
end

keys.SsmlMarksNotSupportedForTextTypeException = { ["message"] = true, nil }

function asserts.AssertSsmlMarksNotSupportedForTextTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SsmlMarksNotSupportedForTextTypeException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.SsmlMarksNotSupportedForTextTypeException[k], "SsmlMarksNotSupportedForTextTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SsmlMarksNotSupportedForTextTypeException
-- <p>SSML speech marks are not supported for plain text-type input.</p>
-- @param _message [ErrorMessage] 
function M.SsmlMarksNotSupportedForTextTypeException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SsmlMarksNotSupportedForTextTypeException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertSsmlMarksNotSupportedForTextTypeException(t)
	return t
end

keys.Lexicon = { ["Content"] = true, ["Name"] = true, nil }

function asserts.AssertLexicon(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Lexicon to be of type 'table'")
	if struct["Content"] then asserts.AssertLexiconContent(struct["Content"]) end
	if struct["Name"] then asserts.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Lexicon[k], "Lexicon contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Lexicon
-- <p>Provides lexicon name and lexicon content in string format. For more information, see <a href="https://www.w3.org/TR/pronunciation-lexicon/">Pronunciation Lexicon Specification (PLS) Version 1.0</a>.</p>
-- @param _Content [LexiconContent] <p>Lexicon content in string format. The content of a lexicon must be in PLS format.</p>
-- @param _Name [LexiconName] <p>Name of the lexicon.</p>
function M.Lexicon(_Content, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Lexicon")
	local t = { 
		["Content"] = _Content,
		["Name"] = _Name,
	}
	asserts.AssertLexicon(t)
	return t
end

keys.MaxLexemeLengthExceededException = { ["message"] = true, nil }

function asserts.AssertMaxLexemeLengthExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxLexemeLengthExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaxLexemeLengthExceededException[k], "MaxLexemeLengthExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxLexemeLengthExceededException
-- <p>The maximum size of the lexeme would be exceeded by this operation.</p>
-- @param _message [ErrorMessage] 
function M.MaxLexemeLengthExceededException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxLexemeLengthExceededException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMaxLexemeLengthExceededException(t)
	return t
end

keys.PutLexiconInput = { ["Content"] = true, ["Name"] = true, nil }

function asserts.AssertPutLexiconInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLexiconInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Content"], "Expected key Content to exist in table")
	if struct["Content"] then asserts.AssertLexiconContent(struct["Content"]) end
	if struct["Name"] then asserts.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLexiconInput[k], "PutLexiconInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLexiconInput
--  
-- @param _Content [LexiconContent] <p>Content of the PLS lexicon as string data.</p>
-- @param _Name [LexiconName] <p>Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long. </p>
-- Required parameter: Name
-- Required parameter: Content
function M.PutLexiconInput(_Content, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutLexiconInput")
	local t = { 
		["Content"] = _Content,
		["Name"] = _Name,
	}
	asserts.AssertPutLexiconInput(t)
	return t
end

keys.UnsupportedPlsLanguageException = { ["message"] = true, nil }

function asserts.AssertUnsupportedPlsLanguageException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedPlsLanguageException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedPlsLanguageException[k], "UnsupportedPlsLanguageException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedPlsLanguageException
-- <p>The language specified in the lexicon is unsupported. For a list of supported languages, see <a href="http://docs.aws.amazon.com/polly/latest/dg/API_LexiconAttributes.html">Lexicon Attributes</a>.</p>
-- @param _message [ErrorMessage] 
function M.UnsupportedPlsLanguageException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedPlsLanguageException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnsupportedPlsLanguageException(t)
	return t
end

keys.LexiconDescription = { ["Attributes"] = true, ["Name"] = true, nil }

function asserts.AssertLexiconDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LexiconDescription to be of type 'table'")
	if struct["Attributes"] then asserts.AssertLexiconAttributes(struct["Attributes"]) end
	if struct["Name"] then asserts.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.LexiconDescription[k], "LexiconDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LexiconDescription
-- <p>Describes the content of the lexicon.</p>
-- @param _Attributes [LexiconAttributes] <p>Provides lexicon metadata.</p>
-- @param _Name [LexiconName] <p>Name of the lexicon.</p>
function M.LexiconDescription(_Attributes, _Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LexiconDescription")
	local t = { 
		["Attributes"] = _Attributes,
		["Name"] = _Name,
	}
	asserts.AssertLexiconDescription(t)
	return t
end

keys.GetLexiconInput = { ["Name"] = true, nil }

function asserts.AssertGetLexiconInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLexiconInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertLexiconName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLexiconInput[k], "GetLexiconInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLexiconInput
--  
-- @param _Name [LexiconName] <p>Name of the lexicon.</p>
-- Required parameter: Name
function M.GetLexiconInput(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLexiconInput")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertGetLexiconInput(t)
	return t
end

keys.SynthesizeSpeechInput = { ["OutputFormat"] = true, ["SpeechMarkTypes"] = true, ["VoiceId"] = true, ["Text"] = true, ["LexiconNames"] = true, ["SampleRate"] = true, ["TextType"] = true, nil }

function asserts.AssertSynthesizeSpeechInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SynthesizeSpeechInput to be of type 'table'")
	assert(struct["OutputFormat"], "Expected key OutputFormat to exist in table")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["VoiceId"], "Expected key VoiceId to exist in table")
	if struct["OutputFormat"] then asserts.AssertOutputFormat(struct["OutputFormat"]) end
	if struct["SpeechMarkTypes"] then asserts.AssertSpeechMarkTypeList(struct["SpeechMarkTypes"]) end
	if struct["VoiceId"] then asserts.AssertVoiceId(struct["VoiceId"]) end
	if struct["Text"] then asserts.AssertText(struct["Text"]) end
	if struct["LexiconNames"] then asserts.AssertLexiconNameList(struct["LexiconNames"]) end
	if struct["SampleRate"] then asserts.AssertSampleRate(struct["SampleRate"]) end
	if struct["TextType"] then asserts.AssertTextType(struct["TextType"]) end
	for k,_ in pairs(struct) do
		assert(keys.SynthesizeSpeechInput[k], "SynthesizeSpeechInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SynthesizeSpeechInput
--  
-- @param _OutputFormat [OutputFormat] <p> The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>
-- @param _SpeechMarkTypes [SpeechMarkTypeList] <p>The type of speech marks returned for the input text.</p>
-- @param _VoiceId [VoiceId] <p> Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the <a href="http://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation. </p>
-- @param _Text [Text] <p> Input text to synthesize. If you specify <code>ssml</code> as the <code>TextType</code>, follow the SSML format for the input text. </p>
-- @param _LexiconNames [LexiconNameList] <p>List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see <a href="http://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html">PutLexicon</a>.</p>
-- @param _SampleRate [SampleRate] <p> The audio frequency specified in Hz. </p> <p>The valid values for <code>mp3</code> and <code>ogg_vorbis</code> are "8000", "16000", and "22050". The default value is "22050". </p> <p> Valid values for <code>pcm</code> are "8000" and "16000" The default value is "16000". </p>
-- @param _TextType [TextType] <p> Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/ssml.html">Using SSML</a>.</p>
-- Required parameter: OutputFormat
-- Required parameter: Text
-- Required parameter: VoiceId
function M.SynthesizeSpeechInput(_OutputFormat, _SpeechMarkTypes, _VoiceId, _Text, _LexiconNames, _SampleRate, _TextType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SynthesizeSpeechInput")
	local t = { 
		["OutputFormat"] = _OutputFormat,
		["SpeechMarkTypes"] = _SpeechMarkTypes,
		["VoiceId"] = _VoiceId,
		["Text"] = _Text,
		["LexiconNames"] = _LexiconNames,
		["SampleRate"] = _SampleRate,
		["TextType"] = _TextType,
	}
	asserts.AssertSynthesizeSpeechInput(t)
	return t
end

keys.InvalidLexiconException = { ["message"] = true, nil }

function asserts.AssertInvalidLexiconException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLexiconException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidLexiconException[k], "InvalidLexiconException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLexiconException
-- <p>Amazon Polly can't find the specified lexicon. Verify that the lexicon's name is spelled correctly, and then try again.</p>
-- @param _message [ErrorMessage] 
function M.InvalidLexiconException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLexiconException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidLexiconException(t)
	return t
end

keys.PutLexiconOutput = { nil }

function asserts.AssertPutLexiconOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLexiconOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutLexiconOutput[k], "PutLexiconOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLexiconOutput
--  
function M.PutLexiconOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutLexiconOutput")
	local t = { 
	}
	asserts.AssertPutLexiconOutput(t)
	return t
end

function asserts.AssertOutputFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputFormat to be of type 'string'")
end

--  
function M.OutputFormat(str)
	asserts.AssertOutputFormat(str)
	return str
end

function asserts.AssertLexiconName(str)
	assert(str)
	assert(type(str) == "string", "Expected LexiconName to be of type 'string'")
end

--  
function M.LexiconName(str)
	asserts.AssertLexiconName(str)
	return str
end

function asserts.AssertVoiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected VoiceName to be of type 'string'")
end

--  
function M.VoiceName(str)
	asserts.AssertVoiceName(str)
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

function asserts.AssertLanguageCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageCode to be of type 'string'")
end

--  
function M.LanguageCode(str)
	asserts.AssertLanguageCode(str)
	return str
end

function asserts.AssertLexiconContent(str)
	assert(str)
	assert(type(str) == "string", "Expected LexiconContent to be of type 'string'")
end

--  
function M.LexiconContent(str)
	asserts.AssertLexiconContent(str)
	return str
end

function asserts.AssertSpeechMarkType(str)
	assert(str)
	assert(type(str) == "string", "Expected SpeechMarkType to be of type 'string'")
end

--  
function M.SpeechMarkType(str)
	asserts.AssertSpeechMarkType(str)
	return str
end

function asserts.AssertAlphabet(str)
	assert(str)
	assert(type(str) == "string", "Expected Alphabet to be of type 'string'")
end

--  
function M.Alphabet(str)
	asserts.AssertAlphabet(str)
	return str
end

function asserts.AssertVoiceId(str)
	assert(str)
	assert(type(str) == "string", "Expected VoiceId to be of type 'string'")
end

--  
function M.VoiceId(str)
	asserts.AssertVoiceId(str)
	return str
end

function asserts.AssertGender(str)
	assert(str)
	assert(type(str) == "string", "Expected Gender to be of type 'string'")
end

--  
function M.Gender(str)
	asserts.AssertGender(str)
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

function asserts.AssertText(str)
	assert(str)
	assert(type(str) == "string", "Expected Text to be of type 'string'")
end

--  
function M.Text(str)
	asserts.AssertText(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertLanguageName(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageName to be of type 'string'")
end

--  
function M.LanguageName(str)
	asserts.AssertLanguageName(str)
	return str
end

function asserts.AssertSampleRate(str)
	assert(str)
	assert(type(str) == "string", "Expected SampleRate to be of type 'string'")
end

--  
function M.SampleRate(str)
	asserts.AssertSampleRate(str)
	return str
end

function asserts.AssertLexiconArn(str)
	assert(str)
	assert(type(str) == "string", "Expected LexiconArn to be of type 'string'")
end

--  
function M.LexiconArn(str)
	asserts.AssertLexiconArn(str)
	return str
end

function asserts.AssertTextType(str)
	assert(str)
	assert(type(str) == "string", "Expected TextType to be of type 'string'")
end

--  
function M.TextType(str)
	asserts.AssertTextType(str)
	return str
end

function asserts.AssertRequestCharacters(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RequestCharacters to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.RequestCharacters(integer)
	asserts.AssertRequestCharacters(integer)
	return integer
end

function asserts.AssertLexemesCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LexemesCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.LexemesCount(integer)
	asserts.AssertLexemesCount(integer)
	return integer
end

function asserts.AssertSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Size to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Size(integer)
	asserts.AssertSize(integer)
	return integer
end

function asserts.AssertLastModified(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModified to be of type 'string'")
end

function M.LastModified(timestamp)
	asserts.AssertLastModified(timestamp)
	return timestamp
end

function asserts.AssertAudioStream(blob)
	assert(blob)
	assert(type(string) == "string", "Expected AudioStream to be of type 'string'")
end

function M.AudioStream(blob)
	asserts.AssertAudioStream(blob)
	return blob
end

function asserts.AssertLexiconNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected LexiconNameList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertLexiconName(v)
	end
end

--  
-- List of LexiconName objects
function M.LexiconNameList(list)
	asserts.AssertLexiconNameList(list)
	return list
end

function asserts.AssertLexiconDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected LexiconDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLexiconDescription(v)
	end
end

--  
-- List of LexiconDescription objects
function M.LexiconDescriptionList(list)
	asserts.AssertLexiconDescriptionList(list)
	return list
end

function asserts.AssertSpeechMarkTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected SpeechMarkTypeList to be of type ''table")
	assert(#list <= 4, "Expected list to be contain 4 elements")
	for _,v in ipairs(list) do
		asserts.AssertSpeechMarkType(v)
	end
end

--  
-- List of SpeechMarkType objects
function M.SpeechMarkTypeList(list)
	asserts.AssertSpeechMarkTypeList(list)
	return list
end

function asserts.AssertVoiceList(list)
	assert(list)
	assert(type(list) == "table", "Expected VoiceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVoice(v)
	end
end

--  
-- List of Voice objects
function M.VoiceList(list)
	asserts.AssertVoiceList(list)
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
