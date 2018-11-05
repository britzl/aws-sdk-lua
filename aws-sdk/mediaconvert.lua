--- GENERATED CODE - DO NOT MODIFY
-- AWS Elemental MediaConvert (mediaconvert-2017-08-29)

local M = {}

M.metadata = {
	api_version = "2017-08-29",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "mediaconvert",
	service_abbreviation = "MediaConvert",
	service_full_name = "AWS Elemental MediaConvert",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "mediaconvert-2017-08-29",
}

local keys = {}
local asserts = {}

keys.Id3Insertion = { ["Timecode"] = true, ["Id3"] = true, nil }

function asserts.AssertId3Insertion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Id3Insertion to be of type 'table'")
	if struct["Timecode"] then asserts.Assert__stringPattern010920405090509092(struct["Timecode"]) end
	if struct["Id3"] then asserts.Assert__stringPatternAZaZ0902(struct["Id3"]) end
	for k,_ in pairs(struct) do
		assert(keys.Id3Insertion[k], "Id3Insertion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Id3Insertion
-- To insert ID3 tags in your output, specify two values. Use ID3 tag (Id3) to specify the base 64 encoded string and use Timecode (TimeCode) to specify the time when the tag should be inserted. To insert multiple ID3 tags in your output, create multiple instances of ID3 insertion (Id3Insertion).
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timecode [__stringPattern010920405090509092] Provide a Timecode (TimeCode) in HH:MM:SS:FF or HH:MM:SS;FF format.
-- * Id3 [__stringPatternAZaZ0902] Use ID3 tag (Id3) to provide a tag value in base64-encode format.
-- @return Id3Insertion structure as a key-value pair table
function M.Id3Insertion(args)
	assert(args, "You must provide an argument table when creating Id3Insertion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timecode"] = args["Timecode"],
		["Id3"] = args["Id3"],
	}
	asserts.AssertId3Insertion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioSelector = { ["LanguageCode"] = true, ["RemixSettings"] = true, ["ProgramSelection"] = true, ["ExternalAudioFileInput"] = true, ["Tracks"] = true, ["SelectorType"] = true, ["CustomLanguageCode"] = true, ["Offset"] = true, ["Pids"] = true, ["DefaultSelection"] = true, nil }

function asserts.AssertAudioSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioSelector to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["RemixSettings"] then asserts.AssertRemixSettings(struct["RemixSettings"]) end
	if struct["ProgramSelection"] then asserts.Assert__integerMin0Max8(struct["ProgramSelection"]) end
	if struct["ExternalAudioFileInput"] then asserts.Assert__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE(struct["ExternalAudioFileInput"]) end
	if struct["Tracks"] then asserts.Assert__listOf__integerMin1Max2147483647(struct["Tracks"]) end
	if struct["SelectorType"] then asserts.AssertAudioSelectorType(struct["SelectorType"]) end
	if struct["CustomLanguageCode"] then asserts.Assert__stringMin3Max3PatternAZaZ3(struct["CustomLanguageCode"]) end
	if struct["Offset"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["Offset"]) end
	if struct["Pids"] then asserts.Assert__listOf__integerMin1Max2147483647(struct["Pids"]) end
	if struct["DefaultSelection"] then asserts.AssertAudioDefaultSelection(struct["DefaultSelection"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioSelector[k], "AudioSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioSelector
-- Selector for Audio
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] Selects a specific language code from within an audio source.
-- * RemixSettings [RemixSettings] Use these settings to reorder the audio channels of one input to match those of another input. This allows you to combine the two files into a single output, one after the other.
-- * ProgramSelection [__integerMin0Max8] Use this setting for input streams that contain Dolby E, to have the service extract specific program data from the track. To select multiple programs, create multiple selectors with the same Track and different Program numbers. In the console, this setting is visible when you set Selector type to Track. Choose the program number from the dropdown list. If you are sending a JSON file, provide the program ID, which is part of the audio metadata. If your input file has incorrect metadata, you can choose All channels instead of a program number to have the service ignore the program IDs and include all the programs in the track.
-- * ExternalAudioFileInput [__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE] Specifies audio data from an external file source.
-- * Tracks [__listOf__integerMin1Max2147483647] Identify a track from the input audio to include in this selector by entering the track index number. To include several tracks in a single audio selector, specify multiple tracks as follows. Using the console, enter a comma-separated list. For examle, type "1,2,3" to include tracks 1 through 3. Specifying directly in your JSON job file, provide the track numbers in an array. For example, "tracks": [1,2,3].
-- * SelectorType [AudioSelectorType] 
-- * CustomLanguageCode [__stringMin3Max3PatternAZaZ3] Selects a specific language code from within an audio source, using the ISO 639-2 or ISO 639-3 three-letter language code
-- * Offset [__integerMinNegative2147483648Max2147483647] Specifies a time delta in milliseconds to offset the audio from the input video.
-- * Pids [__listOf__integerMin1Max2147483647] Selects a specific PID from within an audio source (e.g. 257 selects PID 0x101).
-- * DefaultSelection [AudioDefaultSelection] 
-- @return AudioSelector structure as a key-value pair table
function M.AudioSelector(args)
	assert(args, "You must provide an argument table when creating AudioSelector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["RemixSettings"] = args["RemixSettings"],
		["ProgramSelection"] = args["ProgramSelection"],
		["ExternalAudioFileInput"] = args["ExternalAudioFileInput"],
		["Tracks"] = args["Tracks"],
		["SelectorType"] = args["SelectorType"],
		["CustomLanguageCode"] = args["CustomLanguageCode"],
		["Offset"] = args["Offset"],
		["Pids"] = args["Pids"],
		["DefaultSelection"] = args["DefaultSelection"],
	}
	asserts.AssertAudioSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AacSettings = { ["CodecProfile"] = true, ["Specification"] = true, ["RateControlMode"] = true, ["AudioDescriptionBroadcasterMix"] = true, ["SampleRate"] = true, ["VbrQuality"] = true, ["Bitrate"] = true, ["CodingMode"] = true, ["RawFormat"] = true, nil }

function asserts.AssertAacSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AacSettings to be of type 'table'")
	if struct["CodecProfile"] then asserts.AssertAacCodecProfile(struct["CodecProfile"]) end
	if struct["Specification"] then asserts.AssertAacSpecification(struct["Specification"]) end
	if struct["RateControlMode"] then asserts.AssertAacRateControlMode(struct["RateControlMode"]) end
	if struct["AudioDescriptionBroadcasterMix"] then asserts.AssertAacAudioDescriptionBroadcasterMix(struct["AudioDescriptionBroadcasterMix"]) end
	if struct["SampleRate"] then asserts.Assert__integerMin8000Max96000(struct["SampleRate"]) end
	if struct["VbrQuality"] then asserts.AssertAacVbrQuality(struct["VbrQuality"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin6000Max1024000(struct["Bitrate"]) end
	if struct["CodingMode"] then asserts.AssertAacCodingMode(struct["CodingMode"]) end
	if struct["RawFormat"] then asserts.AssertAacRawFormat(struct["RawFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.AacSettings[k], "AacSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AacSettings
-- Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AAC. The service accepts one of two mutually exclusive groups of AAC settings--VBR and CBR. To select one of these modes, set the value of Bitrate control mode (rateControlMode) to "VBR" or "CBR".  In VBR mode, you control the audio quality with the setting VBR quality (vbrQuality). In CBR mode, you use the setting Bitrate (bitrate). Defaults and valid values depend on the rate control mode.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodecProfile [AacCodecProfile] 
-- * Specification [AacSpecification] 
-- * RateControlMode [AacRateControlMode] 
-- * AudioDescriptionBroadcasterMix [AacAudioDescriptionBroadcasterMix] 
-- * SampleRate [__integerMin8000Max96000] Sample rate in Hz. Valid values depend on rate control mode and profile.
-- * VbrQuality [AacVbrQuality] 
-- * Bitrate [__integerMin6000Max1024000] Average bitrate in bits/second. Defaults and valid values depend on rate control mode and profile.
-- * CodingMode [AacCodingMode] 
-- * RawFormat [AacRawFormat] 
-- @return AacSettings structure as a key-value pair table
function M.AacSettings(args)
	assert(args, "You must provide an argument table when creating AacSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodecProfile"] = args["CodecProfile"],
		["Specification"] = args["Specification"],
		["RateControlMode"] = args["RateControlMode"],
		["AudioDescriptionBroadcasterMix"] = args["AudioDescriptionBroadcasterMix"],
		["SampleRate"] = args["SampleRate"],
		["VbrQuality"] = args["VbrQuality"],
		["Bitrate"] = args["Bitrate"],
		["CodingMode"] = args["CodingMode"],
		["RawFormat"] = args["RawFormat"],
	}
	asserts.AssertAacSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputDetail = { ["DurationInMs"] = true, ["VideoDetails"] = true, nil }

function asserts.AssertOutputDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputDetail to be of type 'table'")
	if struct["DurationInMs"] then asserts.Assert__integer(struct["DurationInMs"]) end
	if struct["VideoDetails"] then asserts.AssertVideoDetail(struct["VideoDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputDetail[k], "OutputDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputDetail
-- Details regarding output
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DurationInMs [__integer] Duration in milliseconds
-- * VideoDetails [VideoDetail] 
-- @return OutputDetail structure as a key-value pair table
function M.OutputDetail(args)
	assert(args, "You must provide an argument table when creating OutputDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DurationInMs"] = args["DurationInMs"],
		["VideoDetails"] = args["VideoDetails"],
	}
	asserts.AssertOutputDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TeletextDestinationSettings = { ["PageNumber"] = true, nil }

function asserts.AssertTeletextDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeletextDestinationSettings to be of type 'table'")
	if struct["PageNumber"] then asserts.Assert__stringMin3Max3Pattern1809aFAF09aEAE(struct["PageNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.TeletextDestinationSettings[k], "TeletextDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeletextDestinationSettings
-- Settings for Teletext caption output
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageNumber [__stringMin3Max3Pattern1809aFAF09aEAE] Set pageNumber to the Teletext page number for the destination captions for this output. This value must be a three-digit hexadecimal string; strings ending in -FF are invalid. If you are passing through the entire set of Teletext data, do not use this field.
-- @return TeletextDestinationSettings structure as a key-value pair table
function M.TeletextDestinationSettings(args)
	assert(args, "You must provide an argument table when creating TeletextDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PageNumber"] = args["PageNumber"],
	}
	asserts.AssertTeletextDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobTemplate = { ["Category"] = true, ["Name"] = true, ["Settings"] = true, ["LastUpdated"] = true, ["Queue"] = true, ["Arn"] = true, ["Type"] = true, ["CreatedAt"] = true, ["Description"] = true, nil }

function asserts.AssertJobTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobTemplate to be of type 'table'")
	assert(struct["Settings"], "Expected key Settings to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["Settings"] then asserts.AssertJobTemplateSettings(struct["Settings"]) end
	if struct["LastUpdated"] then asserts.Assert__timestampUnix(struct["LastUpdated"]) end
	if struct["Queue"] then asserts.Assert__string(struct["Queue"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Type"] then asserts.AssertType(struct["Type"]) end
	if struct["CreatedAt"] then asserts.Assert__timestampUnix(struct["CreatedAt"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobTemplate[k], "JobTemplate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobTemplate
-- A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Category [__string] An optional category you create to organize your job templates.
-- * Name [__string] A name you create for each job template. Each name must be unique within your account.
-- * Settings [JobTemplateSettings] 
-- * LastUpdated [__timestampUnix] The timestamp in epoch seconds when the Job template was last updated.
-- * Queue [__string] Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
-- * Arn [__string] An identifier for this resource that is unique within all of AWS.
-- * Type [Type] A job template can be of two types: system or custom. System or built-in job templates can't be modified or deleted by the user.
-- * CreatedAt [__timestampUnix] The timestamp in epoch seconds for Job template creation.
-- * Description [__string] An optional description you create for each job template.
-- Required key: Settings
-- Required key: Name
-- @return JobTemplate structure as a key-value pair table
function M.JobTemplate(args)
	assert(args, "You must provide an argument table when creating JobTemplate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Category"] = args["Category"],
		["Name"] = args["Name"],
		["Settings"] = args["Settings"],
		["LastUpdated"] = args["LastUpdated"],
		["Queue"] = args["Queue"],
		["Arn"] = args["Arn"],
		["Type"] = args["Type"],
		["CreatedAt"] = args["CreatedAt"],
		["Description"] = args["Description"],
	}
	asserts.AssertJobTemplate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteJobTemplateRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteJobTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteJobTemplateRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteJobTemplateRequest[k], "DeleteJobTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteJobTemplateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The name of the job template to be deleted.
-- Required key: Name
-- @return DeleteJobTemplateRequest structure as a key-value pair table
function M.DeleteJobTemplateRequest(args)
	assert(args, "You must provide an argument table when creating DeleteJobTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteJobTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Eac3Settings = { ["LoRoSurroundMixLevel"] = true, ["DynamicRangeCompressionRf"] = true, ["DynamicRangeCompressionLine"] = true, ["PhaseControl"] = true, ["MetadataControl"] = true, ["StereoDownmix"] = true, ["BitstreamMode"] = true, ["LfeControl"] = true, ["LtRtCenterMixLevel"] = true, ["Dialnorm"] = true, ["DcFilter"] = true, ["AttenuationControl"] = true, ["LfeFilter"] = true, ["LtRtSurroundMixLevel"] = true, ["SurroundMode"] = true, ["SampleRate"] = true, ["PassthroughControl"] = true, ["Bitrate"] = true, ["CodingMode"] = true, ["SurroundExMode"] = true, ["LoRoCenterMixLevel"] = true, nil }

function asserts.AssertEac3Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Eac3Settings to be of type 'table'")
	if struct["LoRoSurroundMixLevel"] then asserts.Assert__doubleMinNegative60MaxNegative1(struct["LoRoSurroundMixLevel"]) end
	if struct["DynamicRangeCompressionRf"] then asserts.AssertEac3DynamicRangeCompressionRf(struct["DynamicRangeCompressionRf"]) end
	if struct["DynamicRangeCompressionLine"] then asserts.AssertEac3DynamicRangeCompressionLine(struct["DynamicRangeCompressionLine"]) end
	if struct["PhaseControl"] then asserts.AssertEac3PhaseControl(struct["PhaseControl"]) end
	if struct["MetadataControl"] then asserts.AssertEac3MetadataControl(struct["MetadataControl"]) end
	if struct["StereoDownmix"] then asserts.AssertEac3StereoDownmix(struct["StereoDownmix"]) end
	if struct["BitstreamMode"] then asserts.AssertEac3BitstreamMode(struct["BitstreamMode"]) end
	if struct["LfeControl"] then asserts.AssertEac3LfeControl(struct["LfeControl"]) end
	if struct["LtRtCenterMixLevel"] then asserts.Assert__doubleMinNegative60Max3(struct["LtRtCenterMixLevel"]) end
	if struct["Dialnorm"] then asserts.Assert__integerMin1Max31(struct["Dialnorm"]) end
	if struct["DcFilter"] then asserts.AssertEac3DcFilter(struct["DcFilter"]) end
	if struct["AttenuationControl"] then asserts.AssertEac3AttenuationControl(struct["AttenuationControl"]) end
	if struct["LfeFilter"] then asserts.AssertEac3LfeFilter(struct["LfeFilter"]) end
	if struct["LtRtSurroundMixLevel"] then asserts.Assert__doubleMinNegative60MaxNegative1(struct["LtRtSurroundMixLevel"]) end
	if struct["SurroundMode"] then asserts.AssertEac3SurroundMode(struct["SurroundMode"]) end
	if struct["SampleRate"] then asserts.Assert__integerMin48000Max48000(struct["SampleRate"]) end
	if struct["PassthroughControl"] then asserts.AssertEac3PassthroughControl(struct["PassthroughControl"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin64000Max640000(struct["Bitrate"]) end
	if struct["CodingMode"] then asserts.AssertEac3CodingMode(struct["CodingMode"]) end
	if struct["SurroundExMode"] then asserts.AssertEac3SurroundExMode(struct["SurroundExMode"]) end
	if struct["LoRoCenterMixLevel"] then asserts.Assert__doubleMinNegative60Max3(struct["LoRoCenterMixLevel"]) end
	for k,_ in pairs(struct) do
		assert(keys.Eac3Settings[k], "Eac3Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Eac3Settings
-- Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value EAC3.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoRoSurroundMixLevel [__doubleMinNegative60MaxNegative1] Left only/Right only surround mix level. Only used for 3/2 coding mode.
--Valid values: -1.5 -3.0 -4.5 -6.0 -60
-- * DynamicRangeCompressionRf [Eac3DynamicRangeCompressionRf] 
-- * DynamicRangeCompressionLine [Eac3DynamicRangeCompressionLine] 
-- * PhaseControl [Eac3PhaseControl] 
-- * MetadataControl [Eac3MetadataControl] 
-- * StereoDownmix [Eac3StereoDownmix] 
-- * BitstreamMode [Eac3BitstreamMode] 
-- * LfeControl [Eac3LfeControl] 
-- * LtRtCenterMixLevel [__doubleMinNegative60Max3] Left total/Right total center mix level. Only used for 3/2 coding mode.
--Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60
-- * Dialnorm [__integerMin1Max31] Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
-- * DcFilter [Eac3DcFilter] 
-- * AttenuationControl [Eac3AttenuationControl] 
-- * LfeFilter [Eac3LfeFilter] 
-- * LtRtSurroundMixLevel [__doubleMinNegative60MaxNegative1] Left total/Right total surround mix level. Only used for 3/2 coding mode.
--Valid values: -1.5 -3.0 -4.5 -6.0 -60
-- * SurroundMode [Eac3SurroundMode] 
-- * SampleRate [__integerMin48000Max48000] Sample rate in hz. Sample rate is always 48000.
-- * PassthroughControl [Eac3PassthroughControl] 
-- * Bitrate [__integerMin64000Max640000] Average bitrate in bits/second. Valid bitrates depend on the coding mode.
-- * CodingMode [Eac3CodingMode] 
-- * SurroundExMode [Eac3SurroundExMode] 
-- * LoRoCenterMixLevel [__doubleMinNegative60Max3] Left only/Right only center mix level. Only used for 3/2 coding mode.
--Valid values: 3.0, 1.5, 0.0, -1.5 -3.0 -4.5 -6.0 -60
-- @return Eac3Settings structure as a key-value pair table
function M.Eac3Settings(args)
	assert(args, "You must provide an argument table when creating Eac3Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LoRoSurroundMixLevel"] = args["LoRoSurroundMixLevel"],
		["DynamicRangeCompressionRf"] = args["DynamicRangeCompressionRf"],
		["DynamicRangeCompressionLine"] = args["DynamicRangeCompressionLine"],
		["PhaseControl"] = args["PhaseControl"],
		["MetadataControl"] = args["MetadataControl"],
		["StereoDownmix"] = args["StereoDownmix"],
		["BitstreamMode"] = args["BitstreamMode"],
		["LfeControl"] = args["LfeControl"],
		["LtRtCenterMixLevel"] = args["LtRtCenterMixLevel"],
		["Dialnorm"] = args["Dialnorm"],
		["DcFilter"] = args["DcFilter"],
		["AttenuationControl"] = args["AttenuationControl"],
		["LfeFilter"] = args["LfeFilter"],
		["LtRtSurroundMixLevel"] = args["LtRtSurroundMixLevel"],
		["SurroundMode"] = args["SurroundMode"],
		["SampleRate"] = args["SampleRate"],
		["PassthroughControl"] = args["PassthroughControl"],
		["Bitrate"] = args["Bitrate"],
		["CodingMode"] = args["CodingMode"],
		["SurroundExMode"] = args["SurroundExMode"],
		["LoRoCenterMixLevel"] = args["LoRoCenterMixLevel"],
	}
	asserts.AssertEac3Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionSelector = { ["LanguageCode"] = true, ["SourceSettings"] = true, ["CustomLanguageCode"] = true, nil }

function asserts.AssertCaptionSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionSelector to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["SourceSettings"] then asserts.AssertCaptionSourceSettings(struct["SourceSettings"]) end
	if struct["CustomLanguageCode"] then asserts.Assert__stringMin3Max3PatternAZaZ3(struct["CustomLanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionSelector[k], "CaptionSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionSelector
-- Set up captions in your outputs by first selecting them from your input here.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] The specific language to extract from source. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions.
-- * SourceSettings [CaptionSourceSettings] 
-- * CustomLanguageCode [__stringMin3Max3PatternAZaZ3] The specific language to extract from source, using the ISO 639-2 or ISO 639-3 three-letter language code. If input is SCTE-27, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub and output is Burn-in or SMPTE-TT, complete this field and/or PID to select the caption language to extract. If input is DVB-Sub that is being passed through, omit this field (and PID field); there is no way to extract a specific language with pass-through captions.
-- @return CaptionSelector structure as a key-value pair table
function M.CaptionSelector(args)
	assert(args, "You must provide an argument table when creating CaptionSelector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["SourceSettings"] = args["SourceSettings"],
		["CustomLanguageCode"] = args["CustomLanguageCode"],
	}
	asserts.AssertCaptionSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPresetsResponse = { ["NextToken"] = true, ["Presets"] = true, nil }

function asserts.AssertListPresetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPresetsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Presets"] then asserts.Assert__listOfPreset(struct["Presets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPresetsResponse[k], "ListPresetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPresetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Use this string to request the next batch of presets.
-- * Presets [__listOfPreset] List of presets
-- @return ListPresetsResponse structure as a key-value pair table
function M.ListPresetsResponse(args)
	assert(args, "You must provide an argument table when creating ListPresetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Presets"] = args["Presets"],
	}
	asserts.AssertListPresetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbSubDestinationSettings = { ["YPosition"] = true, ["TeletextSpacing"] = true, ["ShadowOpacity"] = true, ["OutlineSize"] = true, ["ShadowXOffset"] = true, ["ShadowYOffset"] = true, ["XPosition"] = true, ["FontOpacity"] = true, ["ShadowColor"] = true, ["FontResolution"] = true, ["FontSize"] = true, ["BackgroundColor"] = true, ["FontColor"] = true, ["BackgroundOpacity"] = true, ["Alignment"] = true, ["OutlineColor"] = true, nil }

function asserts.AssertDvbSubDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbSubDestinationSettings to be of type 'table'")
	if struct["YPosition"] then asserts.Assert__integerMin0Max2147483647(struct["YPosition"]) end
	if struct["TeletextSpacing"] then asserts.AssertDvbSubtitleTeletextSpacing(struct["TeletextSpacing"]) end
	if struct["ShadowOpacity"] then asserts.Assert__integerMin0Max255(struct["ShadowOpacity"]) end
	if struct["OutlineSize"] then asserts.Assert__integerMin0Max10(struct["OutlineSize"]) end
	if struct["ShadowXOffset"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["ShadowXOffset"]) end
	if struct["ShadowYOffset"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["ShadowYOffset"]) end
	if struct["XPosition"] then asserts.Assert__integerMin0Max2147483647(struct["XPosition"]) end
	if struct["FontOpacity"] then asserts.Assert__integerMin0Max255(struct["FontOpacity"]) end
	if struct["ShadowColor"] then asserts.AssertDvbSubtitleShadowColor(struct["ShadowColor"]) end
	if struct["FontResolution"] then asserts.Assert__integerMin96Max600(struct["FontResolution"]) end
	if struct["FontSize"] then asserts.Assert__integerMin0Max96(struct["FontSize"]) end
	if struct["BackgroundColor"] then asserts.AssertDvbSubtitleBackgroundColor(struct["BackgroundColor"]) end
	if struct["FontColor"] then asserts.AssertDvbSubtitleFontColor(struct["FontColor"]) end
	if struct["BackgroundOpacity"] then asserts.Assert__integerMin0Max255(struct["BackgroundOpacity"]) end
	if struct["Alignment"] then asserts.AssertDvbSubtitleAlignment(struct["Alignment"]) end
	if struct["OutlineColor"] then asserts.AssertDvbSubtitleOutlineColor(struct["OutlineColor"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbSubDestinationSettings[k], "DvbSubDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbSubDestinationSettings
-- DVB-Sub Destination Settings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * YPosition [__integerMin0Max2147483647] Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * TeletextSpacing [DvbSubtitleTeletextSpacing] 
-- * ShadowOpacity [__integerMin0Max255] Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
-- * OutlineSize [__integerMin0Max10] Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * ShadowXOffset [__integerMinNegative2147483648Max2147483647] Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
-- * ShadowYOffset [__integerMinNegative2147483648Max2147483647] Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
-- * XPosition [__integerMin0Max2147483647] Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * FontOpacity [__integerMin0Max255] Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.
--All burn-in and DVB-Sub font settings must match.
-- * ShadowColor [DvbSubtitleShadowColor] 
-- * FontResolution [__integerMin96Max600] Font resolution in DPI (dots per inch); default is 96 dpi.
--All burn-in and DVB-Sub font settings must match.
-- * FontSize [__integerMin0Max96] A positive integer indicates the exact font size in points. Set to 0 for automatic font size selection. All burn-in and DVB-Sub font settings must match.
-- * BackgroundColor [DvbSubtitleBackgroundColor] 
-- * FontColor [DvbSubtitleFontColor] 
-- * BackgroundOpacity [__integerMin0Max255] Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
-- * Alignment [DvbSubtitleAlignment] 
-- * OutlineColor [DvbSubtitleOutlineColor] 
-- @return DvbSubDestinationSettings structure as a key-value pair table
function M.DvbSubDestinationSettings(args)
	assert(args, "You must provide an argument table when creating DvbSubDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["YPosition"] = args["YPosition"],
		["TeletextSpacing"] = args["TeletextSpacing"],
		["ShadowOpacity"] = args["ShadowOpacity"],
		["OutlineSize"] = args["OutlineSize"],
		["ShadowXOffset"] = args["ShadowXOffset"],
		["ShadowYOffset"] = args["ShadowYOffset"],
		["XPosition"] = args["XPosition"],
		["FontOpacity"] = args["FontOpacity"],
		["ShadowColor"] = args["ShadowColor"],
		["FontResolution"] = args["FontResolution"],
		["FontSize"] = args["FontSize"],
		["BackgroundColor"] = args["BackgroundColor"],
		["FontColor"] = args["FontColor"],
		["BackgroundOpacity"] = args["BackgroundOpacity"],
		["Alignment"] = args["Alignment"],
		["OutlineColor"] = args["OutlineColor"],
	}
	asserts.AssertDvbSubDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteQueueResponse = { nil }

function asserts.AssertDeleteQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQueueResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteQueueResponse[k], "DeleteQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQueueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteQueueResponse structure as a key-value pair table
function M.DeleteQueueResponse(args)
	assert(args, "You must provide an argument table when creating DeleteQueueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteQueueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioSelectorGroup = { ["AudioSelectorNames"] = true, nil }

function asserts.AssertAudioSelectorGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioSelectorGroup to be of type 'table'")
	if struct["AudioSelectorNames"] then asserts.Assert__listOf__stringMin1(struct["AudioSelectorNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioSelectorGroup[k], "AudioSelectorGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioSelectorGroup
-- Group of Audio Selectors
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AudioSelectorNames [__listOf__stringMin1] Name of an Audio Selector within the same input to include in the group.  Audio selector names are standardized, based on their order within the input (e.g., "Audio Selector 1"). The audio selector name parameter can be repeated to add any number of audio selectors to the group.
-- @return AudioSelectorGroup structure as a key-value pair table
function M.AudioSelectorGroup(args)
	assert(args, "You must provide an argument table when creating AudioSelectorGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AudioSelectorNames"] = args["AudioSelectorNames"],
	}
	asserts.AssertAudioSelectorGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionDestinationSettings = { ["SccDestinationSettings"] = true, ["DvbSubDestinationSettings"] = true, ["TtmlDestinationSettings"] = true, ["DestinationType"] = true, ["TeletextDestinationSettings"] = true, ["BurninDestinationSettings"] = true, nil }

function asserts.AssertCaptionDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionDestinationSettings to be of type 'table'")
	if struct["SccDestinationSettings"] then asserts.AssertSccDestinationSettings(struct["SccDestinationSettings"]) end
	if struct["DvbSubDestinationSettings"] then asserts.AssertDvbSubDestinationSettings(struct["DvbSubDestinationSettings"]) end
	if struct["TtmlDestinationSettings"] then asserts.AssertTtmlDestinationSettings(struct["TtmlDestinationSettings"]) end
	if struct["DestinationType"] then asserts.AssertCaptionDestinationType(struct["DestinationType"]) end
	if struct["TeletextDestinationSettings"] then asserts.AssertTeletextDestinationSettings(struct["TeletextDestinationSettings"]) end
	if struct["BurninDestinationSettings"] then asserts.AssertBurninDestinationSettings(struct["BurninDestinationSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionDestinationSettings[k], "CaptionDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionDestinationSettings
-- Specific settings required by destination type. Note that burnin_destination_settings are not available if the source of the caption data is Embedded or Teletext.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SccDestinationSettings [SccDestinationSettings] 
-- * DvbSubDestinationSettings [DvbSubDestinationSettings] 
-- * TtmlDestinationSettings [TtmlDestinationSettings] 
-- * DestinationType [CaptionDestinationType] 
-- * TeletextDestinationSettings [TeletextDestinationSettings] 
-- * BurninDestinationSettings [BurninDestinationSettings] 
-- @return CaptionDestinationSettings structure as a key-value pair table
function M.CaptionDestinationSettings(args)
	assert(args, "You must provide an argument table when creating CaptionDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SccDestinationSettings"] = args["SccDestinationSettings"],
		["DvbSubDestinationSettings"] = args["DvbSubDestinationSettings"],
		["TtmlDestinationSettings"] = args["TtmlDestinationSettings"],
		["DestinationType"] = args["DestinationType"],
		["TeletextDestinationSettings"] = args["TeletextDestinationSettings"],
		["BurninDestinationSettings"] = args["BurninDestinationSettings"],
	}
	asserts.AssertCaptionDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbTdtSettings = { ["TdtInterval"] = true, nil }

function asserts.AssertDvbTdtSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbTdtSettings to be of type 'table'")
	if struct["TdtInterval"] then asserts.Assert__integerMin1000Max30000(struct["TdtInterval"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbTdtSettings[k], "DvbTdtSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbTdtSettings
-- Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TdtInterval [__integerMin1000Max30000] The number of milliseconds between instances of this table in the output transport stream.
-- @return DvbTdtSettings structure as a key-value pair table
function M.DvbTdtSettings(args)
	assert(args, "You must provide an argument table when creating DvbTdtSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TdtInterval"] = args["TdtInterval"],
	}
	asserts.AssertDvbTdtSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoiseReducer = { ["Filter"] = true, ["SpatialFilterSettings"] = true, ["FilterSettings"] = true, nil }

function asserts.AssertNoiseReducer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoiseReducer to be of type 'table'")
	if struct["Filter"] then asserts.AssertNoiseReducerFilter(struct["Filter"]) end
	if struct["SpatialFilterSettings"] then asserts.AssertNoiseReducerSpatialFilterSettings(struct["SpatialFilterSettings"]) end
	if struct["FilterSettings"] then asserts.AssertNoiseReducerFilterSettings(struct["FilterSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoiseReducer[k], "NoiseReducer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoiseReducer
-- Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default. When you enable Noise reducer (NoiseReducer), you must also select a value for Noise reducer filter (NoiseReducerFilter).
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [NoiseReducerFilter] 
-- * SpatialFilterSettings [NoiseReducerSpatialFilterSettings] 
-- * FilterSettings [NoiseReducerFilterSettings] 
-- @return NoiseReducer structure as a key-value pair table
function M.NoiseReducer(args)
	assert(args, "You must provide an argument table when creating NoiseReducer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["SpatialFilterSettings"] = args["SpatialFilterSettings"],
		["FilterSettings"] = args["FilterSettings"],
	}
	asserts.AssertNoiseReducer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListQueuesResponse = { ["Queues"] = true, ["NextToken"] = true, nil }

function asserts.AssertListQueuesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueuesResponse to be of type 'table'")
	if struct["Queues"] then asserts.Assert__listOfQueue(struct["Queues"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQueuesResponse[k], "ListQueuesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueuesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Queues [__listOfQueue] List of queues.
-- * NextToken [__string] Use this string to request the next batch of queues.
-- @return ListQueuesResponse structure as a key-value pair table
function M.ListQueuesResponse(args)
	assert(args, "You must provide an argument table when creating ListQueuesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Queues"] = args["Queues"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListQueuesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.H265Settings = { ["WriteMp4PackagingType"] = true, ["CodecProfile"] = true, ["SpatialAdaptiveQuantization"] = true, ["TemporalAdaptiveQuantization"] = true, ["FramerateNumerator"] = true, ["FlickerAdaptiveQuantization"] = true, ["Tiles"] = true, ["MinIInterval"] = true, ["QvbrSettings"] = true, ["UnregisteredSeiTimecode"] = true, ["FramerateControl"] = true, ["NumberReferenceFrames"] = true, ["FramerateDenominator"] = true, ["Bitrate"] = true, ["DynamicSubGop"] = true, ["MaxBitrate"] = true, ["GopSizeUnits"] = true, ["GopBReference"] = true, ["Telecine"] = true, ["ParDenominator"] = true, ["AdaptiveQuantization"] = true, ["TemporalIds"] = true, ["InterlaceMode"] = true, ["QualityTuningLevel"] = true, ["HrdBufferInitialFillPercentage"] = true, ["SlowPal"] = true, ["NumberBFramesBetweenReferenceFrames"] = true, ["SampleAdaptiveOffsetFilterMode"] = true, ["GopSize"] = true, ["ParControl"] = true, ["Slices"] = true, ["FramerateConversionAlgorithm"] = true, ["AlternateTransferFunctionSei"] = true, ["ParNumerator"] = true, ["RateControlMode"] = true, ["SceneChangeDetect"] = true, ["CodecLevel"] = true, ["GopClosedCadence"] = true, ["HrdBufferSize"] = true, nil }

function asserts.AssertH265Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected H265Settings to be of type 'table'")
	if struct["WriteMp4PackagingType"] then asserts.AssertH265WriteMp4PackagingType(struct["WriteMp4PackagingType"]) end
	if struct["CodecProfile"] then asserts.AssertH265CodecProfile(struct["CodecProfile"]) end
	if struct["SpatialAdaptiveQuantization"] then asserts.AssertH265SpatialAdaptiveQuantization(struct["SpatialAdaptiveQuantization"]) end
	if struct["TemporalAdaptiveQuantization"] then asserts.AssertH265TemporalAdaptiveQuantization(struct["TemporalAdaptiveQuantization"]) end
	if struct["FramerateNumerator"] then asserts.Assert__integerMin1Max2147483647(struct["FramerateNumerator"]) end
	if struct["FlickerAdaptiveQuantization"] then asserts.AssertH265FlickerAdaptiveQuantization(struct["FlickerAdaptiveQuantization"]) end
	if struct["Tiles"] then asserts.AssertH265Tiles(struct["Tiles"]) end
	if struct["MinIInterval"] then asserts.Assert__integerMin0Max30(struct["MinIInterval"]) end
	if struct["QvbrSettings"] then asserts.AssertH265QvbrSettings(struct["QvbrSettings"]) end
	if struct["UnregisteredSeiTimecode"] then asserts.AssertH265UnregisteredSeiTimecode(struct["UnregisteredSeiTimecode"]) end
	if struct["FramerateControl"] then asserts.AssertH265FramerateControl(struct["FramerateControl"]) end
	if struct["NumberReferenceFrames"] then asserts.Assert__integerMin1Max6(struct["NumberReferenceFrames"]) end
	if struct["FramerateDenominator"] then asserts.Assert__integerMin1Max2147483647(struct["FramerateDenominator"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin1000Max1466400000(struct["Bitrate"]) end
	if struct["DynamicSubGop"] then asserts.AssertH265DynamicSubGop(struct["DynamicSubGop"]) end
	if struct["MaxBitrate"] then asserts.Assert__integerMin1000Max1466400000(struct["MaxBitrate"]) end
	if struct["GopSizeUnits"] then asserts.AssertH265GopSizeUnits(struct["GopSizeUnits"]) end
	if struct["GopBReference"] then asserts.AssertH265GopBReference(struct["GopBReference"]) end
	if struct["Telecine"] then asserts.AssertH265Telecine(struct["Telecine"]) end
	if struct["ParDenominator"] then asserts.Assert__integerMin1Max2147483647(struct["ParDenominator"]) end
	if struct["AdaptiveQuantization"] then asserts.AssertH265AdaptiveQuantization(struct["AdaptiveQuantization"]) end
	if struct["TemporalIds"] then asserts.AssertH265TemporalIds(struct["TemporalIds"]) end
	if struct["InterlaceMode"] then asserts.AssertH265InterlaceMode(struct["InterlaceMode"]) end
	if struct["QualityTuningLevel"] then asserts.AssertH265QualityTuningLevel(struct["QualityTuningLevel"]) end
	if struct["HrdBufferInitialFillPercentage"] then asserts.Assert__integerMin0Max100(struct["HrdBufferInitialFillPercentage"]) end
	if struct["SlowPal"] then asserts.AssertH265SlowPal(struct["SlowPal"]) end
	if struct["NumberBFramesBetweenReferenceFrames"] then asserts.Assert__integerMin0Max7(struct["NumberBFramesBetweenReferenceFrames"]) end
	if struct["SampleAdaptiveOffsetFilterMode"] then asserts.AssertH265SampleAdaptiveOffsetFilterMode(struct["SampleAdaptiveOffsetFilterMode"]) end
	if struct["GopSize"] then asserts.Assert__doubleMin0(struct["GopSize"]) end
	if struct["ParControl"] then asserts.AssertH265ParControl(struct["ParControl"]) end
	if struct["Slices"] then asserts.Assert__integerMin1Max32(struct["Slices"]) end
	if struct["FramerateConversionAlgorithm"] then asserts.AssertH265FramerateConversionAlgorithm(struct["FramerateConversionAlgorithm"]) end
	if struct["AlternateTransferFunctionSei"] then asserts.AssertH265AlternateTransferFunctionSei(struct["AlternateTransferFunctionSei"]) end
	if struct["ParNumerator"] then asserts.Assert__integerMin1Max2147483647(struct["ParNumerator"]) end
	if struct["RateControlMode"] then asserts.AssertH265RateControlMode(struct["RateControlMode"]) end
	if struct["SceneChangeDetect"] then asserts.AssertH265SceneChangeDetect(struct["SceneChangeDetect"]) end
	if struct["CodecLevel"] then asserts.AssertH265CodecLevel(struct["CodecLevel"]) end
	if struct["GopClosedCadence"] then asserts.Assert__integerMin0Max2147483647(struct["GopClosedCadence"]) end
	if struct["HrdBufferSize"] then asserts.Assert__integerMin0Max1466400000(struct["HrdBufferSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.H265Settings[k], "H265Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type H265Settings
-- Settings for H265 codec
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WriteMp4PackagingType [H265WriteMp4PackagingType] 
-- * CodecProfile [H265CodecProfile] 
-- * SpatialAdaptiveQuantization [H265SpatialAdaptiveQuantization] 
-- * TemporalAdaptiveQuantization [H265TemporalAdaptiveQuantization] 
-- * FramerateNumerator [__integerMin1Max2147483647] Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
-- * FlickerAdaptiveQuantization [H265FlickerAdaptiveQuantization] 
-- * Tiles [H265Tiles] 
-- * MinIInterval [__integerMin0Max30] Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
-- * QvbrSettings [H265QvbrSettings] Settings for quality-defined variable bitrate encoding with the H.265 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
-- * UnregisteredSeiTimecode [H265UnregisteredSeiTimecode] 
-- * FramerateControl [H265FramerateControl] 
-- * NumberReferenceFrames [__integerMin1Max6] Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
-- * FramerateDenominator [__integerMin1Max2147483647] Framerate denominator.
-- * Bitrate [__integerMin1000Max1466400000] Average bitrate in bits/second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
-- * DynamicSubGop [H265DynamicSubGop] Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
-- * MaxBitrate [__integerMin1000Max1466400000] Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
-- * GopSizeUnits [H265GopSizeUnits] 
-- * GopBReference [H265GopBReference] 
-- * Telecine [H265Telecine] 
-- * ParDenominator [__integerMin1Max2147483647] Pixel Aspect Ratio denominator.
-- * AdaptiveQuantization [H265AdaptiveQuantization] 
-- * TemporalIds [H265TemporalIds] 
-- * InterlaceMode [H265InterlaceMode] 
-- * QualityTuningLevel [H265QualityTuningLevel] 
-- * HrdBufferInitialFillPercentage [__integerMin0Max100] Percentage of the buffer that should initially be filled (HRD buffer model).
-- * SlowPal [H265SlowPal] 
-- * NumberBFramesBetweenReferenceFrames [__integerMin0Max7] Number of B-frames between reference frames.
-- * SampleAdaptiveOffsetFilterMode [H265SampleAdaptiveOffsetFilterMode] 
-- * GopSize [__doubleMin0] GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
-- * ParControl [H265ParControl] 
-- * Slices [__integerMin1Max32] Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
-- * FramerateConversionAlgorithm [H265FramerateConversionAlgorithm] 
-- * AlternateTransferFunctionSei [H265AlternateTransferFunctionSei] 
-- * ParNumerator [__integerMin1Max2147483647] Pixel Aspect Ratio numerator.
-- * RateControlMode [H265RateControlMode] 
-- * SceneChangeDetect [H265SceneChangeDetect] 
-- * CodecLevel [H265CodecLevel] 
-- * GopClosedCadence [__integerMin0Max2147483647] Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
-- * HrdBufferSize [__integerMin0Max1466400000] Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
-- @return H265Settings structure as a key-value pair table
function M.H265Settings(args)
	assert(args, "You must provide an argument table when creating H265Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WriteMp4PackagingType"] = args["WriteMp4PackagingType"],
		["CodecProfile"] = args["CodecProfile"],
		["SpatialAdaptiveQuantization"] = args["SpatialAdaptiveQuantization"],
		["TemporalAdaptiveQuantization"] = args["TemporalAdaptiveQuantization"],
		["FramerateNumerator"] = args["FramerateNumerator"],
		["FlickerAdaptiveQuantization"] = args["FlickerAdaptiveQuantization"],
		["Tiles"] = args["Tiles"],
		["MinIInterval"] = args["MinIInterval"],
		["QvbrSettings"] = args["QvbrSettings"],
		["UnregisteredSeiTimecode"] = args["UnregisteredSeiTimecode"],
		["FramerateControl"] = args["FramerateControl"],
		["NumberReferenceFrames"] = args["NumberReferenceFrames"],
		["FramerateDenominator"] = args["FramerateDenominator"],
		["Bitrate"] = args["Bitrate"],
		["DynamicSubGop"] = args["DynamicSubGop"],
		["MaxBitrate"] = args["MaxBitrate"],
		["GopSizeUnits"] = args["GopSizeUnits"],
		["GopBReference"] = args["GopBReference"],
		["Telecine"] = args["Telecine"],
		["ParDenominator"] = args["ParDenominator"],
		["AdaptiveQuantization"] = args["AdaptiveQuantization"],
		["TemporalIds"] = args["TemporalIds"],
		["InterlaceMode"] = args["InterlaceMode"],
		["QualityTuningLevel"] = args["QualityTuningLevel"],
		["HrdBufferInitialFillPercentage"] = args["HrdBufferInitialFillPercentage"],
		["SlowPal"] = args["SlowPal"],
		["NumberBFramesBetweenReferenceFrames"] = args["NumberBFramesBetweenReferenceFrames"],
		["SampleAdaptiveOffsetFilterMode"] = args["SampleAdaptiveOffsetFilterMode"],
		["GopSize"] = args["GopSize"],
		["ParControl"] = args["ParControl"],
		["Slices"] = args["Slices"],
		["FramerateConversionAlgorithm"] = args["FramerateConversionAlgorithm"],
		["AlternateTransferFunctionSei"] = args["AlternateTransferFunctionSei"],
		["ParNumerator"] = args["ParNumerator"],
		["RateControlMode"] = args["RateControlMode"],
		["SceneChangeDetect"] = args["SceneChangeDetect"],
		["CodecLevel"] = args["CodecLevel"],
		["GopClosedCadence"] = args["GopClosedCadence"],
		["HrdBufferSize"] = args["HrdBufferSize"],
	}
	asserts.AssertH265Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ColorCorrector = { ["Hue"] = true, ["Saturation"] = true, ["ColorSpaceConversion"] = true, ["Brightness"] = true, ["Contrast"] = true, ["Hdr10Metadata"] = true, nil }

function asserts.AssertColorCorrector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ColorCorrector to be of type 'table'")
	if struct["Hue"] then asserts.Assert__integerMinNegative180Max180(struct["Hue"]) end
	if struct["Saturation"] then asserts.Assert__integerMin1Max100(struct["Saturation"]) end
	if struct["ColorSpaceConversion"] then asserts.AssertColorSpaceConversion(struct["ColorSpaceConversion"]) end
	if struct["Brightness"] then asserts.Assert__integerMin1Max100(struct["Brightness"]) end
	if struct["Contrast"] then asserts.Assert__integerMin1Max100(struct["Contrast"]) end
	if struct["Hdr10Metadata"] then asserts.AssertHdr10Metadata(struct["Hdr10Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.ColorCorrector[k], "ColorCorrector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ColorCorrector
-- Settings for color correction.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Hue [__integerMinNegative180Max180] Hue in degrees.
-- * Saturation [__integerMin1Max100] Saturation level.
-- * ColorSpaceConversion [ColorSpaceConversion] 
-- * Brightness [__integerMin1Max100] Brightness level.
-- * Contrast [__integerMin1Max100] Contrast level.
-- * Hdr10Metadata [Hdr10Metadata] 
-- @return ColorCorrector structure as a key-value pair table
function M.ColorCorrector(args)
	assert(args, "You must provide an argument table when creating ColorCorrector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Hue"] = args["Hue"],
		["Saturation"] = args["Saturation"],
		["ColorSpaceConversion"] = args["ColorSpaceConversion"],
		["Brightness"] = args["Brightness"],
		["Contrast"] = args["Contrast"],
		["Hdr10Metadata"] = args["Hdr10Metadata"],
	}
	asserts.AssertColorCorrector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Input = { ["AudioSelectors"] = true, ["CaptionSelectors"] = true, ["AudioSelectorGroups"] = true, ["FilterEnable"] = true, ["TimecodeSource"] = true, ["InputClippings"] = true, ["PsiControl"] = true, ["FilterStrength"] = true, ["ProgramNumber"] = true, ["DenoiseFilter"] = true, ["FileInput"] = true, ["VideoSelector"] = true, ["DeblockFilter"] = true, nil }

function asserts.AssertInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Input to be of type 'table'")
	if struct["AudioSelectors"] then asserts.Assert__mapOfAudioSelector(struct["AudioSelectors"]) end
	if struct["CaptionSelectors"] then asserts.Assert__mapOfCaptionSelector(struct["CaptionSelectors"]) end
	if struct["AudioSelectorGroups"] then asserts.Assert__mapOfAudioSelectorGroup(struct["AudioSelectorGroups"]) end
	if struct["FilterEnable"] then asserts.AssertInputFilterEnable(struct["FilterEnable"]) end
	if struct["TimecodeSource"] then asserts.AssertInputTimecodeSource(struct["TimecodeSource"]) end
	if struct["InputClippings"] then asserts.Assert__listOfInputClipping(struct["InputClippings"]) end
	if struct["PsiControl"] then asserts.AssertInputPsiControl(struct["PsiControl"]) end
	if struct["FilterStrength"] then asserts.Assert__integerMinNegative5Max5(struct["FilterStrength"]) end
	if struct["ProgramNumber"] then asserts.Assert__integerMin1Max2147483647(struct["ProgramNumber"]) end
	if struct["DenoiseFilter"] then asserts.AssertInputDenoiseFilter(struct["DenoiseFilter"]) end
	if struct["FileInput"] then asserts.Assert__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM(struct["FileInput"]) end
	if struct["VideoSelector"] then asserts.AssertVideoSelector(struct["VideoSelector"]) end
	if struct["DeblockFilter"] then asserts.AssertInputDeblockFilter(struct["DeblockFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.Input[k], "Input contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Input
-- Specifies media input
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AudioSelectors [__mapOfAudioSelector] Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use mutiple Audio selectors per input.
-- * CaptionSelectors [__mapOfCaptionSelector] Use Captions selectors (CaptionSelectors) to specify the captions data from the input that you will use in your outputs. You can use mutiple captions selectors per input.
-- * AudioSelectorGroups [__mapOfAudioSelectorGroup] Specifies set of audio selectors within an input to combine. An input may have multiple audio selector groups. See "Audio Selector Group":#inputs-audio_selector_group for more information.
-- * FilterEnable [InputFilterEnable] 
-- * TimecodeSource [InputTimecodeSource] 
-- * InputClippings [__listOfInputClipping] (InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
-- * PsiControl [InputPsiControl] 
-- * FilterStrength [__integerMinNegative5Max5] Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0.
-- * ProgramNumber [__integerMin1Max2147483647] Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
-- * DenoiseFilter [InputDenoiseFilter] 
-- * FileInput [__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM] Use Input (fileInput) to define the source file used in the transcode job. There can be multiple inputs in a job. These inputs are concantenated, in the order they are specified in the job, to create the output.
-- * VideoSelector [VideoSelector] 
-- * DeblockFilter [InputDeblockFilter] 
-- @return Input structure as a key-value pair table
function M.Input(args)
	assert(args, "You must provide an argument table when creating Input")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AudioSelectors"] = args["AudioSelectors"],
		["CaptionSelectors"] = args["CaptionSelectors"],
		["AudioSelectorGroups"] = args["AudioSelectorGroups"],
		["FilterEnable"] = args["FilterEnable"],
		["TimecodeSource"] = args["TimecodeSource"],
		["InputClippings"] = args["InputClippings"],
		["PsiControl"] = args["PsiControl"],
		["FilterStrength"] = args["FilterStrength"],
		["ProgramNumber"] = args["ProgramNumber"],
		["DenoiseFilter"] = args["DenoiseFilter"],
		["FileInput"] = args["FileInput"],
		["VideoSelector"] = args["VideoSelector"],
		["DeblockFilter"] = args["DeblockFilter"],
	}
	asserts.AssertInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceTags = { ["Arn"] = true, ["Tags"] = true, nil }

function asserts.AssertResourceTags(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTags to be of type 'table'")
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Tags"] then asserts.Assert__mapOf__string(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTags[k], "ResourceTags contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTags
-- The Amazon Resource Name (ARN) and tags for an AWS Elemental MediaConvert resource.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [__string] The Amazon Resource Name (ARN) of the resource.
-- * Tags [__mapOf__string] The tags for the resource.
-- @return ResourceTags structure as a key-value pair table
function M.ResourceTags(args)
	assert(args, "You must provide an argument table when creating ResourceTags")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertResourceTags(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobTemplateRequest = { ["Name"] = true, nil }

function asserts.AssertGetJobTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobTemplateRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobTemplateRequest[k], "GetJobTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobTemplateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The name of the job template.
-- Required key: Name
-- @return GetJobTemplateRequest structure as a key-value pair table
function M.GetJobTemplateRequest(args)
	assert(args, "You must provide an argument table when creating GetJobTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetJobTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbNitSettings = { ["NetworkId"] = true, ["NitInterval"] = true, ["NetworkName"] = true, nil }

function asserts.AssertDvbNitSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbNitSettings to be of type 'table'")
	if struct["NetworkId"] then asserts.Assert__integerMin0Max65535(struct["NetworkId"]) end
	if struct["NitInterval"] then asserts.Assert__integerMin25Max10000(struct["NitInterval"]) end
	if struct["NetworkName"] then asserts.Assert__stringMin1Max256(struct["NetworkName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbNitSettings[k], "DvbNitSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbNitSettings
-- Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NetworkId [__integerMin0Max65535] The numeric value placed in the Network Information Table (NIT).
-- * NitInterval [__integerMin25Max10000] The number of milliseconds between instances of this table in the output transport stream.
-- * NetworkName [__stringMin1Max256] The network name text placed in the network_name_descriptor inside the Network Information Table. Maximum length is 256 characters.
-- @return DvbNitSettings structure as a key-value pair table
function M.DvbNitSettings(args)
	assert(args, "You must provide an argument table when creating DvbNitSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NetworkId"] = args["NetworkId"],
		["NitInterval"] = args["NitInterval"],
		["NetworkName"] = args["NetworkName"],
	}
	asserts.AssertDvbNitSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteQueueRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteQueueRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteQueueRequest[k], "DeleteQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteQueueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The name of the queue to be deleted.
-- Required key: Name
-- @return DeleteQueueRequest structure as a key-value pair table
function M.DeleteQueueRequest(args)
	assert(args, "You must provide an argument table when creating DeleteQueueRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteQueueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsGroupSettings = { ["TimedMetadataId3Frame"] = true, ["Encryption"] = true, ["CaptionLanguageMappings"] = true, ["Destination"] = true, ["ManifestDurationFormat"] = true, ["CodecSpecification"] = true, ["TimedMetadataId3Period"] = true, ["MinFinalSegmentLength"] = true, ["TimestampDeltaMilliseconds"] = true, ["BaseUrl"] = true, ["SegmentLength"] = true, ["ProgramDateTimePeriod"] = true, ["SegmentControl"] = true, ["CaptionLanguageSetting"] = true, ["ProgramDateTime"] = true, ["StreamInfResolution"] = true, ["ClientCache"] = true, ["AdMarkers"] = true, ["SegmentsPerSubdirectory"] = true, ["OutputSelection"] = true, ["ManifestCompression"] = true, ["MinSegmentLength"] = true, ["DirectoryStructure"] = true, nil }

function asserts.AssertHlsGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsGroupSettings to be of type 'table'")
	if struct["TimedMetadataId3Frame"] then asserts.AssertHlsTimedMetadataId3Frame(struct["TimedMetadataId3Frame"]) end
	if struct["Encryption"] then asserts.AssertHlsEncryptionSettings(struct["Encryption"]) end
	if struct["CaptionLanguageMappings"] then asserts.Assert__listOfHlsCaptionLanguageMapping(struct["CaptionLanguageMappings"]) end
	if struct["Destination"] then asserts.Assert__stringPatternS3(struct["Destination"]) end
	if struct["ManifestDurationFormat"] then asserts.AssertHlsManifestDurationFormat(struct["ManifestDurationFormat"]) end
	if struct["CodecSpecification"] then asserts.AssertHlsCodecSpecification(struct["CodecSpecification"]) end
	if struct["TimedMetadataId3Period"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["TimedMetadataId3Period"]) end
	if struct["MinFinalSegmentLength"] then asserts.Assert__doubleMin0Max2147483647(struct["MinFinalSegmentLength"]) end
	if struct["TimestampDeltaMilliseconds"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["TimestampDeltaMilliseconds"]) end
	if struct["BaseUrl"] then asserts.Assert__string(struct["BaseUrl"]) end
	if struct["SegmentLength"] then asserts.Assert__integerMin1Max2147483647(struct["SegmentLength"]) end
	if struct["ProgramDateTimePeriod"] then asserts.Assert__integerMin0Max3600(struct["ProgramDateTimePeriod"]) end
	if struct["SegmentControl"] then asserts.AssertHlsSegmentControl(struct["SegmentControl"]) end
	if struct["CaptionLanguageSetting"] then asserts.AssertHlsCaptionLanguageSetting(struct["CaptionLanguageSetting"]) end
	if struct["ProgramDateTime"] then asserts.AssertHlsProgramDateTime(struct["ProgramDateTime"]) end
	if struct["StreamInfResolution"] then asserts.AssertHlsStreamInfResolution(struct["StreamInfResolution"]) end
	if struct["ClientCache"] then asserts.AssertHlsClientCache(struct["ClientCache"]) end
	if struct["AdMarkers"] then asserts.Assert__listOfHlsAdMarkers(struct["AdMarkers"]) end
	if struct["SegmentsPerSubdirectory"] then asserts.Assert__integerMin1Max2147483647(struct["SegmentsPerSubdirectory"]) end
	if struct["OutputSelection"] then asserts.AssertHlsOutputSelection(struct["OutputSelection"]) end
	if struct["ManifestCompression"] then asserts.AssertHlsManifestCompression(struct["ManifestCompression"]) end
	if struct["MinSegmentLength"] then asserts.Assert__integerMin0Max2147483647(struct["MinSegmentLength"]) end
	if struct["DirectoryStructure"] then asserts.AssertHlsDirectoryStructure(struct["DirectoryStructure"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsGroupSettings[k], "HlsGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsGroupSettings
-- Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to HLS_GROUP_SETTINGS.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimedMetadataId3Frame [HlsTimedMetadataId3Frame] 
-- * Encryption [HlsEncryptionSettings] DRM settings.
-- * CaptionLanguageMappings [__listOfHlsCaptionLanguageMapping] Language to be used on Caption outputs
-- * Destination [__stringPatternS3] Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
-- * ManifestDurationFormat [HlsManifestDurationFormat] 
-- * CodecSpecification [HlsCodecSpecification] 
-- * TimedMetadataId3Period [__integerMinNegative2147483648Max2147483647] Timed Metadata interval in seconds.
-- * MinFinalSegmentLength [__doubleMin0Max2147483647] Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
-- * TimestampDeltaMilliseconds [__integerMinNegative2147483648Max2147483647] Provides an extra millisecond delta offset to fine tune the timestamps.
-- * BaseUrl [__string] A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
-- * SegmentLength [__integerMin1Max2147483647] Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer.
-- * ProgramDateTimePeriod [__integerMin0Max3600] Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
-- * SegmentControl [HlsSegmentControl] 
-- * CaptionLanguageSetting [HlsCaptionLanguageSetting] 
-- * ProgramDateTime [HlsProgramDateTime] 
-- * StreamInfResolution [HlsStreamInfResolution] 
-- * ClientCache [HlsClientCache] 
-- * AdMarkers [__listOfHlsAdMarkers] Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs.
-- * SegmentsPerSubdirectory [__integerMin1Max2147483647] Number of segments to write to a subdirectory before starting a new one. directoryStructure must be SINGLE_DIRECTORY for this setting to have an effect.
-- * OutputSelection [HlsOutputSelection] 
-- * ManifestCompression [HlsManifestCompression] 
-- * MinSegmentLength [__integerMin0Max2147483647] When set, Minimum Segment Size is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
-- * DirectoryStructure [HlsDirectoryStructure] 
-- @return HlsGroupSettings structure as a key-value pair table
function M.HlsGroupSettings(args)
	assert(args, "You must provide an argument table when creating HlsGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimedMetadataId3Frame"] = args["TimedMetadataId3Frame"],
		["Encryption"] = args["Encryption"],
		["CaptionLanguageMappings"] = args["CaptionLanguageMappings"],
		["Destination"] = args["Destination"],
		["ManifestDurationFormat"] = args["ManifestDurationFormat"],
		["CodecSpecification"] = args["CodecSpecification"],
		["TimedMetadataId3Period"] = args["TimedMetadataId3Period"],
		["MinFinalSegmentLength"] = args["MinFinalSegmentLength"],
		["TimestampDeltaMilliseconds"] = args["TimestampDeltaMilliseconds"],
		["BaseUrl"] = args["BaseUrl"],
		["SegmentLength"] = args["SegmentLength"],
		["ProgramDateTimePeriod"] = args["ProgramDateTimePeriod"],
		["SegmentControl"] = args["SegmentControl"],
		["CaptionLanguageSetting"] = args["CaptionLanguageSetting"],
		["ProgramDateTime"] = args["ProgramDateTime"],
		["StreamInfResolution"] = args["StreamInfResolution"],
		["ClientCache"] = args["ClientCache"],
		["AdMarkers"] = args["AdMarkers"],
		["SegmentsPerSubdirectory"] = args["SegmentsPerSubdirectory"],
		["OutputSelection"] = args["OutputSelection"],
		["ManifestCompression"] = args["ManifestCompression"],
		["MinSegmentLength"] = args["MinSegmentLength"],
		["DirectoryStructure"] = args["DirectoryStructure"],
	}
	asserts.AssertHlsGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsSettings = { ["SegmentModifier"] = true, ["IFrameOnlyManifest"] = true, ["AudioGroupId"] = true, ["AudioTrackType"] = true, ["AudioRenditionSets"] = true, nil }

function asserts.AssertHlsSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsSettings to be of type 'table'")
	if struct["SegmentModifier"] then asserts.Assert__string(struct["SegmentModifier"]) end
	if struct["IFrameOnlyManifest"] then asserts.AssertHlsIFrameOnlyManifest(struct["IFrameOnlyManifest"]) end
	if struct["AudioGroupId"] then asserts.Assert__string(struct["AudioGroupId"]) end
	if struct["AudioTrackType"] then asserts.AssertHlsAudioTrackType(struct["AudioTrackType"]) end
	if struct["AudioRenditionSets"] then asserts.Assert__string(struct["AudioRenditionSets"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsSettings[k], "HlsSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsSettings
-- Settings for HLS output groups
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentModifier [__string] String concatenated to end of segment filenames. Accepts "Format Identifiers":#format_identifier_parameters.
-- * IFrameOnlyManifest [HlsIFrameOnlyManifest] 
-- * AudioGroupId [__string] Specifies the group to which the audio Rendition belongs.
-- * AudioTrackType [HlsAudioTrackType] 
-- * AudioRenditionSets [__string] List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
-- @return HlsSettings structure as a key-value pair table
function M.HlsSettings(args)
	assert(args, "You must provide an argument table when creating HlsSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentModifier"] = args["SegmentModifier"],
		["IFrameOnlyManifest"] = args["IFrameOnlyManifest"],
		["AudioGroupId"] = args["AudioGroupId"],
		["AudioTrackType"] = args["AudioTrackType"],
		["AudioRenditionSets"] = args["AudioRenditionSets"],
	}
	asserts.AssertHlsSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MsSmoothGroupSettings = { ["Destination"] = true, ["Encryption"] = true, ["FragmentLength"] = true, ["AudioDeduplication"] = true, ["ManifestEncoding"] = true, nil }

function asserts.AssertMsSmoothGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MsSmoothGroupSettings to be of type 'table'")
	if struct["Destination"] then asserts.Assert__stringPatternS3(struct["Destination"]) end
	if struct["Encryption"] then asserts.AssertMsSmoothEncryptionSettings(struct["Encryption"]) end
	if struct["FragmentLength"] then asserts.Assert__integerMin1Max2147483647(struct["FragmentLength"]) end
	if struct["AudioDeduplication"] then asserts.AssertMsSmoothAudioDeduplication(struct["AudioDeduplication"]) end
	if struct["ManifestEncoding"] then asserts.AssertMsSmoothManifestEncoding(struct["ManifestEncoding"]) end
	for k,_ in pairs(struct) do
		assert(keys.MsSmoothGroupSettings[k], "MsSmoothGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MsSmoothGroupSettings
-- Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to MS_SMOOTH_GROUP_SETTINGS.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Destination [__stringPatternS3] Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
-- * Encryption [MsSmoothEncryptionSettings] 
-- * FragmentLength [__integerMin1Max2147483647] Use Fragment length (FragmentLength) to specify the mp4 fragment sizes in seconds. Fragment length must be compatible with GOP size and framerate.
-- * AudioDeduplication [MsSmoothAudioDeduplication] 
-- * ManifestEncoding [MsSmoothManifestEncoding] 
-- @return MsSmoothGroupSettings structure as a key-value pair table
function M.MsSmoothGroupSettings(args)
	assert(args, "You must provide an argument table when creating MsSmoothGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Destination"] = args["Destination"],
		["Encryption"] = args["Encryption"],
		["FragmentLength"] = args["FragmentLength"],
		["AudioDeduplication"] = args["AudioDeduplication"],
		["ManifestEncoding"] = args["ManifestEncoding"],
	}
	asserts.AssertMsSmoothGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CmafEncryptionSettings = { ["ConstantInitializationVector"] = true, ["Type"] = true, ["EncryptionMethod"] = true, ["StaticKeyProvider"] = true, ["InitializationVectorInManifest"] = true, nil }

function asserts.AssertCmafEncryptionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CmafEncryptionSettings to be of type 'table'")
	if struct["ConstantInitializationVector"] then asserts.Assert__stringMin32Max32Pattern09aFAF32(struct["ConstantInitializationVector"]) end
	if struct["Type"] then asserts.AssertCmafKeyProviderType(struct["Type"]) end
	if struct["EncryptionMethod"] then asserts.AssertCmafEncryptionType(struct["EncryptionMethod"]) end
	if struct["StaticKeyProvider"] then asserts.AssertStaticKeyProvider(struct["StaticKeyProvider"]) end
	if struct["InitializationVectorInManifest"] then asserts.AssertCmafInitializationVectorInManifest(struct["InitializationVectorInManifest"]) end
	for k,_ in pairs(struct) do
		assert(keys.CmafEncryptionSettings[k], "CmafEncryptionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CmafEncryptionSettings
-- Settings for CMAF encryption
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConstantInitializationVector [__stringMin32Max32Pattern09aFAF32] This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default.
-- * Type [CmafKeyProviderType] 
-- * EncryptionMethod [CmafEncryptionType] 
-- * StaticKeyProvider [StaticKeyProvider] 
-- * InitializationVectorInManifest [CmafInitializationVectorInManifest] 
-- @return CmafEncryptionSettings structure as a key-value pair table
function M.CmafEncryptionSettings(args)
	assert(args, "You must provide an argument table when creating CmafEncryptionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConstantInitializationVector"] = args["ConstantInitializationVector"],
		["Type"] = args["Type"],
		["EncryptionMethod"] = args["EncryptionMethod"],
		["StaticKeyProvider"] = args["StaticKeyProvider"],
		["InitializationVectorInManifest"] = args["InitializationVectorInManifest"],
	}
	asserts.AssertCmafEncryptionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteJobTemplateResponse = { nil }

function asserts.AssertDeleteJobTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteJobTemplateResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteJobTemplateResponse[k], "DeleteJobTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteJobTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteJobTemplateResponse structure as a key-value pair table
function M.DeleteJobTemplateResponse(args)
	assert(args, "You must provide an argument table when creating DeleteJobTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteJobTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateQueueResponse = { ["Queue"] = true, nil }

function asserts.AssertUpdateQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateQueueResponse to be of type 'table'")
	if struct["Queue"] then asserts.AssertQueue(struct["Queue"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateQueueResponse[k], "UpdateQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateQueueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Queue [Queue] 
-- @return UpdateQueueResponse structure as a key-value pair table
function M.UpdateQueueResponse(args)
	assert(args, "You must provide an argument table when creating UpdateQueueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Queue"] = args["Queue"],
	}
	asserts.AssertUpdateQueueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SpekeKeyProvider = { ["Url"] = true, ["ResourceId"] = true, ["SystemIds"] = true, nil }

function asserts.AssertSpekeKeyProvider(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SpekeKeyProvider to be of type 'table'")
	if struct["Url"] then asserts.Assert__stringPatternHttps(struct["Url"]) end
	if struct["ResourceId"] then asserts.Assert__string(struct["ResourceId"]) end
	if struct["SystemIds"] then asserts.Assert__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12(struct["SystemIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.SpekeKeyProvider[k], "SpekeKeyProvider contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SpekeKeyProvider
-- Settings for use with a SPEKE key provider
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [__stringPatternHttps] Use URL (Url) to specify the SPEKE-compliant server that will provide keys for content.
-- * ResourceId [__string] The SPEKE-compliant server uses Resource ID (ResourceId) to identify content.
-- * SystemIds [__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12] Relates to SPEKE implementation. DRM system identifiers. DASH output groups support a max of two system ids. Other group types support one system id.
-- @return SpekeKeyProvider structure as a key-value pair table
function M.SpekeKeyProvider(args)
	assert(args, "You must provide an argument table when creating SpekeKeyProvider")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["ResourceId"] = args["ResourceId"],
		["SystemIds"] = args["SystemIds"],
	}
	asserts.AssertSpekeKeyProvider(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobResponse = { ["Job"] = true, nil }

function asserts.AssertGetJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobResponse to be of type 'table'")
	if struct["Job"] then asserts.AssertJob(struct["Job"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobResponse[k], "GetJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Job [Job] 
-- @return GetJobResponse structure as a key-value pair table
function M.GetJobResponse(args)
	assert(args, "You must provide an argument table when creating GetJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Job"] = args["Job"],
	}
	asserts.AssertGetJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChannelMapping = { ["OutputChannels"] = true, nil }

function asserts.AssertChannelMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChannelMapping to be of type 'table'")
	if struct["OutputChannels"] then asserts.Assert__listOfOutputChannelMapping(struct["OutputChannels"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChannelMapping[k], "ChannelMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChannelMapping
-- Channel mapping (ChannelMapping) contains the group of fields that hold the remixing value for each channel. Units are in dB. Acceptable values are within the range from -60 (mute) through 6. A setting of 0 passes the input channel unchanged to the output channel (no attenuation or amplification).
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputChannels [__listOfOutputChannelMapping] List of output channels
-- @return ChannelMapping structure as a key-value pair table
function M.ChannelMapping(args)
	assert(args, "You must provide an argument table when creating ChannelMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutputChannels"] = args["OutputChannels"],
	}
	asserts.AssertChannelMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MovSettings = { ["ClapAtom"] = true, ["Reference"] = true, ["PaddingControl"] = true, ["Mpeg2FourCCControl"] = true, ["CslgAtom"] = true, nil }

function asserts.AssertMovSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MovSettings to be of type 'table'")
	if struct["ClapAtom"] then asserts.AssertMovClapAtom(struct["ClapAtom"]) end
	if struct["Reference"] then asserts.AssertMovReference(struct["Reference"]) end
	if struct["PaddingControl"] then asserts.AssertMovPaddingControl(struct["PaddingControl"]) end
	if struct["Mpeg2FourCCControl"] then asserts.AssertMovMpeg2FourCCControl(struct["Mpeg2FourCCControl"]) end
	if struct["CslgAtom"] then asserts.AssertMovCslgAtom(struct["CslgAtom"]) end
	for k,_ in pairs(struct) do
		assert(keys.MovSettings[k], "MovSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MovSettings
-- Settings for MOV Container.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClapAtom [MovClapAtom] 
-- * Reference [MovReference] 
-- * PaddingControl [MovPaddingControl] 
-- * Mpeg2FourCCControl [MovMpeg2FourCCControl] 
-- * CslgAtom [MovCslgAtom] 
-- @return MovSettings structure as a key-value pair table
function M.MovSettings(args)
	assert(args, "You must provide an argument table when creating MovSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClapAtom"] = args["ClapAtom"],
		["Reference"] = args["Reference"],
		["PaddingControl"] = args["PaddingControl"],
		["Mpeg2FourCCControl"] = args["Mpeg2FourCCControl"],
		["CslgAtom"] = args["CslgAtom"],
	}
	asserts.AssertMovSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputChannelMapping = { ["InputChannels"] = true, nil }

function asserts.AssertOutputChannelMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputChannelMapping to be of type 'table'")
	if struct["InputChannels"] then asserts.Assert__listOf__integerMinNegative60Max6(struct["InputChannels"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputChannelMapping[k], "OutputChannelMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputChannelMapping
-- OutputChannel mapping settings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputChannels [__listOf__integerMinNegative60Max6] List of input channels
-- @return OutputChannelMapping structure as a key-value pair table
function M.OutputChannelMapping(args)
	assert(args, "You must provide an argument table when creating OutputChannelMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputChannels"] = args["InputChannels"],
	}
	asserts.AssertOutputChannelMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TeletextSourceSettings = { ["PageNumber"] = true, nil }

function asserts.AssertTeletextSourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeletextSourceSettings to be of type 'table'")
	if struct["PageNumber"] then asserts.Assert__stringMin3Max3Pattern1809aFAF09aEAE(struct["PageNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.TeletextSourceSettings[k], "TeletextSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeletextSourceSettings
-- Settings specific to Teletext caption sources, including Page number.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageNumber [__stringMin3Max3Pattern1809aFAF09aEAE] Use Page Number (PageNumber) to specify the three-digit hexadecimal page number that will be used for Teletext captions. Do not use this setting if you are passing through teletext from the input source to output.
-- @return TeletextSourceSettings structure as a key-value pair table
function M.TeletextSourceSettings(args)
	assert(args, "You must provide an argument table when creating TeletextSourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PageNumber"] = args["PageNumber"],
	}
	asserts.AssertTeletextSourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobRequest = { ["Id"] = true, nil }

function asserts.AssertCancelJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelJobRequest[k], "CancelJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The Job ID of the job to be cancelled.
-- Required key: Id
-- @return CancelJobRequest structure as a key-value pair table
function M.CancelJobRequest(args)
	assert(args, "You must provide an argument table when creating CancelJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertCancelJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoPreprocessor = { ["ColorCorrector"] = true, ["ImageInserter"] = true, ["TimecodeBurnin"] = true, ["NoiseReducer"] = true, ["Deinterlacer"] = true, nil }

function asserts.AssertVideoPreprocessor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoPreprocessor to be of type 'table'")
	if struct["ColorCorrector"] then asserts.AssertColorCorrector(struct["ColorCorrector"]) end
	if struct["ImageInserter"] then asserts.AssertImageInserter(struct["ImageInserter"]) end
	if struct["TimecodeBurnin"] then asserts.AssertTimecodeBurnin(struct["TimecodeBurnin"]) end
	if struct["NoiseReducer"] then asserts.AssertNoiseReducer(struct["NoiseReducer"]) end
	if struct["Deinterlacer"] then asserts.AssertDeinterlacer(struct["Deinterlacer"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoPreprocessor[k], "VideoPreprocessor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoPreprocessor
-- Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ColorCorrector [ColorCorrector] Enable the Color corrector (ColorCorrector) feature if necessary. Enable or disable this feature for each output individually. This setting is disabled by default.
-- * ImageInserter [ImageInserter] Enable the Image inserter (ImageInserter) feature to include a graphic overlay on your video. Enable or disable this feature for each output individually. This setting is disabled by default.
-- * TimecodeBurnin [TimecodeBurnin] Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and specified prefix into the output.
-- * NoiseReducer [NoiseReducer] Enable the Noise reducer (NoiseReducer) feature to remove noise from your video output if necessary. Enable or disable this feature for each output individually. This setting is disabled by default.
-- * Deinterlacer [Deinterlacer] Use Deinterlacer (Deinterlacer) to produce smoother motion and a clearer picture.
-- @return VideoPreprocessor structure as a key-value pair table
function M.VideoPreprocessor(args)
	assert(args, "You must provide an argument table when creating VideoPreprocessor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ColorCorrector"] = args["ColorCorrector"],
		["ImageInserter"] = args["ImageInserter"],
		["TimecodeBurnin"] = args["TimecodeBurnin"],
		["NoiseReducer"] = args["NoiseReducer"],
		["Deinterlacer"] = args["Deinterlacer"],
	}
	asserts.AssertVideoPreprocessor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StaticKeyProvider = { ["StaticKeyValue"] = true, ["KeyFormat"] = true, ["Url"] = true, ["KeyFormatVersions"] = true, nil }

function asserts.AssertStaticKeyProvider(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StaticKeyProvider to be of type 'table'")
	if struct["StaticKeyValue"] then asserts.Assert__stringPatternAZaZ0932(struct["StaticKeyValue"]) end
	if struct["KeyFormat"] then asserts.Assert__stringPatternIdentityAZaZ26AZaZ09163(struct["KeyFormat"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["KeyFormatVersions"] then asserts.Assert__stringPatternDD(struct["KeyFormatVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.StaticKeyProvider[k], "StaticKeyProvider contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StaticKeyProvider
-- Settings for use with a SPEKE key provider.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StaticKeyValue [__stringPatternAZaZ0932] Relates to DRM implementation. Use a 32-character hexidecimal string to specify Key Value (StaticKeyValue).
-- * KeyFormat [__stringPatternIdentityAZaZ26AZaZ09163] Relates to DRM implementation. Sets the value of the KEYFORMAT attribute. Must be 'identity' or a reverse DNS string. May be omitted to indicate an implicit value of 'identity'.
-- * Url [__string] Relates to DRM implementation. The location of the license server used for protecting content.
-- * KeyFormatVersions [__stringPatternDD] Relates to DRM implementation. Either a single positive integer version value or a slash delimited list of version values (1/2/3).
-- @return StaticKeyProvider structure as a key-value pair table
function M.StaticKeyProvider(args)
	assert(args, "You must provide an argument table when creating StaticKeyProvider")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StaticKeyValue"] = args["StaticKeyValue"],
		["KeyFormat"] = args["KeyFormat"],
		["Url"] = args["Url"],
		["KeyFormatVersions"] = args["KeyFormatVersions"],
	}
	asserts.AssertStaticKeyProvider(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Preset = { ["Category"] = true, ["Name"] = true, ["Settings"] = true, ["LastUpdated"] = true, ["Arn"] = true, ["Type"] = true, ["CreatedAt"] = true, ["Description"] = true, nil }

function asserts.AssertPreset(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Preset to be of type 'table'")
	assert(struct["Settings"], "Expected key Settings to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["Settings"] then asserts.AssertPresetSettings(struct["Settings"]) end
	if struct["LastUpdated"] then asserts.Assert__timestampUnix(struct["LastUpdated"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Type"] then asserts.AssertType(struct["Type"]) end
	if struct["CreatedAt"] then asserts.Assert__timestampUnix(struct["CreatedAt"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Preset[k], "Preset contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Preset
-- A preset is a collection of preconfigured media conversion settings that you want MediaConvert to apply to the output during the conversion process.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Category [__string] An optional category you create to organize your presets.
-- * Name [__string] A name you create for each preset. Each name must be unique within your account.
-- * Settings [PresetSettings] 
-- * LastUpdated [__timestampUnix] The timestamp in epoch seconds when the preset was last updated.
-- * Arn [__string] An identifier for this resource that is unique within all of AWS.
-- * Type [Type] A preset can be of two types: system or custom. System or built-in preset can't be modified or deleted by the user.
-- * CreatedAt [__timestampUnix] The timestamp in epoch seconds for preset creation.
-- * Description [__string] An optional description you create for each preset.
-- Required key: Settings
-- Required key: Name
-- @return Preset structure as a key-value pair table
function M.Preset(args)
	assert(args, "You must provide an argument table when creating Preset")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Category"] = args["Category"],
		["Name"] = args["Name"],
		["Settings"] = args["Settings"],
		["LastUpdated"] = args["LastUpdated"],
		["Arn"] = args["Arn"],
		["Type"] = args["Type"],
		["CreatedAt"] = args["CreatedAt"],
		["Description"] = args["Description"],
	}
	asserts.AssertPreset(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimedMetadataInsertion = { ["Id3Insertions"] = true, nil }

function asserts.AssertTimedMetadataInsertion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimedMetadataInsertion to be of type 'table'")
	if struct["Id3Insertions"] then asserts.Assert__listOfId3Insertion(struct["Id3Insertions"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimedMetadataInsertion[k], "TimedMetadataInsertion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimedMetadataInsertion
-- Enable Timed metadata insertion (TimedMetadataInsertion) to include ID3 tags in your job. To include timed metadata, you must enable it here, enable it in each output container, and specify tags and timecodes in ID3 insertion (Id3Insertion) objects.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id3Insertions [__listOfId3Insertion] Id3Insertions contains the array of Id3Insertion instances.
-- @return TimedMetadataInsertion structure as a key-value pair table
function M.TimedMetadataInsertion(args)
	assert(args, "You must provide an argument table when creating TimedMetadataInsertion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id3Insertions"] = args["Id3Insertions"],
	}
	asserts.AssertTimedMetadataInsertion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ProresSettings = { ["SlowPal"] = true, ["ParControl"] = true, ["FramerateConversionAlgorithm"] = true, ["CodecProfile"] = true, ["Telecine"] = true, ["ParDenominator"] = true, ["ParNumerator"] = true, ["FramerateControl"] = true, ["InterlaceMode"] = true, ["FramerateDenominator"] = true, ["FramerateNumerator"] = true, nil }

function asserts.AssertProresSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ProresSettings to be of type 'table'")
	if struct["SlowPal"] then asserts.AssertProresSlowPal(struct["SlowPal"]) end
	if struct["ParControl"] then asserts.AssertProresParControl(struct["ParControl"]) end
	if struct["FramerateConversionAlgorithm"] then asserts.AssertProresFramerateConversionAlgorithm(struct["FramerateConversionAlgorithm"]) end
	if struct["CodecProfile"] then asserts.AssertProresCodecProfile(struct["CodecProfile"]) end
	if struct["Telecine"] then asserts.AssertProresTelecine(struct["Telecine"]) end
	if struct["ParDenominator"] then asserts.Assert__integerMin1Max2147483647(struct["ParDenominator"]) end
	if struct["ParNumerator"] then asserts.Assert__integerMin1Max2147483647(struct["ParNumerator"]) end
	if struct["FramerateControl"] then asserts.AssertProresFramerateControl(struct["FramerateControl"]) end
	if struct["InterlaceMode"] then asserts.AssertProresInterlaceMode(struct["InterlaceMode"]) end
	if struct["FramerateDenominator"] then asserts.Assert__integerMin1Max2147483647(struct["FramerateDenominator"]) end
	if struct["FramerateNumerator"] then asserts.Assert__integerMin1Max2147483647(struct["FramerateNumerator"]) end
	for k,_ in pairs(struct) do
		assert(keys.ProresSettings[k], "ProresSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ProresSettings
-- Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value PRORES.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SlowPal [ProresSlowPal] 
-- * ParControl [ProresParControl] 
-- * FramerateConversionAlgorithm [ProresFramerateConversionAlgorithm] 
-- * CodecProfile [ProresCodecProfile] 
-- * Telecine [ProresTelecine] 
-- * ParDenominator [__integerMin1Max2147483647] Pixel Aspect Ratio denominator.
-- * ParNumerator [__integerMin1Max2147483647] Pixel Aspect Ratio numerator.
-- * FramerateControl [ProresFramerateControl] 
-- * InterlaceMode [ProresInterlaceMode] 
-- * FramerateDenominator [__integerMin1Max2147483647] Framerate denominator.
-- * FramerateNumerator [__integerMin1Max2147483647] When you use the API for transcode jobs that use framerate conversion, specify the framerate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateNumerator to specify the numerator of this fraction. In this example, use 24000 for the value of FramerateNumerator.
-- @return ProresSettings structure as a key-value pair table
function M.ProresSettings(args)
	assert(args, "You must provide an argument table when creating ProresSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SlowPal"] = args["SlowPal"],
		["ParControl"] = args["ParControl"],
		["FramerateConversionAlgorithm"] = args["FramerateConversionAlgorithm"],
		["CodecProfile"] = args["CodecProfile"],
		["Telecine"] = args["Telecine"],
		["ParDenominator"] = args["ParDenominator"],
		["ParNumerator"] = args["ParNumerator"],
		["FramerateControl"] = args["FramerateControl"],
		["InterlaceMode"] = args["InterlaceMode"],
		["FramerateDenominator"] = args["FramerateDenominator"],
		["FramerateNumerator"] = args["FramerateNumerator"],
	}
	asserts.AssertProresSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputTemplate = { ["AudioSelectors"] = true, ["CaptionSelectors"] = true, ["AudioSelectorGroups"] = true, ["FilterEnable"] = true, ["TimecodeSource"] = true, ["PsiControl"] = true, ["FilterStrength"] = true, ["ProgramNumber"] = true, ["DenoiseFilter"] = true, ["InputClippings"] = true, ["VideoSelector"] = true, ["DeblockFilter"] = true, nil }

function asserts.AssertInputTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputTemplate to be of type 'table'")
	if struct["AudioSelectors"] then asserts.Assert__mapOfAudioSelector(struct["AudioSelectors"]) end
	if struct["CaptionSelectors"] then asserts.Assert__mapOfCaptionSelector(struct["CaptionSelectors"]) end
	if struct["AudioSelectorGroups"] then asserts.Assert__mapOfAudioSelectorGroup(struct["AudioSelectorGroups"]) end
	if struct["FilterEnable"] then asserts.AssertInputFilterEnable(struct["FilterEnable"]) end
	if struct["TimecodeSource"] then asserts.AssertInputTimecodeSource(struct["TimecodeSource"]) end
	if struct["PsiControl"] then asserts.AssertInputPsiControl(struct["PsiControl"]) end
	if struct["FilterStrength"] then asserts.Assert__integerMinNegative5Max5(struct["FilterStrength"]) end
	if struct["ProgramNumber"] then asserts.Assert__integerMin1Max2147483647(struct["ProgramNumber"]) end
	if struct["DenoiseFilter"] then asserts.AssertInputDenoiseFilter(struct["DenoiseFilter"]) end
	if struct["InputClippings"] then asserts.Assert__listOfInputClipping(struct["InputClippings"]) end
	if struct["VideoSelector"] then asserts.AssertVideoSelector(struct["VideoSelector"]) end
	if struct["DeblockFilter"] then asserts.AssertInputDeblockFilter(struct["DeblockFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputTemplate[k], "InputTemplate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputTemplate
-- Specified video input in a template.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AudioSelectors [__mapOfAudioSelector] Use Audio selectors (AudioSelectors) to specify a track or set of tracks from the input that you will use in your outputs. You can use mutiple Audio selectors per input.
-- * CaptionSelectors [__mapOfCaptionSelector] Use Captions selectors (CaptionSelectors) to specify the captions data from the input that you will use in your outputs. You can use mutiple captions selectors per input.
-- * AudioSelectorGroups [__mapOfAudioSelectorGroup] Specifies set of audio selectors within an input to combine. An input may have multiple audio selector groups. See "Audio Selector Group":#inputs-audio_selector_group for more information.
-- * FilterEnable [InputFilterEnable] 
-- * TimecodeSource [InputTimecodeSource] 
-- * PsiControl [InputPsiControl] 
-- * FilterStrength [__integerMinNegative5Max5] Use Filter strength (FilterStrength) to adjust the magnitude the input filter settings (Deblock and Denoise). The range is -5 to 5. Default is 0.
-- * ProgramNumber [__integerMin1Max2147483647] Use Program (programNumber) to select a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported. Default is the first program within the transport stream. If the program you specify doesn't exist, the transcoding service will use this default.
-- * DenoiseFilter [InputDenoiseFilter] 
-- * InputClippings [__listOfInputClipping] (InputClippings) contains sets of start and end times that together specify a portion of the input to be used in the outputs. If you provide only a start time, the clip will be the entire input from that point to the end. If you provide only an end time, it will be the entire input up to that point. When you specify more than one input clip, the transcoding service creates the job outputs by stringing the clips together in the order you specify them.
-- * VideoSelector [VideoSelector] 
-- * DeblockFilter [InputDeblockFilter] 
-- @return InputTemplate structure as a key-value pair table
function M.InputTemplate(args)
	assert(args, "You must provide an argument table when creating InputTemplate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AudioSelectors"] = args["AudioSelectors"],
		["CaptionSelectors"] = args["CaptionSelectors"],
		["AudioSelectorGroups"] = args["AudioSelectorGroups"],
		["FilterEnable"] = args["FilterEnable"],
		["TimecodeSource"] = args["TimecodeSource"],
		["PsiControl"] = args["PsiControl"],
		["FilterStrength"] = args["FilterStrength"],
		["ProgramNumber"] = args["ProgramNumber"],
		["DenoiseFilter"] = args["DenoiseFilter"],
		["InputClippings"] = args["InputClippings"],
		["VideoSelector"] = args["VideoSelector"],
		["DeblockFilter"] = args["DeblockFilter"],
	}
	asserts.AssertInputTemplate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobResponse = { ["Job"] = true, nil }

function asserts.AssertCreateJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobResponse to be of type 'table'")
	if struct["Job"] then asserts.AssertJob(struct["Job"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobResponse[k], "CreateJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Job [Job] 
-- @return CreateJobResponse structure as a key-value pair table
function M.CreateJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Job"] = args["Job"],
	}
	asserts.AssertCreateJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Job = { ["Status"] = true, ["JobTemplate"] = true, ["OutputGroupDetails"] = true, ["Settings"] = true, ["ErrorMessage"] = true, ["Queue"] = true, ["ErrorCode"] = true, ["Timing"] = true, ["Role"] = true, ["Arn"] = true, ["UserMetadata"] = true, ["BillingTagsSource"] = true, ["Id"] = true, ["CreatedAt"] = true, nil }

function asserts.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["Settings"], "Expected key Settings to exist in table")
	if struct["Status"] then asserts.AssertJobStatus(struct["Status"]) end
	if struct["JobTemplate"] then asserts.Assert__string(struct["JobTemplate"]) end
	if struct["OutputGroupDetails"] then asserts.Assert__listOfOutputGroupDetail(struct["OutputGroupDetails"]) end
	if struct["Settings"] then asserts.AssertJobSettings(struct["Settings"]) end
	if struct["ErrorMessage"] then asserts.Assert__string(struct["ErrorMessage"]) end
	if struct["Queue"] then asserts.Assert__string(struct["Queue"]) end
	if struct["ErrorCode"] then asserts.Assert__integer(struct["ErrorCode"]) end
	if struct["Timing"] then asserts.AssertTiming(struct["Timing"]) end
	if struct["Role"] then asserts.Assert__string(struct["Role"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["UserMetadata"] then asserts.Assert__mapOf__string(struct["UserMetadata"]) end
	if struct["BillingTagsSource"] then asserts.AssertBillingTagsSource(struct["BillingTagsSource"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["CreatedAt"] then asserts.Assert__timestampUnix(struct["CreatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.Job[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- Each job converts an input file into an output file or files. For more information, see the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [JobStatus] 
-- * JobTemplate [__string] The job template that the job is created from, if it is created from a job template.
-- * OutputGroupDetails [__listOfOutputGroupDetail] List of output group details
-- * Settings [JobSettings] 
-- * ErrorMessage [__string] Error message of Job
-- * Queue [__string] Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html
-- * ErrorCode [__integer] Error code for the job
-- * Timing [Timing] 
-- * Role [__string] The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html
-- * Arn [__string] An identifier for this resource that is unique within all of AWS.
-- * UserMetadata [__mapOf__string] User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.
-- * BillingTagsSource [BillingTagsSource] 
-- * Id [__string] A portion of the job's ARN, unique within your AWS Elemental MediaConvert resources
-- * CreatedAt [__timestampUnix] The time, in Unix epoch format in seconds, when the job got created.
-- Required key: Role
-- Required key: Settings
-- @return Job structure as a key-value pair table
function M.Job(args)
	assert(args, "You must provide an argument table when creating Job")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["JobTemplate"] = args["JobTemplate"],
		["OutputGroupDetails"] = args["OutputGroupDetails"],
		["Settings"] = args["Settings"],
		["ErrorMessage"] = args["ErrorMessage"],
		["Queue"] = args["Queue"],
		["ErrorCode"] = args["ErrorCode"],
		["Timing"] = args["Timing"],
		["Role"] = args["Role"],
		["Arn"] = args["Arn"],
		["UserMetadata"] = args["UserMetadata"],
		["BillingTagsSource"] = args["BillingTagsSource"],
		["Id"] = args["Id"],
		["CreatedAt"] = args["CreatedAt"],
	}
	asserts.AssertJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Hdr10Metadata = { ["RedPrimaryX"] = true, ["MaxFrameAverageLightLevel"] = true, ["GreenPrimaryX"] = true, ["GreenPrimaryY"] = true, ["BluePrimaryX"] = true, ["BluePrimaryY"] = true, ["MaxLuminance"] = true, ["RedPrimaryY"] = true, ["MinLuminance"] = true, ["WhitePointY"] = true, ["WhitePointX"] = true, ["MaxContentLightLevel"] = true, nil }

function asserts.AssertHdr10Metadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Hdr10Metadata to be of type 'table'")
	if struct["RedPrimaryX"] then asserts.Assert__integerMin0Max50000(struct["RedPrimaryX"]) end
	if struct["MaxFrameAverageLightLevel"] then asserts.Assert__integerMin0Max65535(struct["MaxFrameAverageLightLevel"]) end
	if struct["GreenPrimaryX"] then asserts.Assert__integerMin0Max50000(struct["GreenPrimaryX"]) end
	if struct["GreenPrimaryY"] then asserts.Assert__integerMin0Max50000(struct["GreenPrimaryY"]) end
	if struct["BluePrimaryX"] then asserts.Assert__integerMin0Max50000(struct["BluePrimaryX"]) end
	if struct["BluePrimaryY"] then asserts.Assert__integerMin0Max50000(struct["BluePrimaryY"]) end
	if struct["MaxLuminance"] then asserts.Assert__integerMin0Max2147483647(struct["MaxLuminance"]) end
	if struct["RedPrimaryY"] then asserts.Assert__integerMin0Max50000(struct["RedPrimaryY"]) end
	if struct["MinLuminance"] then asserts.Assert__integerMin0Max2147483647(struct["MinLuminance"]) end
	if struct["WhitePointY"] then asserts.Assert__integerMin0Max50000(struct["WhitePointY"]) end
	if struct["WhitePointX"] then asserts.Assert__integerMin0Max50000(struct["WhitePointX"]) end
	if struct["MaxContentLightLevel"] then asserts.Assert__integerMin0Max65535(struct["MaxContentLightLevel"]) end
	for k,_ in pairs(struct) do
		assert(keys.Hdr10Metadata[k], "Hdr10Metadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Hdr10Metadata
-- Use the HDR master display (Hdr10Metadata) settings to correct HDR metadata or to provide missing metadata. These values vary depending on the input video and must be provided by a color grader. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that these settings are not color correction. Note that if you are creating HDR outputs inside of an HLS CMAF package, to comply with the Apple specification, you must use the HVC1 for H.265 setting.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RedPrimaryX [__integerMin0Max50000] HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
-- * MaxFrameAverageLightLevel [__integerMin0Max65535] Maximum average light level of any frame in the coded video sequence, in units of candelas per square meter.
-- * GreenPrimaryX [__integerMin0Max50000] HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
-- * GreenPrimaryY [__integerMin0Max50000] HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
-- * BluePrimaryX [__integerMin0Max50000] HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
-- * BluePrimaryY [__integerMin0Max50000] HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
-- * MaxLuminance [__integerMin0Max2147483647] Nominal maximum mastering display luminance in units of of 0.0001 candelas per square meter.
-- * RedPrimaryY [__integerMin0Max50000] HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
-- * MinLuminance [__integerMin0Max2147483647] Nominal minimum mastering display luminance in units of of 0.0001 candelas per square meter
-- * WhitePointY [__integerMin0Max50000] HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
-- * WhitePointX [__integerMin0Max50000] HDR Master Display Information must be provided by a color grader, using color grading tools. Range is 0 to 50,000, each increment represents 0.00002 in CIE1931 color coordinate. Note that this setting is not for color correction.
-- * MaxContentLightLevel [__integerMin0Max65535] Maximum light level among all samples in the coded video sequence, in units of candelas per square meter.
-- @return Hdr10Metadata structure as a key-value pair table
function M.Hdr10Metadata(args)
	assert(args, "You must provide an argument table when creating Hdr10Metadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RedPrimaryX"] = args["RedPrimaryX"],
		["MaxFrameAverageLightLevel"] = args["MaxFrameAverageLightLevel"],
		["GreenPrimaryX"] = args["GreenPrimaryX"],
		["GreenPrimaryY"] = args["GreenPrimaryY"],
		["BluePrimaryX"] = args["BluePrimaryX"],
		["BluePrimaryY"] = args["BluePrimaryY"],
		["MaxLuminance"] = args["MaxLuminance"],
		["RedPrimaryY"] = args["RedPrimaryY"],
		["MinLuminance"] = args["MinLuminance"],
		["WhitePointY"] = args["WhitePointY"],
		["WhitePointX"] = args["WhitePointX"],
		["MaxContentLightLevel"] = args["MaxContentLightLevel"],
	}
	asserts.AssertHdr10Metadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.H264QvbrSettings = { ["QvbrQualityLevel"] = true, ["MaxAverageBitrate"] = true, nil }

function asserts.AssertH264QvbrSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected H264QvbrSettings to be of type 'table'")
	if struct["QvbrQualityLevel"] then asserts.Assert__integerMin1Max10(struct["QvbrQualityLevel"]) end
	if struct["MaxAverageBitrate"] then asserts.Assert__integerMin1000Max1152000000(struct["MaxAverageBitrate"]) end
	for k,_ in pairs(struct) do
		assert(keys.H264QvbrSettings[k], "H264QvbrSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type H264QvbrSettings
-- Settings for quality-defined variable bitrate encoding with the H.264 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QvbrQualityLevel [__integerMin1Max10] Required when you use QVBR rate control mode. That is, when you specify qvbrSettings within h264Settings. Specify the target quality level for this output, from 1 to 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9.
-- * MaxAverageBitrate [__integerMin1000Max1152000000] Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output.
-- @return H264QvbrSettings structure as a key-value pair table
function M.H264QvbrSettings(args)
	assert(args, "You must provide an argument table when creating H264QvbrSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QvbrQualityLevel"] = args["QvbrQualityLevel"],
		["MaxAverageBitrate"] = args["MaxAverageBitrate"],
	}
	asserts.AssertH264QvbrSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsCaptionLanguageMapping = { ["CaptionChannel"] = true, ["LanguageDescription"] = true, ["CustomLanguageCode"] = true, ["LanguageCode"] = true, nil }

function asserts.AssertHlsCaptionLanguageMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsCaptionLanguageMapping to be of type 'table'")
	if struct["CaptionChannel"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["CaptionChannel"]) end
	if struct["LanguageDescription"] then asserts.Assert__string(struct["LanguageDescription"]) end
	if struct["CustomLanguageCode"] then asserts.Assert__stringMin3Max3PatternAZaZ3(struct["CustomLanguageCode"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsCaptionLanguageMapping[k], "HlsCaptionLanguageMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsCaptionLanguageMapping
-- Caption Language Mapping
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CaptionChannel [__integerMinNegative2147483648Max2147483647] Caption channel.
-- * LanguageDescription [__string] Caption language description.
-- * CustomLanguageCode [__stringMin3Max3PatternAZaZ3] Specify the language for this caption channel, using the ISO 639-2 or ISO 639-3 three-letter language code
-- * LanguageCode [LanguageCode] 
-- @return HlsCaptionLanguageMapping structure as a key-value pair table
function M.HlsCaptionLanguageMapping(args)
	assert(args, "You must provide an argument table when creating HlsCaptionLanguageMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CaptionChannel"] = args["CaptionChannel"],
		["LanguageDescription"] = args["LanguageDescription"],
		["CustomLanguageCode"] = args["CustomLanguageCode"],
		["LanguageCode"] = args["LanguageCode"],
	}
	asserts.AssertHlsCaptionLanguageMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DashIsoGroupSettings = { ["SegmentControl"] = true, ["WriteSegmentTimelineInRepresentation"] = true, ["MinBufferTime"] = true, ["Encryption"] = true, ["Destination"] = true, ["BaseUrl"] = true, ["SegmentLength"] = true, ["HbbtvCompliance"] = true, ["FragmentLength"] = true, nil }

function asserts.AssertDashIsoGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DashIsoGroupSettings to be of type 'table'")
	if struct["SegmentControl"] then asserts.AssertDashIsoSegmentControl(struct["SegmentControl"]) end
	if struct["WriteSegmentTimelineInRepresentation"] then asserts.AssertDashIsoWriteSegmentTimelineInRepresentation(struct["WriteSegmentTimelineInRepresentation"]) end
	if struct["MinBufferTime"] then asserts.Assert__integerMin0Max2147483647(struct["MinBufferTime"]) end
	if struct["Encryption"] then asserts.AssertDashIsoEncryptionSettings(struct["Encryption"]) end
	if struct["Destination"] then asserts.Assert__stringPatternS3(struct["Destination"]) end
	if struct["BaseUrl"] then asserts.Assert__string(struct["BaseUrl"]) end
	if struct["SegmentLength"] then asserts.Assert__integerMin1Max2147483647(struct["SegmentLength"]) end
	if struct["HbbtvCompliance"] then asserts.AssertDashIsoHbbtvCompliance(struct["HbbtvCompliance"]) end
	if struct["FragmentLength"] then asserts.Assert__integerMin1Max2147483647(struct["FragmentLength"]) end
	for k,_ in pairs(struct) do
		assert(keys.DashIsoGroupSettings[k], "DashIsoGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DashIsoGroupSettings
-- Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to DASH_ISO_GROUP_SETTINGS.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentControl [DashIsoSegmentControl] 
-- * WriteSegmentTimelineInRepresentation [DashIsoWriteSegmentTimelineInRepresentation] When ENABLED, segment durations are indicated in the manifest using SegmentTimeline and SegmentTimeline will be promoted down into Representation from AdaptationSet.
-- * MinBufferTime [__integerMin0Max2147483647] Minimum time of initially buffered media that is needed to ensure smooth playout.
-- * Encryption [DashIsoEncryptionSettings] DRM settings.
-- * Destination [__stringPatternS3] Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
-- * BaseUrl [__string] A partial URI prefix that will be put in the manifest (.mpd) file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
-- * SegmentLength [__integerMin1Max2147483647] Length of mpd segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer. When Emit Single File is checked, the segmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
-- * HbbtvCompliance [DashIsoHbbtvCompliance] 
-- * FragmentLength [__integerMin1Max2147483647] Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
-- @return DashIsoGroupSettings structure as a key-value pair table
function M.DashIsoGroupSettings(args)
	assert(args, "You must provide an argument table when creating DashIsoGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentControl"] = args["SegmentControl"],
		["WriteSegmentTimelineInRepresentation"] = args["WriteSegmentTimelineInRepresentation"],
		["MinBufferTime"] = args["MinBufferTime"],
		["Encryption"] = args["Encryption"],
		["Destination"] = args["Destination"],
		["BaseUrl"] = args["BaseUrl"],
		["SegmentLength"] = args["SegmentLength"],
		["HbbtvCompliance"] = args["HbbtvCompliance"],
		["FragmentLength"] = args["FragmentLength"],
	}
	asserts.AssertDashIsoGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobTemplateRequest = { ["Category"] = true, ["Description"] = true, ["Tags"] = true, ["Settings"] = true, ["Queue"] = true, ["Name"] = true, nil }

function asserts.AssertCreateJobTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobTemplateRequest to be of type 'table'")
	assert(struct["Settings"], "Expected key Settings to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Tags"] then asserts.Assert__mapOf__string(struct["Tags"]) end
	if struct["Settings"] then asserts.AssertJobTemplateSettings(struct["Settings"]) end
	if struct["Queue"] then asserts.Assert__string(struct["Queue"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobTemplateRequest[k], "CreateJobTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobTemplateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Category [__string] Optional. A category for the job template you are creating
-- * Description [__string] Optional. A description of the job template you are creating.
-- * Tags [__mapOf__string] The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
-- * Settings [JobTemplateSettings] 
-- * Queue [__string] Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
-- * Name [__string] The name of the job template you are creating.
-- Required key: Settings
-- Required key: Name
-- @return CreateJobTemplateRequest structure as a key-value pair table
function M.CreateJobTemplateRequest(args)
	assert(args, "You must provide an argument table when creating CreateJobTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Category"] = args["Category"],
		["Description"] = args["Description"],
		["Tags"] = args["Tags"],
		["Settings"] = args["Settings"],
		["Queue"] = args["Queue"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateJobTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Mpeg2Settings = { ["CodecProfile"] = true, ["SpatialAdaptiveQuantization"] = true, ["TemporalAdaptiveQuantization"] = true, ["Softness"] = true, ["Syntax"] = true, ["FramerateNumerator"] = true, ["MinIInterval"] = true, ["FramerateControl"] = true, ["Telecine"] = true, ["FramerateDenominator"] = true, ["Bitrate"] = true, ["MaxBitrate"] = true, ["GopSizeUnits"] = true, ["DynamicSubGop"] = true, ["ParDenominator"] = true, ["AdaptiveQuantization"] = true, ["InterlaceMode"] = true, ["QualityTuningLevel"] = true, ["HrdBufferInitialFillPercentage"] = true, ["IntraDcPrecision"] = true, ["SlowPal"] = true, ["NumberBFramesBetweenReferenceFrames"] = true, ["GopSize"] = true, ["ParControl"] = true, ["FramerateConversionAlgorithm"] = true, ["ParNumerator"] = true, ["RateControlMode"] = true, ["SceneChangeDetect"] = true, ["CodecLevel"] = true, ["GopClosedCadence"] = true, ["HrdBufferSize"] = true, nil }

function asserts.AssertMpeg2Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mpeg2Settings to be of type 'table'")
	if struct["CodecProfile"] then asserts.AssertMpeg2CodecProfile(struct["CodecProfile"]) end
	if struct["SpatialAdaptiveQuantization"] then asserts.AssertMpeg2SpatialAdaptiveQuantization(struct["SpatialAdaptiveQuantization"]) end
	if struct["TemporalAdaptiveQuantization"] then asserts.AssertMpeg2TemporalAdaptiveQuantization(struct["TemporalAdaptiveQuantization"]) end
	if struct["Softness"] then asserts.Assert__integerMin0Max128(struct["Softness"]) end
	if struct["Syntax"] then asserts.AssertMpeg2Syntax(struct["Syntax"]) end
	if struct["FramerateNumerator"] then asserts.Assert__integerMin24Max60000(struct["FramerateNumerator"]) end
	if struct["MinIInterval"] then asserts.Assert__integerMin0Max30(struct["MinIInterval"]) end
	if struct["FramerateControl"] then asserts.AssertMpeg2FramerateControl(struct["FramerateControl"]) end
	if struct["Telecine"] then asserts.AssertMpeg2Telecine(struct["Telecine"]) end
	if struct["FramerateDenominator"] then asserts.Assert__integerMin1Max1001(struct["FramerateDenominator"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin1000Max288000000(struct["Bitrate"]) end
	if struct["MaxBitrate"] then asserts.Assert__integerMin1000Max300000000(struct["MaxBitrate"]) end
	if struct["GopSizeUnits"] then asserts.AssertMpeg2GopSizeUnits(struct["GopSizeUnits"]) end
	if struct["DynamicSubGop"] then asserts.AssertMpeg2DynamicSubGop(struct["DynamicSubGop"]) end
	if struct["ParDenominator"] then asserts.Assert__integerMin1Max2147483647(struct["ParDenominator"]) end
	if struct["AdaptiveQuantization"] then asserts.AssertMpeg2AdaptiveQuantization(struct["AdaptiveQuantization"]) end
	if struct["InterlaceMode"] then asserts.AssertMpeg2InterlaceMode(struct["InterlaceMode"]) end
	if struct["QualityTuningLevel"] then asserts.AssertMpeg2QualityTuningLevel(struct["QualityTuningLevel"]) end
	if struct["HrdBufferInitialFillPercentage"] then asserts.Assert__integerMin0Max100(struct["HrdBufferInitialFillPercentage"]) end
	if struct["IntraDcPrecision"] then asserts.AssertMpeg2IntraDcPrecision(struct["IntraDcPrecision"]) end
	if struct["SlowPal"] then asserts.AssertMpeg2SlowPal(struct["SlowPal"]) end
	if struct["NumberBFramesBetweenReferenceFrames"] then asserts.Assert__integerMin0Max7(struct["NumberBFramesBetweenReferenceFrames"]) end
	if struct["GopSize"] then asserts.Assert__doubleMin0(struct["GopSize"]) end
	if struct["ParControl"] then asserts.AssertMpeg2ParControl(struct["ParControl"]) end
	if struct["FramerateConversionAlgorithm"] then asserts.AssertMpeg2FramerateConversionAlgorithm(struct["FramerateConversionAlgorithm"]) end
	if struct["ParNumerator"] then asserts.Assert__integerMin1Max2147483647(struct["ParNumerator"]) end
	if struct["RateControlMode"] then asserts.AssertMpeg2RateControlMode(struct["RateControlMode"]) end
	if struct["SceneChangeDetect"] then asserts.AssertMpeg2SceneChangeDetect(struct["SceneChangeDetect"]) end
	if struct["CodecLevel"] then asserts.AssertMpeg2CodecLevel(struct["CodecLevel"]) end
	if struct["GopClosedCadence"] then asserts.Assert__integerMin0Max2147483647(struct["GopClosedCadence"]) end
	if struct["HrdBufferSize"] then asserts.Assert__integerMin0Max47185920(struct["HrdBufferSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.Mpeg2Settings[k], "Mpeg2Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mpeg2Settings
-- Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value MPEG2.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodecProfile [Mpeg2CodecProfile] 
-- * SpatialAdaptiveQuantization [Mpeg2SpatialAdaptiveQuantization] 
-- * TemporalAdaptiveQuantization [Mpeg2TemporalAdaptiveQuantization] 
-- * Softness [__integerMin0Max128] Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
-- * Syntax [Mpeg2Syntax] 
-- * FramerateNumerator [__integerMin24Max60000] Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
-- * MinIInterval [__integerMin0Max30] Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
-- * FramerateControl [Mpeg2FramerateControl] 
-- * Telecine [Mpeg2Telecine] 
-- * FramerateDenominator [__integerMin1Max1001] Framerate denominator.
-- * Bitrate [__integerMin1000Max288000000] Average bitrate in bits/second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
-- * MaxBitrate [__integerMin1000Max300000000] Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000.
-- * GopSizeUnits [Mpeg2GopSizeUnits] 
-- * DynamicSubGop [Mpeg2DynamicSubGop] Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
-- * ParDenominator [__integerMin1Max2147483647] Pixel Aspect Ratio denominator.
-- * AdaptiveQuantization [Mpeg2AdaptiveQuantization] 
-- * InterlaceMode [Mpeg2InterlaceMode] 
-- * QualityTuningLevel [Mpeg2QualityTuningLevel] 
-- * HrdBufferInitialFillPercentage [__integerMin0Max100] Percentage of the buffer that should initially be filled (HRD buffer model).
-- * IntraDcPrecision [Mpeg2IntraDcPrecision] 
-- * SlowPal [Mpeg2SlowPal] 
-- * NumberBFramesBetweenReferenceFrames [__integerMin0Max7] Number of B-frames between reference frames.
-- * GopSize [__doubleMin0] GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
-- * ParControl [Mpeg2ParControl] 
-- * FramerateConversionAlgorithm [Mpeg2FramerateConversionAlgorithm] 
-- * ParNumerator [__integerMin1Max2147483647] Pixel Aspect Ratio numerator.
-- * RateControlMode [Mpeg2RateControlMode] 
-- * SceneChangeDetect [Mpeg2SceneChangeDetect] 
-- * CodecLevel [Mpeg2CodecLevel] 
-- * GopClosedCadence [__integerMin0Max2147483647] Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
-- * HrdBufferSize [__integerMin0Max47185920] Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
-- @return Mpeg2Settings structure as a key-value pair table
function M.Mpeg2Settings(args)
	assert(args, "You must provide an argument table when creating Mpeg2Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodecProfile"] = args["CodecProfile"],
		["SpatialAdaptiveQuantization"] = args["SpatialAdaptiveQuantization"],
		["TemporalAdaptiveQuantization"] = args["TemporalAdaptiveQuantization"],
		["Softness"] = args["Softness"],
		["Syntax"] = args["Syntax"],
		["FramerateNumerator"] = args["FramerateNumerator"],
		["MinIInterval"] = args["MinIInterval"],
		["FramerateControl"] = args["FramerateControl"],
		["Telecine"] = args["Telecine"],
		["FramerateDenominator"] = args["FramerateDenominator"],
		["Bitrate"] = args["Bitrate"],
		["MaxBitrate"] = args["MaxBitrate"],
		["GopSizeUnits"] = args["GopSizeUnits"],
		["DynamicSubGop"] = args["DynamicSubGop"],
		["ParDenominator"] = args["ParDenominator"],
		["AdaptiveQuantization"] = args["AdaptiveQuantization"],
		["InterlaceMode"] = args["InterlaceMode"],
		["QualityTuningLevel"] = args["QualityTuningLevel"],
		["HrdBufferInitialFillPercentage"] = args["HrdBufferInitialFillPercentage"],
		["IntraDcPrecision"] = args["IntraDcPrecision"],
		["SlowPal"] = args["SlowPal"],
		["NumberBFramesBetweenReferenceFrames"] = args["NumberBFramesBetweenReferenceFrames"],
		["GopSize"] = args["GopSize"],
		["ParControl"] = args["ParControl"],
		["FramerateConversionAlgorithm"] = args["FramerateConversionAlgorithm"],
		["ParNumerator"] = args["ParNumerator"],
		["RateControlMode"] = args["RateControlMode"],
		["SceneChangeDetect"] = args["SceneChangeDetect"],
		["CodecLevel"] = args["CodecLevel"],
		["GopClosedCadence"] = args["GopClosedCadence"],
		["HrdBufferSize"] = args["HrdBufferSize"],
	}
	asserts.AssertMpeg2Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SccDestinationSettings = { ["Framerate"] = true, nil }

function asserts.AssertSccDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SccDestinationSettings to be of type 'table'")
	if struct["Framerate"] then asserts.AssertSccDestinationFramerate(struct["Framerate"]) end
	for k,_ in pairs(struct) do
		assert(keys.SccDestinationSettings[k], "SccDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SccDestinationSettings
-- Settings for SCC caption output.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Framerate [SccDestinationFramerate] 
-- @return SccDestinationSettings structure as a key-value pair table
function M.SccDestinationSettings(args)
	assert(args, "You must provide an argument table when creating SccDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Framerate"] = args["Framerate"],
	}
	asserts.AssertSccDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobSettings = { ["NielsenConfiguration"] = true, ["Inputs"] = true, ["TimecodeConfig"] = true, ["AvailBlanking"] = true, ["OutputGroups"] = true, ["AdAvailOffset"] = true, ["TimedMetadataInsertion"] = true, nil }

function asserts.AssertJobSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobSettings to be of type 'table'")
	if struct["NielsenConfiguration"] then asserts.AssertNielsenConfiguration(struct["NielsenConfiguration"]) end
	if struct["Inputs"] then asserts.Assert__listOfInput(struct["Inputs"]) end
	if struct["TimecodeConfig"] then asserts.AssertTimecodeConfig(struct["TimecodeConfig"]) end
	if struct["AvailBlanking"] then asserts.AssertAvailBlanking(struct["AvailBlanking"]) end
	if struct["OutputGroups"] then asserts.Assert__listOfOutputGroup(struct["OutputGroups"]) end
	if struct["AdAvailOffset"] then asserts.Assert__integerMinNegative1000Max1000(struct["AdAvailOffset"]) end
	if struct["TimedMetadataInsertion"] then asserts.AssertTimedMetadataInsertion(struct["TimedMetadataInsertion"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobSettings[k], "JobSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobSettings
-- JobSettings contains all the transcode settings for a job.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NielsenConfiguration [NielsenConfiguration] 
-- * Inputs [__listOfInput] Use Inputs (inputs) to define source file used in the transcode job. There can be multiple inputs add in a job. These inputs will be concantenated together to create the output.
-- * TimecodeConfig [TimecodeConfig] Contains settings used to acquire and adjust timecode information from inputs.
-- * AvailBlanking [AvailBlanking] Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
-- * OutputGroups [__listOfOutputGroup] (OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings
-- * AdAvailOffset [__integerMinNegative1000Max1000] When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
-- * TimedMetadataInsertion [TimedMetadataInsertion] 
-- @return JobSettings structure as a key-value pair table
function M.JobSettings(args)
	assert(args, "You must provide an argument table when creating JobSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NielsenConfiguration"] = args["NielsenConfiguration"],
		["Inputs"] = args["Inputs"],
		["TimecodeConfig"] = args["TimecodeConfig"],
		["AvailBlanking"] = args["AvailBlanking"],
		["OutputGroups"] = args["OutputGroups"],
		["AdAvailOffset"] = args["AdAvailOffset"],
		["TimedMetadataInsertion"] = args["TimedMetadataInsertion"],
	}
	asserts.AssertJobSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimecodeConfig = { ["Source"] = true, ["Anchor"] = true, ["TimestampOffset"] = true, ["Start"] = true, nil }

function asserts.AssertTimecodeConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimecodeConfig to be of type 'table'")
	if struct["Source"] then asserts.AssertTimecodeSource(struct["Source"]) end
	if struct["Anchor"] then asserts.Assert__stringPattern010920405090509092(struct["Anchor"]) end
	if struct["TimestampOffset"] then asserts.Assert__stringPattern0940191020191209301(struct["TimestampOffset"]) end
	if struct["Start"] then asserts.Assert__stringPattern010920405090509092(struct["Start"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimecodeConfig[k], "TimecodeConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimecodeConfig
-- These settings control how the service handles timecodes throughout the job. These settings don't affect input clipping.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source [TimecodeSource] 
-- * Anchor [__stringPattern010920405090509092] If you use an editing platform that relies on an anchor timecode, use Anchor Timecode (Anchor) to specify a timecode that will match the input video frame to the output video frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF). This setting ignores framerate conversion. System behavior for Anchor Timecode varies depending on your setting for Source (TimecodeSource). * If Source (TimecodeSource) is set to Specified Start (SPECIFIEDSTART), the first input frame is the specified value in Start Timecode (Start). Anchor Timecode (Anchor) and Start Timecode (Start) are used calculate output timecode. * If Source (TimecodeSource) is set to Start at 0 (ZEROBASED)  the  first frame is 00:00:00:00. * If Source (TimecodeSource) is set to Embedded (EMBEDDED), the  first frame is the timecode value on the first input frame of the input.
-- * TimestampOffset [__stringPattern0940191020191209301] Only applies to outputs that support program-date-time stamp. Use Timestamp offset (TimestampOffset) to overwrite the timecode date without affecting the time and frame number. Provide the new date as a string in the format "yyyy-mm-dd".  To use Time stamp offset, you must also enable Insert program-date-time (InsertProgramDateTime) in the output settings. For example, if the date part of your timecodes is 2002-1-25 and you want to change it to one year later, set Timestamp offset (TimestampOffset) to 2003-1-25.
-- * Start [__stringPattern010920405090509092] Only use when you set Source (TimecodeSource) to Specified start (SPECIFIEDSTART). Use Start timecode (Start) to specify the timecode for the initial frame. Use 24-hour format with frame number, (HH:MM:SS:FF) or (HH:MM:SS;FF).
-- @return TimecodeConfig structure as a key-value pair table
function M.TimecodeConfig(args)
	assert(args, "You must provide an argument table when creating TimecodeConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Source"] = args["Source"],
		["Anchor"] = args["Anchor"],
		["TimestampOffset"] = args["TimestampOffset"],
		["Start"] = args["Start"],
	}
	asserts.AssertTimecodeConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsRequest = { ["Queue"] = true, ["Status"] = true, ["NextToken"] = true, ["Order"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsRequest to be of type 'table'")
	if struct["Queue"] then asserts.Assert__string(struct["Queue"]) end
	if struct["Status"] then asserts.AssertJobStatus(struct["Status"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Order"] then asserts.AssertOrder(struct["Order"]) end
	if struct["MaxResults"] then asserts.Assert__integerMin1Max20(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsRequest[k], "ListJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Queue [__string] Provide a queue name to get back only jobs from that queue.
-- * Status [JobStatus] 
-- * NextToken [__string] Use this string, provided with the response to a previous request, to request the next batch of jobs.
-- * Order [Order] 
-- * MaxResults [__integerMin1Max20] Optional. Number of jobs, up to twenty, that will be returned at one time.
-- @return ListJobsRequest structure as a key-value pair table
function M.ListJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListJobsRequest")
    local query_args = { 
        ["queue"] = args["Queue"],
        ["status"] = args["Status"],
        ["nextToken"] = args["NextToken"],
        ["order"] = args["Order"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Queue"] = args["Queue"],
		["Status"] = args["Status"],
		["NextToken"] = args["NextToken"],
		["Order"] = args["Order"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputSettings = { ["HlsSettings"] = true, nil }

function asserts.AssertOutputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputSettings to be of type 'table'")
	if struct["HlsSettings"] then asserts.AssertHlsSettings(struct["HlsSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputSettings[k], "OutputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputSettings
-- Specific settings for this type of output.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HlsSettings [HlsSettings] 
-- @return OutputSettings structure as a key-value pair table
function M.OutputSettings(args)
	assert(args, "You must provide an argument table when creating OutputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HlsSettings"] = args["HlsSettings"],
	}
	asserts.AssertOutputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceRequest = { ["Arn"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [__string] The Amazon Resource Name (ARN) of the resource that you want to list tags for. To get the ARN, send a GET request with the resource name.
-- Required key: Arn
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{arn}"] = args["Arn"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
	}
	asserts.AssertListTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointsResponse = { ["Endpoints"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointsResponse to be of type 'table'")
	if struct["Endpoints"] then asserts.Assert__listOfEndpoint(struct["Endpoints"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointsResponse[k], "DescribeEndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Endpoints [__listOfEndpoint] List of endpoints
-- * NextToken [__string] Use this string to request the next batch of endpoints.
-- @return DescribeEndpointsResponse structure as a key-value pair table
function M.DescribeEndpointsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointsResponse")
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
	asserts.AssertDescribeEndpointsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FrameCaptureSettings = { ["MaxCaptures"] = true, ["FramerateDenominator"] = true, ["FramerateNumerator"] = true, ["Quality"] = true, nil }

function asserts.AssertFrameCaptureSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FrameCaptureSettings to be of type 'table'")
	if struct["MaxCaptures"] then asserts.Assert__integerMin1Max10000000(struct["MaxCaptures"]) end
	if struct["FramerateDenominator"] then asserts.Assert__integerMin1Max2147483647(struct["FramerateDenominator"]) end
	if struct["FramerateNumerator"] then asserts.Assert__integerMin1Max2147483647(struct["FramerateNumerator"]) end
	if struct["Quality"] then asserts.Assert__integerMin1Max100(struct["Quality"]) end
	for k,_ in pairs(struct) do
		assert(keys.FrameCaptureSettings[k], "FrameCaptureSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FrameCaptureSettings
-- Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value FRAME_CAPTURE.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxCaptures [__integerMin1Max10000000] Maximum number of captures (encoded jpg output files).
-- * FramerateDenominator [__integerMin1Max2147483647] Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.n.jpg where n is the 0-based sequence number of each Capture.
-- * FramerateNumerator [__integerMin1Max2147483647] Frame capture will encode the first frame of the output stream, then one frame every framerateDenominator/framerateNumerator seconds. For example, settings of framerateNumerator = 1 and framerateDenominator = 3 (a rate of 1/3 frame per second) will capture the first frame, then 1 frame every 3s. Files will be named as filename.NNNNNNN.jpg where N is the 0-based frame sequence number zero padded to 7 decimal places.
-- * Quality [__integerMin1Max100] JPEG Quality - a higher value equals higher quality.
-- @return FrameCaptureSettings structure as a key-value pair table
function M.FrameCaptureSettings(args)
	assert(args, "You must provide an argument table when creating FrameCaptureSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxCaptures"] = args["MaxCaptures"],
		["FramerateDenominator"] = args["FramerateDenominator"],
		["FramerateNumerator"] = args["FramerateNumerator"],
		["Quality"] = args["Quality"],
	}
	asserts.AssertFrameCaptureSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoSelector = { ["ColorSpaceUsage"] = true, ["ProgramNumber"] = true, ["ColorSpace"] = true, ["Pid"] = true, ["Hdr10Metadata"] = true, nil }

function asserts.AssertVideoSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoSelector to be of type 'table'")
	if struct["ColorSpaceUsage"] then asserts.AssertColorSpaceUsage(struct["ColorSpaceUsage"]) end
	if struct["ProgramNumber"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["ProgramNumber"]) end
	if struct["ColorSpace"] then asserts.AssertColorSpace(struct["ColorSpace"]) end
	if struct["Pid"] then asserts.Assert__integerMin1Max2147483647(struct["Pid"]) end
	if struct["Hdr10Metadata"] then asserts.AssertHdr10Metadata(struct["Hdr10Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoSelector[k], "VideoSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoSelector
-- Selector for video.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ColorSpaceUsage [ColorSpaceUsage] 
-- * ProgramNumber [__integerMinNegative2147483648Max2147483647] Selects a specific program from within a multi-program transport stream. Note that Quad 4K is not currently supported.
-- * ColorSpace [ColorSpace] 
-- * Pid [__integerMin1Max2147483647] Use PID (Pid) to select specific video data from an input file. Specify this value as an integer; the system automatically converts it to the hexidecimal value. For example, 257 selects PID 0x101. A PID, or packet identifier, is an identifier for a set of data in an MPEG-2 transport stream container.
-- * Hdr10Metadata [Hdr10Metadata] 
-- @return VideoSelector structure as a key-value pair table
function M.VideoSelector(args)
	assert(args, "You must provide an argument table when creating VideoSelector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ColorSpaceUsage"] = args["ColorSpaceUsage"],
		["ProgramNumber"] = args["ProgramNumber"],
		["ColorSpace"] = args["ColorSpace"],
		["Pid"] = args["Pid"],
		["Hdr10Metadata"] = args["Hdr10Metadata"],
	}
	asserts.AssertVideoSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionSourceSettings = { ["SourceType"] = true, ["AncillarySourceSettings"] = true, ["FileSourceSettings"] = true, ["DvbSubSourceSettings"] = true, ["EmbeddedSourceSettings"] = true, ["TeletextSourceSettings"] = true, nil }

function asserts.AssertCaptionSourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionSourceSettings to be of type 'table'")
	if struct["SourceType"] then asserts.AssertCaptionSourceType(struct["SourceType"]) end
	if struct["AncillarySourceSettings"] then asserts.AssertAncillarySourceSettings(struct["AncillarySourceSettings"]) end
	if struct["FileSourceSettings"] then asserts.AssertFileSourceSettings(struct["FileSourceSettings"]) end
	if struct["DvbSubSourceSettings"] then asserts.AssertDvbSubSourceSettings(struct["DvbSubSourceSettings"]) end
	if struct["EmbeddedSourceSettings"] then asserts.AssertEmbeddedSourceSettings(struct["EmbeddedSourceSettings"]) end
	if struct["TeletextSourceSettings"] then asserts.AssertTeletextSourceSettings(struct["TeletextSourceSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionSourceSettings[k], "CaptionSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionSourceSettings
-- Source settings (SourceSettings) contains the group of settings for captions in the input.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceType [CaptionSourceType] 
-- * AncillarySourceSettings [AncillarySourceSettings] 
-- * FileSourceSettings [FileSourceSettings] 
-- * DvbSubSourceSettings [DvbSubSourceSettings] 
-- * EmbeddedSourceSettings [EmbeddedSourceSettings] 
-- * TeletextSourceSettings [TeletextSourceSettings] 
-- @return CaptionSourceSettings structure as a key-value pair table
function M.CaptionSourceSettings(args)
	assert(args, "You must provide an argument table when creating CaptionSourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceType"] = args["SourceType"],
		["AncillarySourceSettings"] = args["AncillarySourceSettings"],
		["FileSourceSettings"] = args["FileSourceSettings"],
		["DvbSubSourceSettings"] = args["DvbSubSourceSettings"],
		["EmbeddedSourceSettings"] = args["EmbeddedSourceSettings"],
		["TeletextSourceSettings"] = args["TeletextSourceSettings"],
	}
	asserts.AssertCaptionSourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoDetail = { ["WidthInPx"] = true, ["HeightInPx"] = true, nil }

function asserts.AssertVideoDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoDetail to be of type 'table'")
	if struct["WidthInPx"] then asserts.Assert__integer(struct["WidthInPx"]) end
	if struct["HeightInPx"] then asserts.Assert__integer(struct["HeightInPx"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoDetail[k], "VideoDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoDetail
-- Contains details about the output's video stream
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WidthInPx [__integer] Width in pixels for the output
-- * HeightInPx [__integer] Height in pixels for the output
-- @return VideoDetail structure as a key-value pair table
function M.VideoDetail(args)
	assert(args, "You must provide an argument table when creating VideoDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WidthInPx"] = args["WidthInPx"],
		["HeightInPx"] = args["HeightInPx"],
	}
	asserts.AssertVideoDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePresetResponse = { ["Preset"] = true, nil }

function asserts.AssertCreatePresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePresetResponse to be of type 'table'")
	if struct["Preset"] then asserts.AssertPreset(struct["Preset"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePresetResponse[k], "CreatePresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePresetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Preset [Preset] 
-- @return CreatePresetResponse structure as a key-value pair table
function M.CreatePresetResponse(args)
	assert(args, "You must provide an argument table when creating CreatePresetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Preset"] = args["Preset"],
	}
	asserts.AssertCreatePresetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TtmlDestinationSettings = { ["StylePassthrough"] = true, nil }

function asserts.AssertTtmlDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TtmlDestinationSettings to be of type 'table'")
	if struct["StylePassthrough"] then asserts.AssertTtmlStylePassthrough(struct["StylePassthrough"]) end
	for k,_ in pairs(struct) do
		assert(keys.TtmlDestinationSettings[k], "TtmlDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TtmlDestinationSettings
-- Settings specific to TTML caption outputs, including Pass style information (TtmlStylePassthrough).
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StylePassthrough [TtmlStylePassthrough] 
-- @return TtmlDestinationSettings structure as a key-value pair table
function M.TtmlDestinationSettings(args)
	assert(args, "You must provide an argument table when creating TtmlDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StylePassthrough"] = args["StylePassthrough"],
	}
	asserts.AssertTtmlDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobTemplateRequest = { ["Category"] = true, ["Queue"] = true, ["Settings"] = true, ["Description"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateJobTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobTemplateRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["Queue"] then asserts.Assert__string(struct["Queue"]) end
	if struct["Settings"] then asserts.AssertJobTemplateSettings(struct["Settings"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobTemplateRequest[k], "UpdateJobTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobTemplateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Category [__string] The new category for the job template, if you are changing it.
-- * Queue [__string] The new queue for the job template, if you are changing it.
-- * Settings [JobTemplateSettings] 
-- * Description [__string] The new description for the job template, if you are changing it.
-- * Name [__string] The name of the job template you are modifying
-- Required key: Name
-- @return UpdateJobTemplateRequest structure as a key-value pair table
function M.UpdateJobTemplateRequest(args)
	assert(args, "You must provide an argument table when creating UpdateJobTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Category"] = args["Category"],
		["Queue"] = args["Queue"],
		["Settings"] = args["Settings"],
		["Description"] = args["Description"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateJobTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceResponse = { nil }

function asserts.AssertTagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagResourceResponse[k], "TagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagResourceResponse structure as a key-value pair table
function M.TagResourceResponse(args)
	assert(args, "You must provide an argument table when creating TagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Mp4Settings = { ["MoovPlacement"] = true, ["Mp4MajorBrand"] = true, ["CslgAtom"] = true, ["FreeSpaceBox"] = true, nil }

function asserts.AssertMp4Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mp4Settings to be of type 'table'")
	if struct["MoovPlacement"] then asserts.AssertMp4MoovPlacement(struct["MoovPlacement"]) end
	if struct["Mp4MajorBrand"] then asserts.Assert__string(struct["Mp4MajorBrand"]) end
	if struct["CslgAtom"] then asserts.AssertMp4CslgAtom(struct["CslgAtom"]) end
	if struct["FreeSpaceBox"] then asserts.AssertMp4FreeSpaceBox(struct["FreeSpaceBox"]) end
	for k,_ in pairs(struct) do
		assert(keys.Mp4Settings[k], "Mp4Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mp4Settings
-- Settings for MP4 Container
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MoovPlacement [Mp4MoovPlacement] 
-- * Mp4MajorBrand [__string] Overrides the "Major Brand" field in the output file. Usually not necessary to specify.
-- * CslgAtom [Mp4CslgAtom] 
-- * FreeSpaceBox [Mp4FreeSpaceBox] 
-- @return Mp4Settings structure as a key-value pair table
function M.Mp4Settings(args)
	assert(args, "You must provide an argument table when creating Mp4Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MoovPlacement"] = args["MoovPlacement"],
		["Mp4MajorBrand"] = args["Mp4MajorBrand"],
		["CslgAtom"] = args["CslgAtom"],
		["FreeSpaceBox"] = args["FreeSpaceBox"],
	}
	asserts.AssertMp4Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionDescriptionPreset = { ["LanguageCode"] = true, ["DestinationSettings"] = true, ["CustomLanguageCode"] = true, ["LanguageDescription"] = true, nil }

function asserts.AssertCaptionDescriptionPreset(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionDescriptionPreset to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["DestinationSettings"] then asserts.AssertCaptionDestinationSettings(struct["DestinationSettings"]) end
	if struct["CustomLanguageCode"] then asserts.Assert__stringMin3Max3PatternAZaZ3(struct["CustomLanguageCode"]) end
	if struct["LanguageDescription"] then asserts.Assert__string(struct["LanguageDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionDescriptionPreset[k], "CaptionDescriptionPreset contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionDescriptionPreset
-- Caption Description for preset
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] Indicates the language of the caption output track.
-- * DestinationSettings [CaptionDestinationSettings] 
-- * CustomLanguageCode [__stringMin3Max3PatternAZaZ3] Indicates the language of the caption output track, using the ISO 639-2 or ISO 639-3 three-letter language code
-- * LanguageDescription [__string] Human readable information to indicate captions available for players (eg. English, or Spanish). Alphanumeric characters, spaces, and underscore are legal.
-- @return CaptionDescriptionPreset structure as a key-value pair table
function M.CaptionDescriptionPreset(args)
	assert(args, "You must provide an argument table when creating CaptionDescriptionPreset")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["DestinationSettings"] = args["DestinationSettings"],
		["CustomLanguageCode"] = args["CustomLanguageCode"],
		["LanguageDescription"] = args["LanguageDescription"],
	}
	asserts.AssertCaptionDescriptionPreset(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AncillarySourceSettings = { ["SourceAncillaryChannelNumber"] = true, nil }

function asserts.AssertAncillarySourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AncillarySourceSettings to be of type 'table'")
	if struct["SourceAncillaryChannelNumber"] then asserts.Assert__integerMin1Max4(struct["SourceAncillaryChannelNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.AncillarySourceSettings[k], "AncillarySourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AncillarySourceSettings
-- Settings for ancillary captions source.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceAncillaryChannelNumber [__integerMin1Max4] Specifies the 608 channel number in the ancillary data track from which to extract captions. Unused for passthrough.
-- @return AncillarySourceSettings structure as a key-value pair table
function M.AncillarySourceSettings(args)
	assert(args, "You must provide an argument table when creating AncillarySourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceAncillaryChannelNumber"] = args["SourceAncillaryChannelNumber"],
	}
	asserts.AssertAncillarySourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AiffSettings = { ["Channels"] = true, ["SampleRate"] = true, ["BitDepth"] = true, nil }

function asserts.AssertAiffSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AiffSettings to be of type 'table'")
	if struct["Channels"] then asserts.Assert__integerMin1Max2(struct["Channels"]) end
	if struct["SampleRate"] then asserts.Assert__integerMin8000Max192000(struct["SampleRate"]) end
	if struct["BitDepth"] then asserts.Assert__integerMin16Max24(struct["BitDepth"]) end
	for k,_ in pairs(struct) do
		assert(keys.AiffSettings[k], "AiffSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AiffSettings
-- Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AIFF.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channels [__integerMin1Max2] Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2.
-- * SampleRate [__integerMin8000Max192000] Sample rate in hz.
-- * BitDepth [__integerMin16Max24] Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
-- @return AiffSettings structure as a key-value pair table
function M.AiffSettings(args)
	assert(args, "You must provide an argument table when creating AiffSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Channels"] = args["Channels"],
		["SampleRate"] = args["SampleRate"],
		["BitDepth"] = args["BitDepth"],
	}
	asserts.AssertAiffSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationPlan = { ["Status"] = true, ["ReservedSlots"] = true, ["PurchasedAt"] = true, ["Commitment"] = true, ["ExpiresAt"] = true, ["RenewalType"] = true, nil }

function asserts.AssertReservationPlan(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationPlan to be of type 'table'")
	if struct["Status"] then asserts.AssertReservationPlanStatus(struct["Status"]) end
	if struct["ReservedSlots"] then asserts.Assert__integer(struct["ReservedSlots"]) end
	if struct["PurchasedAt"] then asserts.Assert__timestampUnix(struct["PurchasedAt"]) end
	if struct["Commitment"] then asserts.AssertCommitment(struct["Commitment"]) end
	if struct["ExpiresAt"] then asserts.Assert__timestampUnix(struct["ExpiresAt"]) end
	if struct["RenewalType"] then asserts.AssertRenewalType(struct["RenewalType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationPlan[k], "ReservationPlan contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationPlan
-- Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [ReservationPlanStatus] Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED.
-- * ReservedSlots [__integer] Specifies the number of reserved transcode slots (RTSs) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. To increase this number, create a replacement contract through the AWS Elemental MediaConvert console.
-- * PurchasedAt [__timestampUnix] The time stamp in epoch seconds when the reserved queue's reservation plan was created.
-- * Commitment [Commitment] The length of time that you commit to when you set up a pricing plan contract for a reserved queue.
-- * ExpiresAt [__timestampUnix] The time stamp, in epoch seconds, for when the pricing plan for this reserved queue expires.
-- * RenewalType [RenewalType] Specifies whether the pricing plan contract for your reserved queue automatically renews (AUTO_RENEW) or expires (EXPIRE) at the end of the contract period.
-- @return ReservationPlan structure as a key-value pair table
function M.ReservationPlan(args)
	assert(args, "You must provide an argument table when creating ReservationPlan")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ReservedSlots"] = args["ReservedSlots"],
		["PurchasedAt"] = args["PurchasedAt"],
		["Commitment"] = args["Commitment"],
		["ExpiresAt"] = args["ExpiresAt"],
		["RenewalType"] = args["RenewalType"],
	}
	asserts.AssertReservationPlan(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsEncryptionSettings = { ["SpekeKeyProvider"] = true, ["InitializationVectorInManifest"] = true, ["ConstantInitializationVector"] = true, ["EncryptionMethod"] = true, ["Type"] = true, ["StaticKeyProvider"] = true, nil }

function asserts.AssertHlsEncryptionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsEncryptionSettings to be of type 'table'")
	if struct["SpekeKeyProvider"] then asserts.AssertSpekeKeyProvider(struct["SpekeKeyProvider"]) end
	if struct["InitializationVectorInManifest"] then asserts.AssertHlsInitializationVectorInManifest(struct["InitializationVectorInManifest"]) end
	if struct["ConstantInitializationVector"] then asserts.Assert__stringMin32Max32Pattern09aFAF32(struct["ConstantInitializationVector"]) end
	if struct["EncryptionMethod"] then asserts.AssertHlsEncryptionType(struct["EncryptionMethod"]) end
	if struct["Type"] then asserts.AssertHlsKeyProviderType(struct["Type"]) end
	if struct["StaticKeyProvider"] then asserts.AssertStaticKeyProvider(struct["StaticKeyProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsEncryptionSettings[k], "HlsEncryptionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsEncryptionSettings
-- Settings for HLS encryption
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpekeKeyProvider [SpekeKeyProvider] 
-- * InitializationVectorInManifest [HlsInitializationVectorInManifest] 
-- * ConstantInitializationVector [__stringMin32Max32Pattern09aFAF32] This is a 128-bit, 16-byte hex value represented by a 32-character text string. If this parameter is not set then the Initialization Vector will follow the segment number by default.
-- * EncryptionMethod [HlsEncryptionType] 
-- * Type [HlsKeyProviderType] 
-- * StaticKeyProvider [StaticKeyProvider] 
-- @return HlsEncryptionSettings structure as a key-value pair table
function M.HlsEncryptionSettings(args)
	assert(args, "You must provide an argument table when creating HlsEncryptionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpekeKeyProvider"] = args["SpekeKeyProvider"],
		["InitializationVectorInManifest"] = args["InitializationVectorInManifest"],
		["ConstantInitializationVector"] = args["ConstantInitializationVector"],
		["EncryptionMethod"] = args["EncryptionMethod"],
		["Type"] = args["Type"],
		["StaticKeyProvider"] = args["StaticKeyProvider"],
	}
	asserts.AssertHlsEncryptionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WavSettings = { ["Channels"] = true, ["SampleRate"] = true, ["BitDepth"] = true, ["Format"] = true, nil }

function asserts.AssertWavSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WavSettings to be of type 'table'")
	if struct["Channels"] then asserts.Assert__integerMin1Max8(struct["Channels"]) end
	if struct["SampleRate"] then asserts.Assert__integerMin8000Max192000(struct["SampleRate"]) end
	if struct["BitDepth"] then asserts.Assert__integerMin16Max24(struct["BitDepth"]) end
	if struct["Format"] then asserts.AssertWavFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(keys.WavSettings[k], "WavSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WavSettings
-- Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value WAV.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channels [__integerMin1Max8] Set Channels to specify the number of channels in this output audio track. With WAV, valid values 1, 2, 4, and 8. In the console, these values are Mono, Stereo, 4-Channel, and 8-Channel, respectively.
-- * SampleRate [__integerMin8000Max192000] Sample rate in Hz.
-- * BitDepth [__integerMin16Max24] Specify Bit depth (BitDepth), in bits per sample, to choose the encoding quality for this audio track.
-- * Format [WavFormat] 
-- @return WavSettings structure as a key-value pair table
function M.WavSettings(args)
	assert(args, "You must provide an argument table when creating WavSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Channels"] = args["Channels"],
		["SampleRate"] = args["SampleRate"],
		["BitDepth"] = args["BitDepth"],
		["Format"] = args["Format"],
	}
	asserts.AssertWavSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailBlanking = { ["AvailBlankingImage"] = true, nil }

function asserts.AssertAvailBlanking(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailBlanking to be of type 'table'")
	if struct["AvailBlankingImage"] then asserts.Assert__stringMin14PatternS3BmpBMPPngPNG(struct["AvailBlankingImage"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailBlanking[k], "AvailBlanking contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailBlanking
-- Settings for Avail Blanking
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailBlankingImage [__stringMin14PatternS3BmpBMPPngPNG] Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported.
-- @return AvailBlanking structure as a key-value pair table
function M.AvailBlanking(args)
	assert(args, "You must provide an argument table when creating AvailBlanking")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailBlankingImage"] = args["AvailBlankingImage"],
	}
	asserts.AssertAvailBlanking(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobsResponse = { ["NextToken"] = true, ["Jobs"] = true, nil }

function asserts.AssertListJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Jobs"] then asserts.Assert__listOfJob(struct["Jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobsResponse[k], "ListJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Use this string to request the next batch of jobs.
-- * Jobs [__listOfJob] List of jobs
-- @return ListJobsResponse structure as a key-value pair table
function M.ListJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Jobs"] = args["Jobs"],
	}
	asserts.AssertListJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceRequest = { ["TagKeys"] = true, ["Arn"] = true, nil }

function asserts.AssertUntagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceRequest to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["TagKeys"] then asserts.Assert__listOf__string(struct["TagKeys"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceRequest[k], "UntagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagKeys [__listOf__string] The keys of the tags that you want to remove from the resource.
-- * Arn [__string] The Amazon Resource Name (ARN) of the resource that you want to remove tags from. To get the ARN, send a GET request with the resource name.
-- Required key: Arn
-- @return UntagResourceRequest structure as a key-value pair table
function M.UntagResourceRequest(args)
	assert(args, "You must provide an argument table when creating UntagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{arn}"] = args["Arn"],
    }
    local header_args = { 
    }
	local all_args = { 
		["TagKeys"] = args["TagKeys"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUntagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePresetResponse = { ["Preset"] = true, nil }

function asserts.AssertUpdatePresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePresetResponse to be of type 'table'")
	if struct["Preset"] then asserts.AssertPreset(struct["Preset"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePresetResponse[k], "UpdatePresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePresetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Preset [Preset] 
-- @return UpdatePresetResponse structure as a key-value pair table
function M.UpdatePresetResponse(args)
	assert(args, "You must provide an argument table when creating UpdatePresetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Preset"] = args["Preset"],
	}
	asserts.AssertUpdatePresetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetQueueResponse = { ["Queue"] = true, nil }

function asserts.AssertGetQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueResponse to be of type 'table'")
	if struct["Queue"] then asserts.AssertQueue(struct["Queue"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueResponse[k], "GetQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Queue [Queue] 
-- @return GetQueueResponse structure as a key-value pair table
function M.GetQueueResponse(args)
	assert(args, "You must provide an argument table when creating GetQueueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Queue"] = args["Queue"],
	}
	asserts.AssertGetQueueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateQueueRequest = { ["Status"] = true, ["ReservationPlanSettings"] = true, ["Description"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateQueueRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Status"] then asserts.AssertQueueStatus(struct["Status"]) end
	if struct["ReservationPlanSettings"] then asserts.AssertReservationPlanSettings(struct["ReservationPlanSettings"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateQueueRequest[k], "UpdateQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateQueueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [QueueStatus] Pause or activate a queue by changing its status between ACTIVE and PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
-- * ReservationPlanSettings [ReservationPlanSettings] Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
-- * Description [__string] The new description for the queue, if you are changing it.
-- * Name [__string] The name of the queue that you are modifying.
-- Required key: Name
-- @return UpdateQueueRequest structure as a key-value pair table
function M.UpdateQueueRequest(args)
	assert(args, "You must provide an argument table when creating UpdateQueueRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["ReservationPlanSettings"] = args["ReservationPlanSettings"],
		["Description"] = args["Description"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateQueueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePresetResponse = { nil }

function asserts.AssertDeletePresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePresetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePresetResponse[k], "DeletePresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePresetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePresetResponse structure as a key-value pair table
function M.DeletePresetResponse(args)
	assert(args, "You must provide an argument table when creating DeletePresetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeletePresetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobTemplatesResponse = { ["NextToken"] = true, ["JobTemplates"] = true, nil }

function asserts.AssertListJobTemplatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobTemplatesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["JobTemplates"] then asserts.Assert__listOfJobTemplate(struct["JobTemplates"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobTemplatesResponse[k], "ListJobTemplatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobTemplatesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Use this string to request the next batch of job templates.
-- * JobTemplates [__listOfJobTemplate] List of Job templates.
-- @return ListJobTemplatesResponse structure as a key-value pair table
function M.ListJobTemplatesResponse(args)
	assert(args, "You must provide an argument table when creating ListJobTemplatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["JobTemplates"] = args["JobTemplates"],
	}
	asserts.AssertListJobTemplatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPresetRequest = { ["Name"] = true, nil }

function asserts.AssertGetPresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPresetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPresetRequest[k], "GetPresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPresetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The name of the preset.
-- Required key: Name
-- @return GetPresetRequest structure as a key-value pair table
function M.GetPresetRequest(args)
	assert(args, "You must provide an argument table when creating GetPresetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetPresetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPresetResponse = { ["Preset"] = true, nil }

function asserts.AssertGetPresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPresetResponse to be of type 'table'")
	if struct["Preset"] then asserts.AssertPreset(struct["Preset"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPresetResponse[k], "GetPresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPresetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Preset [Preset] 
-- @return GetPresetResponse structure as a key-value pair table
function M.GetPresetResponse(args)
	assert(args, "You must provide an argument table when creating GetPresetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Preset"] = args["Preset"],
	}
	asserts.AssertGetPresetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePresetRequest = { ["Category"] = true, ["Tags"] = true, ["Settings"] = true, ["Description"] = true, ["Name"] = true, nil }

function asserts.AssertCreatePresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePresetRequest to be of type 'table'")
	assert(struct["Settings"], "Expected key Settings to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["Tags"] then asserts.Assert__mapOf__string(struct["Tags"]) end
	if struct["Settings"] then asserts.AssertPresetSettings(struct["Settings"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePresetRequest[k], "CreatePresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePresetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Category [__string] Optional. A category for the preset you are creating.
-- * Tags [__mapOf__string] The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
-- * Settings [PresetSettings] 
-- * Description [__string] Optional. A description of the preset you are creating.
-- * Name [__string] The name of the preset you are creating.
-- Required key: Settings
-- Required key: Name
-- @return CreatePresetRequest structure as a key-value pair table
function M.CreatePresetRequest(args)
	assert(args, "You must provide an argument table when creating CreatePresetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Category"] = args["Category"],
		["Tags"] = args["Tags"],
		["Settings"] = args["Settings"],
		["Description"] = args["Description"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreatePresetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEndpointsRequest = { ["NextToken"] = true, ["Mode"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeEndpointsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEndpointsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Mode"] then asserts.AssertDescribeEndpointsMode(struct["Mode"]) end
	if struct["MaxResults"] then asserts.Assert__integer(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEndpointsRequest[k], "DescribeEndpointsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEndpointsRequest
-- DescribeEndpointsRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] Use this string, provided with the response to a previous request, to request the next batch of endpoints.
-- * Mode [DescribeEndpointsMode] 
-- * MaxResults [__integer] Optional. Max number of endpoints, up to twenty, that will be returned at one time.
-- @return DescribeEndpointsRequest structure as a key-value pair table
function M.DescribeEndpointsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEndpointsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Mode"] = args["Mode"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeEndpointsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPresetsRequest = { ["Category"] = true, ["ListBy"] = true, ["NextToken"] = true, ["Order"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListPresetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPresetsRequest to be of type 'table'")
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["ListBy"] then asserts.AssertPresetListBy(struct["ListBy"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Order"] then asserts.AssertOrder(struct["Order"]) end
	if struct["MaxResults"] then asserts.Assert__integerMin1Max20(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPresetsRequest[k], "ListPresetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPresetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Category [__string] Optionally, specify a preset category to limit responses to only presets from that category.
-- * ListBy [PresetListBy] 
-- * NextToken [__string] Use this string, provided with the response to a previous request, to request the next batch of presets.
-- * Order [Order] 
-- * MaxResults [__integerMin1Max20] Optional. Number of presets, up to twenty, that will be returned at one time
-- @return ListPresetsRequest structure as a key-value pair table
function M.ListPresetsRequest(args)
	assert(args, "You must provide an argument table when creating ListPresetsRequest")
    local query_args = { 
        ["category"] = args["Category"],
        ["listBy"] = args["ListBy"],
        ["nextToken"] = args["NextToken"],
        ["order"] = args["Order"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Category"] = args["Category"],
		["ListBy"] = args["ListBy"],
		["NextToken"] = args["NextToken"],
		["Order"] = args["Order"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListPresetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationPlanSettings = { ["RenewalType"] = true, ["Commitment"] = true, ["ReservedSlots"] = true, nil }

function asserts.AssertReservationPlanSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationPlanSettings to be of type 'table'")
	assert(struct["ReservedSlots"], "Expected key ReservedSlots to exist in table")
	assert(struct["Commitment"], "Expected key Commitment to exist in table")
	assert(struct["RenewalType"], "Expected key RenewalType to exist in table")
	if struct["RenewalType"] then asserts.AssertRenewalType(struct["RenewalType"]) end
	if struct["Commitment"] then asserts.AssertCommitment(struct["Commitment"]) end
	if struct["ReservedSlots"] then asserts.Assert__integer(struct["ReservedSlots"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationPlanSettings[k], "ReservationPlanSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationPlanSettings
-- Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RenewalType [RenewalType] Specifies whether the pricing plan contract for your reserved queue automatically renews (AUTO_RENEW) or expires (EXPIRE) at the end of the contract period.
-- * Commitment [Commitment] The length of time that you commit to when you set up a pricing plan contract for a reserved queue.
-- * ReservedSlots [__integer] Specifies the number of reserved transcode slots (RTSs) for this queue. The number of RTS determines how many jobs the queue can process in parallel; each RTS can process one job at a time. To increase this number, create a replacement contract through the AWS Elemental MediaConvert console.
-- Required key: ReservedSlots
-- Required key: Commitment
-- Required key: RenewalType
-- @return ReservationPlanSettings structure as a key-value pair table
function M.ReservationPlanSettings(args)
	assert(args, "You must provide an argument table when creating ReservationPlanSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RenewalType"] = args["RenewalType"],
		["Commitment"] = args["Commitment"],
		["ReservedSlots"] = args["ReservedSlots"],
	}
	asserts.AssertReservationPlanSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionDescription = { ["LanguageCode"] = true, ["LanguageDescription"] = true, ["DestinationSettings"] = true, ["CustomLanguageCode"] = true, ["CaptionSelectorName"] = true, nil }

function asserts.AssertCaptionDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionDescription to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["LanguageDescription"] then asserts.Assert__string(struct["LanguageDescription"]) end
	if struct["DestinationSettings"] then asserts.AssertCaptionDestinationSettings(struct["DestinationSettings"]) end
	if struct["CustomLanguageCode"] then asserts.Assert__stringMin3Max3PatternAZaZ3(struct["CustomLanguageCode"]) end
	if struct["CaptionSelectorName"] then asserts.Assert__stringMin1(struct["CaptionSelectorName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionDescription[k], "CaptionDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionDescription
-- Description of Caption output
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] Indicates the language of the caption output track.
-- * LanguageDescription [__string] Human readable information to indicate captions available for players (eg. English, or Spanish). Alphanumeric characters, spaces, and underscore are legal.
-- * DestinationSettings [CaptionDestinationSettings] 
-- * CustomLanguageCode [__stringMin3Max3PatternAZaZ3] Indicates the language of the caption output track, using the ISO 639-2 or ISO 639-3 three-letter language code
-- * CaptionSelectorName [__stringMin1] Specifies which "Caption Selector":#inputs-caption_selector to use from each input when generating captions. The name should be of the format "Caption Selector <N>", which denotes that the Nth Caption Selector will be used from each input.
-- @return CaptionDescription structure as a key-value pair table
function M.CaptionDescription(args)
	assert(args, "You must provide an argument table when creating CaptionDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["LanguageDescription"] = args["LanguageDescription"],
		["DestinationSettings"] = args["DestinationSettings"],
		["CustomLanguageCode"] = args["CustomLanguageCode"],
		["CaptionSelectorName"] = args["CaptionSelectorName"],
	}
	asserts.AssertCaptionDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoiseReducerFilterSettings = { ["Strength"] = true, nil }

function asserts.AssertNoiseReducerFilterSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoiseReducerFilterSettings to be of type 'table'")
	if struct["Strength"] then asserts.Assert__integerMin0Max3(struct["Strength"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoiseReducerFilterSettings[k], "NoiseReducerFilterSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoiseReducerFilterSettings
-- Settings for a noise reducer filter
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Strength [__integerMin0Max3] Relative strength of noise reducing filter. Higher values produce stronger filtering.
-- @return NoiseReducerFilterSettings structure as a key-value pair table
function M.NoiseReducerFilterSettings(args)
	assert(args, "You must provide an argument table when creating NoiseReducerFilterSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Strength"] = args["Strength"],
	}
	asserts.AssertNoiseReducerFilterSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Queue = { ["ProgressingJobsCount"] = true, ["Status"] = true, ["Name"] = true, ["SubmittedJobsCount"] = true, ["LastUpdated"] = true, ["ReservationPlan"] = true, ["PricingPlan"] = true, ["Arn"] = true, ["Type"] = true, ["CreatedAt"] = true, ["Description"] = true, nil }

function asserts.AssertQueue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Queue to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ProgressingJobsCount"] then asserts.Assert__integer(struct["ProgressingJobsCount"]) end
	if struct["Status"] then asserts.AssertQueueStatus(struct["Status"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["SubmittedJobsCount"] then asserts.Assert__integer(struct["SubmittedJobsCount"]) end
	if struct["LastUpdated"] then asserts.Assert__timestampUnix(struct["LastUpdated"]) end
	if struct["ReservationPlan"] then asserts.AssertReservationPlan(struct["ReservationPlan"]) end
	if struct["PricingPlan"] then asserts.AssertPricingPlan(struct["PricingPlan"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Type"] then asserts.AssertType(struct["Type"]) end
	if struct["CreatedAt"] then asserts.Assert__timestampUnix(struct["CreatedAt"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Queue[k], "Queue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Queue
-- You can use queues to manage the resources that are available to your AWS account for running multiple transcoding jobs at the same time. If you don't specify a queue, the service sends all jobs through the default queue. For more information, see https://docs.aws.amazon.com/mediaconvert/latest/ug/about-resource-allocation-and-job-prioritization.html.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgressingJobsCount [__integer] The estimated number of jobs with a PROGRESSING status.
-- * Status [QueueStatus] Queues can be ACTIVE or PAUSED. If you pause a queue, the service won't begin processing jobs in that queue. Jobs that are running when you pause the queue continue to run until they finish or result in an error.
-- * Name [__string] A name that you create for each queue. Each name must be unique within your account.
-- * SubmittedJobsCount [__integer] The estimated number of jobs with a SUBMITTED status.
-- * LastUpdated [__timestampUnix] The time stamp in epoch seconds when the queue was last updated.
-- * ReservationPlan [ReservationPlan] Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
-- * PricingPlan [PricingPlan] Specifies whether the pricing plan for the queue is On-demand or Reserved. The pricing plan for the queue determines whether you pay On-demand or Reserved pricing for the transcoding jobs that you run through the queue. For Reserved queue pricing, you must set up a contract. You can create a Reserved queue contract through the AWS Elemental MediaConvert console.
-- * Arn [__string] An identifier for this resource that is unique within all of AWS.
-- * Type [Type] Specifies whether this queue is system or custom. System queues are built in. You can't modify or delete system queues. You can create and modify custom queues.
-- * CreatedAt [__timestampUnix] The time stamp in epoch seconds for queue creation.
-- * Description [__string] An optional description that you create for each queue.
-- Required key: Name
-- @return Queue structure as a key-value pair table
function M.Queue(args)
	assert(args, "You must provide an argument table when creating Queue")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgressingJobsCount"] = args["ProgressingJobsCount"],
		["Status"] = args["Status"],
		["Name"] = args["Name"],
		["SubmittedJobsCount"] = args["SubmittedJobsCount"],
		["LastUpdated"] = args["LastUpdated"],
		["ReservationPlan"] = args["ReservationPlan"],
		["PricingPlan"] = args["PricingPlan"],
		["Arn"] = args["Arn"],
		["Type"] = args["Type"],
		["CreatedAt"] = args["CreatedAt"],
		["Description"] = args["Description"],
	}
	asserts.AssertQueue(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoiseReducerSpatialFilterSettings = { ["Strength"] = true, ["PostFilterSharpenStrength"] = true, ["Speed"] = true, nil }

function asserts.AssertNoiseReducerSpatialFilterSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoiseReducerSpatialFilterSettings to be of type 'table'")
	if struct["Strength"] then asserts.Assert__integerMin0Max16(struct["Strength"]) end
	if struct["PostFilterSharpenStrength"] then asserts.Assert__integerMin0Max3(struct["PostFilterSharpenStrength"]) end
	if struct["Speed"] then asserts.Assert__integerMinNegative2Max3(struct["Speed"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoiseReducerSpatialFilterSettings[k], "NoiseReducerSpatialFilterSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoiseReducerSpatialFilterSettings
-- Noise reducer filter settings for spatial filter.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Strength [__integerMin0Max16] Relative strength of noise reducing filter. Higher values produce stronger filtering.
-- * PostFilterSharpenStrength [__integerMin0Max3] Specify strength of post noise reduction sharpening filter, with 0 disabling the filter and 3 enabling it at maximum strength.
-- * Speed [__integerMinNegative2Max3] The speed of the filter, from -2 (lower speed) to 3 (higher speed), with 0 being the nominal value.
-- @return NoiseReducerSpatialFilterSettings structure as a key-value pair table
function M.NoiseReducerSpatialFilterSettings(args)
	assert(args, "You must provide an argument table when creating NoiseReducerSpatialFilterSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Strength"] = args["Strength"],
		["PostFilterSharpenStrength"] = args["PostFilterSharpenStrength"],
		["Speed"] = args["Speed"],
	}
	asserts.AssertNoiseReducerSpatialFilterSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioCodecSettings = { ["WavSettings"] = true, ["Ac3Settings"] = true, ["AiffSettings"] = true, ["Codec"] = true, ["Mp2Settings"] = true, ["Eac3Settings"] = true, ["AacSettings"] = true, nil }

function asserts.AssertAudioCodecSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioCodecSettings to be of type 'table'")
	if struct["WavSettings"] then asserts.AssertWavSettings(struct["WavSettings"]) end
	if struct["Ac3Settings"] then asserts.AssertAc3Settings(struct["Ac3Settings"]) end
	if struct["AiffSettings"] then asserts.AssertAiffSettings(struct["AiffSettings"]) end
	if struct["Codec"] then asserts.AssertAudioCodec(struct["Codec"]) end
	if struct["Mp2Settings"] then asserts.AssertMp2Settings(struct["Mp2Settings"]) end
	if struct["Eac3Settings"] then asserts.AssertEac3Settings(struct["Eac3Settings"]) end
	if struct["AacSettings"] then asserts.AssertAacSettings(struct["AacSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioCodecSettings[k], "AudioCodecSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioCodecSettings
-- Audio codec settings (CodecSettings) under (AudioDescriptions) contains the group of settings related to audio encoding. The settings in this group vary depending on the value you choose for Audio codec (Codec). For each codec enum you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * AAC, AacSettings * MP2, Mp2Settings * WAV, WavSettings * AIFF, AiffSettings * AC3, Ac3Settings * EAC3, Eac3Settings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WavSettings [WavSettings] 
-- * Ac3Settings [Ac3Settings] 
-- * AiffSettings [AiffSettings] 
-- * Codec [AudioCodec] 
-- * Mp2Settings [Mp2Settings] 
-- * Eac3Settings [Eac3Settings] 
-- * AacSettings [AacSettings] 
-- @return AudioCodecSettings structure as a key-value pair table
function M.AudioCodecSettings(args)
	assert(args, "You must provide an argument table when creating AudioCodecSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WavSettings"] = args["WavSettings"],
		["Ac3Settings"] = args["Ac3Settings"],
		["AiffSettings"] = args["AiffSettings"],
		["Codec"] = args["Codec"],
		["Mp2Settings"] = args["Mp2Settings"],
		["Eac3Settings"] = args["Eac3Settings"],
		["AacSettings"] = args["AacSettings"],
	}
	asserts.AssertAudioCodecSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputGroupSettings = { ["MsSmoothGroupSettings"] = true, ["FileGroupSettings"] = true, ["HlsGroupSettings"] = true, ["CmafGroupSettings"] = true, ["DashIsoGroupSettings"] = true, ["Type"] = true, nil }

function asserts.AssertOutputGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputGroupSettings to be of type 'table'")
	if struct["MsSmoothGroupSettings"] then asserts.AssertMsSmoothGroupSettings(struct["MsSmoothGroupSettings"]) end
	if struct["FileGroupSettings"] then asserts.AssertFileGroupSettings(struct["FileGroupSettings"]) end
	if struct["HlsGroupSettings"] then asserts.AssertHlsGroupSettings(struct["HlsGroupSettings"]) end
	if struct["CmafGroupSettings"] then asserts.AssertCmafGroupSettings(struct["CmafGroupSettings"]) end
	if struct["DashIsoGroupSettings"] then asserts.AssertDashIsoGroupSettings(struct["DashIsoGroupSettings"]) end
	if struct["Type"] then asserts.AssertOutputGroupType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputGroupSettings[k], "OutputGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputGroupSettings
-- Output Group settings, including type
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MsSmoothGroupSettings [MsSmoothGroupSettings] 
-- * FileGroupSettings [FileGroupSettings] 
-- * HlsGroupSettings [HlsGroupSettings] 
-- * CmafGroupSettings [CmafGroupSettings] 
-- * DashIsoGroupSettings [DashIsoGroupSettings] 
-- * Type [OutputGroupType] 
-- @return OutputGroupSettings structure as a key-value pair table
function M.OutputGroupSettings(args)
	assert(args, "You must provide an argument table when creating OutputGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MsSmoothGroupSettings"] = args["MsSmoothGroupSettings"],
		["FileGroupSettings"] = args["FileGroupSettings"],
		["HlsGroupSettings"] = args["HlsGroupSettings"],
		["CmafGroupSettings"] = args["CmafGroupSettings"],
		["DashIsoGroupSettings"] = args["DashIsoGroupSettings"],
		["Type"] = args["Type"],
	}
	asserts.AssertOutputGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Deinterlacer = { ["Control"] = true, ["Mode"] = true, ["Algorithm"] = true, nil }

function asserts.AssertDeinterlacer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Deinterlacer to be of type 'table'")
	if struct["Control"] then asserts.AssertDeinterlacerControl(struct["Control"]) end
	if struct["Mode"] then asserts.AssertDeinterlacerMode(struct["Mode"]) end
	if struct["Algorithm"] then asserts.AssertDeinterlaceAlgorithm(struct["Algorithm"]) end
	for k,_ in pairs(struct) do
		assert(keys.Deinterlacer[k], "Deinterlacer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Deinterlacer
-- Settings for deinterlacer
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Control [DeinterlacerControl] 
-- * Mode [DeinterlacerMode] 
-- * Algorithm [DeinterlaceAlgorithm] 
-- @return Deinterlacer structure as a key-value pair table
function M.Deinterlacer(args)
	assert(args, "You must provide an argument table when creating Deinterlacer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Control"] = args["Control"],
		["Mode"] = args["Mode"],
		["Algorithm"] = args["Algorithm"],
	}
	asserts.AssertDeinterlacer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbSubSourceSettings = { ["Pid"] = true, nil }

function asserts.AssertDvbSubSourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbSubSourceSettings to be of type 'table'")
	if struct["Pid"] then asserts.Assert__integerMin1Max2147483647(struct["Pid"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbSubSourceSettings[k], "DvbSubSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbSubSourceSettings
-- DVB Sub Source Settings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pid [__integerMin1Max2147483647] When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
-- @return DvbSubSourceSettings structure as a key-value pair table
function M.DvbSubSourceSettings(args)
	assert(args, "You must provide an argument table when creating DvbSubSourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pid"] = args["Pid"],
	}
	asserts.AssertDvbSubSourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobRequest = { ["Id"] = true, nil }

function asserts.AssertGetJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobRequest[k], "GetJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] the job ID of the job.
-- Required key: Id
-- @return GetJobRequest structure as a key-value pair table
function M.GetJobRequest(args)
	assert(args, "You must provide an argument table when creating GetJobRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
	}
	asserts.AssertGetJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Rectangle = { ["Y"] = true, ["Width"] = true, ["X"] = true, ["Height"] = true, nil }

function asserts.AssertRectangle(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rectangle to be of type 'table'")
	if struct["Y"] then asserts.Assert__integerMin0Max2147483647(struct["Y"]) end
	if struct["Width"] then asserts.Assert__integerMin2Max2147483647(struct["Width"]) end
	if struct["X"] then asserts.Assert__integerMin0Max2147483647(struct["X"]) end
	if struct["Height"] then asserts.Assert__integerMin2Max2147483647(struct["Height"]) end
	for k,_ in pairs(struct) do
		assert(keys.Rectangle[k], "Rectangle contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rectangle
-- Use Rectangle to identify a specific area of the video frame.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Y [__integerMin0Max2147483647] The distance, in pixels, between the rectangle and the top edge of the video frame. Specify only even numbers.
-- * Width [__integerMin2Max2147483647] Width of rectangle in pixels. Specify only even numbers.
-- * X [__integerMin0Max2147483647] The distance, in pixels, between the rectangle and the left edge of the video frame. Specify only even numbers.
-- * Height [__integerMin2Max2147483647] Height of rectangle in pixels. Specify only even numbers.
-- @return Rectangle structure as a key-value pair table
function M.Rectangle(args)
	assert(args, "You must provide an argument table when creating Rectangle")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Y"] = args["Y"],
		["Width"] = args["Width"],
		["X"] = args["X"],
		["Height"] = args["Height"],
	}
	asserts.AssertRectangle(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Mp2Settings = { ["Channels"] = true, ["SampleRate"] = true, ["Bitrate"] = true, nil }

function asserts.AssertMp2Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mp2Settings to be of type 'table'")
	if struct["Channels"] then asserts.Assert__integerMin1Max2(struct["Channels"]) end
	if struct["SampleRate"] then asserts.Assert__integerMin32000Max48000(struct["SampleRate"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin32000Max384000(struct["Bitrate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Mp2Settings[k], "Mp2Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mp2Settings
-- Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value MP2.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channels [__integerMin1Max2] Set Channels to specify the number of channels in this output audio track. Choosing Mono in the console will give you 1 output channel; choosing Stereo will give you 2. In the API, valid values are 1 and 2.
-- * SampleRate [__integerMin32000Max48000] Sample rate in hz.
-- * Bitrate [__integerMin32000Max384000] Average bitrate in bits/second.
-- @return Mp2Settings structure as a key-value pair table
function M.Mp2Settings(args)
	assert(args, "You must provide an argument table when creating Mp2Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Channels"] = args["Channels"],
		["SampleRate"] = args["SampleRate"],
		["Bitrate"] = args["Bitrate"],
	}
	asserts.AssertMp2Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobTemplateResponse = { ["JobTemplate"] = true, nil }

function asserts.AssertGetJobTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobTemplateResponse to be of type 'table'")
	if struct["JobTemplate"] then asserts.AssertJobTemplate(struct["JobTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobTemplateResponse[k], "GetJobTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobTemplate [JobTemplate] 
-- @return GetJobTemplateResponse structure as a key-value pair table
function M.GetJobTemplateResponse(args)
	assert(args, "You must provide an argument table when creating GetJobTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobTemplate"] = args["JobTemplate"],
	}
	asserts.AssertGetJobTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobTemplateResponse = { ["JobTemplate"] = true, nil }

function asserts.AssertCreateJobTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobTemplateResponse to be of type 'table'")
	if struct["JobTemplate"] then asserts.AssertJobTemplate(struct["JobTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobTemplateResponse[k], "CreateJobTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobTemplate [JobTemplate] 
-- @return CreateJobTemplateResponse structure as a key-value pair table
function M.CreateJobTemplateResponse(args)
	assert(args, "You must provide an argument table when creating CreateJobTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobTemplate"] = args["JobTemplate"],
	}
	asserts.AssertCreateJobTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.F4vSettings = { ["MoovPlacement"] = true, nil }

function asserts.AssertF4vSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected F4vSettings to be of type 'table'")
	if struct["MoovPlacement"] then asserts.AssertF4vMoovPlacement(struct["MoovPlacement"]) end
	for k,_ in pairs(struct) do
		assert(keys.F4vSettings[k], "F4vSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type F4vSettings
-- Settings for F4v container
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MoovPlacement [F4vMoovPlacement] 
-- @return F4vSettings structure as a key-value pair table
function M.F4vSettings(args)
	assert(args, "You must provide an argument table when creating F4vSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MoovPlacement"] = args["MoovPlacement"],
	}
	asserts.AssertF4vSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePresetRequest = { ["Name"] = true, nil }

function asserts.AssertDeletePresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePresetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePresetRequest[k], "DeletePresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePresetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The name of the preset to be deleted.
-- Required key: Name
-- @return DeletePresetRequest structure as a key-value pair table
function M.DeletePresetRequest(args)
	assert(args, "You must provide an argument table when creating DeletePresetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeletePresetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputGroup = { ["OutputGroupSettings"] = true, ["Outputs"] = true, ["CustomName"] = true, ["Name"] = true, nil }

function asserts.AssertOutputGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputGroup to be of type 'table'")
	if struct["OutputGroupSettings"] then asserts.AssertOutputGroupSettings(struct["OutputGroupSettings"]) end
	if struct["Outputs"] then asserts.Assert__listOfOutput(struct["Outputs"]) end
	if struct["CustomName"] then asserts.Assert__string(struct["CustomName"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputGroup[k], "OutputGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputGroup
-- Group of outputs
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputGroupSettings [OutputGroupSettings] 
-- * Outputs [__listOfOutput] This object holds groups of encoding settings, one group of settings per output.
-- * CustomName [__string] Use Custom Group Name (CustomName) to specify a name for the output group. This value is displayed on the console and can make your job settings JSON more human-readable. It does not affect your outputs. Use up to twelve characters that are either letters, numbers, spaces, or underscores.
-- * Name [__string] Name of the output group
-- @return OutputGroup structure as a key-value pair table
function M.OutputGroup(args)
	assert(args, "You must provide an argument table when creating OutputGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutputGroupSettings"] = args["OutputGroupSettings"],
		["Outputs"] = args["Outputs"],
		["CustomName"] = args["CustomName"],
		["Name"] = args["Name"],
	}
	asserts.AssertOutputGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListJobTemplatesRequest = { ["Category"] = true, ["ListBy"] = true, ["NextToken"] = true, ["Order"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListJobTemplatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobTemplatesRequest to be of type 'table'")
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["ListBy"] then asserts.AssertJobTemplateListBy(struct["ListBy"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Order"] then asserts.AssertOrder(struct["Order"]) end
	if struct["MaxResults"] then asserts.Assert__integerMin1Max20(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListJobTemplatesRequest[k], "ListJobTemplatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobTemplatesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Category [__string] Optionally, specify a job template category to limit responses to only job templates from that category.
-- * ListBy [JobTemplateListBy] 
-- * NextToken [__string] Use this string, provided with the response to a previous request, to request the next batch of job templates.
-- * Order [Order] 
-- * MaxResults [__integerMin1Max20] Optional. Number of job templates, up to twenty, that will be returned at one time.
-- @return ListJobTemplatesRequest structure as a key-value pair table
function M.ListJobTemplatesRequest(args)
	assert(args, "You must provide an argument table when creating ListJobTemplatesRequest")
    local query_args = { 
        ["category"] = args["Category"],
        ["listBy"] = args["ListBy"],
        ["nextToken"] = args["NextToken"],
        ["order"] = args["Order"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Category"] = args["Category"],
		["ListBy"] = args["ListBy"],
		["NextToken"] = args["NextToken"],
		["Order"] = args["Order"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListJobTemplatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ContainerSettings = { ["M3u8Settings"] = true, ["Container"] = true, ["Mp4Settings"] = true, ["M2tsSettings"] = true, ["MovSettings"] = true, ["F4vSettings"] = true, nil }

function asserts.AssertContainerSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContainerSettings to be of type 'table'")
	if struct["M3u8Settings"] then asserts.AssertM3u8Settings(struct["M3u8Settings"]) end
	if struct["Container"] then asserts.AssertContainerType(struct["Container"]) end
	if struct["Mp4Settings"] then asserts.AssertMp4Settings(struct["Mp4Settings"]) end
	if struct["M2tsSettings"] then asserts.AssertM2tsSettings(struct["M2tsSettings"]) end
	if struct["MovSettings"] then asserts.AssertMovSettings(struct["MovSettings"]) end
	if struct["F4vSettings"] then asserts.AssertF4vSettings(struct["F4vSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContainerSettings[k], "ContainerSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContainerSettings
-- Container specific settings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * M3u8Settings [M3u8Settings] 
-- * Container [ContainerType] 
-- * Mp4Settings [Mp4Settings] 
-- * M2tsSettings [M2tsSettings] 
-- * MovSettings [MovSettings] 
-- * F4vSettings [F4vSettings] 
-- @return ContainerSettings structure as a key-value pair table
function M.ContainerSettings(args)
	assert(args, "You must provide an argument table when creating ContainerSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["M3u8Settings"] = args["M3u8Settings"],
		["Container"] = args["Container"],
		["Mp4Settings"] = args["Mp4Settings"],
		["M2tsSettings"] = args["M2tsSettings"],
		["MovSettings"] = args["MovSettings"],
		["F4vSettings"] = args["F4vSettings"],
	}
	asserts.AssertContainerSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioDescription = { ["CodecSettings"] = true, ["LanguageCode"] = true, ["AudioSourceName"] = true, ["RemixSettings"] = true, ["StreamName"] = true, ["LanguageCodeControl"] = true, ["AudioTypeControl"] = true, ["CustomLanguageCode"] = true, ["AudioType"] = true, ["AudioNormalizationSettings"] = true, nil }

function asserts.AssertAudioDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioDescription to be of type 'table'")
	if struct["CodecSettings"] then asserts.AssertAudioCodecSettings(struct["CodecSettings"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["AudioSourceName"] then asserts.Assert__string(struct["AudioSourceName"]) end
	if struct["RemixSettings"] then asserts.AssertRemixSettings(struct["RemixSettings"]) end
	if struct["StreamName"] then asserts.Assert__stringPatternWS(struct["StreamName"]) end
	if struct["LanguageCodeControl"] then asserts.AssertAudioLanguageCodeControl(struct["LanguageCodeControl"]) end
	if struct["AudioTypeControl"] then asserts.AssertAudioTypeControl(struct["AudioTypeControl"]) end
	if struct["CustomLanguageCode"] then asserts.Assert__stringMin3Max3PatternAZaZ3(struct["CustomLanguageCode"]) end
	if struct["AudioType"] then asserts.Assert__integerMin0Max255(struct["AudioType"]) end
	if struct["AudioNormalizationSettings"] then asserts.AssertAudioNormalizationSettings(struct["AudioNormalizationSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioDescription[k], "AudioDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioDescription
-- Description of audio output
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodecSettings [AudioCodecSettings] 
-- * LanguageCode [LanguageCode] Indicates the language of the audio output track. The ISO 639 language specified in the 'Language Code' drop down will be used when 'Follow Input Language Code' is not selected or when 'Follow Input Language Code' is selected but there is no ISO 639 language code specified by the input.
-- * AudioSourceName [__string] Specifies which audio data to use from each input. In the simplest case, specify an "Audio Selector":#inputs-audio_selector by name based on its order within each input. For example if you specify "Audio Selector 3", then the third audio selector will be used from each input. If an input does not have an "Audio Selector 3", then the audio selector marked as "default" in that input will be used. If there is no audio selector marked as "default", silence will be inserted for the duration of that input. Alternatively, an "Audio Selector Group":#inputs-audio_selector_group name may be specified, with similar default/silence behavior. If no audio_source_name is specified, then "Audio Selector 1" will be chosen automatically.
-- * RemixSettings [RemixSettings] Advanced audio remixing settings.
-- * StreamName [__stringPatternWS] Used for MS Smooth and Apple HLS outputs. Indicates the name displayed by the player (eg. English, or Director Commentary). Alphanumeric characters, spaces, and underscore are legal.
-- * LanguageCodeControl [AudioLanguageCodeControl] 
-- * AudioTypeControl [AudioTypeControl] 
-- * CustomLanguageCode [__stringMin3Max3PatternAZaZ3] Specify the language for this audio output track, using the ISO 639-2 or ISO 639-3 three-letter language code. The language specified will be used when 'Follow Input Language Code' is not selected or when 'Follow Input Language Code' is selected but there is no ISO 639 language code specified by the input.
-- * AudioType [__integerMin0Max255] Applies only if Follow Input Audio Type is unchecked (false). A number between 0 and 255. The following are defined in ISO-IEC 13818-1: 0 = Undefined, 1 = Clean Effects, 2 = Hearing Impaired, 3 = Visually Impaired Commentary, 4-255 = Reserved.
-- * AudioNormalizationSettings [AudioNormalizationSettings] 
-- @return AudioDescription structure as a key-value pair table
function M.AudioDescription(args)
	assert(args, "You must provide an argument table when creating AudioDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodecSettings"] = args["CodecSettings"],
		["LanguageCode"] = args["LanguageCode"],
		["AudioSourceName"] = args["AudioSourceName"],
		["RemixSettings"] = args["RemixSettings"],
		["StreamName"] = args["StreamName"],
		["LanguageCodeControl"] = args["LanguageCodeControl"],
		["AudioTypeControl"] = args["AudioTypeControl"],
		["CustomLanguageCode"] = args["CustomLanguageCode"],
		["AudioType"] = args["AudioType"],
		["AudioNormalizationSettings"] = args["AudioNormalizationSettings"],
	}
	asserts.AssertAudioDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbSdtSettings = { ["ServiceProviderName"] = true, ["SdtInterval"] = true, ["ServiceName"] = true, ["OutputSdt"] = true, nil }

function asserts.AssertDvbSdtSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbSdtSettings to be of type 'table'")
	if struct["ServiceProviderName"] then asserts.Assert__stringMin1Max256(struct["ServiceProviderName"]) end
	if struct["SdtInterval"] then asserts.Assert__integerMin25Max2000(struct["SdtInterval"]) end
	if struct["ServiceName"] then asserts.Assert__stringMin1Max256(struct["ServiceName"]) end
	if struct["OutputSdt"] then asserts.AssertOutputSdt(struct["OutputSdt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbSdtSettings[k], "DvbSdtSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbSdtSettings
-- Inserts DVB Service Description Table (NIT) at the specified table repetition interval.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceProviderName [__stringMin1Max256] The service provider name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters.
-- * SdtInterval [__integerMin25Max2000] The number of milliseconds between instances of this table in the output transport stream.
-- * ServiceName [__stringMin1Max256] The service name placed in the service_descriptor in the Service Description Table. Maximum length is 256 characters.
-- * OutputSdt [OutputSdt] 
-- @return DvbSdtSettings structure as a key-value pair table
function M.DvbSdtSettings(args)
	assert(args, "You must provide an argument table when creating DvbSdtSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceProviderName"] = args["ServiceProviderName"],
		["SdtInterval"] = args["SdtInterval"],
		["ServiceName"] = args["ServiceName"],
		["OutputSdt"] = args["OutputSdt"],
	}
	asserts.AssertDvbSdtSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePresetRequest = { ["Category"] = true, ["Settings"] = true, ["Description"] = true, ["Name"] = true, nil }

function asserts.AssertUpdatePresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePresetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Category"] then asserts.Assert__string(struct["Category"]) end
	if struct["Settings"] then asserts.AssertPresetSettings(struct["Settings"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePresetRequest[k], "UpdatePresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePresetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Category [__string] The new category for the preset, if you are changing it.
-- * Settings [PresetSettings] 
-- * Description [__string] The new description for the preset, if you are changing it.
-- * Name [__string] The name of the preset you are modifying.
-- Required key: Name
-- @return UpdatePresetRequest structure as a key-value pair table
function M.UpdatePresetRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePresetRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Category"] = args["Category"],
		["Settings"] = args["Settings"],
		["Description"] = args["Description"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdatePresetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.H264Settings = { ["CodecProfile"] = true, ["SpatialAdaptiveQuantization"] = true, ["TemporalAdaptiveQuantization"] = true, ["MaxBitrate"] = true, ["Softness"] = true, ["Syntax"] = true, ["FramerateNumerator"] = true, ["FlickerAdaptiveQuantization"] = true, ["MinIInterval"] = true, ["QvbrSettings"] = true, ["UnregisteredSeiTimecode"] = true, ["FramerateControl"] = true, ["NumberReferenceFrames"] = true, ["FramerateDenominator"] = true, ["Bitrate"] = true, ["DynamicSubGop"] = true, ["EntropyEncoding"] = true, ["GopSizeUnits"] = true, ["GopBReference"] = true, ["Telecine"] = true, ["ParDenominator"] = true, ["AdaptiveQuantization"] = true, ["InterlaceMode"] = true, ["QualityTuningLevel"] = true, ["HrdBufferInitialFillPercentage"] = true, ["RepeatPps"] = true, ["FieldEncoding"] = true, ["SlowPal"] = true, ["GopClosedCadence"] = true, ["GopSize"] = true, ["ParControl"] = true, ["Slices"] = true, ["FramerateConversionAlgorithm"] = true, ["ParNumerator"] = true, ["RateControlMode"] = true, ["SceneChangeDetect"] = true, ["CodecLevel"] = true, ["NumberBFramesBetweenReferenceFrames"] = true, ["HrdBufferSize"] = true, nil }

function asserts.AssertH264Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected H264Settings to be of type 'table'")
	if struct["CodecProfile"] then asserts.AssertH264CodecProfile(struct["CodecProfile"]) end
	if struct["SpatialAdaptiveQuantization"] then asserts.AssertH264SpatialAdaptiveQuantization(struct["SpatialAdaptiveQuantization"]) end
	if struct["TemporalAdaptiveQuantization"] then asserts.AssertH264TemporalAdaptiveQuantization(struct["TemporalAdaptiveQuantization"]) end
	if struct["MaxBitrate"] then asserts.Assert__integerMin1000Max1152000000(struct["MaxBitrate"]) end
	if struct["Softness"] then asserts.Assert__integerMin0Max128(struct["Softness"]) end
	if struct["Syntax"] then asserts.AssertH264Syntax(struct["Syntax"]) end
	if struct["FramerateNumerator"] then asserts.Assert__integerMin1Max2147483647(struct["FramerateNumerator"]) end
	if struct["FlickerAdaptiveQuantization"] then asserts.AssertH264FlickerAdaptiveQuantization(struct["FlickerAdaptiveQuantization"]) end
	if struct["MinIInterval"] then asserts.Assert__integerMin0Max30(struct["MinIInterval"]) end
	if struct["QvbrSettings"] then asserts.AssertH264QvbrSettings(struct["QvbrSettings"]) end
	if struct["UnregisteredSeiTimecode"] then asserts.AssertH264UnregisteredSeiTimecode(struct["UnregisteredSeiTimecode"]) end
	if struct["FramerateControl"] then asserts.AssertH264FramerateControl(struct["FramerateControl"]) end
	if struct["NumberReferenceFrames"] then asserts.Assert__integerMin1Max6(struct["NumberReferenceFrames"]) end
	if struct["FramerateDenominator"] then asserts.Assert__integerMin1Max2147483647(struct["FramerateDenominator"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin1000Max1152000000(struct["Bitrate"]) end
	if struct["DynamicSubGop"] then asserts.AssertH264DynamicSubGop(struct["DynamicSubGop"]) end
	if struct["EntropyEncoding"] then asserts.AssertH264EntropyEncoding(struct["EntropyEncoding"]) end
	if struct["GopSizeUnits"] then asserts.AssertH264GopSizeUnits(struct["GopSizeUnits"]) end
	if struct["GopBReference"] then asserts.AssertH264GopBReference(struct["GopBReference"]) end
	if struct["Telecine"] then asserts.AssertH264Telecine(struct["Telecine"]) end
	if struct["ParDenominator"] then asserts.Assert__integerMin1Max2147483647(struct["ParDenominator"]) end
	if struct["AdaptiveQuantization"] then asserts.AssertH264AdaptiveQuantization(struct["AdaptiveQuantization"]) end
	if struct["InterlaceMode"] then asserts.AssertH264InterlaceMode(struct["InterlaceMode"]) end
	if struct["QualityTuningLevel"] then asserts.AssertH264QualityTuningLevel(struct["QualityTuningLevel"]) end
	if struct["HrdBufferInitialFillPercentage"] then asserts.Assert__integerMin0Max100(struct["HrdBufferInitialFillPercentage"]) end
	if struct["RepeatPps"] then asserts.AssertH264RepeatPps(struct["RepeatPps"]) end
	if struct["FieldEncoding"] then asserts.AssertH264FieldEncoding(struct["FieldEncoding"]) end
	if struct["SlowPal"] then asserts.AssertH264SlowPal(struct["SlowPal"]) end
	if struct["GopClosedCadence"] then asserts.Assert__integerMin0Max2147483647(struct["GopClosedCadence"]) end
	if struct["GopSize"] then asserts.Assert__doubleMin0(struct["GopSize"]) end
	if struct["ParControl"] then asserts.AssertH264ParControl(struct["ParControl"]) end
	if struct["Slices"] then asserts.Assert__integerMin1Max32(struct["Slices"]) end
	if struct["FramerateConversionAlgorithm"] then asserts.AssertH264FramerateConversionAlgorithm(struct["FramerateConversionAlgorithm"]) end
	if struct["ParNumerator"] then asserts.Assert__integerMin1Max2147483647(struct["ParNumerator"]) end
	if struct["RateControlMode"] then asserts.AssertH264RateControlMode(struct["RateControlMode"]) end
	if struct["SceneChangeDetect"] then asserts.AssertH264SceneChangeDetect(struct["SceneChangeDetect"]) end
	if struct["CodecLevel"] then asserts.AssertH264CodecLevel(struct["CodecLevel"]) end
	if struct["NumberBFramesBetweenReferenceFrames"] then asserts.Assert__integerMin0Max7(struct["NumberBFramesBetweenReferenceFrames"]) end
	if struct["HrdBufferSize"] then asserts.Assert__integerMin0Max1152000000(struct["HrdBufferSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.H264Settings[k], "H264Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type H264Settings
-- Required when you set (Codec) under (VideoDescription)>(CodecSettings) to the value H_264.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodecProfile [H264CodecProfile] 
-- * SpatialAdaptiveQuantization [H264SpatialAdaptiveQuantization] 
-- * TemporalAdaptiveQuantization [H264TemporalAdaptiveQuantization] 
-- * MaxBitrate [__integerMin1000Max1152000000] Maximum bitrate in bits/second. For example, enter five megabits per second as 5000000. Required when Rate control mode is QVBR.
-- * Softness [__integerMin0Max128] Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
-- * Syntax [H264Syntax] 
-- * FramerateNumerator [__integerMin1Max2147483647] Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
-- * FlickerAdaptiveQuantization [H264FlickerAdaptiveQuantization] 
-- * MinIInterval [__integerMin0Max30] Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. This setting is only used when Scene Change Detect is enabled. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
-- * QvbrSettings [H264QvbrSettings] Settings for quality-defined variable bitrate encoding with the H.264 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
-- * UnregisteredSeiTimecode [H264UnregisteredSeiTimecode] 
-- * FramerateControl [H264FramerateControl] 
-- * NumberReferenceFrames [__integerMin1Max6] Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
-- * FramerateDenominator [__integerMin1Max2147483647] When you use the API for transcode jobs that use framerate conversion, specify the framerate as a fraction. For example,  24000 / 1001 = 23.976 fps. Use FramerateDenominator to specify the denominator of this fraction. In this example, use 1001 for the value of FramerateDenominator. When you use the console for transcode jobs that use framerate conversion, provide the value as a decimal number for Framerate. In this example, specify 23.976.
-- * Bitrate [__integerMin1000Max1152000000] Average bitrate in bits/second. Required for VBR and CBR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
-- * DynamicSubGop [H264DynamicSubGop] Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
-- * EntropyEncoding [H264EntropyEncoding] 
-- * GopSizeUnits [H264GopSizeUnits] 
-- * GopBReference [H264GopBReference] 
-- * Telecine [H264Telecine] 
-- * ParDenominator [__integerMin1Max2147483647] Pixel Aspect Ratio denominator.
-- * AdaptiveQuantization [H264AdaptiveQuantization] 
-- * InterlaceMode [H264InterlaceMode] 
-- * QualityTuningLevel [H264QualityTuningLevel] 
-- * HrdBufferInitialFillPercentage [__integerMin0Max100] Percentage of the buffer that should initially be filled (HRD buffer model).
-- * RepeatPps [H264RepeatPps] 
-- * FieldEncoding [H264FieldEncoding] 
-- * SlowPal [H264SlowPal] 
-- * GopClosedCadence [__integerMin0Max2147483647] Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
-- * GopSize [__doubleMin0] GOP Length (keyframe interval) in frames or seconds. Must be greater than zero.
-- * ParControl [H264ParControl] 
-- * Slices [__integerMin1Max32] Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
-- * FramerateConversionAlgorithm [H264FramerateConversionAlgorithm] 
-- * ParNumerator [__integerMin1Max2147483647] Pixel Aspect Ratio numerator.
-- * RateControlMode [H264RateControlMode] 
-- * SceneChangeDetect [H264SceneChangeDetect] 
-- * CodecLevel [H264CodecLevel] 
-- * NumberBFramesBetweenReferenceFrames [__integerMin0Max7] Number of B-frames between reference frames.
-- * HrdBufferSize [__integerMin0Max1152000000] Size of buffer (HRD buffer model) in bits. For example, enter five megabits as 5000000.
-- @return H264Settings structure as a key-value pair table
function M.H264Settings(args)
	assert(args, "You must provide an argument table when creating H264Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodecProfile"] = args["CodecProfile"],
		["SpatialAdaptiveQuantization"] = args["SpatialAdaptiveQuantization"],
		["TemporalAdaptiveQuantization"] = args["TemporalAdaptiveQuantization"],
		["MaxBitrate"] = args["MaxBitrate"],
		["Softness"] = args["Softness"],
		["Syntax"] = args["Syntax"],
		["FramerateNumerator"] = args["FramerateNumerator"],
		["FlickerAdaptiveQuantization"] = args["FlickerAdaptiveQuantization"],
		["MinIInterval"] = args["MinIInterval"],
		["QvbrSettings"] = args["QvbrSettings"],
		["UnregisteredSeiTimecode"] = args["UnregisteredSeiTimecode"],
		["FramerateControl"] = args["FramerateControl"],
		["NumberReferenceFrames"] = args["NumberReferenceFrames"],
		["FramerateDenominator"] = args["FramerateDenominator"],
		["Bitrate"] = args["Bitrate"],
		["DynamicSubGop"] = args["DynamicSubGop"],
		["EntropyEncoding"] = args["EntropyEncoding"],
		["GopSizeUnits"] = args["GopSizeUnits"],
		["GopBReference"] = args["GopBReference"],
		["Telecine"] = args["Telecine"],
		["ParDenominator"] = args["ParDenominator"],
		["AdaptiveQuantization"] = args["AdaptiveQuantization"],
		["InterlaceMode"] = args["InterlaceMode"],
		["QualityTuningLevel"] = args["QualityTuningLevel"],
		["HrdBufferInitialFillPercentage"] = args["HrdBufferInitialFillPercentage"],
		["RepeatPps"] = args["RepeatPps"],
		["FieldEncoding"] = args["FieldEncoding"],
		["SlowPal"] = args["SlowPal"],
		["GopClosedCadence"] = args["GopClosedCadence"],
		["GopSize"] = args["GopSize"],
		["ParControl"] = args["ParControl"],
		["Slices"] = args["Slices"],
		["FramerateConversionAlgorithm"] = args["FramerateConversionAlgorithm"],
		["ParNumerator"] = args["ParNumerator"],
		["RateControlMode"] = args["RateControlMode"],
		["SceneChangeDetect"] = args["SceneChangeDetect"],
		["CodecLevel"] = args["CodecLevel"],
		["NumberBFramesBetweenReferenceFrames"] = args["NumberBFramesBetweenReferenceFrames"],
		["HrdBufferSize"] = args["HrdBufferSize"],
	}
	asserts.AssertH264Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImageInserter = { ["InsertableImages"] = true, nil }

function asserts.AssertImageInserter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImageInserter to be of type 'table'")
	if struct["InsertableImages"] then asserts.Assert__listOfInsertableImage(struct["InsertableImages"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImageInserter[k], "ImageInserter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImageInserter
-- Enable the Image inserter (ImageInserter) feature to include a graphic overlay on your video. Enable or disable this feature for each output individually. This setting is disabled by default.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InsertableImages [__listOfInsertableImage] Image to insert. Must be 32 bit windows BMP, PNG, or TGA file. Must not be  larger than the output frames.
-- @return ImageInserter structure as a key-value pair table
function M.ImageInserter(args)
	assert(args, "You must provide an argument table when creating ImageInserter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InsertableImages"] = args["InsertableImages"],
	}
	asserts.AssertImageInserter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagResourceRequest = { ["Arn"] = true, ["Tags"] = true, nil }

function asserts.AssertTagResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagResourceRequest to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Tags"] then asserts.Assert__mapOf__string(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagResourceRequest[k], "TagResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Arn [__string] The Amazon Resource Name (ARN) of the resource that you want to tag. To get the ARN, send a GET request with the resource name.
-- * Tags [__mapOf__string] The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
-- Required key: Arn
-- Required key: Tags
-- @return TagResourceRequest structure as a key-value pair table
function M.TagResourceRequest(args)
	assert(args, "You must provide an argument table when creating TagResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Arn"] = args["Arn"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.H265QvbrSettings = { ["QvbrQualityLevel"] = true, ["MaxAverageBitrate"] = true, nil }

function asserts.AssertH265QvbrSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected H265QvbrSettings to be of type 'table'")
	if struct["QvbrQualityLevel"] then asserts.Assert__integerMin1Max10(struct["QvbrQualityLevel"]) end
	if struct["MaxAverageBitrate"] then asserts.Assert__integerMin1000Max1466400000(struct["MaxAverageBitrate"]) end
	for k,_ in pairs(struct) do
		assert(keys.H265QvbrSettings[k], "H265QvbrSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type H265QvbrSettings
-- Settings for quality-defined variable bitrate encoding with the H.265 codec. Required when you set Rate control mode to QVBR. Not valid when you set Rate control mode to a value other than QVBR, or when you don't define Rate control mode.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QvbrQualityLevel [__integerMin1Max10] Required when you use QVBR rate control mode. That is, when you specify qvbrSettings within h265Settings. Specify the target quality level for this output, from 1 to 10. Use higher numbers for greater quality. Level 10 results in nearly lossless compression. The quality level for most broadcast-quality transcodes is between 6 and 9.
-- * MaxAverageBitrate [__integerMin1000Max1466400000] Use this setting only when Rate control mode is QVBR and Quality tuning level is Multi-pass HQ. For Max average bitrate values suited to the complexity of your input video, the service limits the average bitrate of the video part of this output to the value you choose. That is, the total size of the video element is less than or equal to the value you set multiplied by the number of seconds of encoded output.
-- @return H265QvbrSettings structure as a key-value pair table
function M.H265QvbrSettings(args)
	assert(args, "You must provide an argument table when creating H265QvbrSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QvbrQualityLevel"] = args["QvbrQualityLevel"],
		["MaxAverageBitrate"] = args["MaxAverageBitrate"],
	}
	asserts.AssertH265QvbrSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PresetSettings = { ["CaptionDescriptions"] = true, ["VideoDescription"] = true, ["AudioDescriptions"] = true, ["ContainerSettings"] = true, nil }

function asserts.AssertPresetSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PresetSettings to be of type 'table'")
	if struct["CaptionDescriptions"] then asserts.Assert__listOfCaptionDescriptionPreset(struct["CaptionDescriptions"]) end
	if struct["VideoDescription"] then asserts.AssertVideoDescription(struct["VideoDescription"]) end
	if struct["AudioDescriptions"] then asserts.Assert__listOfAudioDescription(struct["AudioDescriptions"]) end
	if struct["ContainerSettings"] then asserts.AssertContainerSettings(struct["ContainerSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.PresetSettings[k], "PresetSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PresetSettings
-- Settings for preset
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CaptionDescriptions [__listOfCaptionDescriptionPreset] Caption settings for this preset. There can be multiple caption settings in a single output.
-- * VideoDescription [VideoDescription] (VideoDescription) contains a group of video encoding settings. The specific video settings depend on the video codec you choose when you specify a value for Video codec (codec). Include one instance of (VideoDescription) per output.
-- * AudioDescriptions [__listOfAudioDescription] (AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings.
-- * ContainerSettings [ContainerSettings] 
-- @return PresetSettings structure as a key-value pair table
function M.PresetSettings(args)
	assert(args, "You must provide an argument table when creating PresetSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CaptionDescriptions"] = args["CaptionDescriptions"],
		["VideoDescription"] = args["VideoDescription"],
		["AudioDescriptions"] = args["AudioDescriptions"],
		["ContainerSettings"] = args["ContainerSettings"],
	}
	asserts.AssertPresetSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobTemplateResponse = { ["JobTemplate"] = true, nil }

function asserts.AssertUpdateJobTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobTemplateResponse to be of type 'table'")
	if struct["JobTemplate"] then asserts.AssertJobTemplate(struct["JobTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobTemplateResponse[k], "UpdateJobTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobTemplateResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobTemplate [JobTemplate] 
-- @return UpdateJobTemplateResponse structure as a key-value pair table
function M.UpdateJobTemplateResponse(args)
	assert(args, "You must provide an argument table when creating UpdateJobTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobTemplate"] = args["JobTemplate"],
	}
	asserts.AssertUpdateJobTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetQueueRequest = { ["Name"] = true, nil }

function asserts.AssertGetQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueueRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueueRequest[k], "GetQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The name of the queue that you want information about.
-- Required key: Name
-- @return GetQueueRequest structure as a key-value pair table
function M.GetQueueRequest(args)
	assert(args, "You must provide an argument table when creating GetQueueRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetQueueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputGroupDetail = { ["OutputDetails"] = true, nil }

function asserts.AssertOutputGroupDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputGroupDetail to be of type 'table'")
	if struct["OutputDetails"] then asserts.Assert__listOfOutputDetail(struct["OutputDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputGroupDetail[k], "OutputGroupDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputGroupDetail
-- Contains details about the output groups specified in the job settings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputDetails [__listOfOutputDetail] Details about the output
-- @return OutputGroupDetail structure as a key-value pair table
function M.OutputGroupDetail(args)
	assert(args, "You must provide an argument table when creating OutputGroupDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutputDetails"] = args["OutputDetails"],
	}
	asserts.AssertOutputGroupDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmbeddedSourceSettings = { ["Source608ChannelNumber"] = true, ["Convert608To708"] = true, ["Source608TrackNumber"] = true, nil }

function asserts.AssertEmbeddedSourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmbeddedSourceSettings to be of type 'table'")
	if struct["Source608ChannelNumber"] then asserts.Assert__integerMin1Max4(struct["Source608ChannelNumber"]) end
	if struct["Convert608To708"] then asserts.AssertEmbeddedConvert608To708(struct["Convert608To708"]) end
	if struct["Source608TrackNumber"] then asserts.Assert__integerMin1Max1(struct["Source608TrackNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmbeddedSourceSettings[k], "EmbeddedSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmbeddedSourceSettings
-- Settings for embedded captions Source
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source608ChannelNumber [__integerMin1Max4] Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
-- * Convert608To708 [EmbeddedConvert608To708] 
-- * Source608TrackNumber [__integerMin1Max1] Specifies the video track index used for extracting captions. The system only supports one input video track, so this should always be set to '1'.
-- @return EmbeddedSourceSettings structure as a key-value pair table
function M.EmbeddedSourceSettings(args)
	assert(args, "You must provide an argument table when creating EmbeddedSourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Source608ChannelNumber"] = args["Source608ChannelNumber"],
		["Convert608To708"] = args["Convert608To708"],
		["Source608TrackNumber"] = args["Source608TrackNumber"],
	}
	asserts.AssertEmbeddedSourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelJobResponse = { nil }

function asserts.AssertCancelJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelJobResponse[k], "CancelJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CancelJobResponse structure as a key-value pair table
function M.CancelJobResponse(args)
	assert(args, "You must provide an argument table when creating CancelJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCancelJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemixSettings = { ["ChannelMapping"] = true, ["ChannelsOut"] = true, ["ChannelsIn"] = true, nil }

function asserts.AssertRemixSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemixSettings to be of type 'table'")
	if struct["ChannelMapping"] then asserts.AssertChannelMapping(struct["ChannelMapping"]) end
	if struct["ChannelsOut"] then asserts.Assert__integerMin1Max8(struct["ChannelsOut"]) end
	if struct["ChannelsIn"] then asserts.Assert__integerMin1Max16(struct["ChannelsIn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemixSettings[k], "RemixSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemixSettings
-- Use Manual audio remixing (RemixSettings) to adjust audio levels for each audio channel in each output of your job. With audio remixing, you can output more or fewer audio channels than your input audio source provides.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelMapping [ChannelMapping] 
-- * ChannelsOut [__integerMin1Max8] Specify the number of channels in this output after remixing. Valid values: 1, 2, 4, 6, 8
-- * ChannelsIn [__integerMin1Max16] Specify the number of audio channels from your input that you want to use in your output. With remixing, you might combine or split the data in these channels, so the number of channels in your final output might be different.
-- @return RemixSettings structure as a key-value pair table
function M.RemixSettings(args)
	assert(args, "You must provide an argument table when creating RemixSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelMapping"] = args["ChannelMapping"],
		["ChannelsOut"] = args["ChannelsOut"],
		["ChannelsIn"] = args["ChannelsIn"],
	}
	asserts.AssertRemixSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoCodecSettings = { ["Mpeg2Settings"] = true, ["ProresSettings"] = true, ["H264Settings"] = true, ["H265Settings"] = true, ["Codec"] = true, ["FrameCaptureSettings"] = true, nil }

function asserts.AssertVideoCodecSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoCodecSettings to be of type 'table'")
	if struct["Mpeg2Settings"] then asserts.AssertMpeg2Settings(struct["Mpeg2Settings"]) end
	if struct["ProresSettings"] then asserts.AssertProresSettings(struct["ProresSettings"]) end
	if struct["H264Settings"] then asserts.AssertH264Settings(struct["H264Settings"]) end
	if struct["H265Settings"] then asserts.AssertH265Settings(struct["H265Settings"]) end
	if struct["Codec"] then asserts.AssertVideoCodec(struct["Codec"]) end
	if struct["FrameCaptureSettings"] then asserts.AssertFrameCaptureSettings(struct["FrameCaptureSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoCodecSettings[k], "VideoCodecSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoCodecSettings
-- Video codec settings, (CodecSettings) under (VideoDescription), contains the group of settings related to video encoding. The settings in this group vary depending on the value you choose for Video codec (Codec). For each codec enum you choose, define the corresponding settings object. The following lists the codec enum, settings object pairs. * H_264, H264Settings * H_265, H265Settings * MPEG2, Mpeg2Settings * PRORES, ProresSettings * FRAME_CAPTURE, FrameCaptureSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mpeg2Settings [Mpeg2Settings] 
-- * ProresSettings [ProresSettings] 
-- * H264Settings [H264Settings] 
-- * H265Settings [H265Settings] 
-- * Codec [VideoCodec] 
-- * FrameCaptureSettings [FrameCaptureSettings] 
-- @return VideoCodecSettings structure as a key-value pair table
function M.VideoCodecSettings(args)
	assert(args, "You must provide an argument table when creating VideoCodecSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Mpeg2Settings"] = args["Mpeg2Settings"],
		["ProresSettings"] = args["ProresSettings"],
		["H264Settings"] = args["H264Settings"],
		["H265Settings"] = args["H265Settings"],
		["Codec"] = args["Codec"],
		["FrameCaptureSettings"] = args["FrameCaptureSettings"],
	}
	asserts.AssertVideoCodecSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileSourceSettings = { ["SourceFile"] = true, ["TimeDelta"] = true, ["Convert608To708"] = true, nil }

function asserts.AssertFileSourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileSourceSettings to be of type 'table'")
	if struct["SourceFile"] then asserts.Assert__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI(struct["SourceFile"]) end
	if struct["TimeDelta"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["TimeDelta"]) end
	if struct["Convert608To708"] then asserts.AssertFileSourceConvert608To708(struct["Convert608To708"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileSourceSettings[k], "FileSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileSourceSettings
-- Settings for File-based Captions in Source
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceFile [__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI] External caption file used for loading captions. Accepted file extensions are 'scc', 'ttml', 'dfxp', 'stl', 'srt', and 'smi'.
-- * TimeDelta [__integerMinNegative2147483648Max2147483647] Specifies a time delta in seconds to offset the captions from the source file.
-- * Convert608To708 [FileSourceConvert608To708] 
-- @return FileSourceSettings structure as a key-value pair table
function M.FileSourceSettings(args)
	assert(args, "You must provide an argument table when creating FileSourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceFile"] = args["SourceFile"],
		["TimeDelta"] = args["TimeDelta"],
		["Convert608To708"] = args["Convert608To708"],
	}
	asserts.AssertFileSourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimecodeBurnin = { ["Position"] = true, ["Prefix"] = true, ["FontSize"] = true, nil }

function asserts.AssertTimecodeBurnin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimecodeBurnin to be of type 'table'")
	if struct["Position"] then asserts.AssertTimecodeBurninPosition(struct["Position"]) end
	if struct["Prefix"] then asserts.Assert__stringPattern(struct["Prefix"]) end
	if struct["FontSize"] then asserts.Assert__integerMin10Max48(struct["FontSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimecodeBurnin[k], "TimecodeBurnin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimecodeBurnin
-- Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and specified prefix into the output.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Position [TimecodeBurninPosition] 
-- * Prefix [__stringPattern] Use Prefix (Prefix) to place ASCII characters before any burned-in timecode. For example, a prefix of "EZ-" will result in the timecode "EZ-00:00:00:00". Provide either the characters themselves or the ASCII code equivalents. The supported range of characters is 0x20 through 0x7e. This includes letters, numbers, and all special characters represented on a standard English keyboard.
-- * FontSize [__integerMin10Max48] Use Font Size (FontSize) to set the font size of any burned-in timecode. Valid values are 10, 16, 32, 48.
-- @return TimecodeBurnin structure as a key-value pair table
function M.TimecodeBurnin(args)
	assert(args, "You must provide an argument table when creating TimecodeBurnin")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Position"] = args["Position"],
		["Prefix"] = args["Prefix"],
		["FontSize"] = args["FontSize"],
	}
	asserts.AssertTimecodeBurnin(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NielsenConfiguration = { ["DistributorId"] = true, ["BreakoutCode"] = true, nil }

function asserts.AssertNielsenConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NielsenConfiguration to be of type 'table'")
	if struct["DistributorId"] then asserts.Assert__string(struct["DistributorId"]) end
	if struct["BreakoutCode"] then asserts.Assert__integerMin0Max9(struct["BreakoutCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.NielsenConfiguration[k], "NielsenConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NielsenConfiguration
-- Settings for Nielsen Configuration
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DistributorId [__string] Use Distributor ID (DistributorID) to specify the distributor ID that is assigned to your organization by Neilsen.
-- * BreakoutCode [__integerMin0Max9] Use Nielsen Configuration (NielsenConfiguration) to set the Nielsen measurement system breakout code. Supported values are 0, 3, 7, and 9.
-- @return NielsenConfiguration structure as a key-value pair table
function M.NielsenConfiguration(args)
	assert(args, "You must provide an argument table when creating NielsenConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DistributorId"] = args["DistributorId"],
		["BreakoutCode"] = args["BreakoutCode"],
	}
	asserts.AssertNielsenConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InsertableImage = { ["Opacity"] = true, ["Layer"] = true, ["FadeOut"] = true, ["Height"] = true, ["Width"] = true, ["ImageY"] = true, ["ImageX"] = true, ["FadeIn"] = true, ["StartTime"] = true, ["Duration"] = true, ["ImageInserterInput"] = true, nil }

function asserts.AssertInsertableImage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsertableImage to be of type 'table'")
	if struct["Opacity"] then asserts.Assert__integerMin0Max100(struct["Opacity"]) end
	if struct["Layer"] then asserts.Assert__integerMin0Max99(struct["Layer"]) end
	if struct["FadeOut"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["FadeOut"]) end
	if struct["Height"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["Height"]) end
	if struct["Width"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["Width"]) end
	if struct["ImageY"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["ImageY"]) end
	if struct["ImageX"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["ImageX"]) end
	if struct["FadeIn"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["FadeIn"]) end
	if struct["StartTime"] then asserts.Assert__stringPattern01D20305D205D(struct["StartTime"]) end
	if struct["Duration"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["Duration"]) end
	if struct["ImageInserterInput"] then asserts.Assert__stringMin14PatternS3BmpBMPPngPNGTgaTGA(struct["ImageInserterInput"]) end
	for k,_ in pairs(struct) do
		assert(keys.InsertableImage[k], "InsertableImage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsertableImage
-- Settings for Insertable Image
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Opacity [__integerMin0Max100] Use Opacity (Opacity) to specify how much of the underlying video shows through the inserted image. 0 is transparent and 100 is fully opaque. Default is 50.
-- * Layer [__integerMin0Max99] Use Layer (Layer) to specify how overlapping inserted images appear. Images with higher values of layer appear on top of images with lower values of layer.
-- * FadeOut [__integerMinNegative2147483648Max2147483647] Use Fade out (FadeOut) to set the length, in milliseconds, of the inserted image fade out. If you don't specify a value for Fade out, the image will disappear abruptly at the end of the inserted image duration.
-- * Height [__integerMinNegative2147483648Max2147483647] Specify the Height (Height) of the inserted image. Use a value that is less than or equal to the video resolution height. Leave this setting blank to use the native height of the image.
-- * Width [__integerMinNegative2147483648Max2147483647] Specify the Width (Width) of the inserted image. Use a value that is less than or equal to the video resolution width. Leave this setting blank to use the native width of the image.
-- * ImageY [__integerMinNegative2147483648Max2147483647] Use Top (ImageY) to set the distance, in pixels, between the inserted image and the top edge of the video frame. Required for BMP, PNG and TGA input.
-- * ImageX [__integerMinNegative2147483648Max2147483647] Use Left (ImageX) to set the distance, in pixels, between the inserted image and the left edge of the frame. Required for BMP, PNG and TGA input.
-- * FadeIn [__integerMinNegative2147483648Max2147483647] Use Fade in (FadeIut) to set the length, in milliseconds, of the inserted image fade in. If you don't specify a value for Fade in, the image will appear abruptly at the Start time.
-- * StartTime [__stringPattern01D20305D205D] Use Start time (StartTime) to specify the video timecode when the image is inserted in the output. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF) format.
-- * Duration [__integerMinNegative2147483648Max2147483647] Use Duration (Duration) to set the time, in milliseconds, for the image to remain on the output video.
-- * ImageInserterInput [__stringMin14PatternS3BmpBMPPngPNGTgaTGA] Use Image location (imageInserterInput) to specify the Amazon S3 location of the image to be inserted into the output. Use a 32 bit BMP, PNG, or TGA file that fits inside the video frame.
-- @return InsertableImage structure as a key-value pair table
function M.InsertableImage(args)
	assert(args, "You must provide an argument table when creating InsertableImage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Opacity"] = args["Opacity"],
		["Layer"] = args["Layer"],
		["FadeOut"] = args["FadeOut"],
		["Height"] = args["Height"],
		["Width"] = args["Width"],
		["ImageY"] = args["ImageY"],
		["ImageX"] = args["ImageX"],
		["FadeIn"] = args["FadeIn"],
		["StartTime"] = args["StartTime"],
		["Duration"] = args["Duration"],
		["ImageInserterInput"] = args["ImageInserterInput"],
	}
	asserts.AssertInsertableImage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListQueuesRequest = { ["ListBy"] = true, ["NextToken"] = true, ["Order"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListQueuesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueuesRequest to be of type 'table'")
	if struct["ListBy"] then asserts.AssertQueueListBy(struct["ListBy"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Order"] then asserts.AssertOrder(struct["Order"]) end
	if struct["MaxResults"] then asserts.Assert__integerMin1Max20(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQueuesRequest[k], "ListQueuesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueuesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ListBy [QueueListBy] 
-- * NextToken [__string] Use this string, provided with the response to a previous request, to request the next batch of queues.
-- * Order [Order] 
-- * MaxResults [__integerMin1Max20] Optional. Number of queues, up to twenty, that will be returned at one time.
-- @return ListQueuesRequest structure as a key-value pair table
function M.ListQueuesRequest(args)
	assert(args, "You must provide an argument table when creating ListQueuesRequest")
    local query_args = { 
        ["listBy"] = args["ListBy"],
        ["nextToken"] = args["NextToken"],
        ["order"] = args["Order"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ListBy"] = args["ListBy"],
		["NextToken"] = args["NextToken"],
		["Order"] = args["Order"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListQueuesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.M2tsSettings = { ["NielsenId3"] = true, ["Scte35Pid"] = true, ["EbpPlacement"] = true, ["TransportStreamId"] = true, ["DvbNitSettings"] = true, ["PatInterval"] = true, ["SegmentationTime"] = true, ["AudioBufferModel"] = true, ["ProgramNumber"] = true, ["AudioPids"] = true, ["Bitrate"] = true, ["MinEbpInterval"] = true, ["FragmentTime"] = true, ["SegmentationMarkers"] = true, ["TimedMetadataPid"] = true, ["PcrControl"] = true, ["EbpAudioInterval"] = true, ["DvbTeletextPid"] = true, ["PrivateMetadataPid"] = true, ["PcrPid"] = true, ["NullPacketBitrate"] = true, ["SegmentationStyle"] = true, ["BufferModel"] = true, ["MaxPcrInterval"] = true, ["DvbTdtSettings"] = true, ["AudioFramesPerPes"] = true, ["VideoPid"] = true, ["PmtPid"] = true, ["DvbSubPids"] = true, ["RateMode"] = true, ["Scte35Source"] = true, ["EsRateInPes"] = true, ["DvbSdtSettings"] = true, ["PmtInterval"] = true, nil }

function asserts.AssertM2tsSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected M2tsSettings to be of type 'table'")
	if struct["NielsenId3"] then asserts.AssertM2tsNielsenId3(struct["NielsenId3"]) end
	if struct["Scte35Pid"] then asserts.Assert__integerMin32Max8182(struct["Scte35Pid"]) end
	if struct["EbpPlacement"] then asserts.AssertM2tsEbpPlacement(struct["EbpPlacement"]) end
	if struct["TransportStreamId"] then asserts.Assert__integerMin0Max65535(struct["TransportStreamId"]) end
	if struct["DvbNitSettings"] then asserts.AssertDvbNitSettings(struct["DvbNitSettings"]) end
	if struct["PatInterval"] then asserts.Assert__integerMin0Max1000(struct["PatInterval"]) end
	if struct["SegmentationTime"] then asserts.Assert__doubleMin0(struct["SegmentationTime"]) end
	if struct["AudioBufferModel"] then asserts.AssertM2tsAudioBufferModel(struct["AudioBufferModel"]) end
	if struct["ProgramNumber"] then asserts.Assert__integerMin0Max65535(struct["ProgramNumber"]) end
	if struct["AudioPids"] then asserts.Assert__listOf__integerMin32Max8182(struct["AudioPids"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin0Max2147483647(struct["Bitrate"]) end
	if struct["MinEbpInterval"] then asserts.Assert__integerMin0Max10000(struct["MinEbpInterval"]) end
	if struct["FragmentTime"] then asserts.Assert__doubleMin0(struct["FragmentTime"]) end
	if struct["SegmentationMarkers"] then asserts.AssertM2tsSegmentationMarkers(struct["SegmentationMarkers"]) end
	if struct["TimedMetadataPid"] then asserts.Assert__integerMin32Max8182(struct["TimedMetadataPid"]) end
	if struct["PcrControl"] then asserts.AssertM2tsPcrControl(struct["PcrControl"]) end
	if struct["EbpAudioInterval"] then asserts.AssertM2tsEbpAudioInterval(struct["EbpAudioInterval"]) end
	if struct["DvbTeletextPid"] then asserts.Assert__integerMin32Max8182(struct["DvbTeletextPid"]) end
	if struct["PrivateMetadataPid"] then asserts.Assert__integerMin32Max8182(struct["PrivateMetadataPid"]) end
	if struct["PcrPid"] then asserts.Assert__integerMin32Max8182(struct["PcrPid"]) end
	if struct["NullPacketBitrate"] then asserts.Assert__doubleMin0(struct["NullPacketBitrate"]) end
	if struct["SegmentationStyle"] then asserts.AssertM2tsSegmentationStyle(struct["SegmentationStyle"]) end
	if struct["BufferModel"] then asserts.AssertM2tsBufferModel(struct["BufferModel"]) end
	if struct["MaxPcrInterval"] then asserts.Assert__integerMin0Max500(struct["MaxPcrInterval"]) end
	if struct["DvbTdtSettings"] then asserts.AssertDvbTdtSettings(struct["DvbTdtSettings"]) end
	if struct["AudioFramesPerPes"] then asserts.Assert__integerMin0Max2147483647(struct["AudioFramesPerPes"]) end
	if struct["VideoPid"] then asserts.Assert__integerMin32Max8182(struct["VideoPid"]) end
	if struct["PmtPid"] then asserts.Assert__integerMin32Max8182(struct["PmtPid"]) end
	if struct["DvbSubPids"] then asserts.Assert__listOf__integerMin32Max8182(struct["DvbSubPids"]) end
	if struct["RateMode"] then asserts.AssertM2tsRateMode(struct["RateMode"]) end
	if struct["Scte35Source"] then asserts.AssertM2tsScte35Source(struct["Scte35Source"]) end
	if struct["EsRateInPes"] then asserts.AssertM2tsEsRateInPes(struct["EsRateInPes"]) end
	if struct["DvbSdtSettings"] then asserts.AssertDvbSdtSettings(struct["DvbSdtSettings"]) end
	if struct["PmtInterval"] then asserts.Assert__integerMin0Max1000(struct["PmtInterval"]) end
	for k,_ in pairs(struct) do
		assert(keys.M2tsSettings[k], "M2tsSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type M2tsSettings
-- Settings for M2TS Container.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NielsenId3 [M2tsNielsenId3] 
-- * Scte35Pid [__integerMin32Max8182] Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
-- * EbpPlacement [M2tsEbpPlacement] 
-- * TransportStreamId [__integerMin0Max65535] The value of the transport stream ID field in the Program Map Table.
-- * DvbNitSettings [DvbNitSettings] 
-- * PatInterval [__integerMin0Max1000] The number of milliseconds between instances of this table in the output transport stream.
-- * SegmentationTime [__doubleMin0] The length in seconds of each segment. Required unless markers is set to _none_.
-- * AudioBufferModel [M2tsAudioBufferModel] 
-- * ProgramNumber [__integerMin0Max65535] The value of the program number field in the Program Map Table.
-- * AudioPids [__listOf__integerMin32Max8182] Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
-- * Bitrate [__integerMin0Max2147483647] The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate. Other common values are 3750000, 7500000, and 15000000.
-- * MinEbpInterval [__integerMin0Max10000] When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker. The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
-- * FragmentTime [__doubleMin0] The length in seconds of each fragment. Only used with EBP markers.
-- * SegmentationMarkers [M2tsSegmentationMarkers] 
-- * TimedMetadataPid [__integerMin32Max8182] Packet Identifier (PID) of the timed metadata stream in the transport stream.
-- * PcrControl [M2tsPcrControl] 
-- * EbpAudioInterval [M2tsEbpAudioInterval] 
-- * DvbTeletextPid [__integerMin32Max8182] Packet Identifier (PID) for input source DVB Teletext data to this output.
-- * PrivateMetadataPid [__integerMin32Max8182] Packet Identifier (PID) of the private metadata stream in the transport stream.
-- * PcrPid [__integerMin32Max8182] Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
-- * NullPacketBitrate [__doubleMin0] Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
-- * SegmentationStyle [M2tsSegmentationStyle] 
-- * BufferModel [M2tsBufferModel] 
-- * MaxPcrInterval [__integerMin0Max500] Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream.
-- * DvbTdtSettings [DvbTdtSettings] 
-- * AudioFramesPerPes [__integerMin0Max2147483647] The number of audio frames to insert for each PES packet.
-- * VideoPid [__integerMin32Max8182] Packet Identifier (PID) of the elementary video stream in the transport stream.
-- * PmtPid [__integerMin32Max8182] Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
-- * DvbSubPids [__listOf__integerMin32Max8182] Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
-- * RateMode [M2tsRateMode] 
-- * Scte35Source [M2tsScte35Source] 
-- * EsRateInPes [M2tsEsRateInPes] 
-- * DvbSdtSettings [DvbSdtSettings] 
-- * PmtInterval [__integerMin0Max1000] The number of milliseconds between instances of this table in the output transport stream.
-- @return M2tsSettings structure as a key-value pair table
function M.M2tsSettings(args)
	assert(args, "You must provide an argument table when creating M2tsSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NielsenId3"] = args["NielsenId3"],
		["Scte35Pid"] = args["Scte35Pid"],
		["EbpPlacement"] = args["EbpPlacement"],
		["TransportStreamId"] = args["TransportStreamId"],
		["DvbNitSettings"] = args["DvbNitSettings"],
		["PatInterval"] = args["PatInterval"],
		["SegmentationTime"] = args["SegmentationTime"],
		["AudioBufferModel"] = args["AudioBufferModel"],
		["ProgramNumber"] = args["ProgramNumber"],
		["AudioPids"] = args["AudioPids"],
		["Bitrate"] = args["Bitrate"],
		["MinEbpInterval"] = args["MinEbpInterval"],
		["FragmentTime"] = args["FragmentTime"],
		["SegmentationMarkers"] = args["SegmentationMarkers"],
		["TimedMetadataPid"] = args["TimedMetadataPid"],
		["PcrControl"] = args["PcrControl"],
		["EbpAudioInterval"] = args["EbpAudioInterval"],
		["DvbTeletextPid"] = args["DvbTeletextPid"],
		["PrivateMetadataPid"] = args["PrivateMetadataPid"],
		["PcrPid"] = args["PcrPid"],
		["NullPacketBitrate"] = args["NullPacketBitrate"],
		["SegmentationStyle"] = args["SegmentationStyle"],
		["BufferModel"] = args["BufferModel"],
		["MaxPcrInterval"] = args["MaxPcrInterval"],
		["DvbTdtSettings"] = args["DvbTdtSettings"],
		["AudioFramesPerPes"] = args["AudioFramesPerPes"],
		["VideoPid"] = args["VideoPid"],
		["PmtPid"] = args["PmtPid"],
		["DvbSubPids"] = args["DvbSubPids"],
		["RateMode"] = args["RateMode"],
		["Scte35Source"] = args["Scte35Source"],
		["EsRateInPes"] = args["EsRateInPes"],
		["DvbSdtSettings"] = args["DvbSdtSettings"],
		["PmtInterval"] = args["PmtInterval"],
	}
	asserts.AssertM2tsSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputClipping = { ["EndTimecode"] = true, ["StartTimecode"] = true, nil }

function asserts.AssertInputClipping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputClipping to be of type 'table'")
	if struct["EndTimecode"] then asserts.Assert__stringPattern010920405090509092(struct["EndTimecode"]) end
	if struct["StartTimecode"] then asserts.Assert__stringPattern010920405090509092(struct["StartTimecode"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputClipping[k], "InputClipping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputClipping
-- To transcode only portions of your input (clips), include one Input clipping (one instance of InputClipping in the JSON job file) for each input clip. All input clips you specify will be included in every output of the job.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndTimecode [__stringPattern010920405090509092] Set End timecode (EndTimecode) to the end of the portion of the input you are clipping. The frame corresponding to the End timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for timecode source under input settings (InputTimecodeSource). For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to end six minutes into the video, use 01:06:00:00.
-- * StartTimecode [__stringPattern010920405090509092] Set Start timecode (StartTimecode) to the beginning of the portion of the input you are clipping. The frame corresponding to the Start timecode value is included in the clip. Start timecode or End timecode may be left blank, but not both. Use the format HH:MM:SS:FF or HH:MM:SS;FF, where HH is the hour, MM is the minute, SS is the second, and FF is the frame number. When choosing this value, take into account your setting for Input timecode source. For example, if you have embedded timecodes that start at 01:00:00:00 and you want your clip to begin five minutes into the video, use 01:05:00:00.
-- @return InputClipping structure as a key-value pair table
function M.InputClipping(args)
	assert(args, "You must provide an argument table when creating InputClipping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndTimecode"] = args["EndTimecode"],
		["StartTimecode"] = args["StartTimecode"],
	}
	asserts.AssertInputClipping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagResourceResponse = { nil }

function asserts.AssertUntagResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagResourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagResourceResponse[k], "UntagResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagResourceResponse structure as a key-value pair table
function M.UntagResourceResponse(args)
	assert(args, "You must provide an argument table when creating UntagResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioNormalizationSettings = { ["AlgorithmControl"] = true, ["Algorithm"] = true, ["TargetLkfs"] = true, ["CorrectionGateLevel"] = true, ["PeakCalculation"] = true, ["LoudnessLogging"] = true, nil }

function asserts.AssertAudioNormalizationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioNormalizationSettings to be of type 'table'")
	if struct["AlgorithmControl"] then asserts.AssertAudioNormalizationAlgorithmControl(struct["AlgorithmControl"]) end
	if struct["Algorithm"] then asserts.AssertAudioNormalizationAlgorithm(struct["Algorithm"]) end
	if struct["TargetLkfs"] then asserts.Assert__doubleMinNegative59Max0(struct["TargetLkfs"]) end
	if struct["CorrectionGateLevel"] then asserts.Assert__integerMinNegative70Max0(struct["CorrectionGateLevel"]) end
	if struct["PeakCalculation"] then asserts.AssertAudioNormalizationPeakCalculation(struct["PeakCalculation"]) end
	if struct["LoudnessLogging"] then asserts.AssertAudioNormalizationLoudnessLogging(struct["LoudnessLogging"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioNormalizationSettings[k], "AudioNormalizationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioNormalizationSettings
-- Advanced audio normalization settings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlgorithmControl [AudioNormalizationAlgorithmControl] 
-- * Algorithm [AudioNormalizationAlgorithm] 
-- * TargetLkfs [__doubleMinNegative59Max0] Target LKFS(loudness) to adjust volume to. If no value is entered, a default value will be used according to the chosen algorithm. The CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128 specification (1770-2) recommends a target of -23 LKFS.
-- * CorrectionGateLevel [__integerMinNegative70Max0] Content measuring above this level will be corrected to the target level. Content measuring below this level will not be corrected. Gating only applies when not using real_time_correction.
-- * PeakCalculation [AudioNormalizationPeakCalculation] 
-- * LoudnessLogging [AudioNormalizationLoudnessLogging] 
-- @return AudioNormalizationSettings structure as a key-value pair table
function M.AudioNormalizationSettings(args)
	assert(args, "You must provide an argument table when creating AudioNormalizationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AlgorithmControl"] = args["AlgorithmControl"],
		["Algorithm"] = args["Algorithm"],
		["TargetLkfs"] = args["TargetLkfs"],
		["CorrectionGateLevel"] = args["CorrectionGateLevel"],
		["PeakCalculation"] = args["PeakCalculation"],
		["LoudnessLogging"] = args["LoudnessLogging"],
	}
	asserts.AssertAudioNormalizationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoDescription = { ["CodecSettings"] = true, ["DropFrameTimecode"] = true, ["FixedAfd"] = true, ["RespondToAfd"] = true, ["Sharpness"] = true, ["AfdSignaling"] = true, ["Crop"] = true, ["AntiAlias"] = true, ["Width"] = true, ["ScalingBehavior"] = true, ["ColorMetadata"] = true, ["VideoPreprocessors"] = true, ["Position"] = true, ["Height"] = true, ["TimecodeInsertion"] = true, nil }

function asserts.AssertVideoDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoDescription to be of type 'table'")
	if struct["CodecSettings"] then asserts.AssertVideoCodecSettings(struct["CodecSettings"]) end
	if struct["DropFrameTimecode"] then asserts.AssertDropFrameTimecode(struct["DropFrameTimecode"]) end
	if struct["FixedAfd"] then asserts.Assert__integerMin0Max15(struct["FixedAfd"]) end
	if struct["RespondToAfd"] then asserts.AssertRespondToAfd(struct["RespondToAfd"]) end
	if struct["Sharpness"] then asserts.Assert__integerMin0Max100(struct["Sharpness"]) end
	if struct["AfdSignaling"] then asserts.AssertAfdSignaling(struct["AfdSignaling"]) end
	if struct["Crop"] then asserts.AssertRectangle(struct["Crop"]) end
	if struct["AntiAlias"] then asserts.AssertAntiAlias(struct["AntiAlias"]) end
	if struct["Width"] then asserts.Assert__integerMin32Max4096(struct["Width"]) end
	if struct["ScalingBehavior"] then asserts.AssertScalingBehavior(struct["ScalingBehavior"]) end
	if struct["ColorMetadata"] then asserts.AssertColorMetadata(struct["ColorMetadata"]) end
	if struct["VideoPreprocessors"] then asserts.AssertVideoPreprocessor(struct["VideoPreprocessors"]) end
	if struct["Position"] then asserts.AssertRectangle(struct["Position"]) end
	if struct["Height"] then asserts.Assert__integerMin32Max2160(struct["Height"]) end
	if struct["TimecodeInsertion"] then asserts.AssertVideoTimecodeInsertion(struct["TimecodeInsertion"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoDescription[k], "VideoDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoDescription
-- Settings for video outputs
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodecSettings [VideoCodecSettings] 
-- * DropFrameTimecode [DropFrameTimecode] 
-- * FixedAfd [__integerMin0Max15] Applies only if you set AFD Signaling(AfdSignaling) to Fixed (FIXED). Use Fixed (FixedAfd) to specify a four-bit AFD value which the service will write on all  frames of this video output.
-- * RespondToAfd [RespondToAfd] 
-- * Sharpness [__integerMin0Max100] Use Sharpness (Sharpness)setting to specify the strength of anti-aliasing. This setting changes the width of the anti-alias filter kernel used for scaling. Sharpness only applies if your output resolution is different from your input resolution, and if you set Anti-alias (AntiAlias) to ENABLED. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content.
-- * AfdSignaling [AfdSignaling] 
-- * Crop [Rectangle] Applies only if your input aspect ratio is different from your output aspect ratio. Use Input cropping rectangle (Crop) to specify the  video area the service will include in the output. This will crop the input source, causing video pixels to be removed on encode. Do not use this setting if you have enabled Stretch to output (stretchToOutput) in your output settings.
-- * AntiAlias [AntiAlias] 
-- * Width [__integerMin32Max4096] Use Width (Width) to define the video resolution width, in pixels, for this output. If you don't provide a value here, the service will use the input width.
-- * ScalingBehavior [ScalingBehavior] 
-- * ColorMetadata [ColorMetadata] 
-- * VideoPreprocessors [VideoPreprocessor] Find additional transcoding features under Preprocessors (VideoPreprocessors). Enable the features at each output individually. These features are disabled by default.
-- * Position [Rectangle] Use Position (Position) to point to a rectangle object to define your position. This setting overrides any other aspect ratio.
-- * Height [__integerMin32Max2160] Use the Height (Height) setting to define the video resolution height for this output. Specify in pixels. If you don't provide a value here, the service will use the input height.
-- * TimecodeInsertion [VideoTimecodeInsertion] 
-- @return VideoDescription structure as a key-value pair table
function M.VideoDescription(args)
	assert(args, "You must provide an argument table when creating VideoDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodecSettings"] = args["CodecSettings"],
		["DropFrameTimecode"] = args["DropFrameTimecode"],
		["FixedAfd"] = args["FixedAfd"],
		["RespondToAfd"] = args["RespondToAfd"],
		["Sharpness"] = args["Sharpness"],
		["AfdSignaling"] = args["AfdSignaling"],
		["Crop"] = args["Crop"],
		["AntiAlias"] = args["AntiAlias"],
		["Width"] = args["Width"],
		["ScalingBehavior"] = args["ScalingBehavior"],
		["ColorMetadata"] = args["ColorMetadata"],
		["VideoPreprocessors"] = args["VideoPreprocessors"],
		["Position"] = args["Position"],
		["Height"] = args["Height"],
		["TimecodeInsertion"] = args["TimecodeInsertion"],
	}
	asserts.AssertVideoDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CmafGroupSettings = { ["CodecSpecification"] = true, ["MinFinalSegmentLength"] = true, ["ManifestDurationFormat"] = true, ["Encryption"] = true, ["Destination"] = true, ["BaseUrl"] = true, ["SegmentLength"] = true, ["WriteHlsManifest"] = true, ["SegmentControl"] = true, ["MinBufferTime"] = true, ["WriteDashManifest"] = true, ["ManifestCompression"] = true, ["StreamInfResolution"] = true, ["ClientCache"] = true, ["FragmentLength"] = true, nil }

function asserts.AssertCmafGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CmafGroupSettings to be of type 'table'")
	if struct["CodecSpecification"] then asserts.AssertCmafCodecSpecification(struct["CodecSpecification"]) end
	if struct["MinFinalSegmentLength"] then asserts.Assert__doubleMin0Max2147483647(struct["MinFinalSegmentLength"]) end
	if struct["ManifestDurationFormat"] then asserts.AssertCmafManifestDurationFormat(struct["ManifestDurationFormat"]) end
	if struct["Encryption"] then asserts.AssertCmafEncryptionSettings(struct["Encryption"]) end
	if struct["Destination"] then asserts.Assert__stringPatternS3(struct["Destination"]) end
	if struct["BaseUrl"] then asserts.Assert__string(struct["BaseUrl"]) end
	if struct["SegmentLength"] then asserts.Assert__integerMin1Max2147483647(struct["SegmentLength"]) end
	if struct["WriteHlsManifest"] then asserts.AssertCmafWriteHLSManifest(struct["WriteHlsManifest"]) end
	if struct["SegmentControl"] then asserts.AssertCmafSegmentControl(struct["SegmentControl"]) end
	if struct["MinBufferTime"] then asserts.Assert__integerMin0Max2147483647(struct["MinBufferTime"]) end
	if struct["WriteDashManifest"] then asserts.AssertCmafWriteDASHManifest(struct["WriteDashManifest"]) end
	if struct["ManifestCompression"] then asserts.AssertCmafManifestCompression(struct["ManifestCompression"]) end
	if struct["StreamInfResolution"] then asserts.AssertCmafStreamInfResolution(struct["StreamInfResolution"]) end
	if struct["ClientCache"] then asserts.AssertCmafClientCache(struct["ClientCache"]) end
	if struct["FragmentLength"] then asserts.Assert__integerMin1Max2147483647(struct["FragmentLength"]) end
	for k,_ in pairs(struct) do
		assert(keys.CmafGroupSettings[k], "CmafGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CmafGroupSettings
-- Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to CMAF_GROUP_SETTINGS. Each output in a CMAF Output Group may only contain a single video, audio, or caption output.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodecSpecification [CmafCodecSpecification] 
-- * MinFinalSegmentLength [__doubleMin0Max2147483647] Keep this setting at the default value of 0, unless you are troubleshooting a problem with how devices play back the end of your video asset. If you know that player devices are hanging on the final segment of your video because the length of your final segment is too short, use this setting to specify a minimum final segment length, in seconds. Choose a value that is greater than or equal to 1 and less than your segment length. When you specify a value for this setting, the encoder will combine any final segment that is shorter than the length that you specify with the previous segment. For example, your segment length is 3 seconds and your final segment is .5 seconds without a minimum final segment length; when you set the minimum final segment length to 1, your final segment is 3.5 seconds.
-- * ManifestDurationFormat [CmafManifestDurationFormat] 
-- * Encryption [CmafEncryptionSettings] DRM settings.
-- * Destination [__stringPatternS3] Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
-- * BaseUrl [__string] A partial URI prefix that will be put in the manifest file at the top level BaseURL element. Can be used if streams are delivered from a different URL than the manifest file.
-- * SegmentLength [__integerMin1Max2147483647] Use this setting to specify the length, in seconds, of each individual CMAF segment. This value applies to the whole package; that is, to every output in the output group. Note that segments end on the first keyframe after this number of seconds, so the actual segment length might be slightly longer. If you set Segment control (CmafSegmentControl) to single file, the service puts the content of each output in a single file that has metadata that marks these segments. If you set it to segmented files, the service creates multiple files for each output, each with the content of one segment.
-- * WriteHlsManifest [CmafWriteHLSManifest] 
-- * SegmentControl [CmafSegmentControl] 
-- * MinBufferTime [__integerMin0Max2147483647] Minimum time of initially buffered media that is needed to ensure smooth playout.
-- * WriteDashManifest [CmafWriteDASHManifest] 
-- * ManifestCompression [CmafManifestCompression] 
-- * StreamInfResolution [CmafStreamInfResolution] 
-- * ClientCache [CmafClientCache] 
-- * FragmentLength [__integerMin1Max2147483647] Length of fragments to generate (in seconds). Fragment length must be compatible with GOP size and Framerate. Note that fragments will end on the next keyframe after this number of seconds, so actual fragment length may be longer. When Emit Single File is checked, the fragmentation is internal to a single output file and it does not cause the creation of many output files as in other output types.
-- @return CmafGroupSettings structure as a key-value pair table
function M.CmafGroupSettings(args)
	assert(args, "You must provide an argument table when creating CmafGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CodecSpecification"] = args["CodecSpecification"],
		["MinFinalSegmentLength"] = args["MinFinalSegmentLength"],
		["ManifestDurationFormat"] = args["ManifestDurationFormat"],
		["Encryption"] = args["Encryption"],
		["Destination"] = args["Destination"],
		["BaseUrl"] = args["BaseUrl"],
		["SegmentLength"] = args["SegmentLength"],
		["WriteHlsManifest"] = args["WriteHlsManifest"],
		["SegmentControl"] = args["SegmentControl"],
		["MinBufferTime"] = args["MinBufferTime"],
		["WriteDashManifest"] = args["WriteDashManifest"],
		["ManifestCompression"] = args["ManifestCompression"],
		["StreamInfResolution"] = args["StreamInfResolution"],
		["ClientCache"] = args["ClientCache"],
		["FragmentLength"] = args["FragmentLength"],
	}
	asserts.AssertCmafGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BurninDestinationSettings = { ["YPosition"] = true, ["TeletextSpacing"] = true, ["ShadowOpacity"] = true, ["OutlineSize"] = true, ["ShadowXOffset"] = true, ["ShadowYOffset"] = true, ["XPosition"] = true, ["FontOpacity"] = true, ["ShadowColor"] = true, ["FontResolution"] = true, ["FontSize"] = true, ["BackgroundColor"] = true, ["FontColor"] = true, ["BackgroundOpacity"] = true, ["Alignment"] = true, ["OutlineColor"] = true, nil }

function asserts.AssertBurninDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BurninDestinationSettings to be of type 'table'")
	if struct["YPosition"] then asserts.Assert__integerMin0Max2147483647(struct["YPosition"]) end
	if struct["TeletextSpacing"] then asserts.AssertBurninSubtitleTeletextSpacing(struct["TeletextSpacing"]) end
	if struct["ShadowOpacity"] then asserts.Assert__integerMin0Max255(struct["ShadowOpacity"]) end
	if struct["OutlineSize"] then asserts.Assert__integerMin0Max10(struct["OutlineSize"]) end
	if struct["ShadowXOffset"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["ShadowXOffset"]) end
	if struct["ShadowYOffset"] then asserts.Assert__integerMinNegative2147483648Max2147483647(struct["ShadowYOffset"]) end
	if struct["XPosition"] then asserts.Assert__integerMin0Max2147483647(struct["XPosition"]) end
	if struct["FontOpacity"] then asserts.Assert__integerMin0Max255(struct["FontOpacity"]) end
	if struct["ShadowColor"] then asserts.AssertBurninSubtitleShadowColor(struct["ShadowColor"]) end
	if struct["FontResolution"] then asserts.Assert__integerMin96Max600(struct["FontResolution"]) end
	if struct["FontSize"] then asserts.Assert__integerMin0Max96(struct["FontSize"]) end
	if struct["BackgroundColor"] then asserts.AssertBurninSubtitleBackgroundColor(struct["BackgroundColor"]) end
	if struct["FontColor"] then asserts.AssertBurninSubtitleFontColor(struct["FontColor"]) end
	if struct["BackgroundOpacity"] then asserts.Assert__integerMin0Max255(struct["BackgroundOpacity"]) end
	if struct["Alignment"] then asserts.AssertBurninSubtitleAlignment(struct["Alignment"]) end
	if struct["OutlineColor"] then asserts.AssertBurninSubtitleOutlineColor(struct["OutlineColor"]) end
	for k,_ in pairs(struct) do
		assert(keys.BurninDestinationSettings[k], "BurninDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BurninDestinationSettings
-- Burn-In Destination Settings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * YPosition [__integerMin0Max2147483647] Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit y_position is provided, the caption will be positioned towards the bottom of the output. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * TeletextSpacing [BurninSubtitleTeletextSpacing] 
-- * ShadowOpacity [__integerMin0Max255] Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
-- * OutlineSize [__integerMin0Max10] Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * ShadowXOffset [__integerMinNegative2147483648Max2147483647] Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left. All burn-in and DVB-Sub font settings must match.
-- * ShadowYOffset [__integerMinNegative2147483648Max2147483647] Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text. All burn-in and DVB-Sub font settings must match.
-- * XPosition [__integerMin0Max2147483647] Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit x_position is provided, the horizontal caption position will be determined by the alignment parameter. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * FontOpacity [__integerMin0Max255] Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.
--All burn-in and DVB-Sub font settings must match.
-- * ShadowColor [BurninSubtitleShadowColor] 
-- * FontResolution [__integerMin96Max600] Font resolution in DPI (dots per inch); default is 96 dpi.
--All burn-in and DVB-Sub font settings must match.
-- * FontSize [__integerMin0Max96] A positive integer indicates the exact font size in points. Set to 0 for automatic font size selection. All burn-in and DVB-Sub font settings must match.
-- * BackgroundColor [BurninSubtitleBackgroundColor] 
-- * FontColor [BurninSubtitleFontColor] 
-- * BackgroundOpacity [__integerMin0Max255] Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent). All burn-in and DVB-Sub font settings must match.
-- * Alignment [BurninSubtitleAlignment] 
-- * OutlineColor [BurninSubtitleOutlineColor] 
-- @return BurninDestinationSettings structure as a key-value pair table
function M.BurninDestinationSettings(args)
	assert(args, "You must provide an argument table when creating BurninDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["YPosition"] = args["YPosition"],
		["TeletextSpacing"] = args["TeletextSpacing"],
		["ShadowOpacity"] = args["ShadowOpacity"],
		["OutlineSize"] = args["OutlineSize"],
		["ShadowXOffset"] = args["ShadowXOffset"],
		["ShadowYOffset"] = args["ShadowYOffset"],
		["XPosition"] = args["XPosition"],
		["FontOpacity"] = args["FontOpacity"],
		["ShadowColor"] = args["ShadowColor"],
		["FontResolution"] = args["FontResolution"],
		["FontSize"] = args["FontSize"],
		["BackgroundColor"] = args["BackgroundColor"],
		["FontColor"] = args["FontColor"],
		["BackgroundOpacity"] = args["BackgroundOpacity"],
		["Alignment"] = args["Alignment"],
		["OutlineColor"] = args["OutlineColor"],
	}
	asserts.AssertBurninDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobTemplateSettings = { ["NielsenConfiguration"] = true, ["Inputs"] = true, ["TimecodeConfig"] = true, ["AvailBlanking"] = true, ["OutputGroups"] = true, ["AdAvailOffset"] = true, ["TimedMetadataInsertion"] = true, nil }

function asserts.AssertJobTemplateSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobTemplateSettings to be of type 'table'")
	if struct["NielsenConfiguration"] then asserts.AssertNielsenConfiguration(struct["NielsenConfiguration"]) end
	if struct["Inputs"] then asserts.Assert__listOfInputTemplate(struct["Inputs"]) end
	if struct["TimecodeConfig"] then asserts.AssertTimecodeConfig(struct["TimecodeConfig"]) end
	if struct["AvailBlanking"] then asserts.AssertAvailBlanking(struct["AvailBlanking"]) end
	if struct["OutputGroups"] then asserts.Assert__listOfOutputGroup(struct["OutputGroups"]) end
	if struct["AdAvailOffset"] then asserts.Assert__integerMinNegative1000Max1000(struct["AdAvailOffset"]) end
	if struct["TimedMetadataInsertion"] then asserts.AssertTimedMetadataInsertion(struct["TimedMetadataInsertion"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobTemplateSettings[k], "JobTemplateSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobTemplateSettings
-- JobTemplateSettings contains all the transcode settings saved in the template that will be applied to jobs created from it.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NielsenConfiguration [NielsenConfiguration] 
-- * Inputs [__listOfInputTemplate] Use Inputs (inputs) to define the source file used in the transcode job. There can only be one input in a job template.  Using the API, you can include multiple inputs when referencing a job template.
-- * TimecodeConfig [TimecodeConfig] Contains settings used to acquire and adjust timecode information from inputs.
-- * AvailBlanking [AvailBlanking] Settings for ad avail blanking.  Video can be blanked or overlaid with an image, and audio muted during SCTE-35 triggered ad avails.
-- * OutputGroups [__listOfOutputGroup] (OutputGroups) contains one group of settings for each set of outputs that share a common package type. All unpackaged files (MPEG-4, MPEG-2 TS, Quicktime, MXF, and no container) are grouped in a single output group as well. Required in (OutputGroups) is a group of settings that apply to the whole group. This required object depends on the value you set for (Type) under (OutputGroups)>(OutputGroupSettings). Type, settings object pairs are as follows. * FILE_GROUP_SETTINGS, FileGroupSettings * HLS_GROUP_SETTINGS, HlsGroupSettings * DASH_ISO_GROUP_SETTINGS, DashIsoGroupSettings * MS_SMOOTH_GROUP_SETTINGS, MsSmoothGroupSettings * CMAF_GROUP_SETTINGS, CmafGroupSettings
-- * AdAvailOffset [__integerMinNegative1000Max1000] When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time.
-- * TimedMetadataInsertion [TimedMetadataInsertion] 
-- @return JobTemplateSettings structure as a key-value pair table
function M.JobTemplateSettings(args)
	assert(args, "You must provide an argument table when creating JobTemplateSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NielsenConfiguration"] = args["NielsenConfiguration"],
		["Inputs"] = args["Inputs"],
		["TimecodeConfig"] = args["TimecodeConfig"],
		["AvailBlanking"] = args["AvailBlanking"],
		["OutputGroups"] = args["OutputGroups"],
		["AdAvailOffset"] = args["AdAvailOffset"],
		["TimedMetadataInsertion"] = args["TimedMetadataInsertion"],
	}
	asserts.AssertJobTemplateSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FileGroupSettings = { ["Destination"] = true, nil }

function asserts.AssertFileGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FileGroupSettings to be of type 'table'")
	if struct["Destination"] then asserts.Assert__stringPatternS3(struct["Destination"]) end
	for k,_ in pairs(struct) do
		assert(keys.FileGroupSettings[k], "FileGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FileGroupSettings
-- Required when you set (Type) under (OutputGroups)>(OutputGroupSettings) to FILE_GROUP_SETTINGS.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Destination [__stringPatternS3] Use Destination (Destination) to specify the S3 output location and the output filename base. Destination accepts format identifiers. If you do not specify the base filename in the URI, the service will use the filename of the input file. If your job has multiple inputs, the service uses the filename of the first input file.
-- @return FileGroupSettings structure as a key-value pair table
function M.FileGroupSettings(args)
	assert(args, "You must provide an argument table when creating FileGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Destination"] = args["Destination"],
	}
	asserts.AssertFileGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateQueueResponse = { ["Queue"] = true, nil }

function asserts.AssertCreateQueueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQueueResponse to be of type 'table'")
	if struct["Queue"] then asserts.AssertQueue(struct["Queue"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateQueueResponse[k], "CreateQueueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQueueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Queue [Queue] 
-- @return CreateQueueResponse structure as a key-value pair table
function M.CreateQueueResponse(args)
	assert(args, "You must provide an argument table when creating CreateQueueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Queue"] = args["Queue"],
	}
	asserts.AssertCreateQueueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MsSmoothEncryptionSettings = { ["SpekeKeyProvider"] = true, nil }

function asserts.AssertMsSmoothEncryptionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MsSmoothEncryptionSettings to be of type 'table'")
	if struct["SpekeKeyProvider"] then asserts.AssertSpekeKeyProvider(struct["SpekeKeyProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.MsSmoothEncryptionSettings[k], "MsSmoothEncryptionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MsSmoothEncryptionSettings
-- If you are using DRM, set DRM System (MsSmoothEncryptionSettings) to specify the value SpekeKeyProvider.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpekeKeyProvider [SpekeKeyProvider] 
-- @return MsSmoothEncryptionSettings structure as a key-value pair table
function M.MsSmoothEncryptionSettings(args)
	assert(args, "You must provide an argument table when creating MsSmoothEncryptionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpekeKeyProvider"] = args["SpekeKeyProvider"],
	}
	asserts.AssertMsSmoothEncryptionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobRequest = { ["Queue"] = true, ["Settings"] = true, ["JobTemplate"] = true, ["Role"] = true, ["ClientRequestToken"] = true, ["UserMetadata"] = true, ["BillingTagsSource"] = true, nil }

function asserts.AssertCreateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobRequest to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["Settings"], "Expected key Settings to exist in table")
	if struct["Queue"] then asserts.Assert__string(struct["Queue"]) end
	if struct["Settings"] then asserts.AssertJobSettings(struct["Settings"]) end
	if struct["JobTemplate"] then asserts.Assert__string(struct["JobTemplate"]) end
	if struct["Role"] then asserts.Assert__string(struct["Role"]) end
	if struct["ClientRequestToken"] then asserts.Assert__string(struct["ClientRequestToken"]) end
	if struct["UserMetadata"] then asserts.Assert__mapOf__string(struct["UserMetadata"]) end
	if struct["BillingTagsSource"] then asserts.AssertBillingTagsSource(struct["BillingTagsSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobRequest[k], "CreateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Queue [__string] Optional. When you create a job, you can specify a queue to send it to. If you don't specify, the job will go to the default queue. For more about queues, see the User Guide topic at http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html.
-- * Settings [JobSettings] 
-- * JobTemplate [__string] When you create a job, you can either specify a job template or specify the transcoding settings individually
-- * Role [__string] Required. The IAM role you use for creating this job. For details about permissions, see the User Guide topic at the User Guide at http://docs.aws.amazon.com/mediaconvert/latest/ug/iam-role.html.
-- * ClientRequestToken [__string] Idempotency token for CreateJob operation.
-- * UserMetadata [__mapOf__string] User-defined metadata that you want to associate with an MediaConvert job. You specify metadata in key/value pairs.
-- * BillingTagsSource [BillingTagsSource] 
-- Required key: Role
-- Required key: Settings
-- @return CreateJobRequest structure as a key-value pair table
function M.CreateJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Queue"] = args["Queue"],
		["Settings"] = args["Settings"],
		["JobTemplate"] = args["JobTemplate"],
		["Role"] = args["Role"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["UserMetadata"] = args["UserMetadata"],
		["BillingTagsSource"] = args["BillingTagsSource"],
	}
	asserts.AssertCreateJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateQueueRequest = { ["Tags"] = true, ["ReservationPlanSettings"] = true, ["PricingPlan"] = true, ["Description"] = true, ["Name"] = true, nil }

function asserts.AssertCreateQueueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateQueueRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Tags"] then asserts.Assert__mapOf__string(struct["Tags"]) end
	if struct["ReservationPlanSettings"] then asserts.AssertReservationPlanSettings(struct["ReservationPlanSettings"]) end
	if struct["PricingPlan"] then asserts.AssertPricingPlan(struct["PricingPlan"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateQueueRequest[k], "CreateQueueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateQueueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [__mapOf__string] The tags that you want to add to the resource. You can tag resources with a key-value pair or with only a key.
-- * ReservationPlanSettings [ReservationPlanSettings] Details about the pricing plan for your reserved queue. Required for reserved queues and not applicable to on-demand queues.
-- * PricingPlan [PricingPlan] Optional; default is on-demand. Specifies whether the pricing plan for the queue is on-demand or reserved. The pricing plan for the queue determines whether you pay on-demand or reserved pricing for the transcoding jobs you run through the queue. For reserved queue pricing, you must set up a contract. You can create a reserved queue contract through the AWS Elemental MediaConvert console.
-- * Description [__string] Optional. A description of the queue that you are creating.
-- * Name [__string] The name of the queue that you are creating.
-- Required key: Name
-- @return CreateQueueRequest structure as a key-value pair table
function M.CreateQueueRequest(args)
	assert(args, "You must provide an argument table when creating CreateQueueRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["ReservationPlanSettings"] = args["ReservationPlanSettings"],
		["PricingPlan"] = args["PricingPlan"],
		["Description"] = args["Description"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateQueueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForResourceResponse = { ["ResourceTags"] = true, nil }

function asserts.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	if struct["ResourceTags"] then asserts.AssertResourceTags(struct["ResourceTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResponse[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceTags [ResourceTags] 
-- @return ListTagsForResourceResponse structure as a key-value pair table
function M.ListTagsForResourceResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceTags"] = args["ResourceTags"],
	}
	asserts.AssertListTagsForResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.M3u8Settings = { ["VideoPid"] = true, ["TimedMetadataPid"] = true, ["NielsenId3"] = true, ["PatInterval"] = true, ["PcrControl"] = true, ["Scte35Pid"] = true, ["PrivateMetadataPid"] = true, ["PcrPid"] = true, ["Scte35Source"] = true, ["TransportStreamId"] = true, ["ProgramNumber"] = true, ["TimedMetadata"] = true, ["PmtPid"] = true, ["PmtInterval"] = true, ["AudioPids"] = true, ["AudioFramesPerPes"] = true, nil }

function asserts.AssertM3u8Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected M3u8Settings to be of type 'table'")
	if struct["VideoPid"] then asserts.Assert__integerMin32Max8182(struct["VideoPid"]) end
	if struct["TimedMetadataPid"] then asserts.Assert__integerMin32Max8182(struct["TimedMetadataPid"]) end
	if struct["NielsenId3"] then asserts.AssertM3u8NielsenId3(struct["NielsenId3"]) end
	if struct["PatInterval"] then asserts.Assert__integerMin0Max1000(struct["PatInterval"]) end
	if struct["PcrControl"] then asserts.AssertM3u8PcrControl(struct["PcrControl"]) end
	if struct["Scte35Pid"] then asserts.Assert__integerMin32Max8182(struct["Scte35Pid"]) end
	if struct["PrivateMetadataPid"] then asserts.Assert__integerMin32Max8182(struct["PrivateMetadataPid"]) end
	if struct["PcrPid"] then asserts.Assert__integerMin32Max8182(struct["PcrPid"]) end
	if struct["Scte35Source"] then asserts.AssertM3u8Scte35Source(struct["Scte35Source"]) end
	if struct["TransportStreamId"] then asserts.Assert__integerMin0Max65535(struct["TransportStreamId"]) end
	if struct["ProgramNumber"] then asserts.Assert__integerMin0Max65535(struct["ProgramNumber"]) end
	if struct["TimedMetadata"] then asserts.AssertTimedMetadata(struct["TimedMetadata"]) end
	if struct["PmtPid"] then asserts.Assert__integerMin32Max8182(struct["PmtPid"]) end
	if struct["PmtInterval"] then asserts.Assert__integerMin0Max1000(struct["PmtInterval"]) end
	if struct["AudioPids"] then asserts.Assert__listOf__integerMin32Max8182(struct["AudioPids"]) end
	if struct["AudioFramesPerPes"] then asserts.Assert__integerMin0Max2147483647(struct["AudioFramesPerPes"]) end
	for k,_ in pairs(struct) do
		assert(keys.M3u8Settings[k], "M3u8Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type M3u8Settings
-- Settings for TS segments in HLS
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VideoPid [__integerMin32Max8182] Packet Identifier (PID) of the elementary video stream in the transport stream.
-- * TimedMetadataPid [__integerMin32Max8182] Packet Identifier (PID) of the timed metadata stream in the transport stream.
-- * NielsenId3 [M3u8NielsenId3] 
-- * PatInterval [__integerMin0Max1000] The number of milliseconds between instances of this table in the output transport stream.
-- * PcrControl [M3u8PcrControl] 
-- * Scte35Pid [__integerMin32Max8182] Packet Identifier (PID) of the SCTE-35 stream in the transport stream.
-- * PrivateMetadataPid [__integerMin32Max8182] Packet Identifier (PID) of the private metadata stream in the transport stream.
-- * PcrPid [__integerMin32Max8182] Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID.
-- * Scte35Source [M3u8Scte35Source] 
-- * TransportStreamId [__integerMin0Max65535] The value of the transport stream ID field in the Program Map Table.
-- * ProgramNumber [__integerMin0Max65535] The value of the program number field in the Program Map Table.
-- * TimedMetadata [TimedMetadata] 
-- * PmtPid [__integerMin32Max8182] Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream.
-- * PmtInterval [__integerMin0Max1000] The number of milliseconds between instances of this table in the output transport stream.
-- * AudioPids [__listOf__integerMin32Max8182] Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation.
-- * AudioFramesPerPes [__integerMin0Max2147483647] The number of audio frames to insert for each PES packet.
-- @return M3u8Settings structure as a key-value pair table
function M.M3u8Settings(args)
	assert(args, "You must provide an argument table when creating M3u8Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VideoPid"] = args["VideoPid"],
		["TimedMetadataPid"] = args["TimedMetadataPid"],
		["NielsenId3"] = args["NielsenId3"],
		["PatInterval"] = args["PatInterval"],
		["PcrControl"] = args["PcrControl"],
		["Scte35Pid"] = args["Scte35Pid"],
		["PrivateMetadataPid"] = args["PrivateMetadataPid"],
		["PcrPid"] = args["PcrPid"],
		["Scte35Source"] = args["Scte35Source"],
		["TransportStreamId"] = args["TransportStreamId"],
		["ProgramNumber"] = args["ProgramNumber"],
		["TimedMetadata"] = args["TimedMetadata"],
		["PmtPid"] = args["PmtPid"],
		["PmtInterval"] = args["PmtInterval"],
		["AudioPids"] = args["AudioPids"],
		["AudioFramesPerPes"] = args["AudioFramesPerPes"],
	}
	asserts.AssertM3u8Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Timing = { ["FinishTime"] = true, ["SubmitTime"] = true, ["StartTime"] = true, nil }

function asserts.AssertTiming(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Timing to be of type 'table'")
	if struct["FinishTime"] then asserts.Assert__timestampUnix(struct["FinishTime"]) end
	if struct["SubmitTime"] then asserts.Assert__timestampUnix(struct["SubmitTime"]) end
	if struct["StartTime"] then asserts.Assert__timestampUnix(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.Timing[k], "Timing contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Timing
-- Information about when jobs are submitted, started, and finished is specified in Unix epoch format in seconds.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FinishTime [__timestampUnix] The time, in Unix epoch format, that the transcoding job finished
-- * SubmitTime [__timestampUnix] The time, in Unix epoch format, that you submitted the job.
-- * StartTime [__timestampUnix] The time, in Unix epoch format, that transcoding for the job began.
-- @return Timing structure as a key-value pair table
function M.Timing(args)
	assert(args, "You must provide an argument table when creating Timing")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FinishTime"] = args["FinishTime"],
		["SubmitTime"] = args["SubmitTime"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertTiming(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Endpoint = { ["Url"] = true, nil }

function asserts.AssertEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Endpoint to be of type 'table'")
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	for k,_ in pairs(struct) do
		assert(keys.Endpoint[k], "Endpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Endpoint
-- Describes an account-specific API endpoint.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [__string] URL of endpoint
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
		["Url"] = args["Url"],
	}
	asserts.AssertEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Output = { ["Extension"] = true, ["NameModifier"] = true, ["VideoDescription"] = true, ["OutputSettings"] = true, ["ContainerSettings"] = true, ["Preset"] = true, ["CaptionDescriptions"] = true, ["AudioDescriptions"] = true, nil }

function asserts.AssertOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Output to be of type 'table'")
	if struct["Extension"] then asserts.Assert__string(struct["Extension"]) end
	if struct["NameModifier"] then asserts.Assert__stringMin1(struct["NameModifier"]) end
	if struct["VideoDescription"] then asserts.AssertVideoDescription(struct["VideoDescription"]) end
	if struct["OutputSettings"] then asserts.AssertOutputSettings(struct["OutputSettings"]) end
	if struct["ContainerSettings"] then asserts.AssertContainerSettings(struct["ContainerSettings"]) end
	if struct["Preset"] then asserts.Assert__stringMin0(struct["Preset"]) end
	if struct["CaptionDescriptions"] then asserts.Assert__listOfCaptionDescription(struct["CaptionDescriptions"]) end
	if struct["AudioDescriptions"] then asserts.Assert__listOfAudioDescription(struct["AudioDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.Output[k], "Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Output
-- An output object describes the settings for a single output file or stream in an output group.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Extension [__string] Use Extension (Extension) to specify the file extension for outputs in File output groups. If you do not specify a value, the service will use default extensions by container type as follows * MPEG-2 transport stream, m2ts * Quicktime, mov * MXF container, mxf * MPEG-4 container, mp4 * No Container, the service will use codec extensions (e.g. AAC, H265, H265, AC3)
-- * NameModifier [__stringMin1] Use Name modifier (NameModifier) to have the service add a string to the end of each output filename. You specify the base filename as part of your destination URI. When you create multiple outputs in the same output group, Name modifier (NameModifier) is required. Name modifier also accepts format identifiers. For DASH ISO outputs, if you use the format identifiers $Number$ or $Time$ in one output, you must use them in the same way in all outputs of the output group.
-- * VideoDescription [VideoDescription] (VideoDescription) contains a group of video encoding settings. The specific video settings depend on the video codec you choose when you specify a value for Video codec (codec). Include one instance of (VideoDescription) per output.
-- * OutputSettings [OutputSettings] 
-- * ContainerSettings [ContainerSettings] 
-- * Preset [__stringMin0] Use Preset (Preset) to specifiy a preset for your transcoding settings. Provide the system or custom preset name. You can specify either Preset (Preset) or Container settings (ContainerSettings), but not both.
-- * CaptionDescriptions [__listOfCaptionDescription] (CaptionDescriptions) contains groups of captions settings. For each output that has captions, include one instance of (CaptionDescriptions). (CaptionDescriptions) can contain multiple groups of captions settings.
-- * AudioDescriptions [__listOfAudioDescription] (AudioDescriptions) contains groups of audio encoding settings organized by audio codec. Include one instance of (AudioDescriptions) per output. (AudioDescriptions) can contain multiple groups of encoding settings.
-- @return Output structure as a key-value pair table
function M.Output(args)
	assert(args, "You must provide an argument table when creating Output")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Extension"] = args["Extension"],
		["NameModifier"] = args["NameModifier"],
		["VideoDescription"] = args["VideoDescription"],
		["OutputSettings"] = args["OutputSettings"],
		["ContainerSettings"] = args["ContainerSettings"],
		["Preset"] = args["Preset"],
		["CaptionDescriptions"] = args["CaptionDescriptions"],
		["AudioDescriptions"] = args["AudioDescriptions"],
	}
	asserts.AssertOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Ac3Settings = { ["MetadataControl"] = true, ["BitstreamMode"] = true, ["Dialnorm"] = true, ["LfeFilter"] = true, ["DynamicRangeCompressionProfile"] = true, ["SampleRate"] = true, ["Bitrate"] = true, ["CodingMode"] = true, nil }

function asserts.AssertAc3Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ac3Settings to be of type 'table'")
	if struct["MetadataControl"] then asserts.AssertAc3MetadataControl(struct["MetadataControl"]) end
	if struct["BitstreamMode"] then asserts.AssertAc3BitstreamMode(struct["BitstreamMode"]) end
	if struct["Dialnorm"] then asserts.Assert__integerMin1Max31(struct["Dialnorm"]) end
	if struct["LfeFilter"] then asserts.AssertAc3LfeFilter(struct["LfeFilter"]) end
	if struct["DynamicRangeCompressionProfile"] then asserts.AssertAc3DynamicRangeCompressionProfile(struct["DynamicRangeCompressionProfile"]) end
	if struct["SampleRate"] then asserts.Assert__integerMin48000Max48000(struct["SampleRate"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin64000Max640000(struct["Bitrate"]) end
	if struct["CodingMode"] then asserts.AssertAc3CodingMode(struct["CodingMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Ac3Settings[k], "Ac3Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ac3Settings
-- Required when you set (Codec) under (AudioDescriptions)>(CodecSettings) to the value AC3.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetadataControl [Ac3MetadataControl] 
-- * BitstreamMode [Ac3BitstreamMode] 
-- * Dialnorm [__integerMin1Max31] Sets the dialnorm for the output. If blank and input audio is Dolby Digital, dialnorm will be passed through.
-- * LfeFilter [Ac3LfeFilter] 
-- * DynamicRangeCompressionProfile [Ac3DynamicRangeCompressionProfile] 
-- * SampleRate [__integerMin48000Max48000] Sample rate in hz. Sample rate is always 48000.
-- * Bitrate [__integerMin64000Max640000] Average bitrate in bits/second. Valid bitrates depend on the coding mode.
-- * CodingMode [Ac3CodingMode] 
-- @return Ac3Settings structure as a key-value pair table
function M.Ac3Settings(args)
	assert(args, "You must provide an argument table when creating Ac3Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MetadataControl"] = args["MetadataControl"],
		["BitstreamMode"] = args["BitstreamMode"],
		["Dialnorm"] = args["Dialnorm"],
		["LfeFilter"] = args["LfeFilter"],
		["DynamicRangeCompressionProfile"] = args["DynamicRangeCompressionProfile"],
		["SampleRate"] = args["SampleRate"],
		["Bitrate"] = args["Bitrate"],
		["CodingMode"] = args["CodingMode"],
	}
	asserts.AssertAc3Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DashIsoEncryptionSettings = { ["SpekeKeyProvider"] = true, nil }

function asserts.AssertDashIsoEncryptionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DashIsoEncryptionSettings to be of type 'table'")
	if struct["SpekeKeyProvider"] then asserts.AssertSpekeKeyProvider(struct["SpekeKeyProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.DashIsoEncryptionSettings[k], "DashIsoEncryptionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DashIsoEncryptionSettings
-- Specifies DRM settings for DASH outputs.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpekeKeyProvider [SpekeKeyProvider] 
-- @return DashIsoEncryptionSettings structure as a key-value pair table
function M.DashIsoEncryptionSettings(args)
	assert(args, "You must provide an argument table when creating DashIsoEncryptionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpekeKeyProvider"] = args["SpekeKeyProvider"],
	}
	asserts.AssertDashIsoEncryptionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertM2tsBufferModel(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsBufferModel to be of type 'string'")
end

-- Controls what buffer model to use for accurate interleaving. If set to MULTIPLEX, use multiplex  buffer model. If set to NONE, this can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.
function M.M2tsBufferModel(str)
	asserts.AssertM2tsBufferModel(str)
	return str
end

function asserts.AssertHlsClientCache(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsClientCache to be of type 'string'")
end

-- When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents client from saving media segments for later replay.
function M.HlsClientCache(str)
	asserts.AssertHlsClientCache(str)
	return str
end

function asserts.AssertM2tsAudioBufferModel(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsAudioBufferModel to be of type 'string'")
end

-- Selects between the DVB and ATSC buffer models for Dolby Digital audio.
function M.M2tsAudioBufferModel(str)
	asserts.AssertM2tsAudioBufferModel(str)
	return str
end

function asserts.AssertH264Syntax(str)
	assert(str)
	assert(type(str) == "string", "Expected H264Syntax to be of type 'string'")
end

-- Produces a bitstream compliant with SMPTE RP-2027.
function M.H264Syntax(str)
	asserts.AssertH264Syntax(str)
	return str
end

function asserts.AssertDashIsoSegmentControl(str)
	assert(str)
	assert(type(str) == "string", "Expected DashIsoSegmentControl to be of type 'string'")
end

-- When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
function M.DashIsoSegmentControl(str)
	asserts.AssertDashIsoSegmentControl(str)
	return str
end

function asserts.Assert__stringPattern0940191020191209301(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPattern0940191020191209301 to be of type 'string'")
end

--  
function M.__stringPattern0940191020191209301(str)
	asserts.Assert__stringPattern0940191020191209301(str)
	return str
end

function asserts.AssertAacAudioDescriptionBroadcasterMix(str)
	assert(str)
	assert(type(str) == "string", "Expected AacAudioDescriptionBroadcasterMix to be of type 'string'")
end

-- Choose BROADCASTER_MIXED_AD when the input contains pre-mixed main audio + audio description (AD) as a stereo pair. The value for AudioType will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. When you choose BROADCASTER_MIXED_AD, the encoder ignores any values you provide in AudioType and  FollowInputAudioType. Choose NORMAL when the input does not contain pre-mixed audio + audio description (AD). In this case, the encoder will use any values you provide for AudioType and FollowInputAudioType.
function M.AacAudioDescriptionBroadcasterMix(str)
	asserts.AssertAacAudioDescriptionBroadcasterMix(str)
	return str
end

function asserts.AssertH264CodecProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected H264CodecProfile to be of type 'string'")
end

-- H.264 Profile. High 4:2:2 and 10-bit profiles are only available with the AVC-I License.
function M.H264CodecProfile(str)
	asserts.AssertH264CodecProfile(str)
	return str
end

function asserts.AssertInputDeblockFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected InputDeblockFilter to be of type 'string'")
end

-- Enable Deblock (InputDeblockFilter) to produce smoother motion in the output. Default is disabled. Only manaully controllable for MPEG2 and uncompressed video inputs.
function M.InputDeblockFilter(str)
	asserts.AssertInputDeblockFilter(str)
	return str
end

function asserts.AssertCommitment(str)
	assert(str)
	assert(type(str) == "string", "Expected Commitment to be of type 'string'")
end

-- The length of time that you commit to when you set up a pricing plan contract for a reserved queue.
function M.Commitment(str)
	asserts.AssertCommitment(str)
	return str
end

function asserts.Assert__stringMin1Max256(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin1Max256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.__stringMin1Max256(str)
	asserts.Assert__stringMin1Max256(str)
	return str
end

function asserts.AssertInputPsiControl(str)
	assert(str)
	assert(type(str) == "string", "Expected InputPsiControl to be of type 'string'")
end

-- Set PSI control (InputPsiControl) for transport stream inputs to specify which data the demux process to scans. * Ignore PSI - Scan all PIDs for audio and video. * Use PSI - Scan only PSI data.
function M.InputPsiControl(str)
	asserts.AssertInputPsiControl(str)
	return str
end

function asserts.AssertInputTimecodeSource(str)
	assert(str)
	assert(type(str) == "string", "Expected InputTimecodeSource to be of type 'string'")
end

-- Timecode source under input settings (InputTimecodeSource) only affects the behavior of features that apply to a single input at a time, such as input clipping and synchronizing some captions formats. Use this setting to specify whether the service counts frames by timecodes embedded in the video (EMBEDDED) or by starting the first frame at zero (ZEROBASED). In both cases, the timecode format is HH:MM:SS:FF or HH:MM:SS;FF, where FF is the frame number. Only set this to EMBEDDED if your source video has embedded timecodes.
function M.InputTimecodeSource(str)
	asserts.AssertInputTimecodeSource(str)
	return str
end

function asserts.Assert__stringMin14PatternS3BmpBMPPngPNGTgaTGA(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin14PatternS3BmpBMPPngPNGTgaTGA to be of type 'string'")
	assert(#str >= 14, "Expected string to be min 14 characters")
end

--  
function M.__stringMin14PatternS3BmpBMPPngPNGTgaTGA(str)
	asserts.Assert__stringMin14PatternS3BmpBMPPngPNGTgaTGA(str)
	return str
end

function asserts.AssertTimedMetadata(str)
	assert(str)
	assert(type(str) == "string", "Expected TimedMetadata to be of type 'string'")
end

-- Applies only to HLS outputs. Use this setting to specify whether the service inserts the ID3 timed metadata from the input in this output.
function M.TimedMetadata(str)
	asserts.AssertTimedMetadata(str)
	return str
end

function asserts.AssertAc3MetadataControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3MetadataControl to be of type 'string'")
end

-- When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
function M.Ac3MetadataControl(str)
	asserts.AssertAc3MetadataControl(str)
	return str
end

function asserts.AssertMpeg2SlowPal(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2SlowPal to be of type 'string'")
end

-- Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
function M.Mpeg2SlowPal(str)
	asserts.AssertMpeg2SlowPal(str)
	return str
end

function asserts.AssertH264SlowPal(str)
	assert(str)
	assert(type(str) == "string", "Expected H264SlowPal to be of type 'string'")
end

-- Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
function M.H264SlowPal(str)
	asserts.AssertH264SlowPal(str)
	return str
end

function asserts.AssertProresCodecProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected ProresCodecProfile to be of type 'string'")
end

-- Use Profile (ProResCodecProfile) to specifiy the type of Apple ProRes codec to use for this output.
function M.ProresCodecProfile(str)
	asserts.AssertProresCodecProfile(str)
	return str
end

function asserts.AssertH265UnregisteredSeiTimecode(str)
	assert(str)
	assert(type(str) == "string", "Expected H265UnregisteredSeiTimecode to be of type 'string'")
end

-- Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
function M.H265UnregisteredSeiTimecode(str)
	asserts.AssertH265UnregisteredSeiTimecode(str)
	return str
end

function asserts.AssertHlsAdMarkers(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsAdMarkers to be of type 'string'")
end

--  
function M.HlsAdMarkers(str)
	asserts.AssertHlsAdMarkers(str)
	return str
end

function asserts.AssertMpeg2InterlaceMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2InterlaceMode to be of type 'string'")
end

-- Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type.
--  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first".
--  - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
function M.Mpeg2InterlaceMode(str)
	asserts.AssertMpeg2InterlaceMode(str)
	return str
end

function asserts.AssertCmafManifestCompression(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafManifestCompression to be of type 'string'")
end

-- When set to GZIP, compresses HLS playlist.
function M.CmafManifestCompression(str)
	asserts.AssertCmafManifestCompression(str)
	return str
end

function asserts.AssertBurninSubtitleAlignment(str)
	assert(str)
	assert(type(str) == "string", "Expected BurninSubtitleAlignment to be of type 'string'")
end

-- If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
function M.BurninSubtitleAlignment(str)
	asserts.AssertBurninSubtitleAlignment(str)
	return str
end

function asserts.AssertAudioNormalizationLoudnessLogging(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioNormalizationLoudnessLogging to be of type 'string'")
end

-- If set to LOG, log each output's audio track loudness to a CSV file.
function M.AudioNormalizationLoudnessLogging(str)
	asserts.AssertAudioNormalizationLoudnessLogging(str)
	return str
end

function asserts.AssertSccDestinationFramerate(str)
	assert(str)
	assert(type(str) == "string", "Expected SccDestinationFramerate to be of type 'string'")
end

-- Set Framerate (SccDestinationFramerate) to make sure that the captions and the video are synchronized in the output. Specify a framerate that matches the framerate of the associated video. If the video framerate is 29.97, choose 29.97 dropframe (FRAMERATE_29_97_DROPFRAME) only if the video has video_insertion=true and drop_frame_timecode=true; otherwise, choose 29.97 non-dropframe (FRAMERATE_29_97_NON_DROPFRAME).
function M.SccDestinationFramerate(str)
	asserts.AssertSccDestinationFramerate(str)
	return str
end

function asserts.AssertInputDenoiseFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected InputDenoiseFilter to be of type 'string'")
end

-- Enable Denoise (InputDenoiseFilter) to filter noise from the input.  Default is disabled. Only applicable to MPEG2, H.264, H.265, and uncompressed video inputs.
function M.InputDenoiseFilter(str)
	asserts.AssertInputDenoiseFilter(str)
	return str
end

function asserts.AssertDashIsoWriteSegmentTimelineInRepresentation(str)
	assert(str)
	assert(type(str) == "string", "Expected DashIsoWriteSegmentTimelineInRepresentation to be of type 'string'")
end

-- When ENABLED, segment durations are indicated in the manifest using SegmentTimeline and SegmentTimeline will be promoted down into Representation from AdaptationSet.
function M.DashIsoWriteSegmentTimelineInRepresentation(str)
	asserts.AssertDashIsoWriteSegmentTimelineInRepresentation(str)
	return str
end

function asserts.AssertMsSmoothManifestEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected MsSmoothManifestEncoding to be of type 'string'")
end

-- Use Manifest encoding (MsSmoothManifestEncoding) to specify the encoding format for the server and client manifest. Valid options are utf8 and utf16.
function M.MsSmoothManifestEncoding(str)
	asserts.AssertMsSmoothManifestEncoding(str)
	return str
end

function asserts.AssertH265FlickerAdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H265FlickerAdaptiveQuantization to be of type 'string'")
end

-- Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
function M.H265FlickerAdaptiveQuantization(str)
	asserts.AssertH265FlickerAdaptiveQuantization(str)
	return str
end

function asserts.AssertAacCodecProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected AacCodecProfile to be of type 'string'")
end

-- AAC Profile.
function M.AacCodecProfile(str)
	asserts.AssertAacCodecProfile(str)
	return str
end

function asserts.AssertAudioSelectorType(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioSelectorType to be of type 'string'")
end

-- Specifies the type of the audio selector.
function M.AudioSelectorType(str)
	asserts.AssertAudioSelectorType(str)
	return str
end

function asserts.AssertH264AdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H264AdaptiveQuantization to be of type 'string'")
end

-- Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
function M.H264AdaptiveQuantization(str)
	asserts.AssertH264AdaptiveQuantization(str)
	return str
end

function asserts.AssertDvbSubtitleShadowColor(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubtitleShadowColor to be of type 'string'")
end

-- Specifies the color of the shadow cast by the captions.
--All burn-in and DVB-Sub font settings must match.
function M.DvbSubtitleShadowColor(str)
	asserts.AssertDvbSubtitleShadowColor(str)
	return str
end

function asserts.AssertH265InterlaceMode(str)
	assert(str)
	assert(type(str) == "string", "Expected H265InterlaceMode to be of type 'string'")
end

-- Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type.
--  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first".
--  - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
function M.H265InterlaceMode(str)
	asserts.AssertH265InterlaceMode(str)
	return str
end

function asserts.AssertVideoTimecodeInsertion(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoTimecodeInsertion to be of type 'string'")
end

-- Applies only to H.264, H.265, MPEG2, and ProRes outputs. Only enable Timecode insertion when the input framerate is identical to the output framerate. To include timecodes in this output, set Timecode insertion (VideoTimecodeInsertion) to PIC_TIMING_SEI. To leave them out, set it to DISABLED. Default is DISABLED. When the service inserts timecodes in an output, by default, it uses any embedded timecodes from the input. If none are present, the service will set the timecode for the first output frame to zero. To change this default behavior, adjust the settings under Timecode configuration (TimecodeConfig). In the console, these settings are located under Job > Job settings > Timecode configuration. Note - Timecode source under input settings (InputTimecodeSource) does not affect the timecodes that are inserted in the output. Source under Job settings > Timecode configuration (TimecodeSource) does.
function M.VideoTimecodeInsertion(str)
	asserts.AssertVideoTimecodeInsertion(str)
	return str
end

function asserts.AssertH264FramerateConversionAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected H264FramerateConversionAlgorithm to be of type 'string'")
end

-- When set to INTERPOLATE, produces smoother motion during framerate conversion.
function M.H264FramerateConversionAlgorithm(str)
	asserts.AssertH264FramerateConversionAlgorithm(str)
	return str
end

function asserts.AssertH264FieldEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected H264FieldEncoding to be of type 'string'")
end

-- Choosing FORCE_FIELD disables PAFF encoding for interlaced outputs.
function M.H264FieldEncoding(str)
	asserts.AssertH264FieldEncoding(str)
	return str
end

function asserts.AssertHlsOutputSelection(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsOutputSelection to be of type 'string'")
end

-- Indicates whether the .m3u8 manifest file should be generated for this HLS output group.
function M.HlsOutputSelection(str)
	asserts.AssertHlsOutputSelection(str)
	return str
end

function asserts.AssertDeinterlaceAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected DeinterlaceAlgorithm to be of type 'string'")
end

-- Only applies when you set Deinterlacer (DeinterlaceMode) to Deinterlace (DEINTERLACE) or Adaptive (ADAPTIVE). Motion adaptive interpolate (INTERPOLATE) produces sharper pictures, while blend (BLEND) produces smoother motion. Use (INTERPOLATE_TICKER) OR (BLEND_TICKER) if your source file includes a ticker, such as a scrolling headline at the bottom of the frame.
function M.DeinterlaceAlgorithm(str)
	asserts.AssertDeinterlaceAlgorithm(str)
	return str
end

function asserts.AssertH265DynamicSubGop(str)
	assert(str)
	assert(type(str) == "string", "Expected H265DynamicSubGop to be of type 'string'")
end

-- Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
function M.H265DynamicSubGop(str)
	asserts.AssertH265DynamicSubGop(str)
	return str
end

function asserts.AssertProresInterlaceMode(str)
	assert(str)
	assert(type(str) == "string", "Expected ProresInterlaceMode to be of type 'string'")
end

-- Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type.
--  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first".
--  - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
function M.ProresInterlaceMode(str)
	asserts.AssertProresInterlaceMode(str)
	return str
end

function asserts.AssertRespondToAfd(str)
	assert(str)
	assert(type(str) == "string", "Expected RespondToAfd to be of type 'string'")
end

-- Use Respond to AFD (RespondToAfd) to specify how the service changes the video itself in response to AFD values in the input. * Choose Respond to clip the input video frame according to the AFD value, input display aspect ratio, and output display aspect ratio. * Choose Passthrough to include the input AFD values. Do not choose this when AfdSignaling is set to (NONE). A preferred implementation of this workflow is to set RespondToAfd to (NONE) and set AfdSignaling to (AUTO). * Choose None to remove all input AFD values from this output.
function M.RespondToAfd(str)
	asserts.AssertRespondToAfd(str)
	return str
end

function asserts.AssertCmafWriteDASHManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafWriteDASHManifest to be of type 'string'")
end

-- When set to ENABLED, a DASH MPD manifest will be generated for this output.
function M.CmafWriteDASHManifest(str)
	asserts.AssertCmafWriteDASHManifest(str)
	return str
end

function asserts.AssertPresetListBy(str)
	assert(str)
	assert(type(str) == "string", "Expected PresetListBy to be of type 'string'")
end

-- Optional. When you request a list of presets, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
function M.PresetListBy(str)
	asserts.AssertPresetListBy(str)
	return str
end

function asserts.AssertH265TemporalAdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H265TemporalAdaptiveQuantization to be of type 'string'")
end

-- Adjust quantization within each frame based on temporal variation of content complexity.
function M.H265TemporalAdaptiveQuantization(str)
	asserts.AssertH265TemporalAdaptiveQuantization(str)
	return str
end

function asserts.Assert__stringPatternDD(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternDD to be of type 'string'")
end

--  
function M.__stringPatternDD(str)
	asserts.Assert__stringPatternDD(str)
	return str
end

function asserts.AssertEac3DynamicRangeCompressionRf(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3DynamicRangeCompressionRf to be of type 'string'")
end

-- Enables Heavy Dynamic Range Compression, ensures that the instantaneous signal peaks do not exceed specified levels.
function M.Eac3DynamicRangeCompressionRf(str)
	asserts.AssertEac3DynamicRangeCompressionRf(str)
	return str
end

function asserts.AssertMovCslgAtom(str)
	assert(str)
	assert(type(str) == "string", "Expected MovCslgAtom to be of type 'string'")
end

-- When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
function M.MovCslgAtom(str)
	asserts.AssertMovCslgAtom(str)
	return str
end

function asserts.AssertDvbSubtitleBackgroundColor(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubtitleBackgroundColor to be of type 'string'")
end

-- Specifies the color of the rectangle behind the captions.
--All burn-in and DVB-Sub font settings must match.
function M.DvbSubtitleBackgroundColor(str)
	asserts.AssertDvbSubtitleBackgroundColor(str)
	return str
end

function asserts.AssertProresTelecine(str)
	assert(str)
	assert(type(str) == "string", "Expected ProresTelecine to be of type 'string'")
end

-- Only use Telecine (ProresTelecine) when you set Framerate (Framerate) to 29.970. Set Telecine (ProresTelecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.
function M.ProresTelecine(str)
	asserts.AssertProresTelecine(str)
	return str
end

function asserts.AssertMpeg2DynamicSubGop(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2DynamicSubGop to be of type 'string'")
end

-- Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
function M.Mpeg2DynamicSubGop(str)
	asserts.AssertMpeg2DynamicSubGop(str)
	return str
end

function asserts.AssertProresParControl(str)
	assert(str)
	assert(type(str) == "string", "Expected ProresParControl to be of type 'string'")
end

-- Use (ProresParControl) to specify how the service determines the pixel aspect ratio. Set to Follow source (INITIALIZE_FROM_SOURCE) to use the pixel aspect ratio from the input.  To specify a different pixel aspect ratio: Using the console, choose it from the dropdown menu. Using the API, set ProresParControl to (SPECIFIED) and provide  for (ParNumerator) and (ParDenominator).
function M.ProresParControl(str)
	asserts.AssertProresParControl(str)
	return str
end

function asserts.AssertHlsAudioTrackType(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsAudioTrackType to be of type 'string'")
end

-- Four types of audio-only tracks are supported: Audio-Only Variant Stream The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest. Alternate Audio, Auto Select, Default Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES Alternate Audio, Auto Select, Not Default Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES Alternate Audio, not Auto Select Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
function M.HlsAudioTrackType(str)
	asserts.AssertHlsAudioTrackType(str)
	return str
end

function asserts.AssertH265WriteMp4PackagingType(str)
	assert(str)
	assert(type(str) == "string", "Expected H265WriteMp4PackagingType to be of type 'string'")
end

-- If HVC1, output that is H.265 will be marked as HVC1 and adhere to the ISO-IECJTC1-SC29_N13798_Text_ISOIEC_FDIS_14496-15_3rd_E spec which states that parameter set NAL units will be stored in the sample headers but not in the samples directly. If HEV1, then H.265 will be marked as HEV1 and parameter set NAL units will be written into the samples.
function M.H265WriteMp4PackagingType(str)
	asserts.AssertH265WriteMp4PackagingType(str)
	return str
end

function asserts.AssertJobTemplateListBy(str)
	assert(str)
	assert(type(str) == "string", "Expected JobTemplateListBy to be of type 'string'")
end

-- Optional. When you request a list of job templates, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by name.
function M.JobTemplateListBy(str)
	asserts.AssertJobTemplateListBy(str)
	return str
end

function asserts.AssertDvbSubtitleTeletextSpacing(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubtitleTeletextSpacing to be of type 'string'")
end

-- Only applies to jobs with input captions in Teletext or STL formats. Specify whether the spacing between letters in your captions is set by the captions grid or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read if the captions are closed caption.
function M.DvbSubtitleTeletextSpacing(str)
	asserts.AssertDvbSubtitleTeletextSpacing(str)
	return str
end

function asserts.AssertHlsCaptionLanguageSetting(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsCaptionLanguageSetting to be of type 'string'")
end

-- Applies only to 608 Embedded output captions. Insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions. None: Include CLOSED-CAPTIONS=NONE line in the manifest. Omit: Omit any CLOSED-CAPTIONS line from the manifest.
function M.HlsCaptionLanguageSetting(str)
	asserts.AssertHlsCaptionLanguageSetting(str)
	return str
end

function asserts.AssertAc3LfeFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3LfeFilter to be of type 'string'")
end

-- Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
function M.Ac3LfeFilter(str)
	asserts.AssertAc3LfeFilter(str)
	return str
end

function asserts.AssertContainerType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContainerType to be of type 'string'")
end

-- Container for this output. Some containers require a container settings object. If not specified, the default object will be created.
function M.ContainerType(str)
	asserts.AssertContainerType(str)
	return str
end

function asserts.AssertMpeg2TemporalAdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2TemporalAdaptiveQuantization to be of type 'string'")
end

-- Adjust quantization within each frame based on temporal variation of content complexity.
function M.Mpeg2TemporalAdaptiveQuantization(str)
	asserts.AssertMpeg2TemporalAdaptiveQuantization(str)
	return str
end

function asserts.AssertH265SpatialAdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H265SpatialAdaptiveQuantization to be of type 'string'")
end

-- Adjust quantization within each frame based on spatial variation of content complexity.
function M.H265SpatialAdaptiveQuantization(str)
	asserts.AssertH265SpatialAdaptiveQuantization(str)
	return str
end

function asserts.AssertH264RepeatPps(str)
	assert(str)
	assert(type(str) == "string", "Expected H264RepeatPps to be of type 'string'")
end

-- Places a PPS header on each encoded picture, even if repeated.
function M.H264RepeatPps(str)
	asserts.AssertH264RepeatPps(str)
	return str
end

function asserts.AssertPricingPlan(str)
	assert(str)
	assert(type(str) == "string", "Expected PricingPlan to be of type 'string'")
end

-- Specifies whether the pricing plan for the queue is On-demand or Reserved. The pricing plan for the queue determines whether you pay On-demand or Reserved pricing for the transcoding jobs that you run through the queue. For Reserved queue pricing, you must set up a contract. You can create a Reserved queue contract through the AWS Elemental MediaConvert console.
function M.PricingPlan(str)
	asserts.AssertPricingPlan(str)
	return str
end

function asserts.AssertM2tsEsRateInPes(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsEsRateInPes to be of type 'string'")
end

-- Controls whether to include the ES Rate field in the PES header.
function M.M2tsEsRateInPes(str)
	asserts.AssertM2tsEsRateInPes(str)
	return str
end

function asserts.AssertMpeg2FramerateControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2FramerateControl to be of type 'string'")
end

-- If you are using the console, use the Framerate setting to specify the framerate for this output. If you want to keep the same framerate as the input video, choose Follow source. If you want to do framerate conversion, choose a framerate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your framerate as a fraction. If you are creating your transcoding job sepecification as a JSON file without the console, use FramerateControl to specify which value the service uses for the framerate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Choose SPECIFIED if you want the service to use the framerate you specify in the settings FramerateNumerator and FramerateDenominator.
function M.Mpeg2FramerateControl(str)
	asserts.AssertMpeg2FramerateControl(str)
	return str
end

function asserts.AssertMp4MoovPlacement(str)
	assert(str)
	assert(type(str) == "string", "Expected Mp4MoovPlacement to be of type 'string'")
end

-- If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.
function M.Mp4MoovPlacement(str)
	asserts.AssertMp4MoovPlacement(str)
	return str
end

function asserts.AssertLanguageCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageCode to be of type 'string'")
end

-- Specify the language, using the ISO 639-2 three-letter code listed at https://www.loc.gov/standards/iso639-2/php/code_list.php.
function M.LanguageCode(str)
	asserts.AssertLanguageCode(str)
	return str
end

function asserts.AssertMpeg2Telecine(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2Telecine to be of type 'string'")
end

-- Only use Telecine (Mpeg2Telecine) when you set Framerate (Framerate) to 29.970. Set Telecine (Mpeg2Telecine) to Hard (hard) to produce a 29.97i output from a 23.976 input. Set it to Soft (soft) to produce 23.976 output and leave converstion to the player.
function M.Mpeg2Telecine(str)
	asserts.AssertMpeg2Telecine(str)
	return str
end

function asserts.Assert__stringPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPattern to be of type 'string'")
end

--  
function M.__stringPattern(str)
	asserts.Assert__stringPattern(str)
	return str
end

function asserts.AssertHlsSegmentControl(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsSegmentControl to be of type 'string'")
end

-- When set to SINGLE_FILE, emits program as a single media resource (.ts) file, uses #EXT-X-BYTERANGE tags to index segment for playback.
function M.HlsSegmentControl(str)
	asserts.AssertHlsSegmentControl(str)
	return str
end

function asserts.AssertH264EntropyEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected H264EntropyEncoding to be of type 'string'")
end

-- Entropy encoding mode. Use CABAC (must be in Main or High profile) or CAVLC.
function M.H264EntropyEncoding(str)
	asserts.AssertH264EntropyEncoding(str)
	return str
end

function asserts.AssertColorSpaceUsage(str)
	assert(str)
	assert(type(str) == "string", "Expected ColorSpaceUsage to be of type 'string'")
end

-- There are two sources for color metadata, the input file and the job configuration (in the Color space and HDR master display informaiton settings). The Color space usage setting controls which takes precedence. FORCE: The system will use color metadata supplied by user, if any. If the user does not supply color metadata, the system will use data from the source. FALLBACK: The system will use color metadata from the source. If source has no color metadata, the system will use user-supplied color metadata values if available.
function M.ColorSpaceUsage(str)
	asserts.AssertColorSpaceUsage(str)
	return str
end

function asserts.AssertMovReference(str)
	assert(str)
	assert(type(str) == "string", "Expected MovReference to be of type 'string'")
end

-- A value of 'external' creates separate media files and the wrapper file (.mov) contains references to these media files. A value of 'self_contained' creates only a wrapper (.mov) file and this file contains all of the media.
function M.MovReference(str)
	asserts.AssertMovReference(str)
	return str
end

function asserts.AssertDvbSubtitleOutlineColor(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubtitleOutlineColor to be of type 'string'")
end

-- Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
function M.DvbSubtitleOutlineColor(str)
	asserts.AssertDvbSubtitleOutlineColor(str)
	return str
end

function asserts.AssertMpeg2QualityTuningLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2QualityTuningLevel to be of type 'string'")
end

-- Use Quality tuning level (Mpeg2QualityTuningLevel) to specifiy whether to use single-pass or multipass video encoding.
function M.Mpeg2QualityTuningLevel(str)
	asserts.AssertMpeg2QualityTuningLevel(str)
	return str
end

function asserts.AssertType(str)
	assert(str)
	assert(type(str) == "string", "Expected Type to be of type 'string'")
end

--  
function M.Type(str)
	asserts.AssertType(str)
	return str
end

function asserts.AssertH265GopSizeUnits(str)
	assert(str)
	assert(type(str) == "string", "Expected H265GopSizeUnits to be of type 'string'")
end

-- Indicates if the GOP Size in H265 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
function M.H265GopSizeUnits(str)
	asserts.AssertH265GopSizeUnits(str)
	return str
end

function asserts.AssertMpeg2SpatialAdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2SpatialAdaptiveQuantization to be of type 'string'")
end

-- Adjust quantization within each frame based on spatial variation of content complexity.
function M.Mpeg2SpatialAdaptiveQuantization(str)
	asserts.AssertMpeg2SpatialAdaptiveQuantization(str)
	return str
end

function asserts.AssertBurninSubtitleShadowColor(str)
	assert(str)
	assert(type(str) == "string", "Expected BurninSubtitleShadowColor to be of type 'string'")
end

-- Specifies the color of the shadow cast by the captions.
--All burn-in and DVB-Sub font settings must match.
function M.BurninSubtitleShadowColor(str)
	asserts.AssertBurninSubtitleShadowColor(str)
	return str
end

function asserts.AssertH265ParControl(str)
	assert(str)
	assert(type(str) == "string", "Expected H265ParControl to be of type 'string'")
end

-- Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
function M.H265ParControl(str)
	asserts.AssertH265ParControl(str)
	return str
end

function asserts.AssertM2tsNielsenId3(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsNielsenId3 to be of type 'string'")
end

-- If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
function M.M2tsNielsenId3(str)
	asserts.AssertM2tsNielsenId3(str)
	return str
end

function asserts.AssertTimecodeBurninPosition(str)
	assert(str)
	assert(type(str) == "string", "Expected TimecodeBurninPosition to be of type 'string'")
end

-- Use Position (Position) under under Timecode burn-in (TimecodeBurnIn) to specify the location the burned-in timecode on output video.
function M.TimecodeBurninPosition(str)
	asserts.AssertTimecodeBurninPosition(str)
	return str
end

function asserts.AssertMpeg2CodecLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2CodecLevel to be of type 'string'")
end

-- Use Level (Mpeg2CodecLevel) to set the MPEG-2 level for the video output.
function M.Mpeg2CodecLevel(str)
	asserts.AssertMpeg2CodecLevel(str)
	return str
end

function asserts.AssertH264Telecine(str)
	assert(str)
	assert(type(str) == "string", "Expected H264Telecine to be of type 'string'")
end

-- This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
function M.H264Telecine(str)
	asserts.AssertH264Telecine(str)
	return str
end

function asserts.AssertBurninSubtitleOutlineColor(str)
	assert(str)
	assert(type(str) == "string", "Expected BurninSubtitleOutlineColor to be of type 'string'")
end

-- Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
function M.BurninSubtitleOutlineColor(str)
	asserts.AssertBurninSubtitleOutlineColor(str)
	return str
end

function asserts.AssertH264GopSizeUnits(str)
	assert(str)
	assert(type(str) == "string", "Expected H264GopSizeUnits to be of type 'string'")
end

-- Indicates if the GOP Size in H264 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
function M.H264GopSizeUnits(str)
	asserts.AssertH264GopSizeUnits(str)
	return str
end

function asserts.AssertAudioNormalizationAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioNormalizationAlgorithm to be of type 'string'")
end

-- Audio normalization algorithm to use. 1770-1 conforms to the CALM Act specification, 1770-2 conforms to the EBU R-128 specification.
function M.AudioNormalizationAlgorithm(str)
	asserts.AssertAudioNormalizationAlgorithm(str)
	return str
end

function asserts.Assert__stringMin0(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin0 to be of type 'string'")
end

--  
function M.__stringMin0(str)
	asserts.Assert__stringMin0(str)
	return str
end

function asserts.AssertCmafCodecSpecification(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafCodecSpecification to be of type 'string'")
end

-- Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
function M.CmafCodecSpecification(str)
	asserts.AssertCmafCodecSpecification(str)
	return str
end

function asserts.AssertH265SceneChangeDetect(str)
	assert(str)
	assert(type(str) == "string", "Expected H265SceneChangeDetect to be of type 'string'")
end

-- Scene change detection (inserts I-frames on scene changes).
function M.H265SceneChangeDetect(str)
	asserts.AssertH265SceneChangeDetect(str)
	return str
end

function asserts.AssertM2tsEbpAudioInterval(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsEbpAudioInterval to be of type 'string'")
end

-- When set to VIDEO_AND_FIXED_INTERVALS, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. When set to VIDEO_INTERVAL, these additional markers will not be inserted. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
function M.M2tsEbpAudioInterval(str)
	asserts.AssertM2tsEbpAudioInterval(str)
	return str
end

function asserts.Assert__stringPattern010920405090509092(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPattern010920405090509092 to be of type 'string'")
end

--  
function M.__stringPattern010920405090509092(str)
	asserts.Assert__stringPattern010920405090509092(str)
	return str
end

function asserts.AssertCmafWriteHLSManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafWriteHLSManifest to be of type 'string'")
end

-- When set to ENABLED, an Apple HLS manifest will be generated for this output.
function M.CmafWriteHLSManifest(str)
	asserts.AssertCmafWriteHLSManifest(str)
	return str
end

function asserts.AssertFileSourceConvert608To708(str)
	assert(str)
	assert(type(str) == "string", "Expected FileSourceConvert608To708 to be of type 'string'")
end

-- If set to UPCONVERT, 608 caption data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
function M.FileSourceConvert608To708(str)
	asserts.AssertFileSourceConvert608To708(str)
	return str
end

function asserts.AssertMpeg2CodecProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2CodecProfile to be of type 'string'")
end

-- Use Profile (Mpeg2CodecProfile) to set the MPEG-2 profile for the video output.
function M.Mpeg2CodecProfile(str)
	asserts.AssertMpeg2CodecProfile(str)
	return str
end

function asserts.Assert__stringPatternAZaZ0932(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternAZaZ0932 to be of type 'string'")
end

--  
function M.__stringPatternAZaZ0932(str)
	asserts.Assert__stringPatternAZaZ0932(str)
	return str
end

function asserts.AssertReservationPlanStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationPlanStatus to be of type 'string'")
end

-- Specifies whether the pricing plan for your reserved queue is ACTIVE or EXPIRED.
function M.ReservationPlanStatus(str)
	asserts.AssertReservationPlanStatus(str)
	return str
end

function asserts.AssertProresFramerateControl(str)
	assert(str)
	assert(type(str) == "string", "Expected ProresFramerateControl to be of type 'string'")
end

-- If you are using the console, use the Framerate setting to specify the framerate for this output. If you want to keep the same framerate as the input video, choose Follow source. If you want to do framerate conversion, choose a framerate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your framerate as a fraction. If you are creating your transcoding job sepecification as a JSON file without the console, use FramerateControl to specify which value the service uses for the framerate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Choose SPECIFIED if you want the service to use the framerate you specify in the settings FramerateNumerator and FramerateDenominator.
function M.ProresFramerateControl(str)
	asserts.AssertProresFramerateControl(str)
	return str
end

function asserts.AssertOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected Order to be of type 'string'")
end

-- When you request lists of resources, you can optionally specify whether they are sorted in ASCENDING or DESCENDING order. Default varies by resource.
function M.Order(str)
	asserts.AssertOrder(str)
	return str
end

function asserts.AssertEac3PhaseControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3PhaseControl to be of type 'string'")
end

-- Controls the amount of phase-shift applied to the surround channels. Only used for 3/2 coding mode.
function M.Eac3PhaseControl(str)
	asserts.AssertEac3PhaseControl(str)
	return str
end

function asserts.AssertHlsDirectoryStructure(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsDirectoryStructure to be of type 'string'")
end

-- Indicates whether segments should be placed in subdirectories.
function M.HlsDirectoryStructure(str)
	asserts.AssertHlsDirectoryStructure(str)
	return str
end

function asserts.AssertBurninSubtitleBackgroundColor(str)
	assert(str)
	assert(type(str) == "string", "Expected BurninSubtitleBackgroundColor to be of type 'string'")
end

-- Specifies the color of the rectangle behind the captions.
--All burn-in and DVB-Sub font settings must match.
function M.BurninSubtitleBackgroundColor(str)
	asserts.AssertBurninSubtitleBackgroundColor(str)
	return str
end

function asserts.Assert__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE to be of type 'string'")
end

--  
function M.__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE(str)
	asserts.Assert__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMAAAACCAAIIFFFFMMPP2AACC3EECC3DDTTSSEE(str)
	return str
end

function asserts.AssertH264DynamicSubGop(str)
	assert(str)
	assert(type(str) == "string", "Expected H264DynamicSubGop to be of type 'string'")
end

-- Choose Adaptive to improve subjective video quality for high-motion content. This will cause the service to use fewer B-frames (which infer information based on other frames) for high-motion portions of the video and more B-frames for low-motion portions. The maximum number of B-frames is limited by the value you provide for the setting B frames between reference frames (numberBFramesBetweenReferenceFrames).
function M.H264DynamicSubGop(str)
	asserts.AssertH264DynamicSubGop(str)
	return str
end

function asserts.AssertM3u8Scte35Source(str)
	assert(str)
	assert(type(str) == "string", "Expected M3u8Scte35Source to be of type 'string'")
end

-- Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.
function M.M3u8Scte35Source(str)
	asserts.AssertM3u8Scte35Source(str)
	return str
end

function asserts.AssertBurninSubtitleTeletextSpacing(str)
	assert(str)
	assert(type(str) == "string", "Expected BurninSubtitleTeletextSpacing to be of type 'string'")
end

-- Only applies to jobs with input captions in Teletext or STL formats. Specify whether the spacing between letters in your captions is set by the captions grid or varies depending on letter width. Choose fixed grid to conform to the spacing specified in the captions file more accurately. Choose proportional to make the text easier to read if the captions are closed caption.
function M.BurninSubtitleTeletextSpacing(str)
	asserts.AssertBurninSubtitleTeletextSpacing(str)
	return str
end

function asserts.AssertHlsKeyProviderType(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsKeyProviderType to be of type 'string'")
end

-- Indicates which type of key provider is used for encryption.
function M.HlsKeyProviderType(str)
	asserts.AssertHlsKeyProviderType(str)
	return str
end

function asserts.AssertDashIsoHbbtvCompliance(str)
	assert(str)
	assert(type(str) == "string", "Expected DashIsoHbbtvCompliance to be of type 'string'")
end

-- Supports HbbTV specification as indicated
function M.DashIsoHbbtvCompliance(str)
	asserts.AssertDashIsoHbbtvCompliance(str)
	return str
end

function asserts.AssertHlsProgramDateTime(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsProgramDateTime to be of type 'string'")
end

-- Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestamp_offset.
function M.HlsProgramDateTime(str)
	asserts.AssertHlsProgramDateTime(str)
	return str
end

function asserts.AssertEac3DcFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3DcFilter to be of type 'string'")
end

-- Activates a DC highpass filter for all input channels.
function M.Eac3DcFilter(str)
	asserts.AssertEac3DcFilter(str)
	return str
end

function asserts.Assert__stringMin32Max32Pattern09aFAF32(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin32Max32Pattern09aFAF32 to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.__stringMin32Max32Pattern09aFAF32(str)
	asserts.Assert__stringMin32Max32Pattern09aFAF32(str)
	return str
end

function asserts.AssertProresFramerateConversionAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected ProresFramerateConversionAlgorithm to be of type 'string'")
end

-- When set to INTERPOLATE, produces smoother motion during framerate conversion.
function M.ProresFramerateConversionAlgorithm(str)
	asserts.AssertProresFramerateConversionAlgorithm(str)
	return str
end

function asserts.AssertH264QualityTuningLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected H264QualityTuningLevel to be of type 'string'")
end

-- Use Quality tuning level (H264QualityTuningLevel) to specifiy whether to use fast single-pass, high-quality singlepass, or high-quality multipass video encoding.
function M.H264QualityTuningLevel(str)
	asserts.AssertH264QualityTuningLevel(str)
	return str
end

function asserts.AssertRenewalType(str)
	assert(str)
	assert(type(str) == "string", "Expected RenewalType to be of type 'string'")
end

-- Specifies whether the pricing plan contract for your reserved queue automatically renews (AUTO_RENEW) or expires (EXPIRE) at the end of the contract period.
function M.RenewalType(str)
	asserts.AssertRenewalType(str)
	return str
end

function asserts.AssertQueueStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueStatus to be of type 'string'")
end

-- Queues can be ACTIVE or PAUSED. If you pause a queue, jobs in that queue won't begin. Jobs that are running when you pause a queue continue to run until they finish or result in an error.
function M.QueueStatus(str)
	asserts.AssertQueueStatus(str)
	return str
end

function asserts.AssertAacRawFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected AacRawFormat to be of type 'string'")
end

-- Enables LATM/LOAS AAC output. Note that if you use LATM/LOAS AAC in an output, you must choose "No container" for the output container.
function M.AacRawFormat(str)
	asserts.AssertAacRawFormat(str)
	return str
end

function asserts.AssertM2tsSegmentationMarkers(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsSegmentationMarkers to be of type 'string'")
end

-- Inserts segmentation markers at each segmentation_time period. rai_segstart sets the Random Access Indicator bit in the adaptation field. rai_adapt sets the RAI bit and adds the current timecode in the private data bytes. psi_segstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebp_legacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
function M.M2tsSegmentationMarkers(str)
	asserts.AssertM2tsSegmentationMarkers(str)
	return str
end

function asserts.AssertEac3CodingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3CodingMode to be of type 'string'")
end

-- Dolby Digital Plus coding mode. Determines number of channels.
function M.Eac3CodingMode(str)
	asserts.AssertEac3CodingMode(str)
	return str
end

function asserts.AssertCmafClientCache(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafClientCache to be of type 'string'")
end

-- When set to ENABLED, sets #EXT-X-ALLOW-CACHE:no tag, which prevents client from saving media segments for later replay.
function M.CmafClientCache(str)
	asserts.AssertCmafClientCache(str)
	return str
end

function asserts.AssertOutputSdt(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputSdt to be of type 'string'")
end

-- Selects method of inserting SDT information into output stream.  "Follow input SDT" copies SDT information from input stream to  output stream. "Follow input SDT if present" copies SDT information from  input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. Enter "SDT  Manually" means user will enter the SDT information. "No SDT" means output  stream will not contain SDT information.
function M.OutputSdt(str)
	asserts.AssertOutputSdt(str)
	return str
end

function asserts.AssertCmafManifestDurationFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafManifestDurationFormat to be of type 'string'")
end

-- Indicates whether the output manifest should use floating point values for segment duration.
function M.CmafManifestDurationFormat(str)
	asserts.AssertCmafManifestDurationFormat(str)
	return str
end

function asserts.AssertM2tsEbpPlacement(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsEbpPlacement to be of type 'string'")
end

-- Selects which PIDs to place EBP markers on. They can either be placed only on the video PID, or on both the video PID and all audio PIDs. Only applicable when EBP segmentation markers are is selected (segmentationMarkers is EBP or EBP_LEGACY).
function M.M2tsEbpPlacement(str)
	asserts.AssertM2tsEbpPlacement(str)
	return str
end

function asserts.Assert__string(str)
	assert(str)
	assert(type(str) == "string", "Expected __string to be of type 'string'")
end

--  
function M.__string(str)
	asserts.Assert__string(str)
	return str
end

function asserts.AssertH264GopBReference(str)
	assert(str)
	assert(type(str) == "string", "Expected H264GopBReference to be of type 'string'")
end

-- If enable, use reference B frames for GOP structures that have B frames > 1.
function M.H264GopBReference(str)
	asserts.AssertH264GopBReference(str)
	return str
end

function asserts.AssertDvbSubtitleAlignment(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubtitleAlignment to be of type 'string'")
end

-- If no explicit x_position or y_position is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
function M.DvbSubtitleAlignment(str)
	asserts.AssertDvbSubtitleAlignment(str)
	return str
end

function asserts.Assert__stringMin3Max3PatternAZaZ3(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin3Max3PatternAZaZ3 to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.__stringMin3Max3PatternAZaZ3(str)
	asserts.Assert__stringMin3Max3PatternAZaZ3(str)
	return str
end

function asserts.AssertNoiseReducerFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected NoiseReducerFilter to be of type 'string'")
end

-- Use Noise reducer filter (NoiseReducerFilter) to select one of the following spatial image filtering functions. To use this setting, you must also enable Noise reducer (NoiseReducer). * Bilateral is an edge preserving noise reduction filter. * Mean (softest), Gaussian, Lanczos, and Sharpen (sharpest) are convolution filters. * Conserve is a min/max noise reduction filter. * Spatial is a frequency-domain filter based on JND principles.
function M.NoiseReducerFilter(str)
	asserts.AssertNoiseReducerFilter(str)
	return str
end

function asserts.AssertCmafKeyProviderType(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafKeyProviderType to be of type 'string'")
end

-- Indicates which type of key provider is used for encryption.
function M.CmafKeyProviderType(str)
	asserts.AssertCmafKeyProviderType(str)
	return str
end

function asserts.AssertH265CodecProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected H265CodecProfile to be of type 'string'")
end

-- Represents the Profile and Tier, per the HEVC (H.265) specification. Selections are grouped as [Profile] / [Tier], so "Main/High" represents Main Profile with High Tier. 4:2:2 profiles are only available with the HEVC 4:2:2 License.
function M.H265CodecProfile(str)
	asserts.AssertH265CodecProfile(str)
	return str
end

function asserts.AssertEac3StereoDownmix(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3StereoDownmix to be of type 'string'")
end

-- Stereo downmix preference. Only used for 3/2 coding mode.
function M.Eac3StereoDownmix(str)
	asserts.AssertEac3StereoDownmix(str)
	return str
end

function asserts.AssertDeinterlacerMode(str)
	assert(str)
	assert(type(str) == "string", "Expected DeinterlacerMode to be of type 'string'")
end

-- Use Deinterlacer (DeinterlaceMode) to choose how the service will do deinterlacing. Default is Deinterlace. - Deinterlace converts interlaced to progressive. - Inverse telecine converts Hard Telecine 29.97i to progressive 23.976p. - Adaptive auto-detects and converts to progressive.
function M.DeinterlacerMode(str)
	asserts.AssertDeinterlacerMode(str)
	return str
end

function asserts.AssertCaptionDestinationType(str)
	assert(str)
	assert(type(str) == "string", "Expected CaptionDestinationType to be of type 'string'")
end

-- Type of Caption output, including Burn-In, Embedded, SCC, SRT, TTML, WebVTT, DVB-Sub, Teletext.
function M.CaptionDestinationType(str)
	asserts.AssertCaptionDestinationType(str)
	return str
end

function asserts.Assert__stringPattern01D20305D205D(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPattern01D20305D205D to be of type 'string'")
end

--  
function M.__stringPattern01D20305D205D(str)
	asserts.Assert__stringPattern01D20305D205D(str)
	return str
end

function asserts.AssertEac3AttenuationControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3AttenuationControl to be of type 'string'")
end

-- If set to ATTENUATE_3_DB, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
function M.Eac3AttenuationControl(str)
	asserts.AssertEac3AttenuationControl(str)
	return str
end

function asserts.AssertBurninSubtitleFontColor(str)
	assert(str)
	assert(type(str) == "string", "Expected BurninSubtitleFontColor to be of type 'string'")
end

-- Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
function M.BurninSubtitleFontColor(str)
	asserts.AssertBurninSubtitleFontColor(str)
	return str
end

function asserts.AssertEac3PassthroughControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3PassthroughControl to be of type 'string'")
end

-- When set to WHEN_POSSIBLE, input DD+ audio will be passed through if it is present on the input. this detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
function M.Eac3PassthroughControl(str)
	asserts.AssertEac3PassthroughControl(str)
	return str
end

function asserts.AssertAc3CodingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3CodingMode to be of type 'string'")
end

-- Dolby Digital coding mode. Determines number of channels.
function M.Ac3CodingMode(str)
	asserts.AssertAc3CodingMode(str)
	return str
end

function asserts.AssertHlsCodecSpecification(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsCodecSpecification to be of type 'string'")
end

-- Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
function M.HlsCodecSpecification(str)
	asserts.AssertHlsCodecSpecification(str)
	return str
end

function asserts.AssertAfdSignaling(str)
	assert(str)
	assert(type(str) == "string", "Expected AfdSignaling to be of type 'string'")
end

-- This setting only applies to H.264 and MPEG2 outputs. Use Insert AFD signaling (AfdSignaling) to specify whether the service includes AFD values in the output video data and what those values are. * Choose None to remove all AFD values from this output. * Choose Fixed to ignore input AFD values and instead encode the value specified in the job. * Choose Auto to calculate output AFD values based on the input AFD scaler data.
function M.AfdSignaling(str)
	asserts.AssertAfdSignaling(str)
	return str
end

function asserts.AssertF4vMoovPlacement(str)
	assert(str)
	assert(type(str) == "string", "Expected F4vMoovPlacement to be of type 'string'")
end

-- If set to PROGRESSIVE_DOWNLOAD, the MOOV atom is relocated to the beginning of the archive as required for progressive downloading. Otherwise it is placed normally at the end.
function M.F4vMoovPlacement(str)
	asserts.AssertF4vMoovPlacement(str)
	return str
end

function asserts.AssertHlsManifestDurationFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsManifestDurationFormat to be of type 'string'")
end

-- Indicates whether the output manifest should use floating point values for segment duration.
function M.HlsManifestDurationFormat(str)
	asserts.AssertHlsManifestDurationFormat(str)
	return str
end

function asserts.AssertH264RateControlMode(str)
	assert(str)
	assert(type(str) == "string", "Expected H264RateControlMode to be of type 'string'")
end

-- Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
function M.H264RateControlMode(str)
	asserts.AssertH264RateControlMode(str)
	return str
end

function asserts.Assert__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM to be of type 'string'")
end

--  
function M.__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM(str)
	asserts.Assert__stringPatternS3MM2VVMMPPEEGGAAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8LLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MM(str)
	return str
end

function asserts.AssertH265FramerateConversionAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected H265FramerateConversionAlgorithm to be of type 'string'")
end

-- When set to INTERPOLATE, produces smoother motion during framerate conversion.
function M.H265FramerateConversionAlgorithm(str)
	asserts.AssertH265FramerateConversionAlgorithm(str)
	return str
end

function asserts.AssertAacRateControlMode(str)
	assert(str)
	assert(type(str) == "string", "Expected AacRateControlMode to be of type 'string'")
end

-- Rate Control Mode.
function M.AacRateControlMode(str)
	asserts.AssertAacRateControlMode(str)
	return str
end

function asserts.AssertCaptionSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected CaptionSourceType to be of type 'string'")
end

-- Use Source (SourceType) to identify the format of your input captions.  The service cannot auto-detect caption format.
function M.CaptionSourceType(str)
	asserts.AssertCaptionSourceType(str)
	return str
end

function asserts.Assert__stringPatternAZaZ0902(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternAZaZ0902 to be of type 'string'")
end

--  
function M.__stringPatternAZaZ0902(str)
	asserts.Assert__stringPatternAZaZ0902(str)
	return str
end

function asserts.AssertMovPaddingControl(str)
	assert(str)
	assert(type(str) == "string", "Expected MovPaddingControl to be of type 'string'")
end

-- If set to OMNEON, inserts Omneon-compatible padding
function M.MovPaddingControl(str)
	asserts.AssertMovPaddingControl(str)
	return str
end

function asserts.AssertColorSpaceConversion(str)
	assert(str)
	assert(type(str) == "string", "Expected ColorSpaceConversion to be of type 'string'")
end

-- Determines if colorspace conversion will be performed. If set to _None_, no conversion will be performed. If _Force 601_ or _Force 709_ are selected, conversion will be performed for inputs with differing colorspaces. An input's colorspace can be specified explicitly in the "Video Selector":#inputs-video_selector if necessary.
function M.ColorSpaceConversion(str)
	asserts.AssertColorSpaceConversion(str)
	return str
end

function asserts.AssertEac3LfeFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3LfeFilter to be of type 'string'")
end

-- Applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with 3_2_LFE coding mode.
function M.Eac3LfeFilter(str)
	asserts.AssertEac3LfeFilter(str)
	return str
end

function asserts.AssertH265AlternateTransferFunctionSei(str)
	assert(str)
	assert(type(str) == "string", "Expected H265AlternateTransferFunctionSei to be of type 'string'")
end

-- Enables Alternate Transfer Function SEI message for outputs using Hybrid Log Gamma (HLG) Electro-Optical Transfer Function (EOTF).
function M.H265AlternateTransferFunctionSei(str)
	asserts.AssertH265AlternateTransferFunctionSei(str)
	return str
end

function asserts.AssertHlsTimedMetadataId3Frame(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsTimedMetadataId3Frame to be of type 'string'")
end

-- Indicates ID3 frame that has the timecode.
function M.HlsTimedMetadataId3Frame(str)
	asserts.AssertHlsTimedMetadataId3Frame(str)
	return str
end

function asserts.AssertMp4FreeSpaceBox(str)
	assert(str)
	assert(type(str) == "string", "Expected Mp4FreeSpaceBox to be of type 'string'")
end

-- Inserts a free-space box immediately after the moov box.
function M.Mp4FreeSpaceBox(str)
	asserts.AssertMp4FreeSpaceBox(str)
	return str
end

function asserts.AssertHlsEncryptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsEncryptionType to be of type 'string'")
end

-- Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.
function M.HlsEncryptionType(str)
	asserts.AssertHlsEncryptionType(str)
	return str
end

function asserts.AssertInputFilterEnable(str)
	assert(str)
	assert(type(str) == "string", "Expected InputFilterEnable to be of type 'string'")
end

-- Use Filter enable (InputFilterEnable) to specify how the transcoding service applies the denoise and deblock filters. You must also enable the filters separately, with Denoise (InputDenoiseFilter) and Deblock (InputDeblockFilter). * Auto - The transcoding service determines whether to apply filtering, depending on input type and quality. * Disable - The input is not filtered. This is true even if you use the API to enable them in (InputDeblockFilter) and (InputDeblockFilter). * Force - The in put is filtered regardless of input type.
function M.InputFilterEnable(str)
	asserts.AssertInputFilterEnable(str)
	return str
end

function asserts.AssertCmafSegmentControl(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafSegmentControl to be of type 'string'")
end

-- When set to SINGLE_FILE, a single output file is generated, which is internally segmented using the Fragment Length and Segment Length. When set to SEGMENTED_FILES, separate segment files will be created.
function M.CmafSegmentControl(str)
	asserts.AssertCmafSegmentControl(str)
	return str
end

function asserts.AssertH265SampleAdaptiveOffsetFilterMode(str)
	assert(str)
	assert(type(str) == "string", "Expected H265SampleAdaptiveOffsetFilterMode to be of type 'string'")
end

-- Specify Sample Adaptive Offset (SAO) filter strength.  Adaptive mode dynamically selects best strength based on content
function M.H265SampleAdaptiveOffsetFilterMode(str)
	asserts.AssertH265SampleAdaptiveOffsetFilterMode(str)
	return str
end

function asserts.AssertColorSpace(str)
	assert(str)
	assert(type(str) == "string", "Expected ColorSpace to be of type 'string'")
end

-- If your input video has accurate color space metadata, or if you don't know about color space, leave this set to the default value FOLLOW. The service will automatically detect your input color space. If your input video has metadata indicating the wrong color space, or if your input video is missing color space metadata that should be there, specify the accurate color space here. If you choose HDR10, you can also correct inaccurate color space coefficients, using the HDR master display information controls. You must also set Color space usage (ColorSpaceUsage) to FORCE for the service to use these values.
function M.ColorSpace(str)
	asserts.AssertColorSpace(str)
	return str
end

function asserts.AssertEac3BitstreamMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3BitstreamMode to be of type 'string'")
end

-- Specifies the "Bitstream Mode" (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values.
function M.Eac3BitstreamMode(str)
	asserts.AssertEac3BitstreamMode(str)
	return str
end

function asserts.AssertOutputGroupType(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputGroupType to be of type 'string'")
end

-- Type of output group (File group, Apple HLS, DASH ISO, Microsoft Smooth Streaming, CMAF)
function M.OutputGroupType(str)
	asserts.AssertOutputGroupType(str)
	return str
end

function asserts.AssertMpeg2Syntax(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2Syntax to be of type 'string'")
end

-- Produces a Type D-10 compatible bitstream (SMPTE 356M-2001).
function M.Mpeg2Syntax(str)
	asserts.AssertMpeg2Syntax(str)
	return str
end

function asserts.AssertM3u8NielsenId3(str)
	assert(str)
	assert(type(str) == "string", "Expected M3u8NielsenId3 to be of type 'string'")
end

-- If INSERT, Nielsen inaudible tones for media tracking will be detected in the input audio and an equivalent ID3 tag will be inserted in the output.
function M.M3u8NielsenId3(str)
	asserts.AssertM3u8NielsenId3(str)
	return str
end

function asserts.AssertDvbSubtitleFontColor(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubtitleFontColor to be of type 'string'")
end

-- Specifies the color of the burned-in captions. This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
function M.DvbSubtitleFontColor(str)
	asserts.AssertDvbSubtitleFontColor(str)
	return str
end

function asserts.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
end

-- A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or ERROR.
function M.JobStatus(str)
	asserts.AssertJobStatus(str)
	return str
end

function asserts.AssertMpeg2AdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2AdaptiveQuantization to be of type 'string'")
end

-- Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
function M.Mpeg2AdaptiveQuantization(str)
	asserts.AssertMpeg2AdaptiveQuantization(str)
	return str
end

function asserts.AssertH264FramerateControl(str)
	assert(str)
	assert(type(str) == "string", "Expected H264FramerateControl to be of type 'string'")
end

-- If you are using the console, use the Framerate setting to specify the framerate for this output. If you want to keep the same framerate as the input video, choose Follow source. If you want to do framerate conversion, choose a framerate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your framerate as a fraction. If you are creating your transcoding job specification as a JSON file without the console, use FramerateControl to specify which value the service uses for the framerate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Choose SPECIFIED if you want the service to use the framerate you specify in the settings FramerateNumerator and FramerateDenominator.
function M.H264FramerateControl(str)
	asserts.AssertH264FramerateControl(str)
	return str
end

function asserts.AssertMpeg2FramerateConversionAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2FramerateConversionAlgorithm to be of type 'string'")
end

-- When set to INTERPOLATE, produces smoother motion during framerate conversion.
function M.Mpeg2FramerateConversionAlgorithm(str)
	asserts.AssertMpeg2FramerateConversionAlgorithm(str)
	return str
end

function asserts.AssertWavFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected WavFormat to be of type 'string'")
end

-- The service defaults to using RIFF for WAV outputs. If your output audio is likely to exceed 4 GB in file size, or if you otherwise need the extended support of the RF64 format, set your output WAV file format to RF64.
function M.WavFormat(str)
	asserts.AssertWavFormat(str)
	return str
end

function asserts.AssertCmafStreamInfResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafStreamInfResolution to be of type 'string'")
end

-- Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
function M.CmafStreamInfResolution(str)
	asserts.AssertCmafStreamInfResolution(str)
	return str
end

function asserts.AssertCmafEncryptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafEncryptionType to be of type 'string'")
end

-- Encrypts the segments with the given encryption scheme. Leave blank to disable. Selecting 'Disabled' in the web interface also disables encryption.
function M.CmafEncryptionType(str)
	asserts.AssertCmafEncryptionType(str)
	return str
end

function asserts.Assert__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12 to be of type 'string'")
end

--  
function M.__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12(str)
	asserts.Assert__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12(str)
	return str
end

function asserts.Assert__stringPatternHttps(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternHttps to be of type 'string'")
end

--  
function M.__stringPatternHttps(str)
	asserts.Assert__stringPatternHttps(str)
	return str
end

function asserts.AssertMsSmoothAudioDeduplication(str)
	assert(str)
	assert(type(str) == "string", "Expected MsSmoothAudioDeduplication to be of type 'string'")
end

-- COMBINE_DUPLICATE_STREAMS combines identical audio encoding settings across a Microsoft Smooth output group into a single audio stream.
function M.MsSmoothAudioDeduplication(str)
	asserts.AssertMsSmoothAudioDeduplication(str)
	return str
end

function asserts.AssertEac3SurroundExMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3SurroundExMode to be of type 'string'")
end

-- When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
function M.Eac3SurroundExMode(str)
	asserts.AssertEac3SurroundExMode(str)
	return str
end

function asserts.AssertEmbeddedConvert608To708(str)
	assert(str)
	assert(type(str) == "string", "Expected EmbeddedConvert608To708 to be of type 'string'")
end

-- When set to UPCONVERT, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
function M.EmbeddedConvert608To708(str)
	asserts.AssertEmbeddedConvert608To708(str)
	return str
end

function asserts.AssertAc3DynamicRangeCompressionProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3DynamicRangeCompressionProfile to be of type 'string'")
end

-- If set to FILM_STANDARD, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
function M.Ac3DynamicRangeCompressionProfile(str)
	asserts.AssertAc3DynamicRangeCompressionProfile(str)
	return str
end

function asserts.AssertH265TemporalIds(str)
	assert(str)
	assert(type(str) == "string", "Expected H265TemporalIds to be of type 'string'")
end

-- Enables temporal layer identifiers in the encoded bitstream. Up to 3 layers are supported depending on GOP structure: I- and P-frames form one layer, reference B-frames can form a second layer and non-reference b-frames can form a third layer. Decoders can optionally decode only the lower temporal layers to generate a lower frame rate output. For example, given a bitstream with temporal IDs and with b-frames = 1 (i.e. IbPbPb display order), a decoder could decode all the frames for full frame rate output or only the I and P frames (lowest temporal layer) for a half frame rate output.
function M.H265TemporalIds(str)
	asserts.AssertH265TemporalIds(str)
	return str
end

function asserts.AssertScalingBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalingBehavior to be of type 'string'")
end

-- Applies only if your input aspect ratio is different from your output aspect ratio. Enable Stretch to output (StretchToOutput) to have the service stretch your video image to fit. Leave this setting disabled to allow the service to letterbox your video instead. This setting overrides any positioning value you specify elsewhere in the job.
function M.ScalingBehavior(str)
	asserts.AssertScalingBehavior(str)
	return str
end

function asserts.AssertH264FlickerAdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H264FlickerAdaptiveQuantization to be of type 'string'")
end

-- Adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
function M.H264FlickerAdaptiveQuantization(str)
	asserts.AssertH264FlickerAdaptiveQuantization(str)
	return str
end

function asserts.AssertAudioTypeControl(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioTypeControl to be of type 'string'")
end

-- When set to FOLLOW_INPUT, if the input contains an ISO 639 audio_type, then that value is passed through to the output. If the input contains no ISO 639 audio_type, the value in Audio Type is included in the output. Otherwise the value in Audio Type is included in the output. Note that this field and audioType are both ignored if audioDescriptionBroadcasterMix is set to BROADCASTER_MIXED_AD.
function M.AudioTypeControl(str)
	asserts.AssertAudioTypeControl(str)
	return str
end

function asserts.AssertEac3MetadataControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3MetadataControl to be of type 'string'")
end

-- When set to FOLLOW_INPUT, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
function M.Eac3MetadataControl(str)
	asserts.AssertEac3MetadataControl(str)
	return str
end

function asserts.AssertMpeg2SceneChangeDetect(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2SceneChangeDetect to be of type 'string'")
end

-- Scene change detection (inserts I-frames on scene changes).
function M.Mpeg2SceneChangeDetect(str)
	asserts.AssertMpeg2SceneChangeDetect(str)
	return str
end

function asserts.AssertCmafInitializationVectorInManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected CmafInitializationVectorInManifest to be of type 'string'")
end

-- The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.
function M.CmafInitializationVectorInManifest(str)
	asserts.AssertCmafInitializationVectorInManifest(str)
	return str
end

function asserts.AssertM2tsRateMode(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsRateMode to be of type 'string'")
end

-- When set to CBR, inserts null packets into transport stream to fill specified bitrate. When set to VBR, the bitrate setting acts as the maximum bitrate, but the output will not be padded up to that bitrate.
function M.M2tsRateMode(str)
	asserts.AssertM2tsRateMode(str)
	return str
end

function asserts.AssertMovMpeg2FourCCControl(str)
	assert(str)
	assert(type(str) == "string", "Expected MovMpeg2FourCCControl to be of type 'string'")
end

-- When set to XDCAM, writes MPEG2 video streams into the QuickTime file using XDCAM fourcc codes. This increases compatibility with Apple editors and players, but may decrease compatibility with other players. Only applicable when the video codec is MPEG2.
function M.MovMpeg2FourCCControl(str)
	asserts.AssertMovMpeg2FourCCControl(str)
	return str
end

function asserts.Assert__stringMin3Max3Pattern1809aFAF09aEAE(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin3Max3Pattern1809aFAF09aEAE to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.__stringMin3Max3Pattern1809aFAF09aEAE(str)
	asserts.Assert__stringMin3Max3Pattern1809aFAF09aEAE(str)
	return str
end

function asserts.AssertM2tsScte35Source(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsScte35Source to be of type 'string'")
end

-- Enables SCTE-35 passthrough (scte35Source) to pass any SCTE-35 signals from input to output.
function M.M2tsScte35Source(str)
	asserts.AssertM2tsScte35Source(str)
	return str
end

function asserts.AssertBillingTagsSource(str)
	assert(str)
	assert(type(str) == "string", "Expected BillingTagsSource to be of type 'string'")
end

-- Optional. Choose a tag type that AWS Billing and Cost Management will use to sort your AWS Elemental MediaConvert costs on any billing report that you set up. Any transcoding outputs that don't have an associated tag will appear in your billing report unsorted. If you don't choose a valid value for this field, your job outputs will appear on the billing report unsorted.
function M.BillingTagsSource(str)
	asserts.AssertBillingTagsSource(str)
	return str
end

function asserts.AssertEac3LfeControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3LfeControl to be of type 'string'")
end

-- When encoding 3/2 audio, controls whether the LFE channel is enabled
function M.Eac3LfeControl(str)
	asserts.AssertEac3LfeControl(str)
	return str
end

function asserts.AssertHlsInitializationVectorInManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsInitializationVectorInManifest to be of type 'string'")
end

-- The Initialization Vector is a 128-bit number used in conjunction with the key for encrypting blocks. If set to INCLUDE, Initialization Vector is listed in the manifest. Otherwise Initialization Vector is not in the manifest.
function M.HlsInitializationVectorInManifest(str)
	asserts.AssertHlsInitializationVectorInManifest(str)
	return str
end

function asserts.AssertH265QualityTuningLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected H265QualityTuningLevel to be of type 'string'")
end

-- Use Quality tuning level (H265QualityTuningLevel) to specifiy whether to use fast single-pass, high-quality singlepass, or high-quality multipass video encoding.
function M.H265QualityTuningLevel(str)
	asserts.AssertH265QualityTuningLevel(str)
	return str
end

function asserts.AssertAudioNormalizationPeakCalculation(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioNormalizationPeakCalculation to be of type 'string'")
end

-- If set to TRUE_PEAK, calculate and log the TruePeak for each output's audio track loudness.
function M.AudioNormalizationPeakCalculation(str)
	asserts.AssertAudioNormalizationPeakCalculation(str)
	return str
end

function asserts.Assert__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI to be of type 'string'")
	assert(#str >= 14, "Expected string to be min 14 characters")
end

--  
function M.__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI(str)
	asserts.Assert__stringMin14PatternS3SccSCCTtmlTTMLDfxpDFXPStlSTLSrtSRTSmiSMI(str)
	return str
end

function asserts.AssertAc3BitstreamMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3BitstreamMode to be of type 'string'")
end

-- Specifies the "Bitstream Mode" (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
function M.Ac3BitstreamMode(str)
	asserts.AssertAc3BitstreamMode(str)
	return str
end

function asserts.AssertH265Tiles(str)
	assert(str)
	assert(type(str) == "string", "Expected H265Tiles to be of type 'string'")
end

-- Enable use of tiles, allowing horizontal as well as vertical subdivision of the encoded pictures.
function M.H265Tiles(str)
	asserts.AssertH265Tiles(str)
	return str
end

function asserts.AssertMpeg2RateControlMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2RateControlMode to be of type 'string'")
end

-- Use Rate control mode (Mpeg2RateControlMode) to specifiy whether the bitrate is variable (vbr) or constant (cbr).
function M.Mpeg2RateControlMode(str)
	asserts.AssertMpeg2RateControlMode(str)
	return str
end

function asserts.AssertMpeg2ParControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2ParControl to be of type 'string'")
end

-- Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
function M.Mpeg2ParControl(str)
	asserts.AssertMpeg2ParControl(str)
	return str
end

function asserts.AssertH264CodecLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected H264CodecLevel to be of type 'string'")
end

-- H.264 Level.
function M.H264CodecLevel(str)
	asserts.AssertH264CodecLevel(str)
	return str
end

function asserts.AssertAudioDefaultSelection(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioDefaultSelection to be of type 'string'")
end

-- Enable this setting on one audio selector to set it as the default for the job. The service uses this default for outputs where it can't find the specified input audio. If you don't set a default, those outputs have no audio.
function M.AudioDefaultSelection(str)
	asserts.AssertAudioDefaultSelection(str)
	return str
end

function asserts.AssertTtmlStylePassthrough(str)
	assert(str)
	assert(type(str) == "string", "Expected TtmlStylePassthrough to be of type 'string'")
end

-- Pass through style and position information from a TTML-like input source (TTML, SMPTE-TT, CFF-TT) to the CFF-TT output or TTML output.
function M.TtmlStylePassthrough(str)
	asserts.AssertTtmlStylePassthrough(str)
	return str
end

function asserts.AssertMp4CslgAtom(str)
	assert(str)
	assert(type(str) == "string", "Expected Mp4CslgAtom to be of type 'string'")
end

-- When enabled, file composition times will start at zero, composition times in the 'ctts' (composition time to sample) box for B-frames will be negative, and a 'cslg' (composition shift least greatest) box will be included per 14496-1 amendment 1. This improves compatibility with Apple players and tools.
function M.Mp4CslgAtom(str)
	asserts.AssertMp4CslgAtom(str)
	return str
end

function asserts.AssertH265SlowPal(str)
	assert(str)
	assert(type(str) == "string", "Expected H265SlowPal to be of type 'string'")
end

-- Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
function M.H265SlowPal(str)
	asserts.AssertH265SlowPal(str)
	return str
end

function asserts.AssertH265RateControlMode(str)
	assert(str)
	assert(type(str) == "string", "Expected H265RateControlMode to be of type 'string'")
end

-- Use this setting to specify whether this output has a variable bitrate (VBR), constant bitrate (CBR) or quality-defined variable bitrate (QVBR).
function M.H265RateControlMode(str)
	asserts.AssertH265RateControlMode(str)
	return str
end

function asserts.AssertHlsManifestCompression(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsManifestCompression to be of type 'string'")
end

-- When set to GZIP, compresses HLS playlist.
function M.HlsManifestCompression(str)
	asserts.AssertHlsManifestCompression(str)
	return str
end

function asserts.AssertAacCodingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected AacCodingMode to be of type 'string'")
end

-- Mono (Audio Description), Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. "1.0 - Audio Description (Receiver Mix)" setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
function M.AacCodingMode(str)
	asserts.AssertAacCodingMode(str)
	return str
end

function asserts.AssertDropFrameTimecode(str)
	assert(str)
	assert(type(str) == "string", "Expected DropFrameTimecode to be of type 'string'")
end

-- Applies only to 29.97 fps outputs. When this feature is enabled, the service will use drop-frame timecode on outputs. If it is not possible to use drop-frame timecode, the system will fall back to non-drop-frame. This setting is enabled by default when Timecode insertion (TimecodeInsertion) is enabled.
function M.DropFrameTimecode(str)
	asserts.AssertDropFrameTimecode(str)
	return str
end

function asserts.AssertAacVbrQuality(str)
	assert(str)
	assert(type(str) == "string", "Expected AacVbrQuality to be of type 'string'")
end

-- VBR Quality Level - Only used if rate_control_mode is VBR.
function M.AacVbrQuality(str)
	asserts.AssertAacVbrQuality(str)
	return str
end

function asserts.Assert__stringPatternIdentityAZaZ26AZaZ09163(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternIdentityAZaZ26AZaZ09163 to be of type 'string'")
end

--  
function M.__stringPatternIdentityAZaZ26AZaZ09163(str)
	asserts.Assert__stringPatternIdentityAZaZ26AZaZ09163(str)
	return str
end

function asserts.AssertH264SceneChangeDetect(str)
	assert(str)
	assert(type(str) == "string", "Expected H264SceneChangeDetect to be of type 'string'")
end

-- Scene change detection (inserts I-frames on scene changes).
function M.H264SceneChangeDetect(str)
	asserts.AssertH264SceneChangeDetect(str)
	return str
end

function asserts.AssertDeinterlacerControl(str)
	assert(str)
	assert(type(str) == "string", "Expected DeinterlacerControl to be of type 'string'")
end

-- - When set to NORMAL (default), the deinterlacer does not convert frames that are tagged  in metadata as progressive. It will only convert those that are tagged as some other type. - When set to FORCE_ALL_FRAMES, the deinterlacer converts every frame to progressive - even those that are already tagged as progressive. Turn Force mode on only if there is  a good chance that the metadata has tagged frames as progressive when they are not  progressive. Do not turn on otherwise; processing frames that are already progressive  into progressive will probably result in lower quality video.
function M.DeinterlacerControl(str)
	asserts.AssertDeinterlacerControl(str)
	return str
end

function asserts.AssertAudioLanguageCodeControl(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioLanguageCodeControl to be of type 'string'")
end

-- Choosing FOLLOW_INPUT will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The language specified for languageCode' will be used when USE_CONFIGURED is selected or when FOLLOW_INPUT is selected but there is no ISO 639 language code specified by the input.
function M.AudioLanguageCodeControl(str)
	asserts.AssertAudioLanguageCodeControl(str)
	return str
end

function asserts.AssertH264ParControl(str)
	assert(str)
	assert(type(str) == "string", "Expected H264ParControl to be of type 'string'")
end

-- Using the API, enable ParFollowSource if you want the service to use the pixel aspect ratio from the input. Using the console, do this by choosing Follow source for Pixel aspect ratio.
function M.H264ParControl(str)
	asserts.AssertH264ParControl(str)
	return str
end

function asserts.AssertH265AdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H265AdaptiveQuantization to be of type 'string'")
end

-- Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
function M.H265AdaptiveQuantization(str)
	asserts.AssertH265AdaptiveQuantization(str)
	return str
end

function asserts.Assert__stringPatternWS(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternWS to be of type 'string'")
end

--  
function M.__stringPatternWS(str)
	asserts.Assert__stringPatternWS(str)
	return str
end

function asserts.AssertH265Telecine(str)
	assert(str)
	assert(type(str) == "string", "Expected H265Telecine to be of type 'string'")
end

-- This field applies only if the Streams > Advanced > Framerate (framerate) field  is set to 29.970. This field works with the Streams > Advanced > Preprocessors > Deinterlacer  field (deinterlace_mode) and the Streams > Advanced > Interlaced Mode field (interlace_mode)  to identify the scan type for the output: Progressive, Interlaced, Hard Telecine or Soft Telecine. - Hard: produces 29.97i output from 23.976 input. - Soft: produces 23.976; the player converts this output to 29.97i.
function M.H265Telecine(str)
	asserts.AssertH265Telecine(str)
	return str
end

function asserts.AssertM2tsSegmentationStyle(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsSegmentationStyle to be of type 'string'")
end

-- The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted. When a segmentation style of "reset_cadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of of $segmentation_time seconds. When a segmentation style of "maintain_cadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentation_time seconds. Note that EBP lookahead is a slight exception to this rule.
function M.M2tsSegmentationStyle(str)
	asserts.AssertM2tsSegmentationStyle(str)
	return str
end

function asserts.AssertH264UnregisteredSeiTimecode(str)
	assert(str)
	assert(type(str) == "string", "Expected H264UnregisteredSeiTimecode to be of type 'string'")
end

-- Inserts timecode for each frame as 4 bytes of an unregistered SEI message.
function M.H264UnregisteredSeiTimecode(str)
	asserts.AssertH264UnregisteredSeiTimecode(str)
	return str
end

function asserts.AssertH265FramerateControl(str)
	assert(str)
	assert(type(str) == "string", "Expected H265FramerateControl to be of type 'string'")
end

-- If you are using the console, use the Framerate setting to specify the framerate for this output. If you want to keep the same framerate as the input video, choose Follow source. If you want to do framerate conversion, choose a framerate from the dropdown list or choose Custom. The framerates shown in the dropdown list are decimal approximations of fractions. If you choose Custom, specify your framerate as a fraction. If you are creating your transcoding job sepecification as a JSON file without the console, use FramerateControl to specify which value the service uses for the framerate for this output. Choose INITIALIZE_FROM_SOURCE if you want the service to use the framerate from the input. Choose SPECIFIED if you want the service to use the framerate you specify in the settings FramerateNumerator and FramerateDenominator.
function M.H265FramerateControl(str)
	asserts.AssertH265FramerateControl(str)
	return str
end

function asserts.AssertProresSlowPal(str)
	assert(str)
	assert(type(str) == "string", "Expected ProresSlowPal to be of type 'string'")
end

-- Enables Slow PAL rate conversion. 23.976fps and 24fps input is relabeled as 25fps, and audio is sped up correspondingly.
function M.ProresSlowPal(str)
	asserts.AssertProresSlowPal(str)
	return str
end

function asserts.AssertVideoCodec(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoCodec to be of type 'string'")
end

-- Type of video codec
function M.VideoCodec(str)
	asserts.AssertVideoCodec(str)
	return str
end

function asserts.AssertEac3DynamicRangeCompressionLine(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3DynamicRangeCompressionLine to be of type 'string'")
end

-- Enables Dynamic Range Compression that restricts the absolute peak level for a signal.
function M.Eac3DynamicRangeCompressionLine(str)
	asserts.AssertEac3DynamicRangeCompressionLine(str)
	return str
end

function asserts.AssertMovClapAtom(str)
	assert(str)
	assert(type(str) == "string", "Expected MovClapAtom to be of type 'string'")
end

-- When enabled, include 'clap' atom if appropriate for the video output settings.
function M.MovClapAtom(str)
	asserts.AssertMovClapAtom(str)
	return str
end

function asserts.AssertColorMetadata(str)
	assert(str)
	assert(type(str) == "string", "Expected ColorMetadata to be of type 'string'")
end

-- Enable Insert color metadata (ColorMetadata) to include color metadata in this output. This setting is enabled by default.
function M.ColorMetadata(str)
	asserts.AssertColorMetadata(str)
	return str
end

function asserts.AssertAacSpecification(str)
	assert(str)
	assert(type(str) == "string", "Expected AacSpecification to be of type 'string'")
end

-- Use MPEG-2 AAC instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
function M.AacSpecification(str)
	asserts.AssertAacSpecification(str)
	return str
end

function asserts.AssertM3u8PcrControl(str)
	assert(str)
	assert(type(str) == "string", "Expected M3u8PcrControl to be of type 'string'")
end

-- When set to PCR_EVERY_PES_PACKET a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
function M.M3u8PcrControl(str)
	asserts.AssertM3u8PcrControl(str)
	return str
end

function asserts.AssertHlsStreamInfResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsStreamInfResolution to be of type 'string'")
end

-- Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
function M.HlsStreamInfResolution(str)
	asserts.AssertHlsStreamInfResolution(str)
	return str
end

function asserts.AssertH265CodecLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected H265CodecLevel to be of type 'string'")
end

-- H.265 Level.
function M.H265CodecLevel(str)
	asserts.AssertH265CodecLevel(str)
	return str
end

function asserts.Assert__stringMin1(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin1 to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.__stringMin1(str)
	asserts.Assert__stringMin1(str)
	return str
end

function asserts.AssertDescribeEndpointsMode(str)
	assert(str)
	assert(type(str) == "string", "Expected DescribeEndpointsMode to be of type 'string'")
end

-- Optional field, defaults to DEFAULT. Specify DEFAULT for this operation to return your endpoints if any exist, or to create an endpoint for you and return it if one doesn't already exist. Specify GET_ONLY to return your endpoints if any exist, or an empty list if none exist.
function M.DescribeEndpointsMode(str)
	asserts.AssertDescribeEndpointsMode(str)
	return str
end

function asserts.AssertQueueListBy(str)
	assert(str)
	assert(type(str) == "string", "Expected QueueListBy to be of type 'string'")
end

-- Optional. When you request a list of queues, you can choose to list them alphabetically by NAME or chronologically by CREATION_DATE. If you don't specify, the service will list them by creation date.
function M.QueueListBy(str)
	asserts.AssertQueueListBy(str)
	return str
end

function asserts.AssertH264SpatialAdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H264SpatialAdaptiveQuantization to be of type 'string'")
end

-- Adjust quantization within each frame based on spatial variation of content complexity.
function M.H264SpatialAdaptiveQuantization(str)
	asserts.AssertH264SpatialAdaptiveQuantization(str)
	return str
end

function asserts.AssertH264InterlaceMode(str)
	assert(str)
	assert(type(str) == "string", "Expected H264InterlaceMode to be of type 'string'")
end

-- Use Interlace mode (InterlaceMode) to choose the scan line type for the output. * Top Field First (TOP_FIELD) and Bottom Field First (BOTTOM_FIELD) produce interlaced output with the entire output having the same field polarity (top or bottom first). * Follow, Default Top (FOLLOW_TOP_FIELD) and Follow, Default Bottom (FOLLOW_BOTTOM_FIELD) use the same field polarity as the source. Therefore, behavior depends on the input scan type, as follows.
--  - If the source is interlaced, the output will be interlaced with the same polarity as the source (it will follow the source). The output could therefore be a mix of "top field first" and "bottom field first".
--  - If the source is progressive, the output will be interlaced with "top field first" or "bottom field first" polarity, depending on which of the Follow options you chose.
function M.H264InterlaceMode(str)
	asserts.AssertH264InterlaceMode(str)
	return str
end

function asserts.AssertAntiAlias(str)
	assert(str)
	assert(type(str) == "string", "Expected AntiAlias to be of type 'string'")
end

-- Enable Anti-alias (AntiAlias) to enhance sharp edges in video output when your input resolution is much larger than your output resolution. Default is enabled.
function M.AntiAlias(str)
	asserts.AssertAntiAlias(str)
	return str
end

function asserts.AssertM2tsPcrControl(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsPcrControl to be of type 'string'")
end

-- When set to PCR_EVERY_PES_PACKET, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This is effective only when the PCR PID is the same as the video or audio elementary stream.
function M.M2tsPcrControl(str)
	asserts.AssertM2tsPcrControl(str)
	return str
end

function asserts.AssertH264TemporalAdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H264TemporalAdaptiveQuantization to be of type 'string'")
end

-- Adjust quantization within each frame based on temporal variation of content complexity.
function M.H264TemporalAdaptiveQuantization(str)
	asserts.AssertH264TemporalAdaptiveQuantization(str)
	return str
end

function asserts.AssertTimecodeSource(str)
	assert(str)
	assert(type(str) == "string", "Expected TimecodeSource to be of type 'string'")
end

-- Use Source (TimecodeSource) to set how timecodes are handled within this job. To make sure that your video, audio, captions, and markers are synchronized and that time-based features, such as image inserter, work correctly, choose the Timecode source option that matches your assets. All timecodes are in a 24-hour format with frame number (HH:MM:SS:FF). * Embedded (EMBEDDED) - Use the timecode that is in the input video. If no embedded timecode is in the source, the service will use Start at 0 (ZEROBASED) instead. * Start at 0 (ZEROBASED) - Set the timecode of the initial frame to 00:00:00:00. * Specified Start (SPECIFIEDSTART) - Set the timecode of the initial frame to a value other than zero. You use Start timecode (Start) to provide this value.
function M.TimecodeSource(str)
	asserts.AssertTimecodeSource(str)
	return str
end

function asserts.AssertMpeg2IntraDcPrecision(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2IntraDcPrecision to be of type 'string'")
end

-- Use Intra DC precision (Mpeg2IntraDcPrecision) to set quantization precision for intra-block DC coefficients. If you choose the value auto, the service will automatically select the precision based on the per-frame compression ratio.
function M.Mpeg2IntraDcPrecision(str)
	asserts.AssertMpeg2IntraDcPrecision(str)
	return str
end

function asserts.AssertHlsIFrameOnlyManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsIFrameOnlyManifest to be of type 'string'")
end

-- When set to INCLUDE, writes I-Frame Only Manifest in addition to the HLS manifest
function M.HlsIFrameOnlyManifest(str)
	asserts.AssertHlsIFrameOnlyManifest(str)
	return str
end

function asserts.Assert__stringMin14PatternS3BmpBMPPngPNG(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin14PatternS3BmpBMPPngPNG to be of type 'string'")
	assert(#str >= 14, "Expected string to be min 14 characters")
end

--  
function M.__stringMin14PatternS3BmpBMPPngPNG(str)
	asserts.Assert__stringMin14PatternS3BmpBMPPngPNG(str)
	return str
end

function asserts.AssertMpeg2GopSizeUnits(str)
	assert(str)
	assert(type(str) == "string", "Expected Mpeg2GopSizeUnits to be of type 'string'")
end

-- Indicates if the GOP Size in MPEG2 is specified in frames or seconds. If seconds the system will convert the GOP Size into a frame count at run time.
function M.Mpeg2GopSizeUnits(str)
	asserts.AssertMpeg2GopSizeUnits(str)
	return str
end

function asserts.Assert__stringPatternS3(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringPatternS3 to be of type 'string'")
end

--  
function M.__stringPatternS3(str)
	asserts.Assert__stringPatternS3(str)
	return str
end

function asserts.AssertAudioCodec(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioCodec to be of type 'string'")
end

-- Type of Audio codec.
function M.AudioCodec(str)
	asserts.AssertAudioCodec(str)
	return str
end

function asserts.AssertEac3SurroundMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3SurroundMode to be of type 'string'")
end

-- When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
function M.Eac3SurroundMode(str)
	asserts.AssertEac3SurroundMode(str)
	return str
end

function asserts.AssertH265GopBReference(str)
	assert(str)
	assert(type(str) == "string", "Expected H265GopBReference to be of type 'string'")
end

-- If enable, use reference B frames for GOP structures that have B frames > 1.
function M.H265GopBReference(str)
	asserts.AssertH265GopBReference(str)
	return str
end

function asserts.AssertAudioNormalizationAlgorithmControl(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioNormalizationAlgorithmControl to be of type 'string'")
end

-- When enabled the output audio is corrected using the chosen algorithm. If disabled, the audio will be measured but not adjusted.
function M.AudioNormalizationAlgorithmControl(str)
	asserts.AssertAudioNormalizationAlgorithmControl(str)
	return str
end

function asserts.Assert__doubleMin0(double)
	assert(double)
	assert(type(double) == "number", "Expected __doubleMin0 to be of type 'number'")
end

function M.__doubleMin0(double)
	asserts.Assert__doubleMin0(double)
	return double
end

function asserts.Assert__doubleMinNegative60MaxNegative1(double)
	assert(double)
	assert(type(double) == "number", "Expected __doubleMinNegative60MaxNegative1 to be of type 'number'")
end

function M.__doubleMinNegative60MaxNegative1(double)
	asserts.Assert__doubleMinNegative60MaxNegative1(double)
	return double
end

function asserts.Assert__doubleMin0Max2147483647(double)
	assert(double)
	assert(type(double) == "number", "Expected __doubleMin0Max2147483647 to be of type 'number'")
end

function M.__doubleMin0Max2147483647(double)
	asserts.Assert__doubleMin0Max2147483647(double)
	return double
end

function asserts.Assert__doubleMinNegative59Max0(double)
	assert(double)
	assert(type(double) == "number", "Expected __doubleMinNegative59Max0 to be of type 'number'")
end

function M.__doubleMinNegative59Max0(double)
	asserts.Assert__doubleMinNegative59Max0(double)
	return double
end

function asserts.Assert__doubleMinNegative60Max3(double)
	assert(double)
	assert(type(double) == "number", "Expected __doubleMinNegative60Max3 to be of type 'number'")
end

function M.__doubleMinNegative60Max3(double)
	asserts.Assert__doubleMinNegative60Max3(double)
	return double
end

function asserts.Assert__integerMin1Max1001(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max1001 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1001, "Expected integer to be max 1001")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max1001(integer)
	asserts.Assert__integerMin1Max1001(integer)
	return integer
end

function asserts.Assert__integerMin0Max50000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max50000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50000, "Expected integer to be max 50000")
end

function M.__integerMin0Max50000(integer)
	asserts.Assert__integerMin0Max50000(integer)
	return integer
end

function asserts.Assert__integerMinNegative180Max180(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMinNegative180Max180 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 180, "Expected integer to be max 180")
	assert(integer >= -180, "Expected integer to be min -180")
end

function M.__integerMinNegative180Max180(integer)
	asserts.Assert__integerMinNegative180Max180(integer)
	return integer
end

function asserts.Assert__integerMin1Max32(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max32 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 32, "Expected integer to be max 32")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max32(integer)
	asserts.Assert__integerMin1Max32(integer)
	return integer
end

function asserts.Assert__integerMin1000Max1152000000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1000Max1152000000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1152000000, "Expected integer to be max 1152000000")
	assert(integer >= 1000, "Expected integer to be min 1000")
end

function M.__integerMin1000Max1152000000(integer)
	asserts.Assert__integerMin1000Max1152000000(integer)
	return integer
end

function asserts.Assert__integerMin0Max65535(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max65535 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65535, "Expected integer to be max 65535")
end

function M.__integerMin0Max65535(integer)
	asserts.Assert__integerMin0Max65535(integer)
	return integer
end

function asserts.Assert__integerMin1Max10(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max10 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max10(integer)
	asserts.Assert__integerMin1Max10(integer)
	return integer
end

function asserts.Assert__integerMin16Max24(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin16Max24 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 24, "Expected integer to be max 24")
	assert(integer >= 16, "Expected integer to be min 16")
end

function M.__integerMin16Max24(integer)
	asserts.Assert__integerMin16Max24(integer)
	return integer
end

function asserts.Assert__integerMin1Max16(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max16 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 16, "Expected integer to be max 16")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max16(integer)
	asserts.Assert__integerMin1Max16(integer)
	return integer
end

function asserts.Assert__integerMin0Max1466400000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max1466400000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1466400000, "Expected integer to be max 1466400000")
end

function M.__integerMin0Max1466400000(integer)
	asserts.Assert__integerMin0Max1466400000(integer)
	return integer
end

function asserts.Assert__integerMin0Max96(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max96 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 96, "Expected integer to be max 96")
end

function M.__integerMin0Max96(integer)
	asserts.Assert__integerMin0Max96(integer)
	return integer
end

function asserts.Assert__integerMin0Max99(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max99 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 99, "Expected integer to be max 99")
end

function M.__integerMin0Max99(integer)
	asserts.Assert__integerMin0Max99(integer)
	return integer
end

function asserts.Assert__integerMin48000Max48000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin48000Max48000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 48000, "Expected integer to be max 48000")
	assert(integer >= 48000, "Expected integer to be min 48000")
end

function M.__integerMin48000Max48000(integer)
	asserts.Assert__integerMin48000Max48000(integer)
	return integer
end

function asserts.Assert__integerMin0Max3(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max3 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3, "Expected integer to be max 3")
end

function M.__integerMin0Max3(integer)
	asserts.Assert__integerMin0Max3(integer)
	return integer
end

function asserts.Assert__integerMin6000Max1024000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin6000Max1024000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1024000, "Expected integer to be max 1024000")
	assert(integer >= 6000, "Expected integer to be min 6000")
end

function M.__integerMin6000Max1024000(integer)
	asserts.Assert__integerMin6000Max1024000(integer)
	return integer
end

function asserts.Assert__integerMin0Max7(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max7 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 7, "Expected integer to be max 7")
end

function M.__integerMin0Max7(integer)
	asserts.Assert__integerMin0Max7(integer)
	return integer
end

function asserts.Assert__integerMin1000Max1466400000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1000Max1466400000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1466400000, "Expected integer to be max 1466400000")
	assert(integer >= 1000, "Expected integer to be min 1000")
end

function M.__integerMin1000Max1466400000(integer)
	asserts.Assert__integerMin1000Max1466400000(integer)
	return integer
end

function asserts.Assert__integerMin0Max9(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max9 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 9, "Expected integer to be max 9")
end

function M.__integerMin0Max9(integer)
	asserts.Assert__integerMin0Max9(integer)
	return integer
end

function asserts.Assert__integerMin1Max100(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max100 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max100(integer)
	asserts.Assert__integerMin1Max100(integer)
	return integer
end

function asserts.Assert__integerMin64000Max640000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin64000Max640000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 640000, "Expected integer to be max 640000")
	assert(integer >= 64000, "Expected integer to be min 64000")
end

function M.__integerMin64000Max640000(integer)
	asserts.Assert__integerMin64000Max640000(integer)
	return integer
end

function asserts.Assert__integerMin0Max100(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max100 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.__integerMin0Max100(integer)
	asserts.Assert__integerMin0Max100(integer)
	return integer
end

function asserts.Assert__integerMin1Max8(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max8 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 8, "Expected integer to be max 8")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max8(integer)
	asserts.Assert__integerMin1Max8(integer)
	return integer
end

function asserts.Assert__integerMin1Max4(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max4 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 4, "Expected integer to be max 4")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max4(integer)
	asserts.Assert__integerMin1Max4(integer)
	return integer
end

function asserts.Assert__integerMin1Max2(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max2 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2, "Expected integer to be max 2")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max2(integer)
	asserts.Assert__integerMin1Max2(integer)
	return integer
end

function asserts.Assert__integerMin1Max1(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max1 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1, "Expected integer to be max 1")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max1(integer)
	asserts.Assert__integerMin1Max1(integer)
	return integer
end

function asserts.Assert__integerMinNegative1000Max1000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMinNegative1000Max1000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= -1000, "Expected integer to be min -1000")
end

function M.__integerMinNegative1000Max1000(integer)
	asserts.Assert__integerMinNegative1000Max1000(integer)
	return integer
end

function asserts.Assert__integerMin1Max6(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max6 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 6, "Expected integer to be max 6")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max6(integer)
	asserts.Assert__integerMin1Max6(integer)
	return integer
end

function asserts.Assert__integerMin1000Max288000000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1000Max288000000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 288000000, "Expected integer to be max 288000000")
	assert(integer >= 1000, "Expected integer to be min 1000")
end

function M.__integerMin1000Max288000000(integer)
	asserts.Assert__integerMin1000Max288000000(integer)
	return integer
end

function asserts.Assert__integerMin0Max1152000000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max1152000000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1152000000, "Expected integer to be max 1152000000")
end

function M.__integerMin0Max1152000000(integer)
	asserts.Assert__integerMin0Max1152000000(integer)
	return integer
end

function asserts.Assert__integerMin0Max30(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max30 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 30, "Expected integer to be max 30")
end

function M.__integerMin0Max30(integer)
	asserts.Assert__integerMin0Max30(integer)
	return integer
end

function asserts.Assert__integer(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.__integer(integer)
	asserts.Assert__integer(integer)
	return integer
end

function asserts.Assert__integerMin1Max2147483647(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max2147483647 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2147483647, "Expected integer to be max 2147483647")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max2147483647(integer)
	asserts.Assert__integerMin1Max2147483647(integer)
	return integer
end

function asserts.Assert__integerMin0Max10(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max10 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
end

function M.__integerMin0Max10(integer)
	asserts.Assert__integerMin0Max10(integer)
	return integer
end

function asserts.Assert__integerMin0Max2147483647(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max2147483647 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2147483647, "Expected integer to be max 2147483647")
end

function M.__integerMin0Max2147483647(integer)
	asserts.Assert__integerMin0Max2147483647(integer)
	return integer
end

function asserts.Assert__integerMinNegative60Max6(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMinNegative60Max6 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 6, "Expected integer to be max 6")
	assert(integer >= -60, "Expected integer to be min -60")
end

function M.__integerMinNegative60Max6(integer)
	asserts.Assert__integerMinNegative60Max6(integer)
	return integer
end

function asserts.Assert__integerMinNegative2147483648Max2147483647(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMinNegative2147483648Max2147483647 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2147483647, "Expected integer to be max 2147483647")
	assert(integer >= -2147483648, "Expected integer to be min -2147483648")
end

function M.__integerMinNegative2147483648Max2147483647(integer)
	asserts.Assert__integerMinNegative2147483648Max2147483647(integer)
	return integer
end

function asserts.Assert__integerMin8000Max96000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin8000Max96000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 96000, "Expected integer to be max 96000")
	assert(integer >= 8000, "Expected integer to be min 8000")
end

function M.__integerMin8000Max96000(integer)
	asserts.Assert__integerMin8000Max96000(integer)
	return integer
end

function asserts.Assert__integerMin1Max31(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max31 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 31, "Expected integer to be max 31")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max31(integer)
	asserts.Assert__integerMin1Max31(integer)
	return integer
end

function asserts.Assert__integerMin25Max2000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin25Max2000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2000, "Expected integer to be max 2000")
	assert(integer >= 25, "Expected integer to be min 25")
end

function M.__integerMin25Max2000(integer)
	asserts.Assert__integerMin25Max2000(integer)
	return integer
end

function asserts.Assert__integerMin0Max255(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max255 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 255, "Expected integer to be max 255")
end

function M.__integerMin0Max255(integer)
	asserts.Assert__integerMin0Max255(integer)
	return integer
end

function asserts.Assert__integerMin10Max48(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin10Max48 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 48, "Expected integer to be max 48")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.__integerMin10Max48(integer)
	asserts.Assert__integerMin10Max48(integer)
	return integer
end

function asserts.Assert__integerMin0Max8(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max8 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 8, "Expected integer to be max 8")
end

function M.__integerMin0Max8(integer)
	asserts.Assert__integerMin0Max8(integer)
	return integer
end

function asserts.Assert__integerMin0Max1000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max1000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
end

function M.__integerMin0Max1000(integer)
	asserts.Assert__integerMin0Max1000(integer)
	return integer
end

function asserts.Assert__integerMinNegative70Max0(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMinNegative70Max0 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= -70, "Expected integer to be min -70")
end

function M.__integerMinNegative70Max0(integer)
	asserts.Assert__integerMinNegative70Max0(integer)
	return integer
end

function asserts.Assert__integerMin0Max47185920(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max47185920 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 47185920, "Expected integer to be max 47185920")
end

function M.__integerMin0Max47185920(integer)
	asserts.Assert__integerMin0Max47185920(integer)
	return integer
end

function asserts.Assert__integerMin24Max60000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin24Max60000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60000, "Expected integer to be max 60000")
	assert(integer >= 24, "Expected integer to be min 24")
end

function M.__integerMin24Max60000(integer)
	asserts.Assert__integerMin24Max60000(integer)
	return integer
end

function asserts.Assert__integerMin32000Max48000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin32000Max48000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 48000, "Expected integer to be max 48000")
	assert(integer >= 32000, "Expected integer to be min 32000")
end

function M.__integerMin32000Max48000(integer)
	asserts.Assert__integerMin32000Max48000(integer)
	return integer
end

function asserts.Assert__integerMin0Max10000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max10000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
end

function M.__integerMin0Max10000(integer)
	asserts.Assert__integerMin0Max10000(integer)
	return integer
end

function asserts.Assert__integerMin1000Max30000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1000Max30000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 30000, "Expected integer to be max 30000")
	assert(integer >= 1000, "Expected integer to be min 1000")
end

function M.__integerMin1000Max30000(integer)
	asserts.Assert__integerMin1000Max30000(integer)
	return integer
end

function asserts.Assert__integerMin1Max20(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max20 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max20(integer)
	asserts.Assert__integerMin1Max20(integer)
	return integer
end

function asserts.Assert__integerMin0Max128(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max128 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 128, "Expected integer to be max 128")
end

function M.__integerMin0Max128(integer)
	asserts.Assert__integerMin0Max128(integer)
	return integer
end

function asserts.Assert__integerMin1Max10000000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max10000000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000000, "Expected integer to be max 10000000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max10000000(integer)
	asserts.Assert__integerMin1Max10000000(integer)
	return integer
end

function asserts.Assert__integerMin96Max600(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin96Max600 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 600, "Expected integer to be max 600")
	assert(integer >= 96, "Expected integer to be min 96")
end

function M.__integerMin96Max600(integer)
	asserts.Assert__integerMin96Max600(integer)
	return integer
end

function asserts.Assert__integerMin2Max2147483647(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin2Max2147483647 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2147483647, "Expected integer to be max 2147483647")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.__integerMin2Max2147483647(integer)
	asserts.Assert__integerMin2Max2147483647(integer)
	return integer
end

function asserts.Assert__integerMinNegative5Max5(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMinNegative5Max5 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
	assert(integer >= -5, "Expected integer to be min -5")
end

function M.__integerMinNegative5Max5(integer)
	asserts.Assert__integerMinNegative5Max5(integer)
	return integer
end

function asserts.Assert__integerMin32Max8182(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin32Max8182 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 8182, "Expected integer to be max 8182")
	assert(integer >= 32, "Expected integer to be min 32")
end

function M.__integerMin32Max8182(integer)
	asserts.Assert__integerMin32Max8182(integer)
	return integer
end

function asserts.Assert__integerMin1000Max300000000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1000Max300000000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 300000000, "Expected integer to be max 300000000")
	assert(integer >= 1000, "Expected integer to be min 1000")
end

function M.__integerMin1000Max300000000(integer)
	asserts.Assert__integerMin1000Max300000000(integer)
	return integer
end

function asserts.Assert__integerMin32000Max384000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin32000Max384000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 384000, "Expected integer to be max 384000")
	assert(integer >= 32000, "Expected integer to be min 32000")
end

function M.__integerMin32000Max384000(integer)
	asserts.Assert__integerMin32000Max384000(integer)
	return integer
end

function asserts.Assert__integerMin0Max3600(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max3600 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3600, "Expected integer to be max 3600")
end

function M.__integerMin0Max3600(integer)
	asserts.Assert__integerMin0Max3600(integer)
	return integer
end

function asserts.Assert__integerMin0Max16(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max16 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 16, "Expected integer to be max 16")
end

function M.__integerMin0Max16(integer)
	asserts.Assert__integerMin0Max16(integer)
	return integer
end

function asserts.Assert__integerMin0Max15(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max15 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 15, "Expected integer to be max 15")
end

function M.__integerMin0Max15(integer)
	asserts.Assert__integerMin0Max15(integer)
	return integer
end

function asserts.Assert__integerMin0Max500(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max500 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 500, "Expected integer to be max 500")
end

function M.__integerMin0Max500(integer)
	asserts.Assert__integerMin0Max500(integer)
	return integer
end

function asserts.Assert__integerMinNegative2Max3(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMinNegative2Max3 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 3, "Expected integer to be max 3")
	assert(integer >= -2, "Expected integer to be min -2")
end

function M.__integerMinNegative2Max3(integer)
	asserts.Assert__integerMinNegative2Max3(integer)
	return integer
end

function asserts.Assert__integerMin25Max10000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin25Max10000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 25, "Expected integer to be min 25")
end

function M.__integerMin25Max10000(integer)
	asserts.Assert__integerMin25Max10000(integer)
	return integer
end

function asserts.Assert__integerMin8000Max192000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin8000Max192000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 192000, "Expected integer to be max 192000")
	assert(integer >= 8000, "Expected integer to be min 8000")
end

function M.__integerMin8000Max192000(integer)
	asserts.Assert__integerMin8000Max192000(integer)
	return integer
end

function asserts.Assert__integerMin32Max2160(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin32Max2160 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2160, "Expected integer to be max 2160")
	assert(integer >= 32, "Expected integer to be min 32")
end

function M.__integerMin32Max2160(integer)
	asserts.Assert__integerMin32Max2160(integer)
	return integer
end

function asserts.Assert__integerMin32Max4096(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin32Max4096 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 4096, "Expected integer to be max 4096")
	assert(integer >= 32, "Expected integer to be min 32")
end

function M.__integerMin32Max4096(integer)
	asserts.Assert__integerMin32Max4096(integer)
	return integer
end

function asserts.Assert__mapOf__string(map)
	assert(map)
	assert(type(map) == "table", "Expected __mapOf__string to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.Assert__string(v)
	end
end

function M.__mapOf__string(map)
	asserts.Assert__mapOf__string(map)
	return map
end

function asserts.Assert__mapOfAudioSelectorGroup(map)
	assert(map)
	assert(type(map) == "table", "Expected __mapOfAudioSelectorGroup to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertAudioSelectorGroup(v)
	end
end

function M.__mapOfAudioSelectorGroup(map)
	asserts.Assert__mapOfAudioSelectorGroup(map)
	return map
end

function asserts.Assert__mapOfCaptionSelector(map)
	assert(map)
	assert(type(map) == "table", "Expected __mapOfCaptionSelector to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertCaptionSelector(v)
	end
end

function M.__mapOfCaptionSelector(map)
	asserts.Assert__mapOfCaptionSelector(map)
	return map
end

function asserts.Assert__mapOfAudioSelector(map)
	assert(map)
	assert(type(map) == "table", "Expected __mapOfAudioSelector to be of type 'table'")
	for k,v in pairs(map) do
		asserts.Assert__string(k)
		asserts.AssertAudioSelector(v)
	end
end

function M.__mapOfAudioSelector(map)
	asserts.Assert__mapOfAudioSelector(map)
	return map
end

function asserts.Assert__timestampUnix(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected __timestampUnix to be of type 'string'")
end

function M.__timestampUnix(timestamp)
	asserts.Assert__timestampUnix(timestamp)
	return timestamp
end

function asserts.Assert__listOfEndpoint(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfEndpoint to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEndpoint(v)
	end
end

--  
-- List of Endpoint objects
function M.__listOfEndpoint(list)
	asserts.Assert__listOfEndpoint(list)
	return list
end

function asserts.Assert__listOfPreset(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfPreset to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPreset(v)
	end
end

--  
-- List of Preset objects
function M.__listOfPreset(list)
	asserts.Assert__listOfPreset(list)
	return list
end

function asserts.Assert__listOfJob(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfJob to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJob(v)
	end
end

--  
-- List of Job objects
function M.__listOfJob(list)
	asserts.Assert__listOfJob(list)
	return list
end

function asserts.Assert__listOfOutputGroupDetail(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutputGroupDetail to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputGroupDetail(v)
	end
end

--  
-- List of OutputGroupDetail objects
function M.__listOfOutputGroupDetail(list)
	asserts.Assert__listOfOutputGroupDetail(list)
	return list
end

function asserts.Assert__listOfOutputGroup(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutputGroup to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputGroup(v)
	end
end

--  
-- List of OutputGroup objects
function M.__listOfOutputGroup(list)
	asserts.Assert__listOfOutputGroup(list)
	return list
end

function asserts.Assert__listOfId3Insertion(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfId3Insertion to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertId3Insertion(v)
	end
end

--  
-- List of Id3Insertion objects
function M.__listOfId3Insertion(list)
	asserts.Assert__listOfId3Insertion(list)
	return list
end

function asserts.Assert__listOfOutputChannelMapping(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutputChannelMapping to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputChannelMapping(v)
	end
end

--  
-- List of OutputChannelMapping objects
function M.__listOfOutputChannelMapping(list)
	asserts.Assert__listOfOutputChannelMapping(list)
	return list
end

function asserts.Assert__listOfInputClipping(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputClipping to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputClipping(v)
	end
end

--  
-- List of InputClipping objects
function M.__listOfInputClipping(list)
	asserts.Assert__listOfInputClipping(list)
	return list
end

function asserts.Assert__listOf__stringMin1(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__stringMin1 to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__stringMin1(v)
	end
end

--  
-- List of __stringMin1 objects
function M.__listOf__stringMin1(list)
	asserts.Assert__listOf__stringMin1(list)
	return list
end

function asserts.Assert__listOfHlsAdMarkers(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfHlsAdMarkers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHlsAdMarkers(v)
	end
end

--  
-- List of HlsAdMarkers objects
function M.__listOfHlsAdMarkers(list)
	asserts.Assert__listOfHlsAdMarkers(list)
	return list
end

function asserts.Assert__listOfOutputDetail(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutputDetail to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputDetail(v)
	end
end

--  
-- List of OutputDetail objects
function M.__listOfOutputDetail(list)
	asserts.Assert__listOfOutputDetail(list)
	return list
end

function asserts.Assert__listOfAudioDescription(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfAudioDescription to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAudioDescription(v)
	end
end

--  
-- List of AudioDescription objects
function M.__listOfAudioDescription(list)
	asserts.Assert__listOfAudioDescription(list)
	return list
end

function asserts.Assert__listOfOutput(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutput to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutput(v)
	end
end

--  
-- List of Output objects
function M.__listOfOutput(list)
	asserts.Assert__listOfOutput(list)
	return list
end

function asserts.Assert__listOfQueue(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfQueue to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQueue(v)
	end
end

--  
-- List of Queue objects
function M.__listOfQueue(list)
	asserts.Assert__listOfQueue(list)
	return list
end

function asserts.Assert__listOf__string(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__string to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__string(v)
	end
end

--  
-- List of __string objects
function M.__listOf__string(list)
	asserts.Assert__listOf__string(list)
	return list
end

function asserts.Assert__listOfHlsCaptionLanguageMapping(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfHlsCaptionLanguageMapping to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHlsCaptionLanguageMapping(v)
	end
end

--  
-- List of HlsCaptionLanguageMapping objects
function M.__listOfHlsCaptionLanguageMapping(list)
	asserts.Assert__listOfHlsCaptionLanguageMapping(list)
	return list
end

function asserts.Assert__listOfCaptionDescription(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfCaptionDescription to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCaptionDescription(v)
	end
end

--  
-- List of CaptionDescription objects
function M.__listOfCaptionDescription(list)
	asserts.Assert__listOfCaptionDescription(list)
	return list
end

function asserts.Assert__listOfCaptionDescriptionPreset(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfCaptionDescriptionPreset to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCaptionDescriptionPreset(v)
	end
end

--  
-- List of CaptionDescriptionPreset objects
function M.__listOfCaptionDescriptionPreset(list)
	asserts.Assert__listOfCaptionDescriptionPreset(list)
	return list
end

function asserts.Assert__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12 to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12(v)
	end
end

--  
-- List of __stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12 objects
function M.__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12(list)
	asserts.Assert__listOf__stringPattern09aFAF809aFAF409aFAF409aFAF409aFAF12(list)
	return list
end

function asserts.Assert__listOfInputTemplate(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputTemplate to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputTemplate(v)
	end
end

--  
-- List of InputTemplate objects
function M.__listOfInputTemplate(list)
	asserts.Assert__listOfInputTemplate(list)
	return list
end

function asserts.Assert__listOfJobTemplate(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfJobTemplate to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobTemplate(v)
	end
end

--  
-- List of JobTemplate objects
function M.__listOfJobTemplate(list)
	asserts.Assert__listOfJobTemplate(list)
	return list
end

function asserts.Assert__listOfInsertableImage(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInsertableImage to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInsertableImage(v)
	end
end

--  
-- List of InsertableImage objects
function M.__listOfInsertableImage(list)
	asserts.Assert__listOfInsertableImage(list)
	return list
end

function asserts.Assert__listOfInput(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInput to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInput(v)
	end
end

--  
-- List of Input objects
function M.__listOfInput(list)
	asserts.Assert__listOfInput(list)
	return list
end

function asserts.Assert__listOf__integerMin32Max8182(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__integerMin32Max8182 to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__integerMin32Max8182(v)
	end
end

--  
-- List of __integerMin32Max8182 objects
function M.__listOf__integerMin32Max8182(list)
	asserts.Assert__listOf__integerMin32Max8182(list)
	return list
end

function asserts.Assert__listOf__integerMinNegative60Max6(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__integerMinNegative60Max6 to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__integerMinNegative60Max6(v)
	end
end

--  
-- List of __integerMinNegative60Max6 objects
function M.__listOf__integerMinNegative60Max6(list)
	asserts.Assert__listOf__integerMinNegative60Max6(list)
	return list
end

function asserts.Assert__listOf__integerMin1Max2147483647(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__integerMin1Max2147483647 to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__integerMin1Max2147483647(v)
	end
end

--  
-- List of __integerMin1Max2147483647 objects
function M.__listOf__integerMin1Max2147483647(list)
	asserts.Assert__listOf__integerMin1Max2147483647(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "mediaconvert.amazonaws.com"
		end
	end
	local ss = { "mediaconvert" }
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
--- Call CreateQueue asynchronously, invoking a callback when done
-- @param CreateQueueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateQueueAsync(CreateQueueRequest, cb)
	assert(CreateQueueRequest, "You must provide a CreateQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateQueue",
	}
	for header,value in pairs(CreateQueueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/queues", CreateQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateQueueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateQueueSync(CreateQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateQueueAsync(CreateQueueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePreset asynchronously, invoking a callback when done
-- @param UpdatePresetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePresetAsync(UpdatePresetRequest, cb)
	assert(UpdatePresetRequest, "You must provide a UpdatePresetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdatePreset",
	}
	for header,value in pairs(UpdatePresetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/presets/{name}", UpdatePresetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePreset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePresetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePresetSync(UpdatePresetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePresetAsync(UpdatePresetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPresets asynchronously, invoking a callback when done
-- @param ListPresetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPresetsAsync(ListPresetsRequest, cb)
	assert(ListPresetsRequest, "You must provide a ListPresetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPresets",
	}
	for header,value in pairs(ListPresetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/presets", ListPresetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPresets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPresetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPresetsSync(ListPresetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPresetsAsync(ListPresetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePreset asynchronously, invoking a callback when done
-- @param DeletePresetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePresetAsync(DeletePresetRequest, cb)
	assert(DeletePresetRequest, "You must provide a DeletePresetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePreset",
	}
	for header,value in pairs(DeletePresetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/presets/{name}", DeletePresetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePreset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePresetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePresetSync(DeletePresetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePresetAsync(DeletePresetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListJobTemplates asynchronously, invoking a callback when done
-- @param ListJobTemplatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobTemplatesAsync(ListJobTemplatesRequest, cb)
	assert(ListJobTemplatesRequest, "You must provide a ListJobTemplatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListJobTemplates",
	}
	for header,value in pairs(ListJobTemplatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobTemplates", ListJobTemplatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobTemplates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobTemplatesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobTemplatesSync(ListJobTemplatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobTemplatesAsync(ListJobTemplatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListQueues asynchronously, invoking a callback when done
-- @param ListQueuesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListQueuesAsync(ListQueuesRequest, cb)
	assert(ListQueuesRequest, "You must provide a ListQueuesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListQueues",
	}
	for header,value in pairs(ListQueuesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/queues", ListQueuesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListQueues synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListQueuesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListQueuesSync(ListQueuesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListQueuesAsync(ListQueuesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobTemplate asynchronously, invoking a callback when done
-- @param GetJobTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobTemplateAsync(GetJobTemplateRequest, cb)
	assert(GetJobTemplateRequest, "You must provide a GetJobTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetJobTemplate",
	}
	for header,value in pairs(GetJobTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobTemplates/{name}", GetJobTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJobTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobTemplateSync(GetJobTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobTemplateAsync(GetJobTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEndpoints asynchronously, invoking a callback when done
-- @param DescribeEndpointsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEndpointsAsync(DescribeEndpointsRequest, cb)
	assert(DescribeEndpointsRequest, "You must provide a DescribeEndpointsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeEndpoints",
	}
	for header,value in pairs(DescribeEndpointsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/endpoints", DescribeEndpointsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEndpointsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEndpointsSync(DescribeEndpointsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEndpointsAsync(DescribeEndpointsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagResource asynchronously, invoking a callback when done
-- @param TagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagResourceAsync(TagResourceRequest, cb)
	assert(TagResourceRequest, "You must provide a TagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TagResource",
	}
	for header,value in pairs(TagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/tags", TagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagResourceSync(TagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagResourceAsync(TagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQueue asynchronously, invoking a callback when done
-- @param GetQueueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetQueueAsync(GetQueueRequest, cb)
	assert(GetQueueRequest, "You must provide a GetQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetQueue",
	}
	for header,value in pairs(GetQueueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/queues/{name}", GetQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQueueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetQueueSync(GetQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQueueAsync(GetQueueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteJobTemplate asynchronously, invoking a callback when done
-- @param DeleteJobTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteJobTemplateAsync(DeleteJobTemplateRequest, cb)
	assert(DeleteJobTemplateRequest, "You must provide a DeleteJobTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteJobTemplate",
	}
	for header,value in pairs(DeleteJobTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobTemplates/{name}", DeleteJobTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteJobTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteJobTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteJobTemplateSync(DeleteJobTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteJobTemplateAsync(DeleteJobTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListJobs asynchronously, invoking a callback when done
-- @param ListJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListJobsAsync(ListJobsRequest, cb)
	assert(ListJobsRequest, "You must provide a ListJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListJobs",
	}
	for header,value in pairs(ListJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobs", ListJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListJobsSync(ListJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListJobsAsync(ListJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateJob asynchronously, invoking a callback when done
-- @param CreateJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateJobAsync(CreateJobRequest, cb)
	assert(CreateJobRequest, "You must provide a CreateJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateJob",
	}
	for header,value in pairs(CreateJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobs", CreateJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateJobSync(CreateJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateJobAsync(CreateJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPreset asynchronously, invoking a callback when done
-- @param GetPresetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPresetAsync(GetPresetRequest, cb)
	assert(GetPresetRequest, "You must provide a GetPresetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPreset",
	}
	for header,value in pairs(GetPresetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/presets/{name}", GetPresetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPreset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPresetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPresetSync(GetPresetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPresetAsync(GetPresetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateQueue asynchronously, invoking a callback when done
-- @param UpdateQueueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateQueueAsync(UpdateQueueRequest, cb)
	assert(UpdateQueueRequest, "You must provide a UpdateQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateQueue",
	}
	for header,value in pairs(UpdateQueueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/queues/{name}", UpdateQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateQueueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateQueueSync(UpdateQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateQueueAsync(UpdateQueueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelJob asynchronously, invoking a callback when done
-- @param CancelJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelJobAsync(CancelJobRequest, cb)
	assert(CancelJobRequest, "You must provide a CancelJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelJob",
	}
	for header,value in pairs(CancelJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobs/{id}", CancelJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelJobSync(CancelJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelJobAsync(CancelJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePreset asynchronously, invoking a callback when done
-- @param CreatePresetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePresetAsync(CreatePresetRequest, cb)
	assert(CreatePresetRequest, "You must provide a CreatePresetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreatePreset",
	}
	for header,value in pairs(CreatePresetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/presets", CreatePresetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePreset synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePresetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePresetSync(CreatePresetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePresetAsync(CreatePresetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagResource asynchronously, invoking a callback when done
-- @param UntagResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagResourceAsync(UntagResourceRequest, cb)
	assert(UntagResourceRequest, "You must provide a UntagResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UntagResource",
	}
	for header,value in pairs(UntagResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/tags/{arn}", UntagResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagResourceSync(UntagResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagResourceAsync(UntagResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJob asynchronously, invoking a callback when done
-- @param GetJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobAsync(GetJobRequest, cb)
	assert(GetJobRequest, "You must provide a GetJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetJob",
	}
	for header,value in pairs(GetJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobs/{id}", GetJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobSync(GetJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobAsync(GetJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteQueue asynchronously, invoking a callback when done
-- @param DeleteQueueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteQueueAsync(DeleteQueueRequest, cb)
	assert(DeleteQueueRequest, "You must provide a DeleteQueueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteQueue",
	}
	for header,value in pairs(DeleteQueueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/queues/{name}", DeleteQueueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteQueue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteQueueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteQueueSync(DeleteQueueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteQueueAsync(DeleteQueueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateJobTemplate asynchronously, invoking a callback when done
-- @param CreateJobTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateJobTemplateAsync(CreateJobTemplateRequest, cb)
	assert(CreateJobTemplateRequest, "You must provide a CreateJobTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateJobTemplate",
	}
	for header,value in pairs(CreateJobTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobTemplates", CreateJobTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateJobTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateJobTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateJobTemplateSync(CreateJobTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateJobTemplateAsync(CreateJobTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateJobTemplate asynchronously, invoking a callback when done
-- @param UpdateJobTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateJobTemplateAsync(UpdateJobTemplateRequest, cb)
	assert(UpdateJobTemplateRequest, "You must provide a UpdateJobTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateJobTemplate",
	}
	for header,value in pairs(UpdateJobTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/jobTemplates/{name}", UpdateJobTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateJobTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateJobTemplateRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateJobTemplateSync(UpdateJobTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateJobTemplateAsync(UpdateJobTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/2017-08-29/tags/{arn}", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
