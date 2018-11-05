--- GENERATED CODE - DO NOT MODIFY
-- Amazon Transcribe Service (transcribe-2017-10-26)

local M = {}

M.metadata = {
	api_version = "2017-10-26",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "transcribe",
	service_abbreviation = "",
	service_full_name = "Amazon Transcribe Service",
	signature_version = "v4",
	target_prefix = "Transcribe",
	timestamp_format = "",
	global_endpoint = "",
	uid = "transcribe-2017-10-26",
}

local keys = {}
local asserts = {}

keys.TranscriptionJob = { ["TranscriptionJobName"] = true, ["LanguageCode"] = true, ["MediaSampleRateHertz"] = true, ["TranscriptionJobStatus"] = true, ["Settings"] = true, ["Media"] = true, ["CreationTime"] = true, ["CompletionTime"] = true, ["MediaFormat"] = true, ["Transcript"] = true, ["FailureReason"] = true, nil }

function asserts.AssertTranscriptionJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TranscriptionJob to be of type 'table'")
	if struct["TranscriptionJobName"] then asserts.AssertTranscriptionJobName(struct["TranscriptionJobName"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["MediaSampleRateHertz"] then asserts.AssertMediaSampleRateHertz(struct["MediaSampleRateHertz"]) end
	if struct["TranscriptionJobStatus"] then asserts.AssertTranscriptionJobStatus(struct["TranscriptionJobStatus"]) end
	if struct["Settings"] then asserts.AssertSettings(struct["Settings"]) end
	if struct["Media"] then asserts.AssertMedia(struct["Media"]) end
	if struct["CreationTime"] then asserts.AssertDateTime(struct["CreationTime"]) end
	if struct["CompletionTime"] then asserts.AssertDateTime(struct["CompletionTime"]) end
	if struct["MediaFormat"] then asserts.AssertMediaFormat(struct["MediaFormat"]) end
	if struct["Transcript"] then asserts.AssertTranscript(struct["Transcript"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.TranscriptionJob[k], "TranscriptionJob contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TranscriptionJob
-- <p>Describes an asynchronous transcription job that was created with the <code>StartTranscriptionJob</code> operation. Note that en-AU, en-UK, and fr-CA languages are in preview and are only available to whitelisted customers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TranscriptionJobName [TranscriptionJobName] <p>The name of the transcription job.</p>
-- * LanguageCode [LanguageCode] <p>The language code for the input speech.</p>
-- * MediaSampleRateHertz [MediaSampleRateHertz] <p>The sample rate, in Hertz, of the audio track in the input media file. </p>
-- * TranscriptionJobStatus [TranscriptionJobStatus] <p>The status of the transcription job.</p>
-- * Settings [Settings] <p>Optional settings for the transcription job. Use these settings to turn on speaker recognition, to set the maximum number of speakers that should be identified and to specify a custom vocabulary to use when processing the transcription job.</p>
-- * Media [Media] <p>An object that describes the input media for the transcription job.</p>
-- * CreationTime [DateTime] <p>A timestamp that shows when the job was created.</p>
-- * CompletionTime [DateTime] <p>A timestamp that shows when the job was completed.</p>
-- * MediaFormat [MediaFormat] <p>The format of the input media file.</p>
-- * Transcript [Transcript] <p>An object that describes the output of the transcription job.</p>
-- * FailureReason [FailureReason] <p>If the <code>TranscriptionJobStatus</code> field is <code>FAILED</code>, this field contains information about why the job failed.</p>
-- @return TranscriptionJob structure as a key-value pair table
function M.TranscriptionJob(args)
	assert(args, "You must provide an argument table when creating TranscriptionJob")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TranscriptionJobName"] = args["TranscriptionJobName"],
		["LanguageCode"] = args["LanguageCode"],
		["MediaSampleRateHertz"] = args["MediaSampleRateHertz"],
		["TranscriptionJobStatus"] = args["TranscriptionJobStatus"],
		["Settings"] = args["Settings"],
		["Media"] = args["Media"],
		["CreationTime"] = args["CreationTime"],
		["CompletionTime"] = args["CompletionTime"],
		["MediaFormat"] = args["MediaFormat"],
		["Transcript"] = args["Transcript"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertTranscriptionJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateVocabularyRequest = { ["LanguageCode"] = true, ["VocabularyName"] = true, ["Phrases"] = true, nil }

function asserts.AssertUpdateVocabularyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVocabularyRequest to be of type 'table'")
	assert(struct["VocabularyName"], "Expected key VocabularyName to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	assert(struct["Phrases"], "Expected key Phrases to exist in table")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	if struct["Phrases"] then asserts.AssertPhrases(struct["Phrases"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVocabularyRequest[k], "UpdateVocabularyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVocabularyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language code of the vocabulary entries.</p>
-- * VocabularyName [VocabularyName] <p>The name of the vocabulary to update. The name is case-sensitive.</p>
-- * Phrases [Phrases] <p>An array of strings containing the vocabulary entries.</p>
-- Required key: VocabularyName
-- Required key: LanguageCode
-- Required key: Phrases
-- @return UpdateVocabularyRequest structure as a key-value pair table
function M.UpdateVocabularyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateVocabularyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["VocabularyName"] = args["VocabularyName"],
		["Phrases"] = args["Phrases"],
	}
	asserts.AssertUpdateVocabularyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Media = { ["MediaFileUri"] = true, nil }

function asserts.AssertMedia(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Media to be of type 'table'")
	if struct["MediaFileUri"] then asserts.AssertUri(struct["MediaFileUri"]) end
	for k,_ in pairs(struct) do
		assert(keys.Media[k], "Media contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Media
-- <p>Describes the input media file in a transcription request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MediaFileUri [Uri] <p>The S3 location of the input media file. The URI must be in the same region as the API endpoint that you are calling. The general form is:</p> <p> <code> https://&lt;aws-region&gt;.amazonaws.com/&lt;bucket-name&gt;/&lt;keyprefix&gt;/&lt;objectkey&gt; </code> </p> <p>For example:</p> <p> <code>https://s3-us-east-1.amazonaws.com/examplebucket/example.mp4</code> </p> <p> <code>https://s3-us-east-1.amazonaws.com/examplebucket/mediadocs/example.mp4</code> </p> <p>For more information about S3 object names, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys">Object Keys</a> in the <i>Amazon S3 Developer Guide</i>.</p>
-- @return Media structure as a key-value pair table
function M.Media(args)
	assert(args, "You must provide an argument table when creating Media")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MediaFileUri"] = args["MediaFileUri"],
	}
	asserts.AssertMedia(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteVocabularyRequest = { ["VocabularyName"] = true, nil }

function asserts.AssertDeleteVocabularyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteVocabularyRequest to be of type 'table'")
	assert(struct["VocabularyName"], "Expected key VocabularyName to exist in table")
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteVocabularyRequest[k], "DeleteVocabularyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteVocabularyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VocabularyName [VocabularyName] <p>The name of the vocabulary to delete. </p>
-- Required key: VocabularyName
-- @return DeleteVocabularyRequest structure as a key-value pair table
function M.DeleteVocabularyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteVocabularyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VocabularyName"] = args["VocabularyName"],
	}
	asserts.AssertDeleteVocabularyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVocabulariesResponse = { ["Status"] = true, ["NextToken"] = true, ["Vocabularies"] = true, nil }

function asserts.AssertListVocabulariesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVocabulariesResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertTranscriptionJobStatus(struct["Status"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Vocabularies"] then asserts.AssertVocabularies(struct["Vocabularies"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVocabulariesResponse[k], "ListVocabulariesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVocabulariesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [TranscriptionJobStatus] <p>The requested vocabulary state.</p>
-- * NextToken [NextToken] <p>The <code>ListVocabularies</code> operation returns a page of vocabularies at a time. The maximum size of the page is set by the <code>MaxResults</code> parameter. If there are more jobs in the list than the page size, Amazon Transcribe returns the <code>NextPage</code> token. Include the token in the next request to the <code>ListVocabularies</code> operation to return in the next page of jobs.</p>
-- * Vocabularies [Vocabularies] <p>A list of objects that describe the vocabularies that match the search criteria in the request.</p>
-- @return ListVocabulariesResponse structure as a key-value pair table
function M.ListVocabulariesResponse(args)
	assert(args, "You must provide an argument table when creating ListVocabulariesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NextToken"] = args["NextToken"],
		["Vocabularies"] = args["Vocabularies"],
	}
	asserts.AssertListVocabulariesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTranscriptionJobsRequest = { ["Status"] = true, ["NextToken"] = true, ["JobNameContains"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListTranscriptionJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTranscriptionJobsRequest to be of type 'table'")
	if struct["Status"] then asserts.AssertTranscriptionJobStatus(struct["Status"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["JobNameContains"] then asserts.AssertTranscriptionJobName(struct["JobNameContains"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTranscriptionJobsRequest[k], "ListTranscriptionJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTranscriptionJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [TranscriptionJobStatus] <p>When specified, returns only transcription jobs with the specified status.</p>
-- * NextToken [NextToken] <p>If the result of the previous request to <code>ListTranscriptionJobs</code> was truncated, include the <code>NextToken</code> to fetch the next set of jobs.</p>
-- * JobNameContains [TranscriptionJobName] <p>When specified, the jobs returned in the list are limited to jobs whose name contains the specified string.</p>
-- * MaxResults [MaxResults] <p>The maximum number of jobs to return in the response. If there are fewer results in the list, this response contains only the actual results.</p>
-- @return ListTranscriptionJobsRequest structure as a key-value pair table
function M.ListTranscriptionJobsRequest(args)
	assert(args, "You must provide an argument table when creating ListTranscriptionJobsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NextToken"] = args["NextToken"],
		["JobNameContains"] = args["JobNameContains"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListTranscriptionJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartTranscriptionJobRequest = { ["TranscriptionJobName"] = true, ["LanguageCode"] = true, ["MediaSampleRateHertz"] = true, ["OutputBucketName"] = true, ["Settings"] = true, ["Media"] = true, ["MediaFormat"] = true, nil }

function asserts.AssertStartTranscriptionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTranscriptionJobRequest to be of type 'table'")
	assert(struct["TranscriptionJobName"], "Expected key TranscriptionJobName to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	assert(struct["MediaFormat"], "Expected key MediaFormat to exist in table")
	assert(struct["Media"], "Expected key Media to exist in table")
	if struct["TranscriptionJobName"] then asserts.AssertTranscriptionJobName(struct["TranscriptionJobName"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["MediaSampleRateHertz"] then asserts.AssertMediaSampleRateHertz(struct["MediaSampleRateHertz"]) end
	if struct["OutputBucketName"] then asserts.AssertOutputBucketName(struct["OutputBucketName"]) end
	if struct["Settings"] then asserts.AssertSettings(struct["Settings"]) end
	if struct["Media"] then asserts.AssertMedia(struct["Media"]) end
	if struct["MediaFormat"] then asserts.AssertMediaFormat(struct["MediaFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTranscriptionJobRequest[k], "StartTranscriptionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTranscriptionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TranscriptionJobName [TranscriptionJobName] <p>The name of the job. You can't use the strings "." or ".." in the job name. The name must be unique within an AWS account.</p>
-- * LanguageCode [LanguageCode] <p>The language code for the language used in the input media file.</p>
-- * MediaSampleRateHertz [MediaSampleRateHertz] <p>The sample rate, in Hertz, of the audio track in the input media file. </p>
-- * OutputBucketName [OutputBucketName] <p>The location where the transcription is stored.</p> <p>If you set the <code>OutputBucketName</code>, Amazon Transcribe puts the transcription in the specified S3 bucket. When you call the <a>GetTranscriptionJob</a> operation, the operation returns this location in the <code>TranscriptFileUri</code> field. The S3 bucket must have permissions that allow Amazon Transcribe to put files in the bucket. For more information, see <a href="https://docs.aws.amazon.com/transcribe/latest/dg/access-control-managing-permissions.html#auth-role-iam-user">Permissions Required for IAM User Roles</a>.</p> <p>If you don't set the <code>OutputBucketName</code>, Amazon Transcribe generates a pre-signed URL, a shareable URL that provides secure access to your transcription, and returns it in the <code>TranscriptFileUri</code> field. Use this URL to download the transcription.</p>
-- * Settings [Settings] <p>A <code>Settings</code> object that provides optional settings for a transcription job.</p>
-- * Media [Media] <p>An object that describes the input media for a transcription job.</p>
-- * MediaFormat [MediaFormat] <p>The format of the input media file.</p>
-- Required key: TranscriptionJobName
-- Required key: LanguageCode
-- Required key: MediaFormat
-- Required key: Media
-- @return StartTranscriptionJobRequest structure as a key-value pair table
function M.StartTranscriptionJobRequest(args)
	assert(args, "You must provide an argument table when creating StartTranscriptionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TranscriptionJobName"] = args["TranscriptionJobName"],
		["LanguageCode"] = args["LanguageCode"],
		["MediaSampleRateHertz"] = args["MediaSampleRateHertz"],
		["OutputBucketName"] = args["OutputBucketName"],
		["Settings"] = args["Settings"],
		["Media"] = args["Media"],
		["MediaFormat"] = args["MediaFormat"],
	}
	asserts.AssertStartTranscriptionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTranscriptionJobsResponse = { ["Status"] = true, ["NextToken"] = true, ["TranscriptionJobSummaries"] = true, nil }

function asserts.AssertListTranscriptionJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTranscriptionJobsResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertTranscriptionJobStatus(struct["Status"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["TranscriptionJobSummaries"] then asserts.AssertTranscriptionJobSummaries(struct["TranscriptionJobSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTranscriptionJobsResponse[k], "ListTranscriptionJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTranscriptionJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [TranscriptionJobStatus] <p>The requested status of the jobs returned.</p>
-- * NextToken [NextToken] <p>The <code>ListTranscriptionJobs</code> operation returns a page of jobs at a time. The maximum size of the page is set by the <code>MaxResults</code> parameter. If there are more jobs in the list than the page size, Amazon Transcribe returns the <code>NextPage</code> token. Include the token in the next request to the <code>ListTranscriptionJobs</code> operation to return in the next page of jobs.</p>
-- * TranscriptionJobSummaries [TranscriptionJobSummaries] <p>A list of objects containing summary information for a transcription job.</p>
-- @return ListTranscriptionJobsResponse structure as a key-value pair table
function M.ListTranscriptionJobsResponse(args)
	assert(args, "You must provide an argument table when creating ListTranscriptionJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NextToken"] = args["NextToken"],
		["TranscriptionJobSummaries"] = args["TranscriptionJobSummaries"],
	}
	asserts.AssertListTranscriptionJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateVocabularyResponse = { ["LanguageCode"] = true, ["LastModifiedTime"] = true, ["VocabularyName"] = true, ["VocabularyState"] = true, ["FailureReason"] = true, nil }

function asserts.AssertCreateVocabularyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVocabularyResponse to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["LastModifiedTime"] then asserts.AssertDateTime(struct["LastModifiedTime"]) end
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	if struct["VocabularyState"] then asserts.AssertVocabularyState(struct["VocabularyState"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVocabularyResponse[k], "CreateVocabularyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVocabularyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language code of the vocabulary entries.</p>
-- * LastModifiedTime [DateTime] <p>The date and time that the vocabulary was created.</p>
-- * VocabularyName [VocabularyName] <p>The name of the vocabulary.</p>
-- * VocabularyState [VocabularyState] <p>The processing state of the vocabulary. When the <code>VocabularyState</code> field contains <code>READY</code> the vocabulary is ready to be used in a <code>StartTranscriptionJob</code> request.</p>
-- * FailureReason [FailureReason] <p>If the <code>VocabularyState</code> field is <code>FAILED</code>, this field contains information about why the job failed.</p>
-- @return CreateVocabularyResponse structure as a key-value pair table
function M.CreateVocabularyResponse(args)
	assert(args, "You must provide an argument table when creating CreateVocabularyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["VocabularyName"] = args["VocabularyName"],
		["VocabularyState"] = args["VocabularyState"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertCreateVocabularyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Transcript = { ["TranscriptFileUri"] = true, nil }

function asserts.AssertTranscript(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Transcript to be of type 'table'")
	if struct["TranscriptFileUri"] then asserts.AssertUri(struct["TranscriptFileUri"]) end
	for k,_ in pairs(struct) do
		assert(keys.Transcript[k], "Transcript contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Transcript
-- <p>Identifies the location of a transcription.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TranscriptFileUri [Uri] <p>The location where the transcription is stored.</p> <p>Use this URI to access the transcription. If you specified an S3 bucket in the <code>OutputBucketName</code> field when you created the job, this is the URI of that bucket. If you chose to store the transcription in Amazon Transcribe, this is a shareable URL that provides secure access to that location.</p>
-- @return Transcript structure as a key-value pair table
function M.Transcript(args)
	assert(args, "You must provide an argument table when creating Transcript")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TranscriptFileUri"] = args["TranscriptFileUri"],
	}
	asserts.AssertTranscript(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVocabularyResponse = { ["LanguageCode"] = true, ["VocabularyState"] = true, ["DownloadUri"] = true, ["LastModifiedTime"] = true, ["VocabularyName"] = true, ["FailureReason"] = true, nil }

function asserts.AssertGetVocabularyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVocabularyResponse to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["VocabularyState"] then asserts.AssertVocabularyState(struct["VocabularyState"]) end
	if struct["DownloadUri"] then asserts.AssertUri(struct["DownloadUri"]) end
	if struct["LastModifiedTime"] then asserts.AssertDateTime(struct["LastModifiedTime"]) end
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVocabularyResponse[k], "GetVocabularyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVocabularyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language code of the vocabulary entries.</p>
-- * VocabularyState [VocabularyState] <p>The processing state of the vocabulary.</p>
-- * DownloadUri [Uri] <p>The S3 location where the vocabulary is stored. Use this URI to get the contents of the vocabulary. The URI is available for a limited time.</p>
-- * LastModifiedTime [DateTime] <p>The date and time that the vocabulary was last modified.</p>
-- * VocabularyName [VocabularyName] <p>The name of the vocabulary to return.</p>
-- * FailureReason [FailureReason] <p>If the <code>VocabularyState</code> field is <code>FAILED</code>, this field contains information about why the job failed.</p>
-- @return GetVocabularyResponse structure as a key-value pair table
function M.GetVocabularyResponse(args)
	assert(args, "You must provide an argument table when creating GetVocabularyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["VocabularyState"] = args["VocabularyState"],
		["DownloadUri"] = args["DownloadUri"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["VocabularyName"] = args["VocabularyName"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertGetVocabularyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTranscriptionJobResponse = { ["TranscriptionJob"] = true, nil }

function asserts.AssertGetTranscriptionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTranscriptionJobResponse to be of type 'table'")
	if struct["TranscriptionJob"] then asserts.AssertTranscriptionJob(struct["TranscriptionJob"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTranscriptionJobResponse[k], "GetTranscriptionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTranscriptionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TranscriptionJob [TranscriptionJob] <p>An object that contains the results of the transcription job.</p>
-- @return GetTranscriptionJobResponse structure as a key-value pair table
function M.GetTranscriptionJobResponse(args)
	assert(args, "You must provide an argument table when creating GetTranscriptionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TranscriptionJob"] = args["TranscriptionJob"],
	}
	asserts.AssertGetTranscriptionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListVocabulariesRequest = { ["NameContains"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["StateEquals"] = true, nil }

function asserts.AssertListVocabulariesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListVocabulariesRequest to be of type 'table'")
	if struct["NameContains"] then asserts.AssertVocabularyName(struct["NameContains"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["StateEquals"] then asserts.AssertVocabularyState(struct["StateEquals"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListVocabulariesRequest[k], "ListVocabulariesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListVocabulariesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NameContains [VocabularyName] <p>When specified, the vocabularies returned in the list are limited to vocabularies whose name contains the specified string. The search is case-insensitive, <code>ListVocabularies</code> will return both "vocabularyname" and "VocabularyName" in the response list.</p>
-- * NextToken [NextToken] <p>If the result of the previous request to <code>ListVocabularies</code> was truncated, include the <code>NextToken</code> to fetch the next set of jobs.</p>
-- * MaxResults [MaxResults] <p>The maximum number of vocabularies to return in the response. If there are fewer results in the list, this response contains only the actual results.</p>
-- * StateEquals [VocabularyState] <p>When specified, only returns vocabularies with the <code>VocabularyState</code> field equal to the specified state.</p>
-- @return ListVocabulariesRequest structure as a key-value pair table
function M.ListVocabulariesRequest(args)
	assert(args, "You must provide an argument table when creating ListVocabulariesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NameContains"] = args["NameContains"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["StateEquals"] = args["StateEquals"],
	}
	asserts.AssertListVocabulariesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Settings = { ["ChannelIdentification"] = true, ["VocabularyName"] = true, ["MaxSpeakerLabels"] = true, ["ShowSpeakerLabels"] = true, nil }

function asserts.AssertSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Settings to be of type 'table'")
	if struct["ChannelIdentification"] then asserts.AssertBoolean(struct["ChannelIdentification"]) end
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	if struct["MaxSpeakerLabels"] then asserts.AssertMaxSpeakers(struct["MaxSpeakerLabels"]) end
	if struct["ShowSpeakerLabels"] then asserts.AssertBoolean(struct["ShowSpeakerLabels"]) end
	for k,_ in pairs(struct) do
		assert(keys.Settings[k], "Settings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Settings
-- <p>Provides optional settings for the <code>StartTranscriptionJob</code> operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChannelIdentification [Boolean] <p>Instructs Amazon Transcribe to process each audio channel separately and then merge the transcription output of each channel into a single transcription. </p> <p>Amazon Transcribe also produces a transcription of each item detected on an audio channel, including the start time and end time of the item and alternative transcriptions of the item including the confidence that Amazon Transcribe has in the transcription.</p> <p>You can't set both <code>ShowSpeakerLabels</code> and <code>ChannelIdentification</code> in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>
-- * VocabularyName [VocabularyName] <p>The name of a vocabulary to use when processing the transcription job.</p>
-- * MaxSpeakerLabels [MaxSpeakers] <p>The maximum number of speakers to identify in the input audio. If there are more speakers in the audio than this number, multiple speakers will be identified as a single speaker. If you specify the <code>MaxSpeakerLabels</code> field, you must set the <code>ShowSpeakerLabels</code> field to true.</p>
-- * ShowSpeakerLabels [Boolean] <p>Determines whether the transcription job uses speaker recognition to identify different speakers in the input audio. Speaker recognition labels individual speakers in the audio file. If you set the <code>ShowSpeakerLabels</code> field to true, you must also set the maximum number of speaker labels <code>MaxSpeakerLabels</code> field.</p> <p>You can't set both <code>ShowSpeakerLabels</code> and <code>ChannelIdentification</code> in the same request. If you set both, your request returns a <code>BadRequestException</code>.</p>
-- @return Settings structure as a key-value pair table
function M.Settings(args)
	assert(args, "You must provide an argument table when creating Settings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ChannelIdentification"] = args["ChannelIdentification"],
		["VocabularyName"] = args["VocabularyName"],
		["MaxSpeakerLabels"] = args["MaxSpeakerLabels"],
		["ShowSpeakerLabels"] = args["ShowSpeakerLabels"],
	}
	asserts.AssertSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateVocabularyRequest = { ["LanguageCode"] = true, ["VocabularyName"] = true, ["Phrases"] = true, nil }

function asserts.AssertCreateVocabularyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateVocabularyRequest to be of type 'table'")
	assert(struct["VocabularyName"], "Expected key VocabularyName to exist in table")
	assert(struct["LanguageCode"], "Expected key LanguageCode to exist in table")
	assert(struct["Phrases"], "Expected key Phrases to exist in table")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	if struct["Phrases"] then asserts.AssertPhrases(struct["Phrases"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateVocabularyRequest[k], "CreateVocabularyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateVocabularyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language code of the vocabulary entries.</p>
-- * VocabularyName [VocabularyName] <p>The name of the vocabulary. The name must be unique within an AWS account. The name is case-sensitive.</p>
-- * Phrases [Phrases] <p>An array of strings that contains the vocabulary entries. </p>
-- Required key: VocabularyName
-- Required key: LanguageCode
-- Required key: Phrases
-- @return CreateVocabularyRequest structure as a key-value pair table
function M.CreateVocabularyRequest(args)
	assert(args, "You must provide an argument table when creating CreateVocabularyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["VocabularyName"] = args["VocabularyName"],
		["Phrases"] = args["Phrases"],
	}
	asserts.AssertCreateVocabularyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTranscriptionJobRequest = { ["TranscriptionJobName"] = true, nil }

function asserts.AssertGetTranscriptionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTranscriptionJobRequest to be of type 'table'")
	assert(struct["TranscriptionJobName"], "Expected key TranscriptionJobName to exist in table")
	if struct["TranscriptionJobName"] then asserts.AssertTranscriptionJobName(struct["TranscriptionJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTranscriptionJobRequest[k], "GetTranscriptionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTranscriptionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TranscriptionJobName [TranscriptionJobName] <p>The name of the job.</p>
-- Required key: TranscriptionJobName
-- @return GetTranscriptionJobRequest structure as a key-value pair table
function M.GetTranscriptionJobRequest(args)
	assert(args, "You must provide an argument table when creating GetTranscriptionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TranscriptionJobName"] = args["TranscriptionJobName"],
	}
	asserts.AssertGetTranscriptionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTranscriptionJobRequest = { ["TranscriptionJobName"] = true, nil }

function asserts.AssertDeleteTranscriptionJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTranscriptionJobRequest to be of type 'table'")
	assert(struct["TranscriptionJobName"], "Expected key TranscriptionJobName to exist in table")
	if struct["TranscriptionJobName"] then asserts.AssertTranscriptionJobName(struct["TranscriptionJobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTranscriptionJobRequest[k], "DeleteTranscriptionJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTranscriptionJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TranscriptionJobName [TranscriptionJobName] <p>The name of the transcription job to be deleted.</p>
-- Required key: TranscriptionJobName
-- @return DeleteTranscriptionJobRequest structure as a key-value pair table
function M.DeleteTranscriptionJobRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTranscriptionJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TranscriptionJobName"] = args["TranscriptionJobName"],
	}
	asserts.AssertDeleteTranscriptionJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VocabularyInfo = { ["LanguageCode"] = true, ["LastModifiedTime"] = true, ["VocabularyName"] = true, ["VocabularyState"] = true, nil }

function asserts.AssertVocabularyInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VocabularyInfo to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["LastModifiedTime"] then asserts.AssertDateTime(struct["LastModifiedTime"]) end
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	if struct["VocabularyState"] then asserts.AssertVocabularyState(struct["VocabularyState"]) end
	for k,_ in pairs(struct) do
		assert(keys.VocabularyInfo[k], "VocabularyInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VocabularyInfo
-- <p>Provides information about a custom vocabulary. Note that vocabularies for en-AU, en-UK, and fr-CA languages that are in preview are not available. In the console, the vocabulary section will be greyed-out and SDK will return error message.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language code of the vocabulary entries.</p>
-- * LastModifiedTime [DateTime] <p>The date and time that the vocabulary was last modified.</p>
-- * VocabularyName [VocabularyName] <p>The name of the vocabulary.</p>
-- * VocabularyState [VocabularyState] <p>The processing state of the vocabulary. If the state is <code>READY</code> you can use the vocabulary in a <code>StartTranscriptionJob</code> request.</p>
-- @return VocabularyInfo structure as a key-value pair table
function M.VocabularyInfo(args)
	assert(args, "You must provide an argument table when creating VocabularyInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["VocabularyName"] = args["VocabularyName"],
		["VocabularyState"] = args["VocabularyState"],
	}
	asserts.AssertVocabularyInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartTranscriptionJobResponse = { ["TranscriptionJob"] = true, nil }

function asserts.AssertStartTranscriptionJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTranscriptionJobResponse to be of type 'table'")
	if struct["TranscriptionJob"] then asserts.AssertTranscriptionJob(struct["TranscriptionJob"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTranscriptionJobResponse[k], "StartTranscriptionJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTranscriptionJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TranscriptionJob [TranscriptionJob] <p>An object containing details of the asynchronous transcription job.</p>
-- @return StartTranscriptionJobResponse structure as a key-value pair table
function M.StartTranscriptionJobResponse(args)
	assert(args, "You must provide an argument table when creating StartTranscriptionJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TranscriptionJob"] = args["TranscriptionJob"],
	}
	asserts.AssertStartTranscriptionJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateVocabularyResponse = { ["LanguageCode"] = true, ["LastModifiedTime"] = true, ["VocabularyName"] = true, ["VocabularyState"] = true, nil }

function asserts.AssertUpdateVocabularyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateVocabularyResponse to be of type 'table'")
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["LastModifiedTime"] then asserts.AssertDateTime(struct["LastModifiedTime"]) end
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	if struct["VocabularyState"] then asserts.AssertVocabularyState(struct["VocabularyState"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateVocabularyResponse[k], "UpdateVocabularyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateVocabularyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LanguageCode [LanguageCode] <p>The language code of the vocabulary entries.</p>
-- * LastModifiedTime [DateTime] <p>The date and time that the vocabulary was updated.</p>
-- * VocabularyName [VocabularyName] <p>The name of the vocabulary that was updated.</p>
-- * VocabularyState [VocabularyState] <p>The processing state of the vocabulary. When the <code>VocabularyState</code> field contains <code>READY</code> the vocabulary is ready to be used in a <code>StartTranscriptionJob</code> request.</p>
-- @return UpdateVocabularyResponse structure as a key-value pair table
function M.UpdateVocabularyResponse(args)
	assert(args, "You must provide an argument table when creating UpdateVocabularyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LanguageCode"] = args["LanguageCode"],
		["LastModifiedTime"] = args["LastModifiedTime"],
		["VocabularyName"] = args["VocabularyName"],
		["VocabularyState"] = args["VocabularyState"],
	}
	asserts.AssertUpdateVocabularyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TranscriptionJobSummary = { ["TranscriptionJobName"] = true, ["LanguageCode"] = true, ["TranscriptionJobStatus"] = true, ["CreationTime"] = true, ["CompletionTime"] = true, ["OutputLocationType"] = true, ["FailureReason"] = true, nil }

function asserts.AssertTranscriptionJobSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TranscriptionJobSummary to be of type 'table'")
	if struct["TranscriptionJobName"] then asserts.AssertTranscriptionJobName(struct["TranscriptionJobName"]) end
	if struct["LanguageCode"] then asserts.AssertLanguageCode(struct["LanguageCode"]) end
	if struct["TranscriptionJobStatus"] then asserts.AssertTranscriptionJobStatus(struct["TranscriptionJobStatus"]) end
	if struct["CreationTime"] then asserts.AssertDateTime(struct["CreationTime"]) end
	if struct["CompletionTime"] then asserts.AssertDateTime(struct["CompletionTime"]) end
	if struct["OutputLocationType"] then asserts.AssertOutputLocationType(struct["OutputLocationType"]) end
	if struct["FailureReason"] then asserts.AssertFailureReason(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.TranscriptionJobSummary[k], "TranscriptionJobSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TranscriptionJobSummary
-- <p>Provides a summary of information about a transcription job. Note that en-AU, en-UK, and fr-CA languages are in preview and are only available to whitelisted customers.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TranscriptionJobName [TranscriptionJobName] <p>The name of the transcription job.</p>
-- * LanguageCode [LanguageCode] <p>The language code for the input speech.</p>
-- * TranscriptionJobStatus [TranscriptionJobStatus] <p>The status of the transcription job. When the status is <code>COMPLETED</code>, use the <code>GetTranscriptionJob</code> operation to get the results of the transcription.</p>
-- * CreationTime [DateTime] <p>A timestamp that shows when the job was created.</p>
-- * CompletionTime [DateTime] <p>A timestamp that shows when the job was completed.</p>
-- * OutputLocationType [OutputLocationType] <p>Indicates the location of the output of the transcription job.</p> <p>If the value is <code>CUSTOMER_BUCKET</code> then the location is the S3 bucket specified in the <code>outputBucketName</code> field when the transcription job was started with the <code>StartTranscriptionJob</code> operation.</p> <p>If the value is <code>SERVICE_BUCKET</code> then the output is stored by Amazon Transcribe and can be retrieved using the URI in the <code>GetTranscriptionJob</code> response's <code>TranscriptFileUri</code> field.</p>
-- * FailureReason [FailureReason] <p>If the <code>TranscriptionJobStatus</code> field is <code>FAILED</code>, a description of the error.</p>
-- @return TranscriptionJobSummary structure as a key-value pair table
function M.TranscriptionJobSummary(args)
	assert(args, "You must provide an argument table when creating TranscriptionJobSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TranscriptionJobName"] = args["TranscriptionJobName"],
		["LanguageCode"] = args["LanguageCode"],
		["TranscriptionJobStatus"] = args["TranscriptionJobStatus"],
		["CreationTime"] = args["CreationTime"],
		["CompletionTime"] = args["CompletionTime"],
		["OutputLocationType"] = args["OutputLocationType"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertTranscriptionJobSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetVocabularyRequest = { ["VocabularyName"] = true, nil }

function asserts.AssertGetVocabularyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetVocabularyRequest to be of type 'table'")
	assert(struct["VocabularyName"], "Expected key VocabularyName to exist in table")
	if struct["VocabularyName"] then asserts.AssertVocabularyName(struct["VocabularyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetVocabularyRequest[k], "GetVocabularyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetVocabularyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VocabularyName [VocabularyName] <p>The name of the vocabulary to return information about. The name is case-sensitive.</p>
-- Required key: VocabularyName
-- @return GetVocabularyRequest structure as a key-value pair table
function M.GetVocabularyRequest(args)
	assert(args, "You must provide an argument table when creating GetVocabularyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VocabularyName"] = args["VocabularyName"],
	}
	asserts.AssertGetVocabularyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertTranscriptionJobName(str)
	assert(str)
	assert(type(str) == "string", "Expected TranscriptionJobName to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TranscriptionJobName(str)
	asserts.AssertTranscriptionJobName(str)
	return str
end

function asserts.AssertOutputBucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputBucketName to be of type 'string'")
end

--  
function M.OutputBucketName(str)
	asserts.AssertOutputBucketName(str)
	return str
end

function asserts.AssertOutputLocationType(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputLocationType to be of type 'string'")
end

--  
function M.OutputLocationType(str)
	asserts.AssertOutputLocationType(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
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

function asserts.AssertTranscriptionJobStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected TranscriptionJobStatus to be of type 'string'")
end

--  
function M.TranscriptionJobStatus(str)
	asserts.AssertTranscriptionJobStatus(str)
	return str
end

function asserts.AssertVocabularyState(str)
	assert(str)
	assert(type(str) == "string", "Expected VocabularyState to be of type 'string'")
end

--  
function M.VocabularyState(str)
	asserts.AssertVocabularyState(str)
	return str
end

function asserts.AssertFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureReason to be of type 'string'")
end

--  
function M.FailureReason(str)
	asserts.AssertFailureReason(str)
	return str
end

function asserts.AssertUri(str)
	assert(str)
	assert(type(str) == "string", "Expected Uri to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Uri(str)
	asserts.AssertUri(str)
	return str
end

function asserts.AssertMediaFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected MediaFormat to be of type 'string'")
end

--  
function M.MediaFormat(str)
	asserts.AssertMediaFormat(str)
	return str
end

function asserts.AssertVocabularyName(str)
	assert(str)
	assert(type(str) == "string", "Expected VocabularyName to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.VocabularyName(str)
	asserts.AssertVocabularyName(str)
	return str
end

function asserts.AssertPhrase(str)
	assert(str)
	assert(type(str) == "string", "Expected Phrase to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Phrase(str)
	asserts.AssertPhrase(str)
	return str
end

function asserts.AssertMediaSampleRateHertz(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MediaSampleRateHertz to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 48000, "Expected integer to be max 48000")
	assert(integer >= 8000, "Expected integer to be min 8000")
end

function M.MediaSampleRateHertz(integer)
	asserts.AssertMediaSampleRateHertz(integer)
	return integer
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

function asserts.AssertMaxSpeakers(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxSpeakers to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 2, "Expected integer to be min 2")
end

function M.MaxSpeakers(integer)
	asserts.AssertMaxSpeakers(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateTime to be of type 'string'")
end

function M.DateTime(timestamp)
	asserts.AssertDateTime(timestamp)
	return timestamp
end

function asserts.AssertTranscriptionJobSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected TranscriptionJobSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTranscriptionJobSummary(v)
	end
end

--  
-- List of TranscriptionJobSummary objects
function M.TranscriptionJobSummaries(list)
	asserts.AssertTranscriptionJobSummaries(list)
	return list
end

function asserts.AssertPhrases(list)
	assert(list)
	assert(type(list) == "table", "Expected Phrases to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPhrase(v)
	end
end

--  
-- List of Phrase objects
function M.Phrases(list)
	asserts.AssertPhrases(list)
	return list
end

function asserts.AssertVocabularies(list)
	assert(list)
	assert(type(list) == "table", "Expected Vocabularies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertVocabularyInfo(v)
	end
end

--  
-- List of VocabularyInfo objects
function M.Vocabularies(list)
	asserts.AssertVocabularies(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "transcribe.amazonaws.com"
		end
	end
	local ss = { "transcribe" }
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
--- Call ListTranscriptionJobs asynchronously, invoking a callback when done
-- @param ListTranscriptionJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTranscriptionJobsAsync(ListTranscriptionJobsRequest, cb)
	assert(ListTranscriptionJobsRequest, "You must provide a ListTranscriptionJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.ListTranscriptionJobs",
	}
	for header,value in pairs(ListTranscriptionJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTranscriptionJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTranscriptionJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTranscriptionJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTranscriptionJobsSync(ListTranscriptionJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTranscriptionJobsAsync(ListTranscriptionJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTranscriptionJob asynchronously, invoking a callback when done
-- @param DeleteTranscriptionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTranscriptionJobAsync(DeleteTranscriptionJobRequest, cb)
	assert(DeleteTranscriptionJobRequest, "You must provide a DeleteTranscriptionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.DeleteTranscriptionJob",
	}
	for header,value in pairs(DeleteTranscriptionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTranscriptionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTranscriptionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTranscriptionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTranscriptionJobSync(DeleteTranscriptionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTranscriptionJobAsync(DeleteTranscriptionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateVocabulary asynchronously, invoking a callback when done
-- @param UpdateVocabularyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateVocabularyAsync(UpdateVocabularyRequest, cb)
	assert(UpdateVocabularyRequest, "You must provide a UpdateVocabularyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.UpdateVocabulary",
	}
	for header,value in pairs(UpdateVocabularyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateVocabularyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateVocabulary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateVocabularyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateVocabularySync(UpdateVocabularyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateVocabularyAsync(UpdateVocabularyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateVocabulary asynchronously, invoking a callback when done
-- @param CreateVocabularyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateVocabularyAsync(CreateVocabularyRequest, cb)
	assert(CreateVocabularyRequest, "You must provide a CreateVocabularyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.CreateVocabulary",
	}
	for header,value in pairs(CreateVocabularyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateVocabularyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateVocabulary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateVocabularyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateVocabularySync(CreateVocabularyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateVocabularyAsync(CreateVocabularyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListVocabularies asynchronously, invoking a callback when done
-- @param ListVocabulariesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListVocabulariesAsync(ListVocabulariesRequest, cb)
	assert(ListVocabulariesRequest, "You must provide a ListVocabulariesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.ListVocabularies",
	}
	for header,value in pairs(ListVocabulariesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListVocabulariesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListVocabularies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListVocabulariesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListVocabulariesSync(ListVocabulariesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListVocabulariesAsync(ListVocabulariesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartTranscriptionJob asynchronously, invoking a callback when done
-- @param StartTranscriptionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartTranscriptionJobAsync(StartTranscriptionJobRequest, cb)
	assert(StartTranscriptionJobRequest, "You must provide a StartTranscriptionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.StartTranscriptionJob",
	}
	for header,value in pairs(StartTranscriptionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartTranscriptionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartTranscriptionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartTranscriptionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartTranscriptionJobSync(StartTranscriptionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartTranscriptionJobAsync(StartTranscriptionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetVocabulary asynchronously, invoking a callback when done
-- @param GetVocabularyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetVocabularyAsync(GetVocabularyRequest, cb)
	assert(GetVocabularyRequest, "You must provide a GetVocabularyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.GetVocabulary",
	}
	for header,value in pairs(GetVocabularyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetVocabularyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetVocabulary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetVocabularyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetVocabularySync(GetVocabularyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetVocabularyAsync(GetVocabularyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteVocabulary asynchronously, invoking a callback when done
-- @param DeleteVocabularyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteVocabularyAsync(DeleteVocabularyRequest, cb)
	assert(DeleteVocabularyRequest, "You must provide a DeleteVocabularyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.DeleteVocabulary",
	}
	for header,value in pairs(DeleteVocabularyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteVocabularyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteVocabulary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteVocabularyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteVocabularySync(DeleteVocabularyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteVocabularyAsync(DeleteVocabularyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTranscriptionJob asynchronously, invoking a callback when done
-- @param GetTranscriptionJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTranscriptionJobAsync(GetTranscriptionJobRequest, cb)
	assert(GetTranscriptionJobRequest, "You must provide a GetTranscriptionJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Transcribe.GetTranscriptionJob",
	}
	for header,value in pairs(GetTranscriptionJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTranscriptionJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTranscriptionJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTranscriptionJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTranscriptionJobSync(GetTranscriptionJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTranscriptionJobAsync(GetTranscriptionJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
