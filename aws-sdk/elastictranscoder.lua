--- GENERATED CODE - DO NOT MODIFY
-- Amazon Elastic Transcoder (elastictranscoder-2012-09-25)

local M = {}

M.metadata = {
	api_version = "2012-09-25",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "elastictranscoder",
	service_abbreviation = "",
	service_full_name = "Amazon Elastic Transcoder",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "elastictranscoder-2012-09-25",
}

local JobOutput_keys = { "Status" = true, "AppliedColorSpaceConversion" = true, "Rotate" = true, "Encryption" = true, "AlbumArt" = true, "FrameRate" = true, "StatusDetail" = true, "PresetId" = true, "Height" = true, "Width" = true, "Watermarks" = true, "SegmentDuration" = true, "FileSize" = true, "Key" = true, "Captions" = true, "Duration" = true, "DurationMillis" = true, "ThumbnailPattern" = true, "ThumbnailEncryption" = true, "Id" = true, "Composition" = true, nil }

function M.AssertJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobOutput to be of type 'table'")
	if struct["Status"] then M.AssertJobStatus(struct["Status"]) end
	if struct["AppliedColorSpaceConversion"] then M.AssertString(struct["AppliedColorSpaceConversion"]) end
	if struct["Rotate"] then M.AssertRotate(struct["Rotate"]) end
	if struct["Encryption"] then M.AssertEncryption(struct["Encryption"]) end
	if struct["AlbumArt"] then M.AssertJobAlbumArt(struct["AlbumArt"]) end
	if struct["FrameRate"] then M.AssertFloatString(struct["FrameRate"]) end
	if struct["StatusDetail"] then M.AssertDescription(struct["StatusDetail"]) end
	if struct["PresetId"] then M.AssertId(struct["PresetId"]) end
	if struct["Height"] then M.AssertNullableInteger(struct["Height"]) end
	if struct["Width"] then M.AssertNullableInteger(struct["Width"]) end
	if struct["Watermarks"] then M.AssertJobWatermarks(struct["Watermarks"]) end
	if struct["SegmentDuration"] then M.AssertFloatString(struct["SegmentDuration"]) end
	if struct["FileSize"] then M.AssertNullableLong(struct["FileSize"]) end
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	if struct["Captions"] then M.AssertCaptions(struct["Captions"]) end
	if struct["Duration"] then M.AssertNullableLong(struct["Duration"]) end
	if struct["DurationMillis"] then M.AssertNullableLong(struct["DurationMillis"]) end
	if struct["ThumbnailPattern"] then M.AssertThumbnailPattern(struct["ThumbnailPattern"]) end
	if struct["ThumbnailEncryption"] then M.AssertEncryption(struct["ThumbnailEncryption"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	if struct["Composition"] then M.AssertComposition(struct["Composition"]) end
	for k,_ in pairs(struct) do
		assert(JobOutput_keys[k], "JobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobOutput
-- &lt;important&gt; &lt;p&gt;Outputs recommended instead.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;If you specified one output for a job, information about that output. If you specified multiple outputs for a job, the &lt;code&gt;Output&lt;/code&gt; object lists information about the first output. This duplicates the information that is listed for the first output in the &lt;code&gt;Outputs&lt;/code&gt; object.&lt;/p&gt;
-- @param Status [JobStatus] &lt;p&gt; The status of one output in a job. If you specified only one output for the job, &lt;code&gt;Outputs:Status&lt;/code&gt; is always the same as &lt;code&gt;Job:Status&lt;/code&gt;. If you specified more than one output: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Job:Status&lt;/code&gt; and &lt;code&gt;Outputs:Status&lt;/code&gt; for all of the outputs is Submitted until Elastic Transcoder starts to process the first output.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When Elastic Transcoder starts to process the first output, &lt;code&gt;Outputs:Status&lt;/code&gt; for that output and &lt;code&gt;Job:Status&lt;/code&gt; both change to Progressing. For each output, the value of &lt;code&gt;Outputs:Status&lt;/code&gt; remains Submitted until Elastic Transcoder starts to process the output.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Job:Status remains Progressing until all of the outputs reach a terminal status, either Complete or Error.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;When all of the outputs reach a terminal status, &lt;code&gt;Job:Status&lt;/code&gt; changes to Complete only if &lt;code&gt;Outputs:Status&lt;/code&gt; for all of the outputs is &lt;code&gt;Complete&lt;/code&gt;. If &lt;code&gt;Outputs:Status&lt;/code&gt; for one or more outputs is &lt;code&gt;Error&lt;/code&gt;, the terminal status for &lt;code&gt;Job:Status&lt;/code&gt; is also &lt;code&gt;Error&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The value of &lt;code&gt;Status&lt;/code&gt; is one of the following: &lt;code&gt;Submitted&lt;/code&gt;, &lt;code&gt;Progressing&lt;/code&gt;, &lt;code&gt;Complete&lt;/code&gt;, &lt;code&gt;Canceled&lt;/code&gt;, or &lt;code&gt;Error&lt;/code&gt;. &lt;/p&gt;
-- @param AppliedColorSpaceConversion [String] &lt;p&gt;If Elastic Transcoder used a preset with a &lt;code&gt;ColorSpaceConversionMode&lt;/code&gt; to transcode the output file, the &lt;code&gt;AppliedColorSpaceConversion&lt;/code&gt; parameter shows the conversion used. If no &lt;code&gt;ColorSpaceConversionMode&lt;/code&gt; was defined in the preset, this parameter is not be included in the job response.&lt;/p&gt;
-- @param Rotate [Rotate] &lt;p&gt;The number of degrees clockwise by which you want Elastic Transcoder to rotate the output relative to the input. Enter one of the following values:&lt;/p&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;, &lt;code&gt;0&lt;/code&gt;, &lt;code&gt;90&lt;/code&gt;, &lt;code&gt;180&lt;/code&gt;, &lt;code&gt;270&lt;/code&gt; &lt;/p&gt; &lt;p&gt; The value &lt;code&gt;auto&lt;/code&gt; generally works only if the file that you're transcoding contains rotation metadata.&lt;/p&gt;
-- @param Encryption [Encryption] &lt;p&gt;The encryption settings, if any, that you want Elastic Transcoder to apply to your output files. If you choose to use encryption, you must specify a mode to use. If you choose not to use encryption, Elastic Transcoder writes an unencrypted file to your Amazon S3 bucket.&lt;/p&gt;
-- @param AlbumArt [JobAlbumArt] &lt;p&gt;The album art to be associated with the output file, if any.&lt;/p&gt;
-- @param FrameRate [FloatString] &lt;p&gt;Frame rate of the output file, in frames per second.&lt;/p&gt;
-- @param StatusDetail [Description] &lt;p&gt;Information that further explains &lt;code&gt;Status&lt;/code&gt;.&lt;/p&gt;
-- @param PresetId [Id] &lt;p&gt;The value of the &lt;code&gt;Id&lt;/code&gt; object for the preset that you want to use for this job. The preset determines the audio, video, and thumbnail settings that Elastic Transcoder uses for transcoding. To use a preset that you created, specify the preset ID that Elastic Transcoder returned in the response when you created the preset. You can also use the Elastic Transcoder system presets, which you can get with &lt;code&gt;ListPresets&lt;/code&gt;.&lt;/p&gt;
-- @param Height [NullableInteger] &lt;p&gt;Height of the output file, in pixels.&lt;/p&gt;
-- @param Width [NullableInteger] &lt;p&gt;Specifies the width of the output file in pixels.&lt;/p&gt;
-- @param Watermarks [JobWatermarks] &lt;p&gt;Information about the watermarks that you want Elastic Transcoder to add to the video during transcoding. You can specify up to four watermarks for each output. Settings for each watermark must be defined in the preset that you specify in &lt;code&gt;Preset&lt;/code&gt; for the current output.&lt;/p&gt; &lt;p&gt;Watermarks are added to the output video in the sequence in which you list them in the job output—the first watermark in the list is added to the output video first, the second watermark in the list is added next, and so on. As a result, if the settings in a preset cause Elastic Transcoder to place all watermarks in the same location, the second watermark that you add covers the first one, the third one covers the second, and the fourth one covers the third.&lt;/p&gt;
-- @param SegmentDuration [FloatString] &lt;important&gt; &lt;p&gt;(Outputs in Fragmented MP4 or MPEG-TS format only.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;If you specify a preset in &lt;code&gt;PresetId&lt;/code&gt; for which the value of &lt;code&gt;Container&lt;/code&gt; is &lt;code&gt;fmp4&lt;/code&gt; (Fragmented MP4) or &lt;code&gt;ts&lt;/code&gt; (MPEG-TS), &lt;code&gt;SegmentDuration&lt;/code&gt; is the target maximum duration of each segment in seconds. For &lt;code&gt;HLSv3&lt;/code&gt; format playlists, each media segment is stored in a separate &lt;code&gt;.ts&lt;/code&gt; file. For &lt;code&gt;HLSv4&lt;/code&gt;, &lt;code&gt;MPEG-DASH&lt;/code&gt;, and &lt;code&gt;Smooth&lt;/code&gt; playlists, all media segments for an output are stored in a single file. Each segment is approximately the length of the &lt;code&gt;SegmentDuration&lt;/code&gt;, though individual segments might be shorter or longer.&lt;/p&gt; &lt;p&gt;The range of valid values is 1 to 60 seconds. If the duration of the video is not evenly divisible by &lt;code&gt;SegmentDuration&lt;/code&gt;, the duration of the last segment is the remainder of total length/SegmentDuration.&lt;/p&gt; &lt;p&gt;Elastic Transcoder creates an output-specific playlist for each output &lt;code&gt;HLS&lt;/code&gt; output that you specify in OutputKeys. To add an output to the master playlist for this job, include it in the &lt;code&gt;OutputKeys&lt;/code&gt; of the associated playlist.&lt;/p&gt;
-- @param FileSize [NullableLong] &lt;p&gt;File size of the output file, in bytes.&lt;/p&gt;
-- @param Key [Key] &lt;p&gt; The name to assign to the transcoded file. Elastic Transcoder saves the file in the Amazon S3 bucket specified by the &lt;code&gt;OutputBucket&lt;/code&gt; object in the pipeline that is specified by the pipeline ID.&lt;/p&gt;
-- @param Captions [Captions] &lt;p&gt;You can configure Elastic Transcoder to transcode captions, or subtitles, from one format to another. All captions must be in UTF-8. Elastic Transcoder supports two types of captions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Embedded:&lt;/b&gt; Embedded captions are included in the same file as the audio and video. Elastic Transcoder supports only one embedded caption per language, to a maximum of 300 embedded captions per file.&lt;/p&gt; &lt;p&gt;Valid input values include: &lt;code&gt;CEA-608 (EIA-608&lt;/code&gt;, first non-empty channel only), &lt;code&gt;CEA-708 (EIA-708&lt;/code&gt;, first non-empty channel only), and &lt;code&gt;mov-text&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Valid outputs include: &lt;code&gt;mov-text&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Elastic Transcoder supports a maximum of one embedded format per output.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Sidecar:&lt;/b&gt; Sidecar captions are kept in a separate metadata file from the audio and video data. Sidecar captions require a player that is capable of understanding the relationship between the video file and the sidecar file. Elastic Transcoder supports only one sidecar caption per language, to a maximum of 20 sidecar captions per file.&lt;/p&gt; &lt;p&gt;Valid input values include: &lt;code&gt;dfxp&lt;/code&gt; (first div element only), &lt;code&gt;ebu-tt&lt;/code&gt;, &lt;code&gt;scc&lt;/code&gt;, &lt;code&gt;smpt&lt;/code&gt;, &lt;code&gt;srt&lt;/code&gt;, &lt;code&gt;ttml&lt;/code&gt; (first div element only), and &lt;code&gt;webvtt&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Valid outputs include: &lt;code&gt;dfxp&lt;/code&gt; (first div element only), &lt;code&gt;scc&lt;/code&gt;, &lt;code&gt;srt&lt;/code&gt;, and &lt;code&gt;webvtt&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you want ttml or smpte-tt compatible captions, specify dfxp as your output format.&lt;/p&gt; &lt;p&gt;Elastic Transcoder does not support OCR (Optical Character Recognition), does not accept pictures as a valid input for captions, and is not available for audio-only transcoding. Elastic Transcoder does not preserve text formatting (for example, italics) during the transcoding process.&lt;/p&gt; &lt;p&gt;To remove captions or leave the captions empty, set &lt;code&gt;Captions&lt;/code&gt; to null. To pass through existing captions unchanged, set the &lt;code&gt;MergePolicy&lt;/code&gt; to &lt;code&gt;MergeRetain&lt;/code&gt;, and pass in a null &lt;code&gt;CaptionSources&lt;/code&gt; array.&lt;/p&gt; &lt;p&gt;For more information on embedded files, see the Subtitles Wikipedia page.&lt;/p&gt; &lt;p&gt;For more information on sidecar files, see the Extensible Metadata Platform and Sidecar file Wikipedia pages.&lt;/p&gt;
-- @param Duration [NullableLong] &lt;p&gt;Duration of the output file, in seconds.&lt;/p&gt;
-- @param DurationMillis [NullableLong] &lt;p&gt;Duration of the output file, in milliseconds.&lt;/p&gt;
-- @param ThumbnailPattern [ThumbnailPattern] &lt;p&gt;Whether you want Elastic Transcoder to create thumbnails for your videos and, if so, how you want Elastic Transcoder to name the files.&lt;/p&gt; &lt;p&gt;If you don't want Elastic Transcoder to create thumbnails, specify &quot;&quot;.&lt;/p&gt; &lt;p&gt;If you do want Elastic Transcoder to create thumbnails, specify the information that you want to include in the file name for each thumbnail. You can specify the following values in any sequence:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt; &lt;code&gt;{count}&lt;/code&gt; (Required)&lt;/b&gt;: If you want to create thumbnails, you must include &lt;code&gt;{count}&lt;/code&gt; in the &lt;code&gt;ThumbnailPattern&lt;/code&gt; object. Wherever you specify &lt;code&gt;{count}&lt;/code&gt;, Elastic Transcoder adds a five-digit sequence number (beginning with &lt;b&gt;00001&lt;/b&gt;) to thumbnail file names. The number indicates where a given thumbnail appears in the sequence of thumbnails for a transcoded file. &lt;/p&gt; &lt;important&gt; &lt;p&gt;If you specify a literal value and/or &lt;code&gt;{resolution}&lt;/code&gt; but you omit &lt;code&gt;{count}&lt;/code&gt;, Elastic Transcoder returns a validation error and does not create the job.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Literal values (Optional)&lt;/b&gt;: You can specify literal values anywhere in the &lt;code&gt;ThumbnailPattern&lt;/code&gt; object. For example, you can include them as a file name prefix or as a delimiter between &lt;code&gt;{resolution}&lt;/code&gt; and &lt;code&gt;{count}&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt; &lt;code&gt;{resolution}&lt;/code&gt; (Optional)&lt;/b&gt;: If you want Elastic Transcoder to include the resolution in the file name, include &lt;code&gt;{resolution}&lt;/code&gt; in the &lt;code&gt;ThumbnailPattern&lt;/code&gt; object. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;When creating thumbnails, Elastic Transcoder automatically saves the files in the format (.jpg or .png) that appears in the preset that you specified in the &lt;code&gt;PresetID&lt;/code&gt; value of &lt;code&gt;CreateJobOutput&lt;/code&gt;. Elastic Transcoder also appends the applicable file name extension.&lt;/p&gt;
-- @param ThumbnailEncryption [Encryption] &lt;p&gt;The encryption settings, if any, that you want Elastic Transcoder to apply to your thumbnail.&lt;/p&gt;
-- @param Id [String] &lt;p&gt;A sequential counter, starting with 1, that identifies an output among the outputs from the current job. In the Output syntax, this value is always 1.&lt;/p&gt;
-- @param Composition [Composition] &lt;p&gt;You can create an output file that contains an excerpt from the input file. This excerpt, called a clip, can come from the beginning, middle, or end of the file. The Composition object contains settings for the clips that make up an output file. For the current release, you can only specify settings for a single clip per output file. The Composition object cannot be null.&lt;/p&gt;
function M.JobOutput(Status, AppliedColorSpaceConversion, Rotate, Encryption, AlbumArt, FrameRate, StatusDetail, PresetId, Height, Width, Watermarks, SegmentDuration, FileSize, Key, Captions, Duration, DurationMillis, ThumbnailPattern, ThumbnailEncryption, Id, Composition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobOutput")
	local t = { 
		["Status"] = Status,
		["AppliedColorSpaceConversion"] = AppliedColorSpaceConversion,
		["Rotate"] = Rotate,
		["Encryption"] = Encryption,
		["AlbumArt"] = AlbumArt,
		["FrameRate"] = FrameRate,
		["StatusDetail"] = StatusDetail,
		["PresetId"] = PresetId,
		["Height"] = Height,
		["Width"] = Width,
		["Watermarks"] = Watermarks,
		["SegmentDuration"] = SegmentDuration,
		["FileSize"] = FileSize,
		["Key"] = Key,
		["Captions"] = Captions,
		["Duration"] = Duration,
		["DurationMillis"] = DurationMillis,
		["ThumbnailPattern"] = ThumbnailPattern,
		["ThumbnailEncryption"] = ThumbnailEncryption,
		["Id"] = Id,
		["Composition"] = Composition,
	}
	M.AssertJobOutput(t)
	return t
end

local ListJobsByStatusRequest_keys = { "Status" = true, "PageToken" = true, "Ascending" = true, nil }

function M.AssertListJobsByStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsByStatusRequest to be of type 'table'")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertJobStatus(struct["Status"]) end
	if struct["PageToken"] then M.AssertId(struct["PageToken"]) end
	if struct["Ascending"] then M.AssertAscending(struct["Ascending"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsByStatusRequest_keys[k], "ListJobsByStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsByStatusRequest
-- &lt;p&gt;The &lt;code&gt;ListJobsByStatusRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Status [JobStatus] &lt;p&gt;To get information about all of the jobs associated with the current AWS account that have a given status, specify the following status: &lt;code&gt;Submitted&lt;/code&gt;, &lt;code&gt;Progressing&lt;/code&gt;, &lt;code&gt;Complete&lt;/code&gt;, &lt;code&gt;Canceled&lt;/code&gt;, or &lt;code&gt;Error&lt;/code&gt;.&lt;/p&gt;
-- @param PageToken [Id] &lt;p&gt; When Elastic Transcoder returns more than one page of results, use &lt;code&gt;pageToken&lt;/code&gt; in subsequent &lt;code&gt;GET&lt;/code&gt; requests to get each successive page of results. &lt;/p&gt;
-- @param Ascending [Ascending] &lt;p&gt; To list jobs in chronological order by the date and time that they were submitted, enter &lt;code&gt;true&lt;/code&gt;. To list jobs in reverse chronological order, enter &lt;code&gt;false&lt;/code&gt;. &lt;/p&gt;
-- Required parameter: Status
function M.ListJobsByStatusRequest(Status, PageToken, Ascending, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsByStatusRequest")
	local t = { 
		["Status"] = Status,
		["PageToken"] = PageToken,
		["Ascending"] = Ascending,
	}
	M.AssertListJobsByStatusRequest(t)
	return t
end

local TestRoleResponse_keys = { "Messages" = true, "Success" = true, nil }

function M.AssertTestRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRoleResponse to be of type 'table'")
	if struct["Messages"] then M.AssertExceptionMessages(struct["Messages"]) end
	if struct["Success"] then M.AssertSuccess(struct["Success"]) end
	for k,_ in pairs(struct) do
		assert(TestRoleResponse_keys[k], "TestRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRoleResponse
-- &lt;p&gt;The &lt;code&gt;TestRoleResponse&lt;/code&gt; structure.&lt;/p&gt;
-- @param Messages [ExceptionMessages] &lt;p&gt;If the &lt;code&gt;Success&lt;/code&gt; element contains &lt;code&gt;false&lt;/code&gt;, this value is an array of one or more error messages that were generated during the test process.&lt;/p&gt;
-- @param Success [Success] &lt;p&gt;If the operation is successful, this value is &lt;code&gt;true&lt;/code&gt;; otherwise, the value is &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
function M.TestRoleResponse(Messages, Success, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestRoleResponse")
	local t = { 
		["Messages"] = Messages,
		["Success"] = Success,
	}
	M.AssertTestRoleResponse(t)
	return t
end

local ListJobsByStatusResponse_keys = { "NextPageToken" = true, "Jobs" = true, nil }

function M.AssertListJobsByStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsByStatusResponse to be of type 'table'")
	if struct["NextPageToken"] then M.AssertId(struct["NextPageToken"]) end
	if struct["Jobs"] then M.AssertJobs(struct["Jobs"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsByStatusResponse_keys[k], "ListJobsByStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsByStatusResponse
-- &lt;p&gt; The &lt;code&gt;ListJobsByStatusResponse&lt;/code&gt; structure. &lt;/p&gt;
-- @param NextPageToken [Id] &lt;p&gt; A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of &lt;code&gt;NextPageToken&lt;/code&gt; is &lt;code&gt;null&lt;/code&gt;. &lt;/p&gt;
-- @param Jobs [Jobs] &lt;p&gt;An array of &lt;code&gt;Job&lt;/code&gt; objects that have the specified status.&lt;/p&gt;
function M.ListJobsByStatusResponse(NextPageToken, Jobs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsByStatusResponse")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["Jobs"] = Jobs,
	}
	M.AssertListJobsByStatusResponse(t)
	return t
end

local ReadPresetResponse_keys = { "Preset" = true, nil }

function M.AssertReadPresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadPresetResponse to be of type 'table'")
	if struct["Preset"] then M.AssertPreset(struct["Preset"]) end
	for k,_ in pairs(struct) do
		assert(ReadPresetResponse_keys[k], "ReadPresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadPresetResponse
-- &lt;p&gt;The &lt;code&gt;ReadPresetResponse&lt;/code&gt; structure.&lt;/p&gt;
-- @param Preset [Preset] &lt;p&gt;A section of the response body that provides information about the preset.&lt;/p&gt;
function M.ReadPresetResponse(Preset, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReadPresetResponse")
	local t = { 
		["Preset"] = Preset,
	}
	M.AssertReadPresetResponse(t)
	return t
end

local Notifications_keys = { "Completed" = true, "Warning" = true, "Progressing" = true, "Error" = true, nil }

function M.AssertNotifications(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Notifications to be of type 'table'")
	if struct["Completed"] then M.AssertSnsTopic(struct["Completed"]) end
	if struct["Warning"] then M.AssertSnsTopic(struct["Warning"]) end
	if struct["Progressing"] then M.AssertSnsTopic(struct["Progressing"]) end
	if struct["Error"] then M.AssertSnsTopic(struct["Error"]) end
	for k,_ in pairs(struct) do
		assert(Notifications_keys[k], "Notifications contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Notifications
-- &lt;p&gt;The Amazon Simple Notification Service (Amazon SNS) topic or topics to notify in order to report job status.&lt;/p&gt; &lt;important&gt; &lt;p&gt;To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.&lt;/p&gt; &lt;/important&gt;
-- @param Completed [SnsTopic] &lt;p&gt;The Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing the job.&lt;/p&gt;
-- @param Warning [SnsTopic] &lt;p&gt;The Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition.&lt;/p&gt;
-- @param Progressing [SnsTopic] &lt;p&gt;The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process the job.&lt;/p&gt;
-- @param Error [SnsTopic] &lt;p&gt;The Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition.&lt;/p&gt;
function M.Notifications(Completed, Warning, Progressing, Error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Notifications")
	local t = { 
		["Completed"] = Completed,
		["Warning"] = Warning,
		["Progressing"] = Progressing,
		["Error"] = Error,
	}
	M.AssertNotifications(t)
	return t
end

local Preset_keys = { "Thumbnails" = true, "Container" = true, "Description" = true, "Video" = true, "Audio" = true, "Type" = true, "Id" = true, "Arn" = true, "Name" = true, nil }

function M.AssertPreset(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Preset to be of type 'table'")
	if struct["Thumbnails"] then M.AssertThumbnails(struct["Thumbnails"]) end
	if struct["Container"] then M.AssertPresetContainer(struct["Container"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["Video"] then M.AssertVideoParameters(struct["Video"]) end
	if struct["Audio"] then M.AssertAudioParameters(struct["Audio"]) end
	if struct["Type"] then M.AssertPresetType(struct["Type"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Arn"] then M.AssertString(struct["Arn"]) end
	if struct["Name"] then M.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Preset_keys[k], "Preset contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Preset
-- &lt;p&gt;Presets are templates that contain most of the settings for transcoding media files from one format to another. Elastic Transcoder includes some default presets for common formats, for example, several iPod and iPhone versions. You can also create your own presets for formats that aren't included among the default presets. You specify which preset you want to use when you create a job.&lt;/p&gt;
-- @param Thumbnails [Thumbnails] &lt;p&gt;A section of the response body that provides information about the thumbnail preset values, if any.&lt;/p&gt;
-- @param Container [PresetContainer] &lt;p&gt;The container type for the output file. Valid values include &lt;code&gt;flac&lt;/code&gt;, &lt;code&gt;flv&lt;/code&gt;, &lt;code&gt;fmp4&lt;/code&gt;, &lt;code&gt;gif&lt;/code&gt;, &lt;code&gt;mp3&lt;/code&gt;, &lt;code&gt;mp4&lt;/code&gt;, &lt;code&gt;mpg&lt;/code&gt;, &lt;code&gt;mxf&lt;/code&gt;, &lt;code&gt;oga&lt;/code&gt;, &lt;code&gt;ogg&lt;/code&gt;, &lt;code&gt;ts&lt;/code&gt;, and &lt;code&gt;webm&lt;/code&gt;.&lt;/p&gt;
-- @param Description [Description] &lt;p&gt;A description of the preset.&lt;/p&gt;
-- @param Video [VideoParameters] &lt;p&gt;A section of the response body that provides information about the video preset values.&lt;/p&gt;
-- @param Audio [AudioParameters] &lt;p&gt;A section of the response body that provides information about the audio preset values.&lt;/p&gt;
-- @param Type [PresetType] &lt;p&gt;Whether the preset is a default preset provided by Elastic Transcoder (&lt;code&gt;System&lt;/code&gt;) or a preset that you have defined (&lt;code&gt;Custom&lt;/code&gt;).&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;Identifier for the new preset. You use this value to get settings for the preset or to delete it.&lt;/p&gt;
-- @param Arn [String] &lt;p&gt;The Amazon Resource Name (ARN) for the preset.&lt;/p&gt;
-- @param Name [Name] &lt;p&gt;The name of the preset.&lt;/p&gt;
function M.Preset(Thumbnails, Container, Description, Video, Audio, Type, Id, Arn, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Preset")
	local t = { 
		["Thumbnails"] = Thumbnails,
		["Container"] = Container,
		["Description"] = Description,
		["Video"] = Video,
		["Audio"] = Audio,
		["Type"] = Type,
		["Id"] = Id,
		["Arn"] = Arn,
		["Name"] = Name,
	}
	M.AssertPreset(t)
	return t
end

local Timing_keys = { "FinishTimeMillis" = true, "SubmitTimeMillis" = true, "StartTimeMillis" = true, nil }

function M.AssertTiming(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Timing to be of type 'table'")
	if struct["FinishTimeMillis"] then M.AssertNullableLong(struct["FinishTimeMillis"]) end
	if struct["SubmitTimeMillis"] then M.AssertNullableLong(struct["SubmitTimeMillis"]) end
	if struct["StartTimeMillis"] then M.AssertNullableLong(struct["StartTimeMillis"]) end
	for k,_ in pairs(struct) do
		assert(Timing_keys[k], "Timing contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Timing
-- &lt;p&gt;Details about the timing of a job.&lt;/p&gt;
-- @param FinishTimeMillis [NullableLong] &lt;p&gt;The time the job finished transcoding, in epoch milliseconds.&lt;/p&gt;
-- @param SubmitTimeMillis [NullableLong] &lt;p&gt;The time the job was submitted to Elastic Transcoder, in epoch milliseconds.&lt;/p&gt;
-- @param StartTimeMillis [NullableLong] &lt;p&gt;The time the job began transcoding, in epoch milliseconds.&lt;/p&gt;
function M.Timing(FinishTimeMillis, SubmitTimeMillis, StartTimeMillis, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Timing")
	local t = { 
		["FinishTimeMillis"] = FinishTimeMillis,
		["SubmitTimeMillis"] = SubmitTimeMillis,
		["StartTimeMillis"] = StartTimeMillis,
	}
	M.AssertTiming(t)
	return t
end

local PipelineOutputConfig_keys = { "Bucket" = true, "StorageClass" = true, "Permissions" = true, nil }

function M.AssertPipelineOutputConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PipelineOutputConfig to be of type 'table'")
	if struct["Bucket"] then M.AssertBucketName(struct["Bucket"]) end
	if struct["StorageClass"] then M.AssertStorageClass(struct["StorageClass"]) end
	if struct["Permissions"] then M.AssertPermissions(struct["Permissions"]) end
	for k,_ in pairs(struct) do
		assert(PipelineOutputConfig_keys[k], "PipelineOutputConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PipelineOutputConfig
-- &lt;p&gt;The &lt;code&gt;PipelineOutputConfig&lt;/code&gt; structure.&lt;/p&gt;
-- @param Bucket [BucketName] &lt;p&gt; The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files. Specify this value when all of the following are true:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You want to save transcoded files, thumbnails (if any), and playlists (if any) together in one bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You do not want to specify the users or groups who have access to the transcoded files, thumbnails, and playlists.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You do not want to specify the permissions that Elastic Transcoder grants to the files.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You want to associate the transcoded files and thumbnails with the Amazon S3 Standard storage class.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you want to save transcoded files and playlists in one bucket and thumbnails in another bucket, specify which users can access the transcoded files or the permissions the users have, or change the Amazon S3 storage class, omit OutputBucket and specify values for &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt; instead. &lt;/p&gt;
-- @param StorageClass [StorageClass] &lt;p&gt; The Amazon S3 storage class, &lt;code&gt;Standard&lt;/code&gt; or &lt;code&gt;ReducedRedundancy&lt;/code&gt;, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket. &lt;/p&gt;
-- @param Permissions [Permissions] &lt;p&gt;Optional. The &lt;code&gt;Permissions&lt;/code&gt; object specifies which users and/or predefined Amazon S3 groups you want to have access to transcoded files and playlists, and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.&lt;/p&gt; &lt;p&gt;If you include &lt;code&gt;Permissions&lt;/code&gt;, Elastic Transcoder grants only the permissions that you specify. It does not grant full permissions to the owner of the role specified by &lt;code&gt;Role&lt;/code&gt;. If you want that user to have full control, you must explicitly grant full control to the user.&lt;/p&gt; &lt;p&gt; If you omit &lt;code&gt;Permissions&lt;/code&gt;, Elastic Transcoder grants full control over the transcoded files and playlists to the owner of the role specified by &lt;code&gt;Role&lt;/code&gt;, and grants no other permissions to any other user or group.&lt;/p&gt;
function M.PipelineOutputConfig(Bucket, StorageClass, Permissions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PipelineOutputConfig")
	local t = { 
		["Bucket"] = Bucket,
		["StorageClass"] = StorageClass,
		["Permissions"] = Permissions,
	}
	M.AssertPipelineOutputConfig(t)
	return t
end

local Permission_keys = { "Access" = true, "Grantee" = true, "GranteeType" = true, nil }

function M.AssertPermission(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Permission to be of type 'table'")
	if struct["Access"] then M.AssertAccessControls(struct["Access"]) end
	if struct["Grantee"] then M.AssertGrantee(struct["Grantee"]) end
	if struct["GranteeType"] then M.AssertGranteeType(struct["GranteeType"]) end
	for k,_ in pairs(struct) do
		assert(Permission_keys[k], "Permission contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Permission
-- &lt;p&gt;The &lt;code&gt;Permission&lt;/code&gt; structure.&lt;/p&gt;
-- @param Access [AccessControls] &lt;p&gt; The permission that you want to give to the AWS user that is listed in Grantee. Valid values include: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ&lt;/code&gt;: The grantee can read the thumbnails and metadata for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ_ACP&lt;/code&gt;: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;WRITE_ACP&lt;/code&gt;: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FULL_CONTROL&lt;/code&gt;: The grantee has READ, READ_ACP, and WRITE_ACP permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Grantee [Grantee] &lt;p&gt;The AWS user or group that you want to have access to transcoded files and playlists. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group.&lt;/p&gt;
-- @param GranteeType [GranteeType] &lt;p&gt;The type of value that appears in the Grantee object:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Canonical&lt;/code&gt;: Either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.&lt;/p&gt; &lt;important&gt; &lt;p&gt;A canonical user ID is not the same as an AWS account number.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Email&lt;/code&gt;: The registered email address of an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Group&lt;/code&gt;: One of the following predefined Amazon S3 groups: &lt;code&gt;AllUsers&lt;/code&gt;, &lt;code&gt;AuthenticatedUsers&lt;/code&gt;, or &lt;code&gt;LogDelivery&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.Permission(Access, Grantee, GranteeType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Permission")
	local t = { 
		["Access"] = Access,
		["Grantee"] = Grantee,
		["GranteeType"] = GranteeType,
	}
	M.AssertPermission(t)
	return t
end

local Warning_keys = { "Message" = true, "Code" = true, nil }

function M.AssertWarning(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Warning to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Code"] then M.AssertString(struct["Code"]) end
	for k,_ in pairs(struct) do
		assert(Warning_keys[k], "Warning contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Warning
-- &lt;p&gt;Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.&lt;/p&gt; &lt;p&gt;Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The message explaining what resources are in a different region from the pipeline.&lt;/p&gt; &lt;note&gt; &lt;p&gt;AWS KMS keys must be in the same region as the pipeline.&lt;/p&gt; &lt;/note&gt;
-- @param Code [String] &lt;p&gt;The code of the cross-regional warning.&lt;/p&gt;
function M.Warning(Message, Code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Warning")
	local t = { 
		["Message"] = Message,
		["Code"] = Code,
	}
	M.AssertWarning(t)
	return t
end

local JobAlbumArt_keys = { "MergePolicy" = true, "Artwork" = true, nil }

function M.AssertJobAlbumArt(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobAlbumArt to be of type 'table'")
	if struct["MergePolicy"] then M.AssertMergePolicy(struct["MergePolicy"]) end
	if struct["Artwork"] then M.AssertArtworks(struct["Artwork"]) end
	for k,_ in pairs(struct) do
		assert(JobAlbumArt_keys[k], "JobAlbumArt contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobAlbumArt
-- &lt;p&gt;The .jpg or .png file associated with an audio file.&lt;/p&gt;
-- @param MergePolicy [MergePolicy] &lt;p&gt;A policy that determines how Elastic Transcoder handles the existence of multiple album artwork files.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Replace:&lt;/code&gt; The specified album art replaces any existing album art.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Prepend:&lt;/code&gt; The specified album art is placed in front of any existing album art.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Append:&lt;/code&gt; The specified album art is placed after any existing album art.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fallback:&lt;/code&gt; If the original input file contains artwork, Elastic Transcoder uses that artwork for the output. If the original input does not contain artwork, Elastic Transcoder uses the specified album art file.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Artwork [Artworks] &lt;p&gt;The file to be used as album art. There can be multiple artworks associated with an audio file, to a maximum of 20. Valid formats are &lt;code&gt;.jpg&lt;/code&gt; and &lt;code&gt;.png&lt;/code&gt; &lt;/p&gt;
function M.JobAlbumArt(MergePolicy, Artwork, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobAlbumArt")
	local t = { 
		["MergePolicy"] = MergePolicy,
		["Artwork"] = Artwork,
	}
	M.AssertJobAlbumArt(t)
	return t
end

local AudioCodecOptions_keys = { "Profile" = true, "BitDepth" = true, "Signed" = true, "BitOrder" = true, nil }

function M.AssertAudioCodecOptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioCodecOptions to be of type 'table'")
	if struct["Profile"] then M.AssertAudioCodecProfile(struct["Profile"]) end
	if struct["BitDepth"] then M.AssertAudioBitDepth(struct["BitDepth"]) end
	if struct["Signed"] then M.AssertAudioSigned(struct["Signed"]) end
	if struct["BitOrder"] then M.AssertAudioBitOrder(struct["BitOrder"]) end
	for k,_ in pairs(struct) do
		assert(AudioCodecOptions_keys[k], "AudioCodecOptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioCodecOptions
-- &lt;p&gt;Options associated with your audio codec.&lt;/p&gt;
-- @param Profile [AudioCodecProfile] &lt;p&gt;You can only choose an audio profile when you specify AAC for the value of Audio:Codec.&lt;/p&gt; &lt;p&gt;Specify the AAC profile for the output file. Elastic Transcoder supports the following profiles:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;: If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder selects the profile based on the bit rate selected for the output file.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;AAC-LC&lt;/code&gt;: The most common AAC profile. Use for bit rates larger than 64 kbps.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;HE-AAC&lt;/code&gt;: Not supported on some older players and devices. Use for bit rates between 40 and 80 kbps.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;HE-AACv2&lt;/code&gt;: Not supported on some players and devices. Use for bit rates less than 48 kbps.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;All outputs in a &lt;code&gt;Smooth&lt;/code&gt; playlist must have the same value for &lt;code&gt;Profile&lt;/code&gt;.&lt;/p&gt; &lt;note&gt; &lt;p&gt;If you created any presets before AAC profiles were added, Elastic Transcoder automatically updated your presets to use AAC-LC. You can change the value as required.&lt;/p&gt; &lt;/note&gt;
-- @param BitDepth [AudioBitDepth] &lt;p&gt;You can only choose an audio bit depth when you specify &lt;code&gt;flac&lt;/code&gt; or &lt;code&gt;pcm&lt;/code&gt; for the value of Audio:Codec.&lt;/p&gt; &lt;p&gt;The bit depth of a sample is how many bits of information are included in the audio samples. The higher the bit depth, the better the audio, but the larger the file.&lt;/p&gt; &lt;p&gt;Valid values are &lt;code&gt;16&lt;/code&gt; and &lt;code&gt;24&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The most common bit depth is &lt;code&gt;24&lt;/code&gt;.&lt;/p&gt;
-- @param Signed [AudioSigned] &lt;p&gt;You can only choose whether an audio sample is signed when you specify &lt;code&gt;pcm&lt;/code&gt; for the value of Audio:Codec.&lt;/p&gt; &lt;p&gt;Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned).&lt;/p&gt; &lt;p&gt;The supported value is &lt;code&gt;Signed&lt;/code&gt;.&lt;/p&gt;
-- @param BitOrder [AudioBitOrder] &lt;p&gt;You can only choose an audio bit order when you specify &lt;code&gt;pcm&lt;/code&gt; for the value of Audio:Codec.&lt;/p&gt; &lt;p&gt;The order the bits of a PCM sample are stored in.&lt;/p&gt; &lt;p&gt;The supported value is &lt;code&gt;LittleEndian&lt;/code&gt;.&lt;/p&gt;
function M.AudioCodecOptions(Profile, BitDepth, Signed, BitOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AudioCodecOptions")
	local t = { 
		["Profile"] = Profile,
		["BitDepth"] = BitDepth,
		["Signed"] = Signed,
		["BitOrder"] = BitOrder,
	}
	M.AssertAudioCodecOptions(t)
	return t
end

local DeletePresetResponse_keys = { nil }

function M.AssertDeletePresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePresetResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeletePresetResponse_keys[k], "DeletePresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePresetResponse
-- &lt;p&gt;The &lt;code&gt;DeletePresetResponse&lt;/code&gt; structure.&lt;/p&gt;
function M.DeletePresetResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePresetResponse")
	local t = { 
	}
	M.AssertDeletePresetResponse(t)
	return t
end

local Playlist_keys = { "Status" = true, "Name" = true, "HlsContentProtection" = true, "Format" = true, "StatusDetail" = true, "PlayReadyDrm" = true, "OutputKeys" = true, nil }

function M.AssertPlaylist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Playlist to be of type 'table'")
	if struct["Status"] then M.AssertJobStatus(struct["Status"]) end
	if struct["Name"] then M.AssertFilename(struct["Name"]) end
	if struct["HlsContentProtection"] then M.AssertHlsContentProtection(struct["HlsContentProtection"]) end
	if struct["Format"] then M.AssertPlaylistFormat(struct["Format"]) end
	if struct["StatusDetail"] then M.AssertDescription(struct["StatusDetail"]) end
	if struct["PlayReadyDrm"] then M.AssertPlayReadyDrm(struct["PlayReadyDrm"]) end
	if struct["OutputKeys"] then M.AssertOutputKeys(struct["OutputKeys"]) end
	for k,_ in pairs(struct) do
		assert(Playlist_keys[k], "Playlist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Playlist
-- &lt;p&gt; Use Only for Fragmented MP4 or MPEG-TS Outputs. If you specify a preset for which the value of Container is &lt;code&gt;fmp4&lt;/code&gt; (Fragmented MP4) or &lt;code&gt;ts&lt;/code&gt; (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create. We recommend that you create only one master playlist per output format. The maximum number of master playlists in a job is 30. &lt;/p&gt;
-- @param Status [JobStatus] &lt;p&gt;The status of the job with which the playlist is associated.&lt;/p&gt;
-- @param Name [Filename] &lt;p&gt;The name that you want Elastic Transcoder to assign to the master playlist, for example, nyc-vacation.m3u8. If the name includes a &lt;code&gt;/&lt;/code&gt; character, the section of the name before the last &lt;code&gt;/&lt;/code&gt; must be identical for all &lt;code&gt;Name&lt;/code&gt; objects. If you create more than one master playlist, the values of all &lt;code&gt;Name&lt;/code&gt; objects must be unique.&lt;/p&gt; &lt;note&gt; &lt;p&gt;Elastic Transcoder automatically appends the relevant file extension to the file name (&lt;code&gt;.m3u8&lt;/code&gt; for &lt;code&gt;HLSv3&lt;/code&gt; and &lt;code&gt;HLSv4&lt;/code&gt; playlists, and &lt;code&gt;.ism&lt;/code&gt; and &lt;code&gt;.ismc&lt;/code&gt; for &lt;code&gt;Smooth&lt;/code&gt; playlists). If you include a file extension in &lt;code&gt;Name&lt;/code&gt;, the file name will have two extensions.&lt;/p&gt; &lt;/note&gt;
-- @param HlsContentProtection [HlsContentProtection] &lt;p&gt;The HLS content protection settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.&lt;/p&gt;
-- @param Format [PlaylistFormat] &lt;p&gt;The format of the output playlist. Valid formats include &lt;code&gt;HLSv3&lt;/code&gt;, &lt;code&gt;HLSv4&lt;/code&gt;, and &lt;code&gt;Smooth&lt;/code&gt;.&lt;/p&gt;
-- @param StatusDetail [Description] &lt;p&gt;Information that further explains the status.&lt;/p&gt;
-- @param PlayReadyDrm [PlayReadyDrm] &lt;p&gt;The DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.&lt;/p&gt;
-- @param OutputKeys [OutputKeys] &lt;p&gt;For each output in this job that you want to include in a master playlist, the value of the Outputs:Key object.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If your output is not &lt;code&gt;HLS&lt;/code&gt; or does not have a segment duration set, the name of the output file is a concatenation of &lt;code&gt;OutputKeyPrefix&lt;/code&gt; and &lt;code&gt;Outputs:Key&lt;/code&gt;:&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If your output is &lt;code&gt;HLSv3&lt;/code&gt; and has a segment duration set, or is not included in a playlist, Elastic Transcoder creates an output playlist file with a file extension of &lt;code&gt;.m3u8&lt;/code&gt;, and a series of &lt;code&gt;.ts&lt;/code&gt; files that include a five-digit sequential counter beginning with 00000:&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;.m3u8&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;00000.ts&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If your output is &lt;code&gt;HLSv4&lt;/code&gt;, has a segment duration set, and is included in an &lt;code&gt;HLSv4&lt;/code&gt; playlist, Elastic Transcoder creates an output playlist file with a file extension of &lt;code&gt;_v4.m3u8&lt;/code&gt;. If the output is video, Elastic Transcoder also creates an output file with an extension of &lt;code&gt;_iframe.m3u8&lt;/code&gt;:&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;_v4.m3u8&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;_iframe.m3u8&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;.ts&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Elastic Transcoder automatically appends the relevant file extension to the file name. If you include a file extension in Output Key, the file name will have two extensions.&lt;/p&gt; &lt;p&gt;If you include more than one output in a playlist, any segment duration settings, clip settings, or caption settings must be the same for all outputs in the playlist. For &lt;code&gt;Smooth&lt;/code&gt; playlists, the &lt;code&gt;Audio:Profile&lt;/code&gt;, &lt;code&gt;Video:Profile&lt;/code&gt;, and &lt;code&gt;Video:FrameRate&lt;/code&gt; to &lt;code&gt;Video:KeyframesMaxDist&lt;/code&gt; ratio must be the same for all outputs.&lt;/p&gt;
function M.Playlist(Status, Name, HlsContentProtection, Format, StatusDetail, PlayReadyDrm, OutputKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Playlist")
	local t = { 
		["Status"] = Status,
		["Name"] = Name,
		["HlsContentProtection"] = HlsContentProtection,
		["Format"] = Format,
		["StatusDetail"] = StatusDetail,
		["PlayReadyDrm"] = PlayReadyDrm,
		["OutputKeys"] = OutputKeys,
	}
	M.AssertPlaylist(t)
	return t
end

local CancelJobResponse_keys = { nil }

function M.AssertCancelJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CancelJobResponse_keys[k], "CancelJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobResponse
-- &lt;p&gt;The response body contains a JSON object. If the job is successfully canceled, the value of &lt;code&gt;Success&lt;/code&gt; is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
function M.CancelJobResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobResponse")
	local t = { 
	}
	M.AssertCancelJobResponse(t)
	return t
end

local Encryption_keys = { "InitializationVector" = true, "Mode" = true, "Key" = true, "KeyMd5" = true, nil }

function M.AssertEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Encryption to be of type 'table'")
	if struct["InitializationVector"] then M.AssertZeroTo255String(struct["InitializationVector"]) end
	if struct["Mode"] then M.AssertEncryptionMode(struct["Mode"]) end
	if struct["Key"] then M.AssertBase64EncodedString(struct["Key"]) end
	if struct["KeyMd5"] then M.AssertBase64EncodedString(struct["KeyMd5"]) end
	for k,_ in pairs(struct) do
		assert(Encryption_keys[k], "Encryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Encryption
-- &lt;p&gt;The encryption settings, if any, that are used for decrypting your input files or encrypting your output files. If your input file is encrypted, you must specify the mode that Elastic Transcoder uses to decrypt your file, otherwise you must specify the mode you want Elastic Transcoder to use to encrypt your output files.&lt;/p&gt;
-- @param InitializationVector [ZeroTo255String] &lt;p&gt;The series of random bits created by a random bit generator, unique for every encryption operation, that you used to encrypt your input files or that you want Elastic Transcoder to use to encrypt your output files. The initialization vector must be base64-encoded, and it must be exactly 16 bytes long before being base64-encoded.&lt;/p&gt;
-- @param Mode [EncryptionMode] &lt;p&gt;The specific server-side encryption mode that you want Elastic Transcoder to use when decrypting your input files or encrypting your output files. Elastic Transcoder supports the following options:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;S3:&lt;/b&gt; Amazon S3 creates and manages the keys used for encrypting your files.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;S3-AWS-KMS:&lt;/b&gt; Amazon S3 calls the Amazon Key Management Service, which creates and manages the keys that are used for encrypting your files. If you specify &lt;code&gt;S3-AWS-KMS&lt;/code&gt; and you don't want to use the default key, you must add the AWS-KMS key that you want to use to your pipeline.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AES-CBC-PKCS7:&lt;/b&gt; A padded cipher-block mode of operation originally used for HLS files.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AES-CTR:&lt;/b&gt; AES Counter Mode.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;AES-GCM:&lt;/b&gt; AES Galois Counter Mode, a mode of operation that is an authenticated encryption format, meaning that a file, key, or initialization vector that has been tampered with fails the decryption process.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For all three AES options, you must provide the following settings, which must be base64-encoded:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Key&lt;/b&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Key MD5&lt;/b&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Initialization Vector&lt;/b&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;important&gt; &lt;p&gt;For the AES modes, your private encryption keys and your unencrypted data are never stored by AWS; therefore, it is important that you safely manage your encryption keys. If you lose them, you won't be able to unencrypt your data.&lt;/p&gt; &lt;/important&gt;
-- @param Key [Base64EncodedString] &lt;p&gt;The data encryption key that you want Elastic Transcoder to use to encrypt your output file, or that was used to encrypt your input file. The key must be base64-encoded and it must be one of the following bit lengths before being base64-encoded:&lt;/p&gt; &lt;p&gt; &lt;code&gt;128&lt;/code&gt;, &lt;code&gt;192&lt;/code&gt;, or &lt;code&gt;256&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;The key must also be encrypted by using the Amazon Key Management Service.&lt;/p&gt;
-- @param KeyMd5 [Base64EncodedString] &lt;p&gt;The MD5 digest of the key that you used to encrypt your input file, or that you want Elastic Transcoder to use to encrypt your output file. Elastic Transcoder uses the key digest as a checksum to make sure your key was not corrupted in transit. The key MD5 must be base64-encoded, and it must be exactly 16 bytes long before being base64-encoded.&lt;/p&gt;
function M.Encryption(InitializationVector, Mode, Key, KeyMd5, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Encryption")
	local t = { 
		["InitializationVector"] = InitializationVector,
		["Mode"] = Mode,
		["Key"] = Key,
		["KeyMd5"] = KeyMd5,
	}
	M.AssertEncryption(t)
	return t
end

local ListPresetsResponse_keys = { "NextPageToken" = true, "Presets" = true, nil }

function M.AssertListPresetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPresetsResponse to be of type 'table'")
	if struct["NextPageToken"] then M.AssertId(struct["NextPageToken"]) end
	if struct["Presets"] then M.AssertPresets(struct["Presets"]) end
	for k,_ in pairs(struct) do
		assert(ListPresetsResponse_keys[k], "ListPresetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPresetsResponse
-- &lt;p&gt;The &lt;code&gt;ListPresetsResponse&lt;/code&gt; structure.&lt;/p&gt;
-- @param NextPageToken [Id] &lt;p&gt;A value that you use to access the second and subsequent pages of results, if any. When the presets fit on one page or when you've reached the last page of results, the value of &lt;code&gt;NextPageToken&lt;/code&gt; is &lt;code&gt;null&lt;/code&gt;.&lt;/p&gt;
-- @param Presets [Presets] &lt;p&gt;An array of &lt;code&gt;Preset&lt;/code&gt; objects.&lt;/p&gt;
function M.ListPresetsResponse(NextPageToken, Presets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPresetsResponse")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["Presets"] = Presets,
	}
	M.AssertListPresetsResponse(t)
	return t
end

local ListJobsByPipelineResponse_keys = { "NextPageToken" = true, "Jobs" = true, nil }

function M.AssertListJobsByPipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsByPipelineResponse to be of type 'table'")
	if struct["NextPageToken"] then M.AssertId(struct["NextPageToken"]) end
	if struct["Jobs"] then M.AssertJobs(struct["Jobs"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsByPipelineResponse_keys[k], "ListJobsByPipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsByPipelineResponse
-- &lt;p&gt;The &lt;code&gt;ListJobsByPipelineResponse&lt;/code&gt; structure.&lt;/p&gt;
-- @param NextPageToken [Id] &lt;p&gt; A value that you use to access the second and subsequent pages of results, if any. When the jobs in the specified pipeline fit on one page or when you've reached the last page of results, the value of &lt;code&gt;NextPageToken&lt;/code&gt; is &lt;code&gt;null&lt;/code&gt;. &lt;/p&gt;
-- @param Jobs [Jobs] &lt;p&gt;An array of &lt;code&gt;Job&lt;/code&gt; objects that are in the specified pipeline.&lt;/p&gt;
function M.ListJobsByPipelineResponse(NextPageToken, Jobs, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsByPipelineResponse")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["Jobs"] = Jobs,
	}
	M.AssertListJobsByPipelineResponse(t)
	return t
end

local CreateJobResponse_keys = { "Job" = true, nil }

function M.AssertCreateJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobResponse to be of type 'table'")
	if struct["Job"] then M.AssertJob(struct["Job"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobResponse_keys[k], "CreateJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobResponse
-- &lt;p&gt;The CreateJobResponse structure.&lt;/p&gt;
-- @param Job [Job] &lt;p&gt;A section of the response body that provides information about the job that is created.&lt;/p&gt;
function M.CreateJobResponse(Job, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobResponse")
	local t = { 
		["Job"] = Job,
	}
	M.AssertCreateJobResponse(t)
	return t
end

local InternalServiceException_keys = { nil }

function M.AssertInternalServiceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InternalServiceException_keys[k], "InternalServiceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceException
-- &lt;p&gt;Elastic Transcoder encountered an unexpected exception while trying to fulfill the request.&lt;/p&gt;
function M.InternalServiceException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServiceException")
	local t = { 
	}
	M.AssertInternalServiceException(t)
	return t
end

local Thumbnails_keys = { "SizingPolicy" = true, "MaxWidth" = true, "Format" = true, "PaddingPolicy" = true, "Interval" = true, "MaxHeight" = true, "AspectRatio" = true, "Resolution" = true, nil }

function M.AssertThumbnails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Thumbnails to be of type 'table'")
	if struct["SizingPolicy"] then M.AssertSizingPolicy(struct["SizingPolicy"]) end
	if struct["MaxWidth"] then M.AssertDigitsOrAuto(struct["MaxWidth"]) end
	if struct["Format"] then M.AssertJpgOrPng(struct["Format"]) end
	if struct["PaddingPolicy"] then M.AssertPaddingPolicy(struct["PaddingPolicy"]) end
	if struct["Interval"] then M.AssertDigits(struct["Interval"]) end
	if struct["MaxHeight"] then M.AssertDigitsOrAuto(struct["MaxHeight"]) end
	if struct["AspectRatio"] then M.AssertAspectRatio(struct["AspectRatio"]) end
	if struct["Resolution"] then M.AssertThumbnailResolution(struct["Resolution"]) end
	for k,_ in pairs(struct) do
		assert(Thumbnails_keys[k], "Thumbnails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Thumbnails
-- &lt;p&gt;Thumbnails for videos.&lt;/p&gt;
-- @param SizingPolicy [SizingPolicy] &lt;p&gt;Specify one of the following values to control scaling of thumbnails:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fit&lt;/code&gt;: Elastic Transcoder scales thumbnails so they match the value that you specified in thumbnail MaxWidth or MaxHeight settings without exceeding the other value. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fill&lt;/code&gt;: Elastic Transcoder scales thumbnails so they match the value that you specified in thumbnail &lt;code&gt;MaxWidth&lt;/code&gt; or &lt;code&gt;MaxHeight&lt;/code&gt; settings and matches or exceeds the other value. Elastic Transcoder centers the image in thumbnails and then crops in the dimension (if any) that exceeds the maximum value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Stretch&lt;/code&gt;: Elastic Transcoder stretches thumbnails to match the values that you specified for thumbnail &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; settings. If the relative proportions of the input video and thumbnails are different, the thumbnails will be distorted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Keep&lt;/code&gt;: Elastic Transcoder does not scale thumbnails. If either dimension of the input video exceeds the values that you specified for thumbnail &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; settings, Elastic Transcoder crops the thumbnails.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ShrinkToFit&lt;/code&gt;: Elastic Transcoder scales thumbnails down so that their dimensions match the values that you specified for at least one of thumbnail &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; without exceeding either value. If you specify this option, Elastic Transcoder does not scale thumbnails up.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ShrinkToFill&lt;/code&gt;: Elastic Transcoder scales thumbnails down so that their dimensions match the values that you specified for at least one of &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; without dropping below either value. If you specify this option, Elastic Transcoder does not scale thumbnails up.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MaxWidth [DigitsOrAuto] &lt;p&gt;The maximum width of thumbnails in pixels. If you specify auto, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 4096.&lt;/p&gt;
-- @param Format [JpgOrPng] &lt;p&gt;The format of thumbnails, if any. Valid values are &lt;code&gt;jpg&lt;/code&gt; and &lt;code&gt;png&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;You specify whether you want Elastic Transcoder to create thumbnails when you create a job.&lt;/p&gt;
-- @param PaddingPolicy [PaddingPolicy] &lt;p&gt;When you set &lt;code&gt;PaddingPolicy&lt;/code&gt; to &lt;code&gt;Pad&lt;/code&gt;, Elastic Transcoder may add black bars to the top and bottom and/or left and right sides of thumbnails to make the total size of the thumbnails match the values that you specified for thumbnail &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; settings.&lt;/p&gt;
-- @param Interval [Digits] &lt;p&gt;The approximate number of seconds between thumbnails. Specify an integer value.&lt;/p&gt;
-- @param MaxHeight [DigitsOrAuto] &lt;p&gt;The maximum height of thumbnails in pixels. If you specify auto, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 32 and 3072.&lt;/p&gt;
-- @param AspectRatio [AspectRatio] &lt;important&gt; &lt;p&gt;To better control resolution and aspect ratio of thumbnails, we recommend that you use the values &lt;code&gt;MaxWidth&lt;/code&gt;, &lt;code&gt;MaxHeight&lt;/code&gt;, &lt;code&gt;SizingPolicy&lt;/code&gt;, and &lt;code&gt;PaddingPolicy&lt;/code&gt; instead of &lt;code&gt;Resolution&lt;/code&gt; and &lt;code&gt;AspectRatio&lt;/code&gt;. The two groups of settings are mutually exclusive. Do not use them together.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;The aspect ratio of thumbnails. Valid values include:&lt;/p&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;, &lt;code&gt;1:1&lt;/code&gt;, &lt;code&gt;4:3&lt;/code&gt;, &lt;code&gt;3:2&lt;/code&gt;, &lt;code&gt;16:9&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder tries to preserve the aspect ratio of the video in the output file.&lt;/p&gt;
-- @param Resolution [ThumbnailResolution] &lt;important&gt; &lt;p&gt;To better control resolution and aspect ratio of thumbnails, we recommend that you use the values &lt;code&gt;MaxWidth&lt;/code&gt;, &lt;code&gt;MaxHeight&lt;/code&gt;, &lt;code&gt;SizingPolicy&lt;/code&gt;, and &lt;code&gt;PaddingPolicy&lt;/code&gt; instead of &lt;code&gt;Resolution&lt;/code&gt; and &lt;code&gt;AspectRatio&lt;/code&gt;. The two groups of settings are mutually exclusive. Do not use them together.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;The width and height of thumbnail files in pixels. Specify a value in the format &lt;code&gt; &lt;i&gt;width&lt;/i&gt; &lt;/code&gt; x &lt;code&gt; &lt;i&gt;height&lt;/i&gt; &lt;/code&gt; where both values are even integers. The values cannot exceed the width and height that you specified in the &lt;code&gt;Video:Resolution&lt;/code&gt; object.&lt;/p&gt;
function M.Thumbnails(SizingPolicy, MaxWidth, Format, PaddingPolicy, Interval, MaxHeight, AspectRatio, Resolution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Thumbnails")
	local t = { 
		["SizingPolicy"] = SizingPolicy,
		["MaxWidth"] = MaxWidth,
		["Format"] = Format,
		["PaddingPolicy"] = PaddingPolicy,
		["Interval"] = Interval,
		["MaxHeight"] = MaxHeight,
		["AspectRatio"] = AspectRatio,
		["Resolution"] = Resolution,
	}
	M.AssertThumbnails(t)
	return t
end

local HlsContentProtection_keys = { "KeyMd5" = true, "KeyStoragePolicy" = true, "InitializationVector" = true, "LicenseAcquisitionUrl" = true, "Key" = true, "Method" = true, nil }

function M.AssertHlsContentProtection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HlsContentProtection to be of type 'table'")
	if struct["KeyMd5"] then M.AssertBase64EncodedString(struct["KeyMd5"]) end
	if struct["KeyStoragePolicy"] then M.AssertKeyStoragePolicy(struct["KeyStoragePolicy"]) end
	if struct["InitializationVector"] then M.AssertZeroTo255String(struct["InitializationVector"]) end
	if struct["LicenseAcquisitionUrl"] then M.AssertZeroTo512String(struct["LicenseAcquisitionUrl"]) end
	if struct["Key"] then M.AssertBase64EncodedString(struct["Key"]) end
	if struct["Method"] then M.AssertHlsContentProtectionMethod(struct["Method"]) end
	for k,_ in pairs(struct) do
		assert(HlsContentProtection_keys[k], "HlsContentProtection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HlsContentProtection
-- &lt;p&gt;The HLS content protection settings, if any, that you want Elastic Transcoder to apply to your output files.&lt;/p&gt;
-- @param KeyMd5 [Base64EncodedString] &lt;p&gt;If Elastic Transcoder is generating your key for you, you must leave this field blank.&lt;/p&gt; &lt;p&gt;The MD5 digest of the key that you want Elastic Transcoder to use to encrypt your output file, and that you want Elastic Transcoder to use as a checksum to make sure your key was not corrupted in transit. The key MD5 must be base64-encoded, and it must be exactly 16 bytes before being base64- encoded.&lt;/p&gt;
-- @param KeyStoragePolicy [KeyStoragePolicy] &lt;p&gt;Specify whether you want Elastic Transcoder to write your HLS license key to an Amazon S3 bucket. If you choose &lt;code&gt;WithVariantPlaylists&lt;/code&gt;, &lt;code&gt;LicenseAcquisitionUrl&lt;/code&gt; must be left blank and Elastic Transcoder writes your data key into the same bucket as the associated playlist.&lt;/p&gt;
-- @param InitializationVector [ZeroTo255String] &lt;p&gt;If Elastic Transcoder is generating your key for you, you must leave this field blank.&lt;/p&gt; &lt;p&gt;The series of random bits created by a random bit generator, unique for every encryption operation, that you want Elastic Transcoder to use to encrypt your output files. The initialization vector must be base64-encoded, and it must be exactly 16 bytes before being base64-encoded.&lt;/p&gt;
-- @param LicenseAcquisitionUrl [ZeroTo512String] &lt;p&gt;The location of the license key required to decrypt your HLS playlist. The URL must be an absolute path, and is referenced in the URI attribute of the EXT-X-KEY metadata tag in the playlist file.&lt;/p&gt;
-- @param Key [Base64EncodedString] &lt;p&gt;If you want Elastic Transcoder to generate a key for you, leave this field blank.&lt;/p&gt; &lt;p&gt;If you choose to supply your own key, you must encrypt the key by using AWS KMS. The key must be base64-encoded, and it must be one of the following bit lengths before being base64-encoded:&lt;/p&gt; &lt;p&gt; &lt;code&gt;128&lt;/code&gt;, &lt;code&gt;192&lt;/code&gt;, or &lt;code&gt;256&lt;/code&gt;. &lt;/p&gt;
-- @param Method [HlsContentProtectionMethod] &lt;p&gt;The content protection method for your output. The only valid value is: &lt;code&gt;aes-128&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;This value is written into the method attribute of the &lt;code&gt;EXT-X-KEY&lt;/code&gt; metadata tag in the output playlist.&lt;/p&gt;
function M.HlsContentProtection(KeyMd5, KeyStoragePolicy, InitializationVector, LicenseAcquisitionUrl, Key, Method, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HlsContentProtection")
	local t = { 
		["KeyMd5"] = KeyMd5,
		["KeyStoragePolicy"] = KeyStoragePolicy,
		["InitializationVector"] = InitializationVector,
		["LicenseAcquisitionUrl"] = LicenseAcquisitionUrl,
		["Key"] = Key,
		["Method"] = Method,
	}
	M.AssertHlsContentProtection(t)
	return t
end

local CreatePresetRequest_keys = { "Container" = true, "Thumbnails" = true, "Video" = true, "Description" = true, "Audio" = true, "Name" = true, nil }

function M.AssertCreatePresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePresetRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Container"], "Expected key Container to exist in table")
	if struct["Container"] then M.AssertPresetContainer(struct["Container"]) end
	if struct["Thumbnails"] then M.AssertThumbnails(struct["Thumbnails"]) end
	if struct["Video"] then M.AssertVideoParameters(struct["Video"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["Audio"] then M.AssertAudioParameters(struct["Audio"]) end
	if struct["Name"] then M.AssertName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreatePresetRequest_keys[k], "CreatePresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePresetRequest
-- &lt;p&gt;The &lt;code&gt;CreatePresetRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Container [PresetContainer] &lt;p&gt;The container type for the output file. Valid values include &lt;code&gt;flac&lt;/code&gt;, &lt;code&gt;flv&lt;/code&gt;, &lt;code&gt;fmp4&lt;/code&gt;, &lt;code&gt;gif&lt;/code&gt;, &lt;code&gt;mp3&lt;/code&gt;, &lt;code&gt;mp4&lt;/code&gt;, &lt;code&gt;mpg&lt;/code&gt;, &lt;code&gt;mxf&lt;/code&gt;, &lt;code&gt;oga&lt;/code&gt;, &lt;code&gt;ogg&lt;/code&gt;, &lt;code&gt;ts&lt;/code&gt;, and &lt;code&gt;webm&lt;/code&gt;.&lt;/p&gt;
-- @param Thumbnails [Thumbnails] &lt;p&gt;A section of the request body that specifies the thumbnail parameters, if any.&lt;/p&gt;
-- @param Video [VideoParameters] &lt;p&gt;A section of the request body that specifies the video parameters.&lt;/p&gt;
-- @param Description [Description] &lt;p&gt;A description of the preset.&lt;/p&gt;
-- @param Audio [AudioParameters] &lt;p&gt;A section of the request body that specifies the audio parameters.&lt;/p&gt;
-- @param Name [Name] &lt;p&gt;The name of the preset. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: Container
function M.CreatePresetRequest(Container, Thumbnails, Video, Description, Audio, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePresetRequest")
	local t = { 
		["Container"] = Container,
		["Thumbnails"] = Thumbnails,
		["Video"] = Video,
		["Description"] = Description,
		["Audio"] = Audio,
		["Name"] = Name,
	}
	M.AssertCreatePresetRequest(t)
	return t
end

local Job_keys = { "Status" = true, "Inputs" = true, "Playlists" = true, "Outputs" = true, "PipelineId" = true, "OutputKeyPrefix" = true, "UserMetadata" = true, "Output" = true, "Timing" = true, "Input" = true, "Id" = true, "Arn" = true, nil }

function M.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["Status"] then M.AssertJobStatus(struct["Status"]) end
	if struct["Inputs"] then M.AssertJobInputs(struct["Inputs"]) end
	if struct["Playlists"] then M.AssertPlaylists(struct["Playlists"]) end
	if struct["Outputs"] then M.AssertJobOutputs(struct["Outputs"]) end
	if struct["PipelineId"] then M.AssertId(struct["PipelineId"]) end
	if struct["OutputKeyPrefix"] then M.AssertKey(struct["OutputKeyPrefix"]) end
	if struct["UserMetadata"] then M.AssertUserMetadata(struct["UserMetadata"]) end
	if struct["Output"] then M.AssertJobOutput(struct["Output"]) end
	if struct["Timing"] then M.AssertTiming(struct["Timing"]) end
	if struct["Input"] then M.AssertJobInput(struct["Input"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Arn"] then M.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Job_keys[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- &lt;p&gt;A section of the response body that provides information about the job that is created.&lt;/p&gt;
-- @param Status [JobStatus] &lt;p&gt; The status of the job: &lt;code&gt;Submitted&lt;/code&gt;, &lt;code&gt;Progressing&lt;/code&gt;, &lt;code&gt;Complete&lt;/code&gt;, &lt;code&gt;Canceled&lt;/code&gt;, or &lt;code&gt;Error&lt;/code&gt;. &lt;/p&gt;
-- @param Inputs [JobInputs] &lt;p&gt;Information about the files that you're transcoding. If you specified multiple files for this job, Elastic Transcoder stitches the files together to make one output.&lt;/p&gt;
-- @param Playlists [Playlists] &lt;important&gt; &lt;p&gt;Outputs in Fragmented MP4 or MPEG-TS format only.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;If you specify a preset in &lt;code&gt;PresetId&lt;/code&gt; for which the value of &lt;code&gt;Container&lt;/code&gt; is fmp4 (Fragmented MP4) or ts (MPEG-TS), &lt;code&gt;Playlists&lt;/code&gt; contains information about the master playlists that you want Elastic Transcoder to create.&lt;/p&gt; &lt;p&gt;The maximum number of master playlists in a job is 30.&lt;/p&gt;
-- @param Outputs [JobOutputs] &lt;p&gt;Information about the output files. We recommend that you use the &lt;code&gt;Outputs&lt;/code&gt; syntax for all jobs, even when you want Elastic Transcoder to transcode a file into only one format. Do not use both the &lt;code&gt;Outputs&lt;/code&gt; and &lt;code&gt;Output&lt;/code&gt; syntaxes in the same request. You can create a maximum of 30 outputs per job. &lt;/p&gt; &lt;p&gt;If you specify more than one output for a job, Elastic Transcoder creates the files for each output in the order in which you specify them in the job.&lt;/p&gt;
-- @param PipelineId [Id] &lt;p&gt; The &lt;code&gt;Id&lt;/code&gt; of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files. &lt;/p&gt;
-- @param OutputKeyPrefix [Key] &lt;p&gt;The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists. We recommend that you add a / or some other delimiter to the end of the &lt;code&gt;OutputKeyPrefix&lt;/code&gt;.&lt;/p&gt;
-- @param UserMetadata [UserMetadata] &lt;p&gt;User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in &lt;code&gt;key/value&lt;/code&gt; pairs, and you can add up to 10 &lt;code&gt;key/value&lt;/code&gt; pairs per job. Elastic Transcoder does not guarantee that &lt;code&gt;key/value&lt;/code&gt; pairs are returned in the same order in which you specify them.&lt;/p&gt; &lt;p&gt;Metadata &lt;code&gt;keys&lt;/code&gt; and &lt;code&gt;values&lt;/code&gt; must use characters from the following list:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;0-9&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;A-Z&lt;/code&gt; and &lt;code&gt;a-z&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Space&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The following symbols: &lt;code&gt;_.:/=+-%@&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Output [JobOutput] &lt;p&gt;If you specified one output for a job, information about that output. If you specified multiple outputs for a job, the Output object lists information about the first output. This duplicates the information that is listed for the first output in the Outputs object.&lt;/p&gt; &lt;important&gt; &lt;p&gt;Outputs recommended instead.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;A section of the request or response body that provides information about the transcoded (target) file. &lt;/p&gt;
-- @param Timing [Timing] &lt;p&gt;Details about the timing of a job.&lt;/p&gt;
-- @param Input [JobInput] &lt;p&gt;A section of the request or response body that provides information about the file that is being transcoded.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The identifier that Elastic Transcoder assigned to the job. You use this value to get settings for the job or to delete the job.&lt;/p&gt;
-- @param Arn [String] &lt;p&gt;The Amazon Resource Name (ARN) for the job.&lt;/p&gt;
function M.Job(Status, Inputs, Playlists, Outputs, PipelineId, OutputKeyPrefix, UserMetadata, Output, Timing, Input, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Job")
	local t = { 
		["Status"] = Status,
		["Inputs"] = Inputs,
		["Playlists"] = Playlists,
		["Outputs"] = Outputs,
		["PipelineId"] = PipelineId,
		["OutputKeyPrefix"] = OutputKeyPrefix,
		["UserMetadata"] = UserMetadata,
		["Output"] = Output,
		["Timing"] = Timing,
		["Input"] = Input,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertJob(t)
	return t
end

local ReadPipelineResponse_keys = { "Pipeline" = true, "Warnings" = true, nil }

function M.AssertReadPipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadPipelineResponse to be of type 'table'")
	if struct["Pipeline"] then M.AssertPipeline(struct["Pipeline"]) end
	if struct["Warnings"] then M.AssertWarnings(struct["Warnings"]) end
	for k,_ in pairs(struct) do
		assert(ReadPipelineResponse_keys[k], "ReadPipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadPipelineResponse
-- &lt;p&gt;The &lt;code&gt;ReadPipelineResponse&lt;/code&gt; structure.&lt;/p&gt;
-- @param Pipeline [Pipeline] &lt;p&gt;A section of the response body that provides information about the pipeline.&lt;/p&gt;
-- @param Warnings [Warnings] &lt;p&gt;Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.&lt;/p&gt; &lt;p&gt;Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.&lt;/p&gt;
function M.ReadPipelineResponse(Pipeline, Warnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReadPipelineResponse")
	local t = { 
		["Pipeline"] = Pipeline,
		["Warnings"] = Warnings,
	}
	M.AssertReadPipelineResponse(t)
	return t
end

local ListPipelinesRequest_keys = { "PageToken" = true, "Ascending" = true, nil }

function M.AssertListPipelinesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesRequest to be of type 'table'")
	if struct["PageToken"] then M.AssertId(struct["PageToken"]) end
	if struct["Ascending"] then M.AssertAscending(struct["Ascending"]) end
	for k,_ in pairs(struct) do
		assert(ListPipelinesRequest_keys[k], "ListPipelinesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesRequest
-- &lt;p&gt;The &lt;code&gt;ListPipelineRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param PageToken [Id] &lt;p&gt;When Elastic Transcoder returns more than one page of results, use &lt;code&gt;pageToken&lt;/code&gt; in subsequent &lt;code&gt;GET&lt;/code&gt; requests to get each successive page of results. &lt;/p&gt;
-- @param Ascending [Ascending] &lt;p&gt;To list pipelines in chronological order by the date and time that they were created, enter &lt;code&gt;true&lt;/code&gt;. To list pipelines in reverse chronological order, enter &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
function M.ListPipelinesRequest(PageToken, Ascending, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelinesRequest")
	local t = { 
		["PageToken"] = PageToken,
		["Ascending"] = Ascending,
	}
	M.AssertListPipelinesRequest(t)
	return t
end

local ListPresetsRequest_keys = { "PageToken" = true, "Ascending" = true, nil }

function M.AssertListPresetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPresetsRequest to be of type 'table'")
	if struct["PageToken"] then M.AssertId(struct["PageToken"]) end
	if struct["Ascending"] then M.AssertAscending(struct["Ascending"]) end
	for k,_ in pairs(struct) do
		assert(ListPresetsRequest_keys[k], "ListPresetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPresetsRequest
-- &lt;p&gt;The &lt;code&gt;ListPresetsRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param PageToken [Id] &lt;p&gt;When Elastic Transcoder returns more than one page of results, use &lt;code&gt;pageToken&lt;/code&gt; in subsequent &lt;code&gt;GET&lt;/code&gt; requests to get each successive page of results. &lt;/p&gt;
-- @param Ascending [Ascending] &lt;p&gt;To list presets in chronological order by the date and time that they were created, enter &lt;code&gt;true&lt;/code&gt;. To list presets in reverse chronological order, enter &lt;code&gt;false&lt;/code&gt;.&lt;/p&gt;
function M.ListPresetsRequest(PageToken, Ascending, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPresetsRequest")
	local t = { 
		["PageToken"] = PageToken,
		["Ascending"] = Ascending,
	}
	M.AssertListPresetsRequest(t)
	return t
end

local UpdatePipelineResponse_keys = { "Pipeline" = true, "Warnings" = true, nil }

function M.AssertUpdatePipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineResponse to be of type 'table'")
	if struct["Pipeline"] then M.AssertPipeline(struct["Pipeline"]) end
	if struct["Warnings"] then M.AssertWarnings(struct["Warnings"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePipelineResponse_keys[k], "UpdatePipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineResponse
-- &lt;p&gt;When you update a pipeline, Elastic Transcoder returns the values that you specified in the request.&lt;/p&gt;
-- @param Pipeline [Pipeline] &lt;p&gt;The pipeline updated by this &lt;code&gt;UpdatePipelineResponse&lt;/code&gt; call.&lt;/p&gt;
-- @param Warnings [Warnings] &lt;p&gt;Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.&lt;/p&gt; &lt;p&gt;Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.&lt;/p&gt;
function M.UpdatePipelineResponse(Pipeline, Warnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePipelineResponse")
	local t = { 
		["Pipeline"] = Pipeline,
		["Warnings"] = Warnings,
	}
	M.AssertUpdatePipelineResponse(t)
	return t
end

local UpdatePipelineNotificationsRequest_keys = { "Notifications" = true, "Id" = true, nil }

function M.AssertUpdatePipelineNotificationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineNotificationsRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Notifications"], "Expected key Notifications to exist in table")
	if struct["Notifications"] then M.AssertNotifications(struct["Notifications"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePipelineNotificationsRequest_keys[k], "UpdatePipelineNotificationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineNotificationsRequest
-- &lt;p&gt;The &lt;code&gt;UpdatePipelineNotificationsRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Notifications [Notifications] &lt;p&gt;The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.&lt;/p&gt; &lt;important&gt; &lt;p&gt;To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.&lt;/p&gt; &lt;/important&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Progressing&lt;/b&gt;: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Completed&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Warning&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Error&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Id [Id] &lt;p&gt;The identifier of the pipeline for which you want to change notification settings.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Notifications
function M.UpdatePipelineNotificationsRequest(Notifications, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePipelineNotificationsRequest")
	local t = { 
		["Notifications"] = Notifications,
		["Id"] = Id,
	}
	M.AssertUpdatePipelineNotificationsRequest(t)
	return t
end

local PresetWatermark_keys = { "SizingPolicy" = true, "VerticalOffset" = true, "VerticalAlign" = true, "Target" = true, "MaxWidth" = true, "MaxHeight" = true, "HorizontalAlign" = true, "HorizontalOffset" = true, "Opacity" = true, "Id" = true, nil }

function M.AssertPresetWatermark(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PresetWatermark to be of type 'table'")
	if struct["SizingPolicy"] then M.AssertWatermarkSizingPolicy(struct["SizingPolicy"]) end
	if struct["VerticalOffset"] then M.AssertPixelsOrPercent(struct["VerticalOffset"]) end
	if struct["VerticalAlign"] then M.AssertVerticalAlign(struct["VerticalAlign"]) end
	if struct["Target"] then M.AssertTarget(struct["Target"]) end
	if struct["MaxWidth"] then M.AssertPixelsOrPercent(struct["MaxWidth"]) end
	if struct["MaxHeight"] then M.AssertPixelsOrPercent(struct["MaxHeight"]) end
	if struct["HorizontalAlign"] then M.AssertHorizontalAlign(struct["HorizontalAlign"]) end
	if struct["HorizontalOffset"] then M.AssertPixelsOrPercent(struct["HorizontalOffset"]) end
	if struct["Opacity"] then M.AssertOpacity(struct["Opacity"]) end
	if struct["Id"] then M.AssertPresetWatermarkId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(PresetWatermark_keys[k], "PresetWatermark contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PresetWatermark
-- &lt;p&gt;Settings for the size, location, and opacity of graphics that you want Elastic Transcoder to overlay over videos that are transcoded using this preset. You can specify settings for up to four watermarks. Watermarks appear in the specified size and location, and with the specified opacity for the duration of the transcoded video.&lt;/p&gt; &lt;p&gt;Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.&lt;/p&gt; &lt;p&gt;When you create a job that uses this preset, you specify the .png or .jpg graphics that you want Elastic Transcoder to include in the transcoded videos. You can specify fewer graphics in the job than you specify watermark settings in the preset, which allows you to use the same preset for up to four watermarks that have different dimensions.&lt;/p&gt;
-- @param SizingPolicy [WatermarkSizingPolicy] &lt;p&gt;A value that controls scaling of the watermark: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Fit&lt;/b&gt;: Elastic Transcoder scales the watermark so it matches the value that you specified in either &lt;code&gt;MaxWidth&lt;/code&gt; or &lt;code&gt;MaxHeight&lt;/code&gt; without exceeding the other value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Stretch&lt;/b&gt;: Elastic Transcoder stretches the watermark to match the values that you specified for &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;. If the relative proportions of the watermark and the values of &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; are different, the watermark will be distorted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;ShrinkToFit&lt;/b&gt;: Elastic Transcoder scales the watermark down so that its dimensions match the values that you specified for at least one of &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; without exceeding either value. If you specify this option, Elastic Transcoder does not scale the watermark up.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param VerticalOffset [PixelsOrPercent] &lt;p&gt; &lt;code&gt;VerticalOffset&lt;/code&gt; &lt;/p&gt; &lt;p&gt;The amount by which you want the vertical position of the watermark to be offset from the position specified by VerticalAlign:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;number of pixels (px): The minimum value is 0 pixels, and the maximum value is the value of &lt;code&gt;MaxHeight&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;integer percentage (%): The range of valid values is 0 to 100.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For example, if you specify &lt;code&gt;Top&lt;/code&gt; for &lt;code&gt;VerticalAlign&lt;/code&gt; and &lt;code&gt;5px&lt;/code&gt; for &lt;code&gt;VerticalOffset&lt;/code&gt;, the top of the watermark appears 5 pixels from the top border of the output video.&lt;/p&gt; &lt;p&gt; &lt;code&gt;VerticalOffset&lt;/code&gt; is only valid when the value of VerticalAlign is Top or Bottom.&lt;/p&gt; &lt;p&gt;If you specify an offset that causes the watermark to extend beyond the top or bottom border and Elastic Transcoder has not added black bars, the watermark is cropped. If Elastic Transcoder has added black bars, the watermark extends into the black bars. If the watermark extends beyond the black bars, it is cropped.&lt;/p&gt; &lt;p&gt;Use the value of &lt;code&gt;Target&lt;/code&gt; to specify whether you want Elastic Transcoder to include the black bars that are added by Elastic Transcoder, if any, in the offset calculation.&lt;/p&gt;
-- @param VerticalAlign [VerticalAlign] &lt;p&gt;The vertical position of the watermark unless you specify a non-zero value for &lt;code&gt;VerticalOffset&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Top&lt;/b&gt;: The top edge of the watermark is aligned with the top border of the video.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Bottom&lt;/b&gt;: The bottom edge of the watermark is aligned with the bottom border of the video.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Center&lt;/b&gt;: The watermark is centered between the top and bottom borders.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Target [Target] &lt;p&gt;A value that determines how Elastic Transcoder interprets values that you specified for &lt;code&gt;HorizontalOffset&lt;/code&gt;, &lt;code&gt;VerticalOffset&lt;/code&gt;, &lt;code&gt;MaxWidth&lt;/code&gt;, and &lt;code&gt;MaxHeight&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Content&lt;/b&gt;: &lt;code&gt;HorizontalOffset&lt;/code&gt; and &lt;code&gt;VerticalOffset&lt;/code&gt; values are calculated based on the borders of the video excluding black bars added by Elastic Transcoder, if any. In addition, &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;, if specified as a percentage, are calculated based on the borders of the video excluding black bars added by Elastic Transcoder, if any.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Frame&lt;/b&gt;: &lt;code&gt;HorizontalOffset&lt;/code&gt; and &lt;code&gt;VerticalOffset&lt;/code&gt; values are calculated based on the borders of the video including black bars added by Elastic Transcoder, if any. In addition, &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;, if specified as a percentage, are calculated based on the borders of the video including black bars added by Elastic Transcoder, if any.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MaxWidth [PixelsOrPercent] &lt;p&gt;The maximum width of the watermark in one of the following formats: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;number of pixels (px): The minimum value is 16 pixels, and the maximum value is the value of &lt;code&gt;MaxWidth&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;integer percentage (%): The range of valid values is 0 to 100. Use the value of &lt;code&gt;Target&lt;/code&gt; to specify whether you want Elastic Transcoder to include the black bars that are added by Elastic Transcoder, if any, in the calculation.&lt;/p&gt; &lt;p&gt;If you specify the value in pixels, it must be less than or equal to the value of &lt;code&gt;MaxWidth&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MaxHeight [PixelsOrPercent] &lt;p&gt;The maximum height of the watermark in one of the following formats: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;number of pixels (px): The minimum value is 16 pixels, and the maximum value is the value of &lt;code&gt;MaxHeight&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;integer percentage (%): The range of valid values is 0 to 100. Use the value of &lt;code&gt;Target&lt;/code&gt; to specify whether you want Elastic Transcoder to include the black bars that are added by Elastic Transcoder, if any, in the calculation.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you specify the value in pixels, it must be less than or equal to the value of &lt;code&gt;MaxHeight&lt;/code&gt;.&lt;/p&gt;
-- @param HorizontalAlign [HorizontalAlign] &lt;p&gt;The horizontal position of the watermark unless you specify a non-zero value for &lt;code&gt;HorizontalOffset&lt;/code&gt;: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Left&lt;/b&gt;: The left edge of the watermark is aligned with the left border of the video.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Right&lt;/b&gt;: The right edge of the watermark is aligned with the right border of the video.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Center&lt;/b&gt;: The watermark is centered between the left and right borders.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param HorizontalOffset [PixelsOrPercent] &lt;p&gt;The amount by which you want the horizontal position of the watermark to be offset from the position specified by HorizontalAlign: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;number of pixels (px): The minimum value is 0 pixels, and the maximum value is the value of MaxWidth.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;integer percentage (%): The range of valid values is 0 to 100.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For example, if you specify Left for &lt;code&gt;HorizontalAlign&lt;/code&gt; and 5px for &lt;code&gt;HorizontalOffset&lt;/code&gt;, the left side of the watermark appears 5 pixels from the left border of the output video.&lt;/p&gt; &lt;p&gt; &lt;code&gt;HorizontalOffset&lt;/code&gt; is only valid when the value of &lt;code&gt;HorizontalAlign&lt;/code&gt; is &lt;code&gt;Left&lt;/code&gt; or &lt;code&gt;Right&lt;/code&gt;. If you specify an offset that causes the watermark to extend beyond the left or right border and Elastic Transcoder has not added black bars, the watermark is cropped. If Elastic Transcoder has added black bars, the watermark extends into the black bars. If the watermark extends beyond the black bars, it is cropped.&lt;/p&gt; &lt;p&gt;Use the value of &lt;code&gt;Target&lt;/code&gt; to specify whether you want to include the black bars that are added by Elastic Transcoder, if any, in the offset calculation.&lt;/p&gt;
-- @param Opacity [Opacity] &lt;p&gt;A percentage that indicates how much you want a watermark to obscure the video in the location where it appears. Valid values are 0 (the watermark is invisible) to 100 (the watermark completely obscures the video in the specified location). The datatype of &lt;code&gt;Opacity&lt;/code&gt; is float.&lt;/p&gt; &lt;p&gt;Elastic Transcoder supports transparent .png graphics. If you use a transparent .png, the transparent portion of the video appears as if you had specified a value of 0 for &lt;code&gt;Opacity&lt;/code&gt;. The .jpg file format doesn't support transparency.&lt;/p&gt;
-- @param Id [PresetWatermarkId] &lt;p&gt; A unique identifier for the settings for one watermark. The value of &lt;code&gt;Id&lt;/code&gt; can be up to 40 characters long. &lt;/p&gt;
function M.PresetWatermark(SizingPolicy, VerticalOffset, VerticalAlign, Target, MaxWidth, MaxHeight, HorizontalAlign, HorizontalOffset, Opacity, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PresetWatermark")
	local t = { 
		["SizingPolicy"] = SizingPolicy,
		["VerticalOffset"] = VerticalOffset,
		["VerticalAlign"] = VerticalAlign,
		["Target"] = Target,
		["MaxWidth"] = MaxWidth,
		["MaxHeight"] = MaxHeight,
		["HorizontalAlign"] = HorizontalAlign,
		["HorizontalOffset"] = HorizontalOffset,
		["Opacity"] = Opacity,
		["Id"] = Id,
	}
	M.AssertPresetWatermark(t)
	return t
end

local DetectedProperties_keys = { "Width" = true, "DurationMillis" = true, "FrameRate" = true, "FileSize" = true, "Height" = true, nil }

function M.AssertDetectedProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectedProperties to be of type 'table'")
	if struct["Width"] then M.AssertNullableInteger(struct["Width"]) end
	if struct["DurationMillis"] then M.AssertNullableLong(struct["DurationMillis"]) end
	if struct["FrameRate"] then M.AssertFloatString(struct["FrameRate"]) end
	if struct["FileSize"] then M.AssertNullableLong(struct["FileSize"]) end
	if struct["Height"] then M.AssertNullableInteger(struct["Height"]) end
	for k,_ in pairs(struct) do
		assert(DetectedProperties_keys[k], "DetectedProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectedProperties
-- &lt;p&gt;The detected properties of the input file. Elastic Transcoder identifies these values from the input file.&lt;/p&gt;
-- @param Width [NullableInteger] &lt;p&gt;The detected width of the input file, in pixels.&lt;/p&gt;
-- @param DurationMillis [NullableLong] &lt;p&gt;The detected duration of the input file, in milliseconds.&lt;/p&gt;
-- @param FrameRate [FloatString] &lt;p&gt;The detected frame rate of the input file, in frames per second.&lt;/p&gt;
-- @param FileSize [NullableLong] &lt;p&gt;The detected file size of the input file, in bytes.&lt;/p&gt;
-- @param Height [NullableInteger] &lt;p&gt;The detected height of the input file, in pixels.&lt;/p&gt;
function M.DetectedProperties(Width, DurationMillis, FrameRate, FileSize, Height, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DetectedProperties")
	local t = { 
		["Width"] = Width,
		["DurationMillis"] = DurationMillis,
		["FrameRate"] = FrameRate,
		["FileSize"] = FileSize,
		["Height"] = Height,
	}
	M.AssertDetectedProperties(t)
	return t
end

local Clip_keys = { "TimeSpan" = true, nil }

function M.AssertClip(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Clip to be of type 'table'")
	if struct["TimeSpan"] then M.AssertTimeSpan(struct["TimeSpan"]) end
	for k,_ in pairs(struct) do
		assert(Clip_keys[k], "Clip contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Clip
-- &lt;p&gt;Settings for one clip in a composition. All jobs in a playlist must have the same clip settings.&lt;/p&gt;
-- @param TimeSpan [TimeSpan] &lt;p&gt;Settings that determine when a clip begins and how long it lasts.&lt;/p&gt;
function M.Clip(TimeSpan, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Clip")
	local t = { 
		["TimeSpan"] = TimeSpan,
	}
	M.AssertClip(t)
	return t
end

local DeletePipelineResponse_keys = { nil }

function M.AssertDeletePipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeletePipelineResponse_keys[k], "DeletePipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineResponse
-- &lt;p&gt;The &lt;code&gt;DeletePipelineResponse&lt;/code&gt; structure.&lt;/p&gt;
function M.DeletePipelineResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePipelineResponse")
	local t = { 
	}
	M.AssertDeletePipelineResponse(t)
	return t
end

local LimitExceededException_keys = { nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;Too many operations for a given AWS account. For example, the number of pipelines exceeds the maximum allowed.&lt;/p&gt;
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local VideoParameters_keys = { "SizingPolicy" = true, "MaxWidth" = true, "PaddingPolicy" = true, "Resolution" = true, "MaxFrameRate" = true, "FrameRate" = true, "MaxHeight" = true, "KeyframesMaxDist" = true, "FixedGOP" = true, "Codec" = true, "Watermarks" = true, "CodecOptions" = true, "AspectRatio" = true, "BitRate" = true, "DisplayAspectRatio" = true, nil }

function M.AssertVideoParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VideoParameters to be of type 'table'")
	if struct["SizingPolicy"] then M.AssertSizingPolicy(struct["SizingPolicy"]) end
	if struct["MaxWidth"] then M.AssertDigitsOrAuto(struct["MaxWidth"]) end
	if struct["PaddingPolicy"] then M.AssertPaddingPolicy(struct["PaddingPolicy"]) end
	if struct["Resolution"] then M.AssertResolution(struct["Resolution"]) end
	if struct["MaxFrameRate"] then M.AssertMaxFrameRate(struct["MaxFrameRate"]) end
	if struct["FrameRate"] then M.AssertFrameRate(struct["FrameRate"]) end
	if struct["MaxHeight"] then M.AssertDigitsOrAuto(struct["MaxHeight"]) end
	if struct["KeyframesMaxDist"] then M.AssertKeyframesMaxDist(struct["KeyframesMaxDist"]) end
	if struct["FixedGOP"] then M.AssertFixedGOP(struct["FixedGOP"]) end
	if struct["Codec"] then M.AssertVideoCodec(struct["Codec"]) end
	if struct["Watermarks"] then M.AssertPresetWatermarks(struct["Watermarks"]) end
	if struct["CodecOptions"] then M.AssertCodecOptions(struct["CodecOptions"]) end
	if struct["AspectRatio"] then M.AssertAspectRatio(struct["AspectRatio"]) end
	if struct["BitRate"] then M.AssertVideoBitRate(struct["BitRate"]) end
	if struct["DisplayAspectRatio"] then M.AssertAspectRatio(struct["DisplayAspectRatio"]) end
	for k,_ in pairs(struct) do
		assert(VideoParameters_keys[k], "VideoParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VideoParameters
-- &lt;p&gt;The &lt;code&gt;VideoParameters&lt;/code&gt; structure.&lt;/p&gt;
-- @param SizingPolicy [SizingPolicy] &lt;p&gt;Specify one of the following values to control scaling of the output video:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fit&lt;/code&gt;: Elastic Transcoder scales the output video so it matches the value that you specified in either &lt;code&gt;MaxWidth&lt;/code&gt; or &lt;code&gt;MaxHeight&lt;/code&gt; without exceeding the other value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fill&lt;/code&gt;: Elastic Transcoder scales the output video so it matches the value that you specified in either &lt;code&gt;MaxWidth&lt;/code&gt; or &lt;code&gt;MaxHeight&lt;/code&gt; and matches or exceeds the other value. Elastic Transcoder centers the output video and then crops it in the dimension (if any) that exceeds the maximum value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Stretch&lt;/code&gt;: Elastic Transcoder stretches the output video to match the values that you specified for &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;. If the relative proportions of the input video and the output video are different, the output video will be distorted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Keep&lt;/code&gt;: Elastic Transcoder does not scale the output video. If either dimension of the input video exceeds the values that you specified for &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;, Elastic Transcoder crops the output video.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ShrinkToFit&lt;/code&gt;: Elastic Transcoder scales the output video down so that its dimensions match the values that you specified for at least one of &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; without exceeding either value. If you specify this option, Elastic Transcoder does not scale the video up.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ShrinkToFill&lt;/code&gt;: Elastic Transcoder scales the output video down so that its dimensions match the values that you specified for at least one of &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; without dropping below either value. If you specify this option, Elastic Transcoder does not scale the video up.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MaxWidth [DigitsOrAuto] &lt;p&gt; The maximum width of the output video in pixels. If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder uses 1920 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 128 and 4096. &lt;/p&gt;
-- @param PaddingPolicy [PaddingPolicy] &lt;p&gt;When you set &lt;code&gt;PaddingPolicy&lt;/code&gt; to &lt;code&gt;Pad&lt;/code&gt;, Elastic Transcoder may add black bars to the top and bottom and/or left and right sides of the output video to make the total size of the output video match the values that you specified for &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;.&lt;/p&gt;
-- @param Resolution [Resolution] &lt;important&gt; &lt;p&gt;To better control resolution and aspect ratio of output videos, we recommend that you use the values &lt;code&gt;MaxWidth&lt;/code&gt;, &lt;code&gt;MaxHeight&lt;/code&gt;, &lt;code&gt;SizingPolicy&lt;/code&gt;, &lt;code&gt;PaddingPolicy&lt;/code&gt;, and &lt;code&gt;DisplayAspectRatio&lt;/code&gt; instead of &lt;code&gt;Resolution&lt;/code&gt; and &lt;code&gt;AspectRatio&lt;/code&gt;. The two groups of settings are mutually exclusive. Do not use them together.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;The width and height of the video in the output file, in pixels. Valid values are &lt;code&gt;auto&lt;/code&gt; and &lt;i&gt;width&lt;/i&gt; x &lt;i&gt;height&lt;/i&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;: Elastic Transcoder attempts to preserve the width and height of the input file, subject to the following rules.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt; &lt;i&gt;width&lt;/i&gt; x &lt;i&gt;height&lt;/i&gt; &lt;/code&gt;: The width and height of the output video in pixels.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Note the following about specifying the width and height:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;The width must be an even integer between 128 and 4096, inclusive.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The height must be an even integer between 96 and 3072, inclusive.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify a resolution that is less than the resolution of the input file, Elastic Transcoder rescales the output file to the lower resolution.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If you specify a resolution that is greater than the resolution of the input file, Elastic Transcoder rescales the output to the higher resolution.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;We recommend that you specify a resolution for which the product of width and height is less than or equal to the applicable value in the following list (&lt;i&gt;List - Max width x height value&lt;/i&gt;):&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;1 - 25344&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1b - 25344&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.1 - 101376&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.2 - 101376&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.3 - 101376&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2 - 101376&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2.1 - 202752&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2.2 - 404720&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3 - 404720&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3.1 - 921600&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3.2 - 1310720&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;4 - 2097152&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;4.1 - 2097152&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MaxFrameRate [MaxFrameRate] &lt;p&gt;If you specify &lt;code&gt;auto&lt;/code&gt; for &lt;code&gt;FrameRate&lt;/code&gt;, Elastic Transcoder uses the frame rate of the input video for the frame rate of the output video. Specify the maximum frame rate that you want Elastic Transcoder to use when the frame rate of the input video is greater than the desired maximum frame rate of the output video. Valid values include: &lt;code&gt;10&lt;/code&gt;, &lt;code&gt;15&lt;/code&gt;, &lt;code&gt;23.97&lt;/code&gt;, &lt;code&gt;24&lt;/code&gt;, &lt;code&gt;25&lt;/code&gt;, &lt;code&gt;29.97&lt;/code&gt;, &lt;code&gt;30&lt;/code&gt;, &lt;code&gt;60&lt;/code&gt;.&lt;/p&gt;
-- @param FrameRate [FrameRate] &lt;p&gt;The frames per second for the video stream in the output file. Valid values include:&lt;/p&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;, &lt;code&gt;10&lt;/code&gt;, &lt;code&gt;15&lt;/code&gt;, &lt;code&gt;23.97&lt;/code&gt;, &lt;code&gt;24&lt;/code&gt;, &lt;code&gt;25&lt;/code&gt;, &lt;code&gt;29.97&lt;/code&gt;, &lt;code&gt;30&lt;/code&gt;, &lt;code&gt;60&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder uses the detected frame rate of the input source. If you specify a frame rate, we recommend that you perform the following calculation:&lt;/p&gt; &lt;p&gt; &lt;code&gt;Frame rate = maximum recommended decoding speed in luma samples/second / (width in pixels * height in pixels)&lt;/code&gt; &lt;/p&gt; &lt;p&gt;where:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;width in pixels&lt;/i&gt; and &lt;i&gt;height in pixels&lt;/i&gt; represent the Resolution of the output video.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;maximum recommended decoding speed in Luma samples/second&lt;/i&gt; is less than or equal to the maximum value listed in the following table, based on the value that you specified for Level.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The maximum recommended decoding speed in Luma samples/second for each level is described in the following list (&lt;i&gt;Level - Decoding speed&lt;/i&gt;):&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;1 - 380160&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1b - 380160&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.1 - 76800&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.2 - 1536000&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.3 - 3041280&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2 - 3041280&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2.1 - 5068800&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2.2 - 5184000&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3 - 10368000&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3.1 - 27648000&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3.2 - 55296000&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;4 - 62914560&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;4.1 - 62914560&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param MaxHeight [DigitsOrAuto] &lt;p&gt;The maximum height of the output video in pixels. If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder uses 1080 (Full HD) as the default value. If you specify a numeric value, enter an even integer between 96 and 3072.&lt;/p&gt;
-- @param KeyframesMaxDist [KeyframesMaxDist] &lt;p&gt;Applicable only when the value of Video:Codec is one of &lt;code&gt;H.264&lt;/code&gt;, &lt;code&gt;MPEG2&lt;/code&gt;, or &lt;code&gt;VP8&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The maximum number of frames between key frames. Key frames are fully encoded frames; the frames between key frames are encoded based, in part, on the content of the key frames. The value is an integer formatted as a string; valid values are between 1 (every frame is a key frame) and 100000, inclusive. A higher value results in higher compression but may also discernibly decrease video quality.&lt;/p&gt; &lt;p&gt;For &lt;code&gt;Smooth&lt;/code&gt; outputs, the &lt;code&gt;FrameRate&lt;/code&gt; must have a constant ratio to the &lt;code&gt;KeyframesMaxDist&lt;/code&gt;. This allows &lt;code&gt;Smooth&lt;/code&gt; playlists to switch between different quality levels while the file is being played.&lt;/p&gt; &lt;p&gt;For example, an input file can have a &lt;code&gt;FrameRate&lt;/code&gt; of 30 with a &lt;code&gt;KeyframesMaxDist&lt;/code&gt; of 90. The output file then needs to have a ratio of 1:3. Valid outputs would have &lt;code&gt;FrameRate&lt;/code&gt; of 30, 25, and 10, and &lt;code&gt;KeyframesMaxDist&lt;/code&gt; of 90, 75, and 30, respectively.&lt;/p&gt; &lt;p&gt;Alternately, this can be achieved by setting &lt;code&gt;FrameRate&lt;/code&gt; to auto and having the same values for &lt;code&gt;MaxFrameRate&lt;/code&gt; and &lt;code&gt;KeyframesMaxDist&lt;/code&gt;.&lt;/p&gt;
-- @param FixedGOP [FixedGOP] &lt;p&gt;Applicable only when the value of Video:Codec is one of &lt;code&gt;H.264&lt;/code&gt;, &lt;code&gt;MPEG2&lt;/code&gt;, or &lt;code&gt;VP8&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;Whether to use a fixed value for &lt;code&gt;FixedGOP&lt;/code&gt;. Valid values are &lt;code&gt;true&lt;/code&gt; and &lt;code&gt;false&lt;/code&gt;:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;true&lt;/code&gt;: Elastic Transcoder uses the value of &lt;code&gt;KeyframesMaxDist&lt;/code&gt; for the distance between key frames (the number of frames in a group of pictures, or GOP).&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;false&lt;/code&gt;: The distance between key frames can vary.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;important&gt; &lt;p&gt; &lt;code&gt;FixedGOP&lt;/code&gt; must be set to &lt;code&gt;true&lt;/code&gt; for &lt;code&gt;fmp4&lt;/code&gt; containers.&lt;/p&gt; &lt;/important&gt;
-- @param Codec [VideoCodec] &lt;p&gt;The video codec for the output file. Valid values include &lt;code&gt;gif&lt;/code&gt;, &lt;code&gt;H.264&lt;/code&gt;, &lt;code&gt;mpeg2&lt;/code&gt;, &lt;code&gt;vp8&lt;/code&gt;, and &lt;code&gt;vp9&lt;/code&gt;. You can only specify &lt;code&gt;vp8&lt;/code&gt; and &lt;code&gt;vp9&lt;/code&gt; when the container type is &lt;code&gt;webm&lt;/code&gt;, &lt;code&gt;gif&lt;/code&gt; when the container type is &lt;code&gt;gif&lt;/code&gt;, and &lt;code&gt;mpeg2&lt;/code&gt; when the container type is &lt;code&gt;mpg&lt;/code&gt;.&lt;/p&gt;
-- @param Watermarks [PresetWatermarks] &lt;p&gt;Settings for the size, location, and opacity of graphics that you want Elastic Transcoder to overlay over videos that are transcoded using this preset. You can specify settings for up to four watermarks. Watermarks appear in the specified size and location, and with the specified opacity for the duration of the transcoded video.&lt;/p&gt; &lt;p&gt;Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.&lt;/p&gt; &lt;p&gt;When you create a job that uses this preset, you specify the .png or .jpg graphics that you want Elastic Transcoder to include in the transcoded videos. You can specify fewer graphics in the job than you specify watermark settings in the preset, which allows you to use the same preset for up to four watermarks that have different dimensions.&lt;/p&gt;
-- @param CodecOptions [CodecOptions] &lt;p&gt; &lt;b&gt;Profile (H.264/VP8/VP9 Only)&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The H.264 profile that you want to use for the output file. Elastic Transcoder supports the following profiles:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;baseline&lt;/code&gt;: The profile most commonly used for videoconferencing and for mobile applications.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;main&lt;/code&gt;: The profile used for standard-definition digital TV broadcasts.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;high&lt;/code&gt;: The profile used for high-definition digital TV broadcasts and for Blu-ray discs.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;Level (H.264 Only)&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The H.264 level that you want to use for the output file. Elastic Transcoder supports the following levels:&lt;/p&gt; &lt;p&gt; &lt;code&gt;1&lt;/code&gt;, &lt;code&gt;1b&lt;/code&gt;, &lt;code&gt;1.1&lt;/code&gt;, &lt;code&gt;1.2&lt;/code&gt;, &lt;code&gt;1.3&lt;/code&gt;, &lt;code&gt;2&lt;/code&gt;, &lt;code&gt;2.1&lt;/code&gt;, &lt;code&gt;2.2&lt;/code&gt;, &lt;code&gt;3&lt;/code&gt;, &lt;code&gt;3.1&lt;/code&gt;, &lt;code&gt;3.2&lt;/code&gt;, &lt;code&gt;4&lt;/code&gt;, &lt;code&gt;4.1&lt;/code&gt; &lt;/p&gt; &lt;p&gt; &lt;b&gt;MaxReferenceFrames (H.264 Only)&lt;/b&gt; &lt;/p&gt; &lt;p&gt;Applicable only when the value of Video:Codec is H.264. The maximum number of previously decoded frames to use as a reference for decoding future frames. Valid values are integers 0 through 16, but we recommend that you not use a value greater than the following:&lt;/p&gt; &lt;p&gt; &lt;code&gt;Min(Floor(Maximum decoded picture buffer in macroblocks * 256 / (Width in pixels * Height in pixels)), 16)&lt;/code&gt; &lt;/p&gt; &lt;p&gt;where &lt;i&gt;Width in pixels&lt;/i&gt; and &lt;i&gt;Height in pixels&lt;/i&gt; represent either MaxWidth and MaxHeight, or Resolution. &lt;i&gt;Maximum decoded picture buffer in macroblocks&lt;/i&gt; depends on the value of the &lt;code&gt;Level&lt;/code&gt; object. See the list below. (A macroblock is a block of pixels measuring 16x16.) &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;1 - 396&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1b - 396&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.1 - 900&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.2 - 2376&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.3 - 2376&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2 - 2376&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2.1 - 4752&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2.2 - 8100&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3 - 8100&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3.1 - 18000&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3.2 - 20480&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;4 - 32768&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;4.1 - 32768&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;b&gt;MaxBitRate (Optional, H.264/MPEG2/VP8/VP9 only)&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The maximum number of bits per second in a video buffer; the size of the buffer is specified by &lt;code&gt;BufferSize&lt;/code&gt;. Specify a value between 16 and 62,500. You can reduce the bandwidth required to stream a video by reducing the maximum bit rate, but this also reduces the quality of the video.&lt;/p&gt; &lt;p&gt; &lt;b&gt;BufferSize (Optional, H.264/MPEG2/VP8/VP9 only)&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The maximum number of bits in any x seconds of the output video. This window is commonly 10 seconds, the standard segment duration when you're using FMP4 or MPEG-TS for the container type of the output video. Specify an integer greater than 0. If you specify &lt;code&gt;MaxBitRate&lt;/code&gt; and omit &lt;code&gt;BufferSize&lt;/code&gt;, Elastic Transcoder sets &lt;code&gt;BufferSize&lt;/code&gt; to 10 times the value of &lt;code&gt;MaxBitRate&lt;/code&gt;.&lt;/p&gt; &lt;p&gt; &lt;b&gt;InterlacedMode (Optional, H.264/MPEG2 Only)&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The interlace mode for the output video.&lt;/p&gt; &lt;p&gt;Interlaced video is used to double the perceived frame rate for a video by interlacing two fields (one field on every other line, the other field on the other lines) so that the human eye registers multiple pictures per frame. Interlacing reduces the bandwidth required for transmitting a video, but can result in blurred images and flickering.&lt;/p&gt; &lt;p&gt;Valid values include &lt;code&gt;Progressive&lt;/code&gt; (no interlacing, top to bottom), &lt;code&gt;TopFirst&lt;/code&gt; (top field first), &lt;code&gt;BottomFirst&lt;/code&gt; (bottom field first), and &lt;code&gt;Auto&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If &lt;code&gt;InterlaceMode&lt;/code&gt; is not specified, Elastic Transcoder uses &lt;code&gt;Progressive&lt;/code&gt; for the output. If &lt;code&gt;Auto&lt;/code&gt; is specified, Elastic Transcoder interlaces the output.&lt;/p&gt; &lt;p&gt; &lt;b&gt;ColorSpaceConversionMode (Optional, H.264/MPEG2 Only)&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The color space conversion Elastic Transcoder applies to the output video. Color spaces are the algorithms used by the computer to store information about how to render color. &lt;code&gt;Bt.601&lt;/code&gt; is the standard for standard definition video, while &lt;code&gt;Bt.709&lt;/code&gt; is the standard for high definition video.&lt;/p&gt; &lt;p&gt;Valid values include &lt;code&gt;None&lt;/code&gt;, &lt;code&gt;Bt709toBt601&lt;/code&gt;, &lt;code&gt;Bt601toBt709&lt;/code&gt;, and &lt;code&gt;Auto&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you chose &lt;code&gt;Auto&lt;/code&gt; for &lt;code&gt;ColorSpaceConversionMode&lt;/code&gt; and your output is interlaced, your frame rate is one of &lt;code&gt;23.97&lt;/code&gt;, &lt;code&gt;24&lt;/code&gt;, &lt;code&gt;25&lt;/code&gt;, &lt;code&gt;29.97&lt;/code&gt;, &lt;code&gt;50&lt;/code&gt;, or &lt;code&gt;60&lt;/code&gt;, your &lt;code&gt;SegmentDuration&lt;/code&gt; is null, and you are using one of the resolution changes from the list below, Elastic Transcoder applies the following color space conversions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;Standard to HD, 720x480 to 1920x1080&lt;/i&gt; - Elastic Transcoder applies &lt;code&gt;Bt601ToBt709&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;Standard to HD, 720x576 to 1920x1080&lt;/i&gt; - Elastic Transcoder applies &lt;code&gt;Bt601ToBt709&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;HD to Standard, 1920x1080 to 720x480&lt;/i&gt; - Elastic Transcoder applies &lt;code&gt;Bt709ToBt601&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;HD to Standard, 1920x1080 to 720x576&lt;/i&gt; - Elastic Transcoder applies &lt;code&gt;Bt709ToBt601&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;Elastic Transcoder may change the behavior of the &lt;code&gt;ColorspaceConversionMode&lt;/code&gt; &lt;code&gt;Auto&lt;/code&gt; mode in the future. All outputs in a playlist must use the same &lt;code&gt;ColorSpaceConversionMode&lt;/code&gt;.&lt;/p&gt; &lt;/note&gt; &lt;p&gt;If you do not specify a &lt;code&gt;ColorSpaceConversionMode&lt;/code&gt;, Elastic Transcoder does not change the color space of a file. If you are unsure what &lt;code&gt;ColorSpaceConversionMode&lt;/code&gt; was applied to your output file, you can check the &lt;code&gt;AppliedColorSpaceConversion&lt;/code&gt; parameter included in your job response. If your job does not have an &lt;code&gt;AppliedColorSpaceConversion&lt;/code&gt; in its response, no &lt;code&gt;ColorSpaceConversionMode&lt;/code&gt; was applied.&lt;/p&gt; &lt;p&gt; &lt;b&gt;ChromaSubsampling&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The sampling pattern for the chroma (color) channels of the output video. Valid values include &lt;code&gt;yuv420p&lt;/code&gt; and &lt;code&gt;yuv422p&lt;/code&gt;.&lt;/p&gt; &lt;p&gt; &lt;code&gt;yuv420p&lt;/code&gt; samples the chroma information of every other horizontal and every other vertical line, &lt;code&gt;yuv422p&lt;/code&gt; samples the color information of every horizontal line and every other vertical line.&lt;/p&gt; &lt;p&gt; &lt;b&gt;LoopCount (Gif Only)&lt;/b&gt; &lt;/p&gt; &lt;p&gt;The number of times you want the output gif to loop. Valid values include &lt;code&gt;Infinite&lt;/code&gt; and integers between &lt;code&gt;0&lt;/code&gt; and &lt;code&gt;100&lt;/code&gt;, inclusive.&lt;/p&gt;
-- @param AspectRatio [AspectRatio] &lt;important&gt; &lt;p&gt;To better control resolution and aspect ratio of output videos, we recommend that you use the values &lt;code&gt;MaxWidth&lt;/code&gt;, &lt;code&gt;MaxHeight&lt;/code&gt;, &lt;code&gt;SizingPolicy&lt;/code&gt;, &lt;code&gt;PaddingPolicy&lt;/code&gt;, and &lt;code&gt;DisplayAspectRatio&lt;/code&gt; instead of &lt;code&gt;Resolution&lt;/code&gt; and &lt;code&gt;AspectRatio&lt;/code&gt;. The two groups of settings are mutually exclusive. Do not use them together.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;The display aspect ratio of the video in the output file. Valid values include:&lt;/p&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;, &lt;code&gt;1:1&lt;/code&gt;, &lt;code&gt;4:3&lt;/code&gt;, &lt;code&gt;3:2&lt;/code&gt;, &lt;code&gt;16:9&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder tries to preserve the aspect ratio of the input file.&lt;/p&gt; &lt;p&gt;If you specify an aspect ratio for the output file that differs from aspect ratio of the input file, Elastic Transcoder adds pillarboxing (black bars on the sides) or letterboxing (black bars on the top and bottom) to maintain the aspect ratio of the active region of the video.&lt;/p&gt;
-- @param BitRate [VideoBitRate] &lt;p&gt;The bit rate of the video stream in the output file, in kilobits/second. Valid values depend on the values of &lt;code&gt;Level&lt;/code&gt; and &lt;code&gt;Profile&lt;/code&gt;. If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder uses the detected bit rate of the input source. If you specify a value other than &lt;code&gt;auto&lt;/code&gt;, we recommend that you specify a value less than or equal to the maximum H.264-compliant value listed for your level and profile:&lt;/p&gt; &lt;p&gt; &lt;i&gt;Level - Maximum video bit rate in kilobits/second (baseline and main Profile) : maximum video bit rate in kilobits/second (high Profile)&lt;/i&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;1 - 64 : 80&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1b - 128 : 160&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.1 - 192 : 240&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.2 - 384 : 480&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;1.3 - 768 : 960&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;2 - 2000 : 2500&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3 - 10000 : 12500&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3.1 - 14000 : 17500&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3.2 - 20000 : 25000&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;4 - 20000 : 25000&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;4.1 - 50000 : 62500&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param DisplayAspectRatio [AspectRatio] &lt;p&gt;The value that Elastic Transcoder adds to the metadata in the output file.&lt;/p&gt;
function M.VideoParameters(SizingPolicy, MaxWidth, PaddingPolicy, Resolution, MaxFrameRate, FrameRate, MaxHeight, KeyframesMaxDist, FixedGOP, Codec, Watermarks, CodecOptions, AspectRatio, BitRate, DisplayAspectRatio, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating VideoParameters")
	local t = { 
		["SizingPolicy"] = SizingPolicy,
		["MaxWidth"] = MaxWidth,
		["PaddingPolicy"] = PaddingPolicy,
		["Resolution"] = Resolution,
		["MaxFrameRate"] = MaxFrameRate,
		["FrameRate"] = FrameRate,
		["MaxHeight"] = MaxHeight,
		["KeyframesMaxDist"] = KeyframesMaxDist,
		["FixedGOP"] = FixedGOP,
		["Codec"] = Codec,
		["Watermarks"] = Watermarks,
		["CodecOptions"] = CodecOptions,
		["AspectRatio"] = AspectRatio,
		["BitRate"] = BitRate,
		["DisplayAspectRatio"] = DisplayAspectRatio,
	}
	M.AssertVideoParameters(t)
	return t
end

local ValidationException_keys = { nil }

function M.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ValidationException_keys[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- &lt;p&gt;One or more required parameter values were not provided in the request.&lt;/p&gt;
function M.ValidationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
	}
	M.AssertValidationException(t)
	return t
end

local ResourceInUseException_keys = { nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- &lt;p&gt;The resource you are attempting to change is in use. For example, you are attempting to delete a pipeline that is currently in use.&lt;/p&gt;
function M.ResourceInUseException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
	}
	M.AssertResourceInUseException(t)
	return t
end

local CreatePipelineRequest_keys = { "ContentConfig" = true, "ThumbnailConfig" = true, "Name" = true, "Notifications" = true, "AwsKmsKeyArn" = true, "InputBucket" = true, "OutputBucket" = true, "Role" = true, nil }

function M.AssertCreatePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["InputBucket"], "Expected key InputBucket to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	if struct["ContentConfig"] then M.AssertPipelineOutputConfig(struct["ContentConfig"]) end
	if struct["ThumbnailConfig"] then M.AssertPipelineOutputConfig(struct["ThumbnailConfig"]) end
	if struct["Name"] then M.AssertName(struct["Name"]) end
	if struct["Notifications"] then M.AssertNotifications(struct["Notifications"]) end
	if struct["AwsKmsKeyArn"] then M.AssertKeyArn(struct["AwsKmsKeyArn"]) end
	if struct["InputBucket"] then M.AssertBucketName(struct["InputBucket"]) end
	if struct["OutputBucket"] then M.AssertBucketName(struct["OutputBucket"]) end
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	for k,_ in pairs(struct) do
		assert(CreatePipelineRequest_keys[k], "CreatePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineRequest
-- &lt;p&gt;The &lt;code&gt;CreatePipelineRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param ContentConfig [PipelineOutputConfig] &lt;p&gt;The optional &lt;code&gt;ContentConfig&lt;/code&gt; object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists: which bucket to use, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.&lt;/p&gt; &lt;p&gt;If you specify values for &lt;code&gt;ContentConfig&lt;/code&gt;, you must also specify values for &lt;code&gt;ThumbnailConfig&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you specify values for &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt;, omit the &lt;code&gt;OutputBucket&lt;/code&gt; object.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Bucket&lt;/b&gt;: The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Permissions&lt;/b&gt; (Optional): The Permissions object specifies which users you want to have access to transcoded files and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Grantee Type&lt;/b&gt;: Specify the type of value that appears in the &lt;code&gt;Grantee&lt;/code&gt; object: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Canonical&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution. For more information about canonical user IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage Service Developer Guide. For more information about using CloudFront origin access identities to require that users use CloudFront URLs instead of Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content.&lt;/p&gt; &lt;important&gt; &lt;p&gt;A canonical user ID is not the same as an AWS account number.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Email&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is the registered email address of an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Group&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is one of the following predefined Amazon S3 groups: &lt;code&gt;AllUsers&lt;/code&gt;, &lt;code&gt;AuthenticatedUsers&lt;/code&gt;, or &lt;code&gt;LogDelivery&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Grantee&lt;/b&gt;: The AWS user or group that you want to have access to transcoded files and playlists. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Access&lt;/b&gt;: The permission that you want to give to the AWS user that you specified in &lt;code&gt;Grantee&lt;/code&gt;. Permissions are granted on the files that Elastic Transcoder adds to the bucket, including playlists and video files. Valid values include: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ&lt;/code&gt;: The grantee can read the objects and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ_ACP&lt;/code&gt;: The grantee can read the object ACL for objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;WRITE_ACP&lt;/code&gt;: The grantee can write the ACL for the objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FULL_CONTROL&lt;/code&gt;: The grantee has &lt;code&gt;READ&lt;/code&gt;, &lt;code&gt;READ_ACP&lt;/code&gt;, and &lt;code&gt;WRITE_ACP&lt;/code&gt; permissions for the objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;StorageClass&lt;/b&gt;: The Amazon S3 storage class, &lt;code&gt;Standard&lt;/code&gt; or &lt;code&gt;ReducedRedundancy&lt;/code&gt;, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ThumbnailConfig [PipelineOutputConfig] &lt;p&gt;The &lt;code&gt;ThumbnailConfig&lt;/code&gt; object specifies several values, including the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.&lt;/p&gt; &lt;p&gt;If you specify values for &lt;code&gt;ContentConfig&lt;/code&gt;, you must also specify values for &lt;code&gt;ThumbnailConfig&lt;/code&gt; even if you don't want to create thumbnails.&lt;/p&gt; &lt;p&gt;If you specify values for &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt;, omit the &lt;code&gt;OutputBucket&lt;/code&gt; object.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Bucket&lt;/b&gt;: The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Permissions&lt;/b&gt; (Optional): The &lt;code&gt;Permissions&lt;/code&gt; object specifies which users and/or predefined Amazon S3 groups you want to have access to thumbnail files, and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;GranteeType&lt;/b&gt;: Specify the type of value that appears in the Grantee object: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Canonical&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.&lt;/p&gt; &lt;important&gt; &lt;p&gt;A canonical user ID is not the same as an AWS account number.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Email&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is the registered email address of an AWS account. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Group&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is one of the following predefined Amazon S3 groups: &lt;code&gt;AllUsers&lt;/code&gt;, &lt;code&gt;AuthenticatedUsers&lt;/code&gt;, or &lt;code&gt;LogDelivery&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Grantee&lt;/b&gt;: The AWS user or group that you want to have access to thumbnail files. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Access&lt;/b&gt;: The permission that you want to give to the AWS user that you specified in &lt;code&gt;Grantee&lt;/code&gt;. Permissions are granted on the thumbnail files that Elastic Transcoder adds to the bucket. Valid values include: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ&lt;/code&gt;: The grantee can read the thumbnails and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ_ACP&lt;/code&gt;: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;WRITE_ACP&lt;/code&gt;: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FULL_CONTROL&lt;/code&gt;: The grantee has &lt;code&gt;READ&lt;/code&gt;, &lt;code&gt;READ_ACP&lt;/code&gt;, and &lt;code&gt;WRITE_ACP&lt;/code&gt; permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;StorageClass&lt;/b&gt;: The Amazon S3 storage class, &lt;code&gt;Standard&lt;/code&gt; or &lt;code&gt;ReducedRedundancy&lt;/code&gt;, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Name [Name] &lt;p&gt;The name of the pipeline. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.&lt;/p&gt; &lt;p&gt;Constraints: Maximum 40 characters.&lt;/p&gt;
-- @param Notifications [Notifications] &lt;p&gt;The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.&lt;/p&gt; &lt;important&gt; &lt;p&gt;To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.&lt;/p&gt; &lt;/important&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Progressing&lt;/b&gt;: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic. For more information, see Create a Topic in the Amazon Simple Notification Service Developer Guide.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Completed&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Warning&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition while processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Error&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition while processing a job in this pipeline. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param AwsKmsKeyArn [KeyArn] &lt;p&gt;The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.&lt;/p&gt; &lt;p&gt;If you use either &lt;code&gt;S3&lt;/code&gt; or &lt;code&gt;S3-AWS-KMS&lt;/code&gt; as your &lt;code&gt;Encryption:Mode&lt;/code&gt;, you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are using an &lt;code&gt;Encryption:Mode&lt;/code&gt; of &lt;code&gt;AES-PKCS7&lt;/code&gt;, &lt;code&gt;AES-CTR&lt;/code&gt;, or &lt;code&gt;AES-GCM&lt;/code&gt;.&lt;/p&gt;
-- @param InputBucket [BucketName] &lt;p&gt;The Amazon S3 bucket in which you saved the media files that you want to transcode.&lt;/p&gt;
-- @param OutputBucket [BucketName] &lt;p&gt;The Amazon S3 bucket in which you want Elastic Transcoder to save the transcoded files. (Use this, or use ContentConfig:Bucket plus ThumbnailConfig:Bucket.)&lt;/p&gt; &lt;p&gt;Specify this value when all of the following are true:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;You want to save transcoded files, thumbnails (if any), and playlists (if any) together in one bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You do not want to specify the users or groups who have access to the transcoded files, thumbnails, and playlists.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You do not want to specify the permissions that Elastic Transcoder grants to the files. &lt;/p&gt; &lt;important&gt; &lt;p&gt;When Elastic Transcoder saves files in &lt;code&gt;OutputBucket&lt;/code&gt;, it grants full control over the files only to the AWS account that owns the role that is specified by &lt;code&gt;Role&lt;/code&gt;.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You want to associate the transcoded files and thumbnails with the Amazon S3 Standard storage class.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you want to save transcoded files and playlists in one bucket and thumbnails in another bucket, specify which users can access the transcoded files or the permissions the users have, or change the Amazon S3 storage class, omit &lt;code&gt;OutputBucket&lt;/code&gt; and specify values for &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt; instead.&lt;/p&gt;
-- @param Role [Role] &lt;p&gt;The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to create the pipeline.&lt;/p&gt;
-- Required parameter: Name
-- Required parameter: InputBucket
-- Required parameter: Role
function M.CreatePipelineRequest(ContentConfig, ThumbnailConfig, Name, Notifications, AwsKmsKeyArn, InputBucket, OutputBucket, Role, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePipelineRequest")
	local t = { 
		["ContentConfig"] = ContentConfig,
		["ThumbnailConfig"] = ThumbnailConfig,
		["Name"] = Name,
		["Notifications"] = Notifications,
		["AwsKmsKeyArn"] = AwsKmsKeyArn,
		["InputBucket"] = InputBucket,
		["OutputBucket"] = OutputBucket,
		["Role"] = Role,
	}
	M.AssertCreatePipelineRequest(t)
	return t
end

local UpdatePipelineStatusRequest_keys = { "Status" = true, "Id" = true, nil }

function M.AssertUpdatePipelineStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineStatusRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["Status"] then M.AssertPipelineStatus(struct["Status"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePipelineStatusRequest_keys[k], "UpdatePipelineStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineStatusRequest
-- &lt;p&gt;The &lt;code&gt;UpdatePipelineStatusRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Status [PipelineStatus] &lt;p&gt;The desired status of the pipeline:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Active&lt;/code&gt;: The pipeline is processing jobs.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Paused&lt;/code&gt;: The pipeline is not currently processing jobs.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Id [Id] &lt;p&gt;The identifier of the pipeline to update.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Status
function M.UpdatePipelineStatusRequest(Status, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePipelineStatusRequest")
	local t = { 
		["Status"] = Status,
		["Id"] = Id,
	}
	M.AssertUpdatePipelineStatusRequest(t)
	return t
end

local ReadJobRequest_keys = { "Id" = true, nil }

function M.AssertReadJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadJobRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ReadJobRequest_keys[k], "ReadJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadJobRequest
-- &lt;p&gt;The &lt;code&gt;ReadJobRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The identifier of the job for which you want to get detailed information.&lt;/p&gt;
-- Required parameter: Id
function M.ReadJobRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReadJobRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertReadJobRequest(t)
	return t
end

local Artwork_keys = { "SizingPolicy" = true, "AlbumArtFormat" = true, "MaxWidth" = true, "PaddingPolicy" = true, "Encryption" = true, "MaxHeight" = true, "InputKey" = true, nil }

function M.AssertArtwork(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Artwork to be of type 'table'")
	if struct["SizingPolicy"] then M.AssertSizingPolicy(struct["SizingPolicy"]) end
	if struct["AlbumArtFormat"] then M.AssertJpgOrPng(struct["AlbumArtFormat"]) end
	if struct["MaxWidth"] then M.AssertDigitsOrAuto(struct["MaxWidth"]) end
	if struct["PaddingPolicy"] then M.AssertPaddingPolicy(struct["PaddingPolicy"]) end
	if struct["Encryption"] then M.AssertEncryption(struct["Encryption"]) end
	if struct["MaxHeight"] then M.AssertDigitsOrAuto(struct["MaxHeight"]) end
	if struct["InputKey"] then M.AssertWatermarkKey(struct["InputKey"]) end
	for k,_ in pairs(struct) do
		assert(Artwork_keys[k], "Artwork contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Artwork
-- &lt;p&gt;The file to be used as album art. There can be multiple artworks associated with an audio file, to a maximum of 20.&lt;/p&gt; &lt;p&gt;To remove artwork or leave the artwork empty, you can either set &lt;code&gt;Artwork&lt;/code&gt; to null, or set the &lt;code&gt;Merge Policy&lt;/code&gt; to &quot;Replace&quot; and use an empty &lt;code&gt;Artwork&lt;/code&gt; array.&lt;/p&gt; &lt;p&gt;To pass through existing artwork unchanged, set the &lt;code&gt;Merge Policy&lt;/code&gt; to &quot;Prepend&quot;, &quot;Append&quot;, or &quot;Fallback&quot;, and use an empty &lt;code&gt;Artwork&lt;/code&gt; array.&lt;/p&gt;
-- @param SizingPolicy [SizingPolicy] &lt;p&gt;Specify one of the following values to control scaling of the output album art:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fit:&lt;/code&gt; Elastic Transcoder scales the output art so it matches the value that you specified in either &lt;code&gt;MaxWidth&lt;/code&gt; or &lt;code&gt;MaxHeight&lt;/code&gt; without exceeding the other value.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Fill:&lt;/code&gt; Elastic Transcoder scales the output art so it matches the value that you specified in either &lt;code&gt;MaxWidth&lt;/code&gt; or &lt;code&gt;MaxHeight&lt;/code&gt; and matches or exceeds the other value. Elastic Transcoder centers the output art and then crops it in the dimension (if any) that exceeds the maximum value. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Stretch:&lt;/code&gt; Elastic Transcoder stretches the output art to match the values that you specified for &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;. If the relative proportions of the input art and the output art are different, the output art will be distorted.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Keep:&lt;/code&gt; Elastic Transcoder does not scale the output art. If either dimension of the input art exceeds the values that you specified for &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;, Elastic Transcoder crops the output art.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ShrinkToFit:&lt;/code&gt; Elastic Transcoder scales the output art down so that its dimensions match the values that you specified for at least one of &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; without exceeding either value. If you specify this option, Elastic Transcoder does not scale the art up.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;ShrinkToFill&lt;/code&gt; Elastic Transcoder scales the output art down so that its dimensions match the values that you specified for at least one of &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt; without dropping below either value. If you specify this option, Elastic Transcoder does not scale the art up.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param AlbumArtFormat [JpgOrPng] &lt;p&gt;The format of album art, if any. Valid formats are &lt;code&gt;.jpg&lt;/code&gt; and &lt;code&gt;.png&lt;/code&gt;.&lt;/p&gt;
-- @param MaxWidth [DigitsOrAuto] &lt;p&gt;The maximum width of the output album art in pixels. If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder uses 600 as the default value. If you specify a numeric value, enter an even integer between 32 and 4096, inclusive.&lt;/p&gt;
-- @param PaddingPolicy [PaddingPolicy] &lt;p&gt;When you set &lt;code&gt;PaddingPolicy&lt;/code&gt; to &lt;code&gt;Pad&lt;/code&gt;, Elastic Transcoder may add white bars to the top and bottom and/or left and right sides of the output album art to make the total size of the output art match the values that you specified for &lt;code&gt;MaxWidth&lt;/code&gt; and &lt;code&gt;MaxHeight&lt;/code&gt;.&lt;/p&gt;
-- @param Encryption [Encryption] &lt;p&gt;The encryption settings, if any, that you want Elastic Transcoder to apply to your artwork.&lt;/p&gt;
-- @param MaxHeight [DigitsOrAuto] &lt;p&gt;The maximum height of the output album art in pixels. If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder uses 600 as the default value. If you specify a numeric value, enter an even integer between 32 and 3072, inclusive.&lt;/p&gt;
-- @param InputKey [WatermarkKey] &lt;p&gt;The name of the file to be used as album art. To determine which Amazon S3 bucket contains the specified file, Elastic Transcoder checks the pipeline specified by &lt;code&gt;PipelineId&lt;/code&gt;; the &lt;code&gt;InputBucket&lt;/code&gt; object in that pipeline identifies the bucket.&lt;/p&gt; &lt;p&gt;If the file name includes a prefix, for example, &lt;code&gt;cooking/pie.jpg&lt;/code&gt;, include the prefix in the key. If the file isn't in the specified bucket, Elastic Transcoder returns an error.&lt;/p&gt;
function M.Artwork(SizingPolicy, AlbumArtFormat, MaxWidth, PaddingPolicy, Encryption, MaxHeight, InputKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Artwork")
	local t = { 
		["SizingPolicy"] = SizingPolicy,
		["AlbumArtFormat"] = AlbumArtFormat,
		["MaxWidth"] = MaxWidth,
		["PaddingPolicy"] = PaddingPolicy,
		["Encryption"] = Encryption,
		["MaxHeight"] = MaxHeight,
		["InputKey"] = InputKey,
	}
	M.AssertArtwork(t)
	return t
end

local UpdatePipelineRequest_keys = { "ContentConfig" = true, "ThumbnailConfig" = true, "Name" = true, "Notifications" = true, "AwsKmsKeyArn" = true, "InputBucket" = true, "Role" = true, "Id" = true, nil }

function M.AssertUpdatePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["ContentConfig"] then M.AssertPipelineOutputConfig(struct["ContentConfig"]) end
	if struct["ThumbnailConfig"] then M.AssertPipelineOutputConfig(struct["ThumbnailConfig"]) end
	if struct["Name"] then M.AssertName(struct["Name"]) end
	if struct["Notifications"] then M.AssertNotifications(struct["Notifications"]) end
	if struct["AwsKmsKeyArn"] then M.AssertKeyArn(struct["AwsKmsKeyArn"]) end
	if struct["InputBucket"] then M.AssertBucketName(struct["InputBucket"]) end
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePipelineRequest_keys[k], "UpdatePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineRequest
-- &lt;p&gt;The &lt;code&gt;UpdatePipelineRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param ContentConfig [PipelineOutputConfig] &lt;p&gt;The optional &lt;code&gt;ContentConfig&lt;/code&gt; object specifies information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists: which bucket to use, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.&lt;/p&gt; &lt;p&gt;If you specify values for &lt;code&gt;ContentConfig&lt;/code&gt;, you must also specify values for &lt;code&gt;ThumbnailConfig&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;If you specify values for &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt;, omit the &lt;code&gt;OutputBucket&lt;/code&gt; object.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Bucket&lt;/b&gt;: The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Permissions&lt;/b&gt; (Optional): The Permissions object specifies which users you want to have access to transcoded files and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Grantee Type&lt;/b&gt;: Specify the type of value that appears in the &lt;code&gt;Grantee&lt;/code&gt; object:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Canonical&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution. For more information about canonical user IDs, see Access Control List (ACL) Overview in the Amazon Simple Storage Service Developer Guide. For more information about using CloudFront origin access identities to require that users use CloudFront URLs instead of Amazon S3 URLs, see Using an Origin Access Identity to Restrict Access to Your Amazon S3 Content.&lt;/p&gt; &lt;important&gt; &lt;p&gt;A canonical user ID is not the same as an AWS account number.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Email&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is the registered email address of an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Group&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is one of the following predefined Amazon S3 groups: &lt;code&gt;AllUsers&lt;/code&gt;, &lt;code&gt;AuthenticatedUsers&lt;/code&gt;, or &lt;code&gt;LogDelivery&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Grantee&lt;/b&gt;: The AWS user or group that you want to have access to transcoded files and playlists. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Access&lt;/b&gt;: The permission that you want to give to the AWS user that you specified in &lt;code&gt;Grantee&lt;/code&gt;. Permissions are granted on the files that Elastic Transcoder adds to the bucket, including playlists and video files. Valid values include: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ&lt;/code&gt;: The grantee can read the objects and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ_ACP&lt;/code&gt;: The grantee can read the object ACL for objects that Elastic Transcoder adds to the Amazon S3 bucket. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;WRITE_ACP&lt;/code&gt;: The grantee can write the ACL for the objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FULL_CONTROL&lt;/code&gt;: The grantee has &lt;code&gt;READ&lt;/code&gt;, &lt;code&gt;READ_ACP&lt;/code&gt;, and &lt;code&gt;WRITE_ACP&lt;/code&gt; permissions for the objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;StorageClass&lt;/b&gt;: The Amazon S3 storage class, &lt;code&gt;Standard&lt;/code&gt; or &lt;code&gt;ReducedRedundancy&lt;/code&gt;, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ThumbnailConfig [PipelineOutputConfig] &lt;p&gt;The &lt;code&gt;ThumbnailConfig&lt;/code&gt; object specifies several values, including the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files, which users you want to have access to the files, the type of access you want users to have, and the storage class that you want to assign to the files.&lt;/p&gt; &lt;p&gt;If you specify values for &lt;code&gt;ContentConfig&lt;/code&gt;, you must also specify values for &lt;code&gt;ThumbnailConfig&lt;/code&gt; even if you don't want to create thumbnails.&lt;/p&gt; &lt;p&gt;If you specify values for &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt;, omit the &lt;code&gt;OutputBucket&lt;/code&gt; object.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Bucket&lt;/b&gt;: The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Permissions&lt;/b&gt; (Optional): The &lt;code&gt;Permissions&lt;/code&gt; object specifies which users and/or predefined Amazon S3 groups you want to have access to thumbnail files, and the type of access you want them to have. You can grant permissions to a maximum of 30 users and/or predefined Amazon S3 groups.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;GranteeType&lt;/b&gt;: Specify the type of value that appears in the Grantee object:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Canonical&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.&lt;/p&gt; &lt;important&gt; &lt;p&gt;A canonical user ID is not the same as an AWS account number.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Email&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is the registered email address of an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Group&lt;/b&gt;: The value in the &lt;code&gt;Grantee&lt;/code&gt; object is one of the following predefined Amazon S3 groups: &lt;code&gt;AllUsers&lt;/code&gt;, &lt;code&gt;AuthenticatedUsers&lt;/code&gt;, or &lt;code&gt;LogDelivery&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Grantee&lt;/b&gt;: The AWS user or group that you want to have access to thumbnail files. To identify the user or group, you can specify the canonical user ID for an AWS account, an origin access identity for a CloudFront distribution, the registered email address of an AWS account, or a predefined Amazon S3 group. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Access&lt;/b&gt;: The permission that you want to give to the AWS user that you specified in &lt;code&gt;Grantee&lt;/code&gt;. Permissions are granted on the thumbnail files that Elastic Transcoder adds to the bucket. Valid values include: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ&lt;/code&gt;: The grantee can read the thumbnails and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ_ACP&lt;/code&gt;: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;WRITE_ACP&lt;/code&gt;: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FULL_CONTROL&lt;/code&gt;: The grantee has &lt;code&gt;READ&lt;/code&gt;, &lt;code&gt;READ_ACP&lt;/code&gt;, and &lt;code&gt;WRITE_ACP&lt;/code&gt; permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;StorageClass&lt;/b&gt;: The Amazon S3 storage class, &lt;code&gt;Standard&lt;/code&gt; or &lt;code&gt;ReducedRedundancy&lt;/code&gt;, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Name [Name] &lt;p&gt;The name of the pipeline. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.&lt;/p&gt; &lt;p&gt;Constraints: Maximum 40 characters&lt;/p&gt;
-- @param Notifications [Notifications] &lt;p&gt;The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.&lt;/p&gt; &lt;important&gt; &lt;p&gt;To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.&lt;/p&gt; &lt;/important&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Progressing&lt;/b&gt;: The topic ARN for the Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process jobs that are added to this pipeline. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Completed&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing a job. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Warning&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Error&lt;/b&gt;: The topic ARN for the Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition. This is the ARN that Amazon SNS returned when you created the topic.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param AwsKmsKeyArn [KeyArn] &lt;p&gt;The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.&lt;/p&gt; &lt;p&gt;If you use either &lt;code&gt;S3&lt;/code&gt; or &lt;code&gt;S3-AWS-KMS&lt;/code&gt; as your &lt;code&gt;Encryption:Mode&lt;/code&gt;, you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are using an &lt;code&gt;Encryption:Mode&lt;/code&gt; of &lt;code&gt;AES-PKCS7&lt;/code&gt;, &lt;code&gt;AES-CTR&lt;/code&gt;, or &lt;code&gt;AES-GCM&lt;/code&gt;.&lt;/p&gt;
-- @param InputBucket [BucketName] &lt;p&gt;The Amazon S3 bucket in which you saved the media files that you want to transcode and the graphics that you want to use as watermarks.&lt;/p&gt;
-- @param Role [Role] &lt;p&gt;The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to use to transcode jobs for this pipeline.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The ID of the pipeline that you want to update.&lt;/p&gt;
-- Required parameter: Id
function M.UpdatePipelineRequest(ContentConfig, ThumbnailConfig, Name, Notifications, AwsKmsKeyArn, InputBucket, Role, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePipelineRequest")
	local t = { 
		["ContentConfig"] = ContentConfig,
		["ThumbnailConfig"] = ThumbnailConfig,
		["Name"] = Name,
		["Notifications"] = Notifications,
		["AwsKmsKeyArn"] = AwsKmsKeyArn,
		["InputBucket"] = InputBucket,
		["Role"] = Role,
		["Id"] = Id,
	}
	M.AssertUpdatePipelineRequest(t)
	return t
end

local CaptionSource_keys = { "TimeOffset" = true, "Encryption" = true, "Language" = true, "Key" = true, "Label" = true, nil }

function M.AssertCaptionSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionSource to be of type 'table'")
	if struct["TimeOffset"] then M.AssertTimeOffset(struct["TimeOffset"]) end
	if struct["Encryption"] then M.AssertEncryption(struct["Encryption"]) end
	if struct["Language"] then M.AssertKey(struct["Language"]) end
	if struct["Key"] then M.AssertLongKey(struct["Key"]) end
	if struct["Label"] then M.AssertName(struct["Label"]) end
	for k,_ in pairs(struct) do
		assert(CaptionSource_keys[k], "CaptionSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionSource
-- &lt;p&gt;A source file for the input sidecar captions used during the transcoding process.&lt;/p&gt;
-- @param TimeOffset [TimeOffset] &lt;p&gt;For clip generation or captions that do not start at the same time as the associated video file, the &lt;code&gt;TimeOffset&lt;/code&gt; tells Elastic Transcoder how much of the video to encode before including captions.&lt;/p&gt; &lt;p&gt;Specify the TimeOffset in the form [+-]SS.sss or [+-]HH:mm:SS.ss.&lt;/p&gt;
-- @param Encryption [Encryption] &lt;p&gt;The encryption settings, if any, that Elastic Transcoder needs to decyrpt your caption sources, or that you want Elastic Transcoder to apply to your caption sources.&lt;/p&gt;
-- @param Language [Key] &lt;p&gt;A string that specifies the language of the caption. If you specified multiple inputs with captions, the caption language must match in order to be included in the output. Specify this as one of:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;2-character ISO 639-1 code&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;3-character ISO 639-2 code&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;For more information on ISO language codes and language names, see the List of ISO 639-1 codes.&lt;/p&gt;
-- @param Key [LongKey] &lt;p&gt;The name of the sidecar caption file that you want Elastic Transcoder to include in the output file.&lt;/p&gt;
-- @param Label [Name] &lt;p&gt;The label of the caption shown in the player when choosing a language. We recommend that you put the caption language name here, in the language of the captions.&lt;/p&gt;
function M.CaptionSource(TimeOffset, Encryption, Language, Key, Label, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CaptionSource")
	local t = { 
		["TimeOffset"] = TimeOffset,
		["Encryption"] = Encryption,
		["Language"] = Language,
		["Key"] = Key,
		["Label"] = Label,
	}
	M.AssertCaptionSource(t)
	return t
end

local DeletePresetRequest_keys = { "Id" = true, nil }

function M.AssertDeletePresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePresetRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeletePresetRequest_keys[k], "DeletePresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePresetRequest
-- &lt;p&gt;The &lt;code&gt;DeletePresetRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The identifier of the preset for which you want to get detailed information.&lt;/p&gt;
-- Required parameter: Id
function M.DeletePresetRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePresetRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertDeletePresetRequest(t)
	return t
end

local InputCaptions_keys = { "MergePolicy" = true, "CaptionSources" = true, nil }

function M.AssertInputCaptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputCaptions to be of type 'table'")
	if struct["MergePolicy"] then M.AssertCaptionMergePolicy(struct["MergePolicy"]) end
	if struct["CaptionSources"] then M.AssertCaptionSources(struct["CaptionSources"]) end
	for k,_ in pairs(struct) do
		assert(InputCaptions_keys[k], "InputCaptions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputCaptions
-- &lt;p&gt;The captions to be created, if any.&lt;/p&gt;
-- @param MergePolicy [CaptionMergePolicy] &lt;p&gt;A policy that determines how Elastic Transcoder handles the existence of multiple captions.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;MergeOverride:&lt;/b&gt; Elastic Transcoder transcodes both embedded and sidecar captions into outputs. If captions for a language are embedded in the input file and also appear in a sidecar file, Elastic Transcoder uses the sidecar captions and ignores the embedded captions for that language.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;MergeRetain:&lt;/b&gt; Elastic Transcoder transcodes both embedded and sidecar captions into outputs. If captions for a language are embedded in the input file and also appear in a sidecar file, Elastic Transcoder uses the embedded captions and ignores the sidecar captions for that language. If &lt;code&gt;CaptionSources&lt;/code&gt; is empty, Elastic Transcoder omits all sidecar captions from the output files.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Override:&lt;/b&gt; Elastic Transcoder transcodes only the sidecar captions that you specify in &lt;code&gt;CaptionSources&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;code&gt;MergePolicy&lt;/code&gt; cannot be null.&lt;/p&gt;
-- @param CaptionSources [CaptionSources] &lt;p&gt;Source files for the input sidecar captions used during the transcoding process. To omit all sidecar captions, leave &lt;code&gt;CaptionSources&lt;/code&gt; blank.&lt;/p&gt;
function M.InputCaptions(MergePolicy, CaptionSources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputCaptions")
	local t = { 
		["MergePolicy"] = MergePolicy,
		["CaptionSources"] = CaptionSources,
	}
	M.AssertInputCaptions(t)
	return t
end

local ResourceNotFoundException_keys = { nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;The requested resource does not exist or is not available. For example, the pipeline to which you're trying to add a job doesn't exist or is still being created.&lt;/p&gt;
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local DeletePipelineRequest_keys = { "Id" = true, nil }

function M.AssertDeletePipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePipelineRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(DeletePipelineRequest_keys[k], "DeletePipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePipelineRequest
-- &lt;p&gt;The &lt;code&gt;DeletePipelineRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The identifier of the pipeline that you want to delete.&lt;/p&gt;
-- Required parameter: Id
function M.DeletePipelineRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePipelineRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertDeletePipelineRequest(t)
	return t
end

local UpdatePipelineNotificationsResponse_keys = { "Pipeline" = true, nil }

function M.AssertUpdatePipelineNotificationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineNotificationsResponse to be of type 'table'")
	if struct["Pipeline"] then M.AssertPipeline(struct["Pipeline"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePipelineNotificationsResponse_keys[k], "UpdatePipelineNotificationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineNotificationsResponse
-- &lt;p&gt;The &lt;code&gt;UpdatePipelineNotificationsResponse&lt;/code&gt; structure.&lt;/p&gt;
-- @param Pipeline [Pipeline] &lt;p&gt;A section of the response body that provides information about the pipeline associated with this notification.&lt;/p&gt;
function M.UpdatePipelineNotificationsResponse(Pipeline, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePipelineNotificationsResponse")
	local t = { 
		["Pipeline"] = Pipeline,
	}
	M.AssertUpdatePipelineNotificationsResponse(t)
	return t
end

local Captions_keys = { "MergePolicy" = true, "CaptionSources" = true, "CaptionFormats" = true, nil }

function M.AssertCaptions(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Captions to be of type 'table'")
	if struct["MergePolicy"] then M.AssertCaptionMergePolicy(struct["MergePolicy"]) end
	if struct["CaptionSources"] then M.AssertCaptionSources(struct["CaptionSources"]) end
	if struct["CaptionFormats"] then M.AssertCaptionFormats(struct["CaptionFormats"]) end
	for k,_ in pairs(struct) do
		assert(Captions_keys[k], "Captions contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Captions
-- &lt;p&gt;The captions to be created, if any.&lt;/p&gt;
-- @param MergePolicy [CaptionMergePolicy] &lt;p&gt;A policy that determines how Elastic Transcoder handles the existence of multiple captions.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;MergeOverride:&lt;/b&gt; Elastic Transcoder transcodes both embedded and sidecar captions into outputs. If captions for a language are embedded in the input file and also appear in a sidecar file, Elastic Transcoder uses the sidecar captions and ignores the embedded captions for that language.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;MergeRetain:&lt;/b&gt; Elastic Transcoder transcodes both embedded and sidecar captions into outputs. If captions for a language are embedded in the input file and also appear in a sidecar file, Elastic Transcoder uses the embedded captions and ignores the sidecar captions for that language. If &lt;code&gt;CaptionSources&lt;/code&gt; is empty, Elastic Transcoder omits all sidecar captions from the output files.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Override:&lt;/b&gt; Elastic Transcoder transcodes only the sidecar captions that you specify in &lt;code&gt;CaptionSources&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;code&gt;MergePolicy&lt;/code&gt; cannot be null.&lt;/p&gt;
-- @param CaptionSources [CaptionSources] &lt;p&gt;Source files for the input sidecar captions used during the transcoding process. To omit all sidecar captions, leave &lt;code&gt;CaptionSources&lt;/code&gt; blank.&lt;/p&gt;
-- @param CaptionFormats [CaptionFormats] &lt;p&gt;The array of file formats for the output captions. If you leave this value blank, Elastic Transcoder returns an error.&lt;/p&gt;
function M.Captions(MergePolicy, CaptionSources, CaptionFormats, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Captions")
	local t = { 
		["MergePolicy"] = MergePolicy,
		["CaptionSources"] = CaptionSources,
		["CaptionFormats"] = CaptionFormats,
	}
	M.AssertCaptions(t)
	return t
end

local ListJobsByPipelineRequest_keys = { "PageToken" = true, "PipelineId" = true, "Ascending" = true, nil }

function M.AssertListJobsByPipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListJobsByPipelineRequest to be of type 'table'")
	assert(struct["PipelineId"], "Expected key PipelineId to exist in table")
	if struct["PageToken"] then M.AssertId(struct["PageToken"]) end
	if struct["PipelineId"] then M.AssertId(struct["PipelineId"]) end
	if struct["Ascending"] then M.AssertAscending(struct["Ascending"]) end
	for k,_ in pairs(struct) do
		assert(ListJobsByPipelineRequest_keys[k], "ListJobsByPipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListJobsByPipelineRequest
-- &lt;p&gt;The &lt;code&gt;ListJobsByPipelineRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param PageToken [Id] &lt;p&gt; When Elastic Transcoder returns more than one page of results, use &lt;code&gt;pageToken&lt;/code&gt; in subsequent &lt;code&gt;GET&lt;/code&gt; requests to get each successive page of results. &lt;/p&gt;
-- @param PipelineId [Id] &lt;p&gt;The ID of the pipeline for which you want to get job information.&lt;/p&gt;
-- @param Ascending [Ascending] &lt;p&gt; To list jobs in chronological order by the date and time that they were submitted, enter &lt;code&gt;true&lt;/code&gt;. To list jobs in reverse chronological order, enter &lt;code&gt;false&lt;/code&gt;. &lt;/p&gt;
-- Required parameter: PipelineId
function M.ListJobsByPipelineRequest(PageToken, PipelineId, Ascending, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListJobsByPipelineRequest")
	local t = { 
		["PageToken"] = PageToken,
		["PipelineId"] = PipelineId,
		["Ascending"] = Ascending,
	}
	M.AssertListJobsByPipelineRequest(t)
	return t
end

local TimeSpan_keys = { "Duration" = true, "StartTime" = true, nil }

function M.AssertTimeSpan(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimeSpan to be of type 'table'")
	if struct["Duration"] then M.AssertTime(struct["Duration"]) end
	if struct["StartTime"] then M.AssertTime(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(TimeSpan_keys[k], "TimeSpan contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimeSpan
-- &lt;p&gt;Settings that determine when a clip begins and how long it lasts.&lt;/p&gt;
-- @param Duration [Time] &lt;p&gt;The duration of the clip. The format can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is thousandths of a second) or sssss.SSS (maximum value: 86399.999). If you don't specify a value, Elastic Transcoder creates an output file from StartTime to the end of the file.&lt;/p&gt; &lt;p&gt;If you specify a value longer than the duration of the input file, Elastic Transcoder transcodes the file and returns a warning message.&lt;/p&gt;
-- @param StartTime [Time] &lt;p&gt;The place in the input file where you want a clip to start. The format can be either HH:mm:ss.SSS (maximum value: 23:59:59.999; SSS is thousandths of a second) or sssss.SSS (maximum value: 86399.999). If you don't specify a value, Elastic Transcoder starts at the beginning of the input file.&lt;/p&gt;
function M.TimeSpan(Duration, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimeSpan")
	local t = { 
		["Duration"] = Duration,
		["StartTime"] = StartTime,
	}
	M.AssertTimeSpan(t)
	return t
end

local CreateJobRequest_keys = { "Inputs" = true, "Playlists" = true, "Outputs" = true, "PipelineId" = true, "OutputKeyPrefix" = true, "UserMetadata" = true, "Output" = true, "Input" = true, nil }

function M.AssertCreateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobRequest to be of type 'table'")
	assert(struct["PipelineId"], "Expected key PipelineId to exist in table")
	if struct["Inputs"] then M.AssertJobInputs(struct["Inputs"]) end
	if struct["Playlists"] then M.AssertCreateJobPlaylists(struct["Playlists"]) end
	if struct["Outputs"] then M.AssertCreateJobOutputs(struct["Outputs"]) end
	if struct["PipelineId"] then M.AssertId(struct["PipelineId"]) end
	if struct["OutputKeyPrefix"] then M.AssertKey(struct["OutputKeyPrefix"]) end
	if struct["UserMetadata"] then M.AssertUserMetadata(struct["UserMetadata"]) end
	if struct["Output"] then M.AssertCreateJobOutput(struct["Output"]) end
	if struct["Input"] then M.AssertJobInput(struct["Input"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobRequest_keys[k], "CreateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobRequest
-- &lt;p&gt;The &lt;code&gt;CreateJobRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Inputs [JobInputs] &lt;p&gt;A section of the request body that provides information about the files that are being transcoded.&lt;/p&gt;
-- @param Playlists [CreateJobPlaylists] &lt;p&gt;If you specify a preset in &lt;code&gt;PresetId&lt;/code&gt; for which the value of &lt;code&gt;Container&lt;/code&gt; is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists contains information about the master playlists that you want Elastic Transcoder to create.&lt;/p&gt; &lt;p&gt;The maximum number of master playlists in a job is 30.&lt;/p&gt;
-- @param Outputs [CreateJobOutputs] &lt;p&gt; A section of the request body that provides information about the transcoded (target) files. We recommend that you use the &lt;code&gt;Outputs&lt;/code&gt; syntax instead of the &lt;code&gt;Output&lt;/code&gt; syntax. &lt;/p&gt;
-- @param PipelineId [Id] &lt;p&gt;The &lt;code&gt;Id&lt;/code&gt; of the pipeline that you want Elastic Transcoder to use for transcoding. The pipeline determines several settings, including the Amazon S3 bucket from which Elastic Transcoder gets the files to transcode and the bucket into which Elastic Transcoder puts the transcoded files.&lt;/p&gt;
-- @param OutputKeyPrefix [Key] &lt;p&gt;The value, if any, that you want Elastic Transcoder to prepend to the names of all files that this job creates, including output files, thumbnails, and playlists.&lt;/p&gt;
-- @param UserMetadata [UserMetadata] &lt;p&gt;User-defined metadata that you want to associate with an Elastic Transcoder job. You specify metadata in &lt;code&gt;key/value&lt;/code&gt; pairs, and you can add up to 10 &lt;code&gt;key/value&lt;/code&gt; pairs per job. Elastic Transcoder does not guarantee that &lt;code&gt;key/value&lt;/code&gt; pairs are returned in the same order in which you specify them.&lt;/p&gt;
-- @param Output [CreateJobOutput] &lt;p&gt; A section of the request body that provides information about the transcoded (target) file. We strongly recommend that you use the &lt;code&gt;Outputs&lt;/code&gt; syntax instead of the &lt;code&gt;Output&lt;/code&gt; syntax. &lt;/p&gt;
-- @param Input [JobInput] &lt;p&gt;A section of the request body that provides information about the file that is being transcoded.&lt;/p&gt;
-- Required parameter: PipelineId
function M.CreateJobRequest(Inputs, Playlists, Outputs, PipelineId, OutputKeyPrefix, UserMetadata, Output, Input, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobRequest")
	local t = { 
		["Inputs"] = Inputs,
		["Playlists"] = Playlists,
		["Outputs"] = Outputs,
		["PipelineId"] = PipelineId,
		["OutputKeyPrefix"] = OutputKeyPrefix,
		["UserMetadata"] = UserMetadata,
		["Output"] = Output,
		["Input"] = Input,
	}
	M.AssertCreateJobRequest(t)
	return t
end

local CreatePresetResponse_keys = { "Preset" = true, "Warning" = true, nil }

function M.AssertCreatePresetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePresetResponse to be of type 'table'")
	if struct["Preset"] then M.AssertPreset(struct["Preset"]) end
	if struct["Warning"] then M.AssertString(struct["Warning"]) end
	for k,_ in pairs(struct) do
		assert(CreatePresetResponse_keys[k], "CreatePresetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePresetResponse
-- &lt;p&gt;The &lt;code&gt;CreatePresetResponse&lt;/code&gt; structure.&lt;/p&gt;
-- @param Preset [Preset] &lt;p&gt;A section of the response body that provides information about the preset that is created.&lt;/p&gt;
-- @param Warning [String] &lt;p&gt;If the preset settings don't comply with the standards for the video codec but Elastic Transcoder created the preset, this message explains the reason the preset settings don't meet the standard. Elastic Transcoder created the preset because the settings might produce acceptable output.&lt;/p&gt;
function M.CreatePresetResponse(Preset, Warning, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePresetResponse")
	local t = { 
		["Preset"] = Preset,
		["Warning"] = Warning,
	}
	M.AssertCreatePresetResponse(t)
	return t
end

local Pipeline_keys = { "Status" = true, "ContentConfig" = true, "Name" = true, "ThumbnailConfig" = true, "AwsKmsKeyArn" = true, "Notifications" = true, "Role" = true, "InputBucket" = true, "OutputBucket" = true, "Id" = true, "Arn" = true, nil }

function M.AssertPipeline(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Pipeline to be of type 'table'")
	if struct["Status"] then M.AssertPipelineStatus(struct["Status"]) end
	if struct["ContentConfig"] then M.AssertPipelineOutputConfig(struct["ContentConfig"]) end
	if struct["Name"] then M.AssertName(struct["Name"]) end
	if struct["ThumbnailConfig"] then M.AssertPipelineOutputConfig(struct["ThumbnailConfig"]) end
	if struct["AwsKmsKeyArn"] then M.AssertKeyArn(struct["AwsKmsKeyArn"]) end
	if struct["Notifications"] then M.AssertNotifications(struct["Notifications"]) end
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	if struct["InputBucket"] then M.AssertBucketName(struct["InputBucket"]) end
	if struct["OutputBucket"] then M.AssertBucketName(struct["OutputBucket"]) end
	if struct["Id"] then M.AssertId(struct["Id"]) end
	if struct["Arn"] then M.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Pipeline_keys[k], "Pipeline contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Pipeline
-- &lt;p&gt;The pipeline (queue) that is used to manage jobs.&lt;/p&gt;
-- @param Status [PipelineStatus] &lt;p&gt;The current status of the pipeline:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Active&lt;/code&gt;: The pipeline is processing jobs.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Paused&lt;/code&gt;: The pipeline is not currently processing jobs.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param ContentConfig [PipelineOutputConfig] &lt;p&gt;Information about the Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists. Either you specify both &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt;, or you specify &lt;code&gt;OutputBucket&lt;/code&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Bucket&lt;/b&gt;: The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files and playlists.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Permissions&lt;/b&gt;: A list of the users and/or predefined Amazon S3 groups you want to have access to transcoded files and playlists, and the type of access that you want them to have. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;GranteeType: The type of value that appears in the &lt;code&gt;Grantee&lt;/code&gt; object: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Canonical&lt;/code&gt;: Either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Email&lt;/code&gt;: The registered email address of an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Group&lt;/code&gt;: One of the following predefined Amazon S3 groups: &lt;code&gt;AllUsers&lt;/code&gt;, &lt;code&gt;AuthenticatedUsers&lt;/code&gt;, or &lt;code&gt;LogDelivery&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Grantee&lt;/code&gt;: The AWS user or group that you want to have access to transcoded files and playlists.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Access&lt;/code&gt;: The permission that you want to give to the AWS user that is listed in &lt;code&gt;Grantee&lt;/code&gt;. Valid values include:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ&lt;/code&gt;: The grantee can read the objects and metadata for objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ_ACP&lt;/code&gt;: The grantee can read the object ACL for objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;WRITE_ACP&lt;/code&gt;: The grantee can write the ACL for the objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FULL_CONTROL&lt;/code&gt;: The grantee has &lt;code&gt;READ&lt;/code&gt;, &lt;code&gt;READ_ACP&lt;/code&gt;, and &lt;code&gt;WRITE_ACP&lt;/code&gt; permissions for the objects that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;StorageClass&lt;/b&gt;: The Amazon S3 storage class, Standard or ReducedRedundancy, that you want Elastic Transcoder to assign to the video files and playlists that it stores in your Amazon S3 bucket. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Name [Name] &lt;p&gt;The name of the pipeline. We recommend that the name be unique within the AWS account, but uniqueness is not enforced.&lt;/p&gt; &lt;p&gt;Constraints: Maximum 40 characters&lt;/p&gt;
-- @param ThumbnailConfig [PipelineOutputConfig] &lt;p&gt;Information about the Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. Either you specify both &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt;, or you specify &lt;code&gt;OutputBucket&lt;/code&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Bucket&lt;/code&gt;: The Amazon S3 bucket in which you want Elastic Transcoder to save thumbnail files. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Permissions&lt;/code&gt;: A list of the users and/or predefined Amazon S3 groups you want to have access to thumbnail files, and the type of access that you want them to have. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;GranteeType: The type of value that appears in the Grantee object:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Canonical&lt;/code&gt;: Either the canonical user ID for an AWS account or an origin access identity for an Amazon CloudFront distribution.&lt;/p&gt; &lt;important&gt; &lt;p&gt;A canonical user ID is not the same as an AWS account number.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Email&lt;/code&gt;: The registered email address of an AWS account.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Group&lt;/code&gt;: One of the following predefined Amazon S3 groups: &lt;code&gt;AllUsers&lt;/code&gt;, &lt;code&gt;AuthenticatedUsers&lt;/code&gt;, or &lt;code&gt;LogDelivery&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;Grantee&lt;/code&gt;: The AWS user or group that you want to have access to thumbnail files.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Access: The permission that you want to give to the AWS user that is listed in Grantee. Valid values include: &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ&lt;/code&gt;: The grantee can read the thumbnails and metadata for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;READ_ACP&lt;/code&gt;: The grantee can read the object ACL for thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;WRITE_ACP&lt;/code&gt;: The grantee can write the ACL for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;FULL_CONTROL&lt;/code&gt;: The grantee has READ, READ_ACP, and WRITE_ACP permissions for the thumbnails that Elastic Transcoder adds to the Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;StorageClass&lt;/code&gt;: The Amazon S3 storage class, &lt;code&gt;Standard&lt;/code&gt; or &lt;code&gt;ReducedRedundancy&lt;/code&gt;, that you want Elastic Transcoder to assign to the thumbnails that it stores in your Amazon S3 bucket.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param AwsKmsKeyArn [KeyArn] &lt;p&gt;The AWS Key Management Service (AWS KMS) key that you want to use with this pipeline.&lt;/p&gt; &lt;p&gt;If you use either &lt;code&gt;S3&lt;/code&gt; or &lt;code&gt;S3-AWS-KMS&lt;/code&gt; as your &lt;code&gt;Encryption:Mode&lt;/code&gt;, you don't need to provide a key with your job because a default key, known as an AWS-KMS key, is created for you automatically. You need to provide an AWS-KMS key only if you want to use a non-default AWS-KMS key, or if you are using an &lt;code&gt;Encryption:Mode&lt;/code&gt; of &lt;code&gt;AES-PKCS7&lt;/code&gt;, &lt;code&gt;AES-CTR&lt;/code&gt;, or &lt;code&gt;AES-GCM&lt;/code&gt;.&lt;/p&gt;
-- @param Notifications [Notifications] &lt;p&gt;The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify to report job status.&lt;/p&gt; &lt;important&gt; &lt;p&gt;To receive notifications, you must also subscribe to the new topic in the Amazon SNS console.&lt;/p&gt; &lt;/important&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Progressing&lt;/b&gt; (optional): The Amazon Simple Notification Service (Amazon SNS) topic that you want to notify when Elastic Transcoder has started to process the job.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Completed&lt;/b&gt; (optional): The Amazon SNS topic that you want to notify when Elastic Transcoder has finished processing the job.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Warning&lt;/b&gt; (optional): The Amazon SNS topic that you want to notify when Elastic Transcoder encounters a warning condition.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Error&lt;/b&gt; (optional): The Amazon SNS topic that you want to notify when Elastic Transcoder encounters an error condition.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Role [Role] &lt;p&gt;The IAM Amazon Resource Name (ARN) for the role that Elastic Transcoder uses to transcode jobs for this pipeline.&lt;/p&gt;
-- @param InputBucket [BucketName] &lt;p&gt;The Amazon S3 bucket from which Elastic Transcoder gets media files for transcoding and the graphics files, if any, that you want to use for watermarks.&lt;/p&gt;
-- @param OutputBucket [BucketName] &lt;p&gt;The Amazon S3 bucket in which you want Elastic Transcoder to save transcoded files, thumbnails, and playlists. Either you specify this value, or you specify both &lt;code&gt;ContentConfig&lt;/code&gt; and &lt;code&gt;ThumbnailConfig&lt;/code&gt;.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The identifier for the pipeline. You use this value to identify the pipeline in which you want to perform a variety of operations, such as creating a job or a preset.&lt;/p&gt;
-- @param Arn [String] &lt;p&gt;The Amazon Resource Name (ARN) for the pipeline.&lt;/p&gt;
function M.Pipeline(Status, ContentConfig, Name, ThumbnailConfig, AwsKmsKeyArn, Notifications, Role, InputBucket, OutputBucket, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Pipeline")
	local t = { 
		["Status"] = Status,
		["ContentConfig"] = ContentConfig,
		["Name"] = Name,
		["ThumbnailConfig"] = ThumbnailConfig,
		["AwsKmsKeyArn"] = AwsKmsKeyArn,
		["Notifications"] = Notifications,
		["Role"] = Role,
		["InputBucket"] = InputBucket,
		["OutputBucket"] = OutputBucket,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertPipeline(t)
	return t
end

local PlayReadyDrm_keys = { "KeyId" = true, "KeyMd5" = true, "Format" = true, "InitializationVector" = true, "LicenseAcquisitionUrl" = true, "Key" = true, nil }

function M.AssertPlayReadyDrm(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PlayReadyDrm to be of type 'table'")
	if struct["KeyId"] then M.AssertKeyIdGuid(struct["KeyId"]) end
	if struct["KeyMd5"] then M.AssertNonEmptyBase64EncodedString(struct["KeyMd5"]) end
	if struct["Format"] then M.AssertPlayReadyDrmFormatString(struct["Format"]) end
	if struct["InitializationVector"] then M.AssertZeroTo255String(struct["InitializationVector"]) end
	if struct["LicenseAcquisitionUrl"] then M.AssertOneTo512String(struct["LicenseAcquisitionUrl"]) end
	if struct["Key"] then M.AssertNonEmptyBase64EncodedString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(PlayReadyDrm_keys[k], "PlayReadyDrm contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PlayReadyDrm
-- &lt;p&gt;The PlayReady DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.&lt;/p&gt; &lt;p&gt;PlayReady DRM encrypts your media files using &lt;code&gt;AES-CTR&lt;/code&gt; encryption.&lt;/p&gt; &lt;p&gt;If you use DRM for an &lt;code&gt;HLSv3&lt;/code&gt; playlist, your outputs must have a master playlist.&lt;/p&gt;
-- @param KeyId [KeyIdGuid] &lt;p&gt;The ID for your DRM key, so that your DRM license provider knows which key to provide.&lt;/p&gt; &lt;p&gt;The key ID must be provided in big endian, and Elastic Transcoder converts it to little endian before inserting it into the PlayReady DRM headers. If you are unsure whether your license server provides your key ID in big or little endian, check with your DRM provider.&lt;/p&gt;
-- @param KeyMd5 [NonEmptyBase64EncodedString] &lt;p&gt;The MD5 digest of the key used for DRM on your file, and that you want Elastic Transcoder to use as a checksum to make sure your key was not corrupted in transit. The key MD5 must be base64-encoded, and it must be exactly 16 bytes before being base64-encoded.&lt;/p&gt;
-- @param Format [PlayReadyDrmFormatString] &lt;p&gt;The type of DRM, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.&lt;/p&gt;
-- @param InitializationVector [ZeroTo255String] &lt;p&gt;The series of random bits created by a random bit generator, unique for every encryption operation, that you want Elastic Transcoder to use to encrypt your files. The initialization vector must be base64-encoded, and it must be exactly 8 bytes long before being base64-encoded. If no initialization vector is provided, Elastic Transcoder generates one for you.&lt;/p&gt;
-- @param LicenseAcquisitionUrl [OneTo512String] &lt;p&gt;The location of the license key required to play DRM content. The URL must be an absolute path, and is referenced by the PlayReady header. The PlayReady header is referenced in the protection header of the client manifest for Smooth Streaming outputs, and in the EXT-X-DXDRM and EXT-XDXDRMINFO metadata tags for HLS playlist outputs. An example URL looks like this: &lt;code&gt;https://www.example.com/exampleKey/&lt;/code&gt; &lt;/p&gt;
-- @param Key [NonEmptyBase64EncodedString] &lt;p&gt;The DRM key for your file, provided by your DRM license provider. The key must be base64-encoded, and it must be one of the following bit lengths before being base64-encoded:&lt;/p&gt; &lt;p&gt; &lt;code&gt;128&lt;/code&gt;, &lt;code&gt;192&lt;/code&gt;, or &lt;code&gt;256&lt;/code&gt;. &lt;/p&gt; &lt;p&gt;The key must also be encrypted by using AWS KMS.&lt;/p&gt;
function M.PlayReadyDrm(KeyId, KeyMd5, Format, InitializationVector, LicenseAcquisitionUrl, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PlayReadyDrm")
	local t = { 
		["KeyId"] = KeyId,
		["KeyMd5"] = KeyMd5,
		["Format"] = Format,
		["InitializationVector"] = InitializationVector,
		["LicenseAcquisitionUrl"] = LicenseAcquisitionUrl,
		["Key"] = Key,
	}
	M.AssertPlayReadyDrm(t)
	return t
end

local CreatePipelineResponse_keys = { "Pipeline" = true, "Warnings" = true, nil }

function M.AssertCreatePipelineResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePipelineResponse to be of type 'table'")
	if struct["Pipeline"] then M.AssertPipeline(struct["Pipeline"]) end
	if struct["Warnings"] then M.AssertWarnings(struct["Warnings"]) end
	for k,_ in pairs(struct) do
		assert(CreatePipelineResponse_keys[k], "CreatePipelineResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePipelineResponse
-- &lt;p&gt;When you create a pipeline, Elastic Transcoder returns the values that you specified in the request.&lt;/p&gt;
-- @param Pipeline [Pipeline] &lt;p&gt;A section of the response body that provides information about the pipeline that is created.&lt;/p&gt;
-- @param Warnings [Warnings] &lt;p&gt;Elastic Transcoder returns a warning if the resources used by your pipeline are not in the same region as the pipeline.&lt;/p&gt; &lt;p&gt;Using resources in the same region, such as your Amazon S3 buckets, Amazon SNS notification topics, and AWS KMS key, reduces processing time and prevents cross-regional charges.&lt;/p&gt;
function M.CreatePipelineResponse(Pipeline, Warnings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePipelineResponse")
	local t = { 
		["Pipeline"] = Pipeline,
		["Warnings"] = Warnings,
	}
	M.AssertCreatePipelineResponse(t)
	return t
end

local CreateJobOutput_keys = { "Rotate" = true, "Encryption" = true, "PresetId" = true, "Watermarks" = true, "SegmentDuration" = true, "Key" = true, "Captions" = true, "AlbumArt" = true, "ThumbnailPattern" = true, "ThumbnailEncryption" = true, "Composition" = true, nil }

function M.AssertCreateJobOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobOutput to be of type 'table'")
	if struct["Rotate"] then M.AssertRotate(struct["Rotate"]) end
	if struct["Encryption"] then M.AssertEncryption(struct["Encryption"]) end
	if struct["PresetId"] then M.AssertId(struct["PresetId"]) end
	if struct["Watermarks"] then M.AssertJobWatermarks(struct["Watermarks"]) end
	if struct["SegmentDuration"] then M.AssertFloatString(struct["SegmentDuration"]) end
	if struct["Key"] then M.AssertKey(struct["Key"]) end
	if struct["Captions"] then M.AssertCaptions(struct["Captions"]) end
	if struct["AlbumArt"] then M.AssertJobAlbumArt(struct["AlbumArt"]) end
	if struct["ThumbnailPattern"] then M.AssertThumbnailPattern(struct["ThumbnailPattern"]) end
	if struct["ThumbnailEncryption"] then M.AssertEncryption(struct["ThumbnailEncryption"]) end
	if struct["Composition"] then M.AssertComposition(struct["Composition"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobOutput_keys[k], "CreateJobOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobOutput
-- &lt;p&gt;The &lt;code&gt;CreateJobOutput&lt;/code&gt; structure.&lt;/p&gt;
-- @param Rotate [Rotate] &lt;p&gt; The number of degrees clockwise by which you want Elastic Transcoder to rotate the output relative to the input. Enter one of the following values: &lt;code&gt;auto&lt;/code&gt;, &lt;code&gt;0&lt;/code&gt;, &lt;code&gt;90&lt;/code&gt;, &lt;code&gt;180&lt;/code&gt;, &lt;code&gt;270&lt;/code&gt;. The value &lt;code&gt;auto&lt;/code&gt; generally works only if the file that you're transcoding contains rotation metadata. &lt;/p&gt;
-- @param Encryption [Encryption] &lt;p&gt;You can specify encryption settings for any output files that you want to use for a transcoding job. This includes the output file and any watermarks, thumbnails, album art, or captions that you want to use. You must specify encryption settings for each file individually.&lt;/p&gt;
-- @param PresetId [Id] &lt;p&gt; The &lt;code&gt;Id&lt;/code&gt; of the preset to use for this job. The preset determines the audio, video, and thumbnail settings that Elastic Transcoder uses for transcoding. &lt;/p&gt;
-- @param Watermarks [JobWatermarks] &lt;p&gt;Information about the watermarks that you want Elastic Transcoder to add to the video during transcoding. You can specify up to four watermarks for each output. Settings for each watermark must be defined in the preset for the current output.&lt;/p&gt;
-- @param SegmentDuration [FloatString] &lt;important&gt; &lt;p&gt;(Outputs in Fragmented MP4 or MPEG-TS format only.&lt;/p&gt; &lt;/important&gt; &lt;p&gt;If you specify a preset in &lt;code&gt;PresetId&lt;/code&gt; for which the value of &lt;code&gt;Container&lt;/code&gt; is &lt;code&gt;fmp4&lt;/code&gt; (Fragmented MP4) or &lt;code&gt;ts&lt;/code&gt; (MPEG-TS), &lt;code&gt;SegmentDuration&lt;/code&gt; is the target maximum duration of each segment in seconds. For &lt;code&gt;HLSv3&lt;/code&gt; format playlists, each media segment is stored in a separate &lt;code&gt;.ts&lt;/code&gt; file. For &lt;code&gt;HLSv4&lt;/code&gt; and &lt;code&gt;Smooth&lt;/code&gt; playlists, all media segments for an output are stored in a single file. Each segment is approximately the length of the &lt;code&gt;SegmentDuration&lt;/code&gt;, though individual segments might be shorter or longer.&lt;/p&gt; &lt;p&gt;The range of valid values is 1 to 60 seconds. If the duration of the video is not evenly divisible by &lt;code&gt;SegmentDuration&lt;/code&gt;, the duration of the last segment is the remainder of total length/SegmentDuration.&lt;/p&gt; &lt;p&gt;Elastic Transcoder creates an output-specific playlist for each output &lt;code&gt;HLS&lt;/code&gt; output that you specify in OutputKeys. To add an output to the master playlist for this job, include it in the &lt;code&gt;OutputKeys&lt;/code&gt; of the associated playlist.&lt;/p&gt;
-- @param Key [Key] &lt;p&gt; The name to assign to the transcoded file. Elastic Transcoder saves the file in the Amazon S3 bucket specified by the &lt;code&gt;OutputBucket&lt;/code&gt; object in the pipeline that is specified by the pipeline ID. If a file with the specified name already exists in the output bucket, the job fails. &lt;/p&gt;
-- @param Captions [Captions] &lt;p&gt;You can configure Elastic Transcoder to transcode captions, or subtitles, from one format to another. All captions must be in UTF-8. Elastic Transcoder supports two types of captions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Embedded:&lt;/b&gt; Embedded captions are included in the same file as the audio and video. Elastic Transcoder supports only one embedded caption per language, to a maximum of 300 embedded captions per file.&lt;/p&gt; &lt;p&gt;Valid input values include: &lt;code&gt;CEA-608 (EIA-608&lt;/code&gt;, first non-empty channel only), &lt;code&gt;CEA-708 (EIA-708&lt;/code&gt;, first non-empty channel only), and &lt;code&gt;mov-text&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Valid outputs include: &lt;code&gt;mov-text&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Elastic Transcoder supports a maximum of one embedded format per output.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Sidecar:&lt;/b&gt; Sidecar captions are kept in a separate metadata file from the audio and video data. Sidecar captions require a player that is capable of understanding the relationship between the video file and the sidecar file. Elastic Transcoder supports only one sidecar caption per language, to a maximum of 20 sidecar captions per file.&lt;/p&gt; &lt;p&gt;Valid input values include: &lt;code&gt;dfxp&lt;/code&gt; (first div element only), &lt;code&gt;ebu-tt&lt;/code&gt;, &lt;code&gt;scc&lt;/code&gt;, &lt;code&gt;smpt&lt;/code&gt;, &lt;code&gt;srt&lt;/code&gt;, &lt;code&gt;ttml&lt;/code&gt; (first div element only), and &lt;code&gt;webvtt&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Valid outputs include: &lt;code&gt;dfxp&lt;/code&gt; (first div element only), &lt;code&gt;scc&lt;/code&gt;, &lt;code&gt;srt&lt;/code&gt;, and &lt;code&gt;webvtt&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you want ttml or smpte-tt compatible captions, specify dfxp as your output format.&lt;/p&gt; &lt;p&gt;Elastic Transcoder does not support OCR (Optical Character Recognition), does not accept pictures as a valid input for captions, and is not available for audio-only transcoding. Elastic Transcoder does not preserve text formatting (for example, italics) during the transcoding process.&lt;/p&gt; &lt;p&gt;To remove captions or leave the captions empty, set &lt;code&gt;Captions&lt;/code&gt; to null. To pass through existing captions unchanged, set the &lt;code&gt;MergePolicy&lt;/code&gt; to &lt;code&gt;MergeRetain&lt;/code&gt;, and pass in a null &lt;code&gt;CaptionSources&lt;/code&gt; array.&lt;/p&gt; &lt;p&gt;For more information on embedded files, see the Subtitles Wikipedia page.&lt;/p&gt; &lt;p&gt;For more information on sidecar files, see the Extensible Metadata Platform and Sidecar file Wikipedia pages.&lt;/p&gt;
-- @param AlbumArt [JobAlbumArt] &lt;p&gt;Information about the album art that you want Elastic Transcoder to add to the file during transcoding. You can specify up to twenty album artworks for each output. Settings for each artwork must be defined in the job for the current output.&lt;/p&gt;
-- @param ThumbnailPattern [ThumbnailPattern] &lt;p&gt;Whether you want Elastic Transcoder to create thumbnails for your videos and, if so, how you want Elastic Transcoder to name the files.&lt;/p&gt; &lt;p&gt;If you don't want Elastic Transcoder to create thumbnails, specify &quot;&quot;.&lt;/p&gt; &lt;p&gt;If you do want Elastic Transcoder to create thumbnails, specify the information that you want to include in the file name for each thumbnail. You can specify the following values in any sequence:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt; &lt;code&gt;{count}&lt;/code&gt; (Required)&lt;/b&gt;: If you want to create thumbnails, you must include &lt;code&gt;{count}&lt;/code&gt; in the &lt;code&gt;ThumbnailPattern&lt;/code&gt; object. Wherever you specify &lt;code&gt;{count}&lt;/code&gt;, Elastic Transcoder adds a five-digit sequence number (beginning with &lt;b&gt;00001&lt;/b&gt;) to thumbnail file names. The number indicates where a given thumbnail appears in the sequence of thumbnails for a transcoded file. &lt;/p&gt; &lt;important&gt; &lt;p&gt;If you specify a literal value and/or &lt;code&gt;{resolution}&lt;/code&gt; but you omit &lt;code&gt;{count}&lt;/code&gt;, Elastic Transcoder returns a validation error and does not create the job.&lt;/p&gt; &lt;/important&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Literal values (Optional)&lt;/b&gt;: You can specify literal values anywhere in the &lt;code&gt;ThumbnailPattern&lt;/code&gt; object. For example, you can include them as a file name prefix or as a delimiter between &lt;code&gt;{resolution}&lt;/code&gt; and &lt;code&gt;{count}&lt;/code&gt;. &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt; &lt;code&gt;{resolution}&lt;/code&gt; (Optional)&lt;/b&gt;: If you want Elastic Transcoder to include the resolution in the file name, include &lt;code&gt;{resolution}&lt;/code&gt; in the &lt;code&gt;ThumbnailPattern&lt;/code&gt; object. &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;When creating thumbnails, Elastic Transcoder automatically saves the files in the format (.jpg or .png) that appears in the preset that you specified in the &lt;code&gt;PresetID&lt;/code&gt; value of &lt;code&gt;CreateJobOutput&lt;/code&gt;. Elastic Transcoder also appends the applicable file name extension.&lt;/p&gt;
-- @param ThumbnailEncryption [Encryption] &lt;p&gt;The encryption settings, if any, that you want Elastic Transcoder to apply to your thumbnail.&lt;/p&gt;
-- @param Composition [Composition] &lt;p&gt;You can create an output file that contains an excerpt from the input file. This excerpt, called a clip, can come from the beginning, middle, or end of the file. The Composition object contains settings for the clips that make up an output file. For the current release, you can only specify settings for a single clip per output file. The Composition object cannot be null.&lt;/p&gt;
function M.CreateJobOutput(Rotate, Encryption, PresetId, Watermarks, SegmentDuration, Key, Captions, AlbumArt, ThumbnailPattern, ThumbnailEncryption, Composition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobOutput")
	local t = { 
		["Rotate"] = Rotate,
		["Encryption"] = Encryption,
		["PresetId"] = PresetId,
		["Watermarks"] = Watermarks,
		["SegmentDuration"] = SegmentDuration,
		["Key"] = Key,
		["Captions"] = Captions,
		["AlbumArt"] = AlbumArt,
		["ThumbnailPattern"] = ThumbnailPattern,
		["ThumbnailEncryption"] = ThumbnailEncryption,
		["Composition"] = Composition,
	}
	M.AssertCreateJobOutput(t)
	return t
end

local ReadJobResponse_keys = { "Job" = true, nil }

function M.AssertReadJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadJobResponse to be of type 'table'")
	if struct["Job"] then M.AssertJob(struct["Job"]) end
	for k,_ in pairs(struct) do
		assert(ReadJobResponse_keys[k], "ReadJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadJobResponse
-- &lt;p&gt;The &lt;code&gt;ReadJobResponse&lt;/code&gt; structure.&lt;/p&gt;
-- @param Job [Job] &lt;p&gt;A section of the response body that provides information about the job.&lt;/p&gt;
function M.ReadJobResponse(Job, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReadJobResponse")
	local t = { 
		["Job"] = Job,
	}
	M.AssertReadJobResponse(t)
	return t
end

local IncompatibleVersionException_keys = { nil }

function M.AssertIncompatibleVersionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IncompatibleVersionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(IncompatibleVersionException_keys[k], "IncompatibleVersionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IncompatibleVersionException
--  
function M.IncompatibleVersionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating IncompatibleVersionException")
	local t = { 
	}
	M.AssertIncompatibleVersionException(t)
	return t
end

local CaptionFormat_keys = { "Encryption" = true, "Pattern" = true, "Format" = true, nil }

function M.AssertCaptionFormat(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CaptionFormat to be of type 'table'")
	if struct["Encryption"] then M.AssertEncryption(struct["Encryption"]) end
	if struct["Pattern"] then M.AssertCaptionFormatPattern(struct["Pattern"]) end
	if struct["Format"] then M.AssertCaptionFormatFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(CaptionFormat_keys[k], "CaptionFormat contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CaptionFormat
-- &lt;p&gt;The file format of the output captions. If you leave this value blank, Elastic Transcoder returns an error.&lt;/p&gt;
-- @param Encryption [Encryption] &lt;p&gt;The encryption settings, if any, that you want Elastic Transcoder to apply to your caption formats.&lt;/p&gt;
-- @param Pattern [CaptionFormatPattern] &lt;p&gt;The prefix for caption filenames, in the form &lt;i&gt;description&lt;/i&gt;-&lt;code&gt;{language}&lt;/code&gt;, where:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;i&gt;description&lt;/i&gt; is a description of the video.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;{language}&lt;/code&gt; is a literal value that Elastic Transcoder replaces with the two- or three-letter code for the language of the caption in the output file names.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you don't include &lt;code&gt;{language}&lt;/code&gt; in the file name pattern, Elastic Transcoder automatically appends &quot;&lt;code&gt;{language}&lt;/code&gt;&quot; to the value that you specify for the description. In addition, Elastic Transcoder automatically appends the count to the end of the segment files.&lt;/p&gt; &lt;p&gt;For example, suppose you're transcoding into srt format. When you enter &quot;Sydney-{language}-sunrise&quot;, and the language of the captions is English (en), the name of the first caption file is be Sydney-en-sunrise00000.srt.&lt;/p&gt;
-- @param Format [CaptionFormatFormat] &lt;p&gt;The format you specify determines whether Elastic Transcoder generates an embedded or sidecar caption for this output.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Valid Embedded Caption Formats:&lt;/b&gt; &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;for FLAC&lt;/b&gt;: None&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;For MP3&lt;/b&gt;: None&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;For MP4&lt;/b&gt;: mov-text&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;For MPEG-TS&lt;/b&gt;: None&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;For ogg&lt;/b&gt;: None&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;For webm&lt;/b&gt;: None&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Valid Sidecar Caption Formats:&lt;/b&gt; Elastic Transcoder supports dfxp (first div element only), scc, srt, and webvtt. If you want ttml or smpte-tt compatible captions, specify dfxp as your output format.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;For FMP4&lt;/b&gt;: dfxp&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Non-FMP4 outputs&lt;/b&gt;: All sidecar types&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; &lt;code&gt;fmp4&lt;/code&gt; captions have an extension of &lt;code&gt;.ismt&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.CaptionFormat(Encryption, Pattern, Format, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CaptionFormat")
	local t = { 
		["Encryption"] = Encryption,
		["Pattern"] = Pattern,
		["Format"] = Format,
	}
	M.AssertCaptionFormat(t)
	return t
end

local AudioParameters_keys = { "AudioPackingMode" = true, "Channels" = true, "Codec" = true, "CodecOptions" = true, "SampleRate" = true, "BitRate" = true, nil }

function M.AssertAudioParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AudioParameters to be of type 'table'")
	if struct["AudioPackingMode"] then M.AssertAudioPackingMode(struct["AudioPackingMode"]) end
	if struct["Channels"] then M.AssertAudioChannels(struct["Channels"]) end
	if struct["Codec"] then M.AssertAudioCodec(struct["Codec"]) end
	if struct["CodecOptions"] then M.AssertAudioCodecOptions(struct["CodecOptions"]) end
	if struct["SampleRate"] then M.AssertAudioSampleRate(struct["SampleRate"]) end
	if struct["BitRate"] then M.AssertAudioBitRate(struct["BitRate"]) end
	for k,_ in pairs(struct) do
		assert(AudioParameters_keys[k], "AudioParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AudioParameters
-- &lt;p&gt;Parameters required for transcoding audio.&lt;/p&gt;
-- @param AudioPackingMode [AudioPackingMode] &lt;p&gt;The method of organizing audio channels and tracks. Use &lt;code&gt;Audio:Channels&lt;/code&gt; to specify the number of channels in your output, and &lt;code&gt;Audio:AudioPackingMode&lt;/code&gt; to specify the number of tracks and their relation to the channels. If you do not specify an &lt;code&gt;Audio:AudioPackingMode&lt;/code&gt;, Elastic Transcoder uses &lt;code&gt;SingleTrack&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The following values are valid:&lt;/p&gt; &lt;p&gt; &lt;code&gt;SingleTrack&lt;/code&gt;, &lt;code&gt;OneChannelPerTrack&lt;/code&gt;, and &lt;code&gt;OneChannelPerTrackWithMosTo8Tracks&lt;/code&gt; &lt;/p&gt; &lt;p&gt;When you specify &lt;code&gt;SingleTrack&lt;/code&gt;, Elastic Transcoder creates a single track for your output. The track can have up to eight channels. Use &lt;code&gt;SingleTrack&lt;/code&gt; for all non-&lt;code&gt;mxf&lt;/code&gt; containers.&lt;/p&gt; &lt;p&gt;The outputs of &lt;code&gt;SingleTrack&lt;/code&gt; for a specific channel value and inputs are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;0&lt;/code&gt; &lt;b&gt; channels with any input:&lt;/b&gt; Audio omitted from the output&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;1, 2, or auto &lt;/code&gt; &lt;b&gt;channels with no audio input:&lt;/b&gt; Audio omitted from the output&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;1 &lt;/code&gt; &lt;b&gt;channel with any input with audio:&lt;/b&gt; One track with one channel, downmixed if necessary&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 &lt;/code&gt; &lt;b&gt;channels with one track with one channel:&lt;/b&gt; One track with two identical channels&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 or auto &lt;/code&gt; &lt;b&gt;channels with two tracks with one channel each:&lt;/b&gt; One track with two channels&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 or auto &lt;/code&gt; &lt;b&gt;channels with one track with two channels:&lt;/b&gt; One track with two channels&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 &lt;/code&gt; &lt;b&gt;channels with one track with multiple channels:&lt;/b&gt; One track with two channels&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto &lt;/code&gt; &lt;b&gt;channels with one track with one channel:&lt;/b&gt; One track with one channel&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto &lt;/code&gt; &lt;b&gt;channels with one track with multiple channels:&lt;/b&gt; One track with multiple channels&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;When you specify &lt;code&gt;OneChannelPerTrack&lt;/code&gt;, Elastic Transcoder creates a new track for every channel in your output. Your output can have up to eight single-channel tracks.&lt;/p&gt; &lt;p&gt;The outputs of &lt;code&gt;OneChannelPerTrack&lt;/code&gt; for a specific channel value and inputs are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;0 &lt;/code&gt; &lt;b&gt;channels with any input:&lt;/b&gt; Audio omitted from the output&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;1, 2, or auto &lt;/code&gt; &lt;b&gt;channels with no audio input:&lt;/b&gt; Audio omitted from the output&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;1 &lt;/code&gt; &lt;b&gt;channel with any input with audio:&lt;/b&gt; One track with one channel, downmixed if necessary&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 &lt;/code&gt; &lt;b&gt;channels with one track with one channel:&lt;/b&gt; Two tracks with one identical channel each&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 or auto &lt;/code&gt; &lt;b&gt;channels with two tracks with one channel each:&lt;/b&gt; Two tracks with one channel each&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 or auto &lt;/code&gt; &lt;b&gt;channels with one track with two channels:&lt;/b&gt; Two tracks with one channel each&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 &lt;/code&gt; &lt;b&gt;channels with one track with multiple channels:&lt;/b&gt; Two tracks with one channel each&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto &lt;/code&gt; &lt;b&gt;channels with one track with one channel:&lt;/b&gt; One track with one channel&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto &lt;/code&gt; &lt;b&gt;channels with one track with multiple channels:&lt;/b&gt; Up to eight tracks with one channel each&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;When you specify &lt;code&gt;OneChannelPerTrackWithMosTo8Tracks&lt;/code&gt;, Elastic Transcoder creates eight single-channel tracks for your output. All tracks that do not contain audio data from an input channel are MOS, or Mit Out Sound, tracks.&lt;/p&gt; &lt;p&gt;The outputs of &lt;code&gt;OneChannelPerTrackWithMosTo8Tracks&lt;/code&gt; for a specific channel value and inputs are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;0 &lt;/code&gt; &lt;b&gt;channels with any input:&lt;/b&gt; Audio omitted from the output&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;1, 2, or auto &lt;/code&gt; &lt;b&gt;channels with no audio input:&lt;/b&gt; Audio omitted from the output&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;1 &lt;/code&gt; &lt;b&gt;channel with any input with audio:&lt;/b&gt; One track with one channel, downmixed if necessary, plus six MOS tracks&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 &lt;/code&gt; &lt;b&gt;channels with one track with one channel:&lt;/b&gt; Two tracks with one identical channel each, plus six MOS tracks&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 or auto &lt;/code&gt; &lt;b&gt;channels with two tracks with one channel each:&lt;/b&gt; Two tracks with one channel each, plus six MOS tracks&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 or auto &lt;/code&gt; &lt;b&gt;channels with one track with two channels:&lt;/b&gt; Two tracks with one channel each, plus six MOS tracks&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2 &lt;/code&gt; &lt;b&gt;channels with one track with multiple channels:&lt;/b&gt; Two tracks with one channel each, plus six MOS tracks&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto &lt;/code&gt; &lt;b&gt;channels with one track with one channel:&lt;/b&gt; One track with one channel, plus seven MOS tracks&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto &lt;/code&gt; &lt;b&gt;channels with one track with multiple channels:&lt;/b&gt; Up to eight tracks with one channel each, plus MOS tracks until there are eight tracks in all&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param Channels [AudioChannels] &lt;p&gt;The number of audio channels in the output file. The following values are valid:&lt;/p&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;, &lt;code&gt;0&lt;/code&gt;, &lt;code&gt;1&lt;/code&gt;, &lt;code&gt;2&lt;/code&gt; &lt;/p&gt; &lt;p&gt;One channel carries the information played by a single speaker. For example, a stereo track with two channels sends one channel to the left speaker, and the other channel to the right speaker. The output channels are organized into tracks. If you want Elastic Transcoder to automatically detect the number of audio channels in the input file and use that value for the output file, select &lt;code&gt;auto&lt;/code&gt;.&lt;/p&gt; &lt;p&gt;The output of a specific channel value and inputs are as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt; &lt;b&gt; channel specified, with any input:&lt;/b&gt; Pass through up to eight input channels.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;0&lt;/code&gt; &lt;b&gt; channels specified, with any input:&lt;/b&gt; Audio omitted from the output.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;1&lt;/code&gt; &lt;b&gt; channel specified, with at least one input channel:&lt;/b&gt; Mono sound.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;2&lt;/code&gt; &lt;b&gt; channels specified, with any input:&lt;/b&gt; Two identical mono channels or stereo. For more information about tracks, see &lt;code&gt;Audio:AudioPackingMode.&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; For more information about how Elastic Transcoder organizes channels and tracks, see &lt;code&gt;Audio:AudioPackingMode&lt;/code&gt;.&lt;/p&gt;
-- @param Codec [AudioCodec] &lt;p&gt;The audio codec for the output file. Valid values include &lt;code&gt;aac&lt;/code&gt;, &lt;code&gt;flac&lt;/code&gt;, &lt;code&gt;mp2&lt;/code&gt;, &lt;code&gt;mp3&lt;/code&gt;, &lt;code&gt;pcm&lt;/code&gt;, and &lt;code&gt;vorbis&lt;/code&gt;.&lt;/p&gt;
-- @param CodecOptions [AudioCodecOptions] &lt;p&gt;If you specified &lt;code&gt;AAC&lt;/code&gt; for &lt;code&gt;Audio:Codec&lt;/code&gt;, this is the &lt;code&gt;AAC&lt;/code&gt; compression profile to use. Valid values include:&lt;/p&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;, &lt;code&gt;AAC-LC&lt;/code&gt;, &lt;code&gt;HE-AAC&lt;/code&gt;, &lt;code&gt;HE-AACv2&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder chooses a profile based on the bit rate of the output file.&lt;/p&gt;
-- @param SampleRate [AudioSampleRate] &lt;p&gt;The sample rate of the audio stream in the output file, in Hertz. Valid values include:&lt;/p&gt; &lt;p&gt; &lt;code&gt;auto&lt;/code&gt;, &lt;code&gt;22050&lt;/code&gt;, &lt;code&gt;32000&lt;/code&gt;, &lt;code&gt;44100&lt;/code&gt;, &lt;code&gt;48000&lt;/code&gt;, &lt;code&gt;96000&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you specify &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder automatically detects the sample rate.&lt;/p&gt;
-- @param BitRate [AudioBitRate] &lt;p&gt;The bit rate of the audio stream in the output file, in kilobits/second. Enter an integer between 64 and 320, inclusive.&lt;/p&gt;
function M.AudioParameters(AudioPackingMode, Channels, Codec, CodecOptions, SampleRate, BitRate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AudioParameters")
	local t = { 
		["AudioPackingMode"] = AudioPackingMode,
		["Channels"] = Channels,
		["Codec"] = Codec,
		["CodecOptions"] = CodecOptions,
		["SampleRate"] = SampleRate,
		["BitRate"] = BitRate,
	}
	M.AssertAudioParameters(t)
	return t
end

local AccessDeniedException_keys = { nil }

function M.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AccessDeniedException_keys[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- &lt;p&gt;General authentication failure. The request was not signed correctly.&lt;/p&gt;
function M.AccessDeniedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
	}
	M.AssertAccessDeniedException(t)
	return t
end

local ReadPresetRequest_keys = { "Id" = true, nil }

function M.AssertReadPresetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadPresetRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ReadPresetRequest_keys[k], "ReadPresetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadPresetRequest
-- &lt;p&gt;The &lt;code&gt;ReadPresetRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The identifier of the preset for which you want to get detailed information.&lt;/p&gt;
-- Required parameter: Id
function M.ReadPresetRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReadPresetRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertReadPresetRequest(t)
	return t
end

local JobWatermark_keys = { "Encryption" = true, "InputKey" = true, "PresetWatermarkId" = true, nil }

function M.AssertJobWatermark(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobWatermark to be of type 'table'")
	if struct["Encryption"] then M.AssertEncryption(struct["Encryption"]) end
	if struct["InputKey"] then M.AssertWatermarkKey(struct["InputKey"]) end
	if struct["PresetWatermarkId"] then M.AssertPresetWatermarkId(struct["PresetWatermarkId"]) end
	for k,_ in pairs(struct) do
		assert(JobWatermark_keys[k], "JobWatermark contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobWatermark
-- &lt;p&gt;Watermarks can be in .png or .jpg format. If you want to display a watermark that is not rectangular, use the .png format, which supports transparency.&lt;/p&gt;
-- @param Encryption [Encryption] &lt;p&gt;The encryption settings, if any, that you want Elastic Transcoder to apply to your watermarks.&lt;/p&gt;
-- @param InputKey [WatermarkKey] &lt;p&gt; The name of the .png or .jpg file that you want to use for the watermark. To determine which Amazon S3 bucket contains the specified file, Elastic Transcoder checks the pipeline specified by &lt;code&gt;Pipeline&lt;/code&gt;; the &lt;code&gt;Input Bucket&lt;/code&gt; object in that pipeline identifies the bucket.&lt;/p&gt; &lt;p&gt; If the file name includes a prefix, for example, &lt;b&gt;logos/128x64.png&lt;/b&gt;, include the prefix in the key. If the file isn't in the specified bucket, Elastic Transcoder returns an error. &lt;/p&gt;
-- @param PresetWatermarkId [PresetWatermarkId] &lt;p&gt;The ID of the watermark settings that Elastic Transcoder uses to add watermarks to the video during transcoding. The settings are in the preset specified by Preset for the current output. In that preset, the value of Watermarks Id tells Elastic Transcoder which settings to use.&lt;/p&gt;
function M.JobWatermark(Encryption, InputKey, PresetWatermarkId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobWatermark")
	local t = { 
		["Encryption"] = Encryption,
		["InputKey"] = InputKey,
		["PresetWatermarkId"] = PresetWatermarkId,
	}
	M.AssertJobWatermark(t)
	return t
end

local ReadPipelineRequest_keys = { "Id" = true, nil }

function M.AssertReadPipelineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReadPipelineRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(ReadPipelineRequest_keys[k], "ReadPipelineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReadPipelineRequest
-- &lt;p&gt;The &lt;code&gt;ReadPipelineRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The identifier of the pipeline to read.&lt;/p&gt;
-- Required parameter: Id
function M.ReadPipelineRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReadPipelineRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertReadPipelineRequest(t)
	return t
end

local TestRoleRequest_keys = { "OutputBucket" = true, "Topics" = true, "Role" = true, "InputBucket" = true, nil }

function M.AssertTestRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestRoleRequest to be of type 'table'")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["InputBucket"], "Expected key InputBucket to exist in table")
	assert(struct["OutputBucket"], "Expected key OutputBucket to exist in table")
	assert(struct["Topics"], "Expected key Topics to exist in table")
	if struct["OutputBucket"] then M.AssertBucketName(struct["OutputBucket"]) end
	if struct["Topics"] then M.AssertSnsTopics(struct["Topics"]) end
	if struct["Role"] then M.AssertRole(struct["Role"]) end
	if struct["InputBucket"] then M.AssertBucketName(struct["InputBucket"]) end
	for k,_ in pairs(struct) do
		assert(TestRoleRequest_keys[k], "TestRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestRoleRequest
-- &lt;p&gt; The &lt;code&gt;TestRoleRequest&lt;/code&gt; structure. &lt;/p&gt;
-- @param OutputBucket [BucketName] &lt;p&gt;The Amazon S3 bucket that Elastic Transcoder writes transcoded media files to. The action attempts to read from this bucket.&lt;/p&gt;
-- @param Topics [SnsTopics] &lt;p&gt;The ARNs of one or more Amazon Simple Notification Service (Amazon SNS) topics that you want the action to send a test notification to.&lt;/p&gt;
-- @param Role [Role] &lt;p&gt;The IAM Amazon Resource Name (ARN) for the role that you want Elastic Transcoder to test.&lt;/p&gt;
-- @param InputBucket [BucketName] &lt;p&gt;The Amazon S3 bucket that contains media files to be transcoded. The action attempts to read from this bucket.&lt;/p&gt;
-- Required parameter: Role
-- Required parameter: InputBucket
-- Required parameter: OutputBucket
-- Required parameter: Topics
function M.TestRoleRequest(OutputBucket, Topics, Role, InputBucket, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestRoleRequest")
	local t = { 
		["OutputBucket"] = OutputBucket,
		["Topics"] = Topics,
		["Role"] = Role,
		["InputBucket"] = InputBucket,
	}
	M.AssertTestRoleRequest(t)
	return t
end

local UpdatePipelineStatusResponse_keys = { "Pipeline" = true, nil }

function M.AssertUpdatePipelineStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePipelineStatusResponse to be of type 'table'")
	if struct["Pipeline"] then M.AssertPipeline(struct["Pipeline"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePipelineStatusResponse_keys[k], "UpdatePipelineStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePipelineStatusResponse
-- &lt;p&gt;When you update status for a pipeline, Elastic Transcoder returns the values that you specified in the request.&lt;/p&gt;
-- @param Pipeline [Pipeline] &lt;p&gt;A section of the response body that provides information about the pipeline.&lt;/p&gt;
function M.UpdatePipelineStatusResponse(Pipeline, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePipelineStatusResponse")
	local t = { 
		["Pipeline"] = Pipeline,
	}
	M.AssertUpdatePipelineStatusResponse(t)
	return t
end

local CreateJobPlaylist_keys = { "HlsContentProtection" = true, "OutputKeys" = true, "Name" = true, "PlayReadyDrm" = true, "Format" = true, nil }

function M.AssertCreateJobPlaylist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobPlaylist to be of type 'table'")
	if struct["HlsContentProtection"] then M.AssertHlsContentProtection(struct["HlsContentProtection"]) end
	if struct["OutputKeys"] then M.AssertOutputKeys(struct["OutputKeys"]) end
	if struct["Name"] then M.AssertFilename(struct["Name"]) end
	if struct["PlayReadyDrm"] then M.AssertPlayReadyDrm(struct["PlayReadyDrm"]) end
	if struct["Format"] then M.AssertPlaylistFormat(struct["Format"]) end
	for k,_ in pairs(struct) do
		assert(CreateJobPlaylist_keys[k], "CreateJobPlaylist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobPlaylist
-- &lt;p&gt;Information about the master playlist.&lt;/p&gt;
-- @param HlsContentProtection [HlsContentProtection] &lt;p&gt;The HLS content protection settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.&lt;/p&gt;
-- @param OutputKeys [OutputKeys] &lt;p&gt;For each output in this job that you want to include in a master playlist, the value of the &lt;code&gt;Outputs:Key&lt;/code&gt; object. &lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If your output is not &lt;code&gt;HLS&lt;/code&gt; or does not have a segment duration set, the name of the output file is a concatenation of &lt;code&gt;OutputKeyPrefix&lt;/code&gt; and &lt;code&gt;Outputs:Key&lt;/code&gt;:&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt; &lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If your output is &lt;code&gt;HLSv3&lt;/code&gt; and has a segment duration set, or is not included in a playlist, Elastic Transcoder creates an output playlist file with a file extension of &lt;code&gt;.m3u8&lt;/code&gt;, and a series of &lt;code&gt;.ts&lt;/code&gt; files that include a five-digit sequential counter beginning with 00000:&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;.m3u8&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;00000.ts&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If your output is &lt;code&gt;HLSv4&lt;/code&gt;, has a segment duration set, and is included in an &lt;code&gt;HLSv4&lt;/code&gt; playlist, Elastic Transcoder creates an output playlist file with a file extension of &lt;code&gt;_v4.m3u8&lt;/code&gt;. If the output is video, Elastic Transcoder also creates an output file with an extension of &lt;code&gt;_iframe.m3u8&lt;/code&gt;:&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;_v4.m3u8&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;_iframe.m3u8&lt;/p&gt; &lt;p&gt;OutputKeyPrefix&lt;code&gt;Outputs:Key&lt;/code&gt;.ts&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;Elastic Transcoder automatically appends the relevant file extension to the file name. If you include a file extension in Output Key, the file name will have two extensions.&lt;/p&gt; &lt;p&gt;If you include more than one output in a playlist, any segment duration settings, clip settings, or caption settings must be the same for all outputs in the playlist. For &lt;code&gt;Smooth&lt;/code&gt; playlists, the &lt;code&gt;Audio:Profile&lt;/code&gt;, &lt;code&gt;Video:Profile&lt;/code&gt;, and &lt;code&gt;Video:FrameRate&lt;/code&gt; to &lt;code&gt;Video:KeyframesMaxDist&lt;/code&gt; ratio must be the same for all outputs.&lt;/p&gt;
-- @param Name [Filename] &lt;p&gt;The name that you want Elastic Transcoder to assign to the master playlist, for example, nyc-vacation.m3u8. If the name includes a &lt;code&gt;/&lt;/code&gt; character, the section of the name before the last &lt;code&gt;/&lt;/code&gt; must be identical for all &lt;code&gt;Name&lt;/code&gt; objects. If you create more than one master playlist, the values of all &lt;code&gt;Name&lt;/code&gt; objects must be unique.&lt;/p&gt; &lt;note&gt; &lt;p&gt; Elastic Transcoder automatically appends the relevant file extension to the file name (&lt;code&gt;.m3u8&lt;/code&gt; for &lt;code&gt;HLSv3&lt;/code&gt; and &lt;code&gt;HLSv4&lt;/code&gt; playlists, and &lt;code&gt;.ism&lt;/code&gt; and &lt;code&gt;.ismc&lt;/code&gt; for &lt;code&gt;Smooth&lt;/code&gt; playlists). If you include a file extension in &lt;code&gt;Name&lt;/code&gt;, the file name will have two extensions.&lt;/p&gt; &lt;/note&gt;
-- @param PlayReadyDrm [PlayReadyDrm] &lt;p&gt;The DRM settings, if any, that you want Elastic Transcoder to apply to the output files associated with this playlist.&lt;/p&gt;
-- @param Format [PlaylistFormat] &lt;p&gt;The format of the output playlist. Valid formats include &lt;code&gt;HLSv3&lt;/code&gt;, &lt;code&gt;HLSv4&lt;/code&gt;, and &lt;code&gt;Smooth&lt;/code&gt;.&lt;/p&gt;
function M.CreateJobPlaylist(HlsContentProtection, OutputKeys, Name, PlayReadyDrm, Format, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateJobPlaylist")
	local t = { 
		["HlsContentProtection"] = HlsContentProtection,
		["OutputKeys"] = OutputKeys,
		["Name"] = Name,
		["PlayReadyDrm"] = PlayReadyDrm,
		["Format"] = Format,
	}
	M.AssertCreateJobPlaylist(t)
	return t
end

local JobInput_keys = { "Container" = true, "TimeSpan" = true, "InputCaptions" = true, "Encryption" = true, "FrameRate" = true, "Key" = true, "AspectRatio" = true, "DetectedProperties" = true, "Resolution" = true, "Interlaced" = true, nil }

function M.AssertJobInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobInput to be of type 'table'")
	if struct["Container"] then M.AssertJobContainer(struct["Container"]) end
	if struct["TimeSpan"] then M.AssertTimeSpan(struct["TimeSpan"]) end
	if struct["InputCaptions"] then M.AssertInputCaptions(struct["InputCaptions"]) end
	if struct["Encryption"] then M.AssertEncryption(struct["Encryption"]) end
	if struct["FrameRate"] then M.AssertFrameRate(struct["FrameRate"]) end
	if struct["Key"] then M.AssertLongKey(struct["Key"]) end
	if struct["AspectRatio"] then M.AssertAspectRatio(struct["AspectRatio"]) end
	if struct["DetectedProperties"] then M.AssertDetectedProperties(struct["DetectedProperties"]) end
	if struct["Resolution"] then M.AssertResolution(struct["Resolution"]) end
	if struct["Interlaced"] then M.AssertInterlaced(struct["Interlaced"]) end
	for k,_ in pairs(struct) do
		assert(JobInput_keys[k], "JobInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobInput
-- &lt;p&gt;Information about the file that you're transcoding.&lt;/p&gt;
-- @param Container [JobContainer] &lt;p&gt;The container type for the input file. If you want Elastic Transcoder to automatically detect the container type of the input file, specify &lt;code&gt;auto&lt;/code&gt;. If you want to specify the container type for the input file, enter one of the following values: &lt;/p&gt; &lt;p&gt; &lt;code&gt;3gp&lt;/code&gt;, &lt;code&gt;aac&lt;/code&gt;, &lt;code&gt;asf&lt;/code&gt;, &lt;code&gt;avi&lt;/code&gt;, &lt;code&gt;divx&lt;/code&gt;, &lt;code&gt;flv&lt;/code&gt;, &lt;code&gt;m4a&lt;/code&gt;, &lt;code&gt;mkv&lt;/code&gt;, &lt;code&gt;mov&lt;/code&gt;, &lt;code&gt;mp3&lt;/code&gt;, &lt;code&gt;mp4&lt;/code&gt;, &lt;code&gt;mpeg&lt;/code&gt;, &lt;code&gt;mpeg-ps&lt;/code&gt;, &lt;code&gt;mpeg-ts&lt;/code&gt;, &lt;code&gt;mxf&lt;/code&gt;, &lt;code&gt;ogg&lt;/code&gt;, &lt;code&gt;vob&lt;/code&gt;, &lt;code&gt;wav&lt;/code&gt;, &lt;code&gt;webm&lt;/code&gt; &lt;/p&gt;
-- @param TimeSpan [TimeSpan] &lt;p&gt;Settings for clipping an input. Each input can have different clip settings.&lt;/p&gt;
-- @param InputCaptions [InputCaptions] &lt;p&gt;You can configure Elastic Transcoder to transcode captions, or subtitles, from one format to another. All captions must be in UTF-8. Elastic Transcoder supports two types of captions:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Embedded:&lt;/b&gt; Embedded captions are included in the same file as the audio and video. Elastic Transcoder supports only one embedded caption per language, to a maximum of 300 embedded captions per file.&lt;/p&gt; &lt;p&gt;Valid input values include: &lt;code&gt;CEA-608 (EIA-608&lt;/code&gt;, first non-empty channel only), &lt;code&gt;CEA-708 (EIA-708&lt;/code&gt;, first non-empty channel only), and &lt;code&gt;mov-text&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Valid outputs include: &lt;code&gt;mov-text&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Elastic Transcoder supports a maximum of one embedded format per output.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Sidecar:&lt;/b&gt; Sidecar captions are kept in a separate metadata file from the audio and video data. Sidecar captions require a player that is capable of understanding the relationship between the video file and the sidecar file. Elastic Transcoder supports only one sidecar caption per language, to a maximum of 20 sidecar captions per file.&lt;/p&gt; &lt;p&gt;Valid input values include: &lt;code&gt;dfxp&lt;/code&gt; (first div element only), &lt;code&gt;ebu-tt&lt;/code&gt;, &lt;code&gt;scc&lt;/code&gt;, &lt;code&gt;smpt&lt;/code&gt;, &lt;code&gt;srt&lt;/code&gt;, &lt;code&gt;ttml&lt;/code&gt; (first div element only), and &lt;code&gt;webvtt&lt;/code&gt; &lt;/p&gt; &lt;p&gt;Valid outputs include: &lt;code&gt;dfxp&lt;/code&gt; (first div element only), &lt;code&gt;scc&lt;/code&gt;, &lt;code&gt;srt&lt;/code&gt;, and &lt;code&gt;webvtt&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you want ttml or smpte-tt compatible captions, specify dfxp as your output format.&lt;/p&gt; &lt;p&gt;Elastic Transcoder does not support OCR (Optical Character Recognition), does not accept pictures as a valid input for captions, and is not available for audio-only transcoding. Elastic Transcoder does not preserve text formatting (for example, italics) during the transcoding process.&lt;/p&gt; &lt;p&gt;To remove captions or leave the captions empty, set &lt;code&gt;Captions&lt;/code&gt; to null. To pass through existing captions unchanged, set the &lt;code&gt;MergePolicy&lt;/code&gt; to &lt;code&gt;MergeRetain&lt;/code&gt;, and pass in a null &lt;code&gt;CaptionSources&lt;/code&gt; array.&lt;/p&gt; &lt;p&gt;For more information on embedded files, see the Subtitles Wikipedia page.&lt;/p&gt; &lt;p&gt;For more information on sidecar files, see the Extensible Metadata Platform and Sidecar file Wikipedia pages.&lt;/p&gt;
-- @param Encryption [Encryption] &lt;p&gt;The encryption settings, if any, that are used for decrypting your input files. If your input file is encrypted, you must specify the mode that Elastic Transcoder uses to decrypt your file.&lt;/p&gt;
-- @param FrameRate [FrameRate] &lt;p&gt;The frame rate of the input file. If you want Elastic Transcoder to automatically detect the frame rate of the input file, specify &lt;code&gt;auto&lt;/code&gt;. If you want to specify the frame rate for the input file, enter one of the following values: &lt;/p&gt; &lt;p&gt; &lt;code&gt;10&lt;/code&gt;, &lt;code&gt;15&lt;/code&gt;, &lt;code&gt;23.97&lt;/code&gt;, &lt;code&gt;24&lt;/code&gt;, &lt;code&gt;25&lt;/code&gt;, &lt;code&gt;29.97&lt;/code&gt;, &lt;code&gt;30&lt;/code&gt;, &lt;code&gt;60&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you specify a value other than &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder disables automatic detection of the frame rate.&lt;/p&gt;
-- @param Key [LongKey] &lt;p&gt; The name of the file to transcode. Elsewhere in the body of the JSON block is the the ID of the pipeline to use for processing the job. The &lt;code&gt;InputBucket&lt;/code&gt; object in that pipeline tells Elastic Transcoder which Amazon S3 bucket to get the file from. &lt;/p&gt; &lt;p&gt;If the file name includes a prefix, such as &lt;code&gt;cooking/lasagna.mpg&lt;/code&gt;, include the prefix in the key. If the file isn't in the specified bucket, Elastic Transcoder returns an error.&lt;/p&gt;
-- @param AspectRatio [AspectRatio] &lt;p&gt; The aspect ratio of the input file. If you want Elastic Transcoder to automatically detect the aspect ratio of the input file, specify &lt;code&gt;auto&lt;/code&gt;. If you want to specify the aspect ratio for the output file, enter one of the following values: &lt;/p&gt; &lt;p&gt; &lt;code&gt;1:1&lt;/code&gt;, &lt;code&gt;4:3&lt;/code&gt;, &lt;code&gt;3:2&lt;/code&gt;, &lt;code&gt;16:9&lt;/code&gt; &lt;/p&gt; &lt;p&gt; If you specify a value other than &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder disables automatic detection of the aspect ratio. &lt;/p&gt;
-- @param DetectedProperties [DetectedProperties] &lt;p&gt;The detected properties of the input file.&lt;/p&gt;
-- @param Resolution [Resolution] &lt;p&gt;This value must be &lt;code&gt;auto&lt;/code&gt;, which causes Elastic Transcoder to automatically detect the resolution of the input file.&lt;/p&gt;
-- @param Interlaced [Interlaced] &lt;p&gt;Whether the input file is interlaced. If you want Elastic Transcoder to automatically detect whether the input file is interlaced, specify &lt;code&gt;auto&lt;/code&gt;. If you want to specify whether the input file is interlaced, enter one of the following values:&lt;/p&gt; &lt;p&gt; &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If you specify a value other than &lt;code&gt;auto&lt;/code&gt;, Elastic Transcoder disables automatic detection of interlacing.&lt;/p&gt;
function M.JobInput(Container, TimeSpan, InputCaptions, Encryption, FrameRate, Key, AspectRatio, DetectedProperties, Resolution, Interlaced, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating JobInput")
	local t = { 
		["Container"] = Container,
		["TimeSpan"] = TimeSpan,
		["InputCaptions"] = InputCaptions,
		["Encryption"] = Encryption,
		["FrameRate"] = FrameRate,
		["Key"] = Key,
		["AspectRatio"] = AspectRatio,
		["DetectedProperties"] = DetectedProperties,
		["Resolution"] = Resolution,
		["Interlaced"] = Interlaced,
	}
	M.AssertJobInput(t)
	return t
end

local ListPipelinesResponse_keys = { "NextPageToken" = true, "Pipelines" = true, nil }

function M.AssertListPipelinesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPipelinesResponse to be of type 'table'")
	if struct["NextPageToken"] then M.AssertId(struct["NextPageToken"]) end
	if struct["Pipelines"] then M.AssertPipelines(struct["Pipelines"]) end
	for k,_ in pairs(struct) do
		assert(ListPipelinesResponse_keys[k], "ListPipelinesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPipelinesResponse
-- &lt;p&gt;A list of the pipelines associated with the current AWS account.&lt;/p&gt;
-- @param NextPageToken [Id] &lt;p&gt;A value that you use to access the second and subsequent pages of results, if any. When the pipelines fit on one page or when you've reached the last page of results, the value of &lt;code&gt;NextPageToken&lt;/code&gt; is &lt;code&gt;null&lt;/code&gt;.&lt;/p&gt;
-- @param Pipelines [Pipelines] &lt;p&gt;An array of &lt;code&gt;Pipeline&lt;/code&gt; objects.&lt;/p&gt;
function M.ListPipelinesResponse(NextPageToken, Pipelines, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPipelinesResponse")
	local t = { 
		["NextPageToken"] = NextPageToken,
		["Pipelines"] = Pipelines,
	}
	M.AssertListPipelinesResponse(t)
	return t
end

local CancelJobRequest_keys = { "Id" = true, nil }

function M.AssertCancelJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelJobRequest to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	if struct["Id"] then M.AssertId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(CancelJobRequest_keys[k], "CancelJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelJobRequest
-- &lt;p&gt;The &lt;code&gt;CancelJobRequest&lt;/code&gt; structure.&lt;/p&gt;
-- @param Id [Id] &lt;p&gt;The identifier of the job that you want to cancel.&lt;/p&gt; &lt;p&gt;To get a list of the jobs (including their &lt;code&gt;jobId&lt;/code&gt;) that have a status of &lt;code&gt;Submitted&lt;/code&gt;, use the &lt;a&gt;ListJobsByStatus&lt;/a&gt; API action.&lt;/p&gt;
-- Required parameter: Id
function M.CancelJobRequest(Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelJobRequest")
	local t = { 
		["Id"] = Id,
	}
	M.AssertCancelJobRequest(t)
	return t
end

function M.AssertFilename(str)
	assert(str)
	assert(type(str) == "string", "Expected Filename to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Filename(str)
	M.AssertFilename(str)
	return str
end

function M.AssertThumbnailResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected ThumbnailResolution to be of type 'string'")
	assert(str:match("^%d{1,5}x%d{1,5}$"), "Expected string to match pattern '^%d{1,5}x%d{1,5}$'")
end

--  
function M.ThumbnailResolution(str)
	M.AssertThumbnailResolution(str)
	return str
end

function M.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
	assert(str:match("^arn:aws:iam::%w{12}:role/.+$"), "Expected string to match pattern '^arn:aws:iam::%w{12}:role/.+$'")
end

--  
function M.Role(str)
	M.AssertRole(str)
	return str
end

function M.AssertAscending(str)
	assert(str)
	assert(type(str) == "string", "Expected Ascending to be of type 'string'")
	assert(str:match("(^true$)|(^false$)"), "Expected string to match pattern '(^true$)|(^false$)'")
end

--  
function M.Ascending(str)
	M.AssertAscending(str)
	return str
end

function M.AssertFloatString(str)
	assert(str)
	assert(type(str) == "string", "Expected FloatString to be of type 'string'")
	assert(str:match("^%d{1,5}(%.%d{0,5})?$"), "Expected string to match pattern '^%d{1,5}(%.%d{0,5})?$'")
end

--  
function M.FloatString(str)
	M.AssertFloatString(str)
	return str
end

function M.AssertDigits(str)
	assert(str)
	assert(type(str) == "string", "Expected Digits to be of type 'string'")
	assert(str:match("^%d{1,5}$"), "Expected string to match pattern '^%d{1,5}$'")
end

--  
function M.Digits(str)
	M.AssertDigits(str)
	return str
end

function M.AssertAudioCodecProfile(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioCodecProfile to be of type 'string'")
	assert(str:match("(^auto$)|(^AAC-LC$)|(^HE-AAC$)|(^HE-AACv2$)"), "Expected string to match pattern '(^auto$)|(^AAC-LC$)|(^HE-AAC$)|(^HE-AACv2$)'")
end

--  
function M.AudioCodecProfile(str)
	M.AssertAudioCodecProfile(str)
	return str
end

function M.AssertWatermarkKey(str)
	assert(str)
	assert(type(str) == "string", "Expected WatermarkKey to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("(^.{1,1020}.jpg$)|(^.{1,1019}.jpeg$)|(^.{1,1020}.png$)"), "Expected string to match pattern '(^.{1,1020}.jpg$)|(^.{1,1019}.jpeg$)|(^.{1,1020}.png$)'")
end

--  
function M.WatermarkKey(str)
	M.AssertWatermarkKey(str)
	return str
end

function M.AssertAudioSigned(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioSigned to be of type 'string'")
	assert(str:match("(^Unsigned$)|(^Signed$)"), "Expected string to match pattern '(^Unsigned$)|(^Signed$)'")
end

--  
function M.AudioSigned(str)
	M.AssertAudioSigned(str)
	return str
end

function M.AssertCaptionFormatPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected CaptionFormatPattern to be of type 'string'")
	assert(str:match("(^$)|(^.*%{language%}.*$)"), "Expected string to match pattern '(^$)|(^.*%{language%}.*$)'")
end

--  
function M.CaptionFormatPattern(str)
	M.AssertCaptionFormatPattern(str)
	return str
end

function M.AssertPresetContainer(str)
	assert(str)
	assert(type(str) == "string", "Expected PresetContainer to be of type 'string'")
	assert(str:match("(^mp4$)|(^ts$)|(^webm$)|(^mp3$)|(^flac$)|(^oga$)|(^ogg$)|(^fmp4$)|(^mpg$)|(^flv$)|(^gif$)|(^mxf$)|(^wav$)"), "Expected string to match pattern '(^mp4$)|(^ts$)|(^webm$)|(^mp3$)|(^flac$)|(^oga$)|(^ogg$)|(^fmp4$)|(^mpg$)|(^flv$)|(^gif$)|(^mxf$)|(^wav$)'")
end

--  
function M.PresetContainer(str)
	M.AssertPresetContainer(str)
	return str
end

function M.AssertKeyIdGuid(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyIdGuid to be of type 'string'")
	assert(str:match("(^[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}$)|(^[0-9A-Fa-f]{32}$)"), "Expected string to match pattern '(^[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}$)|(^[0-9A-Fa-f]{32}$)'")
end

--  
function M.KeyIdGuid(str)
	M.AssertKeyIdGuid(str)
	return str
end

function M.AssertBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected BucketName to be of type 'string'")
	assert(str:match("^(%w|%.|-){1,255}$"), "Expected string to match pattern '^(%w|%.|-){1,255}$'")
end

--  
function M.BucketName(str)
	M.AssertBucketName(str)
	return str
end

function M.AssertPipelineStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PipelineStatus to be of type 'string'")
	assert(str:match("(^Active$)|(^Paused$)"), "Expected string to match pattern '(^Active$)|(^Paused$)'")
end

--  
function M.PipelineStatus(str)
	M.AssertPipelineStatus(str)
	return str
end

function M.AssertInterlaced(str)
	assert(str)
	assert(type(str) == "string", "Expected Interlaced to be of type 'string'")
	assert(str:match("(^auto$)|(^true$)|(^false$)"), "Expected string to match pattern '(^auto$)|(^true$)|(^false$)'")
end

--  
function M.Interlaced(str)
	M.AssertInterlaced(str)
	return str
end

function M.AssertPlayReadyDrmFormatString(str)
	assert(str)
	assert(type(str) == "string", "Expected PlayReadyDrmFormatString to be of type 'string'")
	assert(str:match("(^microsoft$)|(^discretix-3.0$)"), "Expected string to match pattern '(^microsoft$)|(^discretix-3.0$)'")
end

--  
function M.PlayReadyDrmFormatString(str)
	M.AssertPlayReadyDrmFormatString(str)
	return str
end

function M.AssertVerticalAlign(str)
	assert(str)
	assert(type(str) == "string", "Expected VerticalAlign to be of type 'string'")
	assert(str:match("(^Top$)|(^Bottom$)|(^Center$)"), "Expected string to match pattern '(^Top$)|(^Bottom$)|(^Center$)'")
end

--  
function M.VerticalAlign(str)
	M.AssertVerticalAlign(str)
	return str
end

function M.AssertEncryptionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionMode to be of type 'string'")
	assert(str:match("(^s3$)|(^s3-aws-kms$)|(^aes-cbc-pkcs7$)|(^aes-ctr$)|(^aes-gcm$)"), "Expected string to match pattern '(^s3$)|(^s3-aws-kms$)|(^aes-cbc-pkcs7$)|(^aes-ctr$)|(^aes-gcm$)'")
end

--  
function M.EncryptionMode(str)
	M.AssertEncryptionMode(str)
	return str
end

function M.AssertFixedGOP(str)
	assert(str)
	assert(type(str) == "string", "Expected FixedGOP to be of type 'string'")
	assert(str:match("(^true$)|(^false$)"), "Expected string to match pattern '(^true$)|(^false$)'")
end

--  
function M.FixedGOP(str)
	M.AssertFixedGOP(str)
	return str
end

function M.AssertAspectRatio(str)
	assert(str)
	assert(type(str) == "string", "Expected AspectRatio to be of type 'string'")
	assert(str:match("(^auto$)|(^1:1$)|(^4:3$)|(^3:2$)|(^16:9$)"), "Expected string to match pattern '(^auto$)|(^1:1$)|(^4:3$)|(^3:2$)|(^16:9$)'")
end

--  
function M.AspectRatio(str)
	M.AssertAspectRatio(str)
	return str
end

function M.AssertOpacity(str)
	assert(str)
	assert(type(str) == "string", "Expected Opacity to be of type 'string'")
	assert(str:match("^%d{1,3}(%.%d{0,20})?$"), "Expected string to match pattern '^%d{1,3}(%.%d{0,20})?$'")
end

--  
function M.Opacity(str)
	M.AssertOpacity(str)
	return str
end

function M.AssertAudioBitRate(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioBitRate to be of type 'string'")
	assert(str:match("^%d{1,3}$"), "Expected string to match pattern '^%d{1,3}$'")
end

--  
function M.AudioBitRate(str)
	M.AssertAudioBitRate(str)
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

function M.AssertAudioPackingMode(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioPackingMode to be of type 'string'")
	assert(str:match("(^SingleTrack$)|(^OneChannelPerTrack$)|(^OneChannelPerTrackWithMosTo8Tracks$)"), "Expected string to match pattern '(^SingleTrack$)|(^OneChannelPerTrack$)|(^OneChannelPerTrackWithMosTo8Tracks$)'")
end

--  
function M.AudioPackingMode(str)
	M.AssertAudioPackingMode(str)
	return str
end

function M.AssertPaddingPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected PaddingPolicy to be of type 'string'")
	assert(str:match("(^Pad$)|(^NoPad$)"), "Expected string to match pattern '(^Pad$)|(^NoPad$)'")
end

--  
function M.PaddingPolicy(str)
	M.AssertPaddingPolicy(str)
	return str
end

function M.AssertKeyStoragePolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyStoragePolicy to be of type 'string'")
	assert(str:match("(^NoStore$)|(^WithVariantPlaylists$)"), "Expected string to match pattern '(^NoStore$)|(^WithVariantPlaylists$)'")
end

--  
function M.KeyStoragePolicy(str)
	M.AssertKeyStoragePolicy(str)
	return str
end

function M.AssertPresetType(str)
	assert(str)
	assert(type(str) == "string", "Expected PresetType to be of type 'string'")
	assert(str:match("(^System$)|(^Custom$)"), "Expected string to match pattern '(^System$)|(^Custom$)'")
end

--  
function M.PresetType(str)
	M.AssertPresetType(str)
	return str
end

function M.AssertKey(str)
	assert(str)
	assert(type(str) == "string", "Expected Key to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Key(str)
	M.AssertKey(str)
	return str
end

function M.AssertJpgOrPng(str)
	assert(str)
	assert(type(str) == "string", "Expected JpgOrPng to be of type 'string'")
	assert(str:match("(^jpg$)|(^png$)"), "Expected string to match pattern '(^jpg$)|(^png$)'")
end

--  
function M.JpgOrPng(str)
	M.AssertJpgOrPng(str)
	return str
end

function M.AssertTarget(str)
	assert(str)
	assert(type(str) == "string", "Expected Target to be of type 'string'")
	assert(str:match("(^Content$)|(^Frame$)"), "Expected string to match pattern '(^Content$)|(^Frame$)'")
end

--  
function M.Target(str)
	M.AssertTarget(str)
	return str
end

function M.AssertVideoBitRate(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoBitRate to be of type 'string'")
	assert(str:match("(^%d{2,5}$)|(^auto$)"), "Expected string to match pattern '(^%d{2,5}$)|(^auto$)'")
end

--  
function M.VideoBitRate(str)
	M.AssertVideoBitRate(str)
	return str
end

function M.AssertHlsContentProtectionMethod(str)
	assert(str)
	assert(type(str) == "string", "Expected HlsContentProtectionMethod to be of type 'string'")
	assert(str:match("(^aes-128$)"), "Expected string to match pattern '(^aes-128$)'")
end

--  
function M.HlsContentProtectionMethod(str)
	M.AssertHlsContentProtectionMethod(str)
	return str
end

function M.AssertGranteeType(str)
	assert(str)
	assert(type(str) == "string", "Expected GranteeType to be of type 'string'")
	assert(str:match("(^Canonical$)|(^Email$)|(^Group$)"), "Expected string to match pattern '(^Canonical$)|(^Email$)|(^Group$)'")
end

--  
function M.GranteeType(str)
	M.AssertGranteeType(str)
	return str
end

function M.AssertJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected JobStatus to be of type 'string'")
	assert(str:match("(^Submitted$)|(^Progressing$)|(^Complete$)|(^Canceled$)|(^Error$)"), "Expected string to match pattern '(^Submitted$)|(^Progressing$)|(^Complete$)|(^Canceled$)|(^Error$)'")
end

--  
function M.JobStatus(str)
	M.AssertJobStatus(str)
	return str
end

function M.AssertPlaylistFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected PlaylistFormat to be of type 'string'")
	assert(str:match("(^HLSv3$)|(^HLSv4$)|(^Smooth$)|(^MPEG-DASH$)"), "Expected string to match pattern '(^HLSv3$)|(^HLSv4$)|(^Smooth$)|(^MPEG-DASH$)'")
end

--  
function M.PlaylistFormat(str)
	M.AssertPlaylistFormat(str)
	return str
end

function M.AssertMaxFrameRate(str)
	assert(str)
	assert(type(str) == "string", "Expected MaxFrameRate to be of type 'string'")
	assert(str:match("(^10$)|(^15$)|(^23.97$)|(^24$)|(^25$)|(^29.97$)|(^30$)|(^50$)|(^60$)"), "Expected string to match pattern '(^10$)|(^15$)|(^23.97$)|(^24$)|(^25$)|(^29.97$)|(^30$)|(^50$)|(^60$)'")
end

--  
function M.MaxFrameRate(str)
	M.AssertMaxFrameRate(str)
	return str
end

function M.AssertAudioBitOrder(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioBitOrder to be of type 'string'")
	assert(str:match("(^LittleEndian$)"), "Expected string to match pattern '(^LittleEndian$)'")
end

--  
function M.AudioBitOrder(str)
	M.AssertAudioBitOrder(str)
	return str
end

function M.AssertAudioBitDepth(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioBitDepth to be of type 'string'")
	assert(str:match("(^8$)|(^16$)|(^24$)|(^32$)"), "Expected string to match pattern '(^8$)|(^16$)|(^24$)|(^32$)'")
end

--  
function M.AudioBitDepth(str)
	M.AssertAudioBitDepth(str)
	return str
end

function M.AssertJobContainer(str)
	assert(str)
	assert(type(str) == "string", "Expected JobContainer to be of type 'string'")
	assert(str:match("(^auto$)|(^3gp$)|(^asf$)|(^avi$)|(^divx$)|(^flv$)|(^mkv$)|(^mov$)|(^mp4$)|(^mpeg$)|(^mpeg-ps$)|(^mpeg-ts$)|(^mxf$)|(^ogg$)|(^ts$)|(^vob$)|(^wav$)|(^webm$)|(^mp3$)|(^m4a$)|(^aac$)"), "Expected string to match pattern '(^auto$)|(^3gp$)|(^asf$)|(^avi$)|(^divx$)|(^flv$)|(^mkv$)|(^mov$)|(^mp4$)|(^mpeg$)|(^mpeg-ps$)|(^mpeg-ts$)|(^mxf$)|(^ogg$)|(^ts$)|(^vob$)|(^wav$)|(^webm$)|(^mp3$)|(^m4a$)|(^aac$)'")
end

--  
function M.JobContainer(str)
	M.AssertJobContainer(str)
	return str
end

function M.AssertThumbnailPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected ThumbnailPattern to be of type 'string'")
	assert(str:match("(^$)|(^.*%{count%}.*$)"), "Expected string to match pattern '(^$)|(^.*%{count%}.*$)'")
end

--  
function M.ThumbnailPattern(str)
	M.AssertThumbnailPattern(str)
	return str
end

function M.AssertStorageClass(str)
	assert(str)
	assert(type(str) == "string", "Expected StorageClass to be of type 'string'")
	assert(str:match("(^ReducedRedundancy$)|(^Standard$)"), "Expected string to match pattern '(^ReducedRedundancy$)|(^Standard$)'")
end

--  
function M.StorageClass(str)
	M.AssertStorageClass(str)
	return str
end

function M.AssertPresetWatermarkId(str)
	assert(str)
	assert(type(str) == "string", "Expected PresetWatermarkId to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PresetWatermarkId(str)
	M.AssertPresetWatermarkId(str)
	return str
end

function M.AssertCaptionFormatFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected CaptionFormatFormat to be of type 'string'")
	assert(str:match("(^mov-text$)|(^srt$)|(^scc$)|(^webvtt$)|(^dfxp$)|(^cea-708$)"), "Expected string to match pattern '(^mov-text$)|(^srt$)|(^scc$)|(^webvtt$)|(^dfxp$)|(^cea-708$)'")
end

--  
function M.CaptionFormatFormat(str)
	M.AssertCaptionFormatFormat(str)
	return str
end

function M.AssertCodecOption(str)
	assert(str)
	assert(type(str) == "string", "Expected CodecOption to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CodecOption(str)
	M.AssertCodecOption(str)
	return str
end

function M.AssertNonEmptyBase64EncodedString(str)
	assert(str)
	assert(type(str) == "string", "Expected NonEmptyBase64EncodedString to be of type 'string'")
	assert(str:match("(^(?:[A-Za-z0-9%+/]{4})*(?:[A-Za-z0-9%+/]{2}==|[A-Za-z0-9%+/]{3}=)?$)"), "Expected string to match pattern '(^(?:[A-Za-z0-9%+/]{4})*(?:[A-Za-z0-9%+/]{2}==|[A-Za-z0-9%+/]{3}=)?$)'")
end

--  
function M.NonEmptyBase64EncodedString(str)
	M.AssertNonEmptyBase64EncodedString(str)
	return str
end

function M.AssertSnsTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected SnsTopic to be of type 'string'")
	assert(str:match("(^$)|(^arn:aws:sns:.*:%w{12}:.+$)"), "Expected string to match pattern '(^$)|(^arn:aws:sns:.*:%w{12}:.+$)'")
end

--  
function M.SnsTopic(str)
	M.AssertSnsTopic(str)
	return str
end

function M.AssertAudioChannels(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioChannels to be of type 'string'")
	assert(str:match("(^auto$)|(^0$)|(^1$)|(^2$)"), "Expected string to match pattern '(^auto$)|(^0$)|(^1$)|(^2$)'")
end

--  
function M.AudioChannels(str)
	M.AssertAudioChannels(str)
	return str
end

function M.AssertSizingPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected SizingPolicy to be of type 'string'")
	assert(str:match("(^Fit$)|(^Fill$)|(^Stretch$)|(^Keep$)|(^ShrinkToFit$)|(^ShrinkToFill$)"), "Expected string to match pattern '(^Fit$)|(^Fill$)|(^Stretch$)|(^Keep$)|(^ShrinkToFit$)|(^ShrinkToFill$)'")
end

--  
function M.SizingPolicy(str)
	M.AssertSizingPolicy(str)
	return str
end

function M.AssertWatermarkSizingPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected WatermarkSizingPolicy to be of type 'string'")
	assert(str:match("(^Fit$)|(^Stretch$)|(^ShrinkToFit$)"), "Expected string to match pattern '(^Fit$)|(^Stretch$)|(^ShrinkToFit$)'")
end

--  
function M.WatermarkSizingPolicy(str)
	M.AssertWatermarkSizingPolicy(str)
	return str
end

function M.AssertSuccess(str)
	assert(str)
	assert(type(str) == "string", "Expected Success to be of type 'string'")
	assert(str:match("(^true$)|(^false$)"), "Expected string to match pattern '(^true$)|(^false$)'")
end

--  
function M.Success(str)
	M.AssertSuccess(str)
	return str
end

function M.AssertBase64EncodedString(str)
	assert(str)
	assert(type(str) == "string", "Expected Base64EncodedString to be of type 'string'")
	assert(str:match("^$|(^(?:[A-Za-z0-9%+/]{4})*(?:[A-Za-z0-9%+/]{2}==|[A-Za-z0-9%+/]{3}=)?$)"), "Expected string to match pattern '^$|(^(?:[A-Za-z0-9%+/]{4})*(?:[A-Za-z0-9%+/]{2}==|[A-Za-z0-9%+/]{3}=)?$)'")
end

--  
function M.Base64EncodedString(str)
	M.AssertBase64EncodedString(str)
	return str
end

function M.AssertTime(str)
	assert(str)
	assert(type(str) == "string", "Expected Time to be of type 'string'")
	assert(str:match("(^%d{1,5}(%.%d{0,3})?$)|(^([0-1]?[0-9]:|2[0-3]:)?([0-5]?[0-9]:)?[0-5]?[0-9](%.%d{0,3})?$)"), "Expected string to match pattern '(^%d{1,5}(%.%d{0,3})?$)|(^([0-1]?[0-9]:|2[0-3]:)?([0-5]?[0-9]:)?[0-5]?[0-9](%.%d{0,3})?$)'")
end

--  
function M.Time(str)
	M.AssertTime(str)
	return str
end

function M.AssertResolution(str)
	assert(str)
	assert(type(str) == "string", "Expected Resolution to be of type 'string'")
	assert(str:match("(^auto$)|(^%d{1,5}x%d{1,5}$)"), "Expected string to match pattern '(^auto$)|(^%d{1,5}x%d{1,5}$)'")
end

--  
function M.Resolution(str)
	M.AssertResolution(str)
	return str
end

function M.AssertAccessControl(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessControl to be of type 'string'")
	assert(str:match("(^FullControl$)|(^Read$)|(^ReadAcp$)|(^WriteAcp$)"), "Expected string to match pattern '(^FullControl$)|(^Read$)|(^ReadAcp$)|(^WriteAcp$)'")
end

--  
function M.AccessControl(str)
	M.AssertAccessControl(str)
	return str
end

function M.AssertZeroTo512String(str)
	assert(str)
	assert(type(str) == "string", "Expected ZeroTo512String to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.ZeroTo512String(str)
	M.AssertZeroTo512String(str)
	return str
end

function M.AssertGrantee(str)
	assert(str)
	assert(type(str) == "string", "Expected Grantee to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Grantee(str)
	M.AssertGrantee(str)
	return str
end

function M.AssertKeyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyArn to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.KeyArn(str)
	M.AssertKeyArn(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertCaptionMergePolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected CaptionMergePolicy to be of type 'string'")
	assert(str:match("(^MergeOverride$)|(^MergeRetain$)|(^Override$)"), "Expected string to match pattern '(^MergeOverride$)|(^MergeRetain$)|(^Override$)'")
end

--  
function M.CaptionMergePolicy(str)
	M.AssertCaptionMergePolicy(str)
	return str
end

function M.AssertFrameRate(str)
	assert(str)
	assert(type(str) == "string", "Expected FrameRate to be of type 'string'")
	assert(str:match("(^auto$)|(^10$)|(^15$)|(^23.97$)|(^24$)|(^25$)|(^29.97$)|(^30$)|(^50$)|(^60$)"), "Expected string to match pattern '(^auto$)|(^10$)|(^15$)|(^23.97$)|(^24$)|(^25$)|(^29.97$)|(^30$)|(^50$)|(^60$)'")
end

--  
function M.FrameRate(str)
	M.AssertFrameRate(str)
	return str
end

function M.AssertTimeOffset(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeOffset to be of type 'string'")
	assert(str:match("(^[+-]?%d{1,5}(%.%d{0,3})?$)|(^[+-]?([0-1]?[0-9]:|2[0-3]:)?([0-5]?[0-9]:)?[0-5]?[0-9](%.%d{0,3})?$)"), "Expected string to match pattern '(^[+-]?%d{1,5}(%.%d{0,3})?$)|(^[+-]?([0-1]?[0-9]:|2[0-3]:)?([0-5]?[0-9]:)?[0-5]?[0-9](%.%d{0,3})?$)'")
end

--  
function M.TimeOffset(str)
	M.AssertTimeOffset(str)
	return str
end

function M.AssertZeroTo255String(str)
	assert(str)
	assert(type(str) == "string", "Expected ZeroTo255String to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.ZeroTo255String(str)
	M.AssertZeroTo255String(str)
	return str
end

function M.AssertRotate(str)
	assert(str)
	assert(type(str) == "string", "Expected Rotate to be of type 'string'")
	assert(str:match("(^auto$)|(^0$)|(^90$)|(^180$)|(^270$)"), "Expected string to match pattern '(^auto$)|(^0$)|(^90$)|(^180$)|(^270$)'")
end

--  
function M.Rotate(str)
	M.AssertRotate(str)
	return str
end

function M.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 40, "Expected string to be max 40 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Name(str)
	M.AssertName(str)
	return str
end

function M.AssertMergePolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected MergePolicy to be of type 'string'")
	assert(str:match("(^Replace$)|(^Prepend$)|(^Append$)|(^Fallback$)"), "Expected string to match pattern '(^Replace$)|(^Prepend$)|(^Append$)|(^Fallback$)'")
end

--  
function M.MergePolicy(str)
	M.AssertMergePolicy(str)
	return str
end

function M.AssertVideoCodec(str)
	assert(str)
	assert(type(str) == "string", "Expected VideoCodec to be of type 'string'")
	assert(str:match("(^H%.264$)|(^vp8$)|(^vp9$)|(^mpeg2$)|(^gif$)"), "Expected string to match pattern '(^H%.264$)|(^vp8$)|(^vp9$)|(^mpeg2$)|(^gif$)'")
end

--  
function M.VideoCodec(str)
	M.AssertVideoCodec(str)
	return str
end

function M.AssertKeyframesMaxDist(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyframesMaxDist to be of type 'string'")
	assert(str:match("^%d{1,6}$"), "Expected string to match pattern '^%d{1,6}$'")
end

--  
function M.KeyframesMaxDist(str)
	M.AssertKeyframesMaxDist(str)
	return str
end

function M.AssertHorizontalAlign(str)
	assert(str)
	assert(type(str) == "string", "Expected HorizontalAlign to be of type 'string'")
	assert(str:match("(^Left$)|(^Right$)|(^Center$)"), "Expected string to match pattern '(^Left$)|(^Right$)|(^Center$)'")
end

--  
function M.HorizontalAlign(str)
	M.AssertHorizontalAlign(str)
	return str
end

function M.AssertPixelsOrPercent(str)
	assert(str)
	assert(type(str) == "string", "Expected PixelsOrPercent to be of type 'string'")
	assert(str:match("(^%d{1,3}(%.%d{0,5})?%$)|(^%d{1,4}?px$)"), "Expected string to match pattern '(^%d{1,3}(%.%d{0,5})?%$)|(^%d{1,4}?px$)'")
end

--  
function M.PixelsOrPercent(str)
	M.AssertPixelsOrPercent(str)
	return str
end

function M.AssertAudioCodec(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioCodec to be of type 'string'")
	assert(str:match("(^AAC$)|(^vorbis$)|(^mp3$)|(^mp2$)|(^pcm$)|(^flac$)"), "Expected string to match pattern '(^AAC$)|(^vorbis$)|(^mp3$)|(^mp2$)|(^pcm$)|(^flac$)'")
end

--  
function M.AudioCodec(str)
	M.AssertAudioCodec(str)
	return str
end

function M.AssertOneTo512String(str)
	assert(str)
	assert(type(str) == "string", "Expected OneTo512String to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OneTo512String(str)
	M.AssertOneTo512String(str)
	return str
end

function M.AssertAudioSampleRate(str)
	assert(str)
	assert(type(str) == "string", "Expected AudioSampleRate to be of type 'string'")
	assert(str:match("(^auto$)|(^22050$)|(^32000$)|(^44100$)|(^48000$)|(^96000$)|(^192000$)"), "Expected string to match pattern '(^auto$)|(^22050$)|(^32000$)|(^44100$)|(^48000$)|(^96000$)|(^192000$)'")
end

--  
function M.AudioSampleRate(str)
	M.AssertAudioSampleRate(str)
	return str
end

function M.AssertLongKey(str)
	assert(str)
	assert(type(str) == "string", "Expected LongKey to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LongKey(str)
	M.AssertLongKey(str)
	return str
end

function M.AssertDigitsOrAuto(str)
	assert(str)
	assert(type(str) == "string", "Expected DigitsOrAuto to be of type 'string'")
	assert(str:match("(^auto$)|(^%d{2,4}$)"), "Expected string to match pattern '(^auto$)|(^%d{2,4}$)'")
end

--  
function M.DigitsOrAuto(str)
	M.AssertDigitsOrAuto(str)
	return str
end

function M.AssertId(str)
	assert(str)
	assert(type(str) == "string", "Expected Id to be of type 'string'")
	assert(str:match("^%d{13}-%w{6}$"), "Expected string to match pattern '^%d{13}-%w{6}$'")
end

--  
function M.Id(str)
	M.AssertId(str)
	return str
end

function M.AssertNullableLong(long)
	assert(long)
	assert(type(long) == "number", "Expected NullableLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.NullableLong(long)
	M.AssertNullableLong(long)
	return long
end

function M.AssertNullableInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NullableInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NullableInteger(integer)
	M.AssertNullableInteger(integer)
	return integer
end

function M.AssertUserMetadata(map)
	assert(map)
	assert(type(map) == "table", "Expected UserMetadata to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.UserMetadata(map)
	M.AssertUserMetadata(map)
	return map
end

function M.AssertCodecOptions(map)
	assert(map)
	assert(type(map) == "table", "Expected CodecOptions to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertCodecOption(k)
		M.AssertCodecOption(v)
	end
end

function M.CodecOptions(map)
	M.AssertCodecOptions(map)
	return map
end

function M.AssertExceptionMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected ExceptionMessages to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ExceptionMessages(list)
	M.AssertExceptionMessages(list)
	return list
end

function M.AssertOutputKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputKeys to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		M.AssertKey(v)
	end
end

--  
-- List of Key objects
function M.OutputKeys(list)
	M.AssertOutputKeys(list)
	return list
end

function M.AssertJobs(list)
	assert(list)
	assert(type(list) == "table", "Expected Jobs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJob(v)
	end
end

--  
-- List of Job objects
function M.Jobs(list)
	M.AssertJobs(list)
	return list
end

function M.AssertWarnings(list)
	assert(list)
	assert(type(list) == "table", "Expected Warnings to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWarning(v)
	end
end

--  
-- List of Warning objects
function M.Warnings(list)
	M.AssertWarnings(list)
	return list
end

function M.AssertCaptionFormats(list)
	assert(list)
	assert(type(list) == "table", "Expected CaptionFormats to be of type ''table")
	assert(#list <= 4, "Expected list to be contain 4 elements")
	for _,v in ipairs(list) do
		M.AssertCaptionFormat(v)
	end
end

--  
-- List of CaptionFormat objects
function M.CaptionFormats(list)
	M.AssertCaptionFormats(list)
	return list
end

function M.AssertPlaylists(list)
	assert(list)
	assert(type(list) == "table", "Expected Playlists to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlaylist(v)
	end
end

--  
-- List of Playlist objects
function M.Playlists(list)
	M.AssertPlaylists(list)
	return list
end

function M.AssertJobInputs(list)
	assert(list)
	assert(type(list) == "table", "Expected JobInputs to be of type ''table")
	assert(#list <= 10000, "Expected list to be contain 10000 elements")
	for _,v in ipairs(list) do
		M.AssertJobInput(v)
	end
end

--  
-- List of JobInput objects
function M.JobInputs(list)
	M.AssertJobInputs(list)
	return list
end

function M.AssertCreateJobPlaylists(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateJobPlaylists to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		M.AssertCreateJobPlaylist(v)
	end
end

--  
-- List of CreateJobPlaylist objects
function M.CreateJobPlaylists(list)
	M.AssertCreateJobPlaylists(list)
	return list
end

function M.AssertCreateJobOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateJobOutputs to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		M.AssertCreateJobOutput(v)
	end
end

--  
-- List of CreateJobOutput objects
function M.CreateJobOutputs(list)
	M.AssertCreateJobOutputs(list)
	return list
end

function M.AssertJobOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected JobOutputs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobOutput(v)
	end
end

--  
-- List of JobOutput objects
function M.JobOutputs(list)
	M.AssertJobOutputs(list)
	return list
end

function M.AssertPermissions(list)
	assert(list)
	assert(type(list) == "table", "Expected Permissions to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		M.AssertPermission(v)
	end
end

--  
-- List of Permission objects
function M.Permissions(list)
	M.AssertPermissions(list)
	return list
end

function M.AssertCaptionSources(list)
	assert(list)
	assert(type(list) == "table", "Expected CaptionSources to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		M.AssertCaptionSource(v)
	end
end

--  
-- List of CaptionSource objects
function M.CaptionSources(list)
	M.AssertCaptionSources(list)
	return list
end

function M.AssertPresetWatermarks(list)
	assert(list)
	assert(type(list) == "table", "Expected PresetWatermarks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPresetWatermark(v)
	end
end

--  
-- List of PresetWatermark objects
function M.PresetWatermarks(list)
	M.AssertPresetWatermarks(list)
	return list
end

function M.AssertSnsTopics(list)
	assert(list)
	assert(type(list) == "table", "Expected SnsTopics to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		M.AssertSnsTopic(v)
	end
end

--  
-- List of SnsTopic objects
function M.SnsTopics(list)
	M.AssertSnsTopics(list)
	return list
end

function M.AssertComposition(list)
	assert(list)
	assert(type(list) == "table", "Expected Composition to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertClip(v)
	end
end

--  
-- List of Clip objects
function M.Composition(list)
	M.AssertComposition(list)
	return list
end

function M.AssertPresets(list)
	assert(list)
	assert(type(list) == "table", "Expected Presets to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPreset(v)
	end
end

--  
-- List of Preset objects
function M.Presets(list)
	M.AssertPresets(list)
	return list
end

function M.AssertJobWatermarks(list)
	assert(list)
	assert(type(list) == "table", "Expected JobWatermarks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertJobWatermark(v)
	end
end

--  
-- List of JobWatermark objects
function M.JobWatermarks(list)
	M.AssertJobWatermarks(list)
	return list
end

function M.AssertPipelines(list)
	assert(list)
	assert(type(list) == "table", "Expected Pipelines to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPipeline(v)
	end
end

--  
-- List of Pipeline objects
function M.Pipelines(list)
	M.AssertPipelines(list)
	return list
end

function M.AssertArtworks(list)
	assert(list)
	assert(type(list) == "table", "Expected Artworks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertArtwork(v)
	end
end

--  
-- List of Artwork objects
function M.Artworks(list)
	M.AssertArtworks(list)
	return list
end

function M.AssertAccessControls(list)
	assert(list)
	assert(type(list) == "table", "Expected AccessControls to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	for _,v in ipairs(list) do
		M.AssertAccessControl(v)
	end
end

--  
-- List of AccessControl objects
function M.AccessControls(list)
	M.AssertAccessControls(list)
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
			return "elastictranscoder.amazonaws.com"
		end
	end
	local ss = { "elastictranscoder" }
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
--- ReadPreset
-- @param ReadPresetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReadPresetAsync(ReadPresetRequest, cb)
	assert(ReadPresetRequest, "You must provide a ReadPresetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ReadPreset",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2012-09-25/presets/{Id}", ReadPresetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateJob
-- @param CreateJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateJobAsync(CreateJobRequest, cb)
	assert(CreateJobRequest, "You must provide a CreateJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateJob",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2012-09-25/jobs", CreateJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePreset
-- @param CreatePresetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePresetAsync(CreatePresetRequest, cb)
	assert(CreatePresetRequest, "You must provide a CreatePresetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreatePreset",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2012-09-25/presets", CreatePresetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdatePipelineNotifications
-- @param UpdatePipelineNotificationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePipelineNotificationsAsync(UpdatePipelineNotificationsRequest, cb)
	assert(UpdatePipelineNotificationsRequest, "You must provide a UpdatePipelineNotificationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdatePipelineNotifications",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2012-09-25/pipelines/{Id}/notifications", UpdatePipelineNotificationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPipelines
-- @param ListPipelinesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPipelinesAsync(ListPipelinesRequest, cb)
	assert(ListPipelinesRequest, "You must provide a ListPipelinesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPipelines",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2012-09-25/pipelines", ListPipelinesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePipeline
-- @param DeletePipelineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePipelineAsync(DeletePipelineRequest, cb)
	assert(DeletePipelineRequest, "You must provide a DeletePipelineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeletePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2012-09-25/pipelines/{Id}", DeletePipelineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReadJob
-- @param ReadJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReadJobAsync(ReadJobRequest, cb)
	assert(ReadJobRequest, "You must provide a ReadJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ReadJob",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2012-09-25/jobs/{Id}", ReadJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdatePipeline
-- @param UpdatePipelineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePipelineAsync(UpdatePipelineRequest, cb)
	assert(UpdatePipelineRequest, "You must provide a UpdatePipelineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdatePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("PUT")
	if request_handler then
		request_handler(uri .. "/2012-09-25/pipelines/{Id}", UpdatePipelineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPresets
-- @param ListPresetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPresetsAsync(ListPresetsRequest, cb)
	assert(ListPresetsRequest, "You must provide a ListPresetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListPresets",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2012-09-25/presets", ListPresetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePreset
-- @param DeletePresetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePresetAsync(DeletePresetRequest, cb)
	assert(DeletePresetRequest, "You must provide a DeletePresetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeletePreset",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2012-09-25/presets/{Id}", DeletePresetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListJobsByPipeline
-- @param ListJobsByPipelineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListJobsByPipelineAsync(ListJobsByPipelineRequest, cb)
	assert(ListJobsByPipelineRequest, "You must provide a ListJobsByPipelineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListJobsByPipeline",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2012-09-25/jobsByPipeline/{PipelineId}", ListJobsByPipelineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelJob
-- @param CancelJobRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelJobAsync(CancelJobRequest, cb)
	assert(CancelJobRequest, "You must provide a CancelJobRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CancelJob",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/2012-09-25/jobs/{Id}", CancelJobRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdatePipelineStatus
-- @param UpdatePipelineStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePipelineStatusAsync(UpdatePipelineStatusRequest, cb)
	assert(UpdatePipelineStatusRequest, "You must provide a UpdatePipelineStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdatePipelineStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2012-09-25/pipelines/{Id}/status", UpdatePipelineStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePipeline
-- @param CreatePipelineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePipelineAsync(CreatePipelineRequest, cb)
	assert(CreatePipelineRequest, "You must provide a CreatePipelineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreatePipeline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2012-09-25/pipelines", CreatePipelineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ReadPipeline
-- @param ReadPipelineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ReadPipelineAsync(ReadPipelineRequest, cb)
	assert(ReadPipelineRequest, "You must provide a ReadPipelineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ReadPipeline",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2012-09-25/pipelines/{Id}", ReadPipelineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TestRole
-- @param TestRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestRoleAsync(TestRoleRequest, cb)
	assert(TestRoleRequest, "You must provide a TestRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".TestRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2012-09-25/roleTests", TestRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListJobsByStatus
-- @param ListJobsByStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListJobsByStatusAsync(ListJobsByStatusRequest, cb)
	assert(ListJobsByStatusRequest, "You must provide a ListJobsByStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListJobsByStatus",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/2012-09-25/jobsByStatus/{Status}", ListJobsByStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
