--- GENERATED CODE - DO NOT MODIFY
-- AWS Elemental MediaPackage (mediapackage-2017-10-12)

local M = {}

M.metadata = {
	api_version = "2017-10-12",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "mediapackage",
	service_abbreviation = "MediaPackage",
	service_full_name = "AWS Elemental MediaPackage",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "mediapackage-2017-10-12",
}

local keys = {}
local asserts = {}

keys.DashEncryption = { ["SpekeKeyProvider"] = true, ["KeyRotationIntervalSeconds"] = true, nil }

function asserts.AssertDashEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DashEncryption to be of type 'table'")
	assert(struct["SpekeKeyProvider"], "Expected key SpekeKeyProvider to exist in table")
	if struct["SpekeKeyProvider"] then asserts.AssertSpekeKeyProvider(struct["SpekeKeyProvider"]) end
	if struct["KeyRotationIntervalSeconds"] then asserts.Assert__integer(struct["KeyRotationIntervalSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DashEncryption[k], "DashEncryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DashEncryption
-- A Dynamic Adaptive Streaming over HTTP (DASH) encryption configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpekeKeyProvider [SpekeKeyProvider] 
-- * KeyRotationIntervalSeconds [__integer] Time (in seconds) between each encryption key rotation.
-- Required key: SpekeKeyProvider
-- @return DashEncryption structure as a key-value pair table
function M.DashEncryption(args)
	assert(args, "You must provide an argument table when creating DashEncryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpekeKeyProvider"] = args["SpekeKeyProvider"],
		["KeyRotationIntervalSeconds"] = args["KeyRotationIntervalSeconds"],
	}
	asserts.AssertDashEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CmafEncryption = { ["SpekeKeyProvider"] = true, ["KeyRotationIntervalSeconds"] = true, nil }

function asserts.AssertCmafEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CmafEncryption to be of type 'table'")
	assert(struct["SpekeKeyProvider"], "Expected key SpekeKeyProvider to exist in table")
	if struct["SpekeKeyProvider"] then asserts.AssertSpekeKeyProvider(struct["SpekeKeyProvider"]) end
	if struct["KeyRotationIntervalSeconds"] then asserts.Assert__integer(struct["KeyRotationIntervalSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CmafEncryption[k], "CmafEncryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CmafEncryption
-- A Common Media Application Format (CMAF) encryption configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpekeKeyProvider [SpekeKeyProvider] 
-- * KeyRotationIntervalSeconds [__integer] Time (in seconds) between each encryption key rotation.
-- Required key: SpekeKeyProvider
-- @return CmafEncryption structure as a key-value pair table
function M.CmafEncryption(args)
	assert(args, "You must provide an argument table when creating CmafEncryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpekeKeyProvider"] = args["SpekeKeyProvider"],
		["KeyRotationIntervalSeconds"] = args["KeyRotationIntervalSeconds"],
	}
	asserts.AssertCmafEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamSelection = { ["MaxVideoBitsPerSecond"] = true, ["StreamOrder"] = true, ["MinVideoBitsPerSecond"] = true, nil }

function asserts.AssertStreamSelection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamSelection to be of type 'table'")
	if struct["MaxVideoBitsPerSecond"] then asserts.Assert__integer(struct["MaxVideoBitsPerSecond"]) end
	if struct["StreamOrder"] then asserts.AssertStreamOrder(struct["StreamOrder"]) end
	if struct["MinVideoBitsPerSecond"] then asserts.Assert__integer(struct["MinVideoBitsPerSecond"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamSelection[k], "StreamSelection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamSelection
-- A StreamSelection configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxVideoBitsPerSecond [__integer] The maximum video bitrate (bps) to include in output.
-- * StreamOrder [StreamOrder] A directive that determines the order of streams in the output.
-- * MinVideoBitsPerSecond [__integer] The minimum video bitrate (bps) to include in output.
-- @return StreamSelection structure as a key-value pair table
function M.StreamSelection(args)
	assert(args, "You must provide an argument table when creating StreamSelection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxVideoBitsPerSecond"] = args["MaxVideoBitsPerSecond"],
		["StreamOrder"] = args["StreamOrder"],
		["MinVideoBitsPerSecond"] = args["MinVideoBitsPerSecond"],
	}
	asserts.AssertStreamSelection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DashPackage = { ["Profile"] = true, ["ManifestWindowSeconds"] = true, ["StreamSelection"] = true, ["Encryption"] = true, ["PeriodTriggers"] = true, ["MinBufferTimeSeconds"] = true, ["SuggestedPresentationDelaySeconds"] = true, ["SegmentDurationSeconds"] = true, ["MinUpdatePeriodSeconds"] = true, nil }

function asserts.AssertDashPackage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DashPackage to be of type 'table'")
	if struct["Profile"] then asserts.AssertProfile(struct["Profile"]) end
	if struct["ManifestWindowSeconds"] then asserts.Assert__integer(struct["ManifestWindowSeconds"]) end
	if struct["StreamSelection"] then asserts.AssertStreamSelection(struct["StreamSelection"]) end
	if struct["Encryption"] then asserts.AssertDashEncryption(struct["Encryption"]) end
	if struct["PeriodTriggers"] then asserts.Assert__listOf__PeriodTriggersElement(struct["PeriodTriggers"]) end
	if struct["MinBufferTimeSeconds"] then asserts.Assert__integer(struct["MinBufferTimeSeconds"]) end
	if struct["SuggestedPresentationDelaySeconds"] then asserts.Assert__integer(struct["SuggestedPresentationDelaySeconds"]) end
	if struct["SegmentDurationSeconds"] then asserts.Assert__integer(struct["SegmentDurationSeconds"]) end
	if struct["MinUpdatePeriodSeconds"] then asserts.Assert__integer(struct["MinUpdatePeriodSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DashPackage[k], "DashPackage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DashPackage
-- A Dynamic Adaptive Streaming over HTTP (DASH) packaging configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Profile [Profile] The Dynamic Adaptive Streaming over HTTP (DASH) profile type.  When set to "HBBTV_1_5", HbbTV 1.5 compliant output is enabled.
-- * ManifestWindowSeconds [__integer] Time window (in seconds) contained in each manifest.
-- * StreamSelection [StreamSelection] 
-- * Encryption [DashEncryption] 
-- * PeriodTriggers [__listOf__PeriodTriggersElement] A list of triggers that controls when the outgoing Dynamic Adaptive Streaming over HTTP (DASH)
--Media Presentation Description (MPD) will be partitioned into multiple periods. If empty, the content will not
--be partitioned into more than one period. If the list contains "ADS", new periods will be created where
--the Channel source contains SCTE-35 ad markers.
--
-- * MinBufferTimeSeconds [__integer] Minimum duration (in seconds) that a player will buffer media before starting the presentation.
-- * SuggestedPresentationDelaySeconds [__integer] Duration (in seconds) to delay live content before presentation.
-- * SegmentDurationSeconds [__integer] Duration (in seconds) of each segment. Actual segments will be
--rounded to the nearest multiple of the source segment duration.
--
-- * MinUpdatePeriodSeconds [__integer] Minimum duration (in seconds) between potential changes to the Dynamic Adaptive Streaming over HTTP (DASH) Media Presentation Description (MPD).
-- @return DashPackage structure as a key-value pair table
function M.DashPackage(args)
	assert(args, "You must provide an argument table when creating DashPackage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Profile"] = args["Profile"],
		["ManifestWindowSeconds"] = args["ManifestWindowSeconds"],
		["StreamSelection"] = args["StreamSelection"],
		["Encryption"] = args["Encryption"],
		["PeriodTriggers"] = args["PeriodTriggers"],
		["MinBufferTimeSeconds"] = args["MinBufferTimeSeconds"],
		["SuggestedPresentationDelaySeconds"] = args["SuggestedPresentationDelaySeconds"],
		["SegmentDurationSeconds"] = args["SegmentDurationSeconds"],
		["MinUpdatePeriodSeconds"] = args["MinUpdatePeriodSeconds"],
	}
	asserts.AssertDashPackage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RotateIngestEndpointCredentialsRequest = { ["IngestEndpointId"] = true, ["Id"] = true, nil }

function asserts.AssertRotateIngestEndpointCredentialsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateIngestEndpointCredentialsRequest to be of type 'table'")
	assert(struct["IngestEndpointId"], "Expected key IngestEndpointId to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["IngestEndpointId"] then asserts.Assert__string(struct["IngestEndpointId"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotateIngestEndpointCredentialsRequest[k], "RotateIngestEndpointCredentialsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateIngestEndpointCredentialsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IngestEndpointId [__string] The id of the IngestEndpoint whose credentials should be rotated
-- * Id [__string] The ID of the channel the IngestEndpoint is on.
-- Required key: IngestEndpointId
-- Required key: Id
-- @return RotateIngestEndpointCredentialsRequest structure as a key-value pair table
function M.RotateIngestEndpointCredentialsRequest(args)
	assert(args, "You must provide an argument table when creating RotateIngestEndpointCredentialsRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{ingest_endpoint_id}"] = args["IngestEndpointId"],
        ["{id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["IngestEndpointId"] = args["IngestEndpointId"],
		["Id"] = args["Id"],
	}
	asserts.AssertRotateIngestEndpointCredentialsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOriginEndpointRequest = { ["Id"] = true, nil }

function asserts.AssertDescribeOriginEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOriginEndpointRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOriginEndpointRequest[k], "DescribeOriginEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOriginEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the OriginEndpoint.
-- Required key: Id
-- @return DescribeOriginEndpointRequest structure as a key-value pair table
function M.DescribeOriginEndpointRequest(args)
	assert(args, "You must provide an argument table when creating DescribeOriginEndpointRequest")
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
	asserts.AssertDescribeOriginEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeChannelResponse = { ["Id"] = true, ["Description"] = true, ["Arn"] = true, ["HlsIngest"] = true, nil }

function asserts.AssertDescribeChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChannelResponse to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["HlsIngest"] then asserts.AssertHlsIngest(struct["HlsIngest"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChannelResponse[k], "DescribeChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the Channel.
-- * Description [__string] A short text description of the Channel.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the Channel.
-- * HlsIngest [HlsIngest] 
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
		["Id"] = args["Id"],
		["Description"] = args["Description"],
		["Arn"] = args["Arn"],
		["HlsIngest"] = args["HlsIngest"],
	}
	asserts.AssertDescribeChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateOriginEndpointResponse = { ["CmafPackage"] = true, ["StartoverWindowSeconds"] = true, ["ChannelId"] = true, ["Description"] = true, ["Whitelist"] = true, ["DashPackage"] = true, ["TimeDelaySeconds"] = true, ["MssPackage"] = true, ["HlsPackage"] = true, ["Url"] = true, ["ManifestName"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertCreateOriginEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOriginEndpointResponse to be of type 'table'")
	if struct["CmafPackage"] then asserts.AssertCmafPackage(struct["CmafPackage"]) end
	if struct["StartoverWindowSeconds"] then asserts.Assert__integer(struct["StartoverWindowSeconds"]) end
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Whitelist"] then asserts.Assert__listOf__string(struct["Whitelist"]) end
	if struct["DashPackage"] then asserts.AssertDashPackage(struct["DashPackage"]) end
	if struct["TimeDelaySeconds"] then asserts.Assert__integer(struct["TimeDelaySeconds"]) end
	if struct["MssPackage"] then asserts.AssertMssPackage(struct["MssPackage"]) end
	if struct["HlsPackage"] then asserts.AssertHlsPackage(struct["HlsPackage"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ManifestName"] then asserts.Assert__string(struct["ManifestName"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOriginEndpointResponse[k], "CreateOriginEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOriginEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CmafPackage [CmafPackage] 
-- * StartoverWindowSeconds [__integer] Maximum duration (seconds) of content to retain for startover playback.
--If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * ChannelId [__string] The ID of the Channel the OriginEndpoint is associated with.
-- * Description [__string] A short text description of the OriginEndpoint.
-- * Whitelist [__listOf__string] A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
-- * DashPackage [DashPackage] 
-- * TimeDelaySeconds [__integer] Amount of delay (seconds) to enforce on the playback of live content.
--If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * MssPackage [MssPackage] 
-- * HlsPackage [HlsPackage] 
-- * Url [__string] The URL of the packaged OriginEndpoint for consumption.
-- * ManifestName [__string] A short string appended to the end of the OriginEndpoint URL.
-- * Id [__string] The ID of the OriginEndpoint.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
-- @return CreateOriginEndpointResponse structure as a key-value pair table
function M.CreateOriginEndpointResponse(args)
	assert(args, "You must provide an argument table when creating CreateOriginEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CmafPackage"] = args["CmafPackage"],
		["StartoverWindowSeconds"] = args["StartoverWindowSeconds"],
		["ChannelId"] = args["ChannelId"],
		["Description"] = args["Description"],
		["Whitelist"] = args["Whitelist"],
		["DashPackage"] = args["DashPackage"],
		["TimeDelaySeconds"] = args["TimeDelaySeconds"],
		["MssPackage"] = args["MssPackage"],
		["HlsPackage"] = args["HlsPackage"],
		["Url"] = args["Url"],
		["ManifestName"] = args["ManifestName"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertCreateOriginEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Channel = { ["Id"] = true, ["Description"] = true, ["Arn"] = true, ["HlsIngest"] = true, nil }

function asserts.AssertChannel(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Channel to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["HlsIngest"] then asserts.AssertHlsIngest(struct["HlsIngest"]) end
	for k,_ in pairs(struct) do
		assert(keys.Channel[k], "Channel contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Channel
-- A Channel resource configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the Channel.
-- * Description [__string] A short text description of the Channel.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the Channel.
-- * HlsIngest [HlsIngest] 
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
		["Id"] = args["Id"],
		["Description"] = args["Description"],
		["Arn"] = args["Arn"],
		["HlsIngest"] = args["HlsIngest"],
	}
	asserts.AssertChannel(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteChannelRequest = { ["Id"] = true, nil }

function asserts.AssertDeleteChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChannelRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteChannelRequest[k], "DeleteChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the Channel to delete.
-- Required key: Id
-- @return DeleteChannelRequest structure as a key-value pair table
function M.DeleteChannelRequest(args)
	assert(args, "You must provide an argument table when creating DeleteChannelRequest")
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
	asserts.AssertDeleteChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteOriginEndpointResponse = { nil }

function asserts.AssertDeleteOriginEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOriginEndpointResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteOriginEndpointResponse[k], "DeleteOriginEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOriginEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteOriginEndpointResponse structure as a key-value pair table
function M.DeleteOriginEndpointResponse(args)
	assert(args, "You must provide an argument table when creating DeleteOriginEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteOriginEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RotateChannelCredentialsResponse = { ["Id"] = true, ["Description"] = true, ["Arn"] = true, ["HlsIngest"] = true, nil }

function asserts.AssertRotateChannelCredentialsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateChannelCredentialsResponse to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["HlsIngest"] then asserts.AssertHlsIngest(struct["HlsIngest"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotateChannelCredentialsResponse[k], "RotateChannelCredentialsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateChannelCredentialsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the Channel.
-- * Description [__string] A short text description of the Channel.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the Channel.
-- * HlsIngest [HlsIngest] 
-- @return RotateChannelCredentialsResponse structure as a key-value pair table
function M.RotateChannelCredentialsResponse(args)
	assert(args, "You must provide an argument table when creating RotateChannelCredentialsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Description"] = args["Description"],
		["Arn"] = args["Arn"],
		["HlsIngest"] = args["HlsIngest"],
	}
	asserts.AssertRotateChannelCredentialsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsManifest = { ["PlaylistType"] = true, ["PlaylistWindowSeconds"] = true, ["Id"] = true, ["Url"] = true, ["IncludeIframeOnlyStream"] = true, ["AdMarkers"] = true, ["ManifestName"] = true, ["ProgramDateTimeIntervalSeconds"] = true, nil }

function asserts.AssertHlsManifest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsManifest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["PlaylistType"] then asserts.AssertPlaylistType(struct["PlaylistType"]) end
	if struct["PlaylistWindowSeconds"] then asserts.Assert__integer(struct["PlaylistWindowSeconds"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["IncludeIframeOnlyStream"] then asserts.Assert__boolean(struct["IncludeIframeOnlyStream"]) end
	if struct["AdMarkers"] then asserts.AssertAdMarkers(struct["AdMarkers"]) end
	if struct["ManifestName"] then asserts.Assert__string(struct["ManifestName"]) end
	if struct["ProgramDateTimeIntervalSeconds"] then asserts.Assert__integer(struct["ProgramDateTimeIntervalSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsManifest[k], "HlsManifest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsManifest
-- A HTTP Live Streaming (HLS) manifest configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlaylistType [PlaylistType] The HTTP Live Streaming (HLS) playlist type.
--When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
--entry will be included in the media playlist.
--
-- * PlaylistWindowSeconds [__integer] Time window (in seconds) contained in each parent manifest.
-- * Id [__string] The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
-- * Url [__string] The URL of the packaged OriginEndpoint for consumption.
-- * IncludeIframeOnlyStream [__boolean] When enabled, an I-Frame only stream will be included in the output.
-- * AdMarkers [AdMarkers] This setting controls how ad markers are included in the packaged OriginEndpoint.
--"NONE" will omit all SCTE-35 ad markers from the output.
--"PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
--markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
--"SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
--messages in the input source.
--
-- * ManifestName [__string] An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
-- * ProgramDateTimeIntervalSeconds [__integer] The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
--inserted into manifests. Additionally, when an interval is specified
--ID3Timed Metadata messages will be generated every 5 seconds using the
--ingest time of the content.
--If the interval is not specified, or set to 0, then
--no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
--ID3Timed Metadata messages will be generated. Note that irrespective
--of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
--it will be passed through to HLS output.
--
-- Required key: Id
-- @return HlsManifest structure as a key-value pair table
function M.HlsManifest(args)
	assert(args, "You must provide an argument table when creating HlsManifest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlaylistType"] = args["PlaylistType"],
		["PlaylistWindowSeconds"] = args["PlaylistWindowSeconds"],
		["Id"] = args["Id"],
		["Url"] = args["Url"],
		["IncludeIframeOnlyStream"] = args["IncludeIframeOnlyStream"],
		["AdMarkers"] = args["AdMarkers"],
		["ManifestName"] = args["ManifestName"],
		["ProgramDateTimeIntervalSeconds"] = args["ProgramDateTimeIntervalSeconds"],
	}
	asserts.AssertHlsManifest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateChannelResponse = { ["Id"] = true, ["Description"] = true, ["Arn"] = true, ["HlsIngest"] = true, nil }

function asserts.AssertUpdateChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChannelResponse to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["HlsIngest"] then asserts.AssertHlsIngest(struct["HlsIngest"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateChannelResponse[k], "UpdateChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the Channel.
-- * Description [__string] A short text description of the Channel.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the Channel.
-- * HlsIngest [HlsIngest] 
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
		["Id"] = args["Id"],
		["Description"] = args["Description"],
		["Arn"] = args["Arn"],
		["HlsIngest"] = args["HlsIngest"],
	}
	asserts.AssertUpdateChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateOriginEndpointRequest = { ["CmafPackage"] = true, ["StartoverWindowSeconds"] = true, ["MssPackage"] = true, ["Description"] = true, ["DashPackage"] = true, ["TimeDelaySeconds"] = true, ["Whitelist"] = true, ["HlsPackage"] = true, ["Id"] = true, ["ManifestName"] = true, nil }

function asserts.AssertUpdateOriginEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateOriginEndpointRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["CmafPackage"] then asserts.AssertCmafPackageCreateOrUpdateParameters(struct["CmafPackage"]) end
	if struct["StartoverWindowSeconds"] then asserts.Assert__integer(struct["StartoverWindowSeconds"]) end
	if struct["MssPackage"] then asserts.AssertMssPackage(struct["MssPackage"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["DashPackage"] then asserts.AssertDashPackage(struct["DashPackage"]) end
	if struct["TimeDelaySeconds"] then asserts.Assert__integer(struct["TimeDelaySeconds"]) end
	if struct["Whitelist"] then asserts.Assert__listOf__string(struct["Whitelist"]) end
	if struct["HlsPackage"] then asserts.AssertHlsPackage(struct["HlsPackage"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["ManifestName"] then asserts.Assert__string(struct["ManifestName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateOriginEndpointRequest[k], "UpdateOriginEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateOriginEndpointRequest
-- Configuration parameters used to update an existing OriginEndpoint.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CmafPackage [CmafPackageCreateOrUpdateParameters] 
-- * StartoverWindowSeconds [__integer] Maximum duration (in seconds) of content to retain for startover playback.
--If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * MssPackage [MssPackage] 
-- * Description [__string] A short text description of the OriginEndpoint.
-- * DashPackage [DashPackage] 
-- * TimeDelaySeconds [__integer] Amount of delay (in seconds) to enforce on the playback of live content.
--If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * Whitelist [__listOf__string] A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
-- * HlsPackage [HlsPackage] 
-- * Id [__string] The ID of the OriginEndpoint to update.
-- * ManifestName [__string] A short string that will be appended to the end of the Endpoint URL.
-- Required key: Id
-- @return UpdateOriginEndpointRequest structure as a key-value pair table
function M.UpdateOriginEndpointRequest(args)
	assert(args, "You must provide an argument table when creating UpdateOriginEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["CmafPackage"] = args["CmafPackage"],
		["StartoverWindowSeconds"] = args["StartoverWindowSeconds"],
		["MssPackage"] = args["MssPackage"],
		["Description"] = args["Description"],
		["DashPackage"] = args["DashPackage"],
		["TimeDelaySeconds"] = args["TimeDelaySeconds"],
		["Whitelist"] = args["Whitelist"],
		["HlsPackage"] = args["HlsPackage"],
		["Id"] = args["Id"],
		["ManifestName"] = args["ManifestName"],
	}
	asserts.AssertUpdateOriginEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOriginEndpointsResponse = { ["NextToken"] = true, ["OriginEndpoints"] = true, nil }

function asserts.AssertListOriginEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOriginEndpointsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["OriginEndpoints"] then asserts.Assert__listOfOriginEndpoint(struct["OriginEndpoints"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOriginEndpointsResponse[k], "ListOriginEndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOriginEndpointsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] A token that can be used to resume pagination from the end of the collection.
-- * OriginEndpoints [__listOfOriginEndpoint] A list of OriginEndpoint records.
-- @return ListOriginEndpointsResponse structure as a key-value pair table
function M.ListOriginEndpointsResponse(args)
	assert(args, "You must provide an argument table when creating ListOriginEndpointsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["OriginEndpoints"] = args["OriginEndpoints"],
	}
	asserts.AssertListOriginEndpointsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateChannelRequest = { ["Description"] = true, ["Id"] = true, nil }

function asserts.AssertCreateChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChannelRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateChannelRequest[k], "CreateChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChannelRequest
-- A new Channel configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [__string] A short text description of the Channel.
-- * Id [__string] The ID of the Channel. The ID must be unique within the region and it
--cannot be changed after a Channel is created.
--
-- Required key: Id
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
		["Description"] = args["Description"],
		["Id"] = args["Id"],
	}
	asserts.AssertCreateChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsIngest = { ["IngestEndpoints"] = true, nil }

function asserts.AssertHlsIngest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsIngest to be of type 'table'")
	if struct["IngestEndpoints"] then asserts.Assert__listOfIngestEndpoint(struct["IngestEndpoints"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsIngest[k], "HlsIngest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsIngest
-- An HTTP Live Streaming (HLS) ingest resource configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IngestEndpoints [__listOfIngestEndpoint] A list of endpoints to which the source stream should be sent.
-- @return HlsIngest structure as a key-value pair table
function M.HlsIngest(args)
	assert(args, "You must provide an argument table when creating HlsIngest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IngestEndpoints"] = args["IngestEndpoints"],
	}
	asserts.AssertHlsIngest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CmafPackage = { ["Encryption"] = true, ["SegmentPrefix"] = true, ["HlsManifests"] = true, ["SegmentDurationSeconds"] = true, ["StreamSelection"] = true, nil }

function asserts.AssertCmafPackage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CmafPackage to be of type 'table'")
	if struct["Encryption"] then asserts.AssertCmafEncryption(struct["Encryption"]) end
	if struct["SegmentPrefix"] then asserts.Assert__string(struct["SegmentPrefix"]) end
	if struct["HlsManifests"] then asserts.Assert__listOfHlsManifest(struct["HlsManifests"]) end
	if struct["SegmentDurationSeconds"] then asserts.Assert__integer(struct["SegmentDurationSeconds"]) end
	if struct["StreamSelection"] then asserts.AssertStreamSelection(struct["StreamSelection"]) end
	for k,_ in pairs(struct) do
		assert(keys.CmafPackage[k], "CmafPackage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CmafPackage
-- A Common Media Application Format (CMAF) packaging configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Encryption [CmafEncryption] 
-- * SegmentPrefix [__string] An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.
-- * HlsManifests [__listOfHlsManifest] A list of HLS manifest configurations
-- * SegmentDurationSeconds [__integer] Duration (in seconds) of each segment. Actual segments will be
--rounded to the nearest multiple of the source segment duration.
--
-- * StreamSelection [StreamSelection] 
-- @return CmafPackage structure as a key-value pair table
function M.CmafPackage(args)
	assert(args, "You must provide an argument table when creating CmafPackage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Encryption"] = args["Encryption"],
		["SegmentPrefix"] = args["SegmentPrefix"],
		["HlsManifests"] = args["HlsManifests"],
		["SegmentDurationSeconds"] = args["SegmentDurationSeconds"],
		["StreamSelection"] = args["StreamSelection"],
	}
	asserts.AssertCmafPackage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsEncryption = { ["SpekeKeyProvider"] = true, ["ConstantInitializationVector"] = true, ["RepeatExtXKey"] = true, ["EncryptionMethod"] = true, ["KeyRotationIntervalSeconds"] = true, nil }

function asserts.AssertHlsEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsEncryption to be of type 'table'")
	assert(struct["SpekeKeyProvider"], "Expected key SpekeKeyProvider to exist in table")
	if struct["SpekeKeyProvider"] then asserts.AssertSpekeKeyProvider(struct["SpekeKeyProvider"]) end
	if struct["ConstantInitializationVector"] then asserts.Assert__string(struct["ConstantInitializationVector"]) end
	if struct["RepeatExtXKey"] then asserts.Assert__boolean(struct["RepeatExtXKey"]) end
	if struct["EncryptionMethod"] then asserts.AssertEncryptionMethod(struct["EncryptionMethod"]) end
	if struct["KeyRotationIntervalSeconds"] then asserts.Assert__integer(struct["KeyRotationIntervalSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsEncryption[k], "HlsEncryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsEncryption
-- An HTTP Live Streaming (HLS) encryption configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpekeKeyProvider [SpekeKeyProvider] 
-- * ConstantInitializationVector [__string] A constant initialization vector for encryption (optional).
--When not specified the initialization vector will be periodically rotated.
--
-- * RepeatExtXKey [__boolean] When enabled, the EXT-X-KEY tag will be repeated in output manifests.
-- * EncryptionMethod [EncryptionMethod] The encryption method to use.
-- * KeyRotationIntervalSeconds [__integer] Interval (in seconds) between each encryption key rotation.
-- Required key: SpekeKeyProvider
-- @return HlsEncryption structure as a key-value pair table
function M.HlsEncryption(args)
	assert(args, "You must provide an argument table when creating HlsEncryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpekeKeyProvider"] = args["SpekeKeyProvider"],
		["ConstantInitializationVector"] = args["ConstantInitializationVector"],
		["RepeatExtXKey"] = args["RepeatExtXKey"],
		["EncryptionMethod"] = args["EncryptionMethod"],
		["KeyRotationIntervalSeconds"] = args["KeyRotationIntervalSeconds"],
	}
	asserts.AssertHlsEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteChannelResponse = { nil }

function asserts.AssertDeleteChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChannelResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteChannelResponse[k], "DeleteChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
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
	}
	asserts.AssertDeleteChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MssEncryption = { ["SpekeKeyProvider"] = true, nil }

function asserts.AssertMssEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MssEncryption to be of type 'table'")
	assert(struct["SpekeKeyProvider"], "Expected key SpekeKeyProvider to exist in table")
	if struct["SpekeKeyProvider"] then asserts.AssertSpekeKeyProvider(struct["SpekeKeyProvider"]) end
	for k,_ in pairs(struct) do
		assert(keys.MssEncryption[k], "MssEncryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MssEncryption
-- A Microsoft Smooth Streaming (MSS) encryption configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SpekeKeyProvider [SpekeKeyProvider] 
-- Required key: SpekeKeyProvider
-- @return MssEncryption structure as a key-value pair table
function M.MssEncryption(args)
	assert(args, "You must provide an argument table when creating MssEncryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SpekeKeyProvider"] = args["SpekeKeyProvider"],
	}
	asserts.AssertMssEncryption(all_args)
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
	if struct["Channels"] then asserts.Assert__listOfChannel(struct["Channels"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChannelsResponse[k], "ListChannelsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChannelsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Channels [__listOfChannel] A list of Channel records.
-- * NextToken [__string] A token that can be used to resume pagination from the end of the collection.
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

keys.MssPackage = { ["Encryption"] = true, ["ManifestWindowSeconds"] = true, ["SegmentDurationSeconds"] = true, ["StreamSelection"] = true, nil }

function asserts.AssertMssPackage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MssPackage to be of type 'table'")
	if struct["Encryption"] then asserts.AssertMssEncryption(struct["Encryption"]) end
	if struct["ManifestWindowSeconds"] then asserts.Assert__integer(struct["ManifestWindowSeconds"]) end
	if struct["SegmentDurationSeconds"] then asserts.Assert__integer(struct["SegmentDurationSeconds"]) end
	if struct["StreamSelection"] then asserts.AssertStreamSelection(struct["StreamSelection"]) end
	for k,_ in pairs(struct) do
		assert(keys.MssPackage[k], "MssPackage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MssPackage
-- A Microsoft Smooth Streaming (MSS) packaging configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Encryption [MssEncryption] 
-- * ManifestWindowSeconds [__integer] The time window (in seconds) contained in each manifest.
-- * SegmentDurationSeconds [__integer] The duration (in seconds) of each segment.
-- * StreamSelection [StreamSelection] 
-- @return MssPackage structure as a key-value pair table
function M.MssPackage(args)
	assert(args, "You must provide an argument table when creating MssPackage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Encryption"] = args["Encryption"],
		["ManifestWindowSeconds"] = args["ManifestWindowSeconds"],
		["SegmentDurationSeconds"] = args["SegmentDurationSeconds"],
		["StreamSelection"] = args["StreamSelection"],
	}
	asserts.AssertMssPackage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RotateChannelCredentialsRequest = { ["Id"] = true, nil }

function asserts.AssertRotateChannelCredentialsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateChannelCredentialsRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotateChannelCredentialsRequest[k], "RotateChannelCredentialsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateChannelCredentialsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the channel to update.
-- Required key: Id
-- @return RotateChannelCredentialsRequest structure as a key-value pair table
function M.RotateChannelCredentialsRequest(args)
	assert(args, "You must provide an argument table when creating RotateChannelCredentialsRequest")
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
	asserts.AssertRotateChannelCredentialsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeChannelRequest = { ["Id"] = true, nil }

function asserts.AssertDescribeChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChannelRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChannelRequest[k], "DescribeChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChannelRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of a Channel.
-- Required key: Id
-- @return DescribeChannelRequest structure as a key-value pair table
function M.DescribeChannelRequest(args)
	assert(args, "You must provide an argument table when creating DescribeChannelRequest")
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
	asserts.AssertDescribeChannelRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateOriginEndpointRequest = { ["CmafPackage"] = true, ["StartoverWindowSeconds"] = true, ["ChannelId"] = true, ["Description"] = true, ["DashPackage"] = true, ["TimeDelaySeconds"] = true, ["MssPackage"] = true, ["HlsPackage"] = true, ["Whitelist"] = true, ["Id"] = true, ["ManifestName"] = true, nil }

function asserts.AssertCreateOriginEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateOriginEndpointRequest to be of type 'table'")
	assert(struct["ChannelId"], "Expected key ChannelId to exist in table")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["CmafPackage"] then asserts.AssertCmafPackageCreateOrUpdateParameters(struct["CmafPackage"]) end
	if struct["StartoverWindowSeconds"] then asserts.Assert__integer(struct["StartoverWindowSeconds"]) end
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["DashPackage"] then asserts.AssertDashPackage(struct["DashPackage"]) end
	if struct["TimeDelaySeconds"] then asserts.Assert__integer(struct["TimeDelaySeconds"]) end
	if struct["MssPackage"] then asserts.AssertMssPackage(struct["MssPackage"]) end
	if struct["HlsPackage"] then asserts.AssertHlsPackage(struct["HlsPackage"]) end
	if struct["Whitelist"] then asserts.Assert__listOf__string(struct["Whitelist"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["ManifestName"] then asserts.Assert__string(struct["ManifestName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateOriginEndpointRequest[k], "CreateOriginEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateOriginEndpointRequest
-- Configuration parameters used to create a new OriginEndpoint.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CmafPackage [CmafPackageCreateOrUpdateParameters] 
-- * StartoverWindowSeconds [__integer] Maximum duration (seconds) of content to retain for startover playback.
--If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * ChannelId [__string] The ID of the Channel that the OriginEndpoint will be associated with.
--This cannot be changed after the OriginEndpoint is created.
--
-- * Description [__string] A short text description of the OriginEndpoint.
-- * DashPackage [DashPackage] 
-- * TimeDelaySeconds [__integer] Amount of delay (seconds) to enforce on the playback of live content.
--If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * MssPackage [MssPackage] 
-- * HlsPackage [HlsPackage] 
-- * Whitelist [__listOf__string] A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
-- * Id [__string] The ID of the OriginEndpoint.  The ID must be unique within the region
--and it cannot be changed after the OriginEndpoint is created.
--
-- * ManifestName [__string] A short string that will be used as the filename of the OriginEndpoint URL (defaults to "index").
-- Required key: ChannelId
-- Required key: Id
-- @return CreateOriginEndpointRequest structure as a key-value pair table
function M.CreateOriginEndpointRequest(args)
	assert(args, "You must provide an argument table when creating CreateOriginEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CmafPackage"] = args["CmafPackage"],
		["StartoverWindowSeconds"] = args["StartoverWindowSeconds"],
		["ChannelId"] = args["ChannelId"],
		["Description"] = args["Description"],
		["DashPackage"] = args["DashPackage"],
		["TimeDelaySeconds"] = args["TimeDelaySeconds"],
		["MssPackage"] = args["MssPackage"],
		["HlsPackage"] = args["HlsPackage"],
		["Whitelist"] = args["Whitelist"],
		["Id"] = args["Id"],
		["ManifestName"] = args["ManifestName"],
	}
	asserts.AssertCreateOriginEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SpekeKeyProvider = { ["Url"] = true, ["ResourceId"] = true, ["RoleArn"] = true, ["SystemIds"] = true, nil }

function asserts.AssertSpekeKeyProvider(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SpekeKeyProvider to be of type 'table'")
	assert(struct["Url"], "Expected key Url to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	assert(struct["SystemIds"], "Expected key SystemIds to exist in table")
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ResourceId"] then asserts.Assert__string(struct["ResourceId"]) end
	if struct["RoleArn"] then asserts.Assert__string(struct["RoleArn"]) end
	if struct["SystemIds"] then asserts.Assert__listOf__string(struct["SystemIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.SpekeKeyProvider[k], "SpekeKeyProvider contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SpekeKeyProvider
-- A configuration for accessing an external Secure Packager and Encoder Key Exchange (SPEKE) service that will provide encryption keys.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [__string] The URL of the external key provider service.
-- * ResourceId [__string] The resource ID to include in key requests.
-- * RoleArn [__string] An Amazon Resource Name (ARN) of an IAM role that AWS Elemental
--MediaPackage will assume when accessing the key provider service.
--
-- * SystemIds [__listOf__string] The system IDs to include in key requests.
-- Required key: Url
-- Required key: ResourceId
-- Required key: RoleArn
-- Required key: SystemIds
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
		["RoleArn"] = args["RoleArn"],
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

keys.HlsManifestCreateOrUpdateParameters = { ["PlaylistType"] = true, ["PlaylistWindowSeconds"] = true, ["Id"] = true, ["IncludeIframeOnlyStream"] = true, ["AdMarkers"] = true, ["ManifestName"] = true, ["ProgramDateTimeIntervalSeconds"] = true, nil }

function asserts.AssertHlsManifestCreateOrUpdateParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsManifestCreateOrUpdateParameters to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["PlaylistType"] then asserts.AssertPlaylistType(struct["PlaylistType"]) end
	if struct["PlaylistWindowSeconds"] then asserts.Assert__integer(struct["PlaylistWindowSeconds"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["IncludeIframeOnlyStream"] then asserts.Assert__boolean(struct["IncludeIframeOnlyStream"]) end
	if struct["AdMarkers"] then asserts.AssertAdMarkers(struct["AdMarkers"]) end
	if struct["ManifestName"] then asserts.Assert__string(struct["ManifestName"]) end
	if struct["ProgramDateTimeIntervalSeconds"] then asserts.Assert__integer(struct["ProgramDateTimeIntervalSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsManifestCreateOrUpdateParameters[k], "HlsManifestCreateOrUpdateParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsManifestCreateOrUpdateParameters
-- A HTTP Live Streaming (HLS) manifest configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PlaylistType [PlaylistType] The HTTP Live Streaming (HLS) playlist type.
--When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
--entry will be included in the media playlist.
--
-- * PlaylistWindowSeconds [__integer] Time window (in seconds) contained in each parent manifest.
-- * Id [__string] The ID of the manifest. The ID must be unique within the OriginEndpoint and it cannot be changed after it is created.
-- * IncludeIframeOnlyStream [__boolean] When enabled, an I-Frame only stream will be included in the output.
-- * AdMarkers [AdMarkers] This setting controls how ad markers are included in the packaged OriginEndpoint.
--"NONE" will omit all SCTE-35 ad markers from the output.
--"PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
--markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
--"SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
--messages in the input source.
--
-- * ManifestName [__string] An optional short string appended to the end of the OriginEndpoint URL. If not specified, defaults to the manifestName for the OriginEndpoint.
-- * ProgramDateTimeIntervalSeconds [__integer] The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
--inserted into manifests. Additionally, when an interval is specified
--ID3Timed Metadata messages will be generated every 5 seconds using the
--ingest time of the content.
--If the interval is not specified, or set to 0, then
--no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
--ID3Timed Metadata messages will be generated. Note that irrespective
--of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
--it will be passed through to HLS output.
--
-- Required key: Id
-- @return HlsManifestCreateOrUpdateParameters structure as a key-value pair table
function M.HlsManifestCreateOrUpdateParameters(args)
	assert(args, "You must provide an argument table when creating HlsManifestCreateOrUpdateParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PlaylistType"] = args["PlaylistType"],
		["PlaylistWindowSeconds"] = args["PlaylistWindowSeconds"],
		["Id"] = args["Id"],
		["IncludeIframeOnlyStream"] = args["IncludeIframeOnlyStream"],
		["AdMarkers"] = args["AdMarkers"],
		["ManifestName"] = args["ManifestName"],
		["ProgramDateTimeIntervalSeconds"] = args["ProgramDateTimeIntervalSeconds"],
	}
	asserts.AssertHlsManifestCreateOrUpdateParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteOriginEndpointRequest = { ["Id"] = true, nil }

function asserts.AssertDeleteOriginEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteOriginEndpointRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteOriginEndpointRequest[k], "DeleteOriginEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteOriginEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the OriginEndpoint to delete.
-- Required key: Id
-- @return DeleteOriginEndpointRequest structure as a key-value pair table
function M.DeleteOriginEndpointRequest(args)
	assert(args, "You must provide an argument table when creating DeleteOriginEndpointRequest")
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
	asserts.AssertDeleteOriginEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OriginEndpoint = { ["CmafPackage"] = true, ["StartoverWindowSeconds"] = true, ["ChannelId"] = true, ["Description"] = true, ["Whitelist"] = true, ["DashPackage"] = true, ["TimeDelaySeconds"] = true, ["MssPackage"] = true, ["HlsPackage"] = true, ["Url"] = true, ["ManifestName"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertOriginEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OriginEndpoint to be of type 'table'")
	if struct["CmafPackage"] then asserts.AssertCmafPackage(struct["CmafPackage"]) end
	if struct["StartoverWindowSeconds"] then asserts.Assert__integer(struct["StartoverWindowSeconds"]) end
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Whitelist"] then asserts.Assert__listOf__string(struct["Whitelist"]) end
	if struct["DashPackage"] then asserts.AssertDashPackage(struct["DashPackage"]) end
	if struct["TimeDelaySeconds"] then asserts.Assert__integer(struct["TimeDelaySeconds"]) end
	if struct["MssPackage"] then asserts.AssertMssPackage(struct["MssPackage"]) end
	if struct["HlsPackage"] then asserts.AssertHlsPackage(struct["HlsPackage"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ManifestName"] then asserts.Assert__string(struct["ManifestName"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.OriginEndpoint[k], "OriginEndpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OriginEndpoint
-- An OriginEndpoint resource configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CmafPackage [CmafPackage] 
-- * StartoverWindowSeconds [__integer] Maximum duration (seconds) of content to retain for startover playback.
--If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * ChannelId [__string] The ID of the Channel the OriginEndpoint is associated with.
-- * Description [__string] A short text description of the OriginEndpoint.
-- * Whitelist [__listOf__string] A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
-- * DashPackage [DashPackage] 
-- * TimeDelaySeconds [__integer] Amount of delay (seconds) to enforce on the playback of live content.
--If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * MssPackage [MssPackage] 
-- * HlsPackage [HlsPackage] 
-- * Url [__string] The URL of the packaged OriginEndpoint for consumption.
-- * ManifestName [__string] A short string appended to the end of the OriginEndpoint URL.
-- * Id [__string] The ID of the OriginEndpoint.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
-- @return OriginEndpoint structure as a key-value pair table
function M.OriginEndpoint(args)
	assert(args, "You must provide an argument table when creating OriginEndpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CmafPackage"] = args["CmafPackage"],
		["StartoverWindowSeconds"] = args["StartoverWindowSeconds"],
		["ChannelId"] = args["ChannelId"],
		["Description"] = args["Description"],
		["Whitelist"] = args["Whitelist"],
		["DashPackage"] = args["DashPackage"],
		["TimeDelaySeconds"] = args["TimeDelaySeconds"],
		["MssPackage"] = args["MssPackage"],
		["HlsPackage"] = args["HlsPackage"],
		["Url"] = args["Url"],
		["ManifestName"] = args["ManifestName"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertOriginEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListOriginEndpointsRequest = { ["ChannelId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListOriginEndpointsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOriginEndpointsRequest to be of type 'table'")
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOriginEndpointsRequest[k], "ListOriginEndpointsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOriginEndpointsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelId [__string] When specified, the request will return only OriginEndpoints associated with the given Channel ID.
-- * NextToken [__string] A token used to resume pagination from the end of a previous request.
-- * MaxResults [MaxResults] The upper bound on the number of records to return.
-- @return ListOriginEndpointsRequest structure as a key-value pair table
function M.ListOriginEndpointsRequest(args)
	assert(args, "You must provide an argument table when creating ListOriginEndpointsRequest")
    local query_args = { 
        ["channelId"] = args["ChannelId"],
        ["nextToken"] = args["NextToken"],
        ["maxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelId"] = args["ChannelId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListOriginEndpointsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsPackage = { ["StreamSelection"] = true, ["PlaylistType"] = true, ["PlaylistWindowSeconds"] = true, ["Encryption"] = true, ["UseAudioRenditionGroup"] = true, ["ProgramDateTimeIntervalSeconds"] = true, ["SegmentDurationSeconds"] = true, ["AdMarkers"] = true, ["IncludeIframeOnlyStream"] = true, nil }

function asserts.AssertHlsPackage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsPackage to be of type 'table'")
	if struct["StreamSelection"] then asserts.AssertStreamSelection(struct["StreamSelection"]) end
	if struct["PlaylistType"] then asserts.AssertPlaylistType(struct["PlaylistType"]) end
	if struct["PlaylistWindowSeconds"] then asserts.Assert__integer(struct["PlaylistWindowSeconds"]) end
	if struct["Encryption"] then asserts.AssertHlsEncryption(struct["Encryption"]) end
	if struct["UseAudioRenditionGroup"] then asserts.Assert__boolean(struct["UseAudioRenditionGroup"]) end
	if struct["ProgramDateTimeIntervalSeconds"] then asserts.Assert__integer(struct["ProgramDateTimeIntervalSeconds"]) end
	if struct["SegmentDurationSeconds"] then asserts.Assert__integer(struct["SegmentDurationSeconds"]) end
	if struct["AdMarkers"] then asserts.AssertAdMarkers(struct["AdMarkers"]) end
	if struct["IncludeIframeOnlyStream"] then asserts.Assert__boolean(struct["IncludeIframeOnlyStream"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsPackage[k], "HlsPackage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsPackage
-- An HTTP Live Streaming (HLS) packaging configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamSelection [StreamSelection] 
-- * PlaylistType [PlaylistType] The HTTP Live Streaming (HLS) playlist type.
--When either "EVENT" or "VOD" is specified, a corresponding EXT-X-PLAYLIST-TYPE
--entry will be included in the media playlist.
--
-- * PlaylistWindowSeconds [__integer] Time window (in seconds) contained in each parent manifest.
-- * Encryption [HlsEncryption] 
-- * UseAudioRenditionGroup [__boolean] When enabled, audio streams will be placed in rendition groups in the output.
-- * ProgramDateTimeIntervalSeconds [__integer] The interval (in seconds) between each EXT-X-PROGRAM-DATE-TIME tag
--inserted into manifests. Additionally, when an interval is specified
--ID3Timed Metadata messages will be generated every 5 seconds using the
--ingest time of the content.
--If the interval is not specified, or set to 0, then
--no EXT-X-PROGRAM-DATE-TIME tags will be inserted into manifests and no
--ID3Timed Metadata messages will be generated. Note that irrespective
--of this parameter, if any ID3 Timed Metadata is found in HTTP Live Streaming (HLS) input,
--it will be passed through to HLS output.
--
-- * SegmentDurationSeconds [__integer] Duration (in seconds) of each fragment. Actual fragments will be
--rounded to the nearest multiple of the source fragment duration.
--
-- * AdMarkers [AdMarkers] This setting controls how ad markers are included in the packaged OriginEndpoint.
--"NONE" will omit all SCTE-35 ad markers from the output.
--"PASSTHROUGH" causes the manifest to contain a copy of the SCTE-35 ad
--markers (comments) taken directly from the input HTTP Live Streaming (HLS) manifest.
--"SCTE35_ENHANCED" generates ad markers and blackout tags based on SCTE-35
--messages in the input source.
--
-- * IncludeIframeOnlyStream [__boolean] When enabled, an I-Frame only stream will be included in the output.
-- @return HlsPackage structure as a key-value pair table
function M.HlsPackage(args)
	assert(args, "You must provide an argument table when creating HlsPackage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamSelection"] = args["StreamSelection"],
		["PlaylistType"] = args["PlaylistType"],
		["PlaylistWindowSeconds"] = args["PlaylistWindowSeconds"],
		["Encryption"] = args["Encryption"],
		["UseAudioRenditionGroup"] = args["UseAudioRenditionGroup"],
		["ProgramDateTimeIntervalSeconds"] = args["ProgramDateTimeIntervalSeconds"],
		["SegmentDurationSeconds"] = args["SegmentDurationSeconds"],
		["AdMarkers"] = args["AdMarkers"],
		["IncludeIframeOnlyStream"] = args["IncludeIframeOnlyStream"],
	}
	asserts.AssertHlsPackage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CmafPackageCreateOrUpdateParameters = { ["Encryption"] = true, ["SegmentPrefix"] = true, ["HlsManifests"] = true, ["SegmentDurationSeconds"] = true, ["StreamSelection"] = true, nil }

function asserts.AssertCmafPackageCreateOrUpdateParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CmafPackageCreateOrUpdateParameters to be of type 'table'")
	if struct["Encryption"] then asserts.AssertCmafEncryption(struct["Encryption"]) end
	if struct["SegmentPrefix"] then asserts.Assert__string(struct["SegmentPrefix"]) end
	if struct["HlsManifests"] then asserts.Assert__listOfHlsManifestCreateOrUpdateParameters(struct["HlsManifests"]) end
	if struct["SegmentDurationSeconds"] then asserts.Assert__integer(struct["SegmentDurationSeconds"]) end
	if struct["StreamSelection"] then asserts.AssertStreamSelection(struct["StreamSelection"]) end
	for k,_ in pairs(struct) do
		assert(keys.CmafPackageCreateOrUpdateParameters[k], "CmafPackageCreateOrUpdateParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CmafPackageCreateOrUpdateParameters
-- A Common Media Application Format (CMAF) packaging configuration.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Encryption [CmafEncryption] 
-- * SegmentPrefix [__string] An optional custom string that is prepended to the name of each segment. If not specified, it defaults to the ChannelId.
-- * HlsManifests [__listOfHlsManifestCreateOrUpdateParameters] A list of HLS manifest configurations
-- * SegmentDurationSeconds [__integer] Duration (in seconds) of each segment. Actual segments will be
--rounded to the nearest multiple of the source segment duration.
--
-- * StreamSelection [StreamSelection] 
-- @return CmafPackageCreateOrUpdateParameters structure as a key-value pair table
function M.CmafPackageCreateOrUpdateParameters(args)
	assert(args, "You must provide an argument table when creating CmafPackageCreateOrUpdateParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Encryption"] = args["Encryption"],
		["SegmentPrefix"] = args["SegmentPrefix"],
		["HlsManifests"] = args["HlsManifests"],
		["SegmentDurationSeconds"] = args["SegmentDurationSeconds"],
		["StreamSelection"] = args["StreamSelection"],
	}
	asserts.AssertCmafPackageCreateOrUpdateParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateOriginEndpointResponse = { ["CmafPackage"] = true, ["StartoverWindowSeconds"] = true, ["ChannelId"] = true, ["Description"] = true, ["Whitelist"] = true, ["DashPackage"] = true, ["TimeDelaySeconds"] = true, ["MssPackage"] = true, ["HlsPackage"] = true, ["Url"] = true, ["ManifestName"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertUpdateOriginEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateOriginEndpointResponse to be of type 'table'")
	if struct["CmafPackage"] then asserts.AssertCmafPackage(struct["CmafPackage"]) end
	if struct["StartoverWindowSeconds"] then asserts.Assert__integer(struct["StartoverWindowSeconds"]) end
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Whitelist"] then asserts.Assert__listOf__string(struct["Whitelist"]) end
	if struct["DashPackage"] then asserts.AssertDashPackage(struct["DashPackage"]) end
	if struct["TimeDelaySeconds"] then asserts.Assert__integer(struct["TimeDelaySeconds"]) end
	if struct["MssPackage"] then asserts.AssertMssPackage(struct["MssPackage"]) end
	if struct["HlsPackage"] then asserts.AssertHlsPackage(struct["HlsPackage"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ManifestName"] then asserts.Assert__string(struct["ManifestName"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateOriginEndpointResponse[k], "UpdateOriginEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateOriginEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CmafPackage [CmafPackage] 
-- * StartoverWindowSeconds [__integer] Maximum duration (seconds) of content to retain for startover playback.
--If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * ChannelId [__string] The ID of the Channel the OriginEndpoint is associated with.
-- * Description [__string] A short text description of the OriginEndpoint.
-- * Whitelist [__listOf__string] A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
-- * DashPackage [DashPackage] 
-- * TimeDelaySeconds [__integer] Amount of delay (seconds) to enforce on the playback of live content.
--If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * MssPackage [MssPackage] 
-- * HlsPackage [HlsPackage] 
-- * Url [__string] The URL of the packaged OriginEndpoint for consumption.
-- * ManifestName [__string] A short string appended to the end of the OriginEndpoint URL.
-- * Id [__string] The ID of the OriginEndpoint.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
-- @return UpdateOriginEndpointResponse structure as a key-value pair table
function M.UpdateOriginEndpointResponse(args)
	assert(args, "You must provide an argument table when creating UpdateOriginEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CmafPackage"] = args["CmafPackage"],
		["StartoverWindowSeconds"] = args["StartoverWindowSeconds"],
		["ChannelId"] = args["ChannelId"],
		["Description"] = args["Description"],
		["Whitelist"] = args["Whitelist"],
		["DashPackage"] = args["DashPackage"],
		["TimeDelaySeconds"] = args["TimeDelaySeconds"],
		["MssPackage"] = args["MssPackage"],
		["HlsPackage"] = args["HlsPackage"],
		["Url"] = args["Url"],
		["ManifestName"] = args["ManifestName"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertUpdateOriginEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RotateIngestEndpointCredentialsResponse = { ["Id"] = true, ["Description"] = true, ["Arn"] = true, ["HlsIngest"] = true, nil }

function asserts.AssertRotateIngestEndpointCredentialsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RotateIngestEndpointCredentialsResponse to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["HlsIngest"] then asserts.AssertHlsIngest(struct["HlsIngest"]) end
	for k,_ in pairs(struct) do
		assert(keys.RotateIngestEndpointCredentialsResponse[k], "RotateIngestEndpointCredentialsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RotateIngestEndpointCredentialsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the Channel.
-- * Description [__string] A short text description of the Channel.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the Channel.
-- * HlsIngest [HlsIngest] 
-- @return RotateIngestEndpointCredentialsResponse structure as a key-value pair table
function M.RotateIngestEndpointCredentialsResponse(args)
	assert(args, "You must provide an argument table when creating RotateIngestEndpointCredentialsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Id"] = args["Id"],
		["Description"] = args["Description"],
		["Arn"] = args["Arn"],
		["HlsIngest"] = args["HlsIngest"],
	}
	asserts.AssertRotateIngestEndpointCredentialsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeOriginEndpointResponse = { ["CmafPackage"] = true, ["StartoverWindowSeconds"] = true, ["ChannelId"] = true, ["Description"] = true, ["Whitelist"] = true, ["DashPackage"] = true, ["TimeDelaySeconds"] = true, ["MssPackage"] = true, ["HlsPackage"] = true, ["Url"] = true, ["ManifestName"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertDescribeOriginEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeOriginEndpointResponse to be of type 'table'")
	if struct["CmafPackage"] then asserts.AssertCmafPackage(struct["CmafPackage"]) end
	if struct["StartoverWindowSeconds"] then asserts.Assert__integer(struct["StartoverWindowSeconds"]) end
	if struct["ChannelId"] then asserts.Assert__string(struct["ChannelId"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Whitelist"] then asserts.Assert__listOf__string(struct["Whitelist"]) end
	if struct["DashPackage"] then asserts.AssertDashPackage(struct["DashPackage"]) end
	if struct["TimeDelaySeconds"] then asserts.Assert__integer(struct["TimeDelaySeconds"]) end
	if struct["MssPackage"] then asserts.AssertMssPackage(struct["MssPackage"]) end
	if struct["HlsPackage"] then asserts.AssertHlsPackage(struct["HlsPackage"]) end
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["ManifestName"] then asserts.Assert__string(struct["ManifestName"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeOriginEndpointResponse[k], "DescribeOriginEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeOriginEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CmafPackage [CmafPackage] 
-- * StartoverWindowSeconds [__integer] Maximum duration (seconds) of content to retain for startover playback.
--If not specified, startover playback will be disabled for the OriginEndpoint.
--
-- * ChannelId [__string] The ID of the Channel the OriginEndpoint is associated with.
-- * Description [__string] A short text description of the OriginEndpoint.
-- * Whitelist [__listOf__string] A list of source IP CIDR blocks that will be allowed to access the OriginEndpoint.
-- * DashPackage [DashPackage] 
-- * TimeDelaySeconds [__integer] Amount of delay (seconds) to enforce on the playback of live content.
--If not specified, there will be no time delay in effect for the OriginEndpoint.
--
-- * MssPackage [MssPackage] 
-- * HlsPackage [HlsPackage] 
-- * Url [__string] The URL of the packaged OriginEndpoint for consumption.
-- * ManifestName [__string] A short string appended to the end of the OriginEndpoint URL.
-- * Id [__string] The ID of the OriginEndpoint.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the OriginEndpoint.
-- @return DescribeOriginEndpointResponse structure as a key-value pair table
function M.DescribeOriginEndpointResponse(args)
	assert(args, "You must provide an argument table when creating DescribeOriginEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CmafPackage"] = args["CmafPackage"],
		["StartoverWindowSeconds"] = args["StartoverWindowSeconds"],
		["ChannelId"] = args["ChannelId"],
		["Description"] = args["Description"],
		["Whitelist"] = args["Whitelist"],
		["DashPackage"] = args["DashPackage"],
		["TimeDelaySeconds"] = args["TimeDelaySeconds"],
		["MssPackage"] = args["MssPackage"],
		["HlsPackage"] = args["HlsPackage"],
		["Url"] = args["Url"],
		["ManifestName"] = args["ManifestName"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertDescribeOriginEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateChannelRequest = { ["Description"] = true, ["Id"] = true, nil }

function asserts.AssertUpdateChannelRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateChannelRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateChannelRequest[k], "UpdateChannelRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateChannelRequest
-- Configuration parameters used to update the Channel.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [__string] A short text description of the Channel.
-- * Id [__string] The ID of the Channel to update.
-- Required key: Id
-- @return UpdateChannelRequest structure as a key-value pair table
function M.UpdateChannelRequest(args)
	assert(args, "You must provide an argument table when creating UpdateChannelRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{id}"] = args["Id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["Id"] = args["Id"],
	}
	asserts.AssertUpdateChannelRequest(all_args)
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
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] A token used to resume pagination from the end of a previous request.
-- * MaxResults [MaxResults] Upper bound on number of records to return.
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

keys.CreateChannelResponse = { ["Id"] = true, ["Description"] = true, ["Arn"] = true, ["HlsIngest"] = true, nil }

function asserts.AssertCreateChannelResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChannelResponse to be of type 'table'")
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	if struct["Description"] then asserts.Assert__string(struct["Description"]) end
	if struct["Arn"] then asserts.Assert__string(struct["Arn"]) end
	if struct["HlsIngest"] then asserts.AssertHlsIngest(struct["HlsIngest"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateChannelResponse[k], "CreateChannelResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChannelResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Id [__string] The ID of the Channel.
-- * Description [__string] A short text description of the Channel.
-- * Arn [__string] The Amazon Resource Name (ARN) assigned to the Channel.
-- * HlsIngest [HlsIngest] 
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
		["Id"] = args["Id"],
		["Description"] = args["Description"],
		["Arn"] = args["Arn"],
		["HlsIngest"] = args["HlsIngest"],
	}
	asserts.AssertCreateChannelResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.IngestEndpoint = { ["Url"] = true, ["Username"] = true, ["Password"] = true, ["Id"] = true, nil }

function asserts.AssertIngestEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IngestEndpoint to be of type 'table'")
	if struct["Url"] then asserts.Assert__string(struct["Url"]) end
	if struct["Username"] then asserts.Assert__string(struct["Username"]) end
	if struct["Password"] then asserts.Assert__string(struct["Password"]) end
	if struct["Id"] then asserts.Assert__string(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.IngestEndpoint[k], "IngestEndpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IngestEndpoint
-- An endpoint for ingesting source content for a Channel.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [__string] The ingest URL to which the source stream should be sent.
-- * Username [__string] The system generated username for ingest authentication.
-- * Password [__string] The system generated password for ingest authentication.
-- * Id [__string] The system generated unique identifier for the IngestEndpoint
-- @return IngestEndpoint structure as a key-value pair table
function M.IngestEndpoint(args)
	assert(args, "You must provide an argument table when creating IngestEndpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
		["Username"] = args["Username"],
		["Password"] = args["Password"],
		["Id"] = args["Id"],
	}
	asserts.AssertIngestEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.Assert__PeriodTriggersElement(str)
	assert(str)
	assert(type(str) == "string", "Expected __PeriodTriggersElement to be of type 'string'")
end

--  
function M.__PeriodTriggersElement(str)
	asserts.Assert__PeriodTriggersElement(str)
	return str
end

function asserts.AssertEncryptionMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionMethod to be of type 'string'")
end

--  
function M.EncryptionMethod(str)
	asserts.AssertEncryptionMethod(str)
	return str
end

function asserts.AssertProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected Profile to be of type 'string'")
end

--  
function M.Profile(str)
	asserts.AssertProfile(str)
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

function asserts.AssertAdMarkers(str)
	assert(str)
	assert(type(str) == "string", "Expected AdMarkers to be of type 'string'")
end

--  
function M.AdMarkers(str)
	asserts.AssertAdMarkers(str)
	return str
end

function asserts.AssertPlaylistType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlaylistType to be of type 'string'")
end

--  
function M.PlaylistType(str)
	asserts.AssertPlaylistType(str)
	return str
end

function asserts.AssertStreamOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamOrder to be of type 'string'")
end

--  
function M.StreamOrder(str)
	asserts.AssertStreamOrder(str)
	return str
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

function asserts.Assert__boolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected __boolean to be of type 'boolean'")
end

function M.__boolean(boolean)
	asserts.Assert__boolean(boolean)
	return boolean
end

function asserts.Assert__listOfChannel(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfChannel to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChannel(v)
	end
end

--  
-- List of Channel objects
function M.__listOfChannel(list)
	asserts.Assert__listOfChannel(list)
	return list
end

function asserts.Assert__listOfIngestEndpoint(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfIngestEndpoint to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertIngestEndpoint(v)
	end
end

--  
-- List of IngestEndpoint objects
function M.__listOfIngestEndpoint(list)
	asserts.Assert__listOfIngestEndpoint(list)
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

function asserts.Assert__listOfHlsManifestCreateOrUpdateParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfHlsManifestCreateOrUpdateParameters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHlsManifestCreateOrUpdateParameters(v)
	end
end

--  
-- List of HlsManifestCreateOrUpdateParameters objects
function M.__listOfHlsManifestCreateOrUpdateParameters(list)
	asserts.Assert__listOfHlsManifestCreateOrUpdateParameters(list)
	return list
end

function asserts.Assert__listOfHlsManifest(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfHlsManifest to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHlsManifest(v)
	end
end

--  
-- List of HlsManifest objects
function M.__listOfHlsManifest(list)
	asserts.Assert__listOfHlsManifest(list)
	return list
end

function asserts.Assert__listOfOriginEndpoint(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfOriginEndpoint to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOriginEndpoint(v)
	end
end

--  
-- List of OriginEndpoint objects
function M.__listOfOriginEndpoint(list)
	asserts.Assert__listOfOriginEndpoint(list)
	return list
end

function asserts.Assert__listOf__PeriodTriggersElement(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOf__PeriodTriggersElement to be of type ''table")
	for _,v in ipairs(list) do
		asserts.Assert__PeriodTriggersElement(v)
	end
end

--  
-- List of __PeriodTriggersElement objects
function M.__listOf__PeriodTriggersElement(list)
	asserts.Assert__listOf__PeriodTriggersElement(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "mediapackage.amazonaws.com"
		end
	end
	local ss = { "mediapackage" }
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
--- Call DeleteOriginEndpoint asynchronously, invoking a callback when done
-- @param DeleteOriginEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteOriginEndpointAsync(DeleteOriginEndpointRequest, cb)
	assert(DeleteOriginEndpointRequest, "You must provide a DeleteOriginEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteOriginEndpoint",
	}
	for header,value in pairs(DeleteOriginEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/origin_endpoints/{id}", DeleteOriginEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteOriginEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteOriginEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteOriginEndpointSync(DeleteOriginEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteOriginEndpointAsync(DeleteOriginEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RotateIngestEndpointCredentials asynchronously, invoking a callback when done
-- @param RotateIngestEndpointCredentialsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RotateIngestEndpointCredentialsAsync(RotateIngestEndpointCredentialsRequest, cb)
	assert(RotateIngestEndpointCredentialsRequest, "You must provide a RotateIngestEndpointCredentialsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".RotateIngestEndpointCredentials",
	}
	for header,value in pairs(RotateIngestEndpointCredentialsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/channels/{id}/ingest_endpoints/{ingest_endpoint_id}/credentials", RotateIngestEndpointCredentialsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RotateIngestEndpointCredentials synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RotateIngestEndpointCredentialsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RotateIngestEndpointCredentialsSync(RotateIngestEndpointCredentialsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RotateIngestEndpointCredentialsAsync(RotateIngestEndpointCredentialsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateOriginEndpoint asynchronously, invoking a callback when done
-- @param CreateOriginEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateOriginEndpointAsync(CreateOriginEndpointRequest, cb)
	assert(CreateOriginEndpointRequest, "You must provide a CreateOriginEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateOriginEndpoint",
	}
	for header,value in pairs(CreateOriginEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/origin_endpoints", CreateOriginEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateOriginEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateOriginEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateOriginEndpointSync(CreateOriginEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateOriginEndpointAsync(CreateOriginEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateOriginEndpoint asynchronously, invoking a callback when done
-- @param UpdateOriginEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateOriginEndpointAsync(UpdateOriginEndpointRequest, cb)
	assert(UpdateOriginEndpointRequest, "You must provide a UpdateOriginEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateOriginEndpoint",
	}
	for header,value in pairs(UpdateOriginEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/origin_endpoints/{id}", UpdateOriginEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateOriginEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateOriginEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateOriginEndpointSync(UpdateOriginEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateOriginEndpointAsync(UpdateOriginEndpointRequest, function(response, error_type, error_message)
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
		request_handler(settings.uri, "/channels/{id}", DeleteChannelRequest, headers, settings, cb)
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
		request_handler(settings.uri, "/channels", ListChannelsRequest, headers, settings, cb)
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
		request_handler(settings.uri, "/channels", CreateChannelRequest, headers, settings, cb)
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
		request_handler(settings.uri, "/channels/{id}", UpdateChannelRequest, headers, settings, cb)
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

--- Call ListOriginEndpoints asynchronously, invoking a callback when done
-- @param ListOriginEndpointsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOriginEndpointsAsync(ListOriginEndpointsRequest, cb)
	assert(ListOriginEndpointsRequest, "You must provide a ListOriginEndpointsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListOriginEndpoints",
	}
	for header,value in pairs(ListOriginEndpointsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/origin_endpoints", ListOriginEndpointsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOriginEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOriginEndpointsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListOriginEndpointsSync(ListOriginEndpointsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOriginEndpointsAsync(ListOriginEndpointsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeOriginEndpoint asynchronously, invoking a callback when done
-- @param DescribeOriginEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeOriginEndpointAsync(DescribeOriginEndpointRequest, cb)
	assert(DescribeOriginEndpointRequest, "You must provide a DescribeOriginEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeOriginEndpoint",
	}
	for header,value in pairs(DescribeOriginEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/origin_endpoints/{id}", DescribeOriginEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeOriginEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeOriginEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeOriginEndpointSync(DescribeOriginEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeOriginEndpointAsync(DescribeOriginEndpointRequest, function(response, error_type, error_message)
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
		request_handler(settings.uri, "/channels/{id}", DescribeChannelRequest, headers, settings, cb)
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


return M
