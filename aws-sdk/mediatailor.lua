--- GENERATED CODE - DO NOT MODIFY
-- AWS MediaTailor (mediatailor-2018-04-23)

local M = {}

M.metadata = {
	api_version = "2018-04-23",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "api.mediatailor",
	service_abbreviation = "MediaTailor",
	service_full_name = "AWS MediaTailor",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "mediatailor-2018-04-23",
}

local keys = {}
local asserts = {}

keys.DeletePlaybackConfigurationResponse = { nil }

function asserts.AssertDeletePlaybackConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePlaybackConfigurationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePlaybackConfigurationResponse[k], "DeletePlaybackConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePlaybackConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePlaybackConfigurationResponse structure as a key-value pair table
function M.DeletePlaybackConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating DeletePlaybackConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeletePlaybackConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPlaybackConfigurationsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListPlaybackConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlaybackConfigurationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.Assert__integerMin1Max100(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPlaybackConfigurationsRequest[k], "ListPlaybackConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlaybackConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [__string] <p>Pagination token returned by the GET list request when results overrun the meximum allowed. Use the token to fetch the next page of results.</p>
-- * MaxResults [__integerMin1Max100] <p>Maximum number of records to return. </p>
-- @return ListPlaybackConfigurationsRequest structure as a key-value pair table
function M.ListPlaybackConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating ListPlaybackConfigurationsRequest")
    local query_args = { 
        ["NextToken"] = args["NextToken"],
        ["MaxResults"] = args["MaxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListPlaybackConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPlaybackConfigurationsResponse = { ["Items"] = true, ["NextToken"] = true, nil }

function asserts.AssertListPlaybackConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPlaybackConfigurationsResponse to be of type 'table'")
	if struct["Items"] then asserts.Assert__listOfPlaybackConfigurations(struct["Items"]) end
	if struct["NextToken"] then asserts.Assert__string(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPlaybackConfigurationsResponse[k], "ListPlaybackConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPlaybackConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Items [__listOfPlaybackConfigurations] <p>Array of playback configurations. This may be all of the available configurations or a subset, depending on the settings you provide and on the total number of configurations stored. </p>
-- * NextToken [__string] <p>Pagination token returned by the GET list request when results overrun the meximum allowed. Use the token to fetch the next page of results.</p>
-- @return ListPlaybackConfigurationsResponse structure as a key-value pair table
function M.ListPlaybackConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating ListPlaybackConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Items"] = args["Items"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListPlaybackConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPlaybackConfigurationResponse = { ["SlateAdUrl"] = true, ["Name"] = true, ["AdDecisionServerUrl"] = true, ["PlaybackEndpointPrefix"] = true, ["HlsConfiguration"] = true, ["SessionInitializationEndpointPrefix"] = true, ["CdnConfiguration"] = true, ["VideoContentSourceUrl"] = true, nil }

function asserts.AssertGetPlaybackConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPlaybackConfigurationResponse to be of type 'table'")
	if struct["SlateAdUrl"] then asserts.Assert__string(struct["SlateAdUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["AdDecisionServerUrl"] then asserts.Assert__string(struct["AdDecisionServerUrl"]) end
	if struct["PlaybackEndpointPrefix"] then asserts.Assert__string(struct["PlaybackEndpointPrefix"]) end
	if struct["HlsConfiguration"] then asserts.AssertHlsConfiguration(struct["HlsConfiguration"]) end
	if struct["SessionInitializationEndpointPrefix"] then asserts.Assert__string(struct["SessionInitializationEndpointPrefix"]) end
	if struct["CdnConfiguration"] then asserts.AssertCdnConfiguration(struct["CdnConfiguration"]) end
	if struct["VideoContentSourceUrl"] then asserts.Assert__string(struct["VideoContentSourceUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPlaybackConfigurationResponse[k], "GetPlaybackConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPlaybackConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SlateAdUrl [__string] <p>URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. </p>
-- * Name [__string] <p>The identifier for the configuration.</p>
-- * AdDecisionServerUrl [__string] <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25000 characters.</p>
-- * PlaybackEndpointPrefix [__string] <p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. </p>
-- * HlsConfiguration [HlsConfiguration] <p>The configuration for HLS content. </p>
-- * SessionInitializationEndpointPrefix [__string] <p>The URL that the player uses to initialize a session that uses client-side reporting. </p>
-- * CdnConfiguration [CdnConfiguration] <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>
-- * VideoContentSourceUrl [__string] <p>The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.</p>
-- @return GetPlaybackConfigurationResponse structure as a key-value pair table
function M.GetPlaybackConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating GetPlaybackConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SlateAdUrl"] = args["SlateAdUrl"],
		["Name"] = args["Name"],
		["AdDecisionServerUrl"] = args["AdDecisionServerUrl"],
		["PlaybackEndpointPrefix"] = args["PlaybackEndpointPrefix"],
		["HlsConfiguration"] = args["HlsConfiguration"],
		["SessionInitializationEndpointPrefix"] = args["SessionInitializationEndpointPrefix"],
		["CdnConfiguration"] = args["CdnConfiguration"],
		["VideoContentSourceUrl"] = args["VideoContentSourceUrl"],
	}
	asserts.AssertGetPlaybackConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutPlaybackConfigurationResponse = { ["SlateAdUrl"] = true, ["Name"] = true, ["AdDecisionServerUrl"] = true, ["PlaybackEndpointPrefix"] = true, ["HlsConfiguration"] = true, ["SessionInitializationEndpointPrefix"] = true, ["CdnConfiguration"] = true, ["VideoContentSourceUrl"] = true, nil }

function asserts.AssertPutPlaybackConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPlaybackConfigurationResponse to be of type 'table'")
	if struct["SlateAdUrl"] then asserts.Assert__string(struct["SlateAdUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["AdDecisionServerUrl"] then asserts.Assert__string(struct["AdDecisionServerUrl"]) end
	if struct["PlaybackEndpointPrefix"] then asserts.Assert__string(struct["PlaybackEndpointPrefix"]) end
	if struct["HlsConfiguration"] then asserts.AssertHlsConfiguration(struct["HlsConfiguration"]) end
	if struct["SessionInitializationEndpointPrefix"] then asserts.Assert__string(struct["SessionInitializationEndpointPrefix"]) end
	if struct["CdnConfiguration"] then asserts.AssertCdnConfiguration(struct["CdnConfiguration"]) end
	if struct["VideoContentSourceUrl"] then asserts.Assert__string(struct["VideoContentSourceUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutPlaybackConfigurationResponse[k], "PutPlaybackConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPlaybackConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SlateAdUrl [__string] <p>URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. </p>
-- * Name [__string] <p>The identifier for the configuration.</p>
-- * AdDecisionServerUrl [__string] <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25000 characters.</p>
-- * PlaybackEndpointPrefix [__string] <p>The URL that the player accesses to get a manifest from AWS Elemental MediaTailor. This session will use server-side reporting. </p>
-- * HlsConfiguration [HlsConfiguration] <p>The configuration for HLS content. </p>
-- * SessionInitializationEndpointPrefix [__string] <p>The URL that the player uses to initialize a session that uses client-side reporting. </p>
-- * CdnConfiguration [CdnConfiguration] <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>
-- * VideoContentSourceUrl [__string] <p>The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.</p>
-- @return PutPlaybackConfigurationResponse structure as a key-value pair table
function M.PutPlaybackConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating PutPlaybackConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SlateAdUrl"] = args["SlateAdUrl"],
		["Name"] = args["Name"],
		["AdDecisionServerUrl"] = args["AdDecisionServerUrl"],
		["PlaybackEndpointPrefix"] = args["PlaybackEndpointPrefix"],
		["HlsConfiguration"] = args["HlsConfiguration"],
		["SessionInitializationEndpointPrefix"] = args["SessionInitializationEndpointPrefix"],
		["CdnConfiguration"] = args["CdnConfiguration"],
		["VideoContentSourceUrl"] = args["VideoContentSourceUrl"],
	}
	asserts.AssertPutPlaybackConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HlsConfiguration = { ["ManifestEndpointPrefix"] = true, nil }

function asserts.AssertHlsConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsConfiguration to be of type 'table'")
	if struct["ManifestEndpointPrefix"] then asserts.Assert__string(struct["ManifestEndpointPrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.HlsConfiguration[k], "HlsConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsConfiguration
-- <p>The configuration for HLS content. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ManifestEndpointPrefix [__string] <p>The URL that is used to initiate a playback session for devices that support Apple HLS. The session uses server-side reporting.</p>
-- @return HlsConfiguration structure as a key-value pair table
function M.HlsConfiguration(args)
	assert(args, "You must provide an argument table when creating HlsConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ManifestEndpointPrefix"] = args["ManifestEndpointPrefix"],
	}
	asserts.AssertHlsConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CdnConfiguration = { ["AdSegmentUrlPrefix"] = true, ["ContentSegmentUrlPrefix"] = true, nil }

function asserts.AssertCdnConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CdnConfiguration to be of type 'table'")
	if struct["AdSegmentUrlPrefix"] then asserts.Assert__string(struct["AdSegmentUrlPrefix"]) end
	if struct["ContentSegmentUrlPrefix"] then asserts.Assert__string(struct["ContentSegmentUrlPrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.CdnConfiguration[k], "CdnConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CdnConfiguration
-- <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdSegmentUrlPrefix [__string] <p>A non-default content delivery network (CDN) to serve ad segments. By default, AWS Elemental MediaTailor uses Amazon CloudFront with default cache settings as its CDN for ad segments. To set up an alternate CDN, create a rule in your CDN for the following origin: ads.mediatailor.&lt;region>.amazonaws.com. Then specify the rule's name in this AdSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for ad segments.</p>
-- * ContentSegmentUrlPrefix [__string] <p>A content delivery network (CDN) to cache content segments, so that content requests don’t always have to go to the origin server. First, create a rule in your CDN for the content segment origin server. Then specify the rule's name in this ContentSegmentUrlPrefix. When AWS Elemental MediaTailor serves a manifest, it reports your CDN as the source for content segments.</p>
-- @return CdnConfiguration structure as a key-value pair table
function M.CdnConfiguration(args)
	assert(args, "You must provide an argument table when creating CdnConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdSegmentUrlPrefix"] = args["AdSegmentUrlPrefix"],
		["ContentSegmentUrlPrefix"] = args["ContentSegmentUrlPrefix"],
	}
	asserts.AssertCdnConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutPlaybackConfigurationRequest = { ["AdDecisionServerUrl"] = true, ["CdnConfiguration"] = true, ["VideoContentSourceUrl"] = true, ["Name"] = true, ["SlateAdUrl"] = true, nil }

function asserts.AssertPutPlaybackConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPlaybackConfigurationRequest to be of type 'table'")
	if struct["AdDecisionServerUrl"] then asserts.Assert__string(struct["AdDecisionServerUrl"]) end
	if struct["CdnConfiguration"] then asserts.AssertCdnConfiguration(struct["CdnConfiguration"]) end
	if struct["VideoContentSourceUrl"] then asserts.Assert__string(struct["VideoContentSourceUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["SlateAdUrl"] then asserts.Assert__string(struct["SlateAdUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutPlaybackConfigurationRequest[k], "PutPlaybackConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPlaybackConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdDecisionServerUrl [__string] <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing you can provide a static VAST URL. The maximum length is 25000 characters.</p>
-- * CdnConfiguration [CdnConfiguration] <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>
-- * VideoContentSourceUrl [__string] <p>The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.</p>
-- * Name [__string] <p>The identifier for the configuration.</p>
-- * SlateAdUrl [__string] <p>The URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots that are designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. </p>
-- @return PutPlaybackConfigurationRequest structure as a key-value pair table
function M.PutPlaybackConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating PutPlaybackConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdDecisionServerUrl"] = args["AdDecisionServerUrl"],
		["CdnConfiguration"] = args["CdnConfiguration"],
		["VideoContentSourceUrl"] = args["VideoContentSourceUrl"],
		["Name"] = args["Name"],
		["SlateAdUrl"] = args["SlateAdUrl"],
	}
	asserts.AssertPutPlaybackConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPlaybackConfigurationRequest = { ["Name"] = true, nil }

function asserts.AssertGetPlaybackConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPlaybackConfigurationRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPlaybackConfigurationRequest[k], "GetPlaybackConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPlaybackConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] <p>The identifier for the configuration.</p>
-- Required key: Name
-- @return GetPlaybackConfigurationRequest structure as a key-value pair table
function M.GetPlaybackConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetPlaybackConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetPlaybackConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PlaybackConfiguration = { ["AdDecisionServerUrl"] = true, ["CdnConfiguration"] = true, ["VideoContentSourceUrl"] = true, ["Name"] = true, ["SlateAdUrl"] = true, nil }

function asserts.AssertPlaybackConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlaybackConfiguration to be of type 'table'")
	if struct["AdDecisionServerUrl"] then asserts.Assert__string(struct["AdDecisionServerUrl"]) end
	if struct["CdnConfiguration"] then asserts.AssertCdnConfiguration(struct["CdnConfiguration"]) end
	if struct["VideoContentSourceUrl"] then asserts.Assert__string(struct["VideoContentSourceUrl"]) end
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	if struct["SlateAdUrl"] then asserts.Assert__string(struct["SlateAdUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.PlaybackConfiguration[k], "PlaybackConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlaybackConfiguration
-- <p>The AWSMediaTailor configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AdDecisionServerUrl [__string] <p>The URL for the ad decision server (ADS). This includes the specification of static parameters and placeholders for dynamic parameters. AWS Elemental MediaTailor substitutes player-specific and session-specific parameters as needed when calling the ADS. Alternately, for testing, you can provide a static VAST URL. The maximum length is 25000 characters.</p>
-- * CdnConfiguration [CdnConfiguration] <p>The configuration for using a content delivery network (CDN), like Amazon CloudFront, for content and ad segment management. </p>
-- * VideoContentSourceUrl [__string] <p>The URL prefix for the master playlist for the stream, minus the asset ID. The maximum length is 512 characters.</p>
-- * Name [__string] <p>The identifier for the configuration.</p>
-- * SlateAdUrl [__string] <p>URL for a high-quality video asset to transcode and use to fill in time that's not used by ads. AWS Elemental MediaTailor shows the slate to fill in gaps in media content. Configuring the slate is optional for non-VPAID configurations. For VPAID, the slate is required because AWS Elemental MediaTailor provides it in the slots designated for dynamic ad content. The slate must be a high-quality asset that contains both audio and video. </p>
-- @return PlaybackConfiguration structure as a key-value pair table
function M.PlaybackConfiguration(args)
	assert(args, "You must provide an argument table when creating PlaybackConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AdDecisionServerUrl"] = args["AdDecisionServerUrl"],
		["CdnConfiguration"] = args["CdnConfiguration"],
		["VideoContentSourceUrl"] = args["VideoContentSourceUrl"],
		["Name"] = args["Name"],
		["SlateAdUrl"] = args["SlateAdUrl"],
	}
	asserts.AssertPlaybackConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePlaybackConfigurationRequest = { ["Name"] = true, nil }

function asserts.AssertDeletePlaybackConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePlaybackConfigurationRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.Assert__string(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePlaybackConfigurationRequest[k], "DeletePlaybackConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePlaybackConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [__string] <p>The identifier for the configuration.</p>
-- Required key: Name
-- @return DeletePlaybackConfigurationRequest structure as a key-value pair table
function M.DeletePlaybackConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DeletePlaybackConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{Name}"] = args["Name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeletePlaybackConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Empty = { nil }

function asserts.AssertEmpty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Empty to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.Empty[k], "Empty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Empty
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return Empty structure as a key-value pair table
function M.Empty(args)
	assert(args, "You must provide an argument table when creating Empty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertEmpty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.Assert__double(double)
	assert(double)
	assert(type(double) == "number", "Expected __double to be of type 'number'")
end

function M.__double(double)
	asserts.Assert__double(double)
	return double
end

function asserts.Assert__long(long)
	assert(long)
	assert(type(long) == "number", "Expected __long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.__long(long)
	asserts.Assert__long(long)
	return long
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

function asserts.Assert__integer(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected __integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.__integer(integer)
	asserts.Assert__integer(integer)
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

function asserts.Assert__listOfPlaybackConfigurations(list)
	assert(list)
	assert(type(list) == "table", "Expected __listOfPlaybackConfigurations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlaybackConfiguration(v)
	end
end

--  
-- List of PlaybackConfiguration objects
function M.__listOfPlaybackConfigurations(list)
	asserts.Assert__listOfPlaybackConfigurations(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "api.mediatailor.amazonaws.com"
		end
	end
	local ss = { "api.mediatailor" }
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
--- Call GetPlaybackConfiguration asynchronously, invoking a callback when done
-- @param GetPlaybackConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPlaybackConfigurationAsync(GetPlaybackConfigurationRequest, cb)
	assert(GetPlaybackConfigurationRequest, "You must provide a GetPlaybackConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetPlaybackConfiguration",
	}
	for header,value in pairs(GetPlaybackConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/playbackConfiguration/{Name}", GetPlaybackConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPlaybackConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPlaybackConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPlaybackConfigurationSync(GetPlaybackConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPlaybackConfigurationAsync(GetPlaybackConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPlaybackConfigurations asynchronously, invoking a callback when done
-- @param ListPlaybackConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPlaybackConfigurationsAsync(ListPlaybackConfigurationsRequest, cb)
	assert(ListPlaybackConfigurationsRequest, "You must provide a ListPlaybackConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListPlaybackConfigurations",
	}
	for header,value in pairs(ListPlaybackConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/playbackConfigurations", ListPlaybackConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPlaybackConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPlaybackConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPlaybackConfigurationsSync(ListPlaybackConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPlaybackConfigurationsAsync(ListPlaybackConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutPlaybackConfiguration asynchronously, invoking a callback when done
-- @param PutPlaybackConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutPlaybackConfigurationAsync(PutPlaybackConfigurationRequest, cb)
	assert(PutPlaybackConfigurationRequest, "You must provide a PutPlaybackConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutPlaybackConfiguration",
	}
	for header,value in pairs(PutPlaybackConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "PUT")
	if request_handler then
		request_handler(settings.uri, "/playbackConfiguration", PutPlaybackConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutPlaybackConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutPlaybackConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutPlaybackConfigurationSync(PutPlaybackConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutPlaybackConfigurationAsync(PutPlaybackConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePlaybackConfiguration asynchronously, invoking a callback when done
-- @param DeletePlaybackConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePlaybackConfigurationAsync(DeletePlaybackConfigurationRequest, cb)
	assert(DeletePlaybackConfigurationRequest, "You must provide a DeletePlaybackConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeletePlaybackConfiguration",
	}
	for header,value in pairs(DeletePlaybackConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/playbackConfiguration/{Name}", DeletePlaybackConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePlaybackConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePlaybackConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePlaybackConfigurationSync(DeletePlaybackConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePlaybackConfigurationAsync(DeletePlaybackConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
