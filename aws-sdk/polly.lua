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

keys.ListSpeechSynthesisTasksOutput = { ["SynthesisTasks"] = true, ["NextToken"] = true, nil }

function asserts.AssertListSpeechSynthesisTasksOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSpeechSynthesisTasksOutput to be of type 'table'")
	if struct["SynthesisTasks"] then asserts.AssertSynthesisTasks(struct["SynthesisTasks"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSpeechSynthesisTasksOutput[k], "ListSpeechSynthesisTasksOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSpeechSynthesisTasksOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SynthesisTasks [SynthesisTasks] <p>List of SynthesisTask objects that provides information from the specified task in the list request, including output format, creation time, task status, and so on.</p>
-- * NextToken [NextToken] <p>An opaque pagination token returned from the previous List operation in this request. If present, this indicates where to continue the listing.</p>
-- @return ListSpeechSynthesisTasksOutput structure as a key-value pair table
function M.ListSpeechSynthesisTasksOutput(args)
	assert(args, "You must provide an argument table when creating ListSpeechSynthesisTasksOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SynthesisTasks"] = args["SynthesisTasks"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListSpeechSynthesisTasksOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [LexiconName] <p>The name of the lexicon to delete. Must be an existing lexicon in the region.</p>
-- Required key: Name
-- @return DeleteLexiconInput structure as a key-value pair table
function M.DeleteLexiconInput(args)
	assert(args, "You must provide an argument table when creating DeleteLexiconInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{LexiconName}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteLexiconInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListSpeechSynthesisTasksInput = { ["Status"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListSpeechSynthesisTasksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListSpeechSynthesisTasksInput to be of type 'table'")
	if struct["Status"] then asserts.AssertTaskStatus(struct["Status"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListSpeechSynthesisTasksInput[k], "ListSpeechSynthesisTasksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListSpeechSynthesisTasksInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [TaskStatus] <p>Status of the speech synthesis tasks returned in a List operation</p>
-- * NextToken [NextToken] <p>The pagination token to use in the next request to continue the listing of speech synthesis tasks. </p>
-- * MaxResults [MaxResults] <p>Maximum number of speech synthesis tasks returned in a List operation.</p>
-- @return ListSpeechSynthesisTasksInput structure as a key-value pair table
function M.ListSpeechSynthesisTasksInput(args)
	assert(args, "You must provide an argument table when creating ListSpeechSynthesisTasksInput")
    local query_args = { 
        ["Status"] = args["Status"],
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListSpeechSynthesisTasksInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token to use in the next request to continue the listing of lexicons. <code>NextToken</code> is returned only if the response is truncated.</p>
-- * Lexicons [LexiconDescriptionList] <p>A list of lexicon names and attributes.</p>
-- @return ListLexiconsOutput structure as a key-value pair table
function M.ListLexiconsOutput(args)
	assert(args, "You must provide an argument table when creating ListLexiconsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Lexicons"] = args["Lexicons"],
	}
	asserts.AssertListLexiconsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteLexiconOutput structure as a key-value pair table
function M.DeleteLexiconOutput(args)
	assert(args, "You must provide an argument table when creating DeleteLexiconOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteLexiconOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSpeechSynthesisTaskInput = { ["TaskId"] = true, nil }

function asserts.AssertGetSpeechSynthesisTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSpeechSynthesisTaskInput to be of type 'table'")
	assert(struct["TaskId"], "Expected key TaskId to exist in table")
	if struct["TaskId"] then asserts.AssertTaskId(struct["TaskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSpeechSynthesisTaskInput[k], "GetSpeechSynthesisTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSpeechSynthesisTaskInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TaskId [TaskId] <p>The Amazon Polly generated identifier for a speech synthesis task.</p>
-- Required key: TaskId
-- @return GetSpeechSynthesisTaskInput structure as a key-value pair table
function M.GetSpeechSynthesisTaskInput(args)
	assert(args, "You must provide an argument table when creating GetSpeechSynthesisTaskInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{TaskId}"] = args["TaskId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["TaskId"] = args["TaskId"],
	}
	asserts.AssertGetSpeechSynthesisTaskInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSpeechSynthesisTaskOutput = { ["SynthesisTask"] = true, nil }

function asserts.AssertGetSpeechSynthesisTaskOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSpeechSynthesisTaskOutput to be of type 'table'")
	if struct["SynthesisTask"] then asserts.AssertSynthesisTask(struct["SynthesisTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSpeechSynthesisTaskOutput[k], "GetSpeechSynthesisTaskOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSpeechSynthesisTaskOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SynthesisTask [SynthesisTask] <p>SynthesisTask object that provides information from the requested task, including output format, creation time, task status, and so on.</p>
-- @return GetSpeechSynthesisTaskOutput structure as a key-value pair table
function M.GetSpeechSynthesisTaskOutput(args)
	assert(args, "You must provide an argument table when creating GetSpeechSynthesisTaskOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SynthesisTask"] = args["SynthesisTask"],
	}
	asserts.AssertGetSpeechSynthesisTaskOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SynthesizeSpeechInput = { ["LanguageCode"] = true, ["OutputFormat"] = true, ["SpeechMarkTypes"] = true, ["VoiceId"] = true, ["Text"] = true, ["LexiconNames"] = true, ["SampleRate"] = true, ["TextType"] = true, nil }

function asserts.AssertSynthesizeSpeechInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SynthesizeSpeechInput to be of type 'table'")
	assert(struct["OutputFormat"], "Expected key OutputFormat to exist in table")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["VoiceId"], "Expected key VoiceId to exist in table")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). </p> <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.</p>
-- * OutputFormat [OutputFormat] <p> The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p> <p>When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. </p>
-- * SpeechMarkTypes [SpeechMarkTypeList] <p>The type of speech marks returned for the input text.</p>
-- * VoiceId [VoiceId] <p> Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the <a href="http://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation. </p>
-- * Text [Text] <p> Input text to synthesize. If you specify <code>ssml</code> as the <code>TextType</code>, follow the SSML format for the input text. </p>
-- * LexiconNames [LexiconNameList] <p>List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see <a href="http://docs.aws.amazon.com/polly/latest/dg/API_PutLexicon.html">PutLexicon</a>.</p>
-- * SampleRate [SampleRate] <p> The audio frequency specified in Hz. </p> <p>The valid values for <code>mp3</code> and <code>ogg_vorbis</code> are "8000", "16000", and "22050". The default value is "22050". </p> <p> Valid values for <code>pcm</code> are "8000" and "16000" The default value is "16000". </p>
-- * TextType [TextType] <p> Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see <a href="http://docs.aws.amazon.com/polly/latest/dg/ssml.html">Using SSML</a>.</p>
-- Required key: OutputFormat
-- Required key: Text
-- Required key: VoiceId
-- @return SynthesizeSpeechInput structure as a key-value pair table
function M.SynthesizeSpeechInput(args)
	assert(args, "You must provide an argument table when creating SynthesizeSpeechInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["OutputFormat"] = args["OutputFormat"],
		["SpeechMarkTypes"] = args["SpeechMarkTypes"],
		["VoiceId"] = args["VoiceId"],
		["Text"] = args["Text"],
		["LexiconNames"] = args["LexiconNames"],
		["SampleRate"] = args["SampleRate"],
		["TextType"] = args["TextType"],
	}
	asserts.AssertSynthesizeSpeechInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeVoicesInput = { ["LanguageCode"] = true, ["IncludeAdditionalLanguageCodes"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeVoicesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeVoicesInput to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["IncludeAdditionalLanguageCodes"] then asserts.AssertIncludeAdditionalLanguageCodes(struct["IncludeAdditionalLanguageCodes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeVoicesInput[k], "DescribeVoicesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeVoicesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p> The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned. </p>
-- * IncludeAdditionalLanguageCodes [IncludeAdditionalLanguageCodes] <p>Boolean value indicating whether to return any bilingual voices that use the specified language as an additional language. For instance, if you request all languages that use US English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US English, that voice will be included if you specify <code>yes</code> but not if you specify <code>no</code>.</p>
-- * NextToken [NextToken] <p>An opaque pagination token returned from the previous <code>DescribeVoices</code> operation. If present, this indicates where to continue the listing.</p>
-- @return DescribeVoicesInput structure as a key-value pair table
function M.DescribeVoicesInput(args)
	assert(args, "You must provide an argument table when creating DescribeVoicesInput")
    local query_args = { 
        ["LanguageCode"] = args["LanguageCode"],
        ["IncludeAdditionalLanguageCodes"] = args["IncludeAdditionalLanguageCodes"],
        ["NextToken"] = args["NextToken"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["IncludeAdditionalLanguageCodes"] = args["IncludeAdditionalLanguageCodes"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeVoicesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentType [ContentType] <p> Specifies the type audio stream. This should reflect the <code>OutputFormat</code> parameter in your request. </p> <ul> <li> <p> If you request <code>mp3</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/mpeg. </p> </li> <li> <p> If you request <code>ogg_vorbis</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/ogg. </p> </li> <li> <p> If you request <code>pcm</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. </p> </li> <li> <p>If you request <code>json</code> as the <code>OutputFormat</code>, the <code>ContentType</code> returned is audio/json.</p> </li> </ul> <p> </p>
-- * AudioStream [AudioStream] <p> Stream containing the synthesized speech. </p>
-- * RequestCharacters [RequestCharacters] <p>Number of characters synthesized.</p>
-- @return SynthesizeSpeechOutput structure as a key-value pair table
function M.SynthesizeSpeechOutput(args)
	assert(args, "You must provide an argument table when creating SynthesizeSpeechOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Content-Type"] = args["ContentType"],
        ["x-amzn-RequestCharacters"] = args["RequestCharacters"],
    }
	local all_args = { 
		["ContentType"] = args["ContentType"],
		["AudioStream"] = args["AudioStream"],
		["RequestCharacters"] = args["RequestCharacters"],
	}
	asserts.AssertSynthesizeSpeechOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSpeechSynthesisTaskOutput = { ["SynthesisTask"] = true, nil }

function asserts.AssertStartSpeechSynthesisTaskOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSpeechSynthesisTaskOutput to be of type 'table'")
	if struct["SynthesisTask"] then asserts.AssertSynthesisTask(struct["SynthesisTask"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSpeechSynthesisTaskOutput[k], "StartSpeechSynthesisTaskOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSpeechSynthesisTaskOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SynthesisTask [SynthesisTask] <p>SynthesisTask object that provides information and attributes about a newly submitted speech synthesis task.</p>
-- @return StartSpeechSynthesisTaskOutput structure as a key-value pair table
function M.StartSpeechSynthesisTaskOutput(args)
	assert(args, "You must provide an argument table when creating StartSpeechSynthesisTaskOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SynthesisTask"] = args["SynthesisTask"],
	}
	asserts.AssertStartSpeechSynthesisTaskOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The pagination token to use in the next request to continue the listing of voices. <code>NextToken</code> is returned only if the response is truncated.</p>
-- * Voices [VoiceList] <p>A list of voices with their properties.</p>
-- @return DescribeVoicesOutput structure as a key-value pair table
function M.DescribeVoicesOutput(args)
	assert(args, "You must provide an argument table when creating DescribeVoicesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Voices"] = args["Voices"],
	}
	asserts.AssertDescribeVoicesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.</p>
-- * LastModified [LastModified] <p>Date lexicon was last modified (a timestamp value).</p>
-- * Alphabet [Alphabet] <p>Phonetic alphabet used in the lexicon. Valid values are <code>ipa</code> and <code>x-sampa</code>.</p>
-- * LexemesCount [LexemesCount] <p>Number of lexemes in the lexicon.</p>
-- * LexiconArn [LexiconArn] <p>Amazon Resource Name (ARN) of the lexicon.</p>
-- * Size [Size] <p>Total size of the lexicon, in characters.</p>
-- @return LexiconAttributes structure as a key-value pair table
function M.LexiconAttributes(args)
	assert(args, "You must provide an argument table when creating LexiconAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["LastModified"] = args["LastModified"],
		["Alphabet"] = args["Alphabet"],
		["LexemesCount"] = args["LexemesCount"],
		["LexiconArn"] = args["LexiconArn"],
		["Size"] = args["Size"],
	}
	asserts.AssertLexiconAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Lexicon [Lexicon] <p>Lexicon object that provides name and the string content of the lexicon. </p>
-- * LexiconAttributes [LexiconAttributes] <p>Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.</p>
-- @return GetLexiconOutput structure as a key-value pair table
function M.GetLexiconOutput(args)
	assert(args, "You must provide an argument table when creating GetLexiconOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Lexicon"] = args["Lexicon"],
		["LexiconAttributes"] = args["LexiconAttributes"],
	}
	asserts.AssertGetLexiconOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>An opaque pagination token returned from previous <code>ListLexicons</code> operation. If present, indicates where to continue the list of lexicons.</p>
-- @return ListLexiconsInput structure as a key-value pair table
function M.ListLexiconsInput(args)
	assert(args, "You must provide an argument table when creating ListLexiconsInput")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListLexiconsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Voice = { ["LanguageCode"] = true, ["Name"] = true, ["Gender"] = true, ["LanguageName"] = true, ["Id"] = true, ["AdditionalLanguageCodes"] = true, nil }

function asserts.AssertVoice(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Voice to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["Name"] then asserts.AssertVoiceName(struct["Name"]) end
	if struct["Gender"] then asserts.AssertGender(struct["Gender"]) end
	if struct["LanguageName"] then asserts.AssertLanguageName(struct["LanguageName"]) end
	if struct["Id"] then asserts.AssertVoiceId(struct["Id"]) end
	if struct["AdditionalLanguageCodes"] then asserts.AssertLanguageCodeList(struct["AdditionalLanguageCodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.Voice[k], "Voice contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Voice
-- <p>Description of the voice.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>Language code of the voice.</p>
-- * Name [VoiceName] <p>Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.</p>
-- * Gender [Gender] <p>Gender of the voice.</p>
-- * LanguageName [LanguageName] <p>Human readable name of the language in English.</p>
-- * Id [VoiceId] <p>Amazon Polly assigned voice ID. This is the ID that you specify when calling the <code>SynthesizeSpeech</code> operation.</p>
-- * AdditionalLanguageCodes [LanguageCodeList] <p>Additional codes for languages available for the specified voice in addition to its default language. </p> <p>For example, the default language for Aditi is Indian English (en-IN) because it was first used for that language. Since Aditi is bilingual and fluent in both Indian English and Hindi, this parameter would show the code <code>hi-IN</code>.</p>
-- @return Voice structure as a key-value pair table
function M.Voice(args)
	assert(args, "You must provide an argument table when creating Voice")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["Name"] = args["Name"],
		["Gender"] = args["Gender"],
		["LanguageName"] = args["LanguageName"],
		["Id"] = args["Id"],
		["AdditionalLanguageCodes"] = args["AdditionalLanguageCodes"],
	}
	asserts.AssertVoice(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [LexiconContent] <p>Lexicon content in string format. The content of a lexicon must be in PLS format.</p>
-- * Name [LexiconName] <p>Name of the lexicon.</p>
-- @return Lexicon structure as a key-value pair table
function M.Lexicon(args)
	assert(args, "You must provide an argument table when creating Lexicon")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Content"] = args["Content"],
		["Name"] = args["Name"],
	}
	asserts.AssertLexicon(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [LexiconContent] <p>Content of the PLS lexicon as string data.</p>
-- * Name [LexiconName] <p>Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long. </p>
-- Required key: Name
-- Required key: Content
-- @return PutLexiconInput structure as a key-value pair table
function M.PutLexiconInput(args)
	assert(args, "You must provide an argument table when creating PutLexiconInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{LexiconName}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Content"] = args["Content"],
		["Name"] = args["Name"],
	}
	asserts.AssertPutLexiconInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attributes [LexiconAttributes] <p>Provides lexicon metadata.</p>
-- * Name [LexiconName] <p>Name of the lexicon.</p>
-- @return LexiconDescription structure as a key-value pair table
function M.LexiconDescription(args)
	assert(args, "You must provide an argument table when creating LexiconDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attributes"] = args["Attributes"],
		["Name"] = args["Name"],
	}
	asserts.AssertLexiconDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SynthesisTask = { ["LanguageCode"] = true, ["OutputFormat"] = true, ["SpeechMarkTypes"] = true, ["VoiceId"] = true, ["TaskId"] = true, ["CreationTime"] = true, ["TaskStatus"] = true, ["RequestCharacters"] = true, ["LexiconNames"] = true, ["TaskStatusReason"] = true, ["SampleRate"] = true, ["SnsTopicArn"] = true, ["TextType"] = true, ["OutputUri"] = true, nil }

function asserts.AssertSynthesisTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SynthesisTask to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["OutputFormat"] then asserts.AssertOutputFormat(struct["OutputFormat"]) end
	if struct["SpeechMarkTypes"] then asserts.AssertSpeechMarkTypeList(struct["SpeechMarkTypes"]) end
	if struct["VoiceId"] then asserts.AssertVoiceId(struct["VoiceId"]) end
	if struct["TaskId"] then asserts.AssertTaskId(struct["TaskId"]) end
	if struct["CreationTime"] then asserts.AssertDateTime(struct["CreationTime"]) end
	if struct["TaskStatus"] then asserts.AssertTaskStatus(struct["TaskStatus"]) end
	if struct["RequestCharacters"] then asserts.AssertRequestCharacters(struct["RequestCharacters"]) end
	if struct["LexiconNames"] then asserts.AssertLexiconNameList(struct["LexiconNames"]) end
	if struct["TaskStatusReason"] then asserts.AssertTaskStatusReason(struct["TaskStatusReason"]) end
	if struct["SampleRate"] then asserts.AssertSampleRate(struct["SampleRate"]) end
	if struct["SnsTopicArn"] then asserts.AssertSnsTopicArn(struct["SnsTopicArn"]) end
	if struct["TextType"] then asserts.AssertTextType(struct["TextType"]) end
	if struct["OutputUri"] then asserts.AssertOutputUri(struct["OutputUri"]) end
	for k,_ in pairs(struct) do
		assert(keys.SynthesisTask[k], "SynthesisTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SynthesisTask
-- <p>SynthesisTask object that provides information about a speech synthesis task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>Optional language code for a synthesis task. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). </p> <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.</p>
-- * OutputFormat [OutputFormat] <p>The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>
-- * SpeechMarkTypes [SpeechMarkTypeList] <p>The type of speech marks returned for the input text.</p>
-- * VoiceId [VoiceId] <p>Voice ID to use for the synthesis. </p>
-- * TaskId [TaskId] <p>The Amazon Polly generated identifier for a speech synthesis task.</p>
-- * CreationTime [DateTime] <p>Timestamp for the time the synthesis task was started.</p>
-- * TaskStatus [TaskStatus] <p>Current status of the individual speech synthesis task.</p>
-- * RequestCharacters [RequestCharacters] <p>Number of billable characters synthesized.</p>
-- * LexiconNames [LexiconNameList] <p>List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. </p>
-- * TaskStatusReason [TaskStatusReason] <p>Reason for the current status of a specific speech synthesis task, including errors if the task has failed.</p>
-- * SampleRate [SampleRate] <p>The audio frequency specified in Hz.</p> <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050".</p> <p>Valid values for pcm are "8000" and "16000" The default value is "16000". </p>
-- * SnsTopicArn [SnsTopicArn] <p>ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.</p>
-- * TextType [TextType] <p>Specifies whether the input text is plain text or SSML. The default value is plain text. </p>
-- * OutputUri [OutputUri] <p>Pathway for the output speech file.</p>
-- @return SynthesisTask structure as a key-value pair table
function M.SynthesisTask(args)
	assert(args, "You must provide an argument table when creating SynthesisTask")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["OutputFormat"] = args["OutputFormat"],
		["SpeechMarkTypes"] = args["SpeechMarkTypes"],
		["VoiceId"] = args["VoiceId"],
		["TaskId"] = args["TaskId"],
		["CreationTime"] = args["CreationTime"],
		["TaskStatus"] = args["TaskStatus"],
		["RequestCharacters"] = args["RequestCharacters"],
		["LexiconNames"] = args["LexiconNames"],
		["TaskStatusReason"] = args["TaskStatusReason"],
		["SampleRate"] = args["SampleRate"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["TextType"] = args["TextType"],
		["OutputUri"] = args["OutputUri"],
	}
	asserts.AssertSynthesisTask(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [LexiconName] <p>Name of the lexicon.</p>
-- Required key: Name
-- @return GetLexiconInput structure as a key-value pair table
function M.GetLexiconInput(args)
	assert(args, "You must provide an argument table when creating GetLexiconInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{LexiconName}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetLexiconInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSpeechSynthesisTaskInput = { ["LanguageCode"] = true, ["OutputFormat"] = true, ["SpeechMarkTypes"] = true, ["VoiceId"] = true, ["Text"] = true, ["OutputS3BucketName"] = true, ["SnsTopicArn"] = true, ["OutputS3KeyPrefix"] = true, ["LexiconNames"] = true, ["SampleRate"] = true, ["TextType"] = true, nil }

function asserts.AssertStartSpeechSynthesisTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSpeechSynthesisTaskInput to be of type 'table'")
	assert(struct["OutputFormat"], "Expected key OutputFormat to exist in table")
	assert(struct["OutputS3BucketName"], "Expected key OutputS3BucketName to exist in table")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["VoiceId"], "Expected key VoiceId to exist in table")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["OutputFormat"] then asserts.AssertOutputFormat(struct["OutputFormat"]) end
	if struct["SpeechMarkTypes"] then asserts.AssertSpeechMarkTypeList(struct["SpeechMarkTypes"]) end
	if struct["VoiceId"] then asserts.AssertVoiceId(struct["VoiceId"]) end
	if struct["Text"] then asserts.AssertText(struct["Text"]) end
	if struct["OutputS3BucketName"] then asserts.AssertOutputS3BucketName(struct["OutputS3BucketName"]) end
	if struct["SnsTopicArn"] then asserts.AssertSnsTopicArn(struct["SnsTopicArn"]) end
	if struct["OutputS3KeyPrefix"] then asserts.AssertOutputS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["LexiconNames"] then asserts.AssertLexiconNameList(struct["LexiconNames"]) end
	if struct["SampleRate"] then asserts.AssertSampleRate(struct["SampleRate"]) end
	if struct["TextType"] then asserts.AssertTextType(struct["TextType"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSpeechSynthesisTaskInput[k], "StartSpeechSynthesisTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSpeechSynthesisTaskInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>Optional language code for the Speech Synthesis request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN). </p> <p>If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the <a href="https://docs.aws.amazon.com/polly/latest/dg/API_DescribeVoices.html">DescribeVoices</a> operation for the <code>LanguageCode</code> parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.</p>
-- * OutputFormat [OutputFormat] <p>The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. </p>
-- * SpeechMarkTypes [SpeechMarkTypeList] <p>The type of speech marks returned for the input text.</p>
-- * VoiceId [VoiceId] <p>Voice ID to use for the synthesis. </p>
-- * Text [Text] <p>The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. </p>
-- * OutputS3BucketName [OutputS3BucketName] <p>Amazon S3 bucket name to which the output file will be saved.</p>
-- * SnsTopicArn [SnsTopicArn] <p>ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.</p>
-- * OutputS3KeyPrefix [OutputS3KeyPrefix] <p>The Amazon S3 key prefix for the output speech file.</p>
-- * LexiconNames [LexiconNameList] <p>List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. </p>
-- * SampleRate [SampleRate] <p>The audio frequency specified in Hz.</p> <p>The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050".</p> <p>Valid values for pcm are "8000" and "16000" The default value is "16000". </p>
-- * TextType [TextType] <p>Specifies whether the input text is plain text or SSML. The default value is plain text. </p>
-- Required key: OutputFormat
-- Required key: OutputS3BucketName
-- Required key: Text
-- Required key: VoiceId
-- @return StartSpeechSynthesisTaskInput structure as a key-value pair table
function M.StartSpeechSynthesisTaskInput(args)
	assert(args, "You must provide an argument table when creating StartSpeechSynthesisTaskInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["OutputFormat"] = args["OutputFormat"],
		["SpeechMarkTypes"] = args["SpeechMarkTypes"],
		["VoiceId"] = args["VoiceId"],
		["Text"] = args["Text"],
		["OutputS3BucketName"] = args["OutputS3BucketName"],
		["SnsTopicArn"] = args["SnsTopicArn"],
		["OutputS3KeyPrefix"] = args["OutputS3KeyPrefix"],
		["LexiconNames"] = args["LexiconNames"],
		["SampleRate"] = args["SampleRate"],
		["TextType"] = args["TextType"],
	}
	asserts.AssertStartSpeechSynthesisTaskInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutLexiconOutput structure as a key-value pair table
function M.PutLexiconOutput(args)
	assert(args, "You must provide an argument table when creating PutLexiconOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutLexiconOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertOutputS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputS3BucketName to be of type 'string'")
end

--  
function M.OutputS3BucketName(str)
	asserts.AssertOutputS3BucketName(str)
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

function asserts.AssertOutputS3KeyPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputS3KeyPrefix to be of type 'string'")
end

--  
function M.OutputS3KeyPrefix(str)
	asserts.AssertOutputS3KeyPrefix(str)
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

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
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

function asserts.AssertAlphabet(str)
	assert(str)
	assert(type(str) == "string", "Expected Alphabet to be of type 'string'")
end

--  
function M.Alphabet(str)
	asserts.AssertAlphabet(str)
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

function asserts.AssertVoiceId(str)
	assert(str)
	assert(type(str) == "string", "Expected VoiceId to be of type 'string'")
end

--  
function M.VoiceId(str)
	asserts.AssertVoiceId(str)
	return str
end

function asserts.AssertTaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TaskId(str)
	asserts.AssertTaskId(str)
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

function asserts.AssertTaskStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskStatus to be of type 'string'")
end

--  
function M.TaskStatus(str)
	asserts.AssertTaskStatus(str)
	return str
end

function asserts.AssertOutputUri(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputUri to be of type 'string'")
end

--  
function M.OutputUri(str)
	asserts.AssertOutputUri(str)
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

function asserts.AssertSnsTopicArn(str)
	assert(str)
	assert(type(str) == "string", "Expected SnsTopicArn to be of type 'string'")
end

--  
function M.SnsTopicArn(str)
	asserts.AssertSnsTopicArn(str)
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

function asserts.AssertTaskStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskStatusReason to be of type 'string'")
end

--  
function M.TaskStatusReason(str)
	asserts.AssertTaskStatusReason(str)
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

function asserts.AssertIncludeAdditionalLanguageCodes(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected IncludeAdditionalLanguageCodes to be of type 'boolean'")
end

function M.IncludeAdditionalLanguageCodes(boolean)
	asserts.AssertIncludeAdditionalLanguageCodes(boolean)
	return boolean
end

function asserts.AssertLastModified(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastModified to be of type 'string'")
end

function M.LastModified(timestamp)
	asserts.AssertLastModified(timestamp)
	return timestamp
end

function asserts.AssertDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateTime to be of type 'string'")
end

function M.DateTime(timestamp)
	asserts.AssertDateTime(timestamp)
	return timestamp
end

function asserts.AssertAudioStream(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected AudioStream to be of type 'string'")
end

function M.AudioStream(blob)
	asserts.AssertAudioStream(blob)
	return blob
end

function asserts.AssertSynthesisTasks(list)
	assert(list)
	assert(type(list) == "table", "Expected SynthesisTasks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSynthesisTask(v)
	end
end

--  
-- List of SynthesisTask objects
function M.SynthesisTasks(list)
	asserts.AssertSynthesisTasks(list)
	return list
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

function asserts.AssertLanguageCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected LanguageCodeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLanguageCode(v)
	end
end

--  
-- List of LanguageCode objects
function M.LanguageCodeList(list)
	asserts.AssertLanguageCodeList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call DescribeVoices asynchronously, invoking a callback when done
-- @param DescribeVoicesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeVoicesAsync(DescribeVoicesInput, cb)
	assert(DescribeVoicesInput, "You must provide a DescribeVoicesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeVoices",
	}
	for header,value in pairs(DescribeVoicesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/voices", DescribeVoicesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeVoices synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeVoicesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeVoicesSync(DescribeVoicesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeVoicesAsync(DescribeVoicesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListSpeechSynthesisTasks asynchronously, invoking a callback when done
-- @param ListSpeechSynthesisTasksInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListSpeechSynthesisTasksAsync(ListSpeechSynthesisTasksInput, cb)
	assert(ListSpeechSynthesisTasksInput, "You must provide a ListSpeechSynthesisTasksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListSpeechSynthesisTasks",
	}
	for header,value in pairs(ListSpeechSynthesisTasksInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/synthesisTasks", ListSpeechSynthesisTasksInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListSpeechSynthesisTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListSpeechSynthesisTasksInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListSpeechSynthesisTasksSync(ListSpeechSynthesisTasksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListSpeechSynthesisTasksAsync(ListSpeechSynthesisTasksInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLexicon asynchronously, invoking a callback when done
-- @param GetLexiconInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLexiconAsync(GetLexiconInput, cb)
	assert(GetLexiconInput, "You must provide a GetLexiconInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetLexicon",
	}
	for header,value in pairs(GetLexiconInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/lexicons/{LexiconName}", GetLexiconInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLexicon synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLexiconInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetLexiconSync(GetLexiconInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLexiconAsync(GetLexiconInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartSpeechSynthesisTask asynchronously, invoking a callback when done
-- @param StartSpeechSynthesisTaskInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartSpeechSynthesisTaskAsync(StartSpeechSynthesisTaskInput, cb)
	assert(StartSpeechSynthesisTaskInput, "You must provide a StartSpeechSynthesisTaskInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartSpeechSynthesisTask",
	}
	for header,value in pairs(StartSpeechSynthesisTaskInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/synthesisTasks", StartSpeechSynthesisTaskInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartSpeechSynthesisTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartSpeechSynthesisTaskInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartSpeechSynthesisTaskSync(StartSpeechSynthesisTaskInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartSpeechSynthesisTaskAsync(StartSpeechSynthesisTaskInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSpeechSynthesisTask asynchronously, invoking a callback when done
-- @param GetSpeechSynthesisTaskInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSpeechSynthesisTaskAsync(GetSpeechSynthesisTaskInput, cb)
	assert(GetSpeechSynthesisTaskInput, "You must provide a GetSpeechSynthesisTaskInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSpeechSynthesisTask",
	}
	for header,value in pairs(GetSpeechSynthesisTaskInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/synthesisTasks/{TaskId}", GetSpeechSynthesisTaskInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSpeechSynthesisTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSpeechSynthesisTaskInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetSpeechSynthesisTaskSync(GetSpeechSynthesisTaskInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSpeechSynthesisTaskAsync(GetSpeechSynthesisTaskInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutLexicon asynchronously, invoking a callback when done
-- @param PutLexiconInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutLexiconAsync(PutLexiconInput, cb)
	assert(PutLexiconInput, "You must provide a PutLexiconInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutLexicon",
	}
	for header,value in pairs(PutLexiconInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/v1/lexicons/{LexiconName}", PutLexiconInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutLexicon synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutLexiconInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutLexiconSync(PutLexiconInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutLexiconAsync(PutLexiconInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListLexicons asynchronously, invoking a callback when done
-- @param ListLexiconsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListLexiconsAsync(ListLexiconsInput, cb)
	assert(ListLexiconsInput, "You must provide a ListLexiconsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListLexicons",
	}
	for header,value in pairs(ListLexiconsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/lexicons", ListLexiconsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListLexicons synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListLexiconsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListLexiconsSync(ListLexiconsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListLexiconsAsync(ListLexiconsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SynthesizeSpeech asynchronously, invoking a callback when done
-- @param SynthesizeSpeechInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SynthesizeSpeechAsync(SynthesizeSpeechInput, cb)
	assert(SynthesizeSpeechInput, "You must provide a SynthesizeSpeechInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SynthesizeSpeech",
	}
	for header,value in pairs(SynthesizeSpeechInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/speech", SynthesizeSpeechInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SynthesizeSpeech synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SynthesizeSpeechInput
-- @return response
-- @return error_type
-- @return error_message
function M.SynthesizeSpeechSync(SynthesizeSpeechInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SynthesizeSpeechAsync(SynthesizeSpeechInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLexicon asynchronously, invoking a callback when done
-- @param DeleteLexiconInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLexiconAsync(DeleteLexiconInput, cb)
	assert(DeleteLexiconInput, "You must provide a DeleteLexiconInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteLexicon",
	}
	for header,value in pairs(DeleteLexiconInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/lexicons/{LexiconName}", DeleteLexiconInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLexicon synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLexiconInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLexiconSync(DeleteLexiconInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLexiconAsync(DeleteLexiconInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
