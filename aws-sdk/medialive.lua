--- GENERATED CODE - DO NOT MODIFY
-- AWS Elemental MediaLive (medialive-2017-10-14)

local M = {}

M.metadata = {
	api_version = "2017-10-14",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "medialive",
	service_abbreviation = "MediaLive",
	service_full_name = "AWS Elemental MediaLive",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "medialive-2017-10-14",
}

local keys = {}
local asserts = {}

keys.FixedModeScheduleActionStartSettings = { ["Time"] = true, nil }

function asserts.AssertFixedModeScheduleActionStartSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FixedModeScheduleActionStartSettings to be of type 'table'")
	assert(struct["Time"], "Expected key Time to exist in table")
	if struct["Time"] then asserts.Assert__string(struct["Time"]) end
	for k,_ in pairs(struct) do
		assert(keys.FixedModeScheduleActionStartSettings[k], "FixedModeScheduleActionStartSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FixedModeScheduleActionStartSettings
-- Start time for the action.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Time [__string] Start time for the action to start in the channel. (Not the time for the action to be added to the schedule: actions are always added to the schedule immediately.) UTC format: yyyy-mm-ddThh:mm:ss.nnnZ. All the letters are digits (for example, mm might be 01) except for the two constants "T" for time and "Z" for "UTC format".
-- Required key: Time
-- @return FixedModeScheduleActionStartSettings structure as a key-value pair table
function M.FixedModeScheduleActionStartSettings(args)
	assert(args, "You must provide an argument table when creating FixedModeScheduleActionStartSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Time"] = args["Time"],
	}
	asserts.AssertFixedModeScheduleActionStartSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioSelector = { ["SelectorSettings"] = true, ["Name"] = true, nil }

function asserts.AssertAudioSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioSelector to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SelectorSettings"] then asserts.AssertAudioSelectorSettings(struct["SelectorSettings"]) end
	if struct["Name"] then asserts.Assert__stringMin1(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioSelector[k], "AudioSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioSelector
-- Placeholder documentation for AudioSelector
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SelectorSettings [AudioSelectorSettings] The audio selector settings.
-- * Name [__stringMin1] The name of this AudioSelector. AudioDescriptions will use this name to uniquely identify this Selector.  Selector names should be unique per input.
-- Required key: Name
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
		["SelectorSettings"] = args["SelectorSettings"],
		["Name"] = args["Name"],
	}
	asserts.AssertAudioSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioPidSelection = { ["Pid"] = true, nil }

function asserts.AssertAudioPidSelection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioPidSelection to be of type 'table'")
	assert(struct["Pid"], "Expected key Pid to exist in table")
	if struct["Pid"] then asserts.Assert__integerMin0Max8191(struct["Pid"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioPidSelection[k], "AudioPidSelection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioPidSelection
-- Placeholder documentation for AudioPidSelection
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pid [__integerMin0Max8191] Selects a specific PID from within a source.
-- Required key: Pid
-- @return AudioPidSelection structure as a key-value pair table
function M.AudioPidSelection(args)
	assert(args, "You must provide an argument table when creating AudioPidSelection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pid"] = args["Pid"],
	}
	asserts.AssertAudioPidSelection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputSourceRequest = { ["Url"] = true, ["Username"] = true, ["PasswordParam"] = true, nil }

function asserts.AssertInputSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSourceRequest to be of type 'table'")
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["PasswordParam"] then asserts.Assert__string(struct["PasswordParam"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputSourceRequest[k], "InputSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSourceRequest
-- Settings for for a PULL type input.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [__string] This represents the customer's source URL where stream is
--pulled from.
--
-- * Username [__string] The username for the input source.
-- * PasswordParam [__string] The key used to extract the password from EC2 Parameter store.
-- @return InputSourceRequest structure as a key-value pair table
function M.InputSourceRequest(args)
	assert(args, "You must provide an argument table when creating InputSourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["Username"] = args["Username"],
		["PasswordParam"] = args["PasswordParam"],
	}
	asserts.AssertInputSourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AacSettings = { ["Profile"] = true, ["InputType"] = true, ["RateControlMode"] = true, ["Spec"] = true, ["SampleRate"] = true, ["VbrQuality"] = true, ["Bitrate"] = true, ["CodingMode"] = true, ["RawFormat"] = true, nil }

function asserts.AssertAacSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AacSettings to be of type 'table'")
	if struct["Profile"] then asserts.AssertAacProfile(struct["Profile"]) end
	if struct["InputType"] then asserts.AssertAacInputType(struct["InputType"]) end
	if struct["RateControlMode"] then asserts.AssertAacRateControlMode(struct["RateControlMode"]) end
	if struct["Spec"] then asserts.AssertAacSpec(struct["Spec"]) end
	if struct["SampleRate"] then asserts.Assert__double(struct["SampleRate"]) end
	if struct["VbrQuality"] then asserts.AssertAacVbrQuality(struct["VbrQuality"]) end
	if struct["Bitrate"] then asserts.Assert__double(struct["Bitrate"]) end
	if struct["CodingMode"] then asserts.AssertAacCodingMode(struct["CodingMode"]) end
	if struct["RawFormat"] then asserts.AssertAacRawFormat(struct["RawFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.AacSettings[k], "AacSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AacSettings
-- Placeholder documentation for AacSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Profile [AacProfile] AAC Profile.
-- * InputType [AacInputType] Set to "broadcasterMixedAd" when input contains pre-mixed main audio + AD (narration) as a stereo pair.  The Audio Type field (audioType) will be set to 3, which signals to downstream systems that this stream contains "broadcaster mixed AD". Note that the input received by the encoder must contain pre-mixed audio; the encoder does not perform the mixing. The values in audioTypeControl and audioType (in AudioDescription) are ignored when set to broadcasterMixedAd.
--
--Leave set to "normal" when input does not contain pre-mixed audio + AD.
-- * RateControlMode [AacRateControlMode] Rate Control Mode.
-- * Spec [AacSpec] Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
-- * SampleRate [__double] Sample rate in Hz. Valid values depend on rate control mode and profile.
-- * VbrQuality [AacVbrQuality] VBR Quality Level - Only used if rateControlMode is VBR.
-- * Bitrate [__double] Average bitrate in bits/second. Valid values depend on rate control mode and profile.
-- * CodingMode [AacCodingMode] Mono, Stereo, or 5.1 channel layout. Valid values depend on rate control mode and profile. The adReceiverMix setting receives a stereo description plus control track and emits a mono AAC encode of the description track, with control data emitted in the PES header as per ETSI TS 101 154 Annex E.
-- * RawFormat [AacRawFormat] Sets LATM / LOAS AAC output for raw containers.
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
		["Profile"] = args["Profile"],
		["InputType"] = args["InputType"],
		["RateControlMode"] = args["RateControlMode"],
		["Spec"] = args["Spec"],
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

keys.UpdateInputSecurityGroupResponse = { ["SecurityGroup"] = true, nil }

function asserts.AssertUpdateInputSecurityGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInputSecurityGroupResponse to be of type 'table'")
	if struct["SecurityGroup"] then asserts.AssertInputSecurityGroup(struct["SecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateInputSecurityGroupResponse[k], "UpdateInputSecurityGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInputSecurityGroupResponse
-- Placeholder documentation for UpdateInputSecurityGroupResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityGroup [InputSecurityGroup] 
-- @return UpdateInputSecurityGroupResponse structure as a key-value pair table
function M.UpdateInputSecurityGroupResponse(args)
	assert(args, "You must provide an argument table when creating UpdateInputSecurityGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityGroup"] = args["SecurityGroup"],
	}
	asserts.AssertUpdateInputSecurityGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GlobalConfiguration = { ["SupportLowFramerateInputs"] = true, ["InitialAudioGain"] = true, ["OutputTimingSource"] = true, ["InputLossBehavior"] = true, ["InputEndAction"] = true, nil }

function asserts.AssertGlobalConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GlobalConfiguration to be of type 'table'")
	if struct["SupportLowFramerateInputs"] then asserts.AssertGlobalConfigurationLowFramerateInputs(struct["SupportLowFramerateInputs"]) end
	if struct["InitialAudioGain"] then asserts.Assert__integerMinNegative60Max60(struct["InitialAudioGain"]) end
	if struct["OutputTimingSource"] then asserts.AssertGlobalConfigurationOutputTimingSource(struct["OutputTimingSource"]) end
	if struct["InputLossBehavior"] then asserts.AssertInputLossBehavior(struct["InputLossBehavior"]) end
	if struct["InputEndAction"] then asserts.AssertGlobalConfigurationInputEndAction(struct["InputEndAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.GlobalConfiguration[k], "GlobalConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GlobalConfiguration
-- Placeholder documentation for GlobalConfiguration
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SupportLowFramerateInputs [GlobalConfigurationLowFramerateInputs] Adjusts video input buffer for streams with very low video framerates. This is commonly set to enabled for music channels with less than one video frame per second.
-- * InitialAudioGain [__integerMinNegative60Max60] Value to set the initial audio gain for the Live Event.
-- * OutputTimingSource [GlobalConfigurationOutputTimingSource] Indicates whether the rate of frames emitted by the Live encoder should be paced by its system clock (which optionally may be locked to another source via NTP) or should be locked to the clock of the source that is providing the input stream.
-- * InputLossBehavior [InputLossBehavior] Settings for system actions when input is lost.
-- * InputEndAction [GlobalConfigurationInputEndAction] Indicates the action to take when the input completes (e.g. end-of-file). Options include looping on the input (via "switchAndLoopInputs") or transcoding black / color / slate images per the "Input Loss Behavior" configuration (via "none").
-- @return GlobalConfiguration structure as a key-value pair table
function M.GlobalConfiguration(args)
	assert(args, "You must provide an argument table when creating GlobalConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SupportLowFramerateInputs"] = args["SupportLowFramerateInputs"],
		["InitialAudioGain"] = args["InitialAudioGain"],
		["OutputTimingSource"] = args["OutputTimingSource"],
		["InputLossBehavior"] = args["InputLossBehavior"],
		["InputEndAction"] = args["InputEndAction"],
	}
	asserts.AssertGlobalConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TeletextDestinationSettings = { nil }

function asserts.AssertTeletextDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TeletextDestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TeletextDestinationSettings[k], "TeletextDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeletextDestinationSettings
-- Placeholder documentation for TeletextDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertTeletextDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseOfferingResponse = { ["Reservation"] = true, nil }

function asserts.AssertPurchaseOfferingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseOfferingResponse to be of type 'table'")
	if struct["Reservation"] then asserts.AssertReservation(struct["Reservation"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseOfferingResponse[k], "PurchaseOfferingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseOfferingResponse
-- Placeholder documentation for PurchaseOfferingResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Reservation [Reservation] 
-- @return PurchaseOfferingResponse structure as a key-value pair table
function M.PurchaseOfferingResponse(args)
	assert(args, "You must provide an argument table when creating PurchaseOfferingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Reservation"] = args["Reservation"],
	}
	asserts.AssertPurchaseOfferingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Eac3Settings = { ["LoRoSurroundMixLevel"] = true, ["DrcLine"] = true, ["PhaseControl"] = true, ["MetadataControl"] = true, ["StereoDownmix"] = true, ["DrcRf"] = true, ["BitstreamMode"] = true, ["LfeControl"] = true, ["LtRtCenterMixLevel"] = true, ["Dialnorm"] = true, ["DcFilter"] = true, ["AttenuationControl"] = true, ["LfeFilter"] = true, ["LtRtSurroundMixLevel"] = true, ["SurroundMode"] = true, ["PassthroughControl"] = true, ["Bitrate"] = true, ["CodingMode"] = true, ["SurroundExMode"] = true, ["LoRoCenterMixLevel"] = true, nil }

function asserts.AssertEac3Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Eac3Settings to be of type 'table'")
	if struct["LoRoSurroundMixLevel"] then asserts.Assert__double(struct["LoRoSurroundMixLevel"]) end
	if struct["DrcLine"] then asserts.AssertEac3DrcLine(struct["DrcLine"]) end
	if struct["PhaseControl"] then asserts.AssertEac3PhaseControl(struct["PhaseControl"]) end
	if struct["MetadataControl"] then asserts.AssertEac3MetadataControl(struct["MetadataControl"]) end
	if struct["StereoDownmix"] then asserts.AssertEac3StereoDownmix(struct["StereoDownmix"]) end
	if struct["DrcRf"] then asserts.AssertEac3DrcRf(struct["DrcRf"]) end
	if struct["BitstreamMode"] then asserts.AssertEac3BitstreamMode(struct["BitstreamMode"]) end
	if struct["LfeControl"] then asserts.AssertEac3LfeControl(struct["LfeControl"]) end
	if struct["LtRtCenterMixLevel"] then asserts.Assert__double(struct["LtRtCenterMixLevel"]) end
	if struct["Dialnorm"] then asserts.Assert__integerMin1Max31(struct["Dialnorm"]) end
	if struct["DcFilter"] then asserts.AssertEac3DcFilter(struct["DcFilter"]) end
	if struct["AttenuationControl"] then asserts.AssertEac3AttenuationControl(struct["AttenuationControl"]) end
	if struct["LfeFilter"] then asserts.AssertEac3LfeFilter(struct["LfeFilter"]) end
	if struct["LtRtSurroundMixLevel"] then asserts.Assert__double(struct["LtRtSurroundMixLevel"]) end
	if struct["SurroundMode"] then asserts.AssertEac3SurroundMode(struct["SurroundMode"]) end
	if struct["PassthroughControl"] then asserts.AssertEac3PassthroughControl(struct["PassthroughControl"]) end
	if struct["Bitrate"] then asserts.Assert__double(struct["Bitrate"]) end
	if struct["CodingMode"] then asserts.AssertEac3CodingMode(struct["CodingMode"]) end
	if struct["SurroundExMode"] then asserts.AssertEac3SurroundExMode(struct["SurroundExMode"]) end
	if struct["LoRoCenterMixLevel"] then asserts.Assert__double(struct["LoRoCenterMixLevel"]) end
	for k,_ in pairs(struct) do
		assert(keys.Eac3Settings[k], "Eac3Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Eac3Settings
-- Placeholder documentation for Eac3Settings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoRoSurroundMixLevel [__double] Left only/Right only surround mix level. Only used for 3/2 coding mode.
-- * DrcLine [Eac3DrcLine] Sets the Dolby dynamic range compression profile.
-- * PhaseControl [Eac3PhaseControl] When set to shift90Degrees, applies a 90-degree phase shift to the surround channels. Only used for 3/2 coding mode.
-- * MetadataControl [Eac3MetadataControl] When set to followInput, encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
-- * StereoDownmix [Eac3StereoDownmix] Stereo downmix preference. Only used for 3/2 coding mode.
-- * DrcRf [Eac3DrcRf] Sets the profile for heavy Dolby dynamic range compression, ensures that the instantaneous signal peaks do not exceed specified levels.
-- * BitstreamMode [Eac3BitstreamMode] Specifies the bitstream mode (bsmod) for the emitted E-AC-3 stream. See ATSC A/52-2012 (Annex E) for background on these values.
-- * LfeControl [Eac3LfeControl] When encoding 3/2 audio, setting to lfe enables the LFE channel
-- * LtRtCenterMixLevel [__double] Left total/Right total center mix level. Only used for 3/2 coding mode.
-- * Dialnorm [__integerMin1Max31] Sets the dialnorm for the output. If blank and input audio is Dolby Digital Plus, dialnorm will be passed through.
-- * DcFilter [Eac3DcFilter] When set to enabled, activates a DC highpass filter for all input channels.
-- * AttenuationControl [Eac3AttenuationControl] When set to attenuate3Db, applies a 3 dB attenuation to the surround channels. Only used for 3/2 coding mode.
-- * LfeFilter [Eac3LfeFilter] When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid with codingMode32 coding mode.
-- * LtRtSurroundMixLevel [__double] Left total/Right total surround mix level. Only used for 3/2 coding mode.
-- * SurroundMode [Eac3SurroundMode] When encoding 2/0 audio, sets whether Dolby Surround is matrix encoded into the two channels.
-- * PassthroughControl [Eac3PassthroughControl] When set to whenPossible, input DD+ audio will be passed through if it is present on the input. This detection is dynamic over the life of the transcode. Inputs that alternate between DD+ and non-DD+ content will have a consistent DD+ output as the system alternates between passthrough and encoding.
-- * Bitrate [__double] Average bitrate in bits/second. Valid bitrates depend on the coding mode.
-- * CodingMode [Eac3CodingMode] Dolby Digital Plus coding mode. Determines number of channels.
-- * SurroundExMode [Eac3SurroundExMode] When encoding 3/2 audio, sets whether an extra center back surround channel is matrix encoded into the left and right surround channels.
-- * LoRoCenterMixLevel [__double] Left only/Right only center mix level. Only used for 3/2 coding mode.
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
		["DrcLine"] = args["DrcLine"],
		["PhaseControl"] = args["PhaseControl"],
		["MetadataControl"] = args["MetadataControl"],
		["StereoDownmix"] = args["StereoDownmix"],
		["DrcRf"] = args["DrcRf"],
		["BitstreamMode"] = args["BitstreamMode"],
		["LfeControl"] = args["LfeControl"],
		["LtRtCenterMixLevel"] = args["LtRtCenterMixLevel"],
		["Dialnorm"] = args["Dialnorm"],
		["DcFilter"] = args["DcFilter"],
		["AttenuationControl"] = args["AttenuationControl"],
		["LfeFilter"] = args["LfeFilter"],
		["LtRtSurroundMixLevel"] = args["LtRtSurroundMixLevel"],
		["SurroundMode"] = args["SurroundMode"],
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

keys.InputSettings = { ["AudioSelectors"] = true, ["CaptionSelectors"] = true, ["SourceEndBehavior"] = true, ["InputFilter"] = true, ["FilterStrength"] = true, ["NetworkInputSettings"] = true, ["DenoiseFilter"] = true, ["VideoSelector"] = true, ["DeblockFilter"] = true, nil }

function asserts.AssertInputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSettings to be of type 'table'")
	if struct["AudioSelectors"] then asserts.Assert__listOfAudioSelector(struct["AudioSelectors"]) end
	if struct["CaptionSelectors"] then asserts.Assert__listOfCaptionSelector(struct["CaptionSelectors"]) end
	if struct["SourceEndBehavior"] then asserts.AssertInputSourceEndBehavior(struct["SourceEndBehavior"]) end
	if struct["InputFilter"] then asserts.AssertInputFilter(struct["InputFilter"]) end
	if struct["FilterStrength"] then asserts.Assert__integerMin1Max5(struct["FilterStrength"]) end
	if struct["NetworkInputSettings"] then asserts.AssertNetworkInputSettings(struct["NetworkInputSettings"]) end
	if struct["DenoiseFilter"] then asserts.AssertInputDenoiseFilter(struct["DenoiseFilter"]) end
	if struct["VideoSelector"] then asserts.AssertVideoSelector(struct["VideoSelector"]) end
	if struct["DeblockFilter"] then asserts.AssertInputDeblockFilter(struct["DeblockFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputSettings[k], "InputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSettings
-- Live Event input parameters. There can be multiple inputs in a single Live Event.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AudioSelectors [__listOfAudioSelector] Used to select the audio stream to decode for inputs that have multiple available.
-- * CaptionSelectors [__listOfCaptionSelector] Used to select the caption input to use for inputs that have multiple available.
-- * SourceEndBehavior [InputSourceEndBehavior] Loop input if it is a file. This allows a file input to be streamed indefinitely.
-- * InputFilter [InputFilter] Turns on the filter for this input. MPEG-2 inputs have the deblocking filter enabled by default.
--1) auto - filtering will be applied depending on input type/quality
--2) disabled - no filtering will be applied to the input
--3) forced - filtering will be applied regardless of input type
-- * FilterStrength [__integerMin1Max5] Adjusts the magnitude of filtering from 1 (minimal) to 5 (strongest).
-- * NetworkInputSettings [NetworkInputSettings] Input settings.
-- * DenoiseFilter [InputDenoiseFilter] Enable or disable the denoise filter when filtering.
-- * VideoSelector [VideoSelector] Informs which video elementary stream to decode for input types that have multiple available.
-- * DeblockFilter [InputDeblockFilter] Enable or disable the deblock filter when filtering.
-- @return InputSettings structure as a key-value pair table
function M.InputSettings(args)
	assert(args, "You must provide an argument table when creating InputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AudioSelectors"] = args["AudioSelectors"],
		["CaptionSelectors"] = args["CaptionSelectors"],
		["SourceEndBehavior"] = args["SourceEndBehavior"],
		["InputFilter"] = args["InputFilter"],
		["FilterStrength"] = args["FilterStrength"],
		["NetworkInputSettings"] = args["NetworkInputSettings"],
		["DenoiseFilter"] = args["DenoiseFilter"],
		["VideoSelector"] = args["VideoSelector"],
		["DeblockFilter"] = args["DeblockFilter"],
	}
	asserts.AssertInputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionSelector = { ["SelectorSettings"] = true, ["LanguageCode"] = true, ["Name"] = true, nil }

function asserts.AssertCaptionSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionSelector to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["SelectorSettings"] then asserts.AssertCaptionSelectorSettings(struct["SelectorSettings"]) end
	if struct["LanguageCode"] then asserts.Assert__string(struct["LanguageCode"]) end
	if struct["Name"] then asserts.Assert__stringMin1(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionSelector[k], "CaptionSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionSelector
-- Output groups for this Live Event. Output groups contain information about where streams should be distributed.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SelectorSettings [CaptionSelectorSettings] Caption selector settings.
-- * LanguageCode [__string] When specified this field indicates the three letter language code of the caption track to extract from the source.
-- * Name [__stringMin1] Name identifier for a caption selector.  This name is used to associate this caption selector with one or more caption descriptions.  Names must be unique within an event.
-- Required key: Name
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
		["SelectorSettings"] = args["SelectorSettings"],
		["LanguageCode"] = args["LanguageCode"],
		["Name"] = args["Name"],
	}
	asserts.AssertCaptionSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioLanguageSelection = { ["LanguageCode"] = true, ["LanguageSelectionPolicy"] = true, nil }

function asserts.AssertAudioLanguageSelection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioLanguageSelection to be of type 'table'")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	if struct["LanguageCode"] then asserts.Assert__string(struct["LanguageCode"]) end
	if struct["LanguageSelectionPolicy"] then asserts.AssertAudioLanguageSelectionPolicy(struct["LanguageSelectionPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioLanguageSelection[k], "AudioLanguageSelection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioLanguageSelection
-- Placeholder documentation for AudioLanguageSelection
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [__string] Selects a specific three-letter language code from within an audio source.
-- * LanguageSelectionPolicy [AudioLanguageSelectionPolicy] When set to "strict", the transport stream demux strictly identifies audio streams by their language descriptor. If a PMT update occurs such that an audio stream matching the initially selected language is no longer present then mute will be encoded until the language returns. If "loose", then on a PMT update the demux will choose another audio stream in the program with the same stream type if it can't find one with the same language.
-- Required key: LanguageCode
-- @return AudioLanguageSelection structure as a key-value pair table
function M.AudioLanguageSelection(args)
	assert(args, "You must provide an argument table when creating AudioLanguageSelection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["LanguageSelectionPolicy"] = args["LanguageSelectionPolicy"],
	}
	asserts.AssertAudioLanguageSelection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbSubDestinationSettings = { ["YPosition"] = true, ["ShadowOpacity"] = true, ["OutlineSize"] = true, ["ShadowXOffset"] = true, ["ShadowYOffset"] = true, ["XPosition"] = true, ["FontOpacity"] = true, ["ShadowColor"] = true, ["FontResolution"] = true, ["FontSize"] = true, ["BackgroundColor"] = true, ["TeletextGridControl"] = true, ["FontColor"] = true, ["BackgroundOpacity"] = true, ["Font"] = true, ["Alignment"] = true, ["OutlineColor"] = true, nil }

function asserts.AssertDvbSubDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbSubDestinationSettings to be of type 'table'")
	if struct["YPosition"] then asserts.Assert__integerMin0(struct["YPosition"]) end
	if struct["ShadowOpacity"] then asserts.Assert__integerMin0Max255(struct["ShadowOpacity"]) end
	if struct["OutlineSize"] then asserts.Assert__integerMin0Max10(struct["OutlineSize"]) end
	if struct["ShadowXOffset"] then asserts.Assert__integer(struct["ShadowXOffset"]) end
	if struct["ShadowYOffset"] then asserts.Assert__integer(struct["ShadowYOffset"]) end
	if struct["XPosition"] then asserts.Assert__integerMin0(struct["XPosition"]) end
	if struct["FontOpacity"] then asserts.Assert__integerMin0Max255(struct["FontOpacity"]) end
	if struct["ShadowColor"] then asserts.AssertDvbSubDestinationShadowColor(struct["ShadowColor"]) end
	if struct["FontResolution"] then asserts.Assert__integerMin96Max600(struct["FontResolution"]) end
	if struct["FontSize"] then asserts.Assert__string(struct["FontSize"]) end
	if struct["BackgroundColor"] then asserts.AssertDvbSubDestinationBackgroundColor(struct["BackgroundColor"]) end
	if struct["TeletextGridControl"] then asserts.AssertDvbSubDestinationTeletextGridControl(struct["TeletextGridControl"]) end
	if struct["FontColor"] then asserts.AssertDvbSubDestinationFontColor(struct["FontColor"]) end
	if struct["BackgroundOpacity"] then asserts.Assert__integerMin0Max255(struct["BackgroundOpacity"]) end
	if struct["Font"] then asserts.AssertInputLocation(struct["Font"]) end
	if struct["Alignment"] then asserts.AssertDvbSubDestinationAlignment(struct["Alignment"]) end
	if struct["OutlineColor"] then asserts.AssertDvbSubDestinationOutlineColor(struct["OutlineColor"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbSubDestinationSettings[k], "DvbSubDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbSubDestinationSettings
-- Placeholder documentation for DvbSubDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * YPosition [__integerMin0] Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
-- * ShadowOpacity [__integerMin0Max255] Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
-- * OutlineSize [__integerMin0Max10] Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * ShadowXOffset [__integer] Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
-- * ShadowYOffset [__integer] Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
-- * XPosition [__integerMin0] Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  This option is not valid for source captions that are STL, 608/embedded or teletext. These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
-- * FontOpacity [__integerMin0Max255] Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
-- * ShadowColor [DvbSubDestinationShadowColor] Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
-- * FontResolution [__integerMin96Max600] Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
-- * FontSize [__string] When set to auto fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
-- * BackgroundColor [DvbSubDestinationBackgroundColor] Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
-- * TeletextGridControl [DvbSubDestinationTeletextGridControl] Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
-- * FontColor [DvbSubDestinationFontColor] Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
-- * BackgroundOpacity [__integerMin0Max255] Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter blank is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
-- * Font [InputLocation] External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions, embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
-- * Alignment [DvbSubDestinationAlignment] If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  This option is not valid for source captions that are STL or 608/embedded.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
-- * OutlineColor [DvbSubDestinationOutlineColor] Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
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
		["TeletextGridControl"] = args["TeletextGridControl"],
		["FontColor"] = args["FontColor"],
		["BackgroundOpacity"] = args["BackgroundOpacity"],
		["Font"] = args["Font"],
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

keys.Scte35SpliceInsert = { ["WebDeliveryAllowedFlag"] = true, ["AdAvailOffset"] = true, ["NoRegionalBlackoutFlag"] = true, nil }

function asserts.AssertScte35SpliceInsert(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35SpliceInsert to be of type 'table'")
	if struct["WebDeliveryAllowedFlag"] then asserts.AssertScte35SpliceInsertWebDeliveryAllowedBehavior(struct["WebDeliveryAllowedFlag"]) end
	if struct["AdAvailOffset"] then asserts.Assert__integerMinNegative1000Max1000(struct["AdAvailOffset"]) end
	if struct["NoRegionalBlackoutFlag"] then asserts.AssertScte35SpliceInsertNoRegionalBlackoutBehavior(struct["NoRegionalBlackoutFlag"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35SpliceInsert[k], "Scte35SpliceInsert contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35SpliceInsert
-- Placeholder documentation for Scte35SpliceInsert
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebDeliveryAllowedFlag [Scte35SpliceInsertWebDeliveryAllowedBehavior] When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set to 0 will no longer trigger blackouts or Ad Avail slates
-- * AdAvailOffset [__integerMinNegative1000Max1000] When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages.
-- * NoRegionalBlackoutFlag [Scte35SpliceInsertNoRegionalBlackoutBehavior] When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set to 0 will no longer trigger blackouts or Ad Avail slates
-- @return Scte35SpliceInsert structure as a key-value pair table
function M.Scte35SpliceInsert(args)
	assert(args, "You must provide an argument table when creating Scte35SpliceInsert")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WebDeliveryAllowedFlag"] = args["WebDeliveryAllowedFlag"],
		["AdAvailOffset"] = args["AdAvailOffset"],
		["NoRegionalBlackoutFlag"] = args["NoRegionalBlackoutFlag"],
	}
	asserts.AssertScte35SpliceInsert(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInputSecurityGroupRequest = { ["WhitelistRules"] = true, nil }

function asserts.AssertCreateInputSecurityGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInputSecurityGroupRequest to be of type 'table'")
	if struct["WhitelistRules"] then asserts.Assert__listOfInputWhitelistRuleCidr(struct["WhitelistRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInputSecurityGroupRequest[k], "CreateInputSecurityGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInputSecurityGroupRequest
-- The IPv4 CIDRs to whitelist for this Input Security Group
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WhitelistRules [__listOfInputWhitelistRuleCidr] List of IPv4 CIDR addresses to whitelist
-- @return CreateInputSecurityGroupRequest structure as a key-value pair table
function M.CreateInputSecurityGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateInputSecurityGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WhitelistRules"] = args["WhitelistRules"],
	}
	asserts.AssertCreateInputSecurityGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputAttachment = { ["InputId"] = true, ["InputSettings"] = true, nil }

function asserts.AssertInputAttachment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputAttachment to be of type 'table'")
	if struct["InputId"] then asserts.Assert__string(struct["InputId"]) end
	if struct["InputSettings"] then asserts.AssertInputSettings(struct["InputSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputAttachment[k], "InputAttachment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputAttachment
-- Placeholder documentation for InputAttachment
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputId [__string] The ID of the input
-- * InputSettings [InputSettings] Settings of an input (caption selector, etc.)
-- @return InputAttachment structure as a key-value pair table
function M.InputAttachment(args)
	assert(args, "You must provide an argument table when creating InputAttachment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputId"] = args["InputId"],
		["InputSettings"] = args["InputSettings"],
	}
	asserts.AssertInputAttachment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInputSecurityGroupResponse = { nil }

function asserts.AssertDeleteInputSecurityGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInputSecurityGroupResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteInputSecurityGroupResponse[k], "DeleteInputSecurityGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInputSecurityGroupResponse
-- Placeholder documentation for DeleteInputSecurityGroupResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteInputSecurityGroupResponse structure as a key-value pair table
function M.DeleteInputSecurityGroupResponse(args)
	assert(args, "You must provide an argument table when creating DeleteInputSecurityGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteInputSecurityGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BurnInDestinationSettings = { ["YPosition"] = true, ["ShadowOpacity"] = true, ["OutlineSize"] = true, ["ShadowXOffset"] = true, ["ShadowYOffset"] = true, ["XPosition"] = true, ["FontOpacity"] = true, ["ShadowColor"] = true, ["FontResolution"] = true, ["FontSize"] = true, ["BackgroundColor"] = true, ["TeletextGridControl"] = true, ["FontColor"] = true, ["BackgroundOpacity"] = true, ["Font"] = true, ["Alignment"] = true, ["OutlineColor"] = true, nil }

function asserts.AssertBurnInDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BurnInDestinationSettings to be of type 'table'")
	if struct["YPosition"] then asserts.Assert__integerMin0(struct["YPosition"]) end
	if struct["ShadowOpacity"] then asserts.Assert__integerMin0Max255(struct["ShadowOpacity"]) end
	if struct["OutlineSize"] then asserts.Assert__integerMin0Max10(struct["OutlineSize"]) end
	if struct["ShadowXOffset"] then asserts.Assert__integer(struct["ShadowXOffset"]) end
	if struct["ShadowYOffset"] then asserts.Assert__integer(struct["ShadowYOffset"]) end
	if struct["XPosition"] then asserts.Assert__integerMin0(struct["XPosition"]) end
	if struct["FontOpacity"] then asserts.Assert__integerMin0Max255(struct["FontOpacity"]) end
	if struct["ShadowColor"] then asserts.AssertBurnInShadowColor(struct["ShadowColor"]) end
	if struct["FontResolution"] then asserts.Assert__integerMin96Max600(struct["FontResolution"]) end
	if struct["FontSize"] then asserts.Assert__string(struct["FontSize"]) end
	if struct["BackgroundColor"] then asserts.AssertBurnInBackgroundColor(struct["BackgroundColor"]) end
	if struct["TeletextGridControl"] then asserts.AssertBurnInTeletextGridControl(struct["TeletextGridControl"]) end
	if struct["FontColor"] then asserts.AssertBurnInFontColor(struct["FontColor"]) end
	if struct["BackgroundOpacity"] then asserts.Assert__integerMin0Max255(struct["BackgroundOpacity"]) end
	if struct["Font"] then asserts.AssertInputLocation(struct["Font"]) end
	if struct["Alignment"] then asserts.AssertBurnInAlignment(struct["Alignment"]) end
	if struct["OutlineColor"] then asserts.AssertBurnInOutlineColor(struct["OutlineColor"]) end
	for k,_ in pairs(struct) do
		assert(keys.BurnInDestinationSettings[k], "BurnInDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BurnInDestinationSettings
-- Placeholder documentation for BurnInDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * YPosition [__integerMin0] Specifies the vertical position of the caption relative to the top of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the top of the output. If no explicit yPosition is provided, the caption will be positioned towards the bottom of the output.  All burn-in and DVB-Sub font settings must match.
-- * ShadowOpacity [__integerMin0Max255] Specifies the opacity of the shadow. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
-- * OutlineSize [__integerMin0Max10] Specifies font outline size in pixels. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- * ShadowXOffset [__integer] Specifies the horizontal offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels to the left.  All burn-in and DVB-Sub font settings must match.
-- * ShadowYOffset [__integer] Specifies the vertical offset of the shadow relative to the captions in pixels. A value of -2 would result in a shadow offset 2 pixels above the text.  All burn-in and DVB-Sub font settings must match.
-- * XPosition [__integerMin0] Specifies the horizontal position of the caption relative to the left side of the output in pixels. A value of 10 would result in the captions starting 10 pixels from the left of the output. If no explicit xPosition is provided, the horizontal caption position will be determined by the alignment parameter.  All burn-in and DVB-Sub font settings must match.
-- * FontOpacity [__integerMin0Max255] Specifies the opacity of the burned-in captions. 255 is opaque; 0 is transparent.  All burn-in and DVB-Sub font settings must match.
-- * ShadowColor [BurnInShadowColor] Specifies the color of the shadow cast by the captions.  All burn-in and DVB-Sub font settings must match.
-- * FontResolution [__integerMin96Max600] Font resolution in DPI (dots per inch); default is 96 dpi.  All burn-in and DVB-Sub font settings must match.
-- * FontSize [__string] When set to 'auto' fontSize will scale depending on the size of the output.  Giving a positive integer will specify the exact font size in points.  All burn-in and DVB-Sub font settings must match.
-- * BackgroundColor [BurnInBackgroundColor] Specifies the color of the rectangle behind the captions.  All burn-in and DVB-Sub font settings must match.
-- * TeletextGridControl [BurnInTeletextGridControl] Controls whether a fixed grid size will be used to generate the output subtitles bitmap. Only applicable for Teletext inputs and DVB-Sub/Burn-in outputs.
-- * FontColor [BurnInFontColor] Specifies the color of the burned-in captions.  This option is not valid for source captions that are STL, 608/embedded or teletext.  These source settings are already pre-defined by the caption stream.  All burn-in and DVB-Sub font settings must match.
-- * BackgroundOpacity [__integerMin0Max255] Specifies the opacity of the background rectangle. 255 is opaque; 0 is transparent. Leaving this parameter out is equivalent to setting it to 0 (transparent).  All burn-in and DVB-Sub font settings must match.
-- * Font [InputLocation] External font file used for caption burn-in. File extension must be 'ttf' or 'tte'.  Although the user can select output fonts for many different types of input captions,  embedded, STL and teletext sources use a strict grid system. Using external fonts with these caption sources could cause unexpected display of proportional fonts.  All burn-in and DVB-Sub font settings must match.
-- * Alignment [BurnInAlignment] If no explicit xPosition or yPosition is provided, setting alignment to centered will place the captions at the bottom center of the output. Similarly, setting a left alignment will align captions to the bottom left of the output. If x and y positions are given in conjunction with the alignment parameter, the font will be justified (either left or centered) relative to those coordinates. Selecting "smart" justification will left-justify live subtitles and center-justify pre-recorded subtitles.  All burn-in and DVB-Sub font settings must match.
-- * OutlineColor [BurnInOutlineColor] Specifies font outline color. This option is not valid for source captions that are either 608/embedded or teletext. These source settings are already pre-defined by the caption stream. All burn-in and DVB-Sub font settings must match.
-- @return BurnInDestinationSettings structure as a key-value pair table
function M.BurnInDestinationSettings(args)
	assert(args, "You must provide an argument table when creating BurnInDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["YPosition"] = args["YPosition"],
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
		["TeletextGridControl"] = args["TeletextGridControl"],
		["FontColor"] = args["FontColor"],
		["BackgroundOpacity"] = args["BackgroundOpacity"],
		["Font"] = args["Font"],
		["Alignment"] = args["Alignment"],
		["OutlineColor"] = args["OutlineColor"],
	}
	asserts.AssertBurnInDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopChannelRequest = { ["ChannelId"] = true, nil }

function asserts.AssertStopChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopChannelRequest to be of type 'table'")
	assert(struct["ChannelId"], "Expected key ChannelId to exist in table")
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopChannelRequest[k], "StopChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopChannelRequest
-- Placeholder documentation for StopChannelRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelId [__string] A request to stop a running channel
-- Required key: ChannelId
-- @return StopChannelRequest structure as a key-value pair table
function M.StopChannelRequest(args)
	assert(args, "You must provide an argument table when creating StopChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{channelId}"] = args["ChannelId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelId"] = args["ChannelId"],
	}
	asserts.AssertStopChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeChannelRequest = { ["ChannelId"] = true, nil }

function asserts.AssertDescribeChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChannelRequest to be of type 'table'")
	assert(struct["ChannelId"], "Expected key ChannelId to exist in table")
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChannelRequest[k], "DescribeChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChannelRequest
-- Placeholder documentation for DescribeChannelRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelId [__string] channel ID
-- Required key: ChannelId
-- @return DescribeChannelRequest structure as a key-value pair table
function M.DescribeChannelRequest(args)
	assert(args, "You must provide an argument table when creating DescribeChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{channelId}"] = args["ChannelId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelId"] = args["ChannelId"],
	}
	asserts.AssertDescribeChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOfferingsRequest = { ["SpecialFeature"] = true, ["VideoQuality"] = true, ["ChannelConfiguration"] = true, ["MaximumBitrate"] = true, ["ResourceType"] = true, ["MaxResults"] = true, ["Codec"] = true, ["MaximumFramerate"] = true, ["NextToken"] = true, ["Resolution"] = true, nil }

function asserts.AssertListOfferingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingsRequest to be of type 'table'")
	if struct["SpecialFeature"] then asserts.Assert__string(struct["SpecialFeature"]) end
	if struct["VideoQuality"] then asserts.Assert__string(struct["VideoQuality"]) end
	if struct["ChannelConfiguration"] then asserts.Assert__string(struct["ChannelConfiguration"]) end
	if struct["MaximumBitrate"] then asserts.Assert__string(struct["MaximumBitrate"]) end
	if struct["ResourceType"] then asserts.Assert__string(struct["ResourceType"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Codec"] then asserts.Assert__string(struct["Codec"]) end
	if struct["MaximumFramerate"] then asserts.Assert__string(struct["MaximumFramerate"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Resolution"] then asserts.Assert__string(struct["Resolution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOfferingsRequest[k], "ListOfferingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingsRequest
-- Placeholder documentation for ListOfferingsRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpecialFeature [__string] Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
--
-- * VideoQuality [__string] Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
--
-- * ChannelConfiguration [__string] Filter to offerings that match the configuration of an existing channel, e.g. '2345678' (a channel ID)
--
-- * MaximumBitrate [__string] Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
--
-- * ResourceType [__string] Filter by resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'
-- * MaxResults [MaxResults] 
-- * Codec [__string] Filter by codec, 'AVC', 'HEVC', 'MPEG2', or 'AUDIO'
-- * MaximumFramerate [__string] Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
-- * NextToken [__string] 
-- * Resolution [__string] Filter by resolution, 'SD', 'HD', or 'UHD'
-- @return ListOfferingsRequest structure as a key-value pair table
function M.ListOfferingsRequest(args)
	assert(args, "You must provide an argument table when creating ListOfferingsRequest")
    local query_args = { 
        ["specialFeature"] = args["SpecialFeature"],
        ["videoQuality"] = args["VideoQuality"],
        ["channelConfiguration"] = args["ChannelConfiguration"],
        ["maximumBitrate"] = args["MaximumBitrate"],
        ["resourceType"] = args["ResourceType"],
        ["maxResults"] = args["MaxResults"],
        ["codec"] = args["Codec"],
        ["maximumFramerate"] = args["MaximumFramerate"],
        ["nextToken"] = args["NextToken"],
        ["resolution"] = args["Resolution"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpecialFeature"] = args["SpecialFeature"],
		["VideoQuality"] = args["VideoQuality"],
		["ChannelConfiguration"] = args["ChannelConfiguration"],
		["MaximumBitrate"] = args["MaximumBitrate"],
		["ResourceType"] = args["ResourceType"],
		["MaxResults"] = args["MaxResults"],
		["Codec"] = args["Codec"],
		["MaximumFramerate"] = args["MaximumFramerate"],
		["NextToken"] = args["NextToken"],
		["Resolution"] = args["Resolution"],
	}
	asserts.AssertListOfferingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbTdtSettings = { ["RepInterval"] = true, nil }

function asserts.AssertDvbTdtSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbTdtSettings to be of type 'table'")
	if struct["RepInterval"] then asserts.Assert__integerMin1000Max30000(struct["RepInterval"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbTdtSettings[k], "DvbTdtSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbTdtSettings
-- DVB Time and Date Table (SDT)
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RepInterval [__integerMin1000Max30000] The number of milliseconds between instances of this table in the output transport stream.
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
		["RepInterval"] = args["RepInterval"],
	}
	asserts.AssertDvbTdtSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateInputRequest = { ["Sources"] = true, ["Name"] = true, ["InputId"] = true, ["InputSecurityGroups"] = true, ["Destinations"] = true, nil }

function asserts.AssertUpdateInputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInputRequest to be of type 'table'")
	assert(struct["InputId"], "Expected key InputId to exist in table")
	if struct["Sources"] then asserts.Assert__listOfInputSourceRequest(struct["Sources"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["InputId"] then asserts.Assert__string(struct["InputId"]) end
	if struct["InputSecurityGroups"] then asserts.Assert__listOf__string(struct["InputSecurityGroups"]) end
	if struct["Destinations"] then asserts.Assert__listOfInputDestinationRequest(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateInputRequest[k], "UpdateInputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInputRequest
-- A request to update an input.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Sources [__listOfInputSourceRequest] The source URLs for a PULL-type input. Every PULL type input needs
--exactly two source URLs for redundancy.
--Only specify sources for PULL type Inputs. Leave Destinations empty.
--
-- * Name [__string] Name of the input.
-- * InputId [__string] Unique ID of the input.
-- * InputSecurityGroups [__listOf__string] A list of security groups referenced by IDs to attach to the input.
-- * Destinations [__listOfInputDestinationRequest] Destination settings for PUSH type inputs.
-- Required key: InputId
-- @return UpdateInputRequest structure as a key-value pair table
function M.UpdateInputRequest(args)
	assert(args, "You must provide an argument table when creating UpdateInputRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{inputId}"] = args["InputId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Sources"] = args["Sources"],
		["Name"] = args["Name"],
		["InputId"] = args["InputId"],
		["InputSecurityGroups"] = args["InputSecurityGroups"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertUpdateInputRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArchiveGroupSettings = { ["Destination"] = true, ["RolloverInterval"] = true, nil }

function asserts.AssertArchiveGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArchiveGroupSettings to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["Destination"] then asserts.AssertOutputLocationRef(struct["Destination"]) end
	if struct["RolloverInterval"] then asserts.Assert__integerMin1(struct["RolloverInterval"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArchiveGroupSettings[k], "ArchiveGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArchiveGroupSettings
-- Placeholder documentation for ArchiveGroupSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Destination [OutputLocationRef] A directory and base filename where archive files should be written.  If the base filename portion of the URI is left blank, the base filename of the first input will be automatically inserted.
-- * RolloverInterval [__integerMin1] Number of seconds to write to archive file before closing and starting a new one.
-- Required key: Destination
-- @return ArchiveGroupSettings structure as a key-value pair table
function M.ArchiveGroupSettings(args)
	assert(args, "You must provide an argument table when creating ArchiveGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Destination"] = args["Destination"],
		["RolloverInterval"] = args["RolloverInterval"],
	}
	asserts.AssertArchiveGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbSdtSettings = { ["ServiceProviderName"] = true, ["ServiceName"] = true, ["RepInterval"] = true, ["OutputSdt"] = true, nil }

function asserts.AssertDvbSdtSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbSdtSettings to be of type 'table'")
	if struct["ServiceProviderName"] then asserts.Assert__stringMin1Max256(struct["ServiceProviderName"]) end
	if struct["ServiceName"] then asserts.Assert__stringMin1Max256(struct["ServiceName"]) end
	if struct["RepInterval"] then asserts.Assert__integerMin25Max2000(struct["RepInterval"]) end
	if struct["OutputSdt"] then asserts.AssertDvbSdtOutputSdt(struct["OutputSdt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbSdtSettings[k], "DvbSdtSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbSdtSettings
-- DVB Service Description Table (SDT)
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceProviderName [__stringMin1Max256] The service provider name placed in the serviceDescriptor in the Service Description Table. Maximum length is 256 characters.
-- * ServiceName [__stringMin1Max256] The service name placed in the serviceDescriptor in the Service Description Table. Maximum length is 256 characters.
-- * RepInterval [__integerMin25Max2000] The number of milliseconds between instances of this table in the output transport stream.
-- * OutputSdt [DvbSdtOutputSdt] Selects method of inserting SDT information into output stream. The sdtFollow setting copies SDT information from input stream to output stream. The sdtFollowIfPresent setting copies SDT information from input stream to output stream if SDT information is present in the input, otherwise it will fall back on the user-defined values. The sdtManual setting means user will enter the SDT information. The sdtNone setting means output stream will not contain SDT information.
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
		["ServiceName"] = args["ServiceName"],
		["RepInterval"] = args["RepInterval"],
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

keys.CreateChannelResponse = { ["Channel"] = true, nil }

function asserts.AssertCreateChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChannelResponse to be of type 'table'")
	if struct["Channel"] then asserts.AssertChannel(struct["Channel"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateChannelResponse[k], "CreateChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChannelResponse
-- Placeholder documentation for CreateChannelResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channel [Channel] 
-- @return CreateChannelResponse structure as a key-value pair table
function M.CreateChannelResponse(args)
	assert(args, "You must provide an argument table when creating CreateChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Channel"] = args["Channel"],
	}
	asserts.AssertCreateChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleActionStartSettings = { ["FixedModeScheduleActionStartSettings"] = true, nil }

function asserts.AssertScheduleActionStartSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleActionStartSettings to be of type 'table'")
	if struct["FixedModeScheduleActionStartSettings"] then asserts.AssertFixedModeScheduleActionStartSettings(struct["FixedModeScheduleActionStartSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleActionStartSettings[k], "ScheduleActionStartSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleActionStartSettings
-- Settings to specify the start time for an action.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FixedModeScheduleActionStartSettings [FixedModeScheduleActionStartSettings] Holds the start time for the action.
-- @return ScheduleActionStartSettings structure as a key-value pair table
function M.ScheduleActionStartSettings(args)
	assert(args, "You must provide an argument table when creating ScheduleActionStartSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FixedModeScheduleActionStartSettings"] = args["FixedModeScheduleActionStartSettings"],
	}
	asserts.AssertScheduleActionStartSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.H264Settings = { ["Syntax"] = true, ["BufFillPct"] = true, ["FixedAfd"] = true, ["MaxBitrate"] = true, ["TemporalAq"] = true, ["BufSize"] = true, ["FramerateNumerator"] = true, ["Profile"] = true, ["GopSize"] = true, ["AfdSignaling"] = true, ["FramerateControl"] = true, ["ColorMetadata"] = true, ["FlickerAq"] = true, ["LookAheadRateControl"] = true, ["FramerateDenominator"] = true, ["Bitrate"] = true, ["QvbrQualityLevel"] = true, ["NumRefFrames"] = true, ["EntropyEncoding"] = true, ["GopSizeUnits"] = true, ["Level"] = true, ["GopBReference"] = true, ["ParDenominator"] = true, ["AdaptiveQuantization"] = true, ["GopNumBFrames"] = true, ["Softness"] = true, ["ScanType"] = true, ["MinIInterval"] = true, ["ParControl"] = true, ["Slices"] = true, ["SpatialAq"] = true, ["ParNumerator"] = true, ["RateControlMode"] = true, ["SceneChangeDetect"] = true, ["TimecodeInsertion"] = true, ["GopClosedCadence"] = true, nil }

function asserts.AssertH264Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected H264Settings to be of type 'table'")
	if struct["Syntax"] then asserts.AssertH264Syntax(struct["Syntax"]) end
	if struct["BufFillPct"] then asserts.Assert__integerMin0Max100(struct["BufFillPct"]) end
	if struct["FixedAfd"] then asserts.AssertFixedAfd(struct["FixedAfd"]) end
	if struct["MaxBitrate"] then asserts.Assert__integerMin1000(struct["MaxBitrate"]) end
	if struct["TemporalAq"] then asserts.AssertH264TemporalAq(struct["TemporalAq"]) end
	if struct["BufSize"] then asserts.Assert__integerMin0(struct["BufSize"]) end
	if struct["FramerateNumerator"] then asserts.Assert__integer(struct["FramerateNumerator"]) end
	if struct["Profile"] then asserts.AssertH264Profile(struct["Profile"]) end
	if struct["GopSize"] then asserts.Assert__doubleMin1(struct["GopSize"]) end
	if struct["AfdSignaling"] then asserts.AssertAfdSignaling(struct["AfdSignaling"]) end
	if struct["FramerateControl"] then asserts.AssertH264FramerateControl(struct["FramerateControl"]) end
	if struct["ColorMetadata"] then asserts.AssertH264ColorMetadata(struct["ColorMetadata"]) end
	if struct["FlickerAq"] then asserts.AssertH264FlickerAq(struct["FlickerAq"]) end
	if struct["LookAheadRateControl"] then asserts.AssertH264LookAheadRateControl(struct["LookAheadRateControl"]) end
	if struct["FramerateDenominator"] then asserts.Assert__integer(struct["FramerateDenominator"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin1000(struct["Bitrate"]) end
	if struct["QvbrQualityLevel"] then asserts.Assert__integerMin1Max10(struct["QvbrQualityLevel"]) end
	if struct["NumRefFrames"] then asserts.Assert__integerMin1Max6(struct["NumRefFrames"]) end
	if struct["EntropyEncoding"] then asserts.AssertH264EntropyEncoding(struct["EntropyEncoding"]) end
	if struct["GopSizeUnits"] then asserts.AssertH264GopSizeUnits(struct["GopSizeUnits"]) end
	if struct["Level"] then asserts.AssertH264Level(struct["Level"]) end
	if struct["GopBReference"] then asserts.AssertH264GopBReference(struct["GopBReference"]) end
	if struct["ParDenominator"] then asserts.Assert__integerMin1(struct["ParDenominator"]) end
	if struct["AdaptiveQuantization"] then asserts.AssertH264AdaptiveQuantization(struct["AdaptiveQuantization"]) end
	if struct["GopNumBFrames"] then asserts.Assert__integerMin0Max7(struct["GopNumBFrames"]) end
	if struct["Softness"] then asserts.Assert__integerMin0Max128(struct["Softness"]) end
	if struct["ScanType"] then asserts.AssertH264ScanType(struct["ScanType"]) end
	if struct["MinIInterval"] then asserts.Assert__integerMin0Max30(struct["MinIInterval"]) end
	if struct["ParControl"] then asserts.AssertH264ParControl(struct["ParControl"]) end
	if struct["Slices"] then asserts.Assert__integerMin1Max32(struct["Slices"]) end
	if struct["SpatialAq"] then asserts.AssertH264SpatialAq(struct["SpatialAq"]) end
	if struct["ParNumerator"] then asserts.Assert__integer(struct["ParNumerator"]) end
	if struct["RateControlMode"] then asserts.AssertH264RateControlMode(struct["RateControlMode"]) end
	if struct["SceneChangeDetect"] then asserts.AssertH264SceneChangeDetect(struct["SceneChangeDetect"]) end
	if struct["TimecodeInsertion"] then asserts.AssertH264TimecodeInsertionBehavior(struct["TimecodeInsertion"]) end
	if struct["GopClosedCadence"] then asserts.Assert__integerMin0(struct["GopClosedCadence"]) end
	for k,_ in pairs(struct) do
		assert(keys.H264Settings[k], "H264Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type H264Settings
-- Placeholder documentation for H264Settings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Syntax [H264Syntax] Produces a bitstream compliant with SMPTE RP-2027.
-- * BufFillPct [__integerMin0Max100] Percentage of the buffer that should initially be filled (HRD buffer model).
-- * FixedAfd [FixedAfd] Four bit AFD value to write on all frames of video in the output stream. Only valid when afdSignaling is set to 'Fixed'.
-- * MaxBitrate [__integerMin1000] Maximum bitrate in bits/second (for VBR and QVBR modes only).
--
--Required when rateControlMode is "qvbr".
-- * TemporalAq [H264TemporalAq] If set to enabled, adjust quantization within each frame based on temporal variation of content complexity.
-- * BufSize [__integerMin0] Size of buffer (HRD buffer model) in bits/second.
-- * FramerateNumerator [__integer] Framerate numerator - framerate is a fraction, e.g. 24000 / 1001 = 23.976 fps.
-- * Profile [H264Profile] H.264 Profile.
-- * GopSize [__doubleMin1] GOP size (keyframe interval) in units of either frames or seconds per gopSizeUnits. Must be greater than zero.
-- * AfdSignaling [AfdSignaling] Indicates that AFD values will be written into the output stream.  If afdSignaling is "auto", the system will try to preserve the input AFD value (in cases where multiple AFD values are valid). If set to "fixed", the AFD value will be the value configured in the fixedAfd parameter.
-- * FramerateControl [H264FramerateControl] This field indicates how the output video frame rate is specified.  If "specified" is selected then the output video frame rate is determined by framerateNumerator and framerateDenominator, else if "initializeFromSource" is selected then the output video frame rate will be set equal to the input video frame rate of the first input.
-- * ColorMetadata [H264ColorMetadata] Includes colorspace metadata in the output.
-- * FlickerAq [H264FlickerAq] If set to enabled, adjust quantization within each frame to reduce flicker or 'pop' on I-frames.
-- * LookAheadRateControl [H264LookAheadRateControl] Amount of lookahead. A value of low can decrease latency and memory usage, while high can produce better quality for certain content.
-- * FramerateDenominator [__integer] Framerate denominator.
-- * Bitrate [__integerMin1000] Average bitrate in bits/second. Required for VBR, CBR, and ABR. For MS Smooth outputs, bitrates must be unique when rounded down to the nearest multiple of 1000.
-- * QvbrQualityLevel [__integerMin1Max10] Target quality value. Applicable only to QVBR mode. 1 is the lowest quality and 10 is the
--highest and approaches lossless. Typical levels for content distribution are between 6 and 8.
-- * NumRefFrames [__integerMin1Max6] Number of reference frames to use. The encoder may use more than requested if using B-frames and/or interlaced encoding.
-- * EntropyEncoding [H264EntropyEncoding] Entropy encoding mode.  Use cabac (must be in Main or High profile) or cavlc.
-- * GopSizeUnits [H264GopSizeUnits] Indicates if the gopSize is specified in frames or seconds. If seconds the system will convert the gopSize into a frame count at run time.
-- * Level [H264Level] H.264 Level.
-- * GopBReference [H264GopBReference] Documentation update needed
-- * ParDenominator [__integerMin1] Pixel Aspect Ratio denominator.
-- * AdaptiveQuantization [H264AdaptiveQuantization] Adaptive quantization. Allows intra-frame quantizers to vary to improve visual quality.
-- * GopNumBFrames [__integerMin0Max7] Number of B-frames between reference frames.
-- * Softness [__integerMin0Max128] Softness. Selects quantizer matrix, larger values reduce high-frequency content in the encoded image.
-- * ScanType [H264ScanType] Sets the scan type of the output to progressive or top-field-first interlaced.
-- * MinIInterval [__integerMin0Max30] Only meaningful if sceneChangeDetect is set to enabled.  Enforces separation between repeated (cadence) I-frames and I-frames inserted by Scene Change Detection. If a scene change I-frame is within I-interval frames of a cadence I-frame, the GOP is shrunk and/or stretched to the scene change I-frame. GOP stretch requires enabling lookahead as well as setting I-interval. The normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP size + Min-I-interval - 1
-- * ParControl [H264ParControl] This field indicates how the output pixel aspect ratio is specified.  If "specified" is selected then the output video pixel aspect ratio is determined by parNumerator and parDenominator, else if "initializeFromSource" is selected then the output pixsel aspect ratio will be set equal to the input video pixel aspect ratio of the first input.
-- * Slices [__integerMin1Max32] Number of slices per picture. Must be less than or equal to the number of macroblock rows for progressive pictures, and less than or equal to half the number of macroblock rows for interlaced pictures.
--This field is optional; when no value is specified the encoder will choose the number of slices based on encode resolution.
-- * SpatialAq [H264SpatialAq] If set to enabled, adjust quantization within each frame based on spatial variation of content complexity.
-- * ParNumerator [__integer] Pixel Aspect Ratio numerator.
-- * RateControlMode [H264RateControlMode] Rate control mode. 
--
--- CBR: Constant Bit Rate
--- VBR: Variable Bit Rate
--- QVBR: Encoder dynamically controls the bitrate to meet the desired quality (specified
--through the qvbrQualityLevel field). The bitrate will not exceed the bitrate specified in
--the maxBitrate field and will not fall below the bitrate required to meet the desired
--quality level.
-- * SceneChangeDetect [H264SceneChangeDetect] Scene change detection.
--
--- On: inserts I-frames when scene change is detected.
--- Off: does not force an I-frame when scene change is detected.
-- * TimecodeInsertion [H264TimecodeInsertionBehavior] Determines how timecodes should be inserted into the video elementary stream.
--- 'disabled': Do not include timecodes
--- 'picTimingSei': Pass through picture timing SEI messages from the source specified in Timecode Config
-- * GopClosedCadence [__integerMin0] Frequency of closed GOPs. In streaming applications, it is recommended that this be set to 1 so a decoder joining mid-stream will receive an IDR frame as quickly as possible. Setting this value to 0 will break output segmenting.
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
		["Syntax"] = args["Syntax"],
		["BufFillPct"] = args["BufFillPct"],
		["FixedAfd"] = args["FixedAfd"],
		["MaxBitrate"] = args["MaxBitrate"],
		["TemporalAq"] = args["TemporalAq"],
		["BufSize"] = args["BufSize"],
		["FramerateNumerator"] = args["FramerateNumerator"],
		["Profile"] = args["Profile"],
		["GopSize"] = args["GopSize"],
		["AfdSignaling"] = args["AfdSignaling"],
		["FramerateControl"] = args["FramerateControl"],
		["ColorMetadata"] = args["ColorMetadata"],
		["FlickerAq"] = args["FlickerAq"],
		["LookAheadRateControl"] = args["LookAheadRateControl"],
		["FramerateDenominator"] = args["FramerateDenominator"],
		["Bitrate"] = args["Bitrate"],
		["QvbrQualityLevel"] = args["QvbrQualityLevel"],
		["NumRefFrames"] = args["NumRefFrames"],
		["EntropyEncoding"] = args["EntropyEncoding"],
		["GopSizeUnits"] = args["GopSizeUnits"],
		["Level"] = args["Level"],
		["GopBReference"] = args["GopBReference"],
		["ParDenominator"] = args["ParDenominator"],
		["AdaptiveQuantization"] = args["AdaptiveQuantization"],
		["GopNumBFrames"] = args["GopNumBFrames"],
		["Softness"] = args["Softness"],
		["ScanType"] = args["ScanType"],
		["MinIInterval"] = args["MinIInterval"],
		["ParControl"] = args["ParControl"],
		["Slices"] = args["Slices"],
		["SpatialAq"] = args["SpatialAq"],
		["ParNumerator"] = args["ParNumerator"],
		["RateControlMode"] = args["RateControlMode"],
		["SceneChangeDetect"] = args["SceneChangeDetect"],
		["TimecodeInsertion"] = args["TimecodeInsertion"],
		["GopClosedCadence"] = args["GopClosedCadence"],
	}
	asserts.AssertH264Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Input = { ["Name"] = true, ["AttachedChannels"] = true, ["Sources"] = true, ["State"] = true, ["SecurityGroups"] = true, ["Type"] = true, ["Id"] = true, ["Arn"] = true, ["Destinations"] = true, nil }

function asserts.AssertInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Input to be of type 'table'")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["AttachedChannels"] then asserts.Assert__listOf__string(struct["AttachedChannels"]) end
	if struct["Sources"] then asserts.Assert__listOfInputSource(struct["Sources"]) end
	if struct["State"] then asserts.AssertInputState(struct["State"]) end
	if struct["SecurityGroups"] then asserts.Assert__listOf__string(struct["SecurityGroups"]) end
	if struct["Type"] then asserts.AssertInputType(struct["Type"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Destinations"] then asserts.Assert__listOfInputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.Input[k], "Input contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Input
-- Placeholder documentation for Input
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The user-assigned name (This is a mutable value).
-- * AttachedChannels [__listOf__string] A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
-- * Sources [__listOfInputSource] A list of the sources of the input (PULL-type).
-- * State [InputState] 
-- * SecurityGroups [__listOf__string] A list of IDs for all the security groups attached to the input.
-- * Type [InputType] 
-- * Id [__string] The generated ID of the input (unique for user account, immutable).
-- * Arn [__string] The Unique ARN of the input (generated, immutable).
-- * Destinations [__listOfInputDestination] A list of the destinations of the input (PUSH-type).
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
		["Name"] = args["Name"],
		["AttachedChannels"] = args["AttachedChannels"],
		["Sources"] = args["Sources"],
		["State"] = args["State"],
		["SecurityGroups"] = args["SecurityGroups"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputDestination = { ["Id"] = true, ["Settings"] = true, nil }

function asserts.AssertOutputDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputDestination to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Settings"] then asserts.Assert__listOfOutputDestinationSettings(struct["Settings"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputDestination[k], "OutputDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputDestination
-- Placeholder documentation for OutputDestination
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] User-specified id. This is used in an output group or an output.
-- * Settings [__listOfOutputDestinationSettings] Destination settings for output; one for each redundant encoder.
-- @return OutputDestination structure as a key-value pair table
function M.OutputDestination(args)
	assert(args, "You must provide an argument table when creating OutputDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Settings"] = args["Settings"],
	}
	asserts.AssertOutputDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StandardHlsSettings = { ["M3u8Settings"] = true, ["AudioRenditionSets"] = true, nil }

function asserts.AssertStandardHlsSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StandardHlsSettings to be of type 'table'")
	assert(struct["M3u8Settings"], "Expected key M3u8Settings to exist in table")
	if struct["M3u8Settings"] then asserts.AssertM3u8Settings(struct["M3u8Settings"]) end
	if struct["AudioRenditionSets"] then asserts.Assert__string(struct["AudioRenditionSets"]) end
	for k,_ in pairs(struct) do
		assert(keys.StandardHlsSettings[k], "StandardHlsSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StandardHlsSettings
-- Placeholder documentation for StandardHlsSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * M3u8Settings [M3u8Settings] 
-- * AudioRenditionSets [__string] List all the audio groups that are used with the video output stream. Input all the audio GROUP-IDs that are associated to the video, separate by ','.
-- Required key: M3u8Settings
-- @return StandardHlsSettings structure as a key-value pair table
function M.StandardHlsSettings(args)
	assert(args, "You must provide an argument table when creating StandardHlsSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["M3u8Settings"] = args["M3u8Settings"],
		["AudioRenditionSets"] = args["AudioRenditionSets"],
	}
	asserts.AssertStandardHlsSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UdpGroupSettings = { ["TimedMetadataId3Period"] = true, ["InputLossAction"] = true, ["TimedMetadataId3Frame"] = true, nil }

function asserts.AssertUdpGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UdpGroupSettings to be of type 'table'")
	if struct["TimedMetadataId3Period"] then asserts.Assert__integerMin0(struct["TimedMetadataId3Period"]) end
	if struct["InputLossAction"] then asserts.AssertInputLossActionForUdpOut(struct["InputLossAction"]) end
	if struct["TimedMetadataId3Frame"] then asserts.AssertUdpTimedMetadataId3Frame(struct["TimedMetadataId3Frame"]) end
	for k,_ in pairs(struct) do
		assert(keys.UdpGroupSettings[k], "UdpGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UdpGroupSettings
-- Placeholder documentation for UdpGroupSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimedMetadataId3Period [__integerMin0] Timed Metadata interval in seconds.
-- * InputLossAction [InputLossActionForUdpOut] Specifies behavior of last resort when input video is lost, and no more backup inputs are available. When dropTs is selected the entire transport stream will stop being emitted.  When dropProgram is selected the program can be dropped from the transport stream (and replaced with null packets to meet the TS bitrate requirement).  Or, when emitProgram is chosen the transport stream will continue to be produced normally with repeat frames, black frames, or slate frames substituted for the absent input video.
-- * TimedMetadataId3Frame [UdpTimedMetadataId3Frame] Indicates ID3 frame that has the timecode.
-- @return UdpGroupSettings structure as a key-value pair table
function M.UdpGroupSettings(args)
	assert(args, "You must provide an argument table when creating UdpGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimedMetadataId3Period"] = args["TimedMetadataId3Period"],
		["InputLossAction"] = args["InputLossAction"],
		["TimedMetadataId3Frame"] = args["TimedMetadataId3Frame"],
	}
	asserts.AssertUdpGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DvbNitSettings = { ["NetworkId"] = true, ["NetworkName"] = true, ["RepInterval"] = true, nil }

function asserts.AssertDvbNitSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DvbNitSettings to be of type 'table'")
	assert(struct["NetworkName"], "Expected key NetworkName to exist in table")
	assert(struct["NetworkId"], "Expected key NetworkId to exist in table")
	if struct["NetworkId"] then asserts.Assert__integerMin0Max65536(struct["NetworkId"]) end
	if struct["NetworkName"] then asserts.Assert__stringMin1Max256(struct["NetworkName"]) end
	if struct["RepInterval"] then asserts.Assert__integerMin25Max10000(struct["RepInterval"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbNitSettings[k], "DvbNitSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbNitSettings
-- DVB Network Information Table (NIT)
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NetworkId [__integerMin0Max65536] The numeric value placed in the Network Information Table (NIT).
-- * NetworkName [__stringMin1Max256] The network name text placed in the networkNameDescriptor inside the Network Information Table. Maximum length is 256 characters.
-- * RepInterval [__integerMin25Max10000] The number of milliseconds between instances of this table in the output transport stream.
-- Required key: NetworkName
-- Required key: NetworkId
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
		["NetworkName"] = args["NetworkName"],
		["RepInterval"] = args["RepInterval"],
	}
	asserts.AssertDvbNitSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsGroupSettings = { ["TimedMetadataId3Frame"] = true, ["CaptionLanguageMappings"] = true, ["Destination"] = true, ["IvSource"] = true, ["IndexNSegments"] = true, ["InputLossAction"] = true, ["ConstantIv"] = true, ["BaseUrlManifest"] = true, ["TimedMetadataId3Period"] = true, ["ManifestDurationFormat"] = true, ["CodecSpecification"] = true, ["IvInManifest"] = true, ["KeyFormat"] = true, ["KeyProviderSettings"] = true, ["BaseUrlContent"] = true, ["EncryptionType"] = true, ["TimestampDeltaMilliseconds"] = true, ["ProgramDateTimePeriod"] = true, ["SegmentLength"] = true, ["CaptionLanguageSetting"] = true, ["ProgramDateTime"] = true, ["HlsCdnSettings"] = true, ["TsFileMode"] = true, ["StreamInfResolution"] = true, ["ClientCache"] = true, ["AdMarkers"] = true, ["KeepSegments"] = true, ["KeyFormatVersions"] = true, ["SegmentationMode"] = true, ["SegmentsPerSubdirectory"] = true, ["OutputSelection"] = true, ["ManifestCompression"] = true, ["MinSegmentLength"] = true, ["DirectoryStructure"] = true, ["Mode"] = true, nil }

function asserts.AssertHlsGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsGroupSettings to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["TimedMetadataId3Frame"] then asserts.AssertHlsTimedMetadataId3Frame(struct["TimedMetadataId3Frame"]) end
	if struct["CaptionLanguageMappings"] then asserts.Assert__listOfCaptionLanguageMapping(struct["CaptionLanguageMappings"]) end
	if struct["Destination"] then asserts.AssertOutputLocationRef(struct["Destination"]) end
	if struct["IvSource"] then asserts.AssertHlsIvSource(struct["IvSource"]) end
	if struct["IndexNSegments"] then asserts.Assert__integerMin3(struct["IndexNSegments"]) end
	if struct["InputLossAction"] then asserts.AssertInputLossActionForHlsOut(struct["InputLossAction"]) end
	if struct["ConstantIv"] then asserts.Assert__stringMin32Max32(struct["ConstantIv"]) end
	if struct["BaseUrlManifest"] then asserts.Assert__string(struct["BaseUrlManifest"]) end
	if struct["TimedMetadataId3Period"] then asserts.Assert__integerMin0(struct["TimedMetadataId3Period"]) end
	if struct["ManifestDurationFormat"] then asserts.AssertHlsManifestDurationFormat(struct["ManifestDurationFormat"]) end
	if struct["CodecSpecification"] then asserts.AssertHlsCodecSpecification(struct["CodecSpecification"]) end
	if struct["IvInManifest"] then asserts.AssertHlsIvInManifest(struct["IvInManifest"]) end
	if struct["KeyFormat"] then asserts.Assert__string(struct["KeyFormat"]) end
	if struct["KeyProviderSettings"] then asserts.AssertKeyProviderSettings(struct["KeyProviderSettings"]) end
	if struct["BaseUrlContent"] then asserts.Assert__string(struct["BaseUrlContent"]) end
	if struct["EncryptionType"] then asserts.AssertHlsEncryptionType(struct["EncryptionType"]) end
	if struct["TimestampDeltaMilliseconds"] then asserts.Assert__integerMin0(struct["TimestampDeltaMilliseconds"]) end
	if struct["ProgramDateTimePeriod"] then asserts.Assert__integerMin0Max3600(struct["ProgramDateTimePeriod"]) end
	if struct["SegmentLength"] then asserts.Assert__integerMin1(struct["SegmentLength"]) end
	if struct["CaptionLanguageSetting"] then asserts.AssertHlsCaptionLanguageSetting(struct["CaptionLanguageSetting"]) end
	if struct["ProgramDateTime"] then asserts.AssertHlsProgramDateTime(struct["ProgramDateTime"]) end
	if struct["HlsCdnSettings"] then asserts.AssertHlsCdnSettings(struct["HlsCdnSettings"]) end
	if struct["TsFileMode"] then asserts.AssertHlsTsFileMode(struct["TsFileMode"]) end
	if struct["StreamInfResolution"] then asserts.AssertHlsStreamInfResolution(struct["StreamInfResolution"]) end
	if struct["ClientCache"] then asserts.AssertHlsClientCache(struct["ClientCache"]) end
	if struct["AdMarkers"] then asserts.Assert__listOfHlsAdMarkers(struct["AdMarkers"]) end
	if struct["KeepSegments"] then asserts.Assert__integerMin1(struct["KeepSegments"]) end
	if struct["KeyFormatVersions"] then asserts.Assert__string(struct["KeyFormatVersions"]) end
	if struct["SegmentationMode"] then asserts.AssertHlsSegmentationMode(struct["SegmentationMode"]) end
	if struct["SegmentsPerSubdirectory"] then asserts.Assert__integerMin1(struct["SegmentsPerSubdirectory"]) end
	if struct["OutputSelection"] then asserts.AssertHlsOutputSelection(struct["OutputSelection"]) end
	if struct["ManifestCompression"] then asserts.AssertHlsManifestCompression(struct["ManifestCompression"]) end
	if struct["MinSegmentLength"] then asserts.Assert__integerMin0(struct["MinSegmentLength"]) end
	if struct["DirectoryStructure"] then asserts.AssertHlsDirectoryStructure(struct["DirectoryStructure"]) end
	if struct["Mode"] then asserts.AssertHlsMode(struct["Mode"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsGroupSettings[k], "HlsGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsGroupSettings
-- Placeholder documentation for HlsGroupSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimedMetadataId3Frame [HlsTimedMetadataId3Frame] Indicates ID3 frame that has the timecode.
-- * CaptionLanguageMappings [__listOfCaptionLanguageMapping] Mapping of up to 4 caption channels to caption languages.  Is only meaningful if captionLanguageSetting is set to "insert".
-- * Destination [OutputLocationRef] A directory or HTTP destination for the HLS segments, manifest files, and encryption keys (if enabled).
-- * IvSource [HlsIvSource] For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If this setting is "followsSegmentNumber", it will cause the IV to change every segment (to match the segment number). If this is set to "explicit", you must enter a constantIv value.
-- * IndexNSegments [__integerMin3] If mode is "live", the number of segments to retain in the manifest (.m3u8) file. This number must be less than or equal to keepSegments. If mode is "vod", this parameter has no effect.
-- * InputLossAction [InputLossActionForHlsOut] Parameter that control output group behavior on input loss.
-- * ConstantIv [__stringMin32Max32] For use with encryptionType. This is a 128-bit, 16-byte hex value represented by a 32-character text string. If ivSource is set to "explicit" then this parameter is required and is used as the IV for encryption.
-- * BaseUrlManifest [__string] A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
-- * TimedMetadataId3Period [__integerMin0] Timed Metadata interval in seconds.
-- * ManifestDurationFormat [HlsManifestDurationFormat] Indicates whether the output manifest should use floating point or integer values for segment duration.
-- * CodecSpecification [HlsCodecSpecification] Specification to use (RFC-6381 or the default RFC-4281) during m3u8 playlist generation.
-- * IvInManifest [HlsIvInManifest] For use with encryptionType. The IV (Initialization Vector) is a 128-bit number used in conjunction with the key for encrypting blocks. If set to "include", IV is listed in the manifest, otherwise the IV is not in the manifest.
-- * KeyFormat [__string] The value specifies how the key is represented in the resource identified by the URI.  If parameter is absent, an implicit value of "identity" is used.  A reverse DNS string can also be given.
-- * KeyProviderSettings [KeyProviderSettings] The key provider settings.
-- * BaseUrlContent [__string] A partial URI prefix that will be prepended to each output in the media .m3u8 file. Can be used if base manifest is delivered from a different URL than the main .m3u8 file.
-- * EncryptionType [HlsEncryptionType] Encrypts the segments with the given encryption scheme.  Exclude this parameter if no encryption is desired.
-- * TimestampDeltaMilliseconds [__integerMin0] Provides an extra millisecond delta offset to fine tune the timestamps.
-- * ProgramDateTimePeriod [__integerMin0Max3600] Period of insertion of EXT-X-PROGRAM-DATE-TIME entry, in seconds.
-- * SegmentLength [__integerMin1] Length of MPEG-2 Transport Stream segments to create (in seconds). Note that segments will end on the next keyframe after this number of seconds, so actual segment length may be longer.
-- * CaptionLanguageSetting [HlsCaptionLanguageSetting] Applies only to 608 Embedded output captions.
--insert: Include CLOSED-CAPTIONS lines in the manifest. Specify at least one language in the CC1 Language Code field. One CLOSED-CAPTION line is added for each Language Code you specify. Make sure to specify the languages in the order in which they appear in the original source (if the source is embedded format) or the order of the caption selectors (if the source is other than embedded). Otherwise, languages in the manifest will not match up properly with the output captions.
--none: Include CLOSED-CAPTIONS=NONE line in the manifest.
--omit: Omit any CLOSED-CAPTIONS line from the manifest.
-- * ProgramDateTime [HlsProgramDateTime] Includes or excludes EXT-X-PROGRAM-DATE-TIME tag in .m3u8 manifest files. The value is calculated as follows: either the program date and time are initialized using the input timecode source, or the time is initialized using the input timecode source and the date is initialized using the timestampOffset.
-- * HlsCdnSettings [HlsCdnSettings] Parameters that control interactions with the CDN.
-- * TsFileMode [HlsTsFileMode] When set to "singleFile", emits the program as a single media resource (.ts) file, and uses #EXT-X-BYTERANGE tags to index segment for playback. Playback of VOD mode content during event is not guaranteed due to HTTP server caching.
-- * StreamInfResolution [HlsStreamInfResolution] Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF tag of variant manifest.
-- * ClientCache [HlsClientCache] When set to "disabled", sets the #EXT-X-ALLOW-CACHE:no tag in the manifest, which prevents clients from saving media segments for later replay.
-- * AdMarkers [__listOfHlsAdMarkers] Choose one or more ad marker types to pass SCTE35 signals through to this group of Apple HLS outputs.
-- * KeepSegments [__integerMin1] If mode is "live", the number of TS segments to retain in the destination directory. If mode is "vod", this parameter has no effect.
-- * KeyFormatVersions [__string] Either a single positive integer version value or a slash delimited list of version values (1/2/3).
-- * SegmentationMode [HlsSegmentationMode] When set to useInputSegmentation, the output segment or fragment points are set by the RAI markers from the input streams.
-- * SegmentsPerSubdirectory [__integerMin1] Number of segments to write to a subdirectory before starting a new one. directoryStructure must be subdirectoryPerStream for this setting to have an effect.
-- * OutputSelection [HlsOutputSelection] Generates the .m3u8 playlist file for this HLS output group. The segmentsOnly option will output segments without the .m3u8 file.
-- * ManifestCompression [HlsManifestCompression] When set to gzip, compresses HLS playlist.
-- * MinSegmentLength [__integerMin0] When set, minimumSegmentLength is enforced by looking ahead and back within the specified range for a nearby avail and extending the segment size if needed.
-- * DirectoryStructure [HlsDirectoryStructure] Place segments in subdirectories.
-- * Mode [HlsMode] If "vod", all segments are indexed and kept permanently in the destination and manifest. If "live", only the number segments specified in keepSegments and indexNSegments are kept; newer segments replace older segments, which may prevent players from rewinding all the way to the beginning of the event.
--
--VOD mode uses HLS EXT-X-PLAYLIST-TYPE of EVENT while the channel is running, converting it to a "VOD" type manifest on completion of the stream.
-- Required key: Destination
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
		["CaptionLanguageMappings"] = args["CaptionLanguageMappings"],
		["Destination"] = args["Destination"],
		["IvSource"] = args["IvSource"],
		["IndexNSegments"] = args["IndexNSegments"],
		["InputLossAction"] = args["InputLossAction"],
		["ConstantIv"] = args["ConstantIv"],
		["BaseUrlManifest"] = args["BaseUrlManifest"],
		["TimedMetadataId3Period"] = args["TimedMetadataId3Period"],
		["ManifestDurationFormat"] = args["ManifestDurationFormat"],
		["CodecSpecification"] = args["CodecSpecification"],
		["IvInManifest"] = args["IvInManifest"],
		["KeyFormat"] = args["KeyFormat"],
		["KeyProviderSettings"] = args["KeyProviderSettings"],
		["BaseUrlContent"] = args["BaseUrlContent"],
		["EncryptionType"] = args["EncryptionType"],
		["TimestampDeltaMilliseconds"] = args["TimestampDeltaMilliseconds"],
		["ProgramDateTimePeriod"] = args["ProgramDateTimePeriod"],
		["SegmentLength"] = args["SegmentLength"],
		["CaptionLanguageSetting"] = args["CaptionLanguageSetting"],
		["ProgramDateTime"] = args["ProgramDateTime"],
		["HlsCdnSettings"] = args["HlsCdnSettings"],
		["TsFileMode"] = args["TsFileMode"],
		["StreamInfResolution"] = args["StreamInfResolution"],
		["ClientCache"] = args["ClientCache"],
		["AdMarkers"] = args["AdMarkers"],
		["KeepSegments"] = args["KeepSegments"],
		["KeyFormatVersions"] = args["KeyFormatVersions"],
		["SegmentationMode"] = args["SegmentationMode"],
		["SegmentsPerSubdirectory"] = args["SegmentsPerSubdirectory"],
		["OutputSelection"] = args["OutputSelection"],
		["ManifestCompression"] = args["ManifestCompression"],
		["MinSegmentLength"] = args["MinSegmentLength"],
		["DirectoryStructure"] = args["DirectoryStructure"],
		["Mode"] = args["Mode"],
	}
	asserts.AssertHlsGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsCdnSettings = { ["HlsAkamaiSettings"] = true, ["HlsBasicPutSettings"] = true, ["HlsWebdavSettings"] = true, ["HlsMediaStoreSettings"] = true, nil }

function asserts.AssertHlsCdnSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsCdnSettings to be of type 'table'")
	if struct["HlsAkamaiSettings"] then asserts.AssertHlsAkamaiSettings(struct["HlsAkamaiSettings"]) end
	if struct["HlsBasicPutSettings"] then asserts.AssertHlsBasicPutSettings(struct["HlsBasicPutSettings"]) end
	if struct["HlsWebdavSettings"] then asserts.AssertHlsWebdavSettings(struct["HlsWebdavSettings"]) end
	if struct["HlsMediaStoreSettings"] then asserts.AssertHlsMediaStoreSettings(struct["HlsMediaStoreSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsCdnSettings[k], "HlsCdnSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsCdnSettings
-- Placeholder documentation for HlsCdnSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HlsAkamaiSettings [HlsAkamaiSettings] 
-- * HlsBasicPutSettings [HlsBasicPutSettings] 
-- * HlsWebdavSettings [HlsWebdavSettings] 
-- * HlsMediaStoreSettings [HlsMediaStoreSettings] 
-- @return HlsCdnSettings structure as a key-value pair table
function M.HlsCdnSettings(args)
	assert(args, "You must provide an argument table when creating HlsCdnSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HlsAkamaiSettings"] = args["HlsAkamaiSettings"],
		["HlsBasicPutSettings"] = args["HlsBasicPutSettings"],
		["HlsWebdavSettings"] = args["HlsWebdavSettings"],
		["HlsMediaStoreSettings"] = args["HlsMediaStoreSettings"],
	}
	asserts.AssertHlsCdnSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchUpdateScheduleResponse = { ["Creates"] = true, ["Deletes"] = true, nil }

function asserts.AssertBatchUpdateScheduleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateScheduleResponse to be of type 'table'")
	if struct["Creates"] then asserts.AssertBatchScheduleActionCreateResult(struct["Creates"]) end
	if struct["Deletes"] then asserts.AssertBatchScheduleActionDeleteResult(struct["Deletes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUpdateScheduleResponse[k], "BatchUpdateScheduleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateScheduleResponse
-- Placeholder documentation for BatchUpdateScheduleResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Creates [BatchScheduleActionCreateResult] Schedule actions created in the schedule.
-- * Deletes [BatchScheduleActionDeleteResult] Schedule actions deleted from the schedule.
-- @return BatchUpdateScheduleResponse structure as a key-value pair table
function M.BatchUpdateScheduleResponse(args)
	assert(args, "You must provide an argument table when creating BatchUpdateScheduleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Creates"] = args["Creates"],
		["Deletes"] = args["Deletes"],
	}
	asserts.AssertBatchUpdateScheduleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncoderSettings = { ["TimecodeConfig"] = true, ["AvailConfiguration"] = true, ["AvailBlanking"] = true, ["OutputGroups"] = true, ["GlobalConfiguration"] = true, ["CaptionDescriptions"] = true, ["VideoDescriptions"] = true, ["BlackoutSlate"] = true, ["AudioDescriptions"] = true, nil }

function asserts.AssertEncoderSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncoderSettings to be of type 'table'")
	assert(struct["VideoDescriptions"], "Expected key VideoDescriptions to exist in table")
	assert(struct["AudioDescriptions"], "Expected key AudioDescriptions to exist in table")
	assert(struct["OutputGroups"], "Expected key OutputGroups to exist in table")
	assert(struct["TimecodeConfig"], "Expected key TimecodeConfig to exist in table")
	if struct["TimecodeConfig"] then asserts.AssertTimecodeConfig(struct["TimecodeConfig"]) end
	if struct["AvailConfiguration"] then asserts.AssertAvailConfiguration(struct["AvailConfiguration"]) end
	if struct["AvailBlanking"] then asserts.AssertAvailBlanking(struct["AvailBlanking"]) end
	if struct["OutputGroups"] then asserts.Assert__listOfOutputGroup(struct["OutputGroups"]) end
	if struct["GlobalConfiguration"] then asserts.AssertGlobalConfiguration(struct["GlobalConfiguration"]) end
	if struct["CaptionDescriptions"] then asserts.Assert__listOfCaptionDescription(struct["CaptionDescriptions"]) end
	if struct["VideoDescriptions"] then asserts.Assert__listOfVideoDescription(struct["VideoDescriptions"]) end
	if struct["BlackoutSlate"] then asserts.AssertBlackoutSlate(struct["BlackoutSlate"]) end
	if struct["AudioDescriptions"] then asserts.Assert__listOfAudioDescription(struct["AudioDescriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncoderSettings[k], "EncoderSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncoderSettings
-- Placeholder documentation for EncoderSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimecodeConfig [TimecodeConfig] Contains settings used to acquire and adjust timecode information from inputs.
-- * AvailConfiguration [AvailConfiguration] Event-wide configuration settings for ad avail insertion.
-- * AvailBlanking [AvailBlanking] Settings for ad avail blanking.
-- * OutputGroups [__listOfOutputGroup] 
-- * GlobalConfiguration [GlobalConfiguration] Configuration settings that apply to the event as a whole.
-- * CaptionDescriptions [__listOfCaptionDescription] Settings for caption decriptions
-- * VideoDescriptions [__listOfVideoDescription] 
-- * BlackoutSlate [BlackoutSlate] Settings for blackout slate.
-- * AudioDescriptions [__listOfAudioDescription] 
-- Required key: VideoDescriptions
-- Required key: AudioDescriptions
-- Required key: OutputGroups
-- Required key: TimecodeConfig
-- @return EncoderSettings structure as a key-value pair table
function M.EncoderSettings(args)
	assert(args, "You must provide an argument table when creating EncoderSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimecodeConfig"] = args["TimecodeConfig"],
		["AvailConfiguration"] = args["AvailConfiguration"],
		["AvailBlanking"] = args["AvailBlanking"],
		["OutputGroups"] = args["OutputGroups"],
		["GlobalConfiguration"] = args["GlobalConfiguration"],
		["CaptionDescriptions"] = args["CaptionDescriptions"],
		["VideoDescriptions"] = args["VideoDescriptions"],
		["BlackoutSlate"] = args["BlackoutSlate"],
		["AudioDescriptions"] = args["AudioDescriptions"],
	}
	asserts.AssertEncoderSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsSettings = { ["AudioOnlyHlsSettings"] = true, ["StandardHlsSettings"] = true, nil }

function asserts.AssertHlsSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsSettings to be of type 'table'")
	if struct["AudioOnlyHlsSettings"] then asserts.AssertAudioOnlyHlsSettings(struct["AudioOnlyHlsSettings"]) end
	if struct["StandardHlsSettings"] then asserts.AssertStandardHlsSettings(struct["StandardHlsSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsSettings[k], "HlsSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsSettings
-- Placeholder documentation for HlsSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AudioOnlyHlsSettings [AudioOnlyHlsSettings] 
-- * StandardHlsSettings [StandardHlsSettings] 
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
		["AudioOnlyHlsSettings"] = args["AudioOnlyHlsSettings"],
		["StandardHlsSettings"] = args["StandardHlsSettings"],
	}
	asserts.AssertHlsSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MsSmoothGroupSettings = { ["EventId"] = true, ["ConnectionRetryInterval"] = true, ["SegmentationMode"] = true, ["FilecacheDuration"] = true, ["TimestampOffsetMode"] = true, ["SendDelayMs"] = true, ["SparseTrackType"] = true, ["Destination"] = true, ["AcquisitionPointId"] = true, ["RestartDelay"] = true, ["CertificateMode"] = true, ["AudioOnlyTimecodeControl"] = true, ["InputLossAction"] = true, ["FragmentLength"] = true, ["StreamManifestBehavior"] = true, ["NumRetries"] = true, ["EventIdMode"] = true, ["TimestampOffset"] = true, ["EventStopBehavior"] = true, nil }

function asserts.AssertMsSmoothGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MsSmoothGroupSettings to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["EventId"] then asserts.Assert__string(struct["EventId"]) end
	if struct["ConnectionRetryInterval"] then asserts.Assert__integerMin0(struct["ConnectionRetryInterval"]) end
	if struct["SegmentationMode"] then asserts.AssertSmoothGroupSegmentationMode(struct["SegmentationMode"]) end
	if struct["FilecacheDuration"] then asserts.Assert__integerMin0(struct["FilecacheDuration"]) end
	if struct["TimestampOffsetMode"] then asserts.AssertSmoothGroupTimestampOffsetMode(struct["TimestampOffsetMode"]) end
	if struct["SendDelayMs"] then asserts.Assert__integerMin0Max10000(struct["SendDelayMs"]) end
	if struct["SparseTrackType"] then asserts.AssertSmoothGroupSparseTrackType(struct["SparseTrackType"]) end
	if struct["Destination"] then asserts.AssertOutputLocationRef(struct["Destination"]) end
	if struct["AcquisitionPointId"] then asserts.Assert__string(struct["AcquisitionPointId"]) end
	if struct["RestartDelay"] then asserts.Assert__integerMin0(struct["RestartDelay"]) end
	if struct["CertificateMode"] then asserts.AssertSmoothGroupCertificateMode(struct["CertificateMode"]) end
	if struct["AudioOnlyTimecodeControl"] then asserts.AssertSmoothGroupAudioOnlyTimecodeControl(struct["AudioOnlyTimecodeControl"]) end
	if struct["InputLossAction"] then asserts.AssertInputLossActionForMsSmoothOut(struct["InputLossAction"]) end
	if struct["FragmentLength"] then asserts.Assert__integerMin1(struct["FragmentLength"]) end
	if struct["StreamManifestBehavior"] then asserts.AssertSmoothGroupStreamManifestBehavior(struct["StreamManifestBehavior"]) end
	if struct["NumRetries"] then asserts.Assert__integerMin0(struct["NumRetries"]) end
	if struct["EventIdMode"] then asserts.AssertSmoothGroupEventIdMode(struct["EventIdMode"]) end
	if struct["TimestampOffset"] then asserts.Assert__string(struct["TimestampOffset"]) end
	if struct["EventStopBehavior"] then asserts.AssertSmoothGroupEventStopBehavior(struct["EventStopBehavior"]) end
	for k,_ in pairs(struct) do
		assert(keys.MsSmoothGroupSettings[k], "MsSmoothGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MsSmoothGroupSettings
-- Placeholder documentation for MsSmoothGroupSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventId [__string] MS Smooth event ID to be sent to the IIS server.
--
--Should only be specified if eventIdMode is set to useConfigured.
-- * ConnectionRetryInterval [__integerMin0] Number of seconds to wait before retrying connection to the IIS server if the connection is lost. Content will be cached during this time and the cache will be be delivered to the IIS server once the connection is re-established.
-- * SegmentationMode [SmoothGroupSegmentationMode] When set to useInputSegmentation, the output segment or fragment points are set by the RAI markers from the input streams.
-- * FilecacheDuration [__integerMin0] Size in seconds of file cache for streaming outputs.
-- * TimestampOffsetMode [SmoothGroupTimestampOffsetMode] Type of timestamp date offset to use.
--- useEventStartDate: Use the date the event was started as the offset
--- useConfiguredOffset: Use an explicitly configured date as the offset
-- * SendDelayMs [__integerMin0Max10000] Number of milliseconds to delay the output from the second pipeline.
-- * SparseTrackType [SmoothGroupSparseTrackType] If set to scte35, use incoming SCTE-35 messages to generate a sparse track in this group of MS-Smooth outputs.
-- * Destination [OutputLocationRef] Smooth Streaming publish point on an IIS server. Elemental Live acts as a "Push" encoder to IIS.
-- * AcquisitionPointId [__string] The value of the "Acquisition Point Identity" element used in each message placed in the sparse track.  Only enabled if sparseTrackType is not "none".
-- * RestartDelay [__integerMin0] Number of seconds before initiating a restart due to output failure, due to exhausting the numRetries on one segment, or exceeding filecacheDuration.
-- * CertificateMode [SmoothGroupCertificateMode] If set to verifyAuthenticity, verify the https certificate chain to a trusted Certificate Authority (CA).  This will cause https outputs to self-signed certificates to fail.
-- * AudioOnlyTimecodeControl [SmoothGroupAudioOnlyTimecodeControl] If set to passthrough for an audio-only MS Smooth output, the fragment absolute time will be set to the current timecode. This option does not write timecodes to the audio elementary stream.
-- * InputLossAction [InputLossActionForMsSmoothOut] Parameter that control output group behavior on input loss.
-- * FragmentLength [__integerMin1] Length of mp4 fragments to generate (in seconds). Fragment length must be compatible with GOP size and framerate.
-- * StreamManifestBehavior [SmoothGroupStreamManifestBehavior] When set to send, send stream manifest so publishing point doesn't start until all streams start.
-- * NumRetries [__integerMin0] Number of retry attempts.
-- * EventIdMode [SmoothGroupEventIdMode] Specifies whether or not to send an event ID to the IIS server. If no event ID is sent and the same Live Event is used without changing the publishing point, clients might see cached video from the previous run.
--
--Options:
--- "useConfigured" - use the value provided in eventId
--- "useTimestamp" - generate and send an event ID based on the current timestamp
--- "noEventId" - do not send an event ID to the IIS server.
-- * TimestampOffset [__string] Timestamp offset for the event.  Only used if timestampOffsetMode is set to useConfiguredOffset.
-- * EventStopBehavior [SmoothGroupEventStopBehavior] When set to sendEos, send EOS signal to IIS server when stopping the event
-- Required key: Destination
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
		["EventId"] = args["EventId"],
		["ConnectionRetryInterval"] = args["ConnectionRetryInterval"],
		["SegmentationMode"] = args["SegmentationMode"],
		["FilecacheDuration"] = args["FilecacheDuration"],
		["TimestampOffsetMode"] = args["TimestampOffsetMode"],
		["SendDelayMs"] = args["SendDelayMs"],
		["SparseTrackType"] = args["SparseTrackType"],
		["Destination"] = args["Destination"],
		["AcquisitionPointId"] = args["AcquisitionPointId"],
		["RestartDelay"] = args["RestartDelay"],
		["CertificateMode"] = args["CertificateMode"],
		["AudioOnlyTimecodeControl"] = args["AudioOnlyTimecodeControl"],
		["InputLossAction"] = args["InputLossAction"],
		["FragmentLength"] = args["FragmentLength"],
		["StreamManifestBehavior"] = args["StreamManifestBehavior"],
		["NumRetries"] = args["NumRetries"],
		["EventIdMode"] = args["EventIdMode"],
		["TimestampOffset"] = args["TimestampOffset"],
		["EventStopBehavior"] = args["EventStopBehavior"],
	}
	asserts.AssertMsSmoothGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInputSecurityGroupResponse = { ["SecurityGroup"] = true, nil }

function asserts.AssertCreateInputSecurityGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInputSecurityGroupResponse to be of type 'table'")
	if struct["SecurityGroup"] then asserts.AssertInputSecurityGroup(struct["SecurityGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInputSecurityGroupResponse[k], "CreateInputSecurityGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInputSecurityGroupResponse
-- Placeholder documentation for CreateInputSecurityGroupResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityGroup [InputSecurityGroup] 
-- @return CreateInputSecurityGroupResponse structure as a key-value pair table
function M.CreateInputSecurityGroupResponse(args)
	assert(args, "You must provide an argument table when creating CreateInputSecurityGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityGroup"] = args["SecurityGroup"],
	}
	asserts.AssertCreateInputSecurityGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoSelectorProgramId = { ["ProgramId"] = true, nil }

function asserts.AssertVideoSelectorProgramId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoSelectorProgramId to be of type 'table'")
	if struct["ProgramId"] then asserts.Assert__integerMin0Max65536(struct["ProgramId"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoSelectorProgramId[k], "VideoSelectorProgramId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoSelectorProgramId
-- Placeholder documentation for VideoSelectorProgramId
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ProgramId [__integerMin0Max65536] Selects a specific program from within a multi-program transport stream. If the program doesn't exist, the first program within the transport stream will be selected by default.
-- @return VideoSelectorProgramId structure as a key-value pair table
function M.VideoSelectorProgramId(args)
	assert(args, "You must provide an argument table when creating VideoSelectorProgramId")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ProgramId"] = args["ProgramId"],
	}
	asserts.AssertVideoSelectorProgramId(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReservationRequest = { ["ReservationId"] = true, nil }

function asserts.AssertDeleteReservationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReservationRequest to be of type 'table'")
	assert(struct["ReservationId"], "Expected key ReservationId to exist in table")
	if struct["ReservationId"] then asserts.Assert__string(struct["ReservationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReservationRequest[k], "DeleteReservationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReservationRequest
-- Placeholder documentation for DeleteReservationRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservationId [__string] Unique reservation ID, e.g. '1234567'
-- Required key: ReservationId
-- @return DeleteReservationRequest structure as a key-value pair table
function M.DeleteReservationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteReservationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{reservationId}"] = args["ReservationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservationId"] = args["ReservationId"],
	}
	asserts.AssertDeleteReservationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOfferingRequest = { ["OfferingId"] = true, nil }

function asserts.AssertDescribeOfferingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOfferingRequest to be of type 'table'")
	assert(struct["OfferingId"], "Expected key OfferingId to exist in table")
	if struct["OfferingId"] then asserts.Assert__string(struct["OfferingId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOfferingRequest[k], "DescribeOfferingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOfferingRequest
-- Placeholder documentation for DescribeOfferingRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OfferingId [__string] Unique offering ID, e.g. '87654321'
-- Required key: OfferingId
-- @return DescribeOfferingRequest structure as a key-value pair table
function M.DescribeOfferingRequest(args)
	assert(args, "You must provide an argument table when creating DescribeOfferingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{offeringId}"] = args["OfferingId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["OfferingId"] = args["OfferingId"],
	}
	asserts.AssertDescribeOfferingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PurchaseOfferingRequest = { ["Count"] = true, ["Start"] = true, ["Name"] = true, ["RequestId"] = true, ["OfferingId"] = true, nil }

function asserts.AssertPurchaseOfferingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PurchaseOfferingRequest to be of type 'table'")
	assert(struct["OfferingId"], "Expected key OfferingId to exist in table")
	assert(struct["Count"], "Expected key Count to exist in table")
	if struct["Count"] then asserts.Assert__integerMin1(struct["Count"]) end
	if struct["Start"] then asserts.Assert__string(struct["Start"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["OfferingId"] then asserts.Assert__string(struct["OfferingId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PurchaseOfferingRequest[k], "PurchaseOfferingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PurchaseOfferingRequest
-- Placeholder documentation for PurchaseOfferingRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [__integerMin1] Number of resources
-- * Start [__string] Requested reservation start time (UTC) in ISO-8601 format. The specified time must be between the first day of the current month and one year from now. If no value is given, the default is now.
-- * Name [__string] Name for the new reservation
-- * RequestId [__string] Unique request ID to be specified. This is needed to prevent retries from creating multiple resources.
-- * OfferingId [__string] Offering to purchase, e.g. '87654321'
-- Required key: OfferingId
-- Required key: Count
-- @return PurchaseOfferingRequest structure as a key-value pair table
function M.PurchaseOfferingRequest(args)
	assert(args, "You must provide an argument table when creating PurchaseOfferingRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{offeringId}"] = args["OfferingId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["Start"] = args["Start"],
		["Name"] = args["Name"],
		["RequestId"] = args["RequestId"],
		["OfferingId"] = args["OfferingId"],
	}
	asserts.AssertPurchaseOfferingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte35TimeSignalApos = { ["WebDeliveryAllowedFlag"] = true, ["AdAvailOffset"] = true, ["NoRegionalBlackoutFlag"] = true, nil }

function asserts.AssertScte35TimeSignalApos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35TimeSignalApos to be of type 'table'")
	if struct["WebDeliveryAllowedFlag"] then asserts.AssertScte35AposWebDeliveryAllowedBehavior(struct["WebDeliveryAllowedFlag"]) end
	if struct["AdAvailOffset"] then asserts.Assert__integerMinNegative1000Max1000(struct["AdAvailOffset"]) end
	if struct["NoRegionalBlackoutFlag"] then asserts.AssertScte35AposNoRegionalBlackoutBehavior(struct["NoRegionalBlackoutFlag"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35TimeSignalApos[k], "Scte35TimeSignalApos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35TimeSignalApos
-- Placeholder documentation for Scte35TimeSignalApos
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebDeliveryAllowedFlag [Scte35AposWebDeliveryAllowedBehavior] When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set to 0 will no longer trigger blackouts or Ad Avail slates
-- * AdAvailOffset [__integerMinNegative1000Max1000] When specified, this offset (in milliseconds) is added to the input Ad Avail PTS time. This only applies to embedded SCTE 104/35 messages and does not apply to OOB messages.
-- * NoRegionalBlackoutFlag [Scte35AposNoRegionalBlackoutBehavior] When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set to 0 will no longer trigger blackouts or Ad Avail slates
-- @return Scte35TimeSignalApos structure as a key-value pair table
function M.Scte35TimeSignalApos(args)
	assert(args, "You must provide an argument table when creating Scte35TimeSignalApos")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WebDeliveryAllowedFlag"] = args["WebDeliveryAllowedFlag"],
		["AdAvailOffset"] = args["AdAvailOffset"],
		["NoRegionalBlackoutFlag"] = args["NoRegionalBlackoutFlag"],
	}
	asserts.AssertScte35TimeSignalApos(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte27SourceSettings = { ["Pid"] = true, nil }

function asserts.AssertScte27SourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte27SourceSettings to be of type 'table'")
	if struct["Pid"] then asserts.Assert__integerMin1(struct["Pid"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte27SourceSettings[k], "Scte27SourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte27SourceSettings
-- Placeholder documentation for Scte27SourceSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pid [__integerMin1] The pid field is used in conjunction with the caption selector languageCode field as follows:
--  - Specify PID and Language: Extracts captions from that PID; the language is "informational".
--  - Specify PID and omit Language: Extracts the specified PID.
--  - Omit PID and specify Language: Extracts the specified language, whichever PID that happens to be.
--  - Omit PID and omit Language: Valid only if source is DVB-Sub that is being passed through; all languages will be passed through.
-- @return Scte27SourceSettings structure as a key-value pair table
function M.Scte27SourceSettings(args)
	assert(args, "You must provide an argument table when creating Scte27SourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pid"] = args["Pid"],
	}
	asserts.AssertScte27SourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeInputResponse = { ["Name"] = true, ["AttachedChannels"] = true, ["Sources"] = true, ["State"] = true, ["SecurityGroups"] = true, ["Type"] = true, ["Id"] = true, ["Arn"] = true, ["Destinations"] = true, nil }

function asserts.AssertDescribeInputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInputResponse to be of type 'table'")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["AttachedChannels"] then asserts.Assert__listOf__string(struct["AttachedChannels"]) end
	if struct["Sources"] then asserts.Assert__listOfInputSource(struct["Sources"]) end
	if struct["State"] then asserts.AssertInputState(struct["State"]) end
	if struct["SecurityGroups"] then asserts.Assert__listOf__string(struct["SecurityGroups"]) end
	if struct["Type"] then asserts.AssertInputType(struct["Type"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Destinations"] then asserts.Assert__listOfInputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInputResponse[k], "DescribeInputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInputResponse
-- Placeholder documentation for DescribeInputResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] The user-assigned name (This is a mutable value).
-- * AttachedChannels [__listOf__string] A list of channel IDs that that input is attached to (currently an input can only be attached to one channel).
-- * Sources [__listOfInputSource] A list of the sources of the input (PULL-type).
-- * State [InputState] 
-- * SecurityGroups [__listOf__string] A list of IDs for all the security groups attached to the input.
-- * Type [InputType] 
-- * Id [__string] The generated ID of the input (unique for user account, immutable).
-- * Arn [__string] The Unique ARN of the input (generated, immutable).
-- * Destinations [__listOfInputDestination] A list of the destinations of the input (PUSH-type).
-- @return DescribeInputResponse structure as a key-value pair table
function M.DescribeInputResponse(args)
	assert(args, "You must provide an argument table when creating DescribeInputResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["AttachedChannels"] = args["AttachedChannels"],
		["Sources"] = args["Sources"],
		["State"] = args["State"],
		["SecurityGroups"] = args["SecurityGroups"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertDescribeInputResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte35ReturnToNetworkScheduleActionSettings = { ["SpliceEventId"] = true, nil }

function asserts.AssertScte35ReturnToNetworkScheduleActionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35ReturnToNetworkScheduleActionSettings to be of type 'table'")
	assert(struct["SpliceEventId"], "Expected key SpliceEventId to exist in table")
	if struct["SpliceEventId"] then asserts.Assert__integerMin0Max4294967295(struct["SpliceEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35ReturnToNetworkScheduleActionSettings[k], "Scte35ReturnToNetworkScheduleActionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35ReturnToNetworkScheduleActionSettings
-- Settings for a SCTE-35 return_to_network message.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpliceEventId [__integerMin0Max4294967295] The splice_event_id for the SCTE-35 splice_insert, as defined in SCTE-35.
-- Required key: SpliceEventId
-- @return Scte35ReturnToNetworkScheduleActionSettings structure as a key-value pair table
function M.Scte35ReturnToNetworkScheduleActionSettings(args)
	assert(args, "You must provide an argument table when creating Scte35ReturnToNetworkScheduleActionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpliceEventId"] = args["SpliceEventId"],
	}
	asserts.AssertScte35ReturnToNetworkScheduleActionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInputSecurityGroupRequest = { ["InputSecurityGroupId"] = true, nil }

function asserts.AssertDeleteInputSecurityGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInputSecurityGroupRequest to be of type 'table'")
	assert(struct["InputSecurityGroupId"], "Expected key InputSecurityGroupId to exist in table")
	if struct["InputSecurityGroupId"] then asserts.Assert__string(struct["InputSecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInputSecurityGroupRequest[k], "DeleteInputSecurityGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInputSecurityGroupRequest
-- Placeholder documentation for DeleteInputSecurityGroupRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputSecurityGroupId [__string] The Input Security Group to delete
-- Required key: InputSecurityGroupId
-- @return DeleteInputSecurityGroupRequest structure as a key-value pair table
function M.DeleteInputSecurityGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInputSecurityGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{inputSecurityGroupId}"] = args["InputSecurityGroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InputSecurityGroupId"] = args["InputSecurityGroupId"],
	}
	asserts.AssertDeleteInputSecurityGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Reservation = { ["Count"] = true, ["DurationUnits"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["End"] = true, ["Name"] = true, ["ResourceSpecification"] = true, ["OfferingId"] = true, ["CurrencyCode"] = true, ["UsagePrice"] = true, ["Start"] = true, ["State"] = true, ["ReservationId"] = true, ["OfferingDescription"] = true, ["Duration"] = true, ["Region"] = true, ["Arn"] = true, nil }

function asserts.AssertReservation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Reservation to be of type 'table'")
	if struct["Count"] then asserts.Assert__integer(struct["Count"]) end
	if struct["DurationUnits"] then asserts.AssertOfferingDurationUnits(struct["DurationUnits"]) end
	if struct["OfferingType"] then asserts.AssertOfferingType(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.Assert__double(struct["FixedPrice"]) end
	if struct["End"] then asserts.Assert__string(struct["End"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["ResourceSpecification"] then asserts.AssertReservationResourceSpecification(struct["ResourceSpecification"]) end
	if struct["OfferingId"] then asserts.Assert__string(struct["OfferingId"]) end
	if struct["CurrencyCode"] then asserts.Assert__string(struct["CurrencyCode"]) end
	if struct["UsagePrice"] then asserts.Assert__double(struct["UsagePrice"]) end
	if struct["Start"] then asserts.Assert__string(struct["Start"]) end
	if struct["State"] then asserts.AssertReservationState(struct["State"]) end
	if struct["ReservationId"] then asserts.Assert__string(struct["ReservationId"]) end
	if struct["OfferingDescription"] then asserts.Assert__string(struct["OfferingDescription"]) end
	if struct["Duration"] then asserts.Assert__integer(struct["Duration"]) end
	if struct["Region"] then asserts.Assert__string(struct["Region"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Reservation[k], "Reservation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Reservation
-- Reserved resources available to use
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [__integer] Number of reserved resources
-- * DurationUnits [OfferingDurationUnits] Units for duration, e.g. 'MONTHS'
-- * OfferingType [OfferingType] Offering type, e.g. 'NO_UPFRONT'
-- * FixedPrice [__double] One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
-- * End [__string] Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
-- * Name [__string] User specified reservation name
-- * ResourceSpecification [ReservationResourceSpecification] Resource configuration details
-- * OfferingId [__string] Unique offering ID, e.g. '87654321'
-- * CurrencyCode [__string] Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
-- * UsagePrice [__double] Recurring usage charge for each reserved resource, e.g. '157.0'
-- * Start [__string] Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
-- * State [ReservationState] Current state of reservation, e.g. 'ACTIVE'
-- * ReservationId [__string] Unique reservation ID, e.g. '1234567'
-- * OfferingDescription [__string] Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
-- * Duration [__integer] Lease duration, e.g. '12'
-- * Region [__string] AWS region, e.g. 'us-west-2'
-- * Arn [__string] Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
-- @return Reservation structure as a key-value pair table
function M.Reservation(args)
	assert(args, "You must provide an argument table when creating Reservation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["DurationUnits"] = args["DurationUnits"],
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["End"] = args["End"],
		["Name"] = args["Name"],
		["ResourceSpecification"] = args["ResourceSpecification"],
		["OfferingId"] = args["OfferingId"],
		["CurrencyCode"] = args["CurrencyCode"],
		["UsagePrice"] = args["UsagePrice"],
		["Start"] = args["Start"],
		["State"] = args["State"],
		["ReservationId"] = args["ReservationId"],
		["OfferingDescription"] = args["OfferingDescription"],
		["Duration"] = args["Duration"],
		["Region"] = args["Region"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertReservation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReservationResponse = { ["Count"] = true, ["DurationUnits"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["End"] = true, ["Name"] = true, ["ResourceSpecification"] = true, ["OfferingId"] = true, ["CurrencyCode"] = true, ["UsagePrice"] = true, ["Start"] = true, ["State"] = true, ["ReservationId"] = true, ["OfferingDescription"] = true, ["Duration"] = true, ["Region"] = true, ["Arn"] = true, nil }

function asserts.AssertDeleteReservationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReservationResponse to be of type 'table'")
	if struct["Count"] then asserts.Assert__integer(struct["Count"]) end
	if struct["DurationUnits"] then asserts.AssertOfferingDurationUnits(struct["DurationUnits"]) end
	if struct["OfferingType"] then asserts.AssertOfferingType(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.Assert__double(struct["FixedPrice"]) end
	if struct["End"] then asserts.Assert__string(struct["End"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["ResourceSpecification"] then asserts.AssertReservationResourceSpecification(struct["ResourceSpecification"]) end
	if struct["OfferingId"] then asserts.Assert__string(struct["OfferingId"]) end
	if struct["CurrencyCode"] then asserts.Assert__string(struct["CurrencyCode"]) end
	if struct["UsagePrice"] then asserts.Assert__double(struct["UsagePrice"]) end
	if struct["Start"] then asserts.Assert__string(struct["Start"]) end
	if struct["State"] then asserts.AssertReservationState(struct["State"]) end
	if struct["ReservationId"] then asserts.Assert__string(struct["ReservationId"]) end
	if struct["OfferingDescription"] then asserts.Assert__string(struct["OfferingDescription"]) end
	if struct["Duration"] then asserts.Assert__integer(struct["Duration"]) end
	if struct["Region"] then asserts.Assert__string(struct["Region"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReservationResponse[k], "DeleteReservationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReservationResponse
-- Placeholder documentation for DeleteReservationResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [__integer] Number of reserved resources
-- * DurationUnits [OfferingDurationUnits] Units for duration, e.g. 'MONTHS'
-- * OfferingType [OfferingType] Offering type, e.g. 'NO_UPFRONT'
-- * FixedPrice [__double] One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
-- * End [__string] Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
-- * Name [__string] User specified reservation name
-- * ResourceSpecification [ReservationResourceSpecification] Resource configuration details
-- * OfferingId [__string] Unique offering ID, e.g. '87654321'
-- * CurrencyCode [__string] Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
-- * UsagePrice [__double] Recurring usage charge for each reserved resource, e.g. '157.0'
-- * Start [__string] Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
-- * State [ReservationState] Current state of reservation, e.g. 'ACTIVE'
-- * ReservationId [__string] Unique reservation ID, e.g. '1234567'
-- * OfferingDescription [__string] Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
-- * Duration [__integer] Lease duration, e.g. '12'
-- * Region [__string] AWS region, e.g. 'us-west-2'
-- * Arn [__string] Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
-- @return DeleteReservationResponse structure as a key-value pair table
function M.DeleteReservationResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReservationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["DurationUnits"] = args["DurationUnits"],
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["End"] = args["End"],
		["Name"] = args["Name"],
		["ResourceSpecification"] = args["ResourceSpecification"],
		["OfferingId"] = args["OfferingId"],
		["CurrencyCode"] = args["CurrencyCode"],
		["UsagePrice"] = args["UsagePrice"],
		["Start"] = args["Start"],
		["State"] = args["State"],
		["ReservationId"] = args["ReservationId"],
		["OfferingDescription"] = args["OfferingDescription"],
		["Duration"] = args["Duration"],
		["Region"] = args["Region"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertDeleteReservationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte35SegmentationDescriptor = { ["SubSegmentsExpected"] = true, ["SubSegmentNum"] = true, ["SegmentsExpected"] = true, ["DeliveryRestrictions"] = true, ["SegmentationDuration"] = true, ["SegmentationCancelIndicator"] = true, ["SegmentationEventId"] = true, ["SegmentNum"] = true, ["SegmentationUpidType"] = true, ["SegmentationUpid"] = true, ["SegmentationTypeId"] = true, nil }

function asserts.AssertScte35SegmentationDescriptor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35SegmentationDescriptor to be of type 'table'")
	assert(struct["SegmentationEventId"], "Expected key SegmentationEventId to exist in table")
	assert(struct["SegmentationCancelIndicator"], "Expected key SegmentationCancelIndicator to exist in table")
	if struct["SubSegmentsExpected"] then asserts.Assert__integerMin0Max255(struct["SubSegmentsExpected"]) end
	if struct["SubSegmentNum"] then asserts.Assert__integerMin0Max255(struct["SubSegmentNum"]) end
	if struct["SegmentsExpected"] then asserts.Assert__integerMin0Max255(struct["SegmentsExpected"]) end
	if struct["DeliveryRestrictions"] then asserts.AssertScte35DeliveryRestrictions(struct["DeliveryRestrictions"]) end
	if struct["SegmentationDuration"] then asserts.Assert__integerMin0Max1099511627775(struct["SegmentationDuration"]) end
	if struct["SegmentationCancelIndicator"] then asserts.AssertScte35SegmentationCancelIndicator(struct["SegmentationCancelIndicator"]) end
	if struct["SegmentationEventId"] then asserts.Assert__integerMin0Max4294967295(struct["SegmentationEventId"]) end
	if struct["SegmentNum"] then asserts.Assert__integerMin0Max255(struct["SegmentNum"]) end
	if struct["SegmentationUpidType"] then asserts.Assert__integerMin0Max255(struct["SegmentationUpidType"]) end
	if struct["SegmentationUpid"] then asserts.Assert__string(struct["SegmentationUpid"]) end
	if struct["SegmentationTypeId"] then asserts.Assert__integerMin0Max255(struct["SegmentationTypeId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35SegmentationDescriptor[k], "Scte35SegmentationDescriptor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35SegmentationDescriptor
-- Corresponds to SCTE-35 segmentation_descriptor.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubSegmentsExpected [__integerMin0Max255] Corresponds to SCTE-35 sub_segments_expected. A value that is valid for the specified segmentation_type_id.
-- * SubSegmentNum [__integerMin0Max255] Corresponds to SCTE-35 sub_segment_num. A value that is valid for the specified segmentation_type_id.
-- * SegmentsExpected [__integerMin0Max255] Corresponds to SCTE-35 segments_expected. A value that is valid for the specified segmentation_type_id.
-- * DeliveryRestrictions [Scte35DeliveryRestrictions] Holds the four SCTE-35 delivery restriction parameters.
-- * SegmentationDuration [__integerMin0Max1099511627775] Corresponds to SCTE-35 segmentation_duration. Optional. The duration for the time_signal, in 90 KHz ticks. To convert seconds to ticks, multiple the seconds by 90,000. Enter time in 90 KHz clock ticks. If you do not enter a duration, the time_signal will continue until you insert a cancellation message.
-- * SegmentationCancelIndicator [Scte35SegmentationCancelIndicator] Corresponds to SCTE-35 segmentation_event_cancel_indicator.
-- * SegmentationEventId [__integerMin0Max4294967295] Corresponds to SCTE-35 segmentation_event_id. 
-- * SegmentNum [__integerMin0Max255] Corresponds to SCTE-35 segment_num. A value that is valid for the specified segmentation_type_id.
-- * SegmentationUpidType [__integerMin0Max255] Corresponds to SCTE-35 segmentation_upid_type. On the console, enter one of the types listed in the SCTE-35 specification, converted to a decimal. For example, "0x0C" hex from the specification is "12" in decimal. In the CLI, API, or an SDK, enter one of the types listed in the SCTE-35 specification, in either hex (for example, "0x0C" ) or in decimal (for example, "12").
-- * SegmentationUpid [__string] Corresponds to SCTE-35 segmentation_upid. Enter a string containing the hexadecimal representation of the characters that make up the SCTE-35 segmentation_upid value. Must contain an even number of hex characters. Do not include spaces between each hex pair. For example, the ASCII "ADS Information" becomes hex "41445320496e666f726d6174696f6e.
-- * SegmentationTypeId [__integerMin0Max255] Corresponds to SCTE-35 segmentation_type_id. One of the segmentation_type_id values listed in the SCTE-35 specification. On the console, enter the ID in decimal (for example, "52"). In the CLI, API, or an SDK, enter the ID in hex (for example, "0x34") or decimal (for example, "52").
-- Required key: SegmentationEventId
-- Required key: SegmentationCancelIndicator
-- @return Scte35SegmentationDescriptor structure as a key-value pair table
function M.Scte35SegmentationDescriptor(args)
	assert(args, "You must provide an argument table when creating Scte35SegmentationDescriptor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubSegmentsExpected"] = args["SubSegmentsExpected"],
		["SubSegmentNum"] = args["SubSegmentNum"],
		["SegmentsExpected"] = args["SegmentsExpected"],
		["DeliveryRestrictions"] = args["DeliveryRestrictions"],
		["SegmentationDuration"] = args["SegmentationDuration"],
		["SegmentationCancelIndicator"] = args["SegmentationCancelIndicator"],
		["SegmentationEventId"] = args["SegmentationEventId"],
		["SegmentNum"] = args["SegmentNum"],
		["SegmentationUpidType"] = args["SegmentationUpidType"],
		["SegmentationUpid"] = args["SegmentationUpid"],
		["SegmentationTypeId"] = args["SegmentationTypeId"],
	}
	asserts.AssertScte35SegmentationDescriptor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputDestination = { ["Url"] = true, ["Ip"] = true, ["Port"] = true, nil }

function asserts.AssertInputDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputDestination to be of type 'table'")
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["Ip"] then asserts.Assert__string(struct["Ip"]) end
	if struct["Port"] then asserts.Assert__string(struct["Port"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputDestination[k], "InputDestination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputDestination
-- The settings for a PUSH type input.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [__string] This represents the endpoint that the customer stream will be
--pushed to.
--
-- * Ip [__string] The system-generated static IP address of endpoint.
--It remains fixed for the lifetime of the input.
--
-- * Port [__string] The port number for the input.
-- @return InputDestination structure as a key-value pair table
function M.InputDestination(args)
	assert(args, "You must provide an argument table when creating InputDestination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["Ip"] = args["Ip"],
		["Port"] = args["Port"],
	}
	asserts.AssertInputDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOfferingsResponse = { ["Offerings"] = true, ["NextToken"] = true, nil }

function asserts.AssertListOfferingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOfferingsResponse to be of type 'table'")
	if struct["Offerings"] then asserts.Assert__listOfOffering(struct["Offerings"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOfferingsResponse[k], "ListOfferingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOfferingsResponse
-- Placeholder documentation for ListOfferingsResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Offerings [__listOfOffering] List of offerings
-- * NextToken [__string] Token to retrieve the next page of results
-- @return ListOfferingsResponse structure as a key-value pair table
function M.ListOfferingsResponse(args)
	assert(args, "You must provide an argument table when creating ListOfferingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Offerings"] = args["Offerings"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListOfferingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionLanguageMapping = { ["CaptionChannel"] = true, ["LanguageDescription"] = true, ["LanguageCode"] = true, nil }

function asserts.AssertCaptionLanguageMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionLanguageMapping to be of type 'table'")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	assert(struct["LanguageDescription"], "Expected key LanguageDescription to exist in table")
	assert(struct["CaptionChannel"], "Expected key CaptionChannel to exist in table")
	if struct["CaptionChannel"] then asserts.Assert__integerMin1Max4(struct["CaptionChannel"]) end
	if struct["LanguageDescription"] then asserts.Assert__stringMin1(struct["LanguageDescription"]) end
	if struct["LanguageCode"] then asserts.Assert__stringMin3Max3(struct["LanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionLanguageMapping[k], "CaptionLanguageMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionLanguageMapping
-- Maps a caption channel to an ISO 693-2 language code (http://www.loc.gov/standards/iso639-2), with an optional description.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CaptionChannel [__integerMin1Max4] The closed caption channel being described by this CaptionLanguageMapping.  Each channel mapping must have a unique channel number (maximum of 4)
-- * LanguageDescription [__stringMin1] Textual description of language
-- * LanguageCode [__stringMin3Max3] Three character ISO 639-2 language code (see http://www.loc.gov/standards/iso639-2)
-- Required key: LanguageCode
-- Required key: LanguageDescription
-- Required key: CaptionChannel
-- @return CaptionLanguageMapping structure as a key-value pair table
function M.CaptionLanguageMapping(args)
	assert(args, "You must provide an argument table when creating CaptionLanguageMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CaptionChannel"] = args["CaptionChannel"],
		["LanguageDescription"] = args["LanguageDescription"],
		["LanguageCode"] = args["LanguageCode"],
	}
	asserts.AssertCaptionLanguageMapping(all_args)
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
	if struct["PageNumber"] then asserts.Assert__string(struct["PageNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.TeletextSourceSettings[k], "TeletextSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TeletextSourceSettings
-- Placeholder documentation for TeletextSourceSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PageNumber [__string] Specifies the teletext page number within the data stream from which to extract captions. Range of 0x100 (256) to 0x8FF (2303). Unused for passthrough. Should be specified as a hexadecimal string with no "0x" prefix.
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

keys.DescribeInputSecurityGroupRequest = { ["InputSecurityGroupId"] = true, nil }

function asserts.AssertDescribeInputSecurityGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInputSecurityGroupRequest to be of type 'table'")
	assert(struct["InputSecurityGroupId"], "Expected key InputSecurityGroupId to exist in table")
	if struct["InputSecurityGroupId"] then asserts.Assert__string(struct["InputSecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInputSecurityGroupRequest[k], "DescribeInputSecurityGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInputSecurityGroupRequest
-- Placeholder documentation for DescribeInputSecurityGroupRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputSecurityGroupId [__string] The id of the Input Security Group to describe
-- Required key: InputSecurityGroupId
-- @return DescribeInputSecurityGroupRequest structure as a key-value pair table
function M.DescribeInputSecurityGroupRequest(args)
	assert(args, "You must provide an argument table when creating DescribeInputSecurityGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{inputSecurityGroupId}"] = args["InputSecurityGroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InputSecurityGroupId"] = args["InputSecurityGroupId"],
	}
	asserts.AssertDescribeInputSecurityGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInputSecurityGroupsResponse = { ["NextToken"] = true, ["InputSecurityGroups"] = true, nil }

function asserts.AssertListInputSecurityGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInputSecurityGroupsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["InputSecurityGroups"] then asserts.Assert__listOfInputSecurityGroup(struct["InputSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInputSecurityGroupsResponse[k], "ListInputSecurityGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInputSecurityGroupsResponse
-- Placeholder documentation for ListInputSecurityGroupsResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] 
-- * InputSecurityGroups [__listOfInputSecurityGroup] List of input security groups
-- @return ListInputSecurityGroupsResponse structure as a key-value pair table
function M.ListInputSecurityGroupsResponse(args)
	assert(args, "You must provide an argument table when creating ListInputSecurityGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["InputSecurityGroups"] = args["InputSecurityGroups"],
	}
	asserts.AssertListInputSecurityGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsBasicPutSettings = { ["ConnectionRetryInterval"] = true, ["NumRetries"] = true, ["FilecacheDuration"] = true, ["RestartDelay"] = true, nil }

function asserts.AssertHlsBasicPutSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsBasicPutSettings to be of type 'table'")
	if struct["ConnectionRetryInterval"] then asserts.Assert__integerMin0(struct["ConnectionRetryInterval"]) end
	if struct["NumRetries"] then asserts.Assert__integerMin0(struct["NumRetries"]) end
	if struct["FilecacheDuration"] then asserts.Assert__integerMin0Max600(struct["FilecacheDuration"]) end
	if struct["RestartDelay"] then asserts.Assert__integerMin0Max15(struct["RestartDelay"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsBasicPutSettings[k], "HlsBasicPutSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsBasicPutSettings
-- Placeholder documentation for HlsBasicPutSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionRetryInterval [__integerMin0] Number of seconds to wait before retrying connection to the CDN if the connection is lost.
-- * NumRetries [__integerMin0] Number of retry attempts that will be made before the Live Event is put into an error state.
-- * FilecacheDuration [__integerMin0Max600] Size in seconds of file cache for streaming outputs.
-- * RestartDelay [__integerMin0Max15] If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
-- @return HlsBasicPutSettings structure as a key-value pair table
function M.HlsBasicPutSettings(args)
	assert(args, "You must provide an argument table when creating HlsBasicPutSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionRetryInterval"] = args["ConnectionRetryInterval"],
		["NumRetries"] = args["NumRetries"],
		["FilecacheDuration"] = args["FilecacheDuration"],
		["RestartDelay"] = args["RestartDelay"],
	}
	asserts.AssertHlsBasicPutSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RtmpCaptionInfoDestinationSettings = { nil }

function asserts.AssertRtmpCaptionInfoDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RtmpCaptionInfoDestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RtmpCaptionInfoDestinationSettings[k], "RtmpCaptionInfoDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RtmpCaptionInfoDestinationSettings
-- Placeholder documentation for RtmpCaptionInfoDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RtmpCaptionInfoDestinationSettings structure as a key-value pair table
function M.RtmpCaptionInfoDestinationSettings(args)
	assert(args, "You must provide an argument table when creating RtmpCaptionInfoDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRtmpCaptionInfoDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartChannelResponse = { ["InputAttachments"] = true, ["Name"] = true, ["LogLevel"] = true, ["RoleArn"] = true, ["State"] = true, ["EgressEndpoints"] = true, ["InputSpecification"] = true, ["PipelinesRunningCount"] = true, ["EncoderSettings"] = true, ["Id"] = true, ["Arn"] = true, ["Destinations"] = true, nil }

function asserts.AssertStartChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartChannelResponse to be of type 'table'")
	if struct["InputAttachments"] then asserts.Assert__listOfInputAttachment(struct["InputAttachments"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LogLevel"] then asserts.AssertLogLevel(struct["LogLevel"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["State"] then asserts.AssertChannelState(struct["State"]) end
	if struct["EgressEndpoints"] then asserts.Assert__listOfChannelEgressEndpoint(struct["EgressEndpoints"]) end
	if struct["InputSpecification"] then asserts.AssertInputSpecification(struct["InputSpecification"]) end
	if struct["PipelinesRunningCount"] then asserts.Assert__integer(struct["PipelinesRunningCount"]) end
	if struct["EncoderSettings"] then asserts.AssertEncoderSettings(struct["EncoderSettings"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Destinations"] then asserts.Assert__listOfOutputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartChannelResponse[k], "StartChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartChannelResponse
-- Placeholder documentation for StartChannelResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputAttachments [__listOfInputAttachment] List of input attachments for channel.
-- * Name [__string] The name of the channel. (user-mutable)
-- * LogLevel [LogLevel] The log level being written to CloudWatch Logs.
-- * RoleArn [__string] The Amazon Resource Name (ARN) of the role assumed when running the Channel.
-- * State [ChannelState] 
-- * EgressEndpoints [__listOfChannelEgressEndpoint] The endpoints where outgoing connections initiate from
-- * InputSpecification [InputSpecification] 
-- * PipelinesRunningCount [__integer] The number of currently healthy pipelines.
-- * EncoderSettings [EncoderSettings] 
-- * Id [__string] The unique id of the channel.
-- * Arn [__string] The unique arn of the channel.
-- * Destinations [__listOfOutputDestination] A list of destinations of the channel. For UDP outputs, there is one
--destination per output. For other types (HLS, for example), there is
--one destination per packager.
--
-- @return StartChannelResponse structure as a key-value pair table
function M.StartChannelResponse(args)
	assert(args, "You must provide an argument table when creating StartChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputAttachments"] = args["InputAttachments"],
		["Name"] = args["Name"],
		["LogLevel"] = args["LogLevel"],
		["RoleArn"] = args["RoleArn"],
		["State"] = args["State"],
		["EgressEndpoints"] = args["EgressEndpoints"],
		["InputSpecification"] = args["InputSpecification"],
		["PipelinesRunningCount"] = args["PipelinesRunningCount"],
		["EncoderSettings"] = args["EncoderSettings"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertStartChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateChannelRequest = { ["InputAttachments"] = true, ["Name"] = true, ["LogLevel"] = true, ["RoleArn"] = true, ["ChannelId"] = true, ["InputSpecification"] = true, ["EncoderSettings"] = true, ["Destinations"] = true, nil }

function asserts.AssertUpdateChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChannelRequest to be of type 'table'")
	assert(struct["ChannelId"], "Expected key ChannelId to exist in table")
	if struct["InputAttachments"] then asserts.Assert__listOfInputAttachment(struct["InputAttachments"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LogLevel"] then asserts.AssertLogLevel(struct["LogLevel"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["InputSpecification"] then asserts.AssertInputSpecification(struct["InputSpecification"]) end
	if struct["EncoderSettings"] then asserts.AssertEncoderSettings(struct["EncoderSettings"]) end
	if struct["Destinations"] then asserts.Assert__listOfOutputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateChannelRequest[k], "UpdateChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChannelRequest
-- A request to update a channel.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputAttachments [__listOfInputAttachment] 
-- * Name [__string] The name of the channel.
-- * LogLevel [LogLevel] The log level to write to CloudWatch Logs.
-- * RoleArn [__string] An optional Amazon Resource Name (ARN) of the role to assume when running the Channel. If you do not specify this on an update call but the role was previously set that role will be removed.
-- * ChannelId [__string] channel ID
-- * InputSpecification [InputSpecification] Specification of input for this channel (max. bitrate, resolution, codec, etc.)
-- * EncoderSettings [EncoderSettings] The encoder settings for this channel.
-- * Destinations [__listOfOutputDestination] A list of output destinations for this channel.
-- Required key: ChannelId
-- @return UpdateChannelRequest structure as a key-value pair table
function M.UpdateChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{channelId}"] = args["ChannelId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InputAttachments"] = args["InputAttachments"],
		["Name"] = args["Name"],
		["LogLevel"] = args["LogLevel"],
		["RoleArn"] = args["RoleArn"],
		["ChannelId"] = args["ChannelId"],
		["InputSpecification"] = args["InputSpecification"],
		["EncoderSettings"] = args["EncoderSettings"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertUpdateChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArchiveOutputSettings = { ["NameModifier"] = true, ["Extension"] = true, ["ContainerSettings"] = true, nil }

function asserts.AssertArchiveOutputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArchiveOutputSettings to be of type 'table'")
	assert(struct["ContainerSettings"], "Expected key ContainerSettings to exist in table")
	if struct["NameModifier"] then asserts.Assert__string(struct["NameModifier"]) end
	if struct["Extension"] then asserts.Assert__string(struct["Extension"]) end
	if struct["ContainerSettings"] then asserts.AssertArchiveContainerSettings(struct["ContainerSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArchiveOutputSettings[k], "ArchiveOutputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArchiveOutputSettings
-- Placeholder documentation for ArchiveOutputSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NameModifier [__string] String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
-- * Extension [__string] Output file extension. If excluded, this will be auto-selected from the container type.
-- * ContainerSettings [ArchiveContainerSettings] Settings specific to the container type of the file.
-- Required key: ContainerSettings
-- @return ArchiveOutputSettings structure as a key-value pair table
function M.ArchiveOutputSettings(args)
	assert(args, "You must provide an argument table when creating ArchiveOutputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NameModifier"] = args["NameModifier"],
		["Extension"] = args["Extension"],
		["ContainerSettings"] = args["ContainerSettings"],
	}
	asserts.AssertArchiveOutputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScheduleRequest = { ["ChannelId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeScheduleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScheduleRequest to be of type 'table'")
	assert(struct["ChannelId"], "Expected key ChannelId to exist in table")
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScheduleRequest[k], "DescribeScheduleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScheduleRequest
-- Placeholder documentation for DescribeScheduleRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelId [__string] Id of the channel whose schedule is being updated.
-- * NextToken [__string] 
-- * MaxResults [MaxResults] 
-- Required key: ChannelId
-- @return DescribeScheduleRequest structure as a key-value pair table
function M.DescribeScheduleRequest(args)
	assert(args, "You must provide an argument table when creating DescribeScheduleRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
        ["{channelId}"] = args["ChannelId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelId"] = args["ChannelId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeScheduleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte35DescriptorSettings = { ["SegmentationDescriptorScte35DescriptorSettings"] = true, nil }

function asserts.AssertScte35DescriptorSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35DescriptorSettings to be of type 'table'")
	assert(struct["SegmentationDescriptorScte35DescriptorSettings"], "Expected key SegmentationDescriptorScte35DescriptorSettings to exist in table")
	if struct["SegmentationDescriptorScte35DescriptorSettings"] then asserts.AssertScte35SegmentationDescriptor(struct["SegmentationDescriptorScte35DescriptorSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35DescriptorSettings[k], "Scte35DescriptorSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35DescriptorSettings
-- SCTE-35 Descriptor settings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentationDescriptorScte35DescriptorSettings [Scte35SegmentationDescriptor] SCTE-35 Segmentation Descriptor.
-- Required key: SegmentationDescriptorScte35DescriptorSettings
-- @return Scte35DescriptorSettings structure as a key-value pair table
function M.Scte35DescriptorSettings(args)
	assert(args, "You must provide an argument table when creating Scte35DescriptorSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentationDescriptorScte35DescriptorSettings"] = args["SegmentationDescriptorScte35DescriptorSettings"],
	}
	asserts.AssertScte35DescriptorSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionSelectorSettings = { ["AribSourceSettings"] = true, ["Scte20SourceSettings"] = true, ["DvbSubSourceSettings"] = true, ["EmbeddedSourceSettings"] = true, ["Scte27SourceSettings"] = true, ["TeletextSourceSettings"] = true, nil }

function asserts.AssertCaptionSelectorSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionSelectorSettings to be of type 'table'")
	if struct["AribSourceSettings"] then asserts.AssertAribSourceSettings(struct["AribSourceSettings"]) end
	if struct["Scte20SourceSettings"] then asserts.AssertScte20SourceSettings(struct["Scte20SourceSettings"]) end
	if struct["DvbSubSourceSettings"] then asserts.AssertDvbSubSourceSettings(struct["DvbSubSourceSettings"]) end
	if struct["EmbeddedSourceSettings"] then asserts.AssertEmbeddedSourceSettings(struct["EmbeddedSourceSettings"]) end
	if struct["Scte27SourceSettings"] then asserts.AssertScte27SourceSettings(struct["Scte27SourceSettings"]) end
	if struct["TeletextSourceSettings"] then asserts.AssertTeletextSourceSettings(struct["TeletextSourceSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionSelectorSettings[k], "CaptionSelectorSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionSelectorSettings
-- Placeholder documentation for CaptionSelectorSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AribSourceSettings [AribSourceSettings] 
-- * Scte20SourceSettings [Scte20SourceSettings] 
-- * DvbSubSourceSettings [DvbSubSourceSettings] 
-- * EmbeddedSourceSettings [EmbeddedSourceSettings] 
-- * Scte27SourceSettings [Scte27SourceSettings] 
-- * TeletextSourceSettings [TeletextSourceSettings] 
-- @return CaptionSelectorSettings structure as a key-value pair table
function M.CaptionSelectorSettings(args)
	assert(args, "You must provide an argument table when creating CaptionSelectorSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AribSourceSettings"] = args["AribSourceSettings"],
		["Scte20SourceSettings"] = args["Scte20SourceSettings"],
		["DvbSubSourceSettings"] = args["DvbSubSourceSettings"],
		["EmbeddedSourceSettings"] = args["EmbeddedSourceSettings"],
		["Scte27SourceSettings"] = args["Scte27SourceSettings"],
		["TeletextSourceSettings"] = args["TeletextSourceSettings"],
	}
	asserts.AssertCaptionSelectorSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte20SourceSettings = { ["Source608ChannelNumber"] = true, ["Convert608To708"] = true, nil }

function asserts.AssertScte20SourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte20SourceSettings to be of type 'table'")
	if struct["Source608ChannelNumber"] then asserts.Assert__integerMin1Max4(struct["Source608ChannelNumber"]) end
	if struct["Convert608To708"] then asserts.AssertScte20Convert608To708(struct["Convert608To708"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte20SourceSettings[k], "Scte20SourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte20SourceSettings
-- Placeholder documentation for Scte20SourceSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source608ChannelNumber [__integerMin1Max4] Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
-- * Convert608To708 [Scte20Convert608To708] If upconvert, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
-- @return Scte20SourceSettings structure as a key-value pair table
function M.Scte20SourceSettings(args)
	assert(args, "You must provide an argument table when creating Scte20SourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Source608ChannelNumber"] = args["Source608ChannelNumber"],
		["Convert608To708"] = args["Convert608To708"],
	}
	asserts.AssertScte20SourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInputsResponse = { ["Inputs"] = true, ["NextToken"] = true, nil }

function asserts.AssertListInputsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInputsResponse to be of type 'table'")
	if struct["Inputs"] then asserts.Assert__listOfInput(struct["Inputs"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInputsResponse[k], "ListInputsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInputsResponse
-- Placeholder documentation for ListInputsResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Inputs [__listOfInput] 
-- * NextToken [__string] 
-- @return ListInputsResponse structure as a key-value pair table
function M.ListInputsResponse(args)
	assert(args, "You must provide an argument table when creating ListInputsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Inputs"] = args["Inputs"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListInputsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInputRequest = { ["Name"] = true, ["Sources"] = true, ["RequestId"] = true, ["Destinations"] = true, ["Type"] = true, ["InputSecurityGroups"] = true, nil }

function asserts.AssertCreateInputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInputRequest to be of type 'table'")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["Sources"] then asserts.Assert__listOfInputSourceRequest(struct["Sources"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["Destinations"] then asserts.Assert__listOfInputDestinationRequest(struct["Destinations"]) end
	if struct["Type"] then asserts.AssertInputType(struct["Type"]) end
	if struct["InputSecurityGroups"] then asserts.Assert__listOf__string(struct["InputSecurityGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInputRequest[k], "CreateInputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInputRequest
-- The name of the input
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] Name of the input.
-- * Sources [__listOfInputSourceRequest] The source URLs for a PULL-type input. Every PULL type input needs
--exactly two source URLs for redundancy.
--Only specify sources for PULL type Inputs. Leave Destinations empty.
--
-- * RequestId [__string] Unique identifier of the request to ensure the request is handled
--exactly once in case of retries.
--
-- * Destinations [__listOfInputDestinationRequest] Destination settings for PUSH type inputs.
-- * Type [InputType] 
-- * InputSecurityGroups [__listOf__string] A list of security groups referenced by IDs to attach to the input.
-- @return CreateInputRequest structure as a key-value pair table
function M.CreateInputRequest(args)
	assert(args, "You must provide an argument table when creating CreateInputRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Sources"] = args["Sources"],
		["RequestId"] = args["RequestId"],
		["Destinations"] = args["Destinations"],
		["Type"] = args["Type"],
		["InputSecurityGroups"] = args["InputSecurityGroups"],
	}
	asserts.AssertCreateInputRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KeyProviderSettings = { ["StaticKeySettings"] = true, nil }

function asserts.AssertKeyProviderSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KeyProviderSettings to be of type 'table'")
	if struct["StaticKeySettings"] then asserts.AssertStaticKeySettings(struct["StaticKeySettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.KeyProviderSettings[k], "KeyProviderSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KeyProviderSettings
-- Placeholder documentation for KeyProviderSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StaticKeySettings [StaticKeySettings] 
-- @return KeyProviderSettings structure as a key-value pair table
function M.KeyProviderSettings(args)
	assert(args, "You must provide an argument table when creating KeyProviderSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StaticKeySettings"] = args["StaticKeySettings"],
	}
	asserts.AssertKeyProviderSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReservationResourceSpecification = { ["VideoQuality"] = true, ["MaximumBitrate"] = true, ["ResourceType"] = true, ["Codec"] = true, ["MaximumFramerate"] = true, ["SpecialFeature"] = true, ["Resolution"] = true, nil }

function asserts.AssertReservationResourceSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReservationResourceSpecification to be of type 'table'")
	if struct["VideoQuality"] then asserts.AssertReservationVideoQuality(struct["VideoQuality"]) end
	if struct["MaximumBitrate"] then asserts.AssertReservationMaximumBitrate(struct["MaximumBitrate"]) end
	if struct["ResourceType"] then asserts.AssertReservationResourceType(struct["ResourceType"]) end
	if struct["Codec"] then asserts.AssertReservationCodec(struct["Codec"]) end
	if struct["MaximumFramerate"] then asserts.AssertReservationMaximumFramerate(struct["MaximumFramerate"]) end
	if struct["SpecialFeature"] then asserts.AssertReservationSpecialFeature(struct["SpecialFeature"]) end
	if struct["Resolution"] then asserts.AssertReservationResolution(struct["Resolution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReservationResourceSpecification[k], "ReservationResourceSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReservationResourceSpecification
-- Resource configuration (codec, resolution, bitrate, ...)
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VideoQuality [ReservationVideoQuality] Video quality, e.g. 'STANDARD' (Outputs only)
-- * MaximumBitrate [ReservationMaximumBitrate] Maximum bitrate, e.g. 'MAX_20_MBPS'
-- * ResourceType [ReservationResourceType] Resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'
-- * Codec [ReservationCodec] Codec, e.g. 'AVC'
-- * MaximumFramerate [ReservationMaximumFramerate] Maximum framerate, e.g. 'MAX_30_FPS' (Outputs only)
-- * SpecialFeature [ReservationSpecialFeature] Special feature, e.g. 'AUDIO_NORMALIZATION' (Channels only)
-- * Resolution [ReservationResolution] Resolution, e.g. 'HD'
-- @return ReservationResourceSpecification structure as a key-value pair table
function M.ReservationResourceSpecification(args)
	assert(args, "You must provide an argument table when creating ReservationResourceSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VideoQuality"] = args["VideoQuality"],
		["MaximumBitrate"] = args["MaximumBitrate"],
		["ResourceType"] = args["ResourceType"],
		["Codec"] = args["Codec"],
		["MaximumFramerate"] = args["MaximumFramerate"],
		["SpecialFeature"] = args["SpecialFeature"],
		["Resolution"] = args["Resolution"],
	}
	asserts.AssertReservationResourceSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputLocationRef = { ["DestinationRefId"] = true, nil }

function asserts.AssertOutputLocationRef(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputLocationRef to be of type 'table'")
	if struct["DestinationRefId"] then asserts.Assert__string(struct["DestinationRefId"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputLocationRef[k], "OutputLocationRef contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputLocationRef
-- Reference to an OutputDestination ID defined in the channel
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationRefId [__string] 
-- @return OutputLocationRef structure as a key-value pair table
function M.OutputLocationRef(args)
	assert(args, "You must provide an argument table when creating OutputLocationRef")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationRefId"] = args["DestinationRefId"],
	}
	asserts.AssertOutputLocationRef(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UdpOutputSettings = { ["FecOutputSettings"] = true, ["Destination"] = true, ["BufferMsec"] = true, ["ContainerSettings"] = true, nil }

function asserts.AssertUdpOutputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UdpOutputSettings to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	assert(struct["ContainerSettings"], "Expected key ContainerSettings to exist in table")
	if struct["FecOutputSettings"] then asserts.AssertFecOutputSettings(struct["FecOutputSettings"]) end
	if struct["Destination"] then asserts.AssertOutputLocationRef(struct["Destination"]) end
	if struct["BufferMsec"] then asserts.Assert__integerMin0Max10000(struct["BufferMsec"]) end
	if struct["ContainerSettings"] then asserts.AssertUdpContainerSettings(struct["ContainerSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.UdpOutputSettings[k], "UdpOutputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UdpOutputSettings
-- Placeholder documentation for UdpOutputSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FecOutputSettings [FecOutputSettings] Settings for enabling and adjusting Forward Error Correction on UDP outputs.
-- * Destination [OutputLocationRef] Destination address and port number for RTP or UDP packets. Can be unicast or multicast RTP or UDP (eg. rtp://239.10.10.10:5001 or udp://10.100.100.100:5002).
-- * BufferMsec [__integerMin0Max10000] UDP output buffering in milliseconds. Larger values increase latency through the transcoder but simultaneously assist the transcoder in maintaining a constant, low-jitter UDP/RTP output while accommodating clock recovery, input switching, input disruptions, picture reordering, etc.
-- * ContainerSettings [UdpContainerSettings] 
-- Required key: Destination
-- Required key: ContainerSettings
-- @return UdpOutputSettings structure as a key-value pair table
function M.UdpOutputSettings(args)
	assert(args, "You must provide an argument table when creating UdpOutputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FecOutputSettings"] = args["FecOutputSettings"],
		["Destination"] = args["Destination"],
		["BufferMsec"] = args["BufferMsec"],
		["ContainerSettings"] = args["ContainerSettings"],
	}
	asserts.AssertUdpOutputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimecodeConfig = { ["Source"] = true, ["SyncThreshold"] = true, nil }

function asserts.AssertTimecodeConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimecodeConfig to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	if struct["Source"] then asserts.AssertTimecodeConfigSource(struct["Source"]) end
	if struct["SyncThreshold"] then asserts.Assert__integerMin1Max1000000(struct["SyncThreshold"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimecodeConfig[k], "TimecodeConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimecodeConfig
-- Placeholder documentation for TimecodeConfig
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source [TimecodeConfigSource] Identifies the source for the timecode that will be associated with the events outputs.
---Embedded (embedded): Initialize the output timecode with timecode from the the source.  If no embedded timecode is detected in the source, the system falls back to using "Start at 0" (zerobased).
---System Clock (systemclock): Use the UTC time.
---Start at 0 (zerobased): The time of the first frame of the event will be 00:00:00:00.
-- * SyncThreshold [__integerMin1Max1000000] Threshold in frames beyond which output timecode is resynchronized to the input timecode. Discrepancies below this threshold are permitted to avoid unnecessary discontinuities in the output timecode. No timecode sync when this is not specified.
-- Required key: Source
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
		["SyncThreshold"] = args["SyncThreshold"],
	}
	asserts.AssertTimecodeConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailSettings = { ["Scte35TimeSignalApos"] = true, ["Scte35SpliceInsert"] = true, nil }

function asserts.AssertAvailSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailSettings to be of type 'table'")
	if struct["Scte35TimeSignalApos"] then asserts.AssertScte35TimeSignalApos(struct["Scte35TimeSignalApos"]) end
	if struct["Scte35SpliceInsert"] then asserts.AssertScte35SpliceInsert(struct["Scte35SpliceInsert"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailSettings[k], "AvailSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailSettings
-- Placeholder documentation for AvailSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scte35TimeSignalApos [Scte35TimeSignalApos] 
-- * Scte35SpliceInsert [Scte35SpliceInsert] 
-- @return AvailSettings structure as a key-value pair table
function M.AvailSettings(args)
	assert(args, "You must provide an argument table when creating AvailSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scte35TimeSignalApos"] = args["Scte35TimeSignalApos"],
		["Scte35SpliceInsert"] = args["Scte35SpliceInsert"],
	}
	asserts.AssertAvailSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputSettings = { ["UdpOutputSettings"] = true, ["HlsOutputSettings"] = true, ["ArchiveOutputSettings"] = true, ["MsSmoothOutputSettings"] = true, ["RtmpOutputSettings"] = true, nil }

function asserts.AssertOutputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputSettings to be of type 'table'")
	if struct["UdpOutputSettings"] then asserts.AssertUdpOutputSettings(struct["UdpOutputSettings"]) end
	if struct["HlsOutputSettings"] then asserts.AssertHlsOutputSettings(struct["HlsOutputSettings"]) end
	if struct["ArchiveOutputSettings"] then asserts.AssertArchiveOutputSettings(struct["ArchiveOutputSettings"]) end
	if struct["MsSmoothOutputSettings"] then asserts.AssertMsSmoothOutputSettings(struct["MsSmoothOutputSettings"]) end
	if struct["RtmpOutputSettings"] then asserts.AssertRtmpOutputSettings(struct["RtmpOutputSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputSettings[k], "OutputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputSettings
-- Placeholder documentation for OutputSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UdpOutputSettings [UdpOutputSettings] 
-- * HlsOutputSettings [HlsOutputSettings] 
-- * ArchiveOutputSettings [ArchiveOutputSettings] 
-- * MsSmoothOutputSettings [MsSmoothOutputSettings] 
-- * RtmpOutputSettings [RtmpOutputSettings] 
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
		["UdpOutputSettings"] = args["UdpOutputSettings"],
		["HlsOutputSettings"] = args["HlsOutputSettings"],
		["ArchiveOutputSettings"] = args["ArchiveOutputSettings"],
		["MsSmoothOutputSettings"] = args["MsSmoothOutputSettings"],
		["RtmpOutputSettings"] = args["RtmpOutputSettings"],
	}
	asserts.AssertOutputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeChannelResponse = { ["InputAttachments"] = true, ["Name"] = true, ["LogLevel"] = true, ["RoleArn"] = true, ["State"] = true, ["EgressEndpoints"] = true, ["InputSpecification"] = true, ["PipelinesRunningCount"] = true, ["EncoderSettings"] = true, ["Id"] = true, ["Arn"] = true, ["Destinations"] = true, nil }

function asserts.AssertDescribeChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChannelResponse to be of type 'table'")
	if struct["InputAttachments"] then asserts.Assert__listOfInputAttachment(struct["InputAttachments"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LogLevel"] then asserts.AssertLogLevel(struct["LogLevel"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["State"] then asserts.AssertChannelState(struct["State"]) end
	if struct["EgressEndpoints"] then asserts.Assert__listOfChannelEgressEndpoint(struct["EgressEndpoints"]) end
	if struct["InputSpecification"] then asserts.AssertInputSpecification(struct["InputSpecification"]) end
	if struct["PipelinesRunningCount"] then asserts.Assert__integer(struct["PipelinesRunningCount"]) end
	if struct["EncoderSettings"] then asserts.AssertEncoderSettings(struct["EncoderSettings"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Destinations"] then asserts.Assert__listOfOutputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChannelResponse[k], "DescribeChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChannelResponse
-- Placeholder documentation for DescribeChannelResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputAttachments [__listOfInputAttachment] List of input attachments for channel.
-- * Name [__string] The name of the channel. (user-mutable)
-- * LogLevel [LogLevel] The log level being written to CloudWatch Logs.
-- * RoleArn [__string] The Amazon Resource Name (ARN) of the role assumed when running the Channel.
-- * State [ChannelState] 
-- * EgressEndpoints [__listOfChannelEgressEndpoint] The endpoints where outgoing connections initiate from
-- * InputSpecification [InputSpecification] 
-- * PipelinesRunningCount [__integer] The number of currently healthy pipelines.
-- * EncoderSettings [EncoderSettings] 
-- * Id [__string] The unique id of the channel.
-- * Arn [__string] The unique arn of the channel.
-- * Destinations [__listOfOutputDestination] A list of destinations of the channel. For UDP outputs, there is one
--destination per output. For other types (HLS, for example), there is
--one destination per packager.
--
-- @return DescribeChannelResponse structure as a key-value pair table
function M.DescribeChannelResponse(args)
	assert(args, "You must provide an argument table when creating DescribeChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputAttachments"] = args["InputAttachments"],
		["Name"] = args["Name"],
		["LogLevel"] = args["LogLevel"],
		["RoleArn"] = args["RoleArn"],
		["State"] = args["State"],
		["EgressEndpoints"] = args["EgressEndpoints"],
		["InputSpecification"] = args["InputSpecification"],
		["PipelinesRunningCount"] = args["PipelinesRunningCount"],
		["EncoderSettings"] = args["EncoderSettings"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertDescribeChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputLocation = { ["Username"] = true, ["Uri"] = true, ["PasswordParam"] = true, nil }

function asserts.AssertInputLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputLocation to be of type 'table'")
	assert(struct["Uri"], "Expected key Uri to exist in table")
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["Uri"] then asserts.Assert__string(struct["Uri"]) end
	if struct["PasswordParam"] then asserts.Assert__string(struct["PasswordParam"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputLocation[k], "InputLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputLocation
-- Placeholder documentation for InputLocation
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Username [__string] Documentation update needed
-- * Uri [__string] Uniform Resource Identifier - This should be a path to a file accessible to the Live system (eg. a http:// URI) depending on the output type. For example, a RTMP destination should have a uri simliar to: "rtmp://fmsserver/live".
-- * PasswordParam [__string] key used to extract the password from EC2 Parameter store
-- Required key: Uri
-- @return InputLocation structure as a key-value pair table
function M.InputLocation(args)
	assert(args, "You must provide an argument table when creating InputLocation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Username"] = args["Username"],
		["Uri"] = args["Uri"],
		["PasswordParam"] = args["PasswordParam"],
	}
	asserts.AssertInputLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputDestinationSettings = { ["Url"] = true, ["Username"] = true, ["StreamName"] = true, ["PasswordParam"] = true, nil }

function asserts.AssertOutputDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputDestinationSettings to be of type 'table'")
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["StreamName"] then asserts.Assert__string(struct["StreamName"]) end
	if struct["PasswordParam"] then asserts.Assert__string(struct["PasswordParam"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputDestinationSettings[k], "OutputDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputDestinationSettings
-- Placeholder documentation for OutputDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [__string] A URL specifying a destination
-- * Username [__string] username for destination
-- * StreamName [__string] Stream name for RTMP destinations (URLs of type rtmp://)
-- * PasswordParam [__string] key used to extract the password from EC2 Parameter store
-- @return OutputDestinationSettings structure as a key-value pair table
function M.OutputDestinationSettings(args)
	assert(args, "You must provide an argument table when creating OutputDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["Username"] = args["Username"],
		["StreamName"] = args["StreamName"],
		["PasswordParam"] = args["PasswordParam"],
	}
	asserts.AssertOutputDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoSelector = { ["SelectorSettings"] = true, ["ColorSpaceUsage"] = true, ["ColorSpace"] = true, nil }

function asserts.AssertVideoSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoSelector to be of type 'table'")
	if struct["SelectorSettings"] then asserts.AssertVideoSelectorSettings(struct["SelectorSettings"]) end
	if struct["ColorSpaceUsage"] then asserts.AssertVideoSelectorColorSpaceUsage(struct["ColorSpaceUsage"]) end
	if struct["ColorSpace"] then asserts.AssertVideoSelectorColorSpace(struct["ColorSpace"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoSelector[k], "VideoSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoSelector
-- Specifies a particular video stream within an input source. An input may have only a single video selector.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SelectorSettings [VideoSelectorSettings] The video selector settings.
-- * ColorSpaceUsage [VideoSelectorColorSpaceUsage] Applies only if colorSpace is a value other than follow. This field controls how the value in the colorSpace field will be used. fallback means that when the input does include color space data, that data will be used, but when the input has no color space data, the value in colorSpace will be used. Choose fallback if your input is sometimes missing color space data, but when it does have color space data, that data is correct. force means to always use the value in colorSpace. Choose force if your input usually has no color space data or might have unreliable color space data.
-- * ColorSpace [VideoSelectorColorSpace] Specifies the colorspace of an input. This setting works in tandem with colorSpaceConversion to determine if any conversion will be performed.
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
		["SelectorSettings"] = args["SelectorSettings"],
		["ColorSpaceUsage"] = args["ColorSpaceUsage"],
		["ColorSpace"] = args["ColorSpace"],
	}
	asserts.AssertVideoSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteChannelResponse = { ["InputAttachments"] = true, ["Name"] = true, ["LogLevel"] = true, ["RoleArn"] = true, ["State"] = true, ["EgressEndpoints"] = true, ["InputSpecification"] = true, ["PipelinesRunningCount"] = true, ["EncoderSettings"] = true, ["Id"] = true, ["Arn"] = true, ["Destinations"] = true, nil }

function asserts.AssertDeleteChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChannelResponse to be of type 'table'")
	if struct["InputAttachments"] then asserts.Assert__listOfInputAttachment(struct["InputAttachments"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LogLevel"] then asserts.AssertLogLevel(struct["LogLevel"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["State"] then asserts.AssertChannelState(struct["State"]) end
	if struct["EgressEndpoints"] then asserts.Assert__listOfChannelEgressEndpoint(struct["EgressEndpoints"]) end
	if struct["InputSpecification"] then asserts.AssertInputSpecification(struct["InputSpecification"]) end
	if struct["PipelinesRunningCount"] then asserts.Assert__integer(struct["PipelinesRunningCount"]) end
	if struct["EncoderSettings"] then asserts.AssertEncoderSettings(struct["EncoderSettings"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Destinations"] then asserts.Assert__listOfOutputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteChannelResponse[k], "DeleteChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChannelResponse
-- Placeholder documentation for DeleteChannelResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputAttachments [__listOfInputAttachment] List of input attachments for channel.
-- * Name [__string] The name of the channel. (user-mutable)
-- * LogLevel [LogLevel] The log level being written to CloudWatch Logs.
-- * RoleArn [__string] The Amazon Resource Name (ARN) of the role assumed when running the Channel.
-- * State [ChannelState] 
-- * EgressEndpoints [__listOfChannelEgressEndpoint] The endpoints where outgoing connections initiate from
-- * InputSpecification [InputSpecification] 
-- * PipelinesRunningCount [__integer] The number of currently healthy pipelines.
-- * EncoderSettings [EncoderSettings] 
-- * Id [__string] The unique id of the channel.
-- * Arn [__string] The unique arn of the channel.
-- * Destinations [__listOfOutputDestination] A list of destinations of the channel. For UDP outputs, there is one
--destination per output. For other types (HLS, for example), there is
--one destination per packager.
--
-- @return DeleteChannelResponse structure as a key-value pair table
function M.DeleteChannelResponse(args)
	assert(args, "You must provide an argument table when creating DeleteChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputAttachments"] = args["InputAttachments"],
		["Name"] = args["Name"],
		["LogLevel"] = args["LogLevel"],
		["RoleArn"] = args["RoleArn"],
		["State"] = args["State"],
		["EgressEndpoints"] = args["EgressEndpoints"],
		["InputSpecification"] = args["InputSpecification"],
		["PipelinesRunningCount"] = args["PipelinesRunningCount"],
		["EncoderSettings"] = args["EncoderSettings"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertDeleteChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChannelSummary = { ["InputAttachments"] = true, ["Name"] = true, ["LogLevel"] = true, ["RoleArn"] = true, ["State"] = true, ["EgressEndpoints"] = true, ["InputSpecification"] = true, ["PipelinesRunningCount"] = true, ["Id"] = true, ["Arn"] = true, ["Destinations"] = true, nil }

function asserts.AssertChannelSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChannelSummary to be of type 'table'")
	if struct["InputAttachments"] then asserts.Assert__listOfInputAttachment(struct["InputAttachments"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LogLevel"] then asserts.AssertLogLevel(struct["LogLevel"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["State"] then asserts.AssertChannelState(struct["State"]) end
	if struct["EgressEndpoints"] then asserts.Assert__listOfChannelEgressEndpoint(struct["EgressEndpoints"]) end
	if struct["InputSpecification"] then asserts.AssertInputSpecification(struct["InputSpecification"]) end
	if struct["PipelinesRunningCount"] then asserts.Assert__integer(struct["PipelinesRunningCount"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Destinations"] then asserts.Assert__listOfOutputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChannelSummary[k], "ChannelSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChannelSummary
-- Placeholder documentation for ChannelSummary
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputAttachments [__listOfInputAttachment] List of input attachments for channel.
-- * Name [__string] The name of the channel. (user-mutable)
-- * LogLevel [LogLevel] The log level being written to CloudWatch Logs.
-- * RoleArn [__string] The Amazon Resource Name (ARN) of the role assumed when running the Channel.
-- * State [ChannelState] 
-- * EgressEndpoints [__listOfChannelEgressEndpoint] The endpoints where outgoing connections initiate from
-- * InputSpecification [InputSpecification] 
-- * PipelinesRunningCount [__integer] The number of currently healthy pipelines.
-- * Id [__string] The unique id of the channel.
-- * Arn [__string] The unique arn of the channel.
-- * Destinations [__listOfOutputDestination] A list of destinations of the channel. For UDP outputs, there is one
--destination per output. For other types (HLS, for example), there is
--one destination per packager.
--
-- @return ChannelSummary structure as a key-value pair table
function M.ChannelSummary(args)
	assert(args, "You must provide an argument table when creating ChannelSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputAttachments"] = args["InputAttachments"],
		["Name"] = args["Name"],
		["LogLevel"] = args["LogLevel"],
		["RoleArn"] = args["RoleArn"],
		["State"] = args["State"],
		["EgressEndpoints"] = args["EgressEndpoints"],
		["InputSpecification"] = args["InputSpecification"],
		["PipelinesRunningCount"] = args["PipelinesRunningCount"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertChannelSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchUpdateScheduleRequest = { ["Creates"] = true, ["ChannelId"] = true, ["Deletes"] = true, nil }

function asserts.AssertBatchUpdateScheduleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchUpdateScheduleRequest to be of type 'table'")
	assert(struct["ChannelId"], "Expected key ChannelId to exist in table")
	if struct["Creates"] then asserts.AssertBatchScheduleActionCreateRequest(struct["Creates"]) end
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["Deletes"] then asserts.AssertBatchScheduleActionDeleteRequest(struct["Deletes"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchUpdateScheduleRequest[k], "BatchUpdateScheduleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchUpdateScheduleRequest
-- List of actions to create and list of actions to delete.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Creates [BatchScheduleActionCreateRequest] Schedule actions to create in the schedule.
-- * ChannelId [__string] Id of the channel whose schedule is being updated.
-- * Deletes [BatchScheduleActionDeleteRequest] Schedule actions to delete from the schedule.
-- Required key: ChannelId
-- @return BatchUpdateScheduleRequest structure as a key-value pair table
function M.BatchUpdateScheduleRequest(args)
	assert(args, "You must provide an argument table when creating BatchUpdateScheduleRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{channelId}"] = args["ChannelId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Creates"] = args["Creates"],
		["ChannelId"] = args["ChannelId"],
		["Deletes"] = args["Deletes"],
	}
	asserts.AssertBatchUpdateScheduleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TtmlDestinationSettings = { ["StyleControl"] = true, nil }

function asserts.AssertTtmlDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TtmlDestinationSettings to be of type 'table'")
	if struct["StyleControl"] then asserts.AssertTtmlDestinationStyleControl(struct["StyleControl"]) end
	for k,_ in pairs(struct) do
		assert(keys.TtmlDestinationSettings[k], "TtmlDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TtmlDestinationSettings
-- Placeholder documentation for TtmlDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StyleControl [TtmlDestinationStyleControl] When set to passthrough, passes through style and position information from a TTML-like input source (TTML, SMPTE-TT, CFF-TT) to the CFF-TT output or TTML output.
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
		["StyleControl"] = args["StyleControl"],
	}
	asserts.AssertTtmlDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopChannelResponse = { ["InputAttachments"] = true, ["Name"] = true, ["LogLevel"] = true, ["RoleArn"] = true, ["State"] = true, ["EgressEndpoints"] = true, ["InputSpecification"] = true, ["PipelinesRunningCount"] = true, ["EncoderSettings"] = true, ["Id"] = true, ["Arn"] = true, ["Destinations"] = true, nil }

function asserts.AssertStopChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopChannelResponse to be of type 'table'")
	if struct["InputAttachments"] then asserts.Assert__listOfInputAttachment(struct["InputAttachments"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LogLevel"] then asserts.AssertLogLevel(struct["LogLevel"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["State"] then asserts.AssertChannelState(struct["State"]) end
	if struct["EgressEndpoints"] then asserts.Assert__listOfChannelEgressEndpoint(struct["EgressEndpoints"]) end
	if struct["InputSpecification"] then asserts.AssertInputSpecification(struct["InputSpecification"]) end
	if struct["PipelinesRunningCount"] then asserts.Assert__integer(struct["PipelinesRunningCount"]) end
	if struct["EncoderSettings"] then asserts.AssertEncoderSettings(struct["EncoderSettings"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Destinations"] then asserts.Assert__listOfOutputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopChannelResponse[k], "StopChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopChannelResponse
-- Placeholder documentation for StopChannelResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputAttachments [__listOfInputAttachment] List of input attachments for channel.
-- * Name [__string] The name of the channel. (user-mutable)
-- * LogLevel [LogLevel] The log level being written to CloudWatch Logs.
-- * RoleArn [__string] The Amazon Resource Name (ARN) of the role assumed when running the Channel.
-- * State [ChannelState] 
-- * EgressEndpoints [__listOfChannelEgressEndpoint] The endpoints where outgoing connections initiate from
-- * InputSpecification [InputSpecification] 
-- * PipelinesRunningCount [__integer] The number of currently healthy pipelines.
-- * EncoderSettings [EncoderSettings] 
-- * Id [__string] The unique id of the channel.
-- * Arn [__string] The unique arn of the channel.
-- * Destinations [__listOfOutputDestination] A list of destinations of the channel. For UDP outputs, there is one
--destination per output. For other types (HLS, for example), there is
--one destination per packager.
--
-- @return StopChannelResponse structure as a key-value pair table
function M.StopChannelResponse(args)
	assert(args, "You must provide an argument table when creating StopChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputAttachments"] = args["InputAttachments"],
		["Name"] = args["Name"],
		["LogLevel"] = args["LogLevel"],
		["RoleArn"] = args["RoleArn"],
		["State"] = args["State"],
		["EgressEndpoints"] = args["EgressEndpoints"],
		["InputSpecification"] = args["InputSpecification"],
		["PipelinesRunningCount"] = args["PipelinesRunningCount"],
		["EncoderSettings"] = args["EncoderSettings"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertStopChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchScheduleActionDeleteResult = { ["ScheduleActions"] = true, nil }

function asserts.AssertBatchScheduleActionDeleteResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchScheduleActionDeleteResult to be of type 'table'")
	assert(struct["ScheduleActions"], "Expected key ScheduleActions to exist in table")
	if struct["ScheduleActions"] then asserts.Assert__listOfScheduleAction(struct["ScheduleActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchScheduleActionDeleteResult[k], "BatchScheduleActionDeleteResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchScheduleActionDeleteResult
-- List of actions that have been deleted from the schedule.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleActions [__listOfScheduleAction] List of actions that have been deleted from the schedule.
-- Required key: ScheduleActions
-- @return BatchScheduleActionDeleteResult structure as a key-value pair table
function M.BatchScheduleActionDeleteResult(args)
	assert(args, "You must provide an argument table when creating BatchScheduleActionDeleteResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduleActions"] = args["ScheduleActions"],
	}
	asserts.AssertBatchScheduleActionDeleteResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioChannelMapping = { ["OutputChannel"] = true, ["InputChannelLevels"] = true, nil }

function asserts.AssertAudioChannelMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioChannelMapping to be of type 'table'")
	assert(struct["OutputChannel"], "Expected key OutputChannel to exist in table")
	assert(struct["InputChannelLevels"], "Expected key InputChannelLevels to exist in table")
	if struct["OutputChannel"] then asserts.Assert__integerMin0Max7(struct["OutputChannel"]) end
	if struct["InputChannelLevels"] then asserts.Assert__listOfInputChannelLevel(struct["InputChannelLevels"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioChannelMapping[k], "AudioChannelMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioChannelMapping
-- Placeholder documentation for AudioChannelMapping
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputChannel [__integerMin0Max7] The index of the output channel being produced.
-- * InputChannelLevels [__listOfInputChannelLevel] Indices and gain values for each input channel that should be remixed into this output channel.
-- Required key: OutputChannel
-- Required key: InputChannelLevels
-- @return AudioChannelMapping structure as a key-value pair table
function M.AudioChannelMapping(args)
	assert(args, "You must provide an argument table when creating AudioChannelMapping")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutputChannel"] = args["OutputChannel"],
		["InputChannelLevels"] = args["InputChannelLevels"],
	}
	asserts.AssertAudioChannelMapping(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StaticImageDeactivateScheduleActionSettings = { ["FadeOut"] = true, ["Layer"] = true, nil }

function asserts.AssertStaticImageDeactivateScheduleActionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StaticImageDeactivateScheduleActionSettings to be of type 'table'")
	if struct["FadeOut"] then asserts.Assert__integerMin0(struct["FadeOut"]) end
	if struct["Layer"] then asserts.Assert__integerMin0Max7(struct["Layer"]) end
	for k,_ in pairs(struct) do
		assert(keys.StaticImageDeactivateScheduleActionSettings[k], "StaticImageDeactivateScheduleActionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StaticImageDeactivateScheduleActionSettings
-- Settings for the action to deactivate the image in a specific layer.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FadeOut [__integerMin0] The time in milliseconds for the image to fade out. Default is 0 (no fade-out).
-- * Layer [__integerMin0Max7] The image overlay layer to deactivate, 0 to 7. Default is 0.
-- @return StaticImageDeactivateScheduleActionSettings structure as a key-value pair table
function M.StaticImageDeactivateScheduleActionSettings(args)
	assert(args, "You must provide an argument table when creating StaticImageDeactivateScheduleActionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FadeOut"] = args["FadeOut"],
		["Layer"] = args["Layer"],
	}
	asserts.AssertStaticImageDeactivateScheduleActionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MsSmoothOutputSettings = { ["NameModifier"] = true, nil }

function asserts.AssertMsSmoothOutputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MsSmoothOutputSettings to be of type 'table'")
	if struct["NameModifier"] then asserts.Assert__string(struct["NameModifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.MsSmoothOutputSettings[k], "MsSmoothOutputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MsSmoothOutputSettings
-- Placeholder documentation for MsSmoothOutputSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NameModifier [__string] String concatenated to the end of the destination filename.  Required for multiple outputs of the same type.
-- @return MsSmoothOutputSettings structure as a key-value pair table
function M.MsSmoothOutputSettings(args)
	assert(args, "You must provide an argument table when creating MsSmoothOutputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NameModifier"] = args["NameModifier"],
	}
	asserts.AssertMsSmoothOutputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputWhitelistRuleCidr = { ["Cidr"] = true, nil }

function asserts.AssertInputWhitelistRuleCidr(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputWhitelistRuleCidr to be of type 'table'")
	if struct["Cidr"] then asserts.Assert__string(struct["Cidr"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputWhitelistRuleCidr[k], "InputWhitelistRuleCidr contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputWhitelistRuleCidr
-- An IPv4 CIDR to whitelist.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cidr [__string] The IPv4 CIDR to whitelist.
-- @return InputWhitelistRuleCidr structure as a key-value pair table
function M.InputWhitelistRuleCidr(args)
	assert(args, "You must provide an argument table when creating InputWhitelistRuleCidr")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cidr"] = args["Cidr"],
	}
	asserts.AssertInputWhitelistRuleCidr(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchScheduleActionCreateRequest = { ["ScheduleActions"] = true, nil }

function asserts.AssertBatchScheduleActionCreateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchScheduleActionCreateRequest to be of type 'table'")
	assert(struct["ScheduleActions"], "Expected key ScheduleActions to exist in table")
	if struct["ScheduleActions"] then asserts.Assert__listOfScheduleAction(struct["ScheduleActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchScheduleActionCreateRequest[k], "BatchScheduleActionCreateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchScheduleActionCreateRequest
-- A list of schedule actions to create (in a request) or that have been created (in a response).
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleActions [__listOfScheduleAction] A list of schedule actions to create.
-- Required key: ScheduleActions
-- @return BatchScheduleActionCreateRequest structure as a key-value pair table
function M.BatchScheduleActionCreateRequest(args)
	assert(args, "You must provide an argument table when creating BatchScheduleActionCreateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduleActions"] = args["ScheduleActions"],
	}
	asserts.AssertBatchScheduleActionCreateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioSelectorSettings = { ["AudioPidSelection"] = true, ["AudioLanguageSelection"] = true, nil }

function asserts.AssertAudioSelectorSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioSelectorSettings to be of type 'table'")
	if struct["AudioPidSelection"] then asserts.AssertAudioPidSelection(struct["AudioPidSelection"]) end
	if struct["AudioLanguageSelection"] then asserts.AssertAudioLanguageSelection(struct["AudioLanguageSelection"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioSelectorSettings[k], "AudioSelectorSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioSelectorSettings
-- Placeholder documentation for AudioSelectorSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AudioPidSelection [AudioPidSelection] 
-- * AudioLanguageSelection [AudioLanguageSelection] 
-- @return AudioSelectorSettings structure as a key-value pair table
function M.AudioSelectorSettings(args)
	assert(args, "You must provide an argument table when creating AudioSelectorSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AudioPidSelection"] = args["AudioPidSelection"],
		["AudioLanguageSelection"] = args["AudioLanguageSelection"],
	}
	asserts.AssertAudioSelectorSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmbeddedPlusScte20DestinationSettings = { nil }

function asserts.AssertEmbeddedPlusScte20DestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmbeddedPlusScte20DestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EmbeddedPlusScte20DestinationSettings[k], "EmbeddedPlusScte20DestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmbeddedPlusScte20DestinationSettings
-- Placeholder documentation for EmbeddedPlusScte20DestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EmbeddedPlusScte20DestinationSettings structure as a key-value pair table
function M.EmbeddedPlusScte20DestinationSettings(args)
	assert(args, "You must provide an argument table when creating EmbeddedPlusScte20DestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEmbeddedPlusScte20DestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateInputSecurityGroupRequest = { ["WhitelistRules"] = true, ["InputSecurityGroupId"] = true, nil }

function asserts.AssertUpdateInputSecurityGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInputSecurityGroupRequest to be of type 'table'")
	assert(struct["InputSecurityGroupId"], "Expected key InputSecurityGroupId to exist in table")
	if struct["WhitelistRules"] then asserts.Assert__listOfInputWhitelistRuleCidr(struct["WhitelistRules"]) end
	if struct["InputSecurityGroupId"] then asserts.Assert__string(struct["InputSecurityGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateInputSecurityGroupRequest[k], "UpdateInputSecurityGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInputSecurityGroupRequest
-- The request to update some combination of the Input Security Group name and the IPv4 CIDRs the Input Security Group should allow.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WhitelistRules [__listOfInputWhitelistRuleCidr] List of IPv4 CIDR addresses to whitelist
-- * InputSecurityGroupId [__string] The id of the Input Security Group to update.
-- Required key: InputSecurityGroupId
-- @return UpdateInputSecurityGroupRequest structure as a key-value pair table
function M.UpdateInputSecurityGroupRequest(args)
	assert(args, "You must provide an argument table when creating UpdateInputSecurityGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{inputSecurityGroupId}"] = args["InputSecurityGroupId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["WhitelistRules"] = args["WhitelistRules"],
		["InputSecurityGroupId"] = args["InputSecurityGroupId"],
	}
	asserts.AssertUpdateInputSecurityGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputSource = { ["Url"] = true, ["Username"] = true, ["PasswordParam"] = true, nil }

function asserts.AssertInputSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSource to be of type 'table'")
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["PasswordParam"] then asserts.Assert__string(struct["PasswordParam"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputSource[k], "InputSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSource
-- The settings for a PULL type input.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [__string] This represents the customer's source URL where stream is
--pulled from.
--
-- * Username [__string] The username for the input source.
-- * PasswordParam [__string] The key used to extract the password from EC2 Parameter store.
-- @return InputSource structure as a key-value pair table
function M.InputSource(args)
	assert(args, "You must provide an argument table when creating InputSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["Username"] = args["Username"],
		["PasswordParam"] = args["PasswordParam"],
	}
	asserts.AssertInputSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailBlanking = { ["State"] = true, ["AvailBlankingImage"] = true, nil }

function asserts.AssertAvailBlanking(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailBlanking to be of type 'table'")
	if struct["State"] then asserts.AssertAvailBlankingState(struct["State"]) end
	if struct["AvailBlankingImage"] then asserts.AssertInputLocation(struct["AvailBlankingImage"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailBlanking[k], "AvailBlanking contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailBlanking
-- Placeholder documentation for AvailBlanking
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [AvailBlankingState] When set to enabled, causes video, audio and captions to be blanked when insertion metadata is added.
-- * AvailBlankingImage [InputLocation] Blanking image to be used. Leave empty for solid black. Only bmp and png images are supported.
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
		["State"] = args["State"],
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

keys.RtmpGroupSettings = { ["CacheLength"] = true, ["RestartDelay"] = true, ["AuthenticationScheme"] = true, ["CacheFullBehavior"] = true, ["CaptionData"] = true, nil }

function asserts.AssertRtmpGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RtmpGroupSettings to be of type 'table'")
	if struct["CacheLength"] then asserts.Assert__integerMin30(struct["CacheLength"]) end
	if struct["RestartDelay"] then asserts.Assert__integerMin0(struct["RestartDelay"]) end
	if struct["AuthenticationScheme"] then asserts.AssertAuthenticationScheme(struct["AuthenticationScheme"]) end
	if struct["CacheFullBehavior"] then asserts.AssertRtmpCacheFullBehavior(struct["CacheFullBehavior"]) end
	if struct["CaptionData"] then asserts.AssertRtmpCaptionData(struct["CaptionData"]) end
	for k,_ in pairs(struct) do
		assert(keys.RtmpGroupSettings[k], "RtmpGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RtmpGroupSettings
-- Placeholder documentation for RtmpGroupSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CacheLength [__integerMin30] Cache length, in seconds, is used to calculate buffer size.
-- * RestartDelay [__integerMin0] If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
-- * AuthenticationScheme [AuthenticationScheme] Authentication scheme to use when connecting with CDN
-- * CacheFullBehavior [RtmpCacheFullBehavior] Controls behavior when content cache fills up. If remote origin server stalls the RTMP connection and does not accept content fast enough the 'Media Cache' will fill up. When the cache reaches the duration specified by cacheLength the cache will stop accepting new content. If set to disconnectImmediately, the RTMP output will force a disconnect. Clear the media cache, and reconnect after restartDelay seconds. If set to waitForServer, the RTMP output will wait up to 5 minutes to allow the origin server to begin accepting data again.
-- * CaptionData [RtmpCaptionData] Controls the types of data that passes to onCaptionInfo outputs.  If set to 'all' then 608 and 708 carried DTVCC data will be passed.  If set to 'field1AndField2608' then DTVCC data will be stripped out, but 608 data from both fields will be passed. If set to 'field1608' then only the data carried in 608 from field 1 video will be passed.
-- @return RtmpGroupSettings structure as a key-value pair table
function M.RtmpGroupSettings(args)
	assert(args, "You must provide an argument table when creating RtmpGroupSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CacheLength"] = args["CacheLength"],
		["RestartDelay"] = args["RestartDelay"],
		["AuthenticationScheme"] = args["AuthenticationScheme"],
		["CacheFullBehavior"] = args["CacheFullBehavior"],
		["CaptionData"] = args["CaptionData"],
	}
	asserts.AssertRtmpGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservationResponse = { ["Count"] = true, ["DurationUnits"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["End"] = true, ["Name"] = true, ["ResourceSpecification"] = true, ["OfferingId"] = true, ["CurrencyCode"] = true, ["UsagePrice"] = true, ["Start"] = true, ["State"] = true, ["ReservationId"] = true, ["OfferingDescription"] = true, ["Duration"] = true, ["Region"] = true, ["Arn"] = true, nil }

function asserts.AssertDescribeReservationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservationResponse to be of type 'table'")
	if struct["Count"] then asserts.Assert__integer(struct["Count"]) end
	if struct["DurationUnits"] then asserts.AssertOfferingDurationUnits(struct["DurationUnits"]) end
	if struct["OfferingType"] then asserts.AssertOfferingType(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.Assert__double(struct["FixedPrice"]) end
	if struct["End"] then asserts.Assert__string(struct["End"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["ResourceSpecification"] then asserts.AssertReservationResourceSpecification(struct["ResourceSpecification"]) end
	if struct["OfferingId"] then asserts.Assert__string(struct["OfferingId"]) end
	if struct["CurrencyCode"] then asserts.Assert__string(struct["CurrencyCode"]) end
	if struct["UsagePrice"] then asserts.Assert__double(struct["UsagePrice"]) end
	if struct["Start"] then asserts.Assert__string(struct["Start"]) end
	if struct["State"] then asserts.AssertReservationState(struct["State"]) end
	if struct["ReservationId"] then asserts.Assert__string(struct["ReservationId"]) end
	if struct["OfferingDescription"] then asserts.Assert__string(struct["OfferingDescription"]) end
	if struct["Duration"] then asserts.Assert__integer(struct["Duration"]) end
	if struct["Region"] then asserts.Assert__string(struct["Region"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservationResponse[k], "DescribeReservationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservationResponse
-- Placeholder documentation for DescribeReservationResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Count [__integer] Number of reserved resources
-- * DurationUnits [OfferingDurationUnits] Units for duration, e.g. 'MONTHS'
-- * OfferingType [OfferingType] Offering type, e.g. 'NO_UPFRONT'
-- * FixedPrice [__double] One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
-- * End [__string] Reservation UTC end date and time in ISO-8601 format, e.g. '2019-03-01T00:00:00'
-- * Name [__string] User specified reservation name
-- * ResourceSpecification [ReservationResourceSpecification] Resource configuration details
-- * OfferingId [__string] Unique offering ID, e.g. '87654321'
-- * CurrencyCode [__string] Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
-- * UsagePrice [__double] Recurring usage charge for each reserved resource, e.g. '157.0'
-- * Start [__string] Reservation UTC start date and time in ISO-8601 format, e.g. '2018-03-01T00:00:00'
-- * State [ReservationState] Current state of reservation, e.g. 'ACTIVE'
-- * ReservationId [__string] Unique reservation ID, e.g. '1234567'
-- * OfferingDescription [__string] Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
-- * Duration [__integer] Lease duration, e.g. '12'
-- * Region [__string] AWS region, e.g. 'us-west-2'
-- * Arn [__string] Unique reservation ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:reservation:1234567'
-- @return DescribeReservationResponse structure as a key-value pair table
function M.DescribeReservationResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReservationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Count"] = args["Count"],
		["DurationUnits"] = args["DurationUnits"],
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["End"] = args["End"],
		["Name"] = args["Name"],
		["ResourceSpecification"] = args["ResourceSpecification"],
		["OfferingId"] = args["OfferingId"],
		["CurrencyCode"] = args["CurrencyCode"],
		["UsagePrice"] = args["UsagePrice"],
		["Start"] = args["Start"],
		["State"] = args["State"],
		["ReservationId"] = args["ReservationId"],
		["OfferingDescription"] = args["OfferingDescription"],
		["Duration"] = args["Duration"],
		["Region"] = args["Region"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertDescribeReservationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AvailConfiguration = { ["AvailSettings"] = true, nil }

function asserts.AssertAvailConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AvailConfiguration to be of type 'table'")
	if struct["AvailSettings"] then asserts.AssertAvailSettings(struct["AvailSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.AvailConfiguration[k], "AvailConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AvailConfiguration
-- Placeholder documentation for AvailConfiguration
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AvailSettings [AvailSettings] Ad avail settings.
-- @return AvailConfiguration structure as a key-value pair table
function M.AvailConfiguration(args)
	assert(args, "You must provide an argument table when creating AvailConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AvailSettings"] = args["AvailSettings"],
	}
	asserts.AssertAvailConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListChannelsResponse = { ["Channels"] = true, ["NextToken"] = true, nil }

function asserts.AssertListChannelsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChannelsResponse to be of type 'table'")
	if struct["Channels"] then asserts.Assert__listOfChannelSummary(struct["Channels"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChannelsResponse[k], "ListChannelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChannelsResponse
-- Placeholder documentation for ListChannelsResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channels [__listOfChannelSummary] 
-- * NextToken [__string] 
-- @return ListChannelsResponse structure as a key-value pair table
function M.ListChannelsResponse(args)
	assert(args, "You must provide an argument table when creating ListChannelsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Channels"] = args["Channels"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListChannelsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SmpteTtDestinationSettings = { nil }

function asserts.AssertSmpteTtDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SmpteTtDestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SmpteTtDestinationSettings[k], "SmpteTtDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SmpteTtDestinationSettings
-- Placeholder documentation for SmpteTtDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SmpteTtDestinationSettings structure as a key-value pair table
function M.SmpteTtDestinationSettings(args)
	assert(args, "You must provide an argument table when creating SmpteTtDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSmpteTtDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionDestinationSettings = { ["RtmpCaptionInfoDestinationSettings"] = true, ["Scte20PlusEmbeddedDestinationSettings"] = true, ["AribDestinationSettings"] = true, ["EmbeddedPlusScte20DestinationSettings"] = true, ["DvbSubDestinationSettings"] = true, ["SmpteTtDestinationSettings"] = true, ["TtmlDestinationSettings"] = true, ["Scte27DestinationSettings"] = true, ["EmbeddedDestinationSettings"] = true, ["TeletextDestinationSettings"] = true, ["BurnInDestinationSettings"] = true, ["WebvttDestinationSettings"] = true, nil }

function asserts.AssertCaptionDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionDestinationSettings to be of type 'table'")
	if struct["RtmpCaptionInfoDestinationSettings"] then asserts.AssertRtmpCaptionInfoDestinationSettings(struct["RtmpCaptionInfoDestinationSettings"]) end
	if struct["Scte20PlusEmbeddedDestinationSettings"] then asserts.AssertScte20PlusEmbeddedDestinationSettings(struct["Scte20PlusEmbeddedDestinationSettings"]) end
	if struct["AribDestinationSettings"] then asserts.AssertAribDestinationSettings(struct["AribDestinationSettings"]) end
	if struct["EmbeddedPlusScte20DestinationSettings"] then asserts.AssertEmbeddedPlusScte20DestinationSettings(struct["EmbeddedPlusScte20DestinationSettings"]) end
	if struct["DvbSubDestinationSettings"] then asserts.AssertDvbSubDestinationSettings(struct["DvbSubDestinationSettings"]) end
	if struct["SmpteTtDestinationSettings"] then asserts.AssertSmpteTtDestinationSettings(struct["SmpteTtDestinationSettings"]) end
	if struct["TtmlDestinationSettings"] then asserts.AssertTtmlDestinationSettings(struct["TtmlDestinationSettings"]) end
	if struct["Scte27DestinationSettings"] then asserts.AssertScte27DestinationSettings(struct["Scte27DestinationSettings"]) end
	if struct["EmbeddedDestinationSettings"] then asserts.AssertEmbeddedDestinationSettings(struct["EmbeddedDestinationSettings"]) end
	if struct["TeletextDestinationSettings"] then asserts.AssertTeletextDestinationSettings(struct["TeletextDestinationSettings"]) end
	if struct["BurnInDestinationSettings"] then asserts.AssertBurnInDestinationSettings(struct["BurnInDestinationSettings"]) end
	if struct["WebvttDestinationSettings"] then asserts.AssertWebvttDestinationSettings(struct["WebvttDestinationSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionDestinationSettings[k], "CaptionDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionDestinationSettings
-- Placeholder documentation for CaptionDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RtmpCaptionInfoDestinationSettings [RtmpCaptionInfoDestinationSettings] 
-- * Scte20PlusEmbeddedDestinationSettings [Scte20PlusEmbeddedDestinationSettings] 
-- * AribDestinationSettings [AribDestinationSettings] 
-- * EmbeddedPlusScte20DestinationSettings [EmbeddedPlusScte20DestinationSettings] 
-- * DvbSubDestinationSettings [DvbSubDestinationSettings] 
-- * SmpteTtDestinationSettings [SmpteTtDestinationSettings] 
-- * TtmlDestinationSettings [TtmlDestinationSettings] 
-- * Scte27DestinationSettings [Scte27DestinationSettings] 
-- * EmbeddedDestinationSettings [EmbeddedDestinationSettings] 
-- * TeletextDestinationSettings [TeletextDestinationSettings] 
-- * BurnInDestinationSettings [BurnInDestinationSettings] 
-- * WebvttDestinationSettings [WebvttDestinationSettings] 
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
		["RtmpCaptionInfoDestinationSettings"] = args["RtmpCaptionInfoDestinationSettings"],
		["Scte20PlusEmbeddedDestinationSettings"] = args["Scte20PlusEmbeddedDestinationSettings"],
		["AribDestinationSettings"] = args["AribDestinationSettings"],
		["EmbeddedPlusScte20DestinationSettings"] = args["EmbeddedPlusScte20DestinationSettings"],
		["DvbSubDestinationSettings"] = args["DvbSubDestinationSettings"],
		["SmpteTtDestinationSettings"] = args["SmpteTtDestinationSettings"],
		["TtmlDestinationSettings"] = args["TtmlDestinationSettings"],
		["Scte27DestinationSettings"] = args["Scte27DestinationSettings"],
		["EmbeddedDestinationSettings"] = args["EmbeddedDestinationSettings"],
		["TeletextDestinationSettings"] = args["TeletextDestinationSettings"],
		["BurnInDestinationSettings"] = args["BurnInDestinationSettings"],
		["WebvttDestinationSettings"] = args["WebvttDestinationSettings"],
	}
	asserts.AssertCaptionDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CaptionDescription = { ["LanguageCode"] = true, ["LanguageDescription"] = true, ["DestinationSettings"] = true, ["Name"] = true, ["CaptionSelectorName"] = true, nil }

function asserts.AssertCaptionDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionDescription to be of type 'table'")
	assert(struct["CaptionSelectorName"], "Expected key CaptionSelectorName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["LanguageCode"] then asserts.Assert__string(struct["LanguageCode"]) end
	if struct["LanguageDescription"] then asserts.Assert__string(struct["LanguageDescription"]) end
	if struct["DestinationSettings"] then asserts.AssertCaptionDestinationSettings(struct["DestinationSettings"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["CaptionSelectorName"] then asserts.Assert__string(struct["CaptionSelectorName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CaptionDescription[k], "CaptionDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionDescription
-- Output groups for this Live Event. Output groups contain information about where streams should be distributed.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [__string] ISO 639-2 three-digit code: http://www.loc.gov/standards/iso639-2/
-- * LanguageDescription [__string] Human readable information to indicate captions available for players (eg. English, or Spanish).
-- * DestinationSettings [CaptionDestinationSettings] Additional settings for captions destination that depend on the destination type.
-- * Name [__string] Name of the caption description.  Used to associate a caption description with an output.  Names must be unique within an event.
-- * CaptionSelectorName [__string] Specifies which input caption selector to use as a caption source when generating output captions. This field should match a captionSelector name.
-- Required key: CaptionSelectorName
-- Required key: Name
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
		["Name"] = args["Name"],
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

keys.InputSpecification = { ["Codec"] = true, ["Resolution"] = true, ["MaximumBitrate"] = true, nil }

function asserts.AssertInputSpecification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSpecification to be of type 'table'")
	if struct["Codec"] then asserts.AssertInputCodec(struct["Codec"]) end
	if struct["Resolution"] then asserts.AssertInputResolution(struct["Resolution"]) end
	if struct["MaximumBitrate"] then asserts.AssertInputMaximumBitrate(struct["MaximumBitrate"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputSpecification[k], "InputSpecification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSpecification
-- Placeholder documentation for InputSpecification
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Codec [InputCodec] Input codec
-- * Resolution [InputResolution] Input resolution, categorized coarsely
-- * MaximumBitrate [InputMaximumBitrate] Maximum input bitrate, categorized coarsely
-- @return InputSpecification structure as a key-value pair table
function M.InputSpecification(args)
	assert(args, "You must provide an argument table when creating InputSpecification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Codec"] = args["Codec"],
		["Resolution"] = args["Resolution"],
		["MaximumBitrate"] = args["MaximumBitrate"],
	}
	asserts.AssertInputSpecification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioCodecSettings = { ["Mp2Settings"] = true, ["PassThroughSettings"] = true, ["Eac3Settings"] = true, ["AacSettings"] = true, ["Ac3Settings"] = true, nil }

function asserts.AssertAudioCodecSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioCodecSettings to be of type 'table'")
	if struct["Mp2Settings"] then asserts.AssertMp2Settings(struct["Mp2Settings"]) end
	if struct["PassThroughSettings"] then asserts.AssertPassThroughSettings(struct["PassThroughSettings"]) end
	if struct["Eac3Settings"] then asserts.AssertEac3Settings(struct["Eac3Settings"]) end
	if struct["AacSettings"] then asserts.AssertAacSettings(struct["AacSettings"]) end
	if struct["Ac3Settings"] then asserts.AssertAc3Settings(struct["Ac3Settings"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioCodecSettings[k], "AudioCodecSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioCodecSettings
-- Placeholder documentation for AudioCodecSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mp2Settings [Mp2Settings] 
-- * PassThroughSettings [PassThroughSettings] 
-- * Eac3Settings [Eac3Settings] 
-- * AacSettings [AacSettings] 
-- * Ac3Settings [Ac3Settings] 
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
		["Mp2Settings"] = args["Mp2Settings"],
		["PassThroughSettings"] = args["PassThroughSettings"],
		["Eac3Settings"] = args["Eac3Settings"],
		["AacSettings"] = args["AacSettings"],
		["Ac3Settings"] = args["Ac3Settings"],
	}
	asserts.AssertAudioCodecSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ChannelEgressEndpoint = { ["SourceIp"] = true, nil }

function asserts.AssertChannelEgressEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChannelEgressEndpoint to be of type 'table'")
	if struct["SourceIp"] then asserts.Assert__string(struct["SourceIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChannelEgressEndpoint[k], "ChannelEgressEndpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChannelEgressEndpoint
-- Placeholder documentation for ChannelEgressEndpoint
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SourceIp [__string] Public IP of where a channel's output comes from
-- @return ChannelEgressEndpoint structure as a key-value pair table
function M.ChannelEgressEndpoint(args)
	assert(args, "You must provide an argument table when creating ChannelEgressEndpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SourceIp"] = args["SourceIp"],
	}
	asserts.AssertChannelEgressEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputGroupSettings = { ["ArchiveGroupSettings"] = true, ["HlsGroupSettings"] = true, ["RtmpGroupSettings"] = true, ["MsSmoothGroupSettings"] = true, ["UdpGroupSettings"] = true, nil }

function asserts.AssertOutputGroupSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputGroupSettings to be of type 'table'")
	if struct["ArchiveGroupSettings"] then asserts.AssertArchiveGroupSettings(struct["ArchiveGroupSettings"]) end
	if struct["HlsGroupSettings"] then asserts.AssertHlsGroupSettings(struct["HlsGroupSettings"]) end
	if struct["RtmpGroupSettings"] then asserts.AssertRtmpGroupSettings(struct["RtmpGroupSettings"]) end
	if struct["MsSmoothGroupSettings"] then asserts.AssertMsSmoothGroupSettings(struct["MsSmoothGroupSettings"]) end
	if struct["UdpGroupSettings"] then asserts.AssertUdpGroupSettings(struct["UdpGroupSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputGroupSettings[k], "OutputGroupSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputGroupSettings
-- Placeholder documentation for OutputGroupSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ArchiveGroupSettings [ArchiveGroupSettings] 
-- * HlsGroupSettings [HlsGroupSettings] 
-- * RtmpGroupSettings [RtmpGroupSettings] 
-- * MsSmoothGroupSettings [MsSmoothGroupSettings] 
-- * UdpGroupSettings [UdpGroupSettings] 
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
		["ArchiveGroupSettings"] = args["ArchiveGroupSettings"],
		["HlsGroupSettings"] = args["HlsGroupSettings"],
		["RtmpGroupSettings"] = args["RtmpGroupSettings"],
		["MsSmoothGroupSettings"] = args["MsSmoothGroupSettings"],
		["UdpGroupSettings"] = args["UdpGroupSettings"],
	}
	asserts.AssertOutputGroupSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInputRequest = { ["InputId"] = true, nil }

function asserts.AssertDeleteInputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInputRequest to be of type 'table'")
	assert(struct["InputId"], "Expected key InputId to exist in table")
	if struct["InputId"] then asserts.Assert__string(struct["InputId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteInputRequest[k], "DeleteInputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInputRequest
-- Placeholder documentation for DeleteInputRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputId [__string] Unique ID of the input
-- Required key: InputId
-- @return DeleteInputRequest structure as a key-value pair table
function M.DeleteInputRequest(args)
	assert(args, "You must provide an argument table when creating DeleteInputRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{inputId}"] = args["InputId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InputId"] = args["InputId"],
	}
	asserts.AssertDeleteInputRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListChannelsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListChannelsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChannelsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChannelsRequest[k], "ListChannelsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChannelsRequest
-- Placeholder documentation for ListChannelsRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] 
-- * MaxResults [MaxResults] 
-- @return ListChannelsRequest structure as a key-value pair table
function M.ListChannelsRequest(args)
	assert(args, "You must provide an argument table when creating ListChannelsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListChannelsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte35Descriptor = { ["Scte35DescriptorSettings"] = true, nil }

function asserts.AssertScte35Descriptor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35Descriptor to be of type 'table'")
	assert(struct["Scte35DescriptorSettings"], "Expected key Scte35DescriptorSettings to exist in table")
	if struct["Scte35DescriptorSettings"] then asserts.AssertScte35DescriptorSettings(struct["Scte35DescriptorSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35Descriptor[k], "Scte35Descriptor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35Descriptor
-- Holds one set of SCTE-35 Descriptor Settings.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scte35DescriptorSettings [Scte35DescriptorSettings] SCTE-35 Descriptor Settings.
-- Required key: Scte35DescriptorSettings
-- @return Scte35Descriptor structure as a key-value pair table
function M.Scte35Descriptor(args)
	assert(args, "You must provide an argument table when creating Scte35Descriptor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scte35DescriptorSettings"] = args["Scte35DescriptorSettings"],
	}
	asserts.AssertScte35Descriptor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AribDestinationSettings = { nil }

function asserts.AssertAribDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AribDestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AribDestinationSettings[k], "AribDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AribDestinationSettings
-- Placeholder documentation for AribDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AribDestinationSettings structure as a key-value pair table
function M.AribDestinationSettings(args)
	assert(args, "You must provide an argument table when creating AribDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAribDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FecOutputSettings = { ["IncludeFec"] = true, ["RowLength"] = true, ["ColumnDepth"] = true, nil }

function asserts.AssertFecOutputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FecOutputSettings to be of type 'table'")
	if struct["IncludeFec"] then asserts.AssertFecOutputIncludeFec(struct["IncludeFec"]) end
	if struct["RowLength"] then asserts.Assert__integerMin1Max20(struct["RowLength"]) end
	if struct["ColumnDepth"] then asserts.Assert__integerMin4Max20(struct["ColumnDepth"]) end
	for k,_ in pairs(struct) do
		assert(keys.FecOutputSettings[k], "FecOutputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FecOutputSettings
-- Placeholder documentation for FecOutputSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeFec [FecOutputIncludeFec] Enables column only or column and row based FEC
-- * RowLength [__integerMin1Max20] Parameter L from SMPTE 2022-1. The width of the FEC protection matrix.  Must be between 1 and 20, inclusive. If only Column FEC is used, then larger values increase robustness.  If Row FEC is used, then this is the number of transport stream packets per row error correction packet, and the value must be between 4 and 20, inclusive, if includeFec is columnAndRow. If includeFec is column, this value must be 1 to 20, inclusive.
-- * ColumnDepth [__integerMin4Max20] Parameter D from SMPTE 2022-1. The height of the FEC protection matrix.  The number of transport stream packets per column error correction packet. Must be between 4 and 20, inclusive.
-- @return FecOutputSettings structure as a key-value pair table
function M.FecOutputSettings(args)
	assert(args, "You must provide an argument table when creating FecOutputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeFec"] = args["IncludeFec"],
		["RowLength"] = args["RowLength"],
		["ColumnDepth"] = args["ColumnDepth"],
	}
	asserts.AssertFecOutputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReservationRequest = { ["ReservationId"] = true, nil }

function asserts.AssertDescribeReservationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReservationRequest to be of type 'table'")
	assert(struct["ReservationId"], "Expected key ReservationId to exist in table")
	if struct["ReservationId"] then asserts.Assert__string(struct["ReservationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReservationRequest[k], "DescribeReservationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReservationRequest
-- Placeholder documentation for DescribeReservationRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReservationId [__string] Unique reservation ID, e.g. '1234567'
-- Required key: ReservationId
-- @return DescribeReservationRequest structure as a key-value pair table
function M.DescribeReservationRequest(args)
	assert(args, "You must provide an argument table when creating DescribeReservationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{reservationId}"] = args["ReservationId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ReservationId"] = args["ReservationId"],
	}
	asserts.AssertDescribeReservationRequest(all_args)
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
	if struct["Pid"] then asserts.Assert__integerMin1(struct["Pid"]) end
	for k,_ in pairs(struct) do
		assert(keys.DvbSubSourceSettings[k], "DvbSubSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DvbSubSourceSettings
-- Placeholder documentation for DvbSubSourceSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pid [__integerMin1] When using DVB-Sub with Burn-In or SMPTE-TT, use this PID for the source content. Unused for DVB-Sub passthrough. All DVB-Sub content is passed through, regardless of selectors.
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

keys.Mp2Settings = { ["SampleRate"] = true, ["Bitrate"] = true, ["CodingMode"] = true, nil }

function asserts.AssertMp2Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Mp2Settings to be of type 'table'")
	if struct["SampleRate"] then asserts.Assert__double(struct["SampleRate"]) end
	if struct["Bitrate"] then asserts.Assert__double(struct["Bitrate"]) end
	if struct["CodingMode"] then asserts.AssertMp2CodingMode(struct["CodingMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Mp2Settings[k], "Mp2Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Mp2Settings
-- Placeholder documentation for Mp2Settings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SampleRate [__double] Sample rate in Hz.
-- * Bitrate [__double] Average bitrate in bits/second.
-- * CodingMode [Mp2CodingMode] The MPEG2 Audio coding mode.  Valid values are codingMode10 (for mono) or codingMode20 (for stereo).
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
		["SampleRate"] = args["SampleRate"],
		["Bitrate"] = args["Bitrate"],
		["CodingMode"] = args["CodingMode"],
	}
	asserts.AssertMp2Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateChannelRequest = { ["InputAttachments"] = true, ["Reserved"] = true, ["Name"] = true, ["LogLevel"] = true, ["RoleArn"] = true, ["InputSpecification"] = true, ["RequestId"] = true, ["EncoderSettings"] = true, ["Destinations"] = true, nil }

function asserts.AssertCreateChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChannelRequest to be of type 'table'")
	if struct["InputAttachments"] then asserts.Assert__listOfInputAttachment(struct["InputAttachments"]) end
	if struct["Reserved"] then asserts.Assert__string(struct["Reserved"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LogLevel"] then asserts.AssertLogLevel(struct["LogLevel"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["InputSpecification"] then asserts.AssertInputSpecification(struct["InputSpecification"]) end
	if struct["RequestId"] then asserts.Assert__string(struct["RequestId"]) end
	if struct["EncoderSettings"] then asserts.AssertEncoderSettings(struct["EncoderSettings"]) end
	if struct["Destinations"] then asserts.Assert__listOfOutputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateChannelRequest[k], "CreateChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChannelRequest
-- A request to create a channel
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputAttachments [__listOfInputAttachment] List of input attachments for channel.
-- * Reserved [__string] Deprecated field that's only usable by whitelisted customers.
-- * Name [__string] Name of channel.
-- * LogLevel [LogLevel] The log level to write to CloudWatch Logs.
-- * RoleArn [__string] An optional Amazon Resource Name (ARN) of the role to assume when running the Channel.
-- * InputSpecification [InputSpecification] Specification of input for this channel (max. bitrate, resolution, codec, etc.)
-- * RequestId [__string] Unique request ID to be specified. This is needed to prevent retries from
--creating multiple resources.
--
-- * EncoderSettings [EncoderSettings] 
-- * Destinations [__listOfOutputDestination] 
-- @return CreateChannelRequest structure as a key-value pair table
function M.CreateChannelRequest(args)
	assert(args, "You must provide an argument table when creating CreateChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputAttachments"] = args["InputAttachments"],
		["Reserved"] = args["Reserved"],
		["Name"] = args["Name"],
		["LogLevel"] = args["LogLevel"],
		["RoleArn"] = args["RoleArn"],
		["InputSpecification"] = args["InputSpecification"],
		["RequestId"] = args["RequestId"],
		["EncoderSettings"] = args["EncoderSettings"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertCreateChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte20PlusEmbeddedDestinationSettings = { nil }

function asserts.AssertScte20PlusEmbeddedDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte20PlusEmbeddedDestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.Scte20PlusEmbeddedDestinationSettings[k], "Scte20PlusEmbeddedDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte20PlusEmbeddedDestinationSettings
-- Placeholder documentation for Scte20PlusEmbeddedDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return Scte20PlusEmbeddedDestinationSettings structure as a key-value pair table
function M.Scte20PlusEmbeddedDestinationSettings(args)
	assert(args, "You must provide an argument table when creating Scte20PlusEmbeddedDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertScte20PlusEmbeddedDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsOutputSettings = { ["SegmentModifier"] = true, ["NameModifier"] = true, ["HlsSettings"] = true, nil }

function asserts.AssertHlsOutputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsOutputSettings to be of type 'table'")
	assert(struct["HlsSettings"], "Expected key HlsSettings to exist in table")
	if struct["SegmentModifier"] then asserts.Assert__string(struct["SegmentModifier"]) end
	if struct["NameModifier"] then asserts.Assert__stringMin1(struct["NameModifier"]) end
	if struct["HlsSettings"] then asserts.AssertHlsSettings(struct["HlsSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsOutputSettings[k], "HlsOutputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsOutputSettings
-- Placeholder documentation for HlsOutputSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentModifier [__string] String concatenated to end of segment filenames.
-- * NameModifier [__stringMin1] String concatenated to the end of the destination filename. Accepts \"Format Identifiers\":#formatIdentifierParameters.
-- * HlsSettings [HlsSettings] Settings regarding the underlying stream. These settings are different for audio-only outputs.
-- Required key: HlsSettings
-- @return HlsOutputSettings structure as a key-value pair table
function M.HlsOutputSettings(args)
	assert(args, "You must provide an argument table when creating HlsOutputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentModifier"] = args["SegmentModifier"],
		["NameModifier"] = args["NameModifier"],
		["HlsSettings"] = args["HlsSettings"],
	}
	asserts.AssertHlsOutputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsInputSettings = { ["RetryInterval"] = true, ["Retries"] = true, ["Bandwidth"] = true, ["BufferSegments"] = true, nil }

function asserts.AssertHlsInputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsInputSettings to be of type 'table'")
	if struct["RetryInterval"] then asserts.Assert__integerMin0(struct["RetryInterval"]) end
	if struct["Retries"] then asserts.Assert__integerMin0(struct["Retries"]) end
	if struct["Bandwidth"] then asserts.Assert__integerMin0(struct["Bandwidth"]) end
	if struct["BufferSegments"] then asserts.Assert__integerMin0(struct["BufferSegments"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsInputSettings[k], "HlsInputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsInputSettings
-- Placeholder documentation for HlsInputSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RetryInterval [__integerMin0] The number of seconds between retries when an attempt to read a manifest or segment fails.
-- * Retries [__integerMin0] The number of consecutive times that attempts to read a manifest or segment must fail before the input is considered unavailable.
-- * Bandwidth [__integerMin0] When specified the HLS stream with the m3u8 BANDWIDTH that most closely matches this value will be chosen, otherwise the highest bandwidth stream in the m3u8 will be chosen.  The bitrate is specified in bits per second, as in an HLS manifest.
-- * BufferSegments [__integerMin0] When specified, reading of the HLS input will begin this many buffer segments from the end (most recently written segment).  When not specified, the HLS input will begin with the first segment specified in the m3u8.
-- @return HlsInputSettings structure as a key-value pair table
function M.HlsInputSettings(args)
	assert(args, "You must provide an argument table when creating HlsInputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RetryInterval"] = args["RetryInterval"],
		["Retries"] = args["Retries"],
		["Bandwidth"] = args["Bandwidth"],
		["BufferSegments"] = args["BufferSegments"],
	}
	asserts.AssertHlsInputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputSecurityGroup = { ["Inputs"] = true, ["State"] = true, ["WhitelistRules"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertInputSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputSecurityGroup to be of type 'table'")
	if struct["Inputs"] then asserts.Assert__listOf__string(struct["Inputs"]) end
	if struct["State"] then asserts.AssertInputSecurityGroupState(struct["State"]) end
	if struct["WhitelistRules"] then asserts.Assert__listOfInputWhitelistRule(struct["WhitelistRules"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputSecurityGroup[k], "InputSecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputSecurityGroup
-- An Input Security Group
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Inputs [__listOf__string] The list of inputs currently using this Input Security Group.
-- * State [InputSecurityGroupState] The current state of the Input Security Group.
-- * WhitelistRules [__listOfInputWhitelistRule] Whitelist rules and their sync status
-- * Id [__string] The Id of the Input Security Group
-- * Arn [__string] Unique ARN of Input Security Group
-- @return InputSecurityGroup structure as a key-value pair table
function M.InputSecurityGroup(args)
	assert(args, "You must provide an argument table when creating InputSecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Inputs"] = args["Inputs"],
		["State"] = args["State"],
		["WhitelistRules"] = args["WhitelistRules"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertInputSecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchScheduleActionDeleteRequest = { ["ActionNames"] = true, nil }

function asserts.AssertBatchScheduleActionDeleteRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchScheduleActionDeleteRequest to be of type 'table'")
	assert(struct["ActionNames"], "Expected key ActionNames to exist in table")
	if struct["ActionNames"] then asserts.Assert__listOf__string(struct["ActionNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchScheduleActionDeleteRequest[k], "BatchScheduleActionDeleteRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchScheduleActionDeleteRequest
-- A list of schedule actions to delete.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ActionNames [__listOf__string] A list of schedule actions to delete.
-- Required key: ActionNames
-- @return BatchScheduleActionDeleteRequest structure as a key-value pair table
function M.BatchScheduleActionDeleteRequest(args)
	assert(args, "You must provide an argument table when creating BatchScheduleActionDeleteRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ActionNames"] = args["ActionNames"],
	}
	asserts.AssertBatchScheduleActionDeleteRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UdpContainerSettings = { ["M2tsSettings"] = true, nil }

function asserts.AssertUdpContainerSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UdpContainerSettings to be of type 'table'")
	if struct["M2tsSettings"] then asserts.AssertM2tsSettings(struct["M2tsSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.UdpContainerSettings[k], "UdpContainerSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UdpContainerSettings
-- Placeholder documentation for UdpContainerSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * M2tsSettings [M2tsSettings] 
-- @return UdpContainerSettings structure as a key-value pair table
function M.UdpContainerSettings(args)
	assert(args, "You must provide an argument table when creating UdpContainerSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["M2tsSettings"] = args["M2tsSettings"],
	}
	asserts.AssertUdpContainerSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoSelectorPid = { ["Pid"] = true, nil }

function asserts.AssertVideoSelectorPid(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoSelectorPid to be of type 'table'")
	if struct["Pid"] then asserts.Assert__integerMin0Max8191(struct["Pid"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoSelectorPid[k], "VideoSelectorPid contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoSelectorPid
-- Placeholder documentation for VideoSelectorPid
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pid [__integerMin0Max8191] Selects a specific PID from within a video source.
-- @return VideoSelectorPid structure as a key-value pair table
function M.VideoSelectorPid(args)
	assert(args, "You must provide an argument table when creating VideoSelectorPid")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pid"] = args["Pid"],
	}
	asserts.AssertVideoSelectorPid(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsMediaStoreSettings = { ["NumRetries"] = true, ["ConnectionRetryInterval"] = true, ["MediaStoreStorageClass"] = true, ["FilecacheDuration"] = true, ["RestartDelay"] = true, nil }

function asserts.AssertHlsMediaStoreSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsMediaStoreSettings to be of type 'table'")
	if struct["NumRetries"] then asserts.Assert__integerMin0(struct["NumRetries"]) end
	if struct["ConnectionRetryInterval"] then asserts.Assert__integerMin0(struct["ConnectionRetryInterval"]) end
	if struct["MediaStoreStorageClass"] then asserts.AssertHlsMediaStoreStorageClass(struct["MediaStoreStorageClass"]) end
	if struct["FilecacheDuration"] then asserts.Assert__integerMin0Max600(struct["FilecacheDuration"]) end
	if struct["RestartDelay"] then asserts.Assert__integerMin0Max15(struct["RestartDelay"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsMediaStoreSettings[k], "HlsMediaStoreSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsMediaStoreSettings
-- Placeholder documentation for HlsMediaStoreSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumRetries [__integerMin0] Number of retry attempts that will be made before the Live Event is put into an error state.
-- * ConnectionRetryInterval [__integerMin0] Number of seconds to wait before retrying connection to the CDN if the connection is lost.
-- * MediaStoreStorageClass [HlsMediaStoreStorageClass] When set to temporal, output files are stored in non-persistent memory for faster reading and writing.
-- * FilecacheDuration [__integerMin0Max600] Size in seconds of file cache for streaming outputs.
-- * RestartDelay [__integerMin0Max15] If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
-- @return HlsMediaStoreSettings structure as a key-value pair table
function M.HlsMediaStoreSettings(args)
	assert(args, "You must provide an argument table when creating HlsMediaStoreSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumRetries"] = args["NumRetries"],
		["ConnectionRetryInterval"] = args["ConnectionRetryInterval"],
		["MediaStoreStorageClass"] = args["MediaStoreStorageClass"],
		["FilecacheDuration"] = args["FilecacheDuration"],
		["RestartDelay"] = args["RestartDelay"],
	}
	asserts.AssertHlsMediaStoreSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputGroup = { ["OutputGroupSettings"] = true, ["Outputs"] = true, ["Name"] = true, nil }

function asserts.AssertOutputGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputGroup to be of type 'table'")
	assert(struct["Outputs"], "Expected key Outputs to exist in table")
	assert(struct["OutputGroupSettings"], "Expected key OutputGroupSettings to exist in table")
	if struct["OutputGroupSettings"] then asserts.AssertOutputGroupSettings(struct["OutputGroupSettings"]) end
	if struct["Outputs"] then asserts.Assert__listOfOutput(struct["Outputs"]) end
	if struct["Name"] then asserts.Assert__stringMax32(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputGroup[k], "OutputGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputGroup
-- Output groups for this Live Event. Output groups contain information about where streams should be distributed.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputGroupSettings [OutputGroupSettings] Settings associated with the output group.
-- * Outputs [__listOfOutput] 
-- * Name [__stringMax32] Custom output group name optionally defined by the user.  Only letters, numbers, and the underscore character allowed; only 32 characters allowed.
-- Required key: Outputs
-- Required key: OutputGroupSettings
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

keys.Offering = { ["DurationUnits"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["ResourceSpecification"] = true, ["OfferingId"] = true, ["CurrencyCode"] = true, ["UsagePrice"] = true, ["OfferingDescription"] = true, ["Duration"] = true, ["Region"] = true, ["Arn"] = true, nil }

function asserts.AssertOffering(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Offering to be of type 'table'")
	if struct["DurationUnits"] then asserts.AssertOfferingDurationUnits(struct["DurationUnits"]) end
	if struct["OfferingType"] then asserts.AssertOfferingType(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.Assert__double(struct["FixedPrice"]) end
	if struct["ResourceSpecification"] then asserts.AssertReservationResourceSpecification(struct["ResourceSpecification"]) end
	if struct["OfferingId"] then asserts.Assert__string(struct["OfferingId"]) end
	if struct["CurrencyCode"] then asserts.Assert__string(struct["CurrencyCode"]) end
	if struct["UsagePrice"] then asserts.Assert__double(struct["UsagePrice"]) end
	if struct["OfferingDescription"] then asserts.Assert__string(struct["OfferingDescription"]) end
	if struct["Duration"] then asserts.Assert__integer(struct["Duration"]) end
	if struct["Region"] then asserts.Assert__string(struct["Region"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Offering[k], "Offering contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Offering
-- Reserved resources available for purchase
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DurationUnits [OfferingDurationUnits] Units for duration, e.g. 'MONTHS'
-- * OfferingType [OfferingType] Offering type, e.g. 'NO_UPFRONT'
-- * FixedPrice [__double] One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
-- * ResourceSpecification [ReservationResourceSpecification] Resource configuration details
-- * OfferingId [__string] Unique offering ID, e.g. '87654321'
-- * CurrencyCode [__string] Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
-- * UsagePrice [__double] Recurring usage charge for each reserved resource, e.g. '157.0'
-- * OfferingDescription [__string] Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
-- * Duration [__integer] Lease duration, e.g. '12'
-- * Region [__string] AWS region, e.g. 'us-west-2'
-- * Arn [__string] Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
-- @return Offering structure as a key-value pair table
function M.Offering(args)
	assert(args, "You must provide an argument table when creating Offering")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DurationUnits"] = args["DurationUnits"],
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["ResourceSpecification"] = args["ResourceSpecification"],
		["OfferingId"] = args["OfferingId"],
		["CurrencyCode"] = args["CurrencyCode"],
		["UsagePrice"] = args["UsagePrice"],
		["OfferingDescription"] = args["OfferingDescription"],
		["Duration"] = args["Duration"],
		["Region"] = args["Region"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertOffering(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsWebdavSettings = { ["NumRetries"] = true, ["ConnectionRetryInterval"] = true, ["HttpTransferMode"] = true, ["FilecacheDuration"] = true, ["RestartDelay"] = true, nil }

function asserts.AssertHlsWebdavSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsWebdavSettings to be of type 'table'")
	if struct["NumRetries"] then asserts.Assert__integerMin0(struct["NumRetries"]) end
	if struct["ConnectionRetryInterval"] then asserts.Assert__integerMin0(struct["ConnectionRetryInterval"]) end
	if struct["HttpTransferMode"] then asserts.AssertHlsWebdavHttpTransferMode(struct["HttpTransferMode"]) end
	if struct["FilecacheDuration"] then asserts.Assert__integerMin0Max600(struct["FilecacheDuration"]) end
	if struct["RestartDelay"] then asserts.Assert__integerMin0Max15(struct["RestartDelay"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsWebdavSettings[k], "HlsWebdavSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsWebdavSettings
-- Placeholder documentation for HlsWebdavSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NumRetries [__integerMin0] Number of retry attempts that will be made before the Live Event is put into an error state.
-- * ConnectionRetryInterval [__integerMin0] Number of seconds to wait before retrying connection to the CDN if the connection is lost.
-- * HttpTransferMode [HlsWebdavHttpTransferMode] Specify whether or not to use chunked transfer encoding to WebDAV.
-- * FilecacheDuration [__integerMin0Max600] Size in seconds of file cache for streaming outputs.
-- * RestartDelay [__integerMin0Max15] If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
-- @return HlsWebdavSettings structure as a key-value pair table
function M.HlsWebdavSettings(args)
	assert(args, "You must provide an argument table when creating HlsWebdavSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NumRetries"] = args["NumRetries"],
		["ConnectionRetryInterval"] = args["ConnectionRetryInterval"],
		["HttpTransferMode"] = args["HttpTransferMode"],
		["FilecacheDuration"] = args["FilecacheDuration"],
		["RestartDelay"] = args["RestartDelay"],
	}
	asserts.AssertHlsWebdavSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListInputsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListInputsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInputsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInputsRequest[k], "ListInputsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInputsRequest
-- Placeholder documentation for ListInputsRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] 
-- * MaxResults [MaxResults] 
-- @return ListInputsRequest structure as a key-value pair table
function M.ListInputsRequest(args)
	assert(args, "You must provide an argument table when creating ListInputsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListInputsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioDescription = { ["CodecSettings"] = true, ["LanguageCode"] = true, ["StreamName"] = true, ["AudioSelectorName"] = true, ["LanguageCodeControl"] = true, ["RemixSettings"] = true, ["AudioTypeControl"] = true, ["AudioType"] = true, ["AudioNormalizationSettings"] = true, ["Name"] = true, nil }

function asserts.AssertAudioDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioDescription to be of type 'table'")
	assert(struct["AudioSelectorName"], "Expected key AudioSelectorName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["CodecSettings"] then asserts.AssertAudioCodecSettings(struct["CodecSettings"]) end
	if struct["LanguageCode"] then asserts.Assert__stringMin3Max3(struct["LanguageCode"]) end
	if struct["StreamName"] then asserts.Assert__string(struct["StreamName"]) end
	if struct["AudioSelectorName"] then asserts.Assert__string(struct["AudioSelectorName"]) end
	if struct["LanguageCodeControl"] then asserts.AssertAudioDescriptionLanguageCodeControl(struct["LanguageCodeControl"]) end
	if struct["RemixSettings"] then asserts.AssertRemixSettings(struct["RemixSettings"]) end
	if struct["AudioTypeControl"] then asserts.AssertAudioDescriptionAudioTypeControl(struct["AudioTypeControl"]) end
	if struct["AudioType"] then asserts.AssertAudioType(struct["AudioType"]) end
	if struct["AudioNormalizationSettings"] then asserts.AssertAudioNormalizationSettings(struct["AudioNormalizationSettings"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioDescription[k], "AudioDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioDescription
-- Placeholder documentation for AudioDescription
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodecSettings [AudioCodecSettings] Audio codec settings.
-- * LanguageCode [__stringMin3Max3] Indicates the language of the audio output track. Only used if languageControlMode is useConfigured, or there is no ISO 639 language code specified in the input.
-- * StreamName [__string] Used for MS Smooth and Apple HLS outputs. Indicates the name displayed by the player (eg. English, or Director Commentary).
-- * AudioSelectorName [__string] The name of the AudioSelector used as the source for this AudioDescription.
-- * LanguageCodeControl [AudioDescriptionLanguageCodeControl] Choosing followInput will cause the ISO 639 language code of the output to follow the ISO 639 language code of the input. The languageCode will be used when useConfigured is set, or when followInput is selected but there is no ISO 639 language code specified by the input.
-- * RemixSettings [RemixSettings] Settings that control how input audio channels are remixed into the output audio channels.
-- * AudioTypeControl [AudioDescriptionAudioTypeControl] Determines how audio type is determined.
--  followInput: If the input contains an ISO 639 audioType, then that value is passed through to the output. If the input contains no ISO 639 audioType, the value in Audio Type is included in the output.
--  useConfigured: The value in Audio Type is included in the output.
--Note that this field and audioType are both ignored if inputType is broadcasterMixedAd.
-- * AudioType [AudioType] Applies only if audioTypeControl is useConfigured. The values for audioType are defined in ISO-IEC 13818-1.
-- * AudioNormalizationSettings [AudioNormalizationSettings] Advanced audio normalization settings.
-- * Name [__string] The name of this AudioDescription. Outputs will use this name to uniquely identify this AudioDescription.  Description names should be unique within this Live Event.
-- Required key: AudioSelectorName
-- Required key: Name
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
		["StreamName"] = args["StreamName"],
		["AudioSelectorName"] = args["AudioSelectorName"],
		["LanguageCodeControl"] = args["LanguageCodeControl"],
		["RemixSettings"] = args["RemixSettings"],
		["AudioTypeControl"] = args["AudioTypeControl"],
		["AudioType"] = args["AudioType"],
		["AudioNormalizationSettings"] = args["AudioNormalizationSettings"],
		["Name"] = args["Name"],
	}
	asserts.AssertAudioDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListReservationsResponse = { ["Reservations"] = true, ["NextToken"] = true, nil }

function asserts.AssertListReservationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReservationsResponse to be of type 'table'")
	if struct["Reservations"] then asserts.Assert__listOfReservation(struct["Reservations"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReservationsResponse[k], "ListReservationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReservationsResponse
-- Placeholder documentation for ListReservationsResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Reservations [__listOfReservation] List of reservations
-- * NextToken [__string] Token to retrieve the next page of results
-- @return ListReservationsResponse structure as a key-value pair table
function M.ListReservationsResponse(args)
	assert(args, "You must provide an argument table when creating ListReservationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Reservations"] = args["Reservations"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListReservationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RtmpOutputSettings = { ["ConnectionRetryInterval"] = true, ["Destination"] = true, ["NumRetries"] = true, ["CertificateMode"] = true, nil }

function asserts.AssertRtmpOutputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RtmpOutputSettings to be of type 'table'")
	assert(struct["Destination"], "Expected key Destination to exist in table")
	if struct["ConnectionRetryInterval"] then asserts.Assert__integerMin1(struct["ConnectionRetryInterval"]) end
	if struct["Destination"] then asserts.AssertOutputLocationRef(struct["Destination"]) end
	if struct["NumRetries"] then asserts.Assert__integerMin0(struct["NumRetries"]) end
	if struct["CertificateMode"] then asserts.AssertRtmpOutputCertificateMode(struct["CertificateMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.RtmpOutputSettings[k], "RtmpOutputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RtmpOutputSettings
-- Placeholder documentation for RtmpOutputSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionRetryInterval [__integerMin1] Number of seconds to wait before retrying a connection to the Flash Media server if the connection is lost.
-- * Destination [OutputLocationRef] The RTMP endpoint excluding the stream name (eg. rtmp://host/appname). For connection to Akamai, a username and password must be supplied. URI fields accept format identifiers.
-- * NumRetries [__integerMin0] Number of retry attempts.
-- * CertificateMode [RtmpOutputCertificateMode] If set to verifyAuthenticity, verify the tls certificate chain to a trusted Certificate Authority (CA).  This will cause rtmps outputs with self-signed certificates to fail.
-- Required key: Destination
-- @return RtmpOutputSettings structure as a key-value pair table
function M.RtmpOutputSettings(args)
	assert(args, "You must provide an argument table when creating RtmpOutputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionRetryInterval"] = args["ConnectionRetryInterval"],
		["Destination"] = args["Destination"],
		["NumRetries"] = args["NumRetries"],
		["CertificateMode"] = args["CertificateMode"],
	}
	asserts.AssertRtmpOutputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StaticKeySettings = { ["StaticKeyValue"] = true, ["KeyProviderServer"] = true, nil }

function asserts.AssertStaticKeySettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StaticKeySettings to be of type 'table'")
	assert(struct["StaticKeyValue"], "Expected key StaticKeyValue to exist in table")
	if struct["StaticKeyValue"] then asserts.Assert__stringMin32Max32(struct["StaticKeyValue"]) end
	if struct["KeyProviderServer"] then asserts.AssertInputLocation(struct["KeyProviderServer"]) end
	for k,_ in pairs(struct) do
		assert(keys.StaticKeySettings[k], "StaticKeySettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StaticKeySettings
-- Placeholder documentation for StaticKeySettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StaticKeyValue [__stringMin32Max32] Static key value as a 32 character hexadecimal string.
-- * KeyProviderServer [InputLocation] The URL of the license server used for protecting content.
-- Required key: StaticKeyValue
-- @return StaticKeySettings structure as a key-value pair table
function M.StaticKeySettings(args)
	assert(args, "You must provide an argument table when creating StaticKeySettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StaticKeyValue"] = args["StaticKeyValue"],
		["KeyProviderServer"] = args["KeyProviderServer"],
	}
	asserts.AssertStaticKeySettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchScheduleActionCreateResult = { ["ScheduleActions"] = true, nil }

function asserts.AssertBatchScheduleActionCreateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchScheduleActionCreateResult to be of type 'table'")
	assert(struct["ScheduleActions"], "Expected key ScheduleActions to exist in table")
	if struct["ScheduleActions"] then asserts.Assert__listOfScheduleAction(struct["ScheduleActions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchScheduleActionCreateResult[k], "BatchScheduleActionCreateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchScheduleActionCreateResult
-- List of actions that have been created in the schedule.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleActions [__listOfScheduleAction] List of actions that have been created in the schedule.
-- Required key: ScheduleActions
-- @return BatchScheduleActionCreateResult structure as a key-value pair table
function M.BatchScheduleActionCreateResult(args)
	assert(args, "You must provide an argument table when creating BatchScheduleActionCreateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduleActions"] = args["ScheduleActions"],
	}
	asserts.AssertBatchScheduleActionCreateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WebvttDestinationSettings = { nil }

function asserts.AssertWebvttDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WebvttDestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.WebvttDestinationSettings[k], "WebvttDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WebvttDestinationSettings
-- Placeholder documentation for WebvttDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return WebvttDestinationSettings structure as a key-value pair table
function M.WebvttDestinationSettings(args)
	assert(args, "You must provide an argument table when creating WebvttDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertWebvttDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeScheduleResponse = { ["ScheduleActions"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeScheduleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeScheduleResponse to be of type 'table'")
	if struct["ScheduleActions"] then asserts.Assert__listOfScheduleAction(struct["ScheduleActions"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeScheduleResponse[k], "DescribeScheduleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeScheduleResponse
-- Placeholder documentation for DescribeScheduleResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleActions [__listOfScheduleAction] The list of actions in the schedule.
-- * NextToken [__string] The next token; for use in pagination.
-- @return DescribeScheduleResponse structure as a key-value pair table
function M.DescribeScheduleResponse(args)
	assert(args, "You must provide an argument table when creating DescribeScheduleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduleActions"] = args["ScheduleActions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeScheduleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputWhitelistRule = { ["Cidr"] = true, nil }

function asserts.AssertInputWhitelistRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputWhitelistRule to be of type 'table'")
	if struct["Cidr"] then asserts.Assert__string(struct["Cidr"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputWhitelistRule[k], "InputWhitelistRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputWhitelistRule
-- Whitelist rule
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cidr [__string] The IPv4 CIDR that's whitelisted.
-- @return InputWhitelistRule structure as a key-value pair table
function M.InputWhitelistRule(args)
	assert(args, "You must provide an argument table when creating InputWhitelistRule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Cidr"] = args["Cidr"],
	}
	asserts.AssertInputWhitelistRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOfferingResponse = { ["DurationUnits"] = true, ["OfferingType"] = true, ["FixedPrice"] = true, ["ResourceSpecification"] = true, ["OfferingId"] = true, ["CurrencyCode"] = true, ["UsagePrice"] = true, ["OfferingDescription"] = true, ["Duration"] = true, ["Region"] = true, ["Arn"] = true, nil }

function asserts.AssertDescribeOfferingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOfferingResponse to be of type 'table'")
	if struct["DurationUnits"] then asserts.AssertOfferingDurationUnits(struct["DurationUnits"]) end
	if struct["OfferingType"] then asserts.AssertOfferingType(struct["OfferingType"]) end
	if struct["FixedPrice"] then asserts.Assert__double(struct["FixedPrice"]) end
	if struct["ResourceSpecification"] then asserts.AssertReservationResourceSpecification(struct["ResourceSpecification"]) end
	if struct["OfferingId"] then asserts.Assert__string(struct["OfferingId"]) end
	if struct["CurrencyCode"] then asserts.Assert__string(struct["CurrencyCode"]) end
	if struct["UsagePrice"] then asserts.Assert__double(struct["UsagePrice"]) end
	if struct["OfferingDescription"] then asserts.Assert__string(struct["OfferingDescription"]) end
	if struct["Duration"] then asserts.Assert__integer(struct["Duration"]) end
	if struct["Region"] then asserts.Assert__string(struct["Region"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOfferingResponse[k], "DescribeOfferingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOfferingResponse
-- Placeholder documentation for DescribeOfferingResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DurationUnits [OfferingDurationUnits] Units for duration, e.g. 'MONTHS'
-- * OfferingType [OfferingType] Offering type, e.g. 'NO_UPFRONT'
-- * FixedPrice [__double] One-time charge for each reserved resource, e.g. '0.0' for a NO_UPFRONT offering
-- * ResourceSpecification [ReservationResourceSpecification] Resource configuration details
-- * OfferingId [__string] Unique offering ID, e.g. '87654321'
-- * CurrencyCode [__string] Currency code for usagePrice and fixedPrice in ISO-4217 format, e.g. 'USD'
-- * UsagePrice [__double] Recurring usage charge for each reserved resource, e.g. '157.0'
-- * OfferingDescription [__string] Offering description, e.g. 'HD AVC output at 10-20 Mbps, 30 fps, and standard VQ in US West (Oregon)'
-- * Duration [__integer] Lease duration, e.g. '12'
-- * Region [__string] AWS region, e.g. 'us-west-2'
-- * Arn [__string] Unique offering ARN, e.g. 'arn:aws:medialive:us-west-2:123456789012:offering:87654321'
-- @return DescribeOfferingResponse structure as a key-value pair table
function M.DescribeOfferingResponse(args)
	assert(args, "You must provide an argument table when creating DescribeOfferingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DurationUnits"] = args["DurationUnits"],
		["OfferingType"] = args["OfferingType"],
		["FixedPrice"] = args["FixedPrice"],
		["ResourceSpecification"] = args["ResourceSpecification"],
		["OfferingId"] = args["OfferingId"],
		["CurrencyCode"] = args["CurrencyCode"],
		["UsagePrice"] = args["UsagePrice"],
		["OfferingDescription"] = args["OfferingDescription"],
		["Duration"] = args["Duration"],
		["Region"] = args["Region"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertDescribeOfferingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmbeddedSourceSettings = { ["Scte20Detection"] = true, ["Source608ChannelNumber"] = true, ["Convert608To708"] = true, ["Source608TrackNumber"] = true, nil }

function asserts.AssertEmbeddedSourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmbeddedSourceSettings to be of type 'table'")
	if struct["Scte20Detection"] then asserts.AssertEmbeddedScte20Detection(struct["Scte20Detection"]) end
	if struct["Source608ChannelNumber"] then asserts.Assert__integerMin1Max4(struct["Source608ChannelNumber"]) end
	if struct["Convert608To708"] then asserts.AssertEmbeddedConvert608To708(struct["Convert608To708"]) end
	if struct["Source608TrackNumber"] then asserts.Assert__integerMin1Max5(struct["Source608TrackNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.EmbeddedSourceSettings[k], "EmbeddedSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmbeddedSourceSettings
-- Placeholder documentation for EmbeddedSourceSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scte20Detection [EmbeddedScte20Detection] Set to "auto" to handle streams with intermittent and/or non-aligned SCTE-20 and Embedded captions.
-- * Source608ChannelNumber [__integerMin1Max4] Specifies the 608/708 channel number within the video track from which to extract captions. Unused for passthrough.
-- * Convert608To708 [EmbeddedConvert608To708] If upconvert, 608 data is both passed through via the "608 compatibility bytes" fields of the 708 wrapper as well as translated into 708. 708 data present in the source content will be discarded.
-- * Source608TrackNumber [__integerMin1Max5] This field is unused and deprecated.
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
		["Scte20Detection"] = args["Scte20Detection"],
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

keys.ListInputSecurityGroupsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListInputSecurityGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInputSecurityGroupsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInputSecurityGroupsRequest[k], "ListInputSecurityGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInputSecurityGroupsRequest
-- Placeholder documentation for ListInputSecurityGroupsRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] 
-- * MaxResults [MaxResults] 
-- @return ListInputSecurityGroupsRequest structure as a key-value pair table
function M.ListInputSecurityGroupsRequest(args)
	assert(args, "You must provide an argument table when creating ListInputSecurityGroupsRequest")
    local query_args = { 
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListInputSecurityGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemixSettings = { ["ChannelMappings"] = true, ["ChannelsOut"] = true, ["ChannelsIn"] = true, nil }

function asserts.AssertRemixSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemixSettings to be of type 'table'")
	assert(struct["ChannelMappings"], "Expected key ChannelMappings to exist in table")
	if struct["ChannelMappings"] then asserts.Assert__listOfAudioChannelMapping(struct["ChannelMappings"]) end
	if struct["ChannelsOut"] then asserts.Assert__integerMin1Max8(struct["ChannelsOut"]) end
	if struct["ChannelsIn"] then asserts.Assert__integerMin1Max16(struct["ChannelsIn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemixSettings[k], "RemixSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemixSettings
-- Placeholder documentation for RemixSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelMappings [__listOfAudioChannelMapping] Mapping of input channels to output channels, with appropriate gain adjustments.
-- * ChannelsOut [__integerMin1Max8] Number of output channels to be produced.
--Valid values: 1, 2, 4, 6, 8
-- * ChannelsIn [__integerMin1Max16] Number of input channels to be used.
-- Required key: ChannelMappings
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
		["ChannelMappings"] = args["ChannelMappings"],
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

keys.VideoCodecSettings = { ["H264Settings"] = true, nil }

function asserts.AssertVideoCodecSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoCodecSettings to be of type 'table'")
	if struct["H264Settings"] then asserts.AssertH264Settings(struct["H264Settings"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoCodecSettings[k], "VideoCodecSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoCodecSettings
-- Placeholder documentation for VideoCodecSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * H264Settings [H264Settings] 
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
		["H264Settings"] = args["H264Settings"],
	}
	asserts.AssertVideoCodecSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EmbeddedDestinationSettings = { nil }

function asserts.AssertEmbeddedDestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EmbeddedDestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.EmbeddedDestinationSettings[k], "EmbeddedDestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EmbeddedDestinationSettings
-- Placeholder documentation for EmbeddedDestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return EmbeddedDestinationSettings structure as a key-value pair table
function M.EmbeddedDestinationSettings(args)
	assert(args, "You must provide an argument table when creating EmbeddedDestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEmbeddedDestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Channel = { ["InputAttachments"] = true, ["Name"] = true, ["LogLevel"] = true, ["RoleArn"] = true, ["State"] = true, ["EgressEndpoints"] = true, ["InputSpecification"] = true, ["PipelinesRunningCount"] = true, ["EncoderSettings"] = true, ["Id"] = true, ["Arn"] = true, ["Destinations"] = true, nil }

function asserts.AssertChannel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Channel to be of type 'table'")
	if struct["InputAttachments"] then asserts.Assert__listOfInputAttachment(struct["InputAttachments"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["LogLevel"] then asserts.AssertLogLevel(struct["LogLevel"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["State"] then asserts.AssertChannelState(struct["State"]) end
	if struct["EgressEndpoints"] then asserts.Assert__listOfChannelEgressEndpoint(struct["EgressEndpoints"]) end
	if struct["InputSpecification"] then asserts.AssertInputSpecification(struct["InputSpecification"]) end
	if struct["PipelinesRunningCount"] then asserts.Assert__integer(struct["PipelinesRunningCount"]) end
	if struct["EncoderSettings"] then asserts.AssertEncoderSettings(struct["EncoderSettings"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["Destinations"] then asserts.Assert__listOfOutputDestination(struct["Destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.Channel[k], "Channel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Channel
-- Placeholder documentation for Channel
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputAttachments [__listOfInputAttachment] List of input attachments for channel.
-- * Name [__string] The name of the channel. (user-mutable)
-- * LogLevel [LogLevel] The log level being written to CloudWatch Logs.
-- * RoleArn [__string] The Amazon Resource Name (ARN) of the role assumed when running the Channel.
-- * State [ChannelState] 
-- * EgressEndpoints [__listOfChannelEgressEndpoint] The endpoints where outgoing connections initiate from
-- * InputSpecification [InputSpecification] 
-- * PipelinesRunningCount [__integer] The number of currently healthy pipelines.
-- * EncoderSettings [EncoderSettings] 
-- * Id [__string] The unique id of the channel.
-- * Arn [__string] The unique arn of the channel.
-- * Destinations [__listOfOutputDestination] A list of destinations of the channel. For UDP outputs, there is one
--destination per output. For other types (HLS, for example), there is
--one destination per packager.
--
-- @return Channel structure as a key-value pair table
function M.Channel(args)
	assert(args, "You must provide an argument table when creating Channel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputAttachments"] = args["InputAttachments"],
		["Name"] = args["Name"],
		["LogLevel"] = args["LogLevel"],
		["RoleArn"] = args["RoleArn"],
		["State"] = args["State"],
		["EgressEndpoints"] = args["EgressEndpoints"],
		["InputSpecification"] = args["InputSpecification"],
		["PipelinesRunningCount"] = args["PipelinesRunningCount"],
		["EncoderSettings"] = args["EncoderSettings"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
		["Destinations"] = args["Destinations"],
	}
	asserts.AssertChannel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListReservationsRequest = { ["SpecialFeature"] = true, ["VideoQuality"] = true, ["MaximumBitrate"] = true, ["ResourceType"] = true, ["MaxResults"] = true, ["Codec"] = true, ["MaximumFramerate"] = true, ["NextToken"] = true, ["Resolution"] = true, nil }

function asserts.AssertListReservationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListReservationsRequest to be of type 'table'")
	if struct["SpecialFeature"] then asserts.Assert__string(struct["SpecialFeature"]) end
	if struct["VideoQuality"] then asserts.Assert__string(struct["VideoQuality"]) end
	if struct["MaximumBitrate"] then asserts.Assert__string(struct["MaximumBitrate"]) end
	if struct["ResourceType"] then asserts.Assert__string(struct["ResourceType"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Codec"] then asserts.Assert__string(struct["Codec"]) end
	if struct["MaximumFramerate"] then asserts.Assert__string(struct["MaximumFramerate"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["Resolution"] then asserts.Assert__string(struct["Resolution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListReservationsRequest[k], "ListReservationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListReservationsRequest
-- Placeholder documentation for ListReservationsRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpecialFeature [__string] Filter by special feature, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
--
-- * VideoQuality [__string] Filter by video quality, 'STANDARD', 'ENHANCED', or 'PREMIUM'
--
-- * MaximumBitrate [__string] Filter by bitrate, 'MAX_10_MBPS', 'MAX_20_MBPS', or 'MAX_50_MBPS'
--
-- * ResourceType [__string] Filter by resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'
-- * MaxResults [MaxResults] 
-- * Codec [__string] Filter by codec, 'AVC', 'HEVC', 'MPEG2', or 'AUDIO'
-- * MaximumFramerate [__string] Filter by framerate, 'MAX_30_FPS' or 'MAX_60_FPS'
-- * NextToken [__string] 
-- * Resolution [__string] Filter by resolution, 'SD', 'HD', or 'UHD'
-- @return ListReservationsRequest structure as a key-value pair table
function M.ListReservationsRequest(args)
	assert(args, "You must provide an argument table when creating ListReservationsRequest")
    local query_args = { 
        ["specialFeature"] = args["SpecialFeature"],
        ["videoQuality"] = args["VideoQuality"],
        ["maximumBitrate"] = args["MaximumBitrate"],
        ["resourceType"] = args["ResourceType"],
        ["maxResults"] = args["MaxResults"],
        ["codec"] = args["Codec"],
        ["maximumFramerate"] = args["MaximumFramerate"],
        ["nextToken"] = args["NextToken"],
        ["resolution"] = args["Resolution"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpecialFeature"] = args["SpecialFeature"],
		["VideoQuality"] = args["VideoQuality"],
		["MaximumBitrate"] = args["MaximumBitrate"],
		["ResourceType"] = args["ResourceType"],
		["MaxResults"] = args["MaxResults"],
		["Codec"] = args["Codec"],
		["MaximumFramerate"] = args["MaximumFramerate"],
		["NextToken"] = args["NextToken"],
		["Resolution"] = args["Resolution"],
	}
	asserts.AssertListReservationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputLossBehavior = { ["InputLossImageType"] = true, ["RepeatFrameMsec"] = true, ["InputLossImageSlate"] = true, ["InputLossImageColor"] = true, ["BlackFrameMsec"] = true, nil }

function asserts.AssertInputLossBehavior(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputLossBehavior to be of type 'table'")
	if struct["InputLossImageType"] then asserts.AssertInputLossImageType(struct["InputLossImageType"]) end
	if struct["RepeatFrameMsec"] then asserts.Assert__integerMin0Max1000000(struct["RepeatFrameMsec"]) end
	if struct["InputLossImageSlate"] then asserts.AssertInputLocation(struct["InputLossImageSlate"]) end
	if struct["InputLossImageColor"] then asserts.Assert__stringMin6Max6(struct["InputLossImageColor"]) end
	if struct["BlackFrameMsec"] then asserts.Assert__integerMin0Max1000000(struct["BlackFrameMsec"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputLossBehavior[k], "InputLossBehavior contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputLossBehavior
-- Placeholder documentation for InputLossBehavior
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputLossImageType [InputLossImageType] Indicates whether to substitute a solid color or a slate into the output after input loss exceeds blackFrameMsec.
-- * RepeatFrameMsec [__integerMin0Max1000000] Documentation update needed
-- * InputLossImageSlate [InputLocation] When input loss image type is "slate" these fields specify the parameters for accessing the slate.
-- * InputLossImageColor [__stringMin6Max6] When input loss image type is "color" this field specifies the color to use. Value: 6 hex characters representing the values of RGB.
-- * BlackFrameMsec [__integerMin0Max1000000] Documentation update needed
-- @return InputLossBehavior structure as a key-value pair table
function M.InputLossBehavior(args)
	assert(args, "You must provide an argument table when creating InputLossBehavior")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputLossImageType"] = args["InputLossImageType"],
		["RepeatFrameMsec"] = args["RepeatFrameMsec"],
		["InputLossImageSlate"] = args["InputLossImageSlate"],
		["InputLossImageColor"] = args["InputLossImageColor"],
		["BlackFrameMsec"] = args["BlackFrameMsec"],
	}
	asserts.AssertInputLossBehavior(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputChannelLevel = { ["InputChannel"] = true, ["Gain"] = true, nil }

function asserts.AssertInputChannelLevel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputChannelLevel to be of type 'table'")
	assert(struct["InputChannel"], "Expected key InputChannel to exist in table")
	assert(struct["Gain"], "Expected key Gain to exist in table")
	if struct["InputChannel"] then asserts.Assert__integerMin0Max15(struct["InputChannel"]) end
	if struct["Gain"] then asserts.Assert__integerMinNegative60Max6(struct["Gain"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputChannelLevel[k], "InputChannelLevel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputChannelLevel
-- Placeholder documentation for InputChannelLevel
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputChannel [__integerMin0Max15] The index of the input channel used as a source.
-- * Gain [__integerMinNegative60Max6] Remixing value. Units are in dB and acceptable values are within the range from -60 (mute) and 6 dB.
-- Required key: InputChannel
-- Required key: Gain
-- @return InputChannelLevel structure as a key-value pair table
function M.InputChannelLevel(args)
	assert(args, "You must provide an argument table when creating InputChannelLevel")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputChannel"] = args["InputChannel"],
		["Gain"] = args["Gain"],
	}
	asserts.AssertInputChannelLevel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateInputResponse = { ["Input"] = true, nil }

function asserts.AssertCreateInputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateInputResponse to be of type 'table'")
	if struct["Input"] then asserts.AssertInput(struct["Input"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateInputResponse[k], "CreateInputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateInputResponse
-- Placeholder documentation for CreateInputResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Input [Input] 
-- @return CreateInputResponse structure as a key-value pair table
function M.CreateInputResponse(args)
	assert(args, "You must provide an argument table when creating CreateInputResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Input"] = args["Input"],
	}
	asserts.AssertCreateInputResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte27DestinationSettings = { nil }

function asserts.AssertScte27DestinationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte27DestinationSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.Scte27DestinationSettings[k], "Scte27DestinationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte27DestinationSettings
-- Placeholder documentation for Scte27DestinationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return Scte27DestinationSettings structure as a key-value pair table
function M.Scte27DestinationSettings(args)
	assert(args, "You must provide an argument table when creating Scte27DestinationSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertScte27DestinationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ArchiveContainerSettings = { ["M2tsSettings"] = true, nil }

function asserts.AssertArchiveContainerSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ArchiveContainerSettings to be of type 'table'")
	if struct["M2tsSettings"] then asserts.AssertM2tsSettings(struct["M2tsSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ArchiveContainerSettings[k], "ArchiveContainerSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ArchiveContainerSettings
-- Placeholder documentation for ArchiveContainerSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * M2tsSettings [M2tsSettings] 
-- @return ArchiveContainerSettings structure as a key-value pair table
function M.ArchiveContainerSettings(args)
	assert(args, "You must provide an argument table when creating ArchiveContainerSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["M2tsSettings"] = args["M2tsSettings"],
	}
	asserts.AssertArchiveContainerSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.M2tsSettings = { ["TimedMetadataBehavior"] = true, ["TimedMetadataPid"] = true, ["Arib"] = true, ["Scte35Pid"] = true, ["EbpPlacement"] = true, ["TransportStreamId"] = true, ["PcrControl"] = true, ["AudioFramesPerPes"] = true, ["PatInterval"] = true, ["AribCaptionsPid"] = true, ["Ebif"] = true, ["AribCaptionsPidControl"] = true, ["Scte27Pids"] = true, ["AudioBufferModel"] = true, ["AudioPids"] = true, ["Scte35Control"] = true, ["Bitrate"] = true, ["FragmentTime"] = true, ["SegmentationMarkers"] = true, ["PcrPeriod"] = true, ["AbsentInputAudioBehavior"] = true, ["DvbNitSettings"] = true, ["PcrPid"] = true, ["KlvDataPids"] = true, ["DvbTeletextPid"] = true, ["EtvPlatformPid"] = true, ["EbpAudioInterval"] = true, ["EtvSignalPid"] = true, ["Klv"] = true, ["NullPacketBitrate"] = true, ["SegmentationStyle"] = true, ["ProgramNum"] = true, ["BufferModel"] = true, ["DvbTdtSettings"] = true, ["EcmPid"] = true, ["VideoPid"] = true, ["PmtInterval"] = true, ["PmtPid"] = true, ["DvbSubPids"] = true, ["EbpLookaheadMs"] = true, ["RateMode"] = true, ["EsRateInPes"] = true, ["DvbSdtSettings"] = true, ["AudioStreamType"] = true, ["CcDescriptor"] = true, ["SegmentationTime"] = true, nil }

function asserts.AssertM2tsSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected M2tsSettings to be of type 'table'")
	if struct["TimedMetadataBehavior"] then asserts.AssertM2tsTimedMetadataBehavior(struct["TimedMetadataBehavior"]) end
	if struct["TimedMetadataPid"] then asserts.Assert__string(struct["TimedMetadataPid"]) end
	if struct["Arib"] then asserts.AssertM2tsArib(struct["Arib"]) end
	if struct["Scte35Pid"] then asserts.Assert__string(struct["Scte35Pid"]) end
	if struct["EbpPlacement"] then asserts.AssertM2tsEbpPlacement(struct["EbpPlacement"]) end
	if struct["TransportStreamId"] then asserts.Assert__integerMin0Max65535(struct["TransportStreamId"]) end
	if struct["PcrControl"] then asserts.AssertM2tsPcrControl(struct["PcrControl"]) end
	if struct["AudioFramesPerPes"] then asserts.Assert__integerMin0(struct["AudioFramesPerPes"]) end
	if struct["PatInterval"] then asserts.Assert__integerMin0Max1000(struct["PatInterval"]) end
	if struct["AribCaptionsPid"] then asserts.Assert__string(struct["AribCaptionsPid"]) end
	if struct["Ebif"] then asserts.AssertM2tsEbifControl(struct["Ebif"]) end
	if struct["AribCaptionsPidControl"] then asserts.AssertM2tsAribCaptionsPidControl(struct["AribCaptionsPidControl"]) end
	if struct["Scte27Pids"] then asserts.Assert__string(struct["Scte27Pids"]) end
	if struct["AudioBufferModel"] then asserts.AssertM2tsAudioBufferModel(struct["AudioBufferModel"]) end
	if struct["AudioPids"] then asserts.Assert__string(struct["AudioPids"]) end
	if struct["Scte35Control"] then asserts.AssertM2tsScte35Control(struct["Scte35Control"]) end
	if struct["Bitrate"] then asserts.Assert__integerMin0(struct["Bitrate"]) end
	if struct["FragmentTime"] then asserts.Assert__doubleMin0(struct["FragmentTime"]) end
	if struct["SegmentationMarkers"] then asserts.AssertM2tsSegmentationMarkers(struct["SegmentationMarkers"]) end
	if struct["PcrPeriod"] then asserts.Assert__integerMin0Max500(struct["PcrPeriod"]) end
	if struct["AbsentInputAudioBehavior"] then asserts.AssertM2tsAbsentInputAudioBehavior(struct["AbsentInputAudioBehavior"]) end
	if struct["DvbNitSettings"] then asserts.AssertDvbNitSettings(struct["DvbNitSettings"]) end
	if struct["PcrPid"] then asserts.Assert__string(struct["PcrPid"]) end
	if struct["KlvDataPids"] then asserts.Assert__string(struct["KlvDataPids"]) end
	if struct["DvbTeletextPid"] then asserts.Assert__string(struct["DvbTeletextPid"]) end
	if struct["EtvPlatformPid"] then asserts.Assert__string(struct["EtvPlatformPid"]) end
	if struct["EbpAudioInterval"] then asserts.AssertM2tsAudioInterval(struct["EbpAudioInterval"]) end
	if struct["EtvSignalPid"] then asserts.Assert__string(struct["EtvSignalPid"]) end
	if struct["Klv"] then asserts.AssertM2tsKlv(struct["Klv"]) end
	if struct["NullPacketBitrate"] then asserts.Assert__doubleMin0(struct["NullPacketBitrate"]) end
	if struct["SegmentationStyle"] then asserts.AssertM2tsSegmentationStyle(struct["SegmentationStyle"]) end
	if struct["ProgramNum"] then asserts.Assert__integerMin0Max65535(struct["ProgramNum"]) end
	if struct["BufferModel"] then asserts.AssertM2tsBufferModel(struct["BufferModel"]) end
	if struct["DvbTdtSettings"] then asserts.AssertDvbTdtSettings(struct["DvbTdtSettings"]) end
	if struct["EcmPid"] then asserts.Assert__string(struct["EcmPid"]) end
	if struct["VideoPid"] then asserts.Assert__string(struct["VideoPid"]) end
	if struct["PmtInterval"] then asserts.Assert__integerMin0Max1000(struct["PmtInterval"]) end
	if struct["PmtPid"] then asserts.Assert__string(struct["PmtPid"]) end
	if struct["DvbSubPids"] then asserts.Assert__string(struct["DvbSubPids"]) end
	if struct["EbpLookaheadMs"] then asserts.Assert__integerMin0Max10000(struct["EbpLookaheadMs"]) end
	if struct["RateMode"] then asserts.AssertM2tsRateMode(struct["RateMode"]) end
	if struct["EsRateInPes"] then asserts.AssertM2tsEsRateInPes(struct["EsRateInPes"]) end
	if struct["DvbSdtSettings"] then asserts.AssertDvbSdtSettings(struct["DvbSdtSettings"]) end
	if struct["AudioStreamType"] then asserts.AssertM2tsAudioStreamType(struct["AudioStreamType"]) end
	if struct["CcDescriptor"] then asserts.AssertM2tsCcDescriptor(struct["CcDescriptor"]) end
	if struct["SegmentationTime"] then asserts.Assert__doubleMin1(struct["SegmentationTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.M2tsSettings[k], "M2tsSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type M2tsSettings
-- Placeholder documentation for M2tsSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimedMetadataBehavior [M2tsTimedMetadataBehavior] When set to passthrough, timed metadata will be passed through from input to output.
-- * TimedMetadataPid [__string] Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * Arib [M2tsArib] When set to enabled, uses ARIB-compliant field muxing and removes video descriptor.
-- * Scte35Pid [__string] Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * EbpPlacement [M2tsEbpPlacement] Controls placement of EBP on Audio PIDs. If set to videoAndAudioPids, EBP markers will be placed on the video PID and all audio PIDs.  If set to videoPid, EBP markers will be placed on only the video PID.
-- * TransportStreamId [__integerMin0Max65535] The value of the transport stream ID field in the Program Map Table.
-- * PcrControl [M2tsPcrControl] When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
-- * AudioFramesPerPes [__integerMin0] The number of audio frames to insert for each PES packet.
-- * PatInterval [__integerMin0Max1000] The number of milliseconds between instances of this table in the output transport stream.  Valid values are 0, 10..1000.
-- * AribCaptionsPid [__string] Packet Identifier (PID) for ARIB Captions in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * Ebif [M2tsEbifControl] If set to passthrough, passes any EBIF data from the input source to this output.
-- * AribCaptionsPidControl [M2tsAribCaptionsPidControl] If set to auto, pid number used for ARIB Captions will be auto-selected from unused pids.  If set to useConfigured, ARIB Captions will be on the configured pid number.
-- * Scte27Pids [__string] Packet Identifier (PID) for input source SCTE-27 data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
-- * AudioBufferModel [M2tsAudioBufferModel] When set to dvb, uses DVB buffer model for Dolby Digital audio.  When set to atsc, the ATSC model is used.
-- * AudioPids [__string] Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values. Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
-- * Scte35Control [M2tsScte35Control] Optionally pass SCTE-35 signals from the input source to this output.
-- * Bitrate [__integerMin0] The output bitrate of the transport stream in bits per second. Setting to 0 lets the muxer automatically determine the appropriate bitrate.
-- * FragmentTime [__doubleMin0] The length in seconds of each fragment. Only used with EBP markers.
-- * SegmentationMarkers [M2tsSegmentationMarkers] Inserts segmentation markers at each segmentationTime period. raiSegstart sets the Random Access Indicator bit in the adaptation field. raiAdapt sets the RAI bit and adds the current timecode in the private data bytes. psiSegstart inserts PAT and PMT tables at the start of segments. ebp adds Encoder Boundary Point information to the adaptation field as per OpenCable specification OC-SP-EBP-I01-130118. ebpLegacy adds Encoder Boundary Point information to the adaptation field using a legacy proprietary format.
-- * PcrPeriod [__integerMin0Max500] Maximum time in milliseconds between Program Clock Reference (PCRs) inserted into the transport stream.
-- * AbsentInputAudioBehavior [M2tsAbsentInputAudioBehavior] When set to drop, output audio streams will be removed from the program if the selected input audio stream is removed from the input. This allows the output audio configuration to dynamically change based on input configuration. If this is set to encodeSilence, all output audio streams will output encoded silence when not connected to an active input stream.
-- * DvbNitSettings [DvbNitSettings] Inserts DVB Network Information Table (NIT) at the specified table repetition interval.
-- * PcrPid [__string] Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * KlvDataPids [__string] Packet Identifier (PID) for input source KLV data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
-- * DvbTeletextPid [__string] Packet Identifier (PID) for input source DVB Teletext data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * EtvPlatformPid [__string] Packet Identifier (PID) for input source ETV Platform data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * EbpAudioInterval [M2tsAudioInterval] When videoAndFixedIntervals is selected, audio EBP markers will be added to partitions 3 and 4. The interval between these additional markers will be fixed, and will be slightly shorter than the video EBP marker interval. Only available when EBP Cablelabs segmentation markers are selected.  Partitions 1 and 2 will always follow the video interval.
-- * EtvSignalPid [__string] Packet Identifier (PID) for input source ETV Signal data to this output. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * Klv [M2tsKlv] If set to passthrough, passes any KLV data from the input source to this output.
-- * NullPacketBitrate [__doubleMin0] Value in bits per second of extra null packets to insert into the transport stream. This can be used if a downstream encryption system requires periodic null packets.
-- * SegmentationStyle [M2tsSegmentationStyle] The segmentation style parameter controls how segmentation markers are inserted into the transport stream. With avails, it is possible that segments may be truncated, which can influence where future segmentation markers are inserted.
--
--When a segmentation style of "resetCadence" is selected and a segment is truncated due to an avail, we will reset the segmentation cadence. This means the subsequent segment will have a duration of $segmentationTime seconds.
--
--When a segmentation style of "maintainCadence" is selected and a segment is truncated due to an avail, we will not reset the segmentation cadence. This means the subsequent segment will likely be truncated as well. However, all segments after that will have a duration of $segmentationTime seconds. Note that EBP lookahead is a slight exception to this rule.
-- * ProgramNum [__integerMin0Max65535] The value of the program number field in the Program Map Table.
-- * BufferModel [M2tsBufferModel] If set to multiplex, use multiplex buffer model for accurate interleaving.  Setting to bufferModel to none can lead to lower latency, but low-memory devices may not be able to play back the stream without interruptions.
-- * DvbTdtSettings [DvbTdtSettings] Inserts DVB Time and Date Table (TDT) at the specified table repetition interval.
-- * EcmPid [__string] This field is unused and deprecated.
-- * VideoPid [__string] Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * PmtInterval [__integerMin0Max1000] The number of milliseconds between instances of this table in the output transport stream. Valid values are 0, 10..1000.
-- * PmtPid [__string] Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value. Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * DvbSubPids [__string] Packet Identifier (PID) for input source DVB Subtitle data to this output. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.  Each PID specified must be in the range of 32 (or 0x20)..8182 (or 0x1ff6).
-- * EbpLookaheadMs [__integerMin0Max10000] When set, enforces that Encoder Boundary Points do not come within the specified time interval of each other by looking ahead at input video. If another EBP is going to come in within the specified time interval, the current EBP is not emitted, and the segment is "stretched" to the next marker.  The lookahead value does not add latency to the system. The Live Event must be configured elsewhere to create sufficient latency to make the lookahead accurate.
-- * RateMode [M2tsRateMode] When vbr, does not insert null packets into transport stream to fill specified bitrate. The bitrate setting acts as the maximum bitrate when vbr is set.
-- * EsRateInPes [M2tsEsRateInPes] Include or exclude the ES Rate field in the PES header.
-- * DvbSdtSettings [DvbSdtSettings] Inserts DVB Service Description Table (SDT) at the specified table repetition interval.
-- * AudioStreamType [M2tsAudioStreamType] When set to atsc, uses stream type = 0x81 for AC3 and stream type = 0x87 for EAC3. When set to dvb, uses stream type = 0x06.
-- * CcDescriptor [M2tsCcDescriptor] When set to enabled, generates captionServiceDescriptor in PMT.
-- * SegmentationTime [__doubleMin1] The length in seconds of each segment. Required unless markers is set to None_.
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
		["TimedMetadataBehavior"] = args["TimedMetadataBehavior"],
		["TimedMetadataPid"] = args["TimedMetadataPid"],
		["Arib"] = args["Arib"],
		["Scte35Pid"] = args["Scte35Pid"],
		["EbpPlacement"] = args["EbpPlacement"],
		["TransportStreamId"] = args["TransportStreamId"],
		["PcrControl"] = args["PcrControl"],
		["AudioFramesPerPes"] = args["AudioFramesPerPes"],
		["PatInterval"] = args["PatInterval"],
		["AribCaptionsPid"] = args["AribCaptionsPid"],
		["Ebif"] = args["Ebif"],
		["AribCaptionsPidControl"] = args["AribCaptionsPidControl"],
		["Scte27Pids"] = args["Scte27Pids"],
		["AudioBufferModel"] = args["AudioBufferModel"],
		["AudioPids"] = args["AudioPids"],
		["Scte35Control"] = args["Scte35Control"],
		["Bitrate"] = args["Bitrate"],
		["FragmentTime"] = args["FragmentTime"],
		["SegmentationMarkers"] = args["SegmentationMarkers"],
		["PcrPeriod"] = args["PcrPeriod"],
		["AbsentInputAudioBehavior"] = args["AbsentInputAudioBehavior"],
		["DvbNitSettings"] = args["DvbNitSettings"],
		["PcrPid"] = args["PcrPid"],
		["KlvDataPids"] = args["KlvDataPids"],
		["DvbTeletextPid"] = args["DvbTeletextPid"],
		["EtvPlatformPid"] = args["EtvPlatformPid"],
		["EbpAudioInterval"] = args["EbpAudioInterval"],
		["EtvSignalPid"] = args["EtvSignalPid"],
		["Klv"] = args["Klv"],
		["NullPacketBitrate"] = args["NullPacketBitrate"],
		["SegmentationStyle"] = args["SegmentationStyle"],
		["ProgramNum"] = args["ProgramNum"],
		["BufferModel"] = args["BufferModel"],
		["DvbTdtSettings"] = args["DvbTdtSettings"],
		["EcmPid"] = args["EcmPid"],
		["VideoPid"] = args["VideoPid"],
		["PmtInterval"] = args["PmtInterval"],
		["PmtPid"] = args["PmtPid"],
		["DvbSubPids"] = args["DvbSubPids"],
		["EbpLookaheadMs"] = args["EbpLookaheadMs"],
		["RateMode"] = args["RateMode"],
		["EsRateInPes"] = args["EsRateInPes"],
		["DvbSdtSettings"] = args["DvbSdtSettings"],
		["AudioStreamType"] = args["AudioStreamType"],
		["CcDescriptor"] = args["CcDescriptor"],
		["SegmentationTime"] = args["SegmentationTime"],
	}
	asserts.AssertM2tsSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleAction = { ["ScheduleActionSettings"] = true, ["ActionName"] = true, ["ScheduleActionStartSettings"] = true, nil }

function asserts.AssertScheduleAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleAction to be of type 'table'")
	assert(struct["ActionName"], "Expected key ActionName to exist in table")
	assert(struct["ScheduleActionStartSettings"], "Expected key ScheduleActionStartSettings to exist in table")
	assert(struct["ScheduleActionSettings"], "Expected key ScheduleActionSettings to exist in table")
	if struct["ScheduleActionSettings"] then asserts.AssertScheduleActionSettings(struct["ScheduleActionSettings"]) end
	if struct["ActionName"] then asserts.Assert__string(struct["ActionName"]) end
	if struct["ScheduleActionStartSettings"] then asserts.AssertScheduleActionStartSettings(struct["ScheduleActionStartSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleAction[k], "ScheduleAction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleAction
-- Contains information on a single schedule action.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleActionSettings [ScheduleActionSettings] Settings for this schedule action.
-- * ActionName [__string] The name of the action, must be unique within the schedule. This name provides the main reference to an action once it is added to the schedule. A name is unique if it is no longer in the schedule. The schedule is automatically cleaned up to remove actions with a start time of more than 1 hour ago (approximately) so at that point a name can be reused.
-- * ScheduleActionStartSettings [ScheduleActionStartSettings] The time for the action to start in the channel.
-- Required key: ActionName
-- Required key: ScheduleActionStartSettings
-- Required key: ScheduleActionSettings
-- @return ScheduleAction structure as a key-value pair table
function M.ScheduleAction(args)
	assert(args, "You must provide an argument table when creating ScheduleAction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduleActionSettings"] = args["ScheduleActionSettings"],
		["ActionName"] = args["ActionName"],
		["ScheduleActionStartSettings"] = args["ScheduleActionStartSettings"],
	}
	asserts.AssertScheduleAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AribSourceSettings = { nil }

function asserts.AssertAribSourceSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AribSourceSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AribSourceSettings[k], "AribSourceSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AribSourceSettings
-- Placeholder documentation for AribSourceSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AribSourceSettings structure as a key-value pair table
function M.AribSourceSettings(args)
	assert(args, "You must provide an argument table when creating AribSourceSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAribSourceSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkInputSettings = { ["HlsInputSettings"] = true, ["ServerValidation"] = true, nil }

function asserts.AssertNetworkInputSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkInputSettings to be of type 'table'")
	if struct["HlsInputSettings"] then asserts.AssertHlsInputSettings(struct["HlsInputSettings"]) end
	if struct["ServerValidation"] then asserts.AssertNetworkInputServerValidation(struct["ServerValidation"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkInputSettings[k], "NetworkInputSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkInputSettings
-- Network source to transcode. Must be accessible to the Elemental Live node that is running the live event through a network connection.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HlsInputSettings [HlsInputSettings] Specifies HLS input settings when the uri is for a HLS manifest.
-- * ServerValidation [NetworkInputServerValidation] Check HTTPS server certificates. When set to checkCryptographyOnly, cryptography in the certificate will be checked, but not the server's name. Certain subdomains (notably S3 buckets that use dots in the bucket name) do not strictly match the corresponding certificate's wildcard pattern and would otherwise cause the event to error. This setting is ignored for protocols that do not use https.
-- @return NetworkInputSettings structure as a key-value pair table
function M.NetworkInputSettings(args)
	assert(args, "You must provide an argument table when creating NetworkInputSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HlsInputSettings"] = args["HlsInputSettings"],
		["ServerValidation"] = args["ServerValidation"],
	}
	asserts.AssertNetworkInputSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioOnlyHlsSettings = { ["AudioGroupId"] = true, ["AudioOnlyImage"] = true, ["AudioTrackType"] = true, nil }

function asserts.AssertAudioOnlyHlsSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioOnlyHlsSettings to be of type 'table'")
	if struct["AudioGroupId"] then asserts.Assert__string(struct["AudioGroupId"]) end
	if struct["AudioOnlyImage"] then asserts.AssertInputLocation(struct["AudioOnlyImage"]) end
	if struct["AudioTrackType"] then asserts.AssertAudioOnlyHlsTrackType(struct["AudioTrackType"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioOnlyHlsSettings[k], "AudioOnlyHlsSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioOnlyHlsSettings
-- Placeholder documentation for AudioOnlyHlsSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AudioGroupId [__string] Specifies the group to which the audio Rendition belongs.
-- * AudioOnlyImage [InputLocation] For use with an audio only Stream. Must be a .jpg or .png file. If given, this image will be used as the cover-art for the audio only output. Ideally, it should be formatted for an iPhone screen for two reasons. The iPhone does not resize the image, it crops a centered image on the top/bottom and left/right. Additionally, this image file gets saved bit-for-bit into every 10-second segment file, so will increase bandwidth by {image file size} * {segment count} * {user count.}.
-- * AudioTrackType [AudioOnlyHlsTrackType] Four types of audio-only tracks are supported:
--
--Audio-Only Variant Stream
--The client can play back this audio-only stream instead of video in low-bandwidth scenarios. Represented as an EXT-X-STREAM-INF in the HLS manifest.
--
--Alternate Audio, Auto Select, Default
--Alternate rendition that the client should try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=YES, AUTOSELECT=YES
--
--Alternate Audio, Auto Select, Not Default
--Alternate rendition that the client may try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=YES
--
--Alternate Audio, not Auto Select
--Alternate rendition that the client will not try to play back by default. Represented as an EXT-X-MEDIA in the HLS manifest with DEFAULT=NO, AUTOSELECT=NO
-- @return AudioOnlyHlsSettings structure as a key-value pair table
function M.AudioOnlyHlsSettings(args)
	assert(args, "You must provide an argument table when creating AudioOnlyHlsSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AudioGroupId"] = args["AudioGroupId"],
		["AudioOnlyImage"] = args["AudioOnlyImage"],
		["AudioTrackType"] = args["AudioTrackType"],
	}
	asserts.AssertAudioOnlyHlsSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateInputResponse = { ["Input"] = true, nil }

function asserts.AssertUpdateInputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateInputResponse to be of type 'table'")
	if struct["Input"] then asserts.AssertInput(struct["Input"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateInputResponse[k], "UpdateInputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateInputResponse
-- Placeholder documentation for UpdateInputResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Input [Input] 
-- @return UpdateInputResponse structure as a key-value pair table
function M.UpdateInputResponse(args)
	assert(args, "You must provide an argument table when creating UpdateInputResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Input"] = args["Input"],
	}
	asserts.AssertUpdateInputResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteChannelRequest = { ["ChannelId"] = true, nil }

function asserts.AssertDeleteChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChannelRequest to be of type 'table'")
	assert(struct["ChannelId"], "Expected key ChannelId to exist in table")
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteChannelRequest[k], "DeleteChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChannelRequest
-- Placeholder documentation for DeleteChannelRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelId [__string] Unique ID of the channel.
-- Required key: ChannelId
-- @return DeleteChannelRequest structure as a key-value pair table
function M.DeleteChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{channelId}"] = args["ChannelId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelId"] = args["ChannelId"],
	}
	asserts.AssertDeleteChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AudioNormalizationSettings = { ["AlgorithmControl"] = true, ["Algorithm"] = true, ["TargetLkfs"] = true, nil }

function asserts.AssertAudioNormalizationSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioNormalizationSettings to be of type 'table'")
	if struct["AlgorithmControl"] then asserts.AssertAudioNormalizationAlgorithmControl(struct["AlgorithmControl"]) end
	if struct["Algorithm"] then asserts.AssertAudioNormalizationAlgorithm(struct["Algorithm"]) end
	if struct["TargetLkfs"] then asserts.Assert__doubleMinNegative59Max0(struct["TargetLkfs"]) end
	for k,_ in pairs(struct) do
		assert(keys.AudioNormalizationSettings[k], "AudioNormalizationSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioNormalizationSettings
-- Placeholder documentation for AudioNormalizationSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AlgorithmControl [AudioNormalizationAlgorithmControl] When set to correctAudio the output audio is corrected using the chosen algorithm. If set to measureOnly, the audio will be measured but not adjusted.
-- * Algorithm [AudioNormalizationAlgorithm] Audio normalization algorithm to use. itu17701 conforms to the CALM Act specification, itu17702 conforms to the EBU R-128 specification.
-- * TargetLkfs [__doubleMinNegative59Max0] Target LKFS(loudness) to adjust volume to. If no value is entered, a default value will be used according to the chosen algorithm.  The CALM Act (1770-1) recommends a target of -24 LKFS. The EBU R-128 specification (1770-2) recommends a target of -23 LKFS.
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
	}
	asserts.AssertAudioNormalizationSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteInputResponse = { nil }

function asserts.AssertDeleteInputResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteInputResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteInputResponse[k], "DeleteInputResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteInputResponse
-- Placeholder documentation for DeleteInputResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteInputResponse structure as a key-value pair table
function M.DeleteInputResponse(args)
	assert(args, "You must provide an argument table when creating DeleteInputResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteInputResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputDestinationRequest = { ["StreamName"] = true, nil }

function asserts.AssertInputDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputDestinationRequest to be of type 'table'")
	if struct["StreamName"] then asserts.Assert__string(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputDestinationRequest[k], "InputDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputDestinationRequest
-- Endpoint settings for a PUSH type input.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [__string] A unique name for the location the RTMP stream is being pushed
--to.
--
-- @return InputDestinationRequest structure as a key-value pair table
function M.InputDestinationRequest(args)
	assert(args, "You must provide an argument table when creating InputDestinationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertInputDestinationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoDescription = { ["CodecSettings"] = true, ["Name"] = true, ["Sharpness"] = true, ["Height"] = true, ["Width"] = true, ["ScalingBehavior"] = true, ["RespondToAfd"] = true, nil }

function asserts.AssertVideoDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoDescription to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["CodecSettings"] then asserts.AssertVideoCodecSettings(struct["CodecSettings"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["Sharpness"] then asserts.Assert__integerMin0Max100(struct["Sharpness"]) end
	if struct["Height"] then asserts.Assert__integer(struct["Height"]) end
	if struct["Width"] then asserts.Assert__integer(struct["Width"]) end
	if struct["ScalingBehavior"] then asserts.AssertVideoDescriptionScalingBehavior(struct["ScalingBehavior"]) end
	if struct["RespondToAfd"] then asserts.AssertVideoDescriptionRespondToAfd(struct["RespondToAfd"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoDescription[k], "VideoDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoDescription
-- Video settings for this stream.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CodecSettings [VideoCodecSettings] Video codec settings.
-- * Name [__string] The name of this VideoDescription. Outputs will use this name to uniquely identify this Description.  Description names should be unique within this Live Event.
-- * Sharpness [__integerMin0Max100] Changes the width of the anti-alias filter kernel used for scaling. Only applies if scaling is being performed and antiAlias is set to true. 0 is the softest setting, 100 the sharpest, and 50 recommended for most content.
-- * Height [__integer] Output video height (in pixels). Leave blank to use source video height. If left blank, width must also be unspecified.
-- * Width [__integer] Output video width (in pixels). Leave out to use source video width.  If left out, height must also be left out. Display aspect ratio is always preserved by letterboxing or pillarboxing when necessary.
-- * ScalingBehavior [VideoDescriptionScalingBehavior] When set to "stretchToOutput", automatically configures the output position to stretch the video to the specified output resolution. This option will override any position value.
-- * RespondToAfd [VideoDescriptionRespondToAfd] Indicates how to respond to the AFD values in the input stream. Setting to "respond" causes input video to be clipped, depending on AFD value, input display aspect ratio and output display aspect ratio.
-- Required key: Name
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
		["Name"] = args["Name"],
		["Sharpness"] = args["Sharpness"],
		["Height"] = args["Height"],
		["Width"] = args["Width"],
		["ScalingBehavior"] = args["ScalingBehavior"],
		["RespondToAfd"] = args["RespondToAfd"],
	}
	asserts.AssertVideoDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeInputSecurityGroupResponse = { ["Inputs"] = true, ["State"] = true, ["WhitelistRules"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertDescribeInputSecurityGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInputSecurityGroupResponse to be of type 'table'")
	if struct["Inputs"] then asserts.Assert__listOf__string(struct["Inputs"]) end
	if struct["State"] then asserts.AssertInputSecurityGroupState(struct["State"]) end
	if struct["WhitelistRules"] then asserts.Assert__listOfInputWhitelistRule(struct["WhitelistRules"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInputSecurityGroupResponse[k], "DescribeInputSecurityGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInputSecurityGroupResponse
-- Placeholder documentation for DescribeInputSecurityGroupResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Inputs [__listOf__string] The list of inputs currently using this Input Security Group.
-- * State [InputSecurityGroupState] The current state of the Input Security Group.
-- * WhitelistRules [__listOfInputWhitelistRule] Whitelist rules and their sync status
-- * Id [__string] The Id of the Input Security Group
-- * Arn [__string] Unique ARN of Input Security Group
-- @return DescribeInputSecurityGroupResponse structure as a key-value pair table
function M.DescribeInputSecurityGroupResponse(args)
	assert(args, "You must provide an argument table when creating DescribeInputSecurityGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Inputs"] = args["Inputs"],
		["State"] = args["State"],
		["WhitelistRules"] = args["WhitelistRules"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertDescribeInputSecurityGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsAkamaiSettings = { ["ConnectionRetryInterval"] = true, ["FilecacheDuration"] = true, ["NumRetries"] = true, ["RestartDelay"] = true, ["Token"] = true, ["HttpTransferMode"] = true, ["Salt"] = true, nil }

function asserts.AssertHlsAkamaiSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsAkamaiSettings to be of type 'table'")
	if struct["ConnectionRetryInterval"] then asserts.Assert__integerMin0(struct["ConnectionRetryInterval"]) end
	if struct["FilecacheDuration"] then asserts.Assert__integerMin0Max600(struct["FilecacheDuration"]) end
	if struct["NumRetries"] then asserts.Assert__integerMin0(struct["NumRetries"]) end
	if struct["RestartDelay"] then asserts.Assert__integerMin0Max15(struct["RestartDelay"]) end
	if struct["Token"] then asserts.Assert__string(struct["Token"]) end
	if struct["HttpTransferMode"] then asserts.AssertHlsAkamaiHttpTransferMode(struct["HttpTransferMode"]) end
	if struct["Salt"] then asserts.Assert__string(struct["Salt"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsAkamaiSettings[k], "HlsAkamaiSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsAkamaiSettings
-- Placeholder documentation for HlsAkamaiSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionRetryInterval [__integerMin0] Number of seconds to wait before retrying connection to the CDN if the connection is lost.
-- * FilecacheDuration [__integerMin0Max600] Size in seconds of file cache for streaming outputs.
-- * NumRetries [__integerMin0] Number of retry attempts that will be made before the Live Event is put into an error state.
-- * RestartDelay [__integerMin0Max15] If a streaming output fails, number of seconds to wait until a restart is initiated. A value of 0 means never restart.
-- * Token [__string] Token parameter for authenticated akamai. If not specified, _gda_ is used.
-- * HttpTransferMode [HlsAkamaiHttpTransferMode] Specify whether or not to use chunked transfer encoding to Akamai. User should contact Akamai to enable this feature.
-- * Salt [__string] Salt for authenticated Akamai.
-- @return HlsAkamaiSettings structure as a key-value pair table
function M.HlsAkamaiSettings(args)
	assert(args, "You must provide an argument table when creating HlsAkamaiSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionRetryInterval"] = args["ConnectionRetryInterval"],
		["FilecacheDuration"] = args["FilecacheDuration"],
		["NumRetries"] = args["NumRetries"],
		["RestartDelay"] = args["RestartDelay"],
		["Token"] = args["Token"],
		["HttpTransferMode"] = args["HttpTransferMode"],
		["Salt"] = args["Salt"],
	}
	asserts.AssertHlsAkamaiSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BlackoutSlate = { ["NetworkEndBlackout"] = true, ["NetworkId"] = true, ["State"] = true, ["BlackoutSlateImage"] = true, ["NetworkEndBlackoutImage"] = true, nil }

function asserts.AssertBlackoutSlate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BlackoutSlate to be of type 'table'")
	if struct["NetworkEndBlackout"] then asserts.AssertBlackoutSlateNetworkEndBlackout(struct["NetworkEndBlackout"]) end
	if struct["NetworkId"] then asserts.Assert__stringMin34Max34(struct["NetworkId"]) end
	if struct["State"] then asserts.AssertBlackoutSlateState(struct["State"]) end
	if struct["BlackoutSlateImage"] then asserts.AssertInputLocation(struct["BlackoutSlateImage"]) end
	if struct["NetworkEndBlackoutImage"] then asserts.AssertInputLocation(struct["NetworkEndBlackoutImage"]) end
	for k,_ in pairs(struct) do
		assert(keys.BlackoutSlate[k], "BlackoutSlate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BlackoutSlate
-- Placeholder documentation for BlackoutSlate
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NetworkEndBlackout [BlackoutSlateNetworkEndBlackout] Setting to enabled causes the encoder to blackout the video, audio, and captions, and raise the "Network Blackout Image" slate when an SCTE104/35 Network End Segmentation Descriptor is encountered. The blackout will be lifted when the Network Start Segmentation Descriptor is encountered. The Network End and Network Start descriptors must contain a network ID that matches the value entered in "Network ID".
-- * NetworkId [__stringMin34Max34] Provides Network ID that matches EIDR ID format (e.g., "10.XXXX/XXXX-XXXX-XXXX-XXXX-XXXX-C").
-- * State [BlackoutSlateState] When set to enabled, causes video, audio and captions to be blanked when indicated by program metadata.
-- * BlackoutSlateImage [InputLocation] Blackout slate image to be used. Leave empty for solid black. Only bmp and png images are supported.
-- * NetworkEndBlackoutImage [InputLocation] Path to local file to use as Network End Blackout image. Image will be scaled to fill the entire output raster.
-- @return BlackoutSlate structure as a key-value pair table
function M.BlackoutSlate(args)
	assert(args, "You must provide an argument table when creating BlackoutSlate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NetworkEndBlackout"] = args["NetworkEndBlackout"],
		["NetworkId"] = args["NetworkId"],
		["State"] = args["State"],
		["BlackoutSlateImage"] = args["BlackoutSlateImage"],
		["NetworkEndBlackoutImage"] = args["NetworkEndBlackoutImage"],
	}
	asserts.AssertBlackoutSlate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PassThroughSettings = { nil }

function asserts.AssertPassThroughSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PassThroughSettings to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PassThroughSettings[k], "PassThroughSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PassThroughSettings
-- Placeholder documentation for PassThroughSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PassThroughSettings structure as a key-value pair table
function M.PassThroughSettings(args)
	assert(args, "You must provide an argument table when creating PassThroughSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPassThroughSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartChannelRequest = { ["ChannelId"] = true, nil }

function asserts.AssertStartChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartChannelRequest to be of type 'table'")
	assert(struct["ChannelId"], "Expected key ChannelId to exist in table")
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartChannelRequest[k], "StartChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartChannelRequest
-- Placeholder documentation for StartChannelRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelId [__string] A request to start a channel
-- Required key: ChannelId
-- @return StartChannelRequest structure as a key-value pair table
function M.StartChannelRequest(args)
	assert(args, "You must provide an argument table when creating StartChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{channelId}"] = args["ChannelId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelId"] = args["ChannelId"],
	}
	asserts.AssertStartChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateChannelResponse = { ["Channel"] = true, nil }

function asserts.AssertUpdateChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChannelResponse to be of type 'table'")
	if struct["Channel"] then asserts.AssertChannel(struct["Channel"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateChannelResponse[k], "UpdateChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChannelResponse
-- Placeholder documentation for UpdateChannelResponse
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channel [Channel] 
-- @return UpdateChannelResponse structure as a key-value pair table
function M.UpdateChannelResponse(args)
	assert(args, "You must provide an argument table when creating UpdateChannelResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Channel"] = args["Channel"],
	}
	asserts.AssertUpdateChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte35TimeSignalScheduleActionSettings = { ["Scte35Descriptors"] = true, nil }

function asserts.AssertScte35TimeSignalScheduleActionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35TimeSignalScheduleActionSettings to be of type 'table'")
	assert(struct["Scte35Descriptors"], "Expected key Scte35Descriptors to exist in table")
	if struct["Scte35Descriptors"] then asserts.Assert__listOfScte35Descriptor(struct["Scte35Descriptors"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35TimeSignalScheduleActionSettings[k], "Scte35TimeSignalScheduleActionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35TimeSignalScheduleActionSettings
-- Settings for a SCTE-35 time_signal.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scte35Descriptors [__listOfScte35Descriptor] The list of SCTE-35 descriptors accompanying the SCTE-35 time_signal.
-- Required key: Scte35Descriptors
-- @return Scte35TimeSignalScheduleActionSettings structure as a key-value pair table
function M.Scte35TimeSignalScheduleActionSettings(args)
	assert(args, "You must provide an argument table when creating Scte35TimeSignalScheduleActionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scte35Descriptors"] = args["Scte35Descriptors"],
	}
	asserts.AssertScte35TimeSignalScheduleActionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.M3u8Settings = { ["PcrPeriod"] = true, ["PatInterval"] = true, ["PcrControl"] = true, ["TimedMetadataPid"] = true, ["TimedMetadataBehavior"] = true, ["VideoPid"] = true, ["Scte35Pid"] = true, ["PcrPid"] = true, ["ProgramNum"] = true, ["TransportStreamId"] = true, ["PmtPid"] = true, ["PmtInterval"] = true, ["AudioPids"] = true, ["AudioFramesPerPes"] = true, ["EcmPid"] = true, ["Scte35Behavior"] = true, nil }

function asserts.AssertM3u8Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected M3u8Settings to be of type 'table'")
	if struct["PcrPeriod"] then asserts.Assert__integerMin0Max500(struct["PcrPeriod"]) end
	if struct["PatInterval"] then asserts.Assert__integerMin0Max1000(struct["PatInterval"]) end
	if struct["PcrControl"] then asserts.AssertM3u8PcrControl(struct["PcrControl"]) end
	if struct["TimedMetadataPid"] then asserts.Assert__string(struct["TimedMetadataPid"]) end
	if struct["TimedMetadataBehavior"] then asserts.AssertM3u8TimedMetadataBehavior(struct["TimedMetadataBehavior"]) end
	if struct["VideoPid"] then asserts.Assert__string(struct["VideoPid"]) end
	if struct["Scte35Pid"] then asserts.Assert__string(struct["Scte35Pid"]) end
	if struct["PcrPid"] then asserts.Assert__string(struct["PcrPid"]) end
	if struct["ProgramNum"] then asserts.Assert__integerMin0Max65535(struct["ProgramNum"]) end
	if struct["TransportStreamId"] then asserts.Assert__integerMin0Max65535(struct["TransportStreamId"]) end
	if struct["PmtPid"] then asserts.Assert__string(struct["PmtPid"]) end
	if struct["PmtInterval"] then asserts.Assert__integerMin0Max1000(struct["PmtInterval"]) end
	if struct["AudioPids"] then asserts.Assert__string(struct["AudioPids"]) end
	if struct["AudioFramesPerPes"] then asserts.Assert__integerMin0(struct["AudioFramesPerPes"]) end
	if struct["EcmPid"] then asserts.Assert__string(struct["EcmPid"]) end
	if struct["Scte35Behavior"] then asserts.AssertM3u8Scte35Behavior(struct["Scte35Behavior"]) end
	for k,_ in pairs(struct) do
		assert(keys.M3u8Settings[k], "M3u8Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type M3u8Settings
-- Settings information for the .m3u8 container
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PcrPeriod [__integerMin0Max500] Maximum time in milliseconds between Program Clock References (PCRs) inserted into the transport stream.
-- * PatInterval [__integerMin0Max1000] The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
-- * PcrControl [M3u8PcrControl] When set to pcrEveryPesPacket, a Program Clock Reference value is inserted for every Packetized Elementary Stream (PES) header. This parameter is effective only when the PCR PID is the same as the video or audio elementary stream.
-- * TimedMetadataPid [__string] Packet Identifier (PID) of the timed metadata stream in the transport stream. Can be entered as a decimal or hexadecimal value.  Valid values are 32 (or 0x20)..8182 (or 0x1ff6).
-- * TimedMetadataBehavior [M3u8TimedMetadataBehavior] When set to passthrough, timed metadata is passed through from input to output.
-- * VideoPid [__string] Packet Identifier (PID) of the elementary video stream in the transport stream. Can be entered as a decimal or hexadecimal value.
-- * Scte35Pid [__string] Packet Identifier (PID) of the SCTE-35 stream in the transport stream. Can be entered as a decimal or hexadecimal value.
-- * PcrPid [__string] Packet Identifier (PID) of the Program Clock Reference (PCR) in the transport stream. When no value is given, the encoder will assign the same value as the Video PID. Can be entered as a decimal or hexadecimal value.
-- * ProgramNum [__integerMin0Max65535] The value of the program number field in the Program Map Table.
-- * TransportStreamId [__integerMin0Max65535] The value of the transport stream ID field in the Program Map Table.
-- * PmtPid [__string] Packet Identifier (PID) for the Program Map Table (PMT) in the transport stream. Can be entered as a decimal or hexadecimal value.
-- * PmtInterval [__integerMin0Max1000] The number of milliseconds between instances of this table in the output transport stream. A value of \"0\" writes out the PMT once per segment file.
-- * AudioPids [__string] Packet Identifier (PID) of the elementary audio stream(s) in the transport stream. Multiple values are accepted, and can be entered in ranges and/or by comma separation. Can be entered as decimal or hexadecimal values.
-- * AudioFramesPerPes [__integerMin0] The number of audio frames to insert for each PES packet.
-- * EcmPid [__string] This parameter is unused and deprecated.
-- * Scte35Behavior [M3u8Scte35Behavior] If set to passthrough, passes any SCTE-35 signals from the input source to this output.
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
		["PcrPeriod"] = args["PcrPeriod"],
		["PatInterval"] = args["PatInterval"],
		["PcrControl"] = args["PcrControl"],
		["TimedMetadataPid"] = args["TimedMetadataPid"],
		["TimedMetadataBehavior"] = args["TimedMetadataBehavior"],
		["VideoPid"] = args["VideoPid"],
		["Scte35Pid"] = args["Scte35Pid"],
		["PcrPid"] = args["PcrPid"],
		["ProgramNum"] = args["ProgramNum"],
		["TransportStreamId"] = args["TransportStreamId"],
		["PmtPid"] = args["PmtPid"],
		["PmtInterval"] = args["PmtInterval"],
		["AudioPids"] = args["AudioPids"],
		["AudioFramesPerPes"] = args["AudioFramesPerPes"],
		["EcmPid"] = args["EcmPid"],
		["Scte35Behavior"] = args["Scte35Behavior"],
	}
	asserts.AssertM3u8Settings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeInputRequest = { ["InputId"] = true, nil }

function asserts.AssertDescribeInputRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInputRequest to be of type 'table'")
	assert(struct["InputId"], "Expected key InputId to exist in table")
	if struct["InputId"] then asserts.Assert__string(struct["InputId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInputRequest[k], "DescribeInputRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInputRequest
-- Placeholder documentation for DescribeInputRequest
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputId [__string] Unique ID of the input
-- Required key: InputId
-- @return DescribeInputRequest structure as a key-value pair table
function M.DescribeInputRequest(args)
	assert(args, "You must provide an argument table when creating DescribeInputRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{inputId}"] = args["InputId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["InputId"] = args["InputId"],
	}
	asserts.AssertDescribeInputRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VideoSelectorSettings = { ["VideoSelectorPid"] = true, ["VideoSelectorProgramId"] = true, nil }

function asserts.AssertVideoSelectorSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoSelectorSettings to be of type 'table'")
	if struct["VideoSelectorPid"] then asserts.AssertVideoSelectorPid(struct["VideoSelectorPid"]) end
	if struct["VideoSelectorProgramId"] then asserts.AssertVideoSelectorProgramId(struct["VideoSelectorProgramId"]) end
	for k,_ in pairs(struct) do
		assert(keys.VideoSelectorSettings[k], "VideoSelectorSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoSelectorSettings
-- Placeholder documentation for VideoSelectorSettings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VideoSelectorPid [VideoSelectorPid] 
-- * VideoSelectorProgramId [VideoSelectorProgramId] 
-- @return VideoSelectorSettings structure as a key-value pair table
function M.VideoSelectorSettings(args)
	assert(args, "You must provide an argument table when creating VideoSelectorSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VideoSelectorPid"] = args["VideoSelectorPid"],
		["VideoSelectorProgramId"] = args["VideoSelectorProgramId"],
	}
	asserts.AssertVideoSelectorSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scte35SpliceInsertScheduleActionSettings = { ["Duration"] = true, ["SpliceEventId"] = true, nil }

function asserts.AssertScte35SpliceInsertScheduleActionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35SpliceInsertScheduleActionSettings to be of type 'table'")
	assert(struct["SpliceEventId"], "Expected key SpliceEventId to exist in table")
	if struct["Duration"] then asserts.Assert__integerMin0Max8589934591(struct["Duration"]) end
	if struct["SpliceEventId"] then asserts.Assert__integerMin0Max4294967295(struct["SpliceEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35SpliceInsertScheduleActionSettings[k], "Scte35SpliceInsertScheduleActionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35SpliceInsertScheduleActionSettings
-- Settings for a SCTE-35 splice_insert message.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Duration [__integerMin0Max8589934591] Optional, the duration for the splice_insert, in 90 KHz ticks. To convert seconds to ticks, multiple the seconds by 90,000. If you enter a duration, there is an expectation that the downstream system can read the duration and cue in at that time. If you do not enter a duration, the splice_insert will continue indefinitely and there is an expectation that you will enter a return_to_network to end the splice_insert at the appropriate time.
-- * SpliceEventId [__integerMin0Max4294967295] The splice_event_id for the SCTE-35 splice_insert, as defined in SCTE-35.
-- Required key: SpliceEventId
-- @return Scte35SpliceInsertScheduleActionSettings structure as a key-value pair table
function M.Scte35SpliceInsertScheduleActionSettings(args)
	assert(args, "You must provide an argument table when creating Scte35SpliceInsertScheduleActionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Duration"] = args["Duration"],
		["SpliceEventId"] = args["SpliceEventId"],
	}
	asserts.AssertScte35SpliceInsertScheduleActionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Output = { ["OutputName"] = true, ["AudioDescriptionNames"] = true, ["CaptionDescriptionNames"] = true, ["VideoDescriptionName"] = true, ["OutputSettings"] = true, nil }

function asserts.AssertOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Output to be of type 'table'")
	assert(struct["OutputSettings"], "Expected key OutputSettings to exist in table")
	if struct["OutputName"] then asserts.Assert__stringMin1Max255(struct["OutputName"]) end
	if struct["AudioDescriptionNames"] then asserts.Assert__listOf__string(struct["AudioDescriptionNames"]) end
	if struct["CaptionDescriptionNames"] then asserts.Assert__listOf__string(struct["CaptionDescriptionNames"]) end
	if struct["VideoDescriptionName"] then asserts.Assert__string(struct["VideoDescriptionName"]) end
	if struct["OutputSettings"] then asserts.AssertOutputSettings(struct["OutputSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.Output[k], "Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Output
-- Output settings. There can be multiple outputs within a group.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputName [__stringMin1Max255] The name used to identify an output.
-- * AudioDescriptionNames [__listOf__string] The names of the AudioDescriptions used as audio sources for this output.
-- * CaptionDescriptionNames [__listOf__string] The names of the CaptionDescriptions used as caption sources for this output.
-- * VideoDescriptionName [__string] The name of the VideoDescription used as the source for this output.
-- * OutputSettings [OutputSettings] Output type-specific settings.
-- Required key: OutputSettings
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
		["OutputName"] = args["OutputName"],
		["AudioDescriptionNames"] = args["AudioDescriptionNames"],
		["CaptionDescriptionNames"] = args["CaptionDescriptionNames"],
		["VideoDescriptionName"] = args["VideoDescriptionName"],
		["OutputSettings"] = args["OutputSettings"],
	}
	asserts.AssertOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StaticImageActivateScheduleActionSettings = { ["Opacity"] = true, ["Layer"] = true, ["FadeOut"] = true, ["Image"] = true, ["Height"] = true, ["Width"] = true, ["ImageY"] = true, ["ImageX"] = true, ["FadeIn"] = true, ["Duration"] = true, nil }

function asserts.AssertStaticImageActivateScheduleActionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StaticImageActivateScheduleActionSettings to be of type 'table'")
	assert(struct["Image"], "Expected key Image to exist in table")
	if struct["Opacity"] then asserts.Assert__integerMin0Max100(struct["Opacity"]) end
	if struct["Layer"] then asserts.Assert__integerMin0Max7(struct["Layer"]) end
	if struct["FadeOut"] then asserts.Assert__integerMin0(struct["FadeOut"]) end
	if struct["Image"] then asserts.AssertInputLocation(struct["Image"]) end
	if struct["Height"] then asserts.Assert__integerMin1(struct["Height"]) end
	if struct["Width"] then asserts.Assert__integerMin1(struct["Width"]) end
	if struct["ImageY"] then asserts.Assert__integerMin0(struct["ImageY"]) end
	if struct["ImageX"] then asserts.Assert__integerMin0(struct["ImageX"]) end
	if struct["FadeIn"] then asserts.Assert__integerMin0(struct["FadeIn"]) end
	if struct["Duration"] then asserts.Assert__integerMin0(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(keys.StaticImageActivateScheduleActionSettings[k], "StaticImageActivateScheduleActionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StaticImageActivateScheduleActionSettings
-- Settings for the action to activate a static image.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Opacity [__integerMin0Max100] Opacity of image where 0 is transparent and 100 is fully opaque. Default is 100.
-- * Layer [__integerMin0Max7] The number of the layer, 0 to 7. There are 8 layers that can be overlaid on the video, each layer with a different image. The layers are in Z order, which means that overlays with higher values of layer are inserted on top of overlays with lower values of layer. Default is 0.
-- * FadeOut [__integerMin0] Applies only if a duration is specified. The time in milliseconds for the image to fade out. The fade-out starts when the duration time is hit, so it effectively extends the duration. Default is 0 (no fade-out).
-- * Image [InputLocation] The location and filename of the image file to overlay on the video. The file must be a 32-bit BMP, PNG, or TGA file, and must not be larger (in pixels) than the input video.
-- * Height [__integerMin1] The height of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified height. Leave blank to use the native height of the overlay.
-- * Width [__integerMin1] The width of the image when inserted into the video, in pixels. The overlay will be scaled up or down to the specified width. Leave blank to use the native width of the overlay.
-- * ImageY [__integerMin0] Placement of the top edge of the overlay relative to the top edge of the video frame, in pixels. 0 (the default) is the top edge of the frame. If the placement causes the overlay to extend beyond the bottom edge of the underlying video, then the overlay is cropped on the bottom.
-- * ImageX [__integerMin0] Placement of the left edge of the overlay relative to the left edge of the video frame, in pixels. 0 (the default) is the left edge of the frame. If the placement causes the overlay to extend beyond the right edge of the underlying video, then the overlay is cropped on the right.
-- * FadeIn [__integerMin0] The time in milliseconds for the image to fade in. The fade-in starts at the start time of the overlay. Default is 0 (no fade-in).
-- * Duration [__integerMin0] The duration in milliseconds for the image to remain on the video. If omitted or set to 0 the duration is unlimited and the image will remain until it is explicitly deactivated.
-- Required key: Image
-- @return StaticImageActivateScheduleActionSettings structure as a key-value pair table
function M.StaticImageActivateScheduleActionSettings(args)
	assert(args, "You must provide an argument table when creating StaticImageActivateScheduleActionSettings")
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
		["Image"] = args["Image"],
		["Height"] = args["Height"],
		["Width"] = args["Width"],
		["ImageY"] = args["ImageY"],
		["ImageX"] = args["ImageX"],
		["FadeIn"] = args["FadeIn"],
		["Duration"] = args["Duration"],
	}
	asserts.AssertStaticImageActivateScheduleActionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Ac3Settings = { ["MetadataControl"] = true, ["BitstreamMode"] = true, ["Dialnorm"] = true, ["LfeFilter"] = true, ["DrcProfile"] = true, ["Bitrate"] = true, ["CodingMode"] = true, nil }

function asserts.AssertAc3Settings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Ac3Settings to be of type 'table'")
	if struct["MetadataControl"] then asserts.AssertAc3MetadataControl(struct["MetadataControl"]) end
	if struct["BitstreamMode"] then asserts.AssertAc3BitstreamMode(struct["BitstreamMode"]) end
	if struct["Dialnorm"] then asserts.Assert__integerMin1Max31(struct["Dialnorm"]) end
	if struct["LfeFilter"] then asserts.AssertAc3LfeFilter(struct["LfeFilter"]) end
	if struct["DrcProfile"] then asserts.AssertAc3DrcProfile(struct["DrcProfile"]) end
	if struct["Bitrate"] then asserts.Assert__double(struct["Bitrate"]) end
	if struct["CodingMode"] then asserts.AssertAc3CodingMode(struct["CodingMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.Ac3Settings[k], "Ac3Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Ac3Settings
-- Placeholder documentation for Ac3Settings
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MetadataControl [Ac3MetadataControl] When set to "followInput", encoder metadata will be sourced from the DD, DD+, or DolbyE decoder that supplied this audio data. If audio was not supplied from one of these streams, then the static metadata settings will be used.
-- * BitstreamMode [Ac3BitstreamMode] Specifies the bitstream mode (bsmod) for the emitted AC-3 stream. See ATSC A/52-2012 for background on these values.
-- * Dialnorm [__integerMin1Max31] Sets the dialnorm for the output. If excluded and input audio is Dolby Digital, dialnorm will be passed through.
-- * LfeFilter [Ac3LfeFilter] When set to enabled, applies a 120Hz lowpass filter to the LFE channel prior to encoding. Only valid in codingMode32Lfe mode.
-- * DrcProfile [Ac3DrcProfile] If set to filmStandard, adds dynamic range compression signaling to the output bitstream as defined in the Dolby Digital specification.
-- * Bitrate [__double] Average bitrate in bits/second. Valid bitrates depend on the coding mode.
-- * CodingMode [Ac3CodingMode] Dolby Digital coding mode. Determines number of channels.
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
		["DrcProfile"] = args["DrcProfile"],
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

keys.Scte35DeliveryRestrictions = { ["WebDeliveryAllowedFlag"] = true, ["DeviceRestrictions"] = true, ["ArchiveAllowedFlag"] = true, ["NoRegionalBlackoutFlag"] = true, nil }

function asserts.AssertScte35DeliveryRestrictions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scte35DeliveryRestrictions to be of type 'table'")
	assert(struct["DeviceRestrictions"], "Expected key DeviceRestrictions to exist in table")
	assert(struct["ArchiveAllowedFlag"], "Expected key ArchiveAllowedFlag to exist in table")
	assert(struct["WebDeliveryAllowedFlag"], "Expected key WebDeliveryAllowedFlag to exist in table")
	assert(struct["NoRegionalBlackoutFlag"], "Expected key NoRegionalBlackoutFlag to exist in table")
	if struct["WebDeliveryAllowedFlag"] then asserts.AssertScte35WebDeliveryAllowedFlag(struct["WebDeliveryAllowedFlag"]) end
	if struct["DeviceRestrictions"] then asserts.AssertScte35DeviceRestrictions(struct["DeviceRestrictions"]) end
	if struct["ArchiveAllowedFlag"] then asserts.AssertScte35ArchiveAllowedFlag(struct["ArchiveAllowedFlag"]) end
	if struct["NoRegionalBlackoutFlag"] then asserts.AssertScte35NoRegionalBlackoutFlag(struct["NoRegionalBlackoutFlag"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scte35DeliveryRestrictions[k], "Scte35DeliveryRestrictions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scte35DeliveryRestrictions
-- Corresponds to SCTE-35 delivery_not_restricted_flag parameter. To declare delivery restrictions, include this element and its four "restriction" flags. To declare that there are no restrictions, omit this element.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WebDeliveryAllowedFlag [Scte35WebDeliveryAllowedFlag] Corresponds to SCTE-35 web_delivery_allowed_flag parameter.
-- * DeviceRestrictions [Scte35DeviceRestrictions] Corresponds to SCTE-35 device_restrictions parameter.
-- * ArchiveAllowedFlag [Scte35ArchiveAllowedFlag] Corresponds to SCTE-35 archive_allowed_flag.
-- * NoRegionalBlackoutFlag [Scte35NoRegionalBlackoutFlag] Corresponds to SCTE-35 no_regional_blackout_flag parameter.
-- Required key: DeviceRestrictions
-- Required key: ArchiveAllowedFlag
-- Required key: WebDeliveryAllowedFlag
-- Required key: NoRegionalBlackoutFlag
-- @return Scte35DeliveryRestrictions structure as a key-value pair table
function M.Scte35DeliveryRestrictions(args)
	assert(args, "You must provide an argument table when creating Scte35DeliveryRestrictions")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["WebDeliveryAllowedFlag"] = args["WebDeliveryAllowedFlag"],
		["DeviceRestrictions"] = args["DeviceRestrictions"],
		["ArchiveAllowedFlag"] = args["ArchiveAllowedFlag"],
		["NoRegionalBlackoutFlag"] = args["NoRegionalBlackoutFlag"],
	}
	asserts.AssertScte35DeliveryRestrictions(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleActionSettings = { ["Scte35SpliceInsertSettings"] = true, ["StaticImageActivateSettings"] = true, ["Scte35TimeSignalSettings"] = true, ["Scte35ReturnToNetworkSettings"] = true, ["StaticImageDeactivateSettings"] = true, nil }

function asserts.AssertScheduleActionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleActionSettings to be of type 'table'")
	if struct["Scte35SpliceInsertSettings"] then asserts.AssertScte35SpliceInsertScheduleActionSettings(struct["Scte35SpliceInsertSettings"]) end
	if struct["StaticImageActivateSettings"] then asserts.AssertStaticImageActivateScheduleActionSettings(struct["StaticImageActivateSettings"]) end
	if struct["Scte35TimeSignalSettings"] then asserts.AssertScte35TimeSignalScheduleActionSettings(struct["Scte35TimeSignalSettings"]) end
	if struct["Scte35ReturnToNetworkSettings"] then asserts.AssertScte35ReturnToNetworkScheduleActionSettings(struct["Scte35ReturnToNetworkSettings"]) end
	if struct["StaticImageDeactivateSettings"] then asserts.AssertStaticImageDeactivateScheduleActionSettings(struct["StaticImageDeactivateSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleActionSettings[k], "ScheduleActionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleActionSettings
-- Holds the settings for a single schedule action.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scte35SpliceInsertSettings [Scte35SpliceInsertScheduleActionSettings] Settings for SCTE-35 splice_insert message
-- * StaticImageActivateSettings [StaticImageActivateScheduleActionSettings] Settings to activate a static image overlay
-- * Scte35TimeSignalSettings [Scte35TimeSignalScheduleActionSettings] Settings for SCTE-35 time_signal message
-- * Scte35ReturnToNetworkSettings [Scte35ReturnToNetworkScheduleActionSettings] Settings for SCTE-35 return_to_network message
-- * StaticImageDeactivateSettings [StaticImageDeactivateScheduleActionSettings] Settings to deactivate a static image overlay
-- @return ScheduleActionSettings structure as a key-value pair table
function M.ScheduleActionSettings(args)
	assert(args, "You must provide an argument table when creating ScheduleActionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scte35SpliceInsertSettings"] = args["Scte35SpliceInsertSettings"],
		["StaticImageActivateSettings"] = args["StaticImageActivateSettings"],
		["Scte35TimeSignalSettings"] = args["Scte35TimeSignalSettings"],
		["Scte35ReturnToNetworkSettings"] = args["Scte35ReturnToNetworkSettings"],
		["StaticImageDeactivateSettings"] = args["StaticImageDeactivateSettings"],
	}
	asserts.AssertScheduleActionSettings(all_args)
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

-- Placeholder documentation for M2tsBufferModel
function M.M2tsBufferModel(str)
	asserts.AssertM2tsBufferModel(str)
	return str
end

function asserts.AssertDvbSubDestinationShadowColor(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubDestinationShadowColor to be of type 'string'")
end

-- Placeholder documentation for DvbSubDestinationShadowColor
function M.DvbSubDestinationShadowColor(str)
	asserts.AssertDvbSubDestinationShadowColor(str)
	return str
end

function asserts.AssertM3u8Scte35Behavior(str)
	assert(str)
	assert(type(str) == "string", "Expected M3u8Scte35Behavior to be of type 'string'")
end

-- Placeholder documentation for M3u8Scte35Behavior
function M.M3u8Scte35Behavior(str)
	asserts.AssertM3u8Scte35Behavior(str)
	return str
end

function asserts.AssertHlsClientCache(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsClientCache to be of type 'string'")
end

-- Placeholder documentation for HlsClientCache
function M.HlsClientCache(str)
	asserts.AssertHlsClientCache(str)
	return str
end

function asserts.AssertM2tsAudioBufferModel(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsAudioBufferModel to be of type 'string'")
end

-- Placeholder documentation for M2tsAudioBufferModel
function M.M2tsAudioBufferModel(str)
	asserts.AssertM2tsAudioBufferModel(str)
	return str
end

function asserts.AssertH264Syntax(str)
	assert(str)
	assert(type(str) == "string", "Expected H264Syntax to be of type 'string'")
end

-- Placeholder documentation for H264Syntax
function M.H264Syntax(str)
	asserts.AssertH264Syntax(str)
	return str
end

function asserts.AssertGlobalConfigurationOutputTimingSource(str)
	assert(str)
	assert(type(str) == "string", "Expected GlobalConfigurationOutputTimingSource to be of type 'string'")
end

-- Placeholder documentation for GlobalConfigurationOutputTimingSource
function M.GlobalConfigurationOutputTimingSource(str)
	asserts.AssertGlobalConfigurationOutputTimingSource(str)
	return str
end

function asserts.AssertM2tsCcDescriptor(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsCcDescriptor to be of type 'string'")
end

-- Placeholder documentation for M2tsCcDescriptor
function M.M2tsCcDescriptor(str)
	asserts.AssertM2tsCcDescriptor(str)
	return str
end

function asserts.AssertInputDeblockFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected InputDeblockFilter to be of type 'string'")
end

-- Placeholder documentation for InputDeblockFilter
function M.InputDeblockFilter(str)
	asserts.AssertInputDeblockFilter(str)
	return str
end

function asserts.AssertHlsAkamaiHttpTransferMode(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsAkamaiHttpTransferMode to be of type 'string'")
end

-- Placeholder documentation for HlsAkamaiHttpTransferMode
function M.HlsAkamaiHttpTransferMode(str)
	asserts.AssertHlsAkamaiHttpTransferMode(str)
	return str
end

function asserts.Assert__stringMin1Max256(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin1Max256 to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- Placeholder documentation for __stringMin1Max256
function M.__stringMin1Max256(str)
	asserts.Assert__stringMin1Max256(str)
	return str
end

function asserts.AssertM2tsEsRateInPes(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsEsRateInPes to be of type 'string'")
end

-- Placeholder documentation for M2tsEsRateInPes
function M.M2tsEsRateInPes(str)
	asserts.AssertM2tsEsRateInPes(str)
	return str
end

function asserts.AssertAc3MetadataControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3MetadataControl to be of type 'string'")
end

-- Placeholder documentation for Ac3MetadataControl
function M.Ac3MetadataControl(str)
	asserts.AssertAc3MetadataControl(str)
	return str
end

function asserts.AssertHlsAdMarkers(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsAdMarkers to be of type 'string'")
end

-- Placeholder documentation for HlsAdMarkers
function M.HlsAdMarkers(str)
	asserts.AssertHlsAdMarkers(str)
	return str
end

function asserts.AssertBurnInFontColor(str)
	assert(str)
	assert(type(str) == "string", "Expected BurnInFontColor to be of type 'string'")
end

-- Placeholder documentation for BurnInFontColor
function M.BurnInFontColor(str)
	asserts.AssertBurnInFontColor(str)
	return str
end

function asserts.AssertM2tsTimedMetadataBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsTimedMetadataBehavior to be of type 'string'")
end

-- Placeholder documentation for M2tsTimedMetadataBehavior
function M.M2tsTimedMetadataBehavior(str)
	asserts.AssertM2tsTimedMetadataBehavior(str)
	return str
end

function asserts.AssertReservationResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationResourceType to be of type 'string'")
end

-- Resource type, 'INPUT', 'OUTPUT', or 'CHANNEL'
function M.ReservationResourceType(str)
	asserts.AssertReservationResourceType(str)
	return str
end

function asserts.AssertHlsMediaStoreStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsMediaStoreStorageClass to be of type 'string'")
end

-- Placeholder documentation for HlsMediaStoreStorageClass
function M.HlsMediaStoreStorageClass(str)
	asserts.AssertHlsMediaStoreStorageClass(str)
	return str
end

function asserts.AssertH264SpatialAq(str)
	assert(str)
	assert(type(str) == "string", "Expected H264SpatialAq to be of type 'string'")
end

-- Placeholder documentation for H264SpatialAq
function M.H264SpatialAq(str)
	asserts.AssertH264SpatialAq(str)
	return str
end

function asserts.AssertInputDenoiseFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected InputDenoiseFilter to be of type 'string'")
end

-- Placeholder documentation for InputDenoiseFilter
function M.InputDenoiseFilter(str)
	asserts.AssertInputDenoiseFilter(str)
	return str
end

function asserts.AssertHlsWebdavHttpTransferMode(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsWebdavHttpTransferMode to be of type 'string'")
end

-- Placeholder documentation for HlsWebdavHttpTransferMode
function M.HlsWebdavHttpTransferMode(str)
	asserts.AssertHlsWebdavHttpTransferMode(str)
	return str
end

function asserts.AssertBurnInOutlineColor(str)
	assert(str)
	assert(type(str) == "string", "Expected BurnInOutlineColor to be of type 'string'")
end

-- Placeholder documentation for BurnInOutlineColor
function M.BurnInOutlineColor(str)
	asserts.AssertBurnInOutlineColor(str)
	return str
end

function asserts.AssertM3u8TimedMetadataBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected M3u8TimedMetadataBehavior to be of type 'string'")
end

-- Placeholder documentation for M3u8TimedMetadataBehavior
function M.M3u8TimedMetadataBehavior(str)
	asserts.AssertM3u8TimedMetadataBehavior(str)
	return str
end

function asserts.AssertSmoothGroupSegmentationMode(str)
	assert(str)
	assert(type(str) == "string", "Expected SmoothGroupSegmentationMode to be of type 'string'")
end

-- Placeholder documentation for SmoothGroupSegmentationMode
function M.SmoothGroupSegmentationMode(str)
	asserts.AssertSmoothGroupSegmentationMode(str)
	return str
end

function asserts.AssertH264AdaptiveQuantization(str)
	assert(str)
	assert(type(str) == "string", "Expected H264AdaptiveQuantization to be of type 'string'")
end

-- Placeholder documentation for H264AdaptiveQuantization
function M.H264AdaptiveQuantization(str)
	asserts.AssertH264AdaptiveQuantization(str)
	return str
end

function asserts.AssertReservationSpecialFeature(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationSpecialFeature to be of type 'string'")
end

-- Special features, 'ADVANCED_AUDIO' or 'AUDIO_NORMALIZATION'
function M.ReservationSpecialFeature(str)
	asserts.AssertReservationSpecialFeature(str)
	return str
end

function asserts.AssertH264Level(str)
	assert(str)
	assert(type(str) == "string", "Expected H264Level to be of type 'string'")
end

-- Placeholder documentation for H264Level
function M.H264Level(str)
	asserts.AssertH264Level(str)
	return str
end

function asserts.AssertScte35ArchiveAllowedFlag(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35ArchiveAllowedFlag to be of type 'string'")
end

-- Corresponds to the archive_allowed parameter. A value of ARCHIVE_NOT_ALLOWED corresponds to 0 (false) in the SCTE-35 specification. If you include one of the "restriction" flags then you must include all four of them.
function M.Scte35ArchiveAllowedFlag(str)
	asserts.AssertScte35ArchiveAllowedFlag(str)
	return str
end

function asserts.AssertScte35WebDeliveryAllowedFlag(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35WebDeliveryAllowedFlag to be of type 'string'")
end

-- Corresponds to the web_delivery_allowed_flag parameter. A value of WEB_DELIVERY_NOT_ALLOWED corresponds to 0 (false) in the SCTE-35 specification. If you include one of the "restriction" flags then you must include all four of them.
function M.Scte35WebDeliveryAllowedFlag(str)
	asserts.AssertScte35WebDeliveryAllowedFlag(str)
	return str
end

function asserts.AssertSmoothGroupTimestampOffsetMode(str)
	assert(str)
	assert(type(str) == "string", "Expected SmoothGroupTimestampOffsetMode to be of type 'string'")
end

-- Placeholder documentation for SmoothGroupTimestampOffsetMode
function M.SmoothGroupTimestampOffsetMode(str)
	asserts.AssertSmoothGroupTimestampOffsetMode(str)
	return str
end

function asserts.AssertReservationVideoQuality(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationVideoQuality to be of type 'string'")
end

-- Video quality, e.g. 'STANDARD' (Outputs only)
function M.ReservationVideoQuality(str)
	asserts.AssertReservationVideoQuality(str)
	return str
end

function asserts.AssertHlsOutputSelection(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsOutputSelection to be of type 'string'")
end

-- Placeholder documentation for HlsOutputSelection
function M.HlsOutputSelection(str)
	asserts.AssertHlsOutputSelection(str)
	return str
end

function asserts.AssertHlsMode(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsMode to be of type 'string'")
end

-- Placeholder documentation for HlsMode
function M.HlsMode(str)
	asserts.AssertHlsMode(str)
	return str
end

function asserts.AssertInputType(str)
	assert(str)
	assert(type(str) == "string", "Expected InputType to be of type 'string'")
end

-- Placeholder documentation for InputType
function M.InputType(str)
	asserts.AssertInputType(str)
	return str
end

function asserts.Assert__stringMax32(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMax32 to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
end

-- Placeholder documentation for __stringMax32
function M.__stringMax32(str)
	asserts.Assert__stringMax32(str)
	return str
end

function asserts.AssertBurnInAlignment(str)
	assert(str)
	assert(type(str) == "string", "Expected BurnInAlignment to be of type 'string'")
end

-- Placeholder documentation for BurnInAlignment
function M.BurnInAlignment(str)
	asserts.AssertBurnInAlignment(str)
	return str
end

function asserts.AssertDvbSdtOutputSdt(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSdtOutputSdt to be of type 'string'")
end

-- Placeholder documentation for DvbSdtOutputSdt
function M.DvbSdtOutputSdt(str)
	asserts.AssertDvbSdtOutputSdt(str)
	return str
end

function asserts.AssertM2tsAbsentInputAudioBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsAbsentInputAudioBehavior to be of type 'string'")
end

-- Placeholder documentation for M2tsAbsentInputAudioBehavior
function M.M2tsAbsentInputAudioBehavior(str)
	asserts.AssertM2tsAbsentInputAudioBehavior(str)
	return str
end

function asserts.AssertM2tsSegmentationStyle(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsSegmentationStyle to be of type 'string'")
end

-- Placeholder documentation for M2tsSegmentationStyle
function M.M2tsSegmentationStyle(str)
	asserts.AssertM2tsSegmentationStyle(str)
	return str
end

function asserts.AssertHlsCaptionLanguageSetting(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsCaptionLanguageSetting to be of type 'string'")
end

-- Placeholder documentation for HlsCaptionLanguageSetting
function M.HlsCaptionLanguageSetting(str)
	asserts.AssertHlsCaptionLanguageSetting(str)
	return str
end

function asserts.AssertAc3LfeFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3LfeFilter to be of type 'string'")
end

-- Placeholder documentation for Ac3LfeFilter
function M.Ac3LfeFilter(str)
	asserts.AssertAc3LfeFilter(str)
	return str
end

function asserts.Assert__stringMin34Max34(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin34Max34 to be of type 'string'")
	assert(#str <= 34, "Expected string to be max 34 characters")
	assert(#str >= 34, "Expected string to be min 34 characters")
end

-- Placeholder documentation for __stringMin34Max34
function M.__stringMin34Max34(str)
	asserts.Assert__stringMin34Max34(str)
	return str
end

function asserts.AssertInputMaximumBitrate(str)
	assert(str)
	assert(type(str) == "string", "Expected InputMaximumBitrate to be of type 'string'")
end

-- Maximum input bitrate in megabits per second. Bitrates up to 50 Mbps are supported currently.
function M.InputMaximumBitrate(str)
	asserts.AssertInputMaximumBitrate(str)
	return str
end

function asserts.AssertEac3DrcRf(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3DrcRf to be of type 'string'")
end

-- Placeholder documentation for Eac3DrcRf
function M.Eac3DrcRf(str)
	asserts.AssertEac3DrcRf(str)
	return str
end

function asserts.AssertRtmpOutputCertificateMode(str)
	assert(str)
	assert(type(str) == "string", "Expected RtmpOutputCertificateMode to be of type 'string'")
end

-- Placeholder documentation for RtmpOutputCertificateMode
function M.RtmpOutputCertificateMode(str)
	asserts.AssertRtmpOutputCertificateMode(str)
	return str
end

function asserts.AssertH264EntropyEncoding(str)
	assert(str)
	assert(type(str) == "string", "Expected H264EntropyEncoding to be of type 'string'")
end

-- Placeholder documentation for H264EntropyEncoding
function M.H264EntropyEncoding(str)
	asserts.AssertH264EntropyEncoding(str)
	return str
end

function asserts.AssertDvbSubDestinationOutlineColor(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubDestinationOutlineColor to be of type 'string'")
end

-- Placeholder documentation for DvbSubDestinationOutlineColor
function M.DvbSubDestinationOutlineColor(str)
	asserts.AssertDvbSubDestinationOutlineColor(str)
	return str
end

function asserts.AssertAacProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected AacProfile to be of type 'string'")
end

-- Placeholder documentation for AacProfile
function M.AacProfile(str)
	asserts.AssertAacProfile(str)
	return str
end

function asserts.AssertVideoSelectorColorSpaceUsage(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoSelectorColorSpaceUsage to be of type 'string'")
end

-- Placeholder documentation for VideoSelectorColorSpaceUsage
function M.VideoSelectorColorSpaceUsage(str)
	asserts.AssertVideoSelectorColorSpaceUsage(str)
	return str
end

function asserts.AssertBurnInBackgroundColor(str)
	assert(str)
	assert(type(str) == "string", "Expected BurnInBackgroundColor to be of type 'string'")
end

-- Placeholder documentation for BurnInBackgroundColor
function M.BurnInBackgroundColor(str)
	asserts.AssertBurnInBackgroundColor(str)
	return str
end

function asserts.AssertSmoothGroupSparseTrackType(str)
	assert(str)
	assert(type(str) == "string", "Expected SmoothGroupSparseTrackType to be of type 'string'")
end

-- Placeholder documentation for SmoothGroupSparseTrackType
function M.SmoothGroupSparseTrackType(str)
	asserts.AssertSmoothGroupSparseTrackType(str)
	return str
end

function asserts.AssertScte35AposWebDeliveryAllowedBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35AposWebDeliveryAllowedBehavior to be of type 'string'")
end

-- Placeholder documentation for Scte35AposWebDeliveryAllowedBehavior
function M.Scte35AposWebDeliveryAllowedBehavior(str)
	asserts.AssertScte35AposWebDeliveryAllowedBehavior(str)
	return str
end

function asserts.AssertAudioLanguageSelectionPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioLanguageSelectionPolicy to be of type 'string'")
end

-- Placeholder documentation for AudioLanguageSelectionPolicy
function M.AudioLanguageSelectionPolicy(str)
	asserts.AssertAudioLanguageSelectionPolicy(str)
	return str
end

function asserts.Assert__stringMin1Max255(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin1Max255 to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- Placeholder documentation for __stringMin1Max255
function M.__stringMin1Max255(str)
	asserts.Assert__stringMin1Max255(str)
	return str
end

function asserts.AssertHlsIvInManifest(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsIvInManifest to be of type 'string'")
end

-- Placeholder documentation for HlsIvInManifest
function M.HlsIvInManifest(str)
	asserts.AssertHlsIvInManifest(str)
	return str
end

function asserts.AssertH264GopSizeUnits(str)
	assert(str)
	assert(type(str) == "string", "Expected H264GopSizeUnits to be of type 'string'")
end

-- Placeholder documentation for H264GopSizeUnits
function M.H264GopSizeUnits(str)
	asserts.AssertH264GopSizeUnits(str)
	return str
end

function asserts.AssertSmoothGroupEventStopBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected SmoothGroupEventStopBehavior to be of type 'string'")
end

-- Placeholder documentation for SmoothGroupEventStopBehavior
function M.SmoothGroupEventStopBehavior(str)
	asserts.AssertSmoothGroupEventStopBehavior(str)
	return str
end

function asserts.AssertAudioNormalizationAlgorithm(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioNormalizationAlgorithm to be of type 'string'")
end

-- Placeholder documentation for AudioNormalizationAlgorithm
function M.AudioNormalizationAlgorithm(str)
	asserts.AssertAudioNormalizationAlgorithm(str)
	return str
end

function asserts.AssertVideoDescriptionScalingBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoDescriptionScalingBehavior to be of type 'string'")
end

-- Placeholder documentation for VideoDescriptionScalingBehavior
function M.VideoDescriptionScalingBehavior(str)
	asserts.AssertVideoDescriptionScalingBehavior(str)
	return str
end

function asserts.AssertM2tsAudioStreamType(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsAudioStreamType to be of type 'string'")
end

-- Placeholder documentation for M2tsAudioStreamType
function M.M2tsAudioStreamType(str)
	asserts.AssertM2tsAudioStreamType(str)
	return str
end

function asserts.AssertDvbSubDestinationTeletextGridControl(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubDestinationTeletextGridControl to be of type 'string'")
end

-- Placeholder documentation for DvbSubDestinationTeletextGridControl
function M.DvbSubDestinationTeletextGridControl(str)
	asserts.AssertDvbSubDestinationTeletextGridControl(str)
	return str
end

function asserts.AssertReservationMaximumFramerate(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationMaximumFramerate to be of type 'string'")
end

-- Maximum framerate in frames per second (Outputs only)
function M.ReservationMaximumFramerate(str)
	asserts.AssertReservationMaximumFramerate(str)
	return str
end

function asserts.AssertEmbeddedScte20Detection(str)
	assert(str)
	assert(type(str) == "string", "Expected EmbeddedScte20Detection to be of type 'string'")
end

-- Placeholder documentation for EmbeddedScte20Detection
function M.EmbeddedScte20Detection(str)
	asserts.AssertEmbeddedScte20Detection(str)
	return str
end

function asserts.AssertBurnInTeletextGridControl(str)
	assert(str)
	assert(type(str) == "string", "Expected BurnInTeletextGridControl to be of type 'string'")
end

-- Placeholder documentation for BurnInTeletextGridControl
function M.BurnInTeletextGridControl(str)
	asserts.AssertBurnInTeletextGridControl(str)
	return str
end

function asserts.AssertFecOutputIncludeFec(str)
	assert(str)
	assert(type(str) == "string", "Expected FecOutputIncludeFec to be of type 'string'")
end

-- Placeholder documentation for FecOutputIncludeFec
function M.FecOutputIncludeFec(str)
	asserts.AssertFecOutputIncludeFec(str)
	return str
end

function asserts.AssertLogLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected LogLevel to be of type 'string'")
end

-- The log level the user wants for their channel.
function M.LogLevel(str)
	asserts.AssertLogLevel(str)
	return str
end

function asserts.AssertEac3PhaseControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3PhaseControl to be of type 'string'")
end

-- Placeholder documentation for Eac3PhaseControl
function M.Eac3PhaseControl(str)
	asserts.AssertEac3PhaseControl(str)
	return str
end

function asserts.AssertHlsDirectoryStructure(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsDirectoryStructure to be of type 'string'")
end

-- Placeholder documentation for HlsDirectoryStructure
function M.HlsDirectoryStructure(str)
	asserts.AssertHlsDirectoryStructure(str)
	return str
end

function asserts.AssertScte35SpliceInsertWebDeliveryAllowedBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35SpliceInsertWebDeliveryAllowedBehavior to be of type 'string'")
end

-- Placeholder documentation for Scte35SpliceInsertWebDeliveryAllowedBehavior
function M.Scte35SpliceInsertWebDeliveryAllowedBehavior(str)
	asserts.AssertScte35SpliceInsertWebDeliveryAllowedBehavior(str)
	return str
end

function asserts.AssertBlackoutSlateNetworkEndBlackout(str)
	assert(str)
	assert(type(str) == "string", "Expected BlackoutSlateNetworkEndBlackout to be of type 'string'")
end

-- Placeholder documentation for BlackoutSlateNetworkEndBlackout
function M.BlackoutSlateNetworkEndBlackout(str)
	asserts.AssertBlackoutSlateNetworkEndBlackout(str)
	return str
end

function asserts.AssertAudioOnlyHlsTrackType(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioOnlyHlsTrackType to be of type 'string'")
end

-- Placeholder documentation for AudioOnlyHlsTrackType
function M.AudioOnlyHlsTrackType(str)
	asserts.AssertAudioOnlyHlsTrackType(str)
	return str
end

function asserts.AssertEac3AttenuationControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3AttenuationControl to be of type 'string'")
end

-- Placeholder documentation for Eac3AttenuationControl
function M.Eac3AttenuationControl(str)
	asserts.AssertEac3AttenuationControl(str)
	return str
end

function asserts.AssertM2tsEbifControl(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsEbifControl to be of type 'string'")
end

-- Placeholder documentation for M2tsEbifControl
function M.M2tsEbifControl(str)
	asserts.AssertM2tsEbifControl(str)
	return str
end

function asserts.AssertHlsProgramDateTime(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsProgramDateTime to be of type 'string'")
end

-- Placeholder documentation for HlsProgramDateTime
function M.HlsProgramDateTime(str)
	asserts.AssertHlsProgramDateTime(str)
	return str
end

function asserts.AssertEac3DcFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3DcFilter to be of type 'string'")
end

-- Placeholder documentation for Eac3DcFilter
function M.Eac3DcFilter(str)
	asserts.AssertEac3DcFilter(str)
	return str
end

function asserts.AssertAc3DrcProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3DrcProfile to be of type 'string'")
end

-- Placeholder documentation for Ac3DrcProfile
function M.Ac3DrcProfile(str)
	asserts.AssertAc3DrcProfile(str)
	return str
end

function asserts.AssertInputState(str)
	assert(str)
	assert(type(str) == "string", "Expected InputState to be of type 'string'")
end

-- Placeholder documentation for InputState
function M.InputState(str)
	asserts.AssertInputState(str)
	return str
end

function asserts.AssertM2tsSegmentationMarkers(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsSegmentationMarkers to be of type 'string'")
end

-- Placeholder documentation for M2tsSegmentationMarkers
function M.M2tsSegmentationMarkers(str)
	asserts.AssertM2tsSegmentationMarkers(str)
	return str
end

function asserts.AssertAacSpec(str)
	assert(str)
	assert(type(str) == "string", "Expected AacSpec to be of type 'string'")
end

-- Placeholder documentation for AacSpec
function M.AacSpec(str)
	asserts.AssertAacSpec(str)
	return str
end

function asserts.AssertEac3CodingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3CodingMode to be of type 'string'")
end

-- Placeholder documentation for Eac3CodingMode
function M.Eac3CodingMode(str)
	asserts.AssertEac3CodingMode(str)
	return str
end

function asserts.AssertM2tsEbpPlacement(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsEbpPlacement to be of type 'string'")
end

-- Placeholder documentation for M2tsEbpPlacement
function M.M2tsEbpPlacement(str)
	asserts.AssertM2tsEbpPlacement(str)
	return str
end

function asserts.AssertInputLossImageType(str)
	assert(str)
	assert(type(str) == "string", "Expected InputLossImageType to be of type 'string'")
end

-- Placeholder documentation for InputLossImageType
function M.InputLossImageType(str)
	asserts.AssertInputLossImageType(str)
	return str
end

function asserts.AssertAuthenticationScheme(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticationScheme to be of type 'string'")
end

-- Placeholder documentation for AuthenticationScheme
function M.AuthenticationScheme(str)
	asserts.AssertAuthenticationScheme(str)
	return str
end

function asserts.AssertH264GopBReference(str)
	assert(str)
	assert(type(str) == "string", "Expected H264GopBReference to be of type 'string'")
end

-- Placeholder documentation for H264GopBReference
function M.H264GopBReference(str)
	asserts.AssertH264GopBReference(str)
	return str
end

function asserts.AssertInputResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected InputResolution to be of type 'string'")
end

-- Input resolution based on lines of vertical resolution in the input; SD is less than 720 lines, HD is 720 to 1080 lines, UHD is greater than 1080 lines
--
function M.InputResolution(str)
	asserts.AssertInputResolution(str)
	return str
end

function asserts.AssertReservationResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationResolution to be of type 'string'")
end

-- Resolution based on lines of vertical resolution; SD is less than 720 lines, HD is 720 to 1080 lines, UHD is greater than 1080 lines
--
function M.ReservationResolution(str)
	asserts.AssertReservationResolution(str)
	return str
end

function asserts.AssertScte20Convert608To708(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte20Convert608To708 to be of type 'string'")
end

-- Placeholder documentation for Scte20Convert608To708
function M.Scte20Convert608To708(str)
	asserts.AssertScte20Convert608To708(str)
	return str
end

function asserts.AssertReservationMaximumBitrate(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationMaximumBitrate to be of type 'string'")
end

-- Maximum bitrate in megabits per second
function M.ReservationMaximumBitrate(str)
	asserts.AssertReservationMaximumBitrate(str)
	return str
end

function asserts.AssertHlsSegmentationMode(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsSegmentationMode to be of type 'string'")
end

-- Placeholder documentation for HlsSegmentationMode
function M.HlsSegmentationMode(str)
	asserts.AssertHlsSegmentationMode(str)
	return str
end

function asserts.AssertScte35AposNoRegionalBlackoutBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35AposNoRegionalBlackoutBehavior to be of type 'string'")
end

-- Placeholder documentation for Scte35AposNoRegionalBlackoutBehavior
function M.Scte35AposNoRegionalBlackoutBehavior(str)
	asserts.AssertScte35AposNoRegionalBlackoutBehavior(str)
	return str
end

function asserts.AssertEac3StereoDownmix(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3StereoDownmix to be of type 'string'")
end

-- Placeholder documentation for Eac3StereoDownmix
function M.Eac3StereoDownmix(str)
	asserts.AssertEac3StereoDownmix(str)
	return str
end

function asserts.AssertInputLossActionForHlsOut(str)
	assert(str)
	assert(type(str) == "string", "Expected InputLossActionForHlsOut to be of type 'string'")
end

-- Placeholder documentation for InputLossActionForHlsOut
function M.InputLossActionForHlsOut(str)
	asserts.AssertInputLossActionForHlsOut(str)
	return str
end

function asserts.AssertEac3PassthroughControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3PassthroughControl to be of type 'string'")
end

-- Placeholder documentation for Eac3PassthroughControl
function M.Eac3PassthroughControl(str)
	asserts.AssertEac3PassthroughControl(str)
	return str
end

function asserts.AssertHlsTsFileMode(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsTsFileMode to be of type 'string'")
end

-- Placeholder documentation for HlsTsFileMode
function M.HlsTsFileMode(str)
	asserts.AssertHlsTsFileMode(str)
	return str
end

function asserts.AssertAc3CodingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3CodingMode to be of type 'string'")
end

-- Placeholder documentation for Ac3CodingMode
function M.Ac3CodingMode(str)
	asserts.AssertAc3CodingMode(str)
	return str
end

function asserts.AssertHlsCodecSpecification(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsCodecSpecification to be of type 'string'")
end

-- Placeholder documentation for HlsCodecSpecification
function M.HlsCodecSpecification(str)
	asserts.AssertHlsCodecSpecification(str)
	return str
end

function asserts.AssertDvbSubDestinationAlignment(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubDestinationAlignment to be of type 'string'")
end

-- Placeholder documentation for DvbSubDestinationAlignment
function M.DvbSubDestinationAlignment(str)
	asserts.AssertDvbSubDestinationAlignment(str)
	return str
end

function asserts.AssertHlsManifestDurationFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsManifestDurationFormat to be of type 'string'")
end

-- Placeholder documentation for HlsManifestDurationFormat
function M.HlsManifestDurationFormat(str)
	asserts.AssertHlsManifestDurationFormat(str)
	return str
end

function asserts.AssertInputSecurityGroupState(str)
	assert(str)
	assert(type(str) == "string", "Expected InputSecurityGroupState to be of type 'string'")
end

-- Placeholder documentation for InputSecurityGroupState
function M.InputSecurityGroupState(str)
	asserts.AssertInputSecurityGroupState(str)
	return str
end

function asserts.AssertAudioDescriptionLanguageCodeControl(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioDescriptionLanguageCodeControl to be of type 'string'")
end

-- Placeholder documentation for AudioDescriptionLanguageCodeControl
function M.AudioDescriptionLanguageCodeControl(str)
	asserts.AssertAudioDescriptionLanguageCodeControl(str)
	return str
end

function asserts.AssertGlobalConfigurationLowFramerateInputs(str)
	assert(str)
	assert(type(str) == "string", "Expected GlobalConfigurationLowFramerateInputs to be of type 'string'")
end

-- Placeholder documentation for GlobalConfigurationLowFramerateInputs
function M.GlobalConfigurationLowFramerateInputs(str)
	asserts.AssertGlobalConfigurationLowFramerateInputs(str)
	return str
end

function asserts.AssertAacRateControlMode(str)
	assert(str)
	assert(type(str) == "string", "Expected AacRateControlMode to be of type 'string'")
end

-- Placeholder documentation for AacRateControlMode
function M.AacRateControlMode(str)
	asserts.AssertAacRateControlMode(str)
	return str
end

function asserts.AssertBurnInShadowColor(str)
	assert(str)
	assert(type(str) == "string", "Expected BurnInShadowColor to be of type 'string'")
end

-- Placeholder documentation for BurnInShadowColor
function M.BurnInShadowColor(str)
	asserts.AssertBurnInShadowColor(str)
	return str
end

function asserts.AssertSmoothGroupEventIdMode(str)
	assert(str)
	assert(type(str) == "string", "Expected SmoothGroupEventIdMode to be of type 'string'")
end

-- Placeholder documentation for SmoothGroupEventIdMode
function M.SmoothGroupEventIdMode(str)
	asserts.AssertSmoothGroupEventIdMode(str)
	return str
end

function asserts.AssertGlobalConfigurationInputEndAction(str)
	assert(str)
	assert(type(str) == "string", "Expected GlobalConfigurationInputEndAction to be of type 'string'")
end

-- Placeholder documentation for GlobalConfigurationInputEndAction
function M.GlobalConfigurationInputEndAction(str)
	asserts.AssertGlobalConfigurationInputEndAction(str)
	return str
end

function asserts.AssertEac3LfeFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3LfeFilter to be of type 'string'")
end

-- Placeholder documentation for Eac3LfeFilter
function M.Eac3LfeFilter(str)
	asserts.AssertEac3LfeFilter(str)
	return str
end

function asserts.AssertHlsTimedMetadataId3Frame(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsTimedMetadataId3Frame to be of type 'string'")
end

-- Placeholder documentation for HlsTimedMetadataId3Frame
function M.HlsTimedMetadataId3Frame(str)
	asserts.AssertHlsTimedMetadataId3Frame(str)
	return str
end

function asserts.AssertAvailBlankingState(str)
	assert(str)
	assert(type(str) == "string", "Expected AvailBlankingState to be of type 'string'")
end

-- Placeholder documentation for AvailBlankingState
function M.AvailBlankingState(str)
	asserts.AssertAvailBlankingState(str)
	return str
end

function asserts.AssertAacRawFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected AacRawFormat to be of type 'string'")
end

-- Placeholder documentation for AacRawFormat
function M.AacRawFormat(str)
	asserts.AssertAacRawFormat(str)
	return str
end

function asserts.AssertHlsEncryptionType(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsEncryptionType to be of type 'string'")
end

-- Placeholder documentation for HlsEncryptionType
function M.HlsEncryptionType(str)
	asserts.AssertHlsEncryptionType(str)
	return str
end

function asserts.AssertM2tsAudioInterval(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsAudioInterval to be of type 'string'")
end

-- Placeholder documentation for M2tsAudioInterval
function M.M2tsAudioInterval(str)
	asserts.AssertM2tsAudioInterval(str)
	return str
end

function asserts.AssertAfdSignaling(str)
	assert(str)
	assert(type(str) == "string", "Expected AfdSignaling to be of type 'string'")
end

-- Placeholder documentation for AfdSignaling
function M.AfdSignaling(str)
	asserts.AssertAfdSignaling(str)
	return str
end

function asserts.AssertH264RateControlMode(str)
	assert(str)
	assert(type(str) == "string", "Expected H264RateControlMode to be of type 'string'")
end

-- Placeholder documentation for H264RateControlMode
function M.H264RateControlMode(str)
	asserts.AssertH264RateControlMode(str)
	return str
end

function asserts.AssertAudioType(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioType to be of type 'string'")
end

-- Placeholder documentation for AudioType
function M.AudioType(str)
	asserts.AssertAudioType(str)
	return str
end

function asserts.AssertBlackoutSlateState(str)
	assert(str)
	assert(type(str) == "string", "Expected BlackoutSlateState to be of type 'string'")
end

-- Placeholder documentation for BlackoutSlateState
function M.BlackoutSlateState(str)
	asserts.AssertBlackoutSlateState(str)
	return str
end

function asserts.AssertAacInputType(str)
	assert(str)
	assert(type(str) == "string", "Expected AacInputType to be of type 'string'")
end

-- Placeholder documentation for AacInputType
function M.AacInputType(str)
	asserts.AssertAacInputType(str)
	return str
end

function asserts.AssertFixedAfd(str)
	assert(str)
	assert(type(str) == "string", "Expected FixedAfd to be of type 'string'")
end

-- Placeholder documentation for FixedAfd
function M.FixedAfd(str)
	asserts.AssertFixedAfd(str)
	return str
end

function asserts.AssertEac3SurroundExMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3SurroundExMode to be of type 'string'")
end

-- Placeholder documentation for Eac3SurroundExMode
function M.Eac3SurroundExMode(str)
	asserts.AssertEac3SurroundExMode(str)
	return str
end

function asserts.AssertEmbeddedConvert608To708(str)
	assert(str)
	assert(type(str) == "string", "Expected EmbeddedConvert608To708 to be of type 'string'")
end

-- Placeholder documentation for EmbeddedConvert608To708
function M.EmbeddedConvert608To708(str)
	asserts.AssertEmbeddedConvert608To708(str)
	return str
end

function asserts.AssertHlsManifestCompression(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsManifestCompression to be of type 'string'")
end

-- Placeholder documentation for HlsManifestCompression
function M.HlsManifestCompression(str)
	asserts.AssertHlsManifestCompression(str)
	return str
end

function asserts.AssertH264FlickerAq(str)
	assert(str)
	assert(type(str) == "string", "Expected H264FlickerAq to be of type 'string'")
end

-- Placeholder documentation for H264FlickerAq
function M.H264FlickerAq(str)
	asserts.AssertH264FlickerAq(str)
	return str
end

function asserts.Assert__stringMin32Max32(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin32Max32 to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

-- Placeholder documentation for __stringMin32Max32
function M.__stringMin32Max32(str)
	asserts.Assert__stringMin32Max32(str)
	return str
end

function asserts.AssertSmoothGroupStreamManifestBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected SmoothGroupStreamManifestBehavior to be of type 'string'")
end

-- Placeholder documentation for SmoothGroupStreamManifestBehavior
function M.SmoothGroupStreamManifestBehavior(str)
	asserts.AssertSmoothGroupStreamManifestBehavior(str)
	return str
end

function asserts.Assert__string(str)
	assert(str)
	assert(type(str) == "string", "Expected __string to be of type 'string'")
end

-- Placeholder documentation for __string
function M.__string(str)
	asserts.Assert__string(str)
	return str
end

function asserts.AssertEac3MetadataControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3MetadataControl to be of type 'string'")
end

-- Placeholder documentation for Eac3MetadataControl
function M.Eac3MetadataControl(str)
	asserts.AssertEac3MetadataControl(str)
	return str
end

function asserts.AssertOfferingType(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingType to be of type 'string'")
end

-- Offering type, e.g. 'NO_UPFRONT'
function M.OfferingType(str)
	asserts.AssertOfferingType(str)
	return str
end

function asserts.AssertH264ScanType(str)
	assert(str)
	assert(type(str) == "string", "Expected H264ScanType to be of type 'string'")
end

-- Placeholder documentation for H264ScanType
function M.H264ScanType(str)
	asserts.AssertH264ScanType(str)
	return str
end

function asserts.AssertM2tsRateMode(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsRateMode to be of type 'string'")
end

-- Placeholder documentation for M2tsRateMode
function M.M2tsRateMode(str)
	asserts.AssertM2tsRateMode(str)
	return str
end

function asserts.AssertH264ColorMetadata(str)
	assert(str)
	assert(type(str) == "string", "Expected H264ColorMetadata to be of type 'string'")
end

-- Placeholder documentation for H264ColorMetadata
function M.H264ColorMetadata(str)
	asserts.AssertH264ColorMetadata(str)
	return str
end

function asserts.AssertScte35SegmentationCancelIndicator(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35SegmentationCancelIndicator to be of type 'string'")
end

-- Corresponds to SCTE-35 segmentation_event_cancel_indicator. SEGMENTATION_EVENT_NOT_CANCELED corresponds to 0 in the SCTE-35 specification and indicates that this is an insertion request. SEGMENTATION_EVENT_CANCELED corresponds to 1 in the SCTE-35 specification and indicates that this is a cancelation request, in which case complete this field and the existing event ID to cancel.
function M.Scte35SegmentationCancelIndicator(str)
	asserts.AssertScte35SegmentationCancelIndicator(str)
	return str
end

function asserts.AssertDvbSubDestinationFontColor(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubDestinationFontColor to be of type 'string'")
end

-- Placeholder documentation for DvbSubDestinationFontColor
function M.DvbSubDestinationFontColor(str)
	asserts.AssertDvbSubDestinationFontColor(str)
	return str
end

function asserts.AssertAudioDescriptionAudioTypeControl(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioDescriptionAudioTypeControl to be of type 'string'")
end

-- Placeholder documentation for AudioDescriptionAudioTypeControl
function M.AudioDescriptionAudioTypeControl(str)
	asserts.AssertAudioDescriptionAudioTypeControl(str)
	return str
end

function asserts.AssertEac3LfeControl(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3LfeControl to be of type 'string'")
end

-- Placeholder documentation for Eac3LfeControl
function M.Eac3LfeControl(str)
	asserts.AssertEac3LfeControl(str)
	return str
end

function asserts.AssertTtmlDestinationStyleControl(str)
	assert(str)
	assert(type(str) == "string", "Expected TtmlDestinationStyleControl to be of type 'string'")
end

-- Placeholder documentation for TtmlDestinationStyleControl
function M.TtmlDestinationStyleControl(str)
	asserts.AssertTtmlDestinationStyleControl(str)
	return str
end

function asserts.AssertM2tsScte35Control(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsScte35Control to be of type 'string'")
end

-- Placeholder documentation for M2tsScte35Control
function M.M2tsScte35Control(str)
	asserts.AssertM2tsScte35Control(str)
	return str
end

function asserts.AssertAc3BitstreamMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Ac3BitstreamMode to be of type 'string'")
end

-- Placeholder documentation for Ac3BitstreamMode
function M.Ac3BitstreamMode(str)
	asserts.AssertAc3BitstreamMode(str)
	return str
end

function asserts.AssertSmoothGroupAudioOnlyTimecodeControl(str)
	assert(str)
	assert(type(str) == "string", "Expected SmoothGroupAudioOnlyTimecodeControl to be of type 'string'")
end

-- Placeholder documentation for SmoothGroupAudioOnlyTimecodeControl
function M.SmoothGroupAudioOnlyTimecodeControl(str)
	asserts.AssertSmoothGroupAudioOnlyTimecodeControl(str)
	return str
end

function asserts.AssertNetworkInputServerValidation(str)
	assert(str)
	assert(type(str) == "string", "Expected NetworkInputServerValidation to be of type 'string'")
end

-- Placeholder documentation for NetworkInputServerValidation
function M.NetworkInputServerValidation(str)
	asserts.AssertNetworkInputServerValidation(str)
	return str
end

function asserts.AssertM2tsArib(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsArib to be of type 'string'")
end

-- Placeholder documentation for M2tsArib
function M.M2tsArib(str)
	asserts.AssertM2tsArib(str)
	return str
end

function asserts.AssertOfferingDurationUnits(str)
	assert(str)
	assert(type(str) == "string", "Expected OfferingDurationUnits to be of type 'string'")
end

-- Units for duration, e.g. 'MONTHS'
function M.OfferingDurationUnits(str)
	asserts.AssertOfferingDurationUnits(str)
	return str
end

function asserts.AssertH264FramerateControl(str)
	assert(str)
	assert(type(str) == "string", "Expected H264FramerateControl to be of type 'string'")
end

-- Placeholder documentation for H264FramerateControl
function M.H264FramerateControl(str)
	asserts.AssertH264FramerateControl(str)
	return str
end

function asserts.AssertScte35DeviceRestrictions(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35DeviceRestrictions to be of type 'string'")
end

-- Corresponds to the device_restrictions parameter in a segmentation_descriptor. If you include one of the "restriction" flags then you must include all four of them.
function M.Scte35DeviceRestrictions(str)
	asserts.AssertScte35DeviceRestrictions(str)
	return str
end

function asserts.AssertUdpTimedMetadataId3Frame(str)
	assert(str)
	assert(type(str) == "string", "Expected UdpTimedMetadataId3Frame to be of type 'string'")
end

-- Placeholder documentation for UdpTimedMetadataId3Frame
function M.UdpTimedMetadataId3Frame(str)
	asserts.AssertUdpTimedMetadataId3Frame(str)
	return str
end

function asserts.AssertInputSourceEndBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected InputSourceEndBehavior to be of type 'string'")
end

-- Placeholder documentation for InputSourceEndBehavior
function M.InputSourceEndBehavior(str)
	asserts.AssertInputSourceEndBehavior(str)
	return str
end

function asserts.AssertInputFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected InputFilter to be of type 'string'")
end

-- Placeholder documentation for InputFilter
function M.InputFilter(str)
	asserts.AssertInputFilter(str)
	return str
end

function asserts.AssertReservationCodec(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationCodec to be of type 'string'")
end

-- Codec, 'MPEG2', 'AVC', 'HEVC', or 'AUDIO'
function M.ReservationCodec(str)
	asserts.AssertReservationCodec(str)
	return str
end

function asserts.AssertAacCodingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected AacCodingMode to be of type 'string'")
end

-- Placeholder documentation for AacCodingMode
function M.AacCodingMode(str)
	asserts.AssertAacCodingMode(str)
	return str
end

function asserts.AssertAacVbrQuality(str)
	assert(str)
	assert(type(str) == "string", "Expected AacVbrQuality to be of type 'string'")
end

-- Placeholder documentation for AacVbrQuality
function M.AacVbrQuality(str)
	asserts.AssertAacVbrQuality(str)
	return str
end

function asserts.AssertVideoSelectorColorSpace(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoSelectorColorSpace to be of type 'string'")
end

-- Placeholder documentation for VideoSelectorColorSpace
function M.VideoSelectorColorSpace(str)
	asserts.AssertVideoSelectorColorSpace(str)
	return str
end

function asserts.AssertInputCodec(str)
	assert(str)
	assert(type(str) == "string", "Expected InputCodec to be of type 'string'")
end

-- codec in increasing order of complexity
function M.InputCodec(str)
	asserts.AssertInputCodec(str)
	return str
end

function asserts.AssertH264SceneChangeDetect(str)
	assert(str)
	assert(type(str) == "string", "Expected H264SceneChangeDetect to be of type 'string'")
end

-- Placeholder documentation for H264SceneChangeDetect
function M.H264SceneChangeDetect(str)
	asserts.AssertH264SceneChangeDetect(str)
	return str
end

function asserts.AssertReservationState(str)
	assert(str)
	assert(type(str) == "string", "Expected ReservationState to be of type 'string'")
end

-- Current reservation state
function M.ReservationState(str)
	asserts.AssertReservationState(str)
	return str
end

function asserts.AssertM2tsAribCaptionsPidControl(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsAribCaptionsPidControl to be of type 'string'")
end

-- Placeholder documentation for M2tsAribCaptionsPidControl
function M.M2tsAribCaptionsPidControl(str)
	asserts.AssertM2tsAribCaptionsPidControl(str)
	return str
end

function asserts.AssertH264LookAheadRateControl(str)
	assert(str)
	assert(type(str) == "string", "Expected H264LookAheadRateControl to be of type 'string'")
end

-- Placeholder documentation for H264LookAheadRateControl
function M.H264LookAheadRateControl(str)
	asserts.AssertH264LookAheadRateControl(str)
	return str
end

function asserts.AssertChannelState(str)
	assert(str)
	assert(type(str) == "string", "Expected ChannelState to be of type 'string'")
end

-- Placeholder documentation for ChannelState
function M.ChannelState(str)
	asserts.AssertChannelState(str)
	return str
end

function asserts.AssertH264ParControl(str)
	assert(str)
	assert(type(str) == "string", "Expected H264ParControl to be of type 'string'")
end

-- Placeholder documentation for H264ParControl
function M.H264ParControl(str)
	asserts.AssertH264ParControl(str)
	return str
end

function asserts.AssertHlsIvSource(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsIvSource to be of type 'string'")
end

-- Placeholder documentation for HlsIvSource
function M.HlsIvSource(str)
	asserts.AssertHlsIvSource(str)
	return str
end

function asserts.AssertInputLossActionForUdpOut(str)
	assert(str)
	assert(type(str) == "string", "Expected InputLossActionForUdpOut to be of type 'string'")
end

-- Placeholder documentation for InputLossActionForUdpOut
function M.InputLossActionForUdpOut(str)
	asserts.AssertInputLossActionForUdpOut(str)
	return str
end

function asserts.AssertVideoDescriptionRespondToAfd(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoDescriptionRespondToAfd to be of type 'string'")
end

-- Placeholder documentation for VideoDescriptionRespondToAfd
function M.VideoDescriptionRespondToAfd(str)
	asserts.AssertVideoDescriptionRespondToAfd(str)
	return str
end

function asserts.AssertH264Profile(str)
	assert(str)
	assert(type(str) == "string", "Expected H264Profile to be of type 'string'")
end

-- Placeholder documentation for H264Profile
function M.H264Profile(str)
	asserts.AssertH264Profile(str)
	return str
end

function asserts.AssertEac3BitstreamMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3BitstreamMode to be of type 'string'")
end

-- Placeholder documentation for Eac3BitstreamMode
function M.Eac3BitstreamMode(str)
	asserts.AssertEac3BitstreamMode(str)
	return str
end

function asserts.AssertScte35SpliceInsertNoRegionalBlackoutBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35SpliceInsertNoRegionalBlackoutBehavior to be of type 'string'")
end

-- Placeholder documentation for Scte35SpliceInsertNoRegionalBlackoutBehavior
function M.Scte35SpliceInsertNoRegionalBlackoutBehavior(str)
	asserts.AssertScte35SpliceInsertNoRegionalBlackoutBehavior(str)
	return str
end

function asserts.AssertDvbSubDestinationBackgroundColor(str)
	assert(str)
	assert(type(str) == "string", "Expected DvbSubDestinationBackgroundColor to be of type 'string'")
end

-- Placeholder documentation for DvbSubDestinationBackgroundColor
function M.DvbSubDestinationBackgroundColor(str)
	asserts.AssertDvbSubDestinationBackgroundColor(str)
	return str
end

function asserts.AssertMp2CodingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Mp2CodingMode to be of type 'string'")
end

-- Placeholder documentation for Mp2CodingMode
function M.Mp2CodingMode(str)
	asserts.AssertMp2CodingMode(str)
	return str
end

function asserts.AssertM3u8PcrControl(str)
	assert(str)
	assert(type(str) == "string", "Expected M3u8PcrControl to be of type 'string'")
end

-- Placeholder documentation for M3u8PcrControl
function M.M3u8PcrControl(str)
	asserts.AssertM3u8PcrControl(str)
	return str
end

function asserts.AssertHlsStreamInfResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsStreamInfResolution to be of type 'string'")
end

-- Placeholder documentation for HlsStreamInfResolution
function M.HlsStreamInfResolution(str)
	asserts.AssertHlsStreamInfResolution(str)
	return str
end

function asserts.AssertEac3DrcLine(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3DrcLine to be of type 'string'")
end

-- Placeholder documentation for Eac3DrcLine
function M.Eac3DrcLine(str)
	asserts.AssertEac3DrcLine(str)
	return str
end

function asserts.AssertRtmpCaptionData(str)
	assert(str)
	assert(type(str) == "string", "Expected RtmpCaptionData to be of type 'string'")
end

-- Placeholder documentation for RtmpCaptionData
function M.RtmpCaptionData(str)
	asserts.AssertRtmpCaptionData(str)
	return str
end

function asserts.Assert__stringMin1(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin1 to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- Placeholder documentation for __stringMin1
function M.__stringMin1(str)
	asserts.Assert__stringMin1(str)
	return str
end

function asserts.AssertSmoothGroupCertificateMode(str)
	assert(str)
	assert(type(str) == "string", "Expected SmoothGroupCertificateMode to be of type 'string'")
end

-- Placeholder documentation for SmoothGroupCertificateMode
function M.SmoothGroupCertificateMode(str)
	asserts.AssertSmoothGroupCertificateMode(str)
	return str
end

function asserts.Assert__stringMin6Max6(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin6Max6 to be of type 'string'")
	assert(#str <= 6, "Expected string to be max 6 characters")
	assert(#str >= 6, "Expected string to be min 6 characters")
end

-- Placeholder documentation for __stringMin6Max6
function M.__stringMin6Max6(str)
	asserts.Assert__stringMin6Max6(str)
	return str
end

function asserts.AssertInputLossActionForMsSmoothOut(str)
	assert(str)
	assert(type(str) == "string", "Expected InputLossActionForMsSmoothOut to be of type 'string'")
end

-- Placeholder documentation for InputLossActionForMsSmoothOut
function M.InputLossActionForMsSmoothOut(str)
	asserts.AssertInputLossActionForMsSmoothOut(str)
	return str
end

function asserts.AssertH264TimecodeInsertionBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected H264TimecodeInsertionBehavior to be of type 'string'")
end

-- Placeholder documentation for H264TimecodeInsertionBehavior
function M.H264TimecodeInsertionBehavior(str)
	asserts.AssertH264TimecodeInsertionBehavior(str)
	return str
end

function asserts.AssertM2tsKlv(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsKlv to be of type 'string'")
end

-- Placeholder documentation for M2tsKlv
function M.M2tsKlv(str)
	asserts.AssertM2tsKlv(str)
	return str
end

function asserts.AssertM2tsPcrControl(str)
	assert(str)
	assert(type(str) == "string", "Expected M2tsPcrControl to be of type 'string'")
end

-- Placeholder documentation for M2tsPcrControl
function M.M2tsPcrControl(str)
	asserts.AssertM2tsPcrControl(str)
	return str
end

function asserts.Assert__stringMin3Max3(str)
	assert(str)
	assert(type(str) == "string", "Expected __stringMin3Max3 to be of type 'string'")
	assert(#str <= 3, "Expected string to be max 3 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

-- Placeholder documentation for __stringMin3Max3
function M.__stringMin3Max3(str)
	asserts.Assert__stringMin3Max3(str)
	return str
end

function asserts.AssertTimecodeConfigSource(str)
	assert(str)
	assert(type(str) == "string", "Expected TimecodeConfigSource to be of type 'string'")
end

-- Placeholder documentation for TimecodeConfigSource
function M.TimecodeConfigSource(str)
	asserts.AssertTimecodeConfigSource(str)
	return str
end

function asserts.AssertH264TemporalAq(str)
	assert(str)
	assert(type(str) == "string", "Expected H264TemporalAq to be of type 'string'")
end

-- Placeholder documentation for H264TemporalAq
function M.H264TemporalAq(str)
	asserts.AssertH264TemporalAq(str)
	return str
end

function asserts.AssertScte35NoRegionalBlackoutFlag(str)
	assert(str)
	assert(type(str) == "string", "Expected Scte35NoRegionalBlackoutFlag to be of type 'string'")
end

-- Corresponds to the no_regional_blackout_flag parameter. A value of REGIONAL_BLACKOUT corresponds to 0 (false) in the SCTE-35 specification. If you include one of the "restriction" flags then you must include all four of them.
function M.Scte35NoRegionalBlackoutFlag(str)
	asserts.AssertScte35NoRegionalBlackoutFlag(str)
	return str
end

function asserts.AssertRtmpCacheFullBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected RtmpCacheFullBehavior to be of type 'string'")
end

-- Placeholder documentation for RtmpCacheFullBehavior
function M.RtmpCacheFullBehavior(str)
	asserts.AssertRtmpCacheFullBehavior(str)
	return str
end

function asserts.AssertEac3SurroundMode(str)
	assert(str)
	assert(type(str) == "string", "Expected Eac3SurroundMode to be of type 'string'")
end

-- Placeholder documentation for Eac3SurroundMode
function M.Eac3SurroundMode(str)
	asserts.AssertEac3SurroundMode(str)
	return str
end

function asserts.AssertAudioNormalizationAlgorithmControl(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioNormalizationAlgorithmControl to be of type 'string'")
end

-- Placeholder documentation for AudioNormalizationAlgorithmControl
function M.AudioNormalizationAlgorithmControl(str)
	asserts.AssertAudioNormalizationAlgorithmControl(str)
	return str
end

function asserts.Assert__doubleMin1(double)
	assert(double)
	assert(type(double) == "number", "Expected __doubleMin1 to be of type 'number'")
end

function M.__doubleMin1(double)
	asserts.Assert__doubleMin1(double)
	return double
end

function asserts.Assert__doubleMin0(double)
	assert(double)
	assert(type(double) == "number", "Expected __doubleMin0 to be of type 'number'")
end

function M.__doubleMin0(double)
	asserts.Assert__doubleMin0(double)
	return double
end

function asserts.Assert__double(double)
	assert(double)
	assert(type(double) == "number", "Expected __double to be of type 'number'")
end

function M.__double(double)
	asserts.Assert__double(double)
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

function asserts.Assert__integerMin0Max4294967295(long)
	assert(long)
	assert(type(long) == "number", "Expected __integerMin0Max4294967295 to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.__integerMin0Max4294967295(long)
	asserts.Assert__integerMin0Max4294967295(long)
	return long
end

function asserts.Assert__integerMin0Max1099511627775(long)
	assert(long)
	assert(type(long) == "number", "Expected __integerMin0Max1099511627775 to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.__integerMin0Max1099511627775(long)
	asserts.Assert__integerMin0Max1099511627775(long)
	return long
end

function asserts.Assert__integerMin0Max8589934591(long)
	assert(long)
	assert(type(long) == "number", "Expected __integerMin0Max8589934591 to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.__integerMin0Max8589934591(long)
	asserts.Assert__integerMin0Max8589934591(long)
	return long
end

function asserts.Assert__integerMin0Max8191(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max8191 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 8191, "Expected integer to be max 8191")
end

function M.__integerMin0Max8191(integer)
	asserts.Assert__integerMin0Max8191(integer)
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

function asserts.Assert__integerMin1000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1000, "Expected integer to be min 1000")
end

function M.__integerMin1000(integer)
	asserts.Assert__integerMin1000(integer)
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

function asserts.Assert__integerMin0Max65536(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max65536 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 65536, "Expected integer to be max 65536")
end

function M.__integerMin0Max65536(integer)
	asserts.Assert__integerMin0Max65536(integer)
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

function asserts.Assert__integerMin1(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1(integer)
	asserts.Assert__integerMin1(integer)
	return integer
end

function asserts.Assert__integerMin3(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin3 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 3, "Expected integer to be min 3")
end

function M.__integerMin3(integer)
	asserts.Assert__integerMin3(integer)
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

function asserts.Assert__integerMin30(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin30 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 30, "Expected integer to be min 30")
end

function M.__integerMin30(integer)
	asserts.Assert__integerMin30(integer)
	return integer
end

function asserts.Assert__integerMin0(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.__integerMin0(integer)
	asserts.Assert__integerMin0(integer)
	return integer
end

function asserts.Assert__integerMin1Max5(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max5 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max5(integer)
	asserts.Assert__integerMin1Max5(integer)
	return integer
end

function asserts.Assert__integerMin4Max20(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin4Max20 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
	assert(integer >= 4, "Expected integer to be min 4")
end

function M.__integerMin4Max20(integer)
	asserts.Assert__integerMin4Max20(integer)
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

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.Assert__integerMin0Max1000000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max1000000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
end

function M.__integerMin0Max1000000(integer)
	asserts.Assert__integerMin0Max1000000(integer)
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

function asserts.Assert__integerMinNegative60Max60(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMinNegative60Max60 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 60, "Expected integer to be max 60")
	assert(integer >= -60, "Expected integer to be min -60")
end

function M.__integerMinNegative60Max60(integer)
	asserts.Assert__integerMinNegative60Max60(integer)
	return integer
end

function asserts.Assert__integerMin1Max1000000(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin1Max1000000 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000000, "Expected integer to be max 1000000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.__integerMin1Max1000000(integer)
	asserts.Assert__integerMin1Max1000000(integer)
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

function asserts.Assert__integerMin0Max600(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integerMin0Max600 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 600, "Expected integer to be max 600")
end

function M.__integerMin0Max600(integer)
	asserts.Assert__integerMin0Max600(integer)
	return integer
end

function asserts.Assert__listOfChannelSummary(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfChannelSummary to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChannelSummary(v)
	end
end

-- Placeholder documentation for __listOfChannelSummary
-- List of ChannelSummary objects
function M.__listOfChannelSummary(list)
	asserts.Assert__listOfChannelSummary(list)
	return list
end

function asserts.Assert__listOfInputDestinationRequest(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputDestinationRequest to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputDestinationRequest(v)
	end
end

-- Placeholder documentation for __listOfInputDestinationRequest
-- List of InputDestinationRequest objects
function M.__listOfInputDestinationRequest(list)
	asserts.Assert__listOfInputDestinationRequest(list)
	return list
end

function asserts.Assert__listOfOutputGroup(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutputGroup to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputGroup(v)
	end
end

-- Placeholder documentation for __listOfOutputGroup
-- List of OutputGroup objects
function M.__listOfOutputGroup(list)
	asserts.Assert__listOfOutputGroup(list)
	return list
end

function asserts.Assert__listOfAudioSelector(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfAudioSelector to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAudioSelector(v)
	end
end

-- Placeholder documentation for __listOfAudioSelector
-- List of AudioSelector objects
function M.__listOfAudioSelector(list)
	asserts.Assert__listOfAudioSelector(list)
	return list
end

function asserts.Assert__listOfInputSecurityGroup(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputSecurityGroup to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputSecurityGroup(v)
	end
end

-- Placeholder documentation for __listOfInputSecurityGroup
-- List of InputSecurityGroup objects
function M.__listOfInputSecurityGroup(list)
	asserts.Assert__listOfInputSecurityGroup(list)
	return list
end

function asserts.Assert__listOfInputSourceRequest(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputSourceRequest to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputSourceRequest(v)
	end
end

-- Placeholder documentation for __listOfInputSourceRequest
-- List of InputSourceRequest objects
function M.__listOfInputSourceRequest(list)
	asserts.Assert__listOfInputSourceRequest(list)
	return list
end

function asserts.Assert__listOfScheduleAction(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfScheduleAction to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScheduleAction(v)
	end
end

-- Placeholder documentation for __listOfScheduleAction
-- List of ScheduleAction objects
function M.__listOfScheduleAction(list)
	asserts.Assert__listOfScheduleAction(list)
	return list
end

function asserts.Assert__listOfHlsAdMarkers(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfHlsAdMarkers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHlsAdMarkers(v)
	end
end

-- Placeholder documentation for __listOfHlsAdMarkers
-- List of HlsAdMarkers objects
function M.__listOfHlsAdMarkers(list)
	asserts.Assert__listOfHlsAdMarkers(list)
	return list
end

function asserts.Assert__listOfOutputDestination(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutputDestination to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputDestination(v)
	end
end

-- Placeholder documentation for __listOfOutputDestination
-- List of OutputDestination objects
function M.__listOfOutputDestination(list)
	asserts.Assert__listOfOutputDestination(list)
	return list
end

function asserts.Assert__listOfCaptionLanguageMapping(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfCaptionLanguageMapping to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCaptionLanguageMapping(v)
	end
end

-- Placeholder documentation for __listOfCaptionLanguageMapping
-- List of CaptionLanguageMapping objects
function M.__listOfCaptionLanguageMapping(list)
	asserts.Assert__listOfCaptionLanguageMapping(list)
	return list
end

function asserts.Assert__listOfOutput(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutput to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutput(v)
	end
end

-- Placeholder documentation for __listOfOutput
-- List of Output objects
function M.__listOfOutput(list)
	asserts.Assert__listOfOutput(list)
	return list
end

function asserts.Assert__listOfAudioDescription(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfAudioDescription to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAudioDescription(v)
	end
end

-- Placeholder documentation for __listOfAudioDescription
-- List of AudioDescription objects
function M.__listOfAudioDescription(list)
	asserts.Assert__listOfAudioDescription(list)
	return list
end

function asserts.Assert__listOfInputChannelLevel(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputChannelLevel to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputChannelLevel(v)
	end
end

-- Placeholder documentation for __listOfInputChannelLevel
-- List of InputChannelLevel objects
function M.__listOfInputChannelLevel(list)
	asserts.Assert__listOfInputChannelLevel(list)
	return list
end

function asserts.Assert__listOf__string(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__string to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__string(v)
	end
end

-- Placeholder documentation for __listOf__string
-- List of __string objects
function M.__listOf__string(list)
	asserts.Assert__listOf__string(list)
	return list
end

function asserts.Assert__listOfInputAttachment(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputAttachment to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputAttachment(v)
	end
end

-- Placeholder documentation for __listOfInputAttachment
-- List of InputAttachment objects
function M.__listOfInputAttachment(list)
	asserts.Assert__listOfInputAttachment(list)
	return list
end

function asserts.Assert__listOfInput(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInput to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInput(v)
	end
end

-- Placeholder documentation for __listOfInput
-- List of Input objects
function M.__listOfInput(list)
	asserts.Assert__listOfInput(list)
	return list
end

function asserts.Assert__listOfReservation(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfReservation to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReservation(v)
	end
end

-- Placeholder documentation for __listOfReservation
-- List of Reservation objects
function M.__listOfReservation(list)
	asserts.Assert__listOfReservation(list)
	return list
end

function asserts.Assert__listOfInputDestination(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputDestination to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputDestination(v)
	end
end

-- Placeholder documentation for __listOfInputDestination
-- List of InputDestination objects
function M.__listOfInputDestination(list)
	asserts.Assert__listOfInputDestination(list)
	return list
end

function asserts.Assert__listOfChannelEgressEndpoint(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfChannelEgressEndpoint to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChannelEgressEndpoint(v)
	end
end

-- Placeholder documentation for __listOfChannelEgressEndpoint
-- List of ChannelEgressEndpoint objects
function M.__listOfChannelEgressEndpoint(list)
	asserts.Assert__listOfChannelEgressEndpoint(list)
	return list
end

function asserts.Assert__listOfScte35Descriptor(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfScte35Descriptor to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertScte35Descriptor(v)
	end
end

-- Placeholder documentation for __listOfScte35Descriptor
-- List of Scte35Descriptor objects
function M.__listOfScte35Descriptor(list)
	asserts.Assert__listOfScte35Descriptor(list)
	return list
end

function asserts.Assert__listOfOffering(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOffering to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOffering(v)
	end
end

-- Placeholder documentation for __listOfOffering
-- List of Offering objects
function M.__listOfOffering(list)
	asserts.Assert__listOfOffering(list)
	return list
end

function asserts.Assert__listOfCaptionDescription(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfCaptionDescription to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCaptionDescription(v)
	end
end

-- Placeholder documentation for __listOfCaptionDescription
-- List of CaptionDescription objects
function M.__listOfCaptionDescription(list)
	asserts.Assert__listOfCaptionDescription(list)
	return list
end

function asserts.Assert__listOfVideoDescription(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfVideoDescription to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVideoDescription(v)
	end
end

-- Placeholder documentation for __listOfVideoDescription
-- List of VideoDescription objects
function M.__listOfVideoDescription(list)
	asserts.Assert__listOfVideoDescription(list)
	return list
end

function asserts.Assert__listOfInputSource(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputSource to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputSource(v)
	end
end

-- Placeholder documentation for __listOfInputSource
-- List of InputSource objects
function M.__listOfInputSource(list)
	asserts.Assert__listOfInputSource(list)
	return list
end

function asserts.Assert__listOfOutputDestinationSettings(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOutputDestinationSettings to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputDestinationSettings(v)
	end
end

-- Placeholder documentation for __listOfOutputDestinationSettings
-- List of OutputDestinationSettings objects
function M.__listOfOutputDestinationSettings(list)
	asserts.Assert__listOfOutputDestinationSettings(list)
	return list
end

function asserts.Assert__listOfInputWhitelistRuleCidr(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputWhitelistRuleCidr to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputWhitelistRuleCidr(v)
	end
end

-- Placeholder documentation for __listOfInputWhitelistRuleCidr
-- List of InputWhitelistRuleCidr objects
function M.__listOfInputWhitelistRuleCidr(list)
	asserts.Assert__listOfInputWhitelistRuleCidr(list)
	return list
end

function asserts.Assert__listOfCaptionSelector(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfCaptionSelector to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCaptionSelector(v)
	end
end

-- Placeholder documentation for __listOfCaptionSelector
-- List of CaptionSelector objects
function M.__listOfCaptionSelector(list)
	asserts.Assert__listOfCaptionSelector(list)
	return list
end

function asserts.Assert__listOfInputWhitelistRule(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfInputWhitelistRule to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInputWhitelistRule(v)
	end
end

-- Placeholder documentation for __listOfInputWhitelistRule
-- List of InputWhitelistRule objects
function M.__listOfInputWhitelistRule(list)
	asserts.Assert__listOfInputWhitelistRule(list)
	return list
end

function asserts.Assert__listOfAudioChannelMapping(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfAudioChannelMapping to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAudioChannelMapping(v)
	end
end

-- Placeholder documentation for __listOfAudioChannelMapping
-- List of AudioChannelMapping objects
function M.__listOfAudioChannelMapping(list)
	asserts.Assert__listOfAudioChannelMapping(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "medialive.amazonaws.com"
		end
	end
	local ss = { "medialive" }
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
--- Call PurchaseOffering asynchronously, invoking a callback when done
-- @param PurchaseOfferingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PurchaseOfferingAsync(PurchaseOfferingRequest, cb)
	assert(PurchaseOfferingRequest, "You must provide a PurchaseOfferingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PurchaseOffering",
	}
	for header,value in pairs(PurchaseOfferingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/prod/offerings/{offeringId}/purchase", PurchaseOfferingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PurchaseOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PurchaseOfferingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PurchaseOfferingSync(PurchaseOfferingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PurchaseOfferingAsync(PurchaseOfferingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateChannel asynchronously, invoking a callback when done
-- @param UpdateChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateChannelAsync(UpdateChannelRequest, cb)
	assert(UpdateChannelRequest, "You must provide a UpdateChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateChannel",
	}
	for header,value in pairs(UpdateChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/prod/channels/{channelId}", UpdateChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateChannelSync(UpdateChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateChannelAsync(UpdateChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOfferings asynchronously, invoking a callback when done
-- @param ListOfferingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOfferingsAsync(ListOfferingsRequest, cb)
	assert(ListOfferingsRequest, "You must provide a ListOfferingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListOfferings",
	}
	for header,value in pairs(ListOfferingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/offerings", ListOfferingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOfferings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOfferingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOfferingsSync(ListOfferingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOfferingsAsync(ListOfferingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateChannel asynchronously, invoking a callback when done
-- @param CreateChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateChannelAsync(CreateChannelRequest, cb)
	assert(CreateChannelRequest, "You must provide a CreateChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateChannel",
	}
	for header,value in pairs(CreateChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/prod/channels", CreateChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateChannelSync(CreateChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateChannelAsync(CreateChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInputSecurityGroup asynchronously, invoking a callback when done
-- @param DeleteInputSecurityGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteInputSecurityGroupAsync(DeleteInputSecurityGroupRequest, cb)
	assert(DeleteInputSecurityGroupRequest, "You must provide a DeleteInputSecurityGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteInputSecurityGroup",
	}
	for header,value in pairs(DeleteInputSecurityGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/prod/inputSecurityGroups/{inputSecurityGroupId}", DeleteInputSecurityGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInputSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInputSecurityGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteInputSecurityGroupSync(DeleteInputSecurityGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInputSecurityGroupAsync(DeleteInputSecurityGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopChannel asynchronously, invoking a callback when done
-- @param StopChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopChannelAsync(StopChannelRequest, cb)
	assert(StopChannelRequest, "You must provide a StopChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StopChannel",
	}
	for header,value in pairs(StopChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/prod/channels/{channelId}/stop", StopChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopChannelSync(StopChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopChannelAsync(StopChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeChannel asynchronously, invoking a callback when done
-- @param DescribeChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeChannelAsync(DescribeChannelRequest, cb)
	assert(DescribeChannelRequest, "You must provide a DescribeChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeChannel",
	}
	for header,value in pairs(DescribeChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/channels/{channelId}", DescribeChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeChannelSync(DescribeChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeChannelAsync(DescribeChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInputs asynchronously, invoking a callback when done
-- @param ListInputsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInputsAsync(ListInputsRequest, cb)
	assert(ListInputsRequest, "You must provide a ListInputsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListInputs",
	}
	for header,value in pairs(ListInputsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/inputs", ListInputsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInputs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInputsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListInputsSync(ListInputsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInputsAsync(ListInputsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInputSecurityGroups asynchronously, invoking a callback when done
-- @param ListInputSecurityGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListInputSecurityGroupsAsync(ListInputSecurityGroupsRequest, cb)
	assert(ListInputSecurityGroupsRequest, "You must provide a ListInputSecurityGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListInputSecurityGroups",
	}
	for header,value in pairs(ListInputSecurityGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/inputSecurityGroups", ListInputSecurityGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInputSecurityGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInputSecurityGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListInputSecurityGroupsSync(ListInputSecurityGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInputSecurityGroupsAsync(ListInputSecurityGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteChannel asynchronously, invoking a callback when done
-- @param DeleteChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteChannelAsync(DeleteChannelRequest, cb)
	assert(DeleteChannelRequest, "You must provide a DeleteChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteChannel",
	}
	for header,value in pairs(DeleteChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/prod/channels/{channelId}", DeleteChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteChannelSync(DeleteChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteChannelAsync(DeleteChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListReservations asynchronously, invoking a callback when done
-- @param ListReservationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListReservationsAsync(ListReservationsRequest, cb)
	assert(ListReservationsRequest, "You must provide a ListReservationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListReservations",
	}
	for header,value in pairs(ListReservationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/reservations", ListReservationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListReservations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListReservationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListReservationsSync(ListReservationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListReservationsAsync(ListReservationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInput asynchronously, invoking a callback when done
-- @param DescribeInputRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeInputAsync(DescribeInputRequest, cb)
	assert(DescribeInputRequest, "You must provide a DescribeInputRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeInput",
	}
	for header,value in pairs(DescribeInputRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/inputs/{inputId}", DescribeInputRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInput synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInputRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeInputSync(DescribeInputRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInputAsync(DescribeInputRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteInput asynchronously, invoking a callback when done
-- @param DeleteInputRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteInputAsync(DeleteInputRequest, cb)
	assert(DeleteInputRequest, "You must provide a DeleteInputRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteInput",
	}
	for header,value in pairs(DeleteInputRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/prod/inputs/{inputId}", DeleteInputRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteInput synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteInputRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteInputSync(DeleteInputRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteInputAsync(DeleteInputRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateInputSecurityGroup asynchronously, invoking a callback when done
-- @param UpdateInputSecurityGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateInputSecurityGroupAsync(UpdateInputSecurityGroupRequest, cb)
	assert(UpdateInputSecurityGroupRequest, "You must provide a UpdateInputSecurityGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateInputSecurityGroup",
	}
	for header,value in pairs(UpdateInputSecurityGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/prod/inputSecurityGroups/{inputSecurityGroupId}", UpdateInputSecurityGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateInputSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateInputSecurityGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateInputSecurityGroupSync(UpdateInputSecurityGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateInputSecurityGroupAsync(UpdateInputSecurityGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInput asynchronously, invoking a callback when done
-- @param CreateInputRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateInputAsync(CreateInputRequest, cb)
	assert(CreateInputRequest, "You must provide a CreateInputRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateInput",
	}
	for header,value in pairs(CreateInputRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/prod/inputs", CreateInputRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInput synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInputRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateInputSync(CreateInputRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInputAsync(CreateInputRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReservation asynchronously, invoking a callback when done
-- @param DeleteReservationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReservationAsync(DeleteReservationRequest, cb)
	assert(DeleteReservationRequest, "You must provide a DeleteReservationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteReservation",
	}
	for header,value in pairs(DeleteReservationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/prod/reservations/{reservationId}", DeleteReservationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReservation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReservationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReservationSync(DeleteReservationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReservationAsync(DeleteReservationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOffering asynchronously, invoking a callback when done
-- @param DescribeOfferingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOfferingAsync(DescribeOfferingRequest, cb)
	assert(DescribeOfferingRequest, "You must provide a DescribeOfferingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOffering",
	}
	for header,value in pairs(DescribeOfferingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/offerings/{offeringId}", DescribeOfferingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOffering synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOfferingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeOfferingSync(DescribeOfferingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOfferingAsync(DescribeOfferingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateInputSecurityGroup asynchronously, invoking a callback when done
-- @param CreateInputSecurityGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateInputSecurityGroupAsync(CreateInputSecurityGroupRequest, cb)
	assert(CreateInputSecurityGroupRequest, "You must provide a CreateInputSecurityGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateInputSecurityGroup",
	}
	for header,value in pairs(CreateInputSecurityGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/prod/inputSecurityGroups", CreateInputSecurityGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateInputSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateInputSecurityGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateInputSecurityGroupSync(CreateInputSecurityGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateInputSecurityGroupAsync(CreateInputSecurityGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInputSecurityGroup asynchronously, invoking a callback when done
-- @param DescribeInputSecurityGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeInputSecurityGroupAsync(DescribeInputSecurityGroupRequest, cb)
	assert(DescribeInputSecurityGroupRequest, "You must provide a DescribeInputSecurityGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeInputSecurityGroup",
	}
	for header,value in pairs(DescribeInputSecurityGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/inputSecurityGroups/{inputSecurityGroupId}", DescribeInputSecurityGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInputSecurityGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInputSecurityGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeInputSecurityGroupSync(DescribeInputSecurityGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInputSecurityGroupAsync(DescribeInputSecurityGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeReservation asynchronously, invoking a callback when done
-- @param DescribeReservationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReservationAsync(DescribeReservationRequest, cb)
	assert(DescribeReservationRequest, "You must provide a DescribeReservationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeReservation",
	}
	for header,value in pairs(DescribeReservationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/reservations/{reservationId}", DescribeReservationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReservation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReservationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReservationSync(DescribeReservationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReservationAsync(DescribeReservationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchUpdateSchedule asynchronously, invoking a callback when done
-- @param BatchUpdateScheduleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchUpdateScheduleAsync(BatchUpdateScheduleRequest, cb)
	assert(BatchUpdateScheduleRequest, "You must provide a BatchUpdateScheduleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".BatchUpdateSchedule",
	}
	for header,value in pairs(BatchUpdateScheduleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/prod/channels/{channelId}/schedule", BatchUpdateScheduleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchUpdateSchedule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchUpdateScheduleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchUpdateScheduleSync(BatchUpdateScheduleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchUpdateScheduleAsync(BatchUpdateScheduleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListChannels asynchronously, invoking a callback when done
-- @param ListChannelsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListChannelsAsync(ListChannelsRequest, cb)
	assert(ListChannelsRequest, "You must provide a ListChannelsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListChannels",
	}
	for header,value in pairs(ListChannelsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/channels", ListChannelsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListChannels synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListChannelsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListChannelsSync(ListChannelsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListChannelsAsync(ListChannelsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateInput asynchronously, invoking a callback when done
-- @param UpdateInputRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateInputAsync(UpdateInputRequest, cb)
	assert(UpdateInputRequest, "You must provide a UpdateInputRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateInput",
	}
	for header,value in pairs(UpdateInputRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/prod/inputs/{inputId}", UpdateInputRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateInput synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateInputRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateInputSync(UpdateInputRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateInputAsync(UpdateInputRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSchedule asynchronously, invoking a callback when done
-- @param DescribeScheduleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeScheduleAsync(DescribeScheduleRequest, cb)
	assert(DescribeScheduleRequest, "You must provide a DescribeScheduleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeSchedule",
	}
	for header,value in pairs(DescribeScheduleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/prod/channels/{channelId}/schedule", DescribeScheduleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSchedule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeScheduleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeScheduleSync(DescribeScheduleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeScheduleAsync(DescribeScheduleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartChannel asynchronously, invoking a callback when done
-- @param StartChannelRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartChannelAsync(StartChannelRequest, cb)
	assert(StartChannelRequest, "You must provide a StartChannelRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartChannel",
	}
	for header,value in pairs(StartChannelRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/prod/channels/{channelId}/start", StartChannelRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartChannel synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartChannelRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartChannelSync(StartChannelRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartChannelAsync(StartChannelRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
