--- GENERATED CODE - DO NOT MODIFY
-- Amazon Kinesis Video Streams Archived Media (kinesis-video-archived-media-2017-09-30)

local M = {}

M.metadata = {
	api_version = "2017-09-30",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "kinesisvideo",
	service_abbreviation = "Kinesis Video Archived Media",
	service_full_name = "Amazon Kinesis Video Streams Archived Media",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "kinesis-video-archived-media-2017-09-30",
}

local keys = {}
local asserts = {}

keys.GetMediaForFragmentListInput = { ["Fragments"] = true, ["StreamName"] = true, nil }

function asserts.AssertGetMediaForFragmentListInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMediaForFragmentListInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	assert(struct["Fragments"], "Expected key Fragments to exist in table")
	if struct["Fragments"] then asserts.AssertFragmentNumberList(struct["Fragments"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMediaForFragmentListInput[k], "GetMediaForFragmentListInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMediaForFragmentListInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Fragments [FragmentNumberList] <p>A list of the numbers of fragments for which to retrieve media. You retrieve these values with <a>ListFragments</a>.</p>
-- * StreamName [StreamName] <p>The name of the stream from which to retrieve fragment media.</p>
-- Required key: StreamName
-- Required key: Fragments
-- @return GetMediaForFragmentListInput structure as a key-value pair table
function M.GetMediaForFragmentListInput(args)
	assert(args, "You must provide an argument table when creating GetMediaForFragmentListInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Fragments"] = args["Fragments"],
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertGetMediaForFragmentListInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFragmentsInput = { ["StreamName"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["FragmentSelector"] = true, nil }

function asserts.AssertListFragmentsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFragmentsInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageLimit(struct["MaxResults"]) end
	if struct["FragmentSelector"] then asserts.AssertFragmentSelector(struct["FragmentSelector"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFragmentsInput[k], "ListFragmentsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFragmentsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream from which to retrieve a fragment list.</p>
-- * NextToken [String] <p>A token to specify where to start paginating. This is the <a>ListFragmentsOutput$NextToken</a> from a previously truncated response.</p>
-- * MaxResults [PageLimit] <p>The total number of fragments to return. If the total number of fragments available is more than the value specified in <code>max-results</code>, then a <a>ListFragmentsOutput$NextToken</a> is provided in the output that you can use to resume pagination.</p>
-- * FragmentSelector [FragmentSelector] <p>Describes the time stamp range and time stamp origin for the range of fragments to return.</p>
-- Required key: StreamName
-- @return ListFragmentsInput structure as a key-value pair table
function M.ListFragmentsInput(args)
	assert(args, "You must provide an argument table when creating ListFragmentsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["FragmentSelector"] = args["FragmentSelector"],
	}
	asserts.AssertListFragmentsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HLSTimestampRange = { ["StartTimestamp"] = true, ["EndTimestamp"] = true, nil }

function asserts.AssertHLSTimestampRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HLSTimestampRange to be of type 'table'")
	if struct["StartTimestamp"] then asserts.AssertTimestamp(struct["StartTimestamp"]) end
	if struct["EndTimestamp"] then asserts.AssertTimestamp(struct["EndTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.HLSTimestampRange[k], "HLSTimestampRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HLSTimestampRange
-- <p>The start and end of the time stamp range for the requested media.</p> <p>This value should not be present if <code>PlaybackType</code> is <code>LIVE</code>.</p> <note> <p>The values in the <code>HLSTimestampRange</code> are inclusive. Fragments that begin before the start time but continue past it, or fragments that begin before the end time but continue past it, are included in the session.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StartTimestamp [Timestamp] <p>The start of the time stamp range for the requested media.</p> <p>If the <code>HLSTimestampRange</code> value is specified, the <code>StartTimestamp</code> value is required.</p> <note> <p>This value is inclusive. Fragments that start before the <code>StartTimestamp</code> and continue past it are included in the session. If <code>FragmentSelectorType</code> is <code>SERVER_TIMESTAMP</code>, the <code>StartTimestamp</code> must be later than the stream head.</p> </note>
-- * EndTimestamp [Timestamp] <p>The end of the time stamp range for the requested media. This value must be within 3 hours of the specified <code>StartTimestamp</code>, and it must be later than the <code>StartTimestamp</code> value.</p> <p>If <code>FragmentSelectorType</code> for the request is <code>SERVER_TIMESTAMP</code>, this value must be in the past.</p> <p>If the <code>HLSTimestampRange</code> value is specified, the <code>EndTimestamp</code> value is required.</p> <note> <p>This value is inclusive. The <code>EndTimestamp</code> is compared to the (starting) time stamp of the fragment. Fragments that start before the <code>EndTimestamp</code> value and continue past it are included in the session.</p> </note>
-- @return HLSTimestampRange structure as a key-value pair table
function M.HLSTimestampRange(args)
	assert(args, "You must provide an argument table when creating HLSTimestampRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StartTimestamp"] = args["StartTimestamp"],
		["EndTimestamp"] = args["EndTimestamp"],
	}
	asserts.AssertHLSTimestampRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FragmentSelector = { ["TimestampRange"] = true, ["FragmentSelectorType"] = true, nil }

function asserts.AssertFragmentSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FragmentSelector to be of type 'table'")
	assert(struct["FragmentSelectorType"], "Expected key FragmentSelectorType to exist in table")
	assert(struct["TimestampRange"], "Expected key TimestampRange to exist in table")
	if struct["TimestampRange"] then asserts.AssertTimestampRange(struct["TimestampRange"]) end
	if struct["FragmentSelectorType"] then asserts.AssertFragmentSelectorType(struct["FragmentSelectorType"]) end
	for k,_ in pairs(struct) do
		assert(keys.FragmentSelector[k], "FragmentSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FragmentSelector
-- <p>Describes the time stamp range and time stamp origin of a range of fragments.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimestampRange [TimestampRange] <p>The range of time stamps to return.</p>
-- * FragmentSelectorType [FragmentSelectorType] <p>The origin of the time stamps to use (Server or Producer).</p>
-- Required key: FragmentSelectorType
-- Required key: TimestampRange
-- @return FragmentSelector structure as a key-value pair table
function M.FragmentSelector(args)
	assert(args, "You must provide an argument table when creating FragmentSelector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimestampRange"] = args["TimestampRange"],
		["FragmentSelectorType"] = args["FragmentSelectorType"],
	}
	asserts.AssertFragmentSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidCodecPrivateDataException = { ["Message"] = true, nil }

function asserts.AssertInvalidCodecPrivateDataException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCodecPrivateDataException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCodecPrivateDataException[k], "InvalidCodecPrivateDataException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCodecPrivateDataException
-- <p>The Codec Private Data in the video stream is not valid for this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidCodecPrivateDataException structure as a key-value pair table
function M.InvalidCodecPrivateDataException(args)
	assert(args, "You must provide an argument table when creating InvalidCodecPrivateDataException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidCodecPrivateDataException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MissingCodecPrivateDataException = { ["Message"] = true, nil }

function asserts.AssertMissingCodecPrivateDataException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingCodecPrivateDataException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingCodecPrivateDataException[k], "MissingCodecPrivateDataException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingCodecPrivateDataException
-- <p>No Codec Private Data was found in the video stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return MissingCodecPrivateDataException structure as a key-value pair table
function M.MissingCodecPrivateDataException(args)
	assert(args, "You must provide an argument table when creating MissingCodecPrivateDataException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertMissingCodecPrivateDataException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HLSFragmentSelector = { ["TimestampRange"] = true, ["FragmentSelectorType"] = true, nil }

function asserts.AssertHLSFragmentSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HLSFragmentSelector to be of type 'table'")
	if struct["TimestampRange"] then asserts.AssertHLSTimestampRange(struct["TimestampRange"]) end
	if struct["FragmentSelectorType"] then asserts.AssertHLSFragmentSelectorType(struct["FragmentSelectorType"]) end
	for k,_ in pairs(struct) do
		assert(keys.HLSFragmentSelector[k], "HLSFragmentSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HLSFragmentSelector
-- <p>Contains the range of time stamps for the requested media, and the source of the time stamps.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TimestampRange [HLSTimestampRange] <p>The start and end of the time stamp range for the requested media.</p> <p>This value should not be present if <code>PlaybackType</code> is <code>LIVE</code>.</p>
-- * FragmentSelectorType [HLSFragmentSelectorType] <p>The source of the time stamps for the requested media.</p> <p>When <code>FragmentSelectorType</code> is set to <code>PRODUCER_TIMESTAMP</code> and <a>GetHLSStreamingSessionURLInput$PlaybackMode</a> is <code>ON_DEMAND</code>, the first fragment ingested with a producer time stamp within the specified <a>FragmentSelector$TimestampRange</a> is included in the media playlist. In addition, the fragments with producer time stamps within the <code>TimestampRange</code> ingested immediately following the first fragment (up to the <a>GetHLSStreamingSessionURLInput$MaxMediaPlaylistFragmentResults</a> value) are included. </p> <p>Fragments that have duplicate producer time stamps are deduplicated. This means that if producers are producing a stream of fragments with producer time stamps that are approximately equal to the true clock time, the HLS media playlists will contain all of the fragments within the requested time stamp range. If some fragments are ingested within the same time range and very different points in time, only the oldest ingested collection of fragments are returned.</p> <p>When <code>FragmentSelectorType</code> is set to <code>PRODUCER_TIMESTAMP</code> and <a>GetHLSStreamingSessionURLInput$PlaybackMode</a> is <code>LIVE</code>, the producer time stamps are used in the MP4 fragments and for deduplication. But the most recently ingested fragments based on server time stamps are included in the HLS media playlist. This means that even if fragments ingested in the past have producer time stamps with values now, they are not included in the HLS media playlist.</p> <p>The default is <code>SERVER_TIMESTAMP</code>.</p>
-- @return HLSFragmentSelector structure as a key-value pair table
function M.HLSFragmentSelector(args)
	assert(args, "You must provide an argument table when creating HLSFragmentSelector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TimestampRange"] = args["TimestampRange"],
		["FragmentSelectorType"] = args["FragmentSelectorType"],
	}
	asserts.AssertHLSFragmentSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Fragment = { ["FragmentSizeInBytes"] = true, ["FragmentLengthInMilliseconds"] = true, ["ServerTimestamp"] = true, ["FragmentNumber"] = true, ["ProducerTimestamp"] = true, nil }

function asserts.AssertFragment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Fragment to be of type 'table'")
	if struct["FragmentSizeInBytes"] then asserts.AssertLong(struct["FragmentSizeInBytes"]) end
	if struct["FragmentLengthInMilliseconds"] then asserts.AssertLong(struct["FragmentLengthInMilliseconds"]) end
	if struct["ServerTimestamp"] then asserts.AssertTimestamp(struct["ServerTimestamp"]) end
	if struct["FragmentNumber"] then asserts.AssertString(struct["FragmentNumber"]) end
	if struct["ProducerTimestamp"] then asserts.AssertTimestamp(struct["ProducerTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.Fragment[k], "Fragment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Fragment
-- <p>Represents a segment of video or other time-delimited data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FragmentSizeInBytes [Long] <p>The total fragment size, including information about the fragment and contained media data.</p>
-- * FragmentLengthInMilliseconds [Long] <p>The playback duration or other time value associated with the fragment.</p>
-- * ServerTimestamp [Timestamp] <p>The time stamp from the AWS server corresponding to the fragment.</p>
-- * FragmentNumber [String] <p>The index value of the fragment.</p>
-- * ProducerTimestamp [Timestamp] <p>The time stamp from the producer corresponding to the fragment.</p>
-- @return Fragment structure as a key-value pair table
function M.Fragment(args)
	assert(args, "You must provide an argument table when creating Fragment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FragmentSizeInBytes"] = args["FragmentSizeInBytes"],
		["FragmentLengthInMilliseconds"] = args["FragmentLengthInMilliseconds"],
		["ServerTimestamp"] = args["ServerTimestamp"],
		["FragmentNumber"] = args["FragmentNumber"],
		["ProducerTimestamp"] = args["ProducerTimestamp"],
	}
	asserts.AssertFragment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TimestampRange = { ["StartTimestamp"] = true, ["EndTimestamp"] = true, nil }

function asserts.AssertTimestampRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimestampRange to be of type 'table'")
	assert(struct["StartTimestamp"], "Expected key StartTimestamp to exist in table")
	assert(struct["EndTimestamp"], "Expected key EndTimestamp to exist in table")
	if struct["StartTimestamp"] then asserts.AssertTimestamp(struct["StartTimestamp"]) end
	if struct["EndTimestamp"] then asserts.AssertTimestamp(struct["EndTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimestampRange[k], "TimestampRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimestampRange
-- <p>The range of time stamps for which to return fragments.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StartTimestamp [Timestamp] <p>The starting time stamp in the range of time stamps for which to return fragments.</p>
-- * EndTimestamp [Timestamp] <p>The ending time stamp in the range of time stamps for which to return fragments.</p>
-- Required key: StartTimestamp
-- Required key: EndTimestamp
-- @return TimestampRange structure as a key-value pair table
function M.TimestampRange(args)
	assert(args, "You must provide an argument table when creating TimestampRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StartTimestamp"] = args["StartTimestamp"],
		["EndTimestamp"] = args["EndTimestamp"],
	}
	asserts.AssertTimestampRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListFragmentsOutput = { ["Fragments"] = true, ["NextToken"] = true, nil }

function asserts.AssertListFragmentsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFragmentsOutput to be of type 'table'")
	if struct["Fragments"] then asserts.AssertFragmentList(struct["Fragments"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFragmentsOutput[k], "ListFragmentsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFragmentsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Fragments [FragmentList] <p>A list of fragment numbers that correspond to the time stamp range provided.</p>
-- * NextToken [String] <p>If the returned list is truncated, the operation returns this token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
-- @return ListFragmentsOutput structure as a key-value pair table
function M.ListFragmentsOutput(args)
	assert(args, "You must provide an argument table when creating ListFragmentsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Fragments"] = args["Fragments"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListFragmentsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotAuthorizedException = { ["Message"] = true, nil }

function asserts.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotAuthorizedException[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- <p>Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return NotAuthorizedException structure as a key-value pair table
function M.NotAuthorizedException(args)
	assert(args, "You must provide an argument table when creating NotAuthorizedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertNotAuthorizedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMediaForFragmentListOutput = { ["ContentType"] = true, ["Payload"] = true, nil }

function asserts.AssertGetMediaForFragmentListOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMediaForFragmentListOutput to be of type 'table'")
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["Payload"] then asserts.AssertPayload(struct["Payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMediaForFragmentListOutput[k], "GetMediaForFragmentListOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMediaForFragmentListOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentType [ContentType] <p>The content type of the requested media.</p>
-- * Payload [Payload] <p>The payload that Kinesis Video Streams returns is a sequence of chunks from the specified stream. For information about the chunks, see <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html">PutMedia</a>. The chunks that Kinesis Video Streams returns in the <code>GetMediaForFragmentList</code> call also include the following additional Matroska (MKV) tags: </p> <ul> <li> <p>AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the chunk.</p> </li> <li> <p>AWS_KINESISVIDEO_SERVER_SIDE_TIMESTAMP - Server-side time stamp of the fragment.</p> </li> <li> <p>AWS_KINESISVIDEO_PRODUCER_SIDE_TIMESTAMP - Producer-side time stamp of the fragment.</p> </li> </ul> <p>The following tags will be included if an exception occurs:</p> <ul> <li> <p>AWS_KINESISVIDEO_FRAGMENT_NUMBER - The number of the fragment that threw the exception</p> </li> <li> <p>AWS_KINESISVIDEO_EXCEPTION_ERROR_CODE - The integer code of the exception</p> </li> <li> <p>AWS_KINESISVIDEO_EXCEPTION_MESSAGE - A text description of the exception</p> </li> </ul>
-- @return GetMediaForFragmentListOutput structure as a key-value pair table
function M.GetMediaForFragmentListOutput(args)
	assert(args, "You must provide an argument table when creating GetMediaForFragmentListOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Content-Type"] = args["ContentType"],
    }
	local all_args = { 
		["ContentType"] = args["ContentType"],
		["Payload"] = args["Payload"],
	}
	asserts.AssertGetMediaForFragmentListOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetHLSStreamingSessionURLInput = { ["DiscontinuityMode"] = true, ["Expires"] = true, ["HLSFragmentSelector"] = true, ["StreamName"] = true, ["MaxMediaPlaylistFragmentResults"] = true, ["StreamARN"] = true, ["PlaybackMode"] = true, nil }

function asserts.AssertGetHLSStreamingSessionURLInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHLSStreamingSessionURLInput to be of type 'table'")
	if struct["DiscontinuityMode"] then asserts.AssertDiscontinuityMode(struct["DiscontinuityMode"]) end
	if struct["Expires"] then asserts.AssertExpires(struct["Expires"]) end
	if struct["HLSFragmentSelector"] then asserts.AssertHLSFragmentSelector(struct["HLSFragmentSelector"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["MaxMediaPlaylistFragmentResults"] then asserts.AssertPageLimit(struct["MaxMediaPlaylistFragmentResults"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["PlaybackMode"] then asserts.AssertPlaybackMode(struct["PlaybackMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHLSStreamingSessionURLInput[k], "GetHLSStreamingSessionURLInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHLSStreamingSessionURLInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DiscontinuityMode [DiscontinuityMode] <p>Specifies when flags marking discontinuities between fragments will be added to the media playlists. The default is <code>ALWAYS</code> when <a>HLSFragmentSelector</a> is <code>SERVER_TIMESTAMP</code>, and <code>NEVER</code> when it is <code>PRODUCER_TIMESTAMP</code>.</p> <p>Media players typically build a timeline of media content to play, based on the time stamps of each fragment. This means that if there is any overlap between fragments (as is typical if <a>HLSFragmentSelector</a> is <code>SERVER_TIMESTAMP</code>), the media player timeline has small gaps between fragments in some places, and overwrites frames in other places. When there are discontinuity flags between fragments, the media player is expected to reset the timeline, resulting in the fragment being played immediately after the previous fragment. We recommend that you always have discontinuity flags between fragments if the fragment time stamps are not accurate or if fragments might be missing. You should not place discontinuity flags between fragments for the player timeline to accurately map to the producer time stamps.</p>
-- * Expires [Expires] <p>The time in seconds until the requested session expires. This value can be between 300 (5 minutes) and 43200 (12 hours).</p> <p>When a session expires, no new calls to <code>GetHLSMasterPlaylist</code>, <code>GetHLSMediaPlaylist</code>, <code>GetMP4InitFragment</code>, or <code>GetMP4MediaFragment</code> can be made for that session.</p> <p>The default is 300 (5 minutes).</p>
-- * HLSFragmentSelector [HLSFragmentSelector] <p>The time range of the requested fragment, and the source of the time stamps.</p> <p>This parameter is required if <code>PlaybackMode</code> is <code>ON_DEMAND</code>. This parameter is optional if <code>PlaybackMode</code> is <code>LIVE</code>. If <code>PlaybackMode</code> is <code>LIVE</code>, the <code>FragmentSelectorType</code> can be set, but the <code>TimestampRange</code> should not be set. If <code>PlaybackMode</code> is <code>ON_DEMAND</code>, both <code>FragmentSelectorType</code> and <code>TimestampRange</code> must be set.</p>
-- * StreamName [StreamName] <p>The name of the stream for which to retrieve the HLS master playlist URL.</p> <p>You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
-- * MaxMediaPlaylistFragmentResults [PageLimit] <p>The maximum number of fragments that are returned in the HLS media playlists.</p> <p>When the <code>PlaybackMode</code> is <code>LIVE</code>, the most recent fragments are returned up to this value. When the <code>PlaybackMode</code> is <code>ON_DEMAND</code>, the oldest fragments are returned, up to this maximum number.</p> <p>When there are a higher number of fragments available in a live HLS media playlist, video players often buffer content before starting playback. Increasing the buffer size increases the playback latency, but it decreases the likelihood that rebuffering will occur during playback. We recommend that a live HLS media playlist have a minimum of 3 fragments and a maximum of 10 fragments.</p> <p>The default is 5 fragments if <code>PlaybackMode</code> is <code>LIVE</code>, and 1,000 if <code>PlaybackMode</code> is <code>ON_DEMAND</code>. </p> <p>The maximum value of 1,000 fragments corresponds to more than 16 minutes of video on streams with 1-second fragments, and more than 2 1/2 hours of video on streams with 10-second fragments.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream for which to retrieve the HLS master playlist URL.</p> <p>You must specify either the <code>StreamName</code> or the <code>StreamARN</code>.</p>
-- * PlaybackMode [PlaybackMode] <p>Whether to retrieve live or archived, on-demand data.</p> <p>Features of the two types of session include the following:</p> <ul> <li> <p> <b> <code>LIVE</code> </b>: For sessions of this type, the HLS media playlist is continually updated with the latest fragments as they become available. We recommend that the media player retrieve a new playlist on a one-second interval. When this type of session is played in a media player, the user interface typically displays a "live" notification, with no scrubber control for choosing the position in the playback window to display.</p> <note> <p>In <code>LIVE</code> mode, the newest available fragments are included in an HLS media playlist, even if there is a gap between fragments (that is, if a fragment is missing). A gap like this might cause a media player to halt or cause a jump in playback. In this mode, fragments are not added to the HLS media playlist if they are older than the newest fragment in the playlist. If the missing fragment becomes available after a subsequent fragment is added to the playlist, the older fragment is not added, and the gap is not filled.</p> </note> </li> <li> <p> <b> <code>ON_DEMAND</code> </b>: For sessions of this type, the HLS media playlist contains all the fragments for the session, up to the number that is specified in <code>MaxMediaPlaylistFragmentResults</code>. The playlist must be retrieved only once for each session. When this type of session is played in a media player, the user interface typically displays a scrubber control for choosing the position in the playback window to display.</p> </li> </ul> <p>In both playback modes, if <code>FragmentSelectorType</code> is <code>PRODUCER_TIMESTAMP</code>, and if there are multiple fragments with the same start time stamp, the fragment that has the larger fragment number (that is, the newer fragment) is included in the HLS media playlist. The other fragments are not included. Fragments that have different time stamps but have overlapping durations are still included in the HLS media playlist. This can lead to unexpected behavior in the media player.</p> <p>The default is <code>LIVE</code>.</p>
-- @return GetHLSStreamingSessionURLInput structure as a key-value pair table
function M.GetHLSStreamingSessionURLInput(args)
	assert(args, "You must provide an argument table when creating GetHLSStreamingSessionURLInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DiscontinuityMode"] = args["DiscontinuityMode"],
		["Expires"] = args["Expires"],
		["HLSFragmentSelector"] = args["HLSFragmentSelector"],
		["StreamName"] = args["StreamName"],
		["MaxMediaPlaylistFragmentResults"] = args["MaxMediaPlaylistFragmentResults"],
		["StreamARN"] = args["StreamARN"],
		["PlaybackMode"] = args["PlaybackMode"],
	}
	asserts.AssertGetHLSStreamingSessionURLInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetHLSStreamingSessionURLOutput = { ["HLSStreamingSessionURL"] = true, nil }

function asserts.AssertGetHLSStreamingSessionURLOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetHLSStreamingSessionURLOutput to be of type 'table'")
	if struct["HLSStreamingSessionURL"] then asserts.AssertHLSStreamingSessionURL(struct["HLSStreamingSessionURL"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetHLSStreamingSessionURLOutput[k], "GetHLSStreamingSessionURLOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetHLSStreamingSessionURLOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * HLSStreamingSessionURL [HLSStreamingSessionURL] <p>The URL (containing the session token) that a media player can use to retrieve the HLS master playlist.</p>
-- @return GetHLSStreamingSessionURLOutput structure as a key-value pair table
function M.GetHLSStreamingSessionURLOutput(args)
	assert(args, "You must provide an argument table when creating GetHLSStreamingSessionURLOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["HLSStreamingSessionURL"] = args["HLSStreamingSessionURL"],
	}
	asserts.AssertGetHLSStreamingSessionURLOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedStreamMediaTypeException = { ["Message"] = true, nil }

function asserts.AssertUnsupportedStreamMediaTypeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedStreamMediaTypeException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedStreamMediaTypeException[k], "UnsupportedStreamMediaTypeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedStreamMediaTypeException
-- <p>An HLS streaming session was requested for a stream with a media type that is not <code>video/h264</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return UnsupportedStreamMediaTypeException structure as a key-value pair table
function M.UnsupportedStreamMediaTypeException(args)
	assert(args, "You must provide an argument table when creating UnsupportedStreamMediaTypeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertUnsupportedStreamMediaTypeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidArgumentException = { ["Message"] = true, nil }

function asserts.AssertInvalidArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgumentException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgumentException[k], "InvalidArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgumentException
-- <p>A specified parameter exceeds its restrictions, is not supported, or can't be used.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidArgumentException structure as a key-value pair table
function M.InvalidArgumentException(args)
	assert(args, "You must provide an argument table when creating InvalidArgumentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidArgumentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClientLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertClientLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClientLimitExceededException[k], "ClientLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientLimitExceededException
-- <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ClientLimitExceededException structure as a key-value pair table
function M.ClientLimitExceededException(args)
	assert(args, "You must provide an argument table when creating ClientLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertClientLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NoDataRetentionException = { ["Message"] = true, nil }

function asserts.AssertNoDataRetentionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoDataRetentionException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoDataRetentionException[k], "NoDataRetentionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoDataRetentionException
-- <p>A <code>PlaybackMode</code> of <code>ON_DEMAND</code> was requested for a stream that does not retain data (that is, has a <code>DataRetentionInHours</code> of 0). </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return NoDataRetentionException structure as a key-value pair table
function M.NoDataRetentionException(args)
	assert(args, "You must provide an argument table when creating NoDataRetentionException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertNoDataRetentionException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceNotFoundException = { ["Message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p> <code>GetMedia</code> throws this error when Kinesis Video Streams can't find the stream that you specified.</p> <p> <code>GetHLSStreamingSessionURL</code> throws this error if a session with a <code>PlaybackMode</code> of <code>ON_DEMAND</code> is requested for a stream that has no fragments within the requested time range, or if a session with a <code>PlaybackMode</code> of <code>LIVE</code> is requested for a stream that has no fragments within the last 30 seconds.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertDiscontinuityMode(str)
	assert(str)
	assert(type(str) == "string", "Expected DiscontinuityMode to be of type 'string'")
end

--  
function M.DiscontinuityMode(str)
	asserts.AssertDiscontinuityMode(str)
	return str
end

function asserts.AssertFragmentSelectorType(str)
	assert(str)
	assert(type(str) == "string", "Expected FragmentSelectorType to be of type 'string'")
end

--  
function M.FragmentSelectorType(str)
	asserts.AssertFragmentSelectorType(str)
	return str
end

function asserts.AssertFragmentNumberString(str)
	assert(str)
	assert(type(str) == "string", "Expected FragmentNumberString to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FragmentNumberString(str)
	asserts.AssertFragmentNumberString(str)
	return str
end

function asserts.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StreamName(str)
	asserts.AssertStreamName(str)
	return str
end

function asserts.AssertHLSFragmentSelectorType(str)
	assert(str)
	assert(type(str) == "string", "Expected HLSFragmentSelectorType to be of type 'string'")
end

--  
function M.HLSFragmentSelectorType(str)
	asserts.AssertHLSFragmentSelectorType(str)
	return str
end

function asserts.AssertPlaybackMode(str)
	assert(str)
	assert(type(str) == "string", "Expected PlaybackMode to be of type 'string'")
end

--  
function M.PlaybackMode(str)
	asserts.AssertPlaybackMode(str)
	return str
end

function asserts.AssertHLSStreamingSessionURL(str)
	assert(str)
	assert(type(str) == "string", "Expected HLSStreamingSessionURL to be of type 'string'")
end

--  
function M.HLSStreamingSessionURL(str)
	asserts.AssertHLSStreamingSessionURL(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
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

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertPageLimit(long)
	assert(long)
	assert(type(long) == "number", "Expected PageLimit to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.PageLimit(long)
	asserts.AssertPageLimit(long)
	return long
end

function asserts.AssertExpires(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Expires to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 43200, "Expected integer to be max 43200")
	assert(integer >= 300, "Expected integer to be min 300")
end

function M.Expires(integer)
	asserts.AssertExpires(integer)
	return integer
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertPayload(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Payload to be of type 'string'")
end

function M.Payload(blob)
	asserts.AssertPayload(blob)
	return blob
end

function asserts.AssertFragmentNumberList(list)
	assert(list)
	assert(type(list) == "table", "Expected FragmentNumberList to be of type ''table")
	assert(#list <= 1000, "Expected list to be contain 1000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertFragmentNumberString(v)
	end
end

--  
-- List of FragmentNumberString objects
function M.FragmentNumberList(list)
	asserts.AssertFragmentNumberList(list)
	return list
end

function asserts.AssertFragmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected FragmentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFragment(v)
	end
end

--  
-- List of Fragment objects
function M.FragmentList(list)
	asserts.AssertFragmentList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "kinesisvideo.amazonaws.com"
		end
	end
	local ss = { "kinesisvideo" }
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
--- Call GetMediaForFragmentList asynchronously, invoking a callback when done
-- @param GetMediaForFragmentListInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMediaForFragmentListAsync(GetMediaForFragmentListInput, cb)
	assert(GetMediaForFragmentListInput, "You must provide a GetMediaForFragmentListInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMediaForFragmentList",
	}
	for header,value in pairs(GetMediaForFragmentListInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/getMediaForFragmentList", GetMediaForFragmentListInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMediaForFragmentList synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMediaForFragmentListInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetMediaForFragmentListSync(GetMediaForFragmentListInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMediaForFragmentListAsync(GetMediaForFragmentListInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFragments asynchronously, invoking a callback when done
-- @param ListFragmentsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFragmentsAsync(ListFragmentsInput, cb)
	assert(ListFragmentsInput, "You must provide a ListFragmentsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListFragments",
	}
	for header,value in pairs(ListFragmentsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/listFragments", ListFragmentsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFragments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFragmentsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListFragmentsSync(ListFragmentsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFragmentsAsync(ListFragmentsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetHLSStreamingSessionURL asynchronously, invoking a callback when done
-- @param GetHLSStreamingSessionURLInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetHLSStreamingSessionURLAsync(GetHLSStreamingSessionURLInput, cb)
	assert(GetHLSStreamingSessionURLInput, "You must provide a GetHLSStreamingSessionURLInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetHLSStreamingSessionURL",
	}
	for header,value in pairs(GetHLSStreamingSessionURLInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/getHLSStreamingSessionURL", GetHLSStreamingSessionURLInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetHLSStreamingSessionURL synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetHLSStreamingSessionURLInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetHLSStreamingSessionURLSync(GetHLSStreamingSessionURLInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetHLSStreamingSessionURLAsync(GetHLSStreamingSessionURLInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
